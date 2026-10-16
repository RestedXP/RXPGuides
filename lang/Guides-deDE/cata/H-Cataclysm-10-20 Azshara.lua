if GetLocale() ~= "deDE" then return end
local _,addon = ...
if addon.gameVersion < 40000 or addon.player.faction == 'Alliance' then return end

RXPGuides.RegisterGuide([[
#cata
#mop
<< Horde
#name 10-22 Azshara
#displayname 11-22 Azshara << Goblin/Pandaren
#next 22-27 Eschental
#version 1
--#group RXP Cataclysm (H) << cata

#group RXP Kataklysmus 1-80 (H) << cata
#group RXP MoP 1-80 (H) << mop
#subweight 10000

step << Rogue Cata/Warlock Cata/Mage Cata
    #completewith next
    .goto 1454,45.81,66.88,40 >> Reist zur Kluft der Schatten
step << Priest Cata/Paladin Cata
    #completewith next
    .goto 1454,49.88,75.54,30 >> Betretet Die Feste Grommash
step << Shaman Cata/Druid Cata
    #completewith next
    .goto 1454,44.84,75.46,40,0
    .goto 1454,41.53,60.64,40 >> Reist zum Tal der Weisheit
step << Rogue Cata
    .goto 1454,44.65,61.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gordul|r
    .train 61922 >> Trainiere deine Klassenfähigkeiten
    .target Gordul
step << Rogue Cata
    .goto 1454,29.60,50.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rekkul|r.
    >>Kauft |T132273:0|t[Sofort wirkendes Gift] |cRXP_BUY_bei ihm|r
    .collect 6947,20,14129,1 --Instant Poison (20)
    .target Rekkul
step << Shaman Cata
    .goto 1454,44.64,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sahi|r
    .train 3599 >> Trainiere deine Klassenfähigkeiten
    .target Sahi Cloudsinger
    .xp <10,1
step << Druid Cata
    .goto 1454,44.79,51.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Shalla|r
    .train 5215 >> Trainiere deine Klassenfähigkeiten
    .target Shalla Whiteleaf
    .xp <10,1
step << Mage Cata
    .goto 1454,48.45,62.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Marud|r
    .train 5505 >> Trainiere deine Klassenfähigkeiten
    .target Marud
    .xp <10,1
step << Priest Cata
    .goto 1454,49.17,70.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tyelis|r
    .train 8092 >> Trainiere deine Klassenfähigkeiten
    .target Tyelis
    .xp <10,1
step << Warlock Cata
    .goto 1454,54.49,39.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Mirket|r
    .train 1120 >> Trainiere deine Klassenfähigkeiten
    .target Mirket
    .xp <10,1
step << Paladin Cata
    .goto 1454,49.27,71.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Pyreanor|r
    .train 82242 >> Trainiere deine Klassenfähigkeiten
    .target Master Pyreanor
    .xp <10,1
step
    #completewith next
    .goto 1454,59.59,50.63,40,0
    .goto 1454,65.39,49.14,40 >> Reist zum Tal der Ehre
step << !Goblin
    .goto 1454,66.433,49.292
    >>Klickt |cRXP_PICK_Befehlstafel des Kriegshäuptlings|r
    .accept 28496 >>Akzeptiert die Quest Auf Befehl des Kriegshäuptlings: Azshara!
    .isQuestAvailable 28496
step << !Warrior !Paladin !Rogue !Hunter !Shaman
    #completewith next
    .goto 1454,66.84,50.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kiro|r
    .vendor >> Verkaufe und Repariere
    .target Kiro
step << Warrior Cata
    .goto 1454,73.71,45.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ronakada|r
    .train 71 >> Trainiere deine Klassenfähigkeiten
    .target Blademaster Ronakada
    .xp <10,1
step << Warrior/Paladin
    .goto 1454,76.38,37.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Koru|r
    .vendor >> Verkauft Müll und repariert. Verkauft die Waffe von Euch, wenn ihr genug Geld für |T133477:0|t[Riesiger Streitkolben] (24s) habt. << Orc/Troll
    .vendor >> Verkauft Müll und repariert. Verkauft die Waffe von Euch, wenn ihr genug Geld für |T133477:0|t[Riesiger Streitkolben] (25s 34c) habt. << Tauren
    .vendor >> Verkauft Müll und repariert. Verkauft die Waffe von Euch, wenn ihr genug Geld für |T133477:0|t[Riesiger Streitkolben] (26s 67c) habt. << Undead/BloodElf
    .vendor >> Verkauft Müll und repariert. Verkauft die Waffe von Euch, wenn ihr genug Geld für |T133477:0|t[Riesiger Streitkolben] (21s 34c) habt. << Goblin
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.9
    .target Koru
step << Warrior/Paladin
    .goto 1454,76.38,37.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Koru|r
    >>Kauft |T133477:0|t[Riesiger Streitkolben] |cRXP_BUY_bei ihm|r
    .collect 1197,1,14129,1 --Collect Giant Mace (1)
    .money <0.2400 << Orc/Troll
    .money <0.2534 << Tauren
    .money <0.2667 << Undead/BloodElf
    .money <0.2134 << Goblin
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.9
    .target Koru
step << Shaman
    .goto 1454,76.12,37.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Shoma|r
    >>|cRXP_WARN_Überspringt diesen Schritt, wenn ihr die Verstärkung-Spezialisierung nicht ausgewählt habt!|r
    .vendor >> Verkauft Müll und repariert. Verkauft die Waffe von Euch, wenn ihr genug Geld für |T132938:0|t[Rechts-Handed Messingschlagring] (19s 17c) und |T132938:0|t[Linkshändiger Messingschlagring] (19s 24c) habt. << Orc/Troll
    .vendor >> Verkauft Müll und repariert. Verkauft die Waffe von Euch, wenn ihr genug Geld für |T132938:0|t[Rechts-Handed Messingschlagring] (20s 24c) und |T132938:0|t[Linkshändiger Messingschlagring] (20s 31c) habt. << Tauren
    .vendor >> Verkauft Müll und repariert. Verkauft die Waffe von Euch, wenn ihr genug Geld für |T132938:0|t[Rechts-Handed Messingschlagring] (17s 4c) und |T132938:0|t[Linkshändiger Messingschlagring] (17s 10c) habt. << Goblin
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.7
    .target Shoma
step << Shaman
    .goto 1454,76.12,37.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Shoma|r
    >>Kauft |T132938:0|t[Rechts-Handed Messingschlagring] und |T132938:0|t[Linkshändiger Messingschlagring] |cRXP_BUY_bei ihm|r
    >>|cRXP_WARN_Überspringt diesen Schritt, wenn ihr die Verstärkung-Spezialisierung nicht ausgewählt habt!|r
    .collect 15905,1,14129,1 --Collect Right-Handed Brass Knuckles (1)
    .collect 15906,1,14129,1 --Collect Left-Handed Brass Knuckles (1)
    .money <0.3841 << Orc/Troll
    .money <0.4045 << Tauren
    .money <0.3450 << Goblin
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.7
    .target Shoma
step << Hunter
    .goto 1454,75.08,36.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Zendo'jian|r
    .vendor >> Verkauft Müll und repariert. Verkauft die Waffe von Euch, wenn ihr genug Geld für |T135489:0|t[Laminierter Doppelbogen] (15s 76c) habt. << Orc/Troll
    .vendor >> Verkauft Müll und repariert. Verkauft die Waffe von Euch, wenn ihr genug Geld für |T135489:0|t[Laminierter Doppelbogen] (16s 64c) habt. << Tauren
    .vendor >> Verkauft Müll und repariert. Verkauft die Waffe von Euch, wenn ihr genug Geld für |T135489:0|t[Laminierter Doppelbogen] (17s 52c) habt. << Undead/BloodElf
    .vendor >> Verkauft Müll und repariert. Verkauft die Waffe von Euch, wenn ihr genug Geld für |T135489:0|t[Laminierter Doppelbogen] (14s 2c) habt. << Goblin
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.5
    .target Zendo'jian
    .xp <11,1
step << Hunter
    .goto 1454,75.08,36.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Zendo'jian|r
    >>Kauft |T135489:0|t[Laminierter Doppelbogen] |cRXP_BUY_bei ihm|r
    .collect 2507,1,14129,1 --Laminated Recurve Bow (1)
    .money <0.1576 << Orc/Troll
    .money <0.1664 << Tauren
    .money <0.1752 << Undead/BloodElf
    .money <0.1402 << Goblin
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.5
    .target Zendo'jian
step << Rogue
    .goto 1454,76.12,37.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Shoma|r
    .vendor >> Verkauft Müll und repariert. Verkauft die Waffe von Euch, wenn ihr genug Geld für |T135346:0|t[Entersäbel] habt. Kauft zwei, wenn ihr genug Geld habt (18s 20c pro Stück). << Orc/Troll
    .vendor >> Verkauft Müll und repariert. Verkauft die Waffe von Euch, wenn ihr genug Geld für |T135346:0|t[Entersäbel] habt. Kauft zwei, wenn ihr genug Geld habt (20s 23c pro Stück). << Undead/BloodElf
    .vendor >> Verkauft Müll und repariert. Verkauft die Waffe von Euch, wenn ihr genug Geld für |T135346:0|t[Entersäbel] habt. Kauft zwei, wenn ihr genug Geld habt (16s 18c pro Stück). << Goblin
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.7
    .target Shoma
step << Rogue
    .goto 1454,76.12,37.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Shoma|r
    >>Kauft ein oder zwei |T135346:0|t[Entersäbel] |cRXP_BUY_bei ihm|r
    .collect 851,1,14129,1 --Cutlass (1)
    .money <0.1820 << Orc/Troll
    .money <0.2023 << Undead/BloodElf
    .money <0.1618 << Goblin
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.7
    .target Shoma
step << Warrior/Paladin
    #optional
    #completewith RunawayShredder
    +Legt das |T133477:0|t[Riesiger Streitkolben] an.
    .use 1197
    .itemcount 1197,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.9
step << Shaman
    #optional
    #completewith RunawayShredder
    #label Knuckles
    +Legt den |T132938:0|t[Rechts-Handed Messingschlagring] an.
    .use 15905
    .itemcount 15905,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.7
step << Shaman
    #optional
    #completewith RunawayShredder
    #label Knuckles
    +Legt den |T132938:0|t[Linkshändiger Messingschlagring] an.
    .use 15906
    .itemcount 15906,1
    .itemStat 17,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.7
step << Hunter
    #optional
    #completewith RunawayShredder
    +Legt den |T135489:0|t[Laminierter Doppelbogen] an.
    .use 2507
    .itemcount 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.5
    .xp <11,1
step << Hunter
    #optional
    #completewith RunawayShredder
    +Legt den |T135489:0|t[Laminierter Doppelbogen] an, wenn ihr Stufe 11 seid.
    .use 2507
    .itemcount 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.5
    .xp >11,1
step << Rogue
    #optional
    #completewith RunawayShredder
    +Legt den |T135346:0|t[Entersäbel] an.
    .use 851
    .itemcount 851,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.7
step << Hunter Cata
    .goto 1454,63.87,32.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ormak Grimshot|r
    .train 1978 >> Trainiere deine Klassenfähigkeiten
    .target Ormak Grimshot
    .xp <10,1
step
    #completewith RunawayShredder
    .goto 1454,75.39,4.15,0
    .zone Azshara >> Betretet Azshara durch den nördlichen Ausgang.
step
    #optional
    .goto 76,26.81,76.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ag'tor|r
    .turnin 25648 >>Gebt die Quest Jenseits von Durotar ab.
    .accept 14118 >>Akzeptiert die Quest Wildbret für die Truppen.
    .accept 14117 >>Akzeptiert die Quest Die Augen des Eschentals.
    .target Ag'tor Bloodfist
    .isOnQuest 25648
step
    .goto 76,26.81,76.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ag'tor|r
    .accept 14118 >>Akzeptiert die Quest Wildbret für die Truppen.
    .accept 14117 >>Akzeptiert die Quest Die Augen des Eschentals.
    .target Ag'tor Bloodfist
step
    #optional
    .goto 76,27.00,77.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grabbit|r
    .turnin 25275 >>Gebt die Quest Meldet Euch beim Arbeitsaufseher ab.
    .accept 14129 >>Akzeptiert die Quest Schredder außer Rand und Band.
    .target Labor Captain Grabbit
    .isOnQuest 25275
step
    #optional
    .goto 76,27.00,77.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grabbit|r
    .turnin 28496 >>Gebt die Quest Auf Befehl des Kriegshäuptlings: Azshara! ab.
    .accept 14129 >>Akzeptiert die Quest Schredder außer Rand und Band.
    .target Labor Captain Grabbit
    .isOnQuest 28496
step
    #label RunawayShredder
    .goto 76,27.00,77.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grabbit|r
    .accept 14129 >>Akzeptiert die Quest Schredder außer Rand und Band.
    .target Labor Captain Grabbit
step
    #completewith DefendtheGates
    >>Tötet |cRXP_ENEMY_Talrendis Späher|r. They are stealthed
    >>Tötet |cRXP_ENEMY_Geschwächt Mosshoof Stags|r und sammelt |cRXP_LOOT_Wildbret-Stück|r von ihnen.
    >>|cRXP_ENEMY_Talrendis Späher|r |cRXP_WARN_können auf euch springen, während ihr|r |cRXP_ENEMY_Geschwächt Mosshoof Stags|r tötet.
    .complete 14117,1 --Talrendis Scout (8)
    .complete 14118,1 --Slab of Venison (15)
    .mob Talrendis Scout
    .mob Weakened Mosshoof Stag
step
    .goto 76,27.47,73.55,60,0
    .goto 76,28.55,72.22,60,0
    .goto 76,29.89,71.73
    >>Angreifen a |cRXP_ENEMY_Runaway Schredder|r. Aufsitzen it once it becomes (Befreundet)
    .complete 14129,1 --Runaway Shredder Captured (1)
    .mob Runaway Shredder
step
    .goto 76,27.33,76.17
    .turnin 14129 >>Gebt die Quest Schredder außer Rand und Band ab.
    .accept 14134 >>Akzeptiert die Quest Das Logbuch des Hauptmanns.
step
    #loop
    .goto 1447/1,-4994.10010,2593.60010,0
    .waypoint 1447/1,-4941.39990,2669.00000,30,0
    .waypoint 1447/1,-4994.10010,2593.60010,30,0
    .waypoint 1447/1,-5032.80029,2625.69995,30,0
    .waypoint 1447/1,-5063.00000,2662.30005,30,0
    >>Benutzt |T135437:0|t[Holz sammeln]|r bei |cRXP_PICK_Azshara Holzstapel|r, um |cRXP_LOOT_Holz|r zu sammeln.
    .complete 14134,1 --Azshara Lumber (6)
step
    .turnin 14134 >>Gebt die Quest Das Logbuch des Hauptmanns ab.
    .accept 14135 >>Akzeptiert die Quest Auf den Baum.
step
    #loop
    .goto 1447/1,-5007.70020,2719.19995,0
    .waypoint 1447/1,-5007.70020,2719.19995,30,0
    .waypoint 1447/1,-5013.30029,2780.50000,30,0
    .waypoint 1447/1,-5084.10010,2787.19995,30,0
    .waypoint 1447/1,-5088.00000,2726.50000,30,0
    >>|cRXP_WARN_Benutzt|r |T134427:0|t[Motorsäge]|r |cRXP_WARN_bei|r |cRXP_FRIENDLY_Azshara Setzlinge|r |cRXP_WARN_um|r |cRXP_ENEMY_Talrendis Scharfschützen|r |cRXP_WARN_zum Angriff zu bringen|r
    >>|cRXP_WARN_Benutzt|r |T134427:0|t[Motorsäge]|r |cRXP_WARN_und|r |T132330:0|t[Klinge schleudern]|r |cRXP_WARN_um zu töten|r |cRXP_ENEMY_Talrendis Snipers|r
    -->>|cRXP_WARN_Make sure your|r |T134427:0|t[Buzzsaw]|r |cRXP_WARN_hits the very core of the tree|r
    .complete 14135,1 --Talrendis Sniper (9)
    .mob Talrendis Sniper
    .target Azshara Sapling
step
    #label DefendtheGates
    .turnin 14135 >>Gebt die Quest Auf den Baum ab
    .accept 14146 >>Akzeptiert die Quest Verteidigt die Tore!
step
    #completewith next
    .goto 76,27.00,76.76,50 >>Kehrt zum Hinteren Tor von Orgrimmar zurück
step
    .goto 76,27.017,76.728
    >>|cRXP_WARN_Benutzt eure|r |T134427:0|t[Motorsäge]|r|cRXP_WARN_,|r |T132330:0|t[Klinge schleudern]|r |cRXP_WARN_und|r |T133716:0|t[Granatenwerfer]|r |cRXP_WARN_um zu töten|r |cRXP_ENEMY_Talrendis Raiders|r
    >>|cRXP_WARN_Falls ihr euren Schredder verloren habt, besteigt stattdessen einen|r |cRXP_FRIENDLY_Ersatzschredder|r
    .complete 14146,1 --Talrendis Raider (20)
    .mob Talrendis Raider
    .target Backup Shredder
step
    .turnin 14146 >>Gebt die Quest Verteidigt die Tore! ab
    .accept 14155 >>Akzeptiert die Quest Arborzid
step
    .goto 76,21.506,75.870
    >>Tötet |cRXP_ENEMY_Urtum der Talrendisspitze|r im Westen
    >>|cRXP_WARN_Falls ihr euren Schredder verloren habt, besteigt stattdessen einen|r |cRXP_FRIENDLY_Ersatzschredder|r
    >>|cRXP_WARN_Cast|r |T132489:0|t[Aufladen] |cRXP_WARN_if von Euch |cRXP_FRIENDLY_Shredder|r gets low health|r
    .complete 14155,1 --Talrendis Ancient (1)
    .unitscan Talrendis Ancient
    .target Backup Shredder
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Talrendis Späher|r. They are stealthed
    >>Tötet |cRXP_ENEMY_Geschwächt Mosshoof Stags|r und sammelt |cRXP_LOOT_Wildbret-Stück|r von ihnen.
    >>|cRXP_ENEMY_Talrendis Späher|r |cRXP_WARN_können auf euch springen, während ihr|r |cRXP_ENEMY_Geschwächt Mosshoof Stags|r tötet.
    >>|cRXP_WARN_Überspringt diesen Schritt, falls ihr an diesem Punkt nicht fast fertig seid|r
    .complete 14117,1 --Talrendis Scout (8)
    .complete 14118,1 --Slab of Venison (15)
    .disablecheckbox
    .unitscan Talrendis Scout
    .mob Weakened Mosshoof Stag
step
    #label ArborcideTurnin
    .goto 76,27.00,77.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grabbit|r
    .turnin 14155 >>Gebt die Quest Arborzid ab
    .accept 14162 >>Akzeptiert die Quest Meldet Euch bei Horzak
    .target Labor Captain Grabbit
step
    #optional
    .goto 76,26.83,76.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ag'tor|r
    .collect 47039,1,14127 --Scout's Orders (1)
    .accept 14127 >>Akzeptiert die Quest Die Rückkehr der Hochgeborenen?
    .turnin 14127 >>Gebt die Quest Die Rückkehr der Hochgeborenen? ab
    .use 47039
    .itemcount 47039,1
    .target Ag'tor Bloodfist
step
    #optional
    .goto 76,26.83,76.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ag'tor|r
    .turnin 14117 >>Gebt die Quest Die Augen des Eschentals ab
    .target Ag'tor Bloodfist
    .isQuestComplete 14117
step
    #optional
    .goto 76,26.83,76.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ag'tor|r
    .turnin 14127 >>Gebt die Quest Die Rückkehr der Hochgeborenen? ab
    .target Ag'tor Bloodfist
    .isQuestComplete 14118
step
    #completewith Horzak1
    #optional
    .abandon 14118 >>Brecht die Quest Wildbret für die Truppen ab
step
    #completewith Horzak1
    #optional
    .abandon 14117 >>Brecht die Quest Die Augen des Eschentals ab
step
    #completewith Horzak1
    .subzone 4830 >>Reist zum Umschlagplatz der Raketenbahn von Orgrimmar
step
    .goto Azshara,29.67,66.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Malynea|r
    .turnin 14128 >>Gebt die Quest Die Rückkehr der Hochgeborenen? ab
    .target Malynea Skyreaver
    .isOnQuest 14128
step
    #label Horzak1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Horzak|r und |cRXP_FRIENDLY_Foreman Fisk|r
    .turnin 14162 >>Gebt die Quest Meldet Euch bei Horzak ab
    .accept 14161 >>Akzeptiert die Quest Basilisken klatschen
    .accept 14165 >>Akzeptiert die Quest Kalt wie Stein
    .target +Horzak Zignibble
    .goto 76,29.15,66.25
    .accept 14197 >>Akzeptiert die Quest Ein zu erfüllendes Pensum
    .target +Foreman Fisk
    .goto Azshara,29.07,66.25
step
    #completewith next
    .subzone 4744 >>Reist westlich zum Mountainfoot-Tagebau
step
    #loop
    .goto 76,25.976,68.758,0
    .goto 76,25.533,69.045,0
    .goto 76,25.096,69.901,0
    .waypoint 76,25.976,68.758,30,0
    .waypoint 76,25.533,69.045,30,0
    .waypoint 76,25.096,69.901,30,0
    .aura 67032 >>Hebt a |cRXP_FRIENDLY_Mountainfoot Miner|r auf
    .target Mountainfoot Miner
    .isOnQuest 14165
step
    .goto 76,29.075,66.418
	>>Tragt |cRXP_FRIENDLY_Bergfußminenarbeiter|r zum Umschlagplatz der Raketenbahn von Orgrimmar zurück
    >>|cRXP_WARN_Ihr könnt nicht reiten oder eure Gestalt ändern, während ihr dies macht!|r
    .complete 14165,1 --Stonified Miner Delivered
    .target Mountainfoot Miner
step
    .goto 76,29.15,66.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Horzak|r
    .turnin 14165 >>Gebt die Quest Kalt wie Stein ab
    .accept 14190 >>Akzeptiert die Quest Das perfekte Prisma
    .target Horzak Zignibble
step
    #completewith GreyBasilisks
    >>Sammelt |cRXP_PICK_Eisenbarren|r und |cRXP_PICK_Eisenvorräte|r auf dem Boden für |cRXP_LOOT_Mountainfoot Eisen|r
    .complete 14197,1 --Mountainfoot Iron (20)
step
    #completewith Refleshify
    >>Tötet |cRXP_ENEMY_Greystone Basilisks|r
    .complete 14161,1 --Greystone Basilisk (10)
    .mob Greystone Basilisk
step
    .goto 76,21.91,69.37
    >>Tötet |cRXP_ENEMY_Talrendis Saboteurs|r. Plündert sie für |cRXP_LOOT_Crystal Pendant|r
    .complete 14190,1 --Crystal Pendant (1)
    .mob Talrendis Saboteur
step
    .goto 76,20.26,70.40
    >>Klickt |cRXP_PICK_Hauptquartier-Funkgerät|r
    .turnin 14190 >>Gebt die Quest Das perfekte Prisma ab
    .accept 14192 >>Akzeptiert die Quest Tausche Linse gegen Prisma
step
    .goto 76,20.03,69.97
    >>Klickt |cRXP_PICK_Waffenschrank|r
    .turnin 14192 >>Gebt die Quest Tausche Linse gegen Prisma ab
    .accept 14194 >>Akzeptiert die Quest Neuverfleischlichung
step
    #label Refleshify
    #loop
    .goto 76,24.869,69.998,0
    .waypoint 76,22.454,69.462,20,0
    .waypoint 76,22.948,69.353,20,0
    .waypoint 76,23.338,71.559,20,0
    .waypoint 76,24.442,69.803,20,0
    .waypoint 76,24.869,69.998,20,0
    .waypoint 76,24.877,71.476,20,0
    .waypoint 76,24.633,72.520,20,0
    .waypoint 76,26.635,70.113,20,0
    .waypoint 76,25.517,69.028,20,0
    .waypoint 76,24.911,68.008,20,0
    .waypoint 76,23.005,68.003,20,0
    .use 48104 >> |cRXP_WARN_Benutzt|r |T249182:0|t[The Refleshifier]|cRXP_WARN_ auf|r |cRXP_FRIENDLY_Mountainfoot Miners|r
    .complete 14194,1 --Mountainfoot Miner Destoned (8)
    .target Mountainfoot Miner
step
    #label GreyBasilisks
    #loop
    .goto 76,24.459,70.185,0
    .waypoint 76,24.459,70.185,40,0
    .waypoint 76,26.214,70.118,40,0
    .waypoint 76,24.683,68.383,40,0
    .waypoint 76,22.607,69.349,40,0
    >>Tötet |cRXP_ENEMY_Greystone Basilisks|r
    .complete 14161,1 --Greystone Basilisk (10)
    .mob Greystone Basilisk
step
    #loop
    .goto 76,22.683,68.753,0
    .waypoint 76,21.973,69.859,30,0
    .waypoint 76,22.683,68.753,30,0
    .waypoint 76,24.608,70.578,30,0
    .waypoint 76,25.493,69.020,30,0
    .waypoint 76,25.367,68.128,30,0
    .waypoint 76,22.933,67.848,30,0
    >>Sammelt |cRXP_PICK_Eisenbarren|r und |cRXP_PICK_Eisenvorräte|r auf dem Boden für |cRXP_LOOT_Mountainfoot Eisen|r
    .complete 14197,1 --Mountainfoot Iron (20)
step
    #completewith next
    .subzone 4830 >>Reist zum Umschlagplatz der Raketenbahn von Orgrimmar
step
    .goto 76,29.12,66.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Fisk|r
    .turnin 14197 >>Gebt die Quest Ein zu erfüllendes Pensum ab
    .target Foreman Fisk
step
    .goto 76,29.15,66.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Horzak|r
    .turnin 14161 >>Gebt die Quest Basilisken klatschen ab
    .turnin 14194 >>Gebt die Quest Neuverfleischlichung ab
    .target Horzak Zignibble
step
    .goto 76,29.53,66.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Worcester|r
    .accept 14468 >>Akzeptiert die Quest Noch ein warmer Körper
    .target Private Worcester
step
    #completewith next
    .subzone 1233 >>Reisen North toward Der Einsame Grat
step
    .goto 76,29.45,57.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Molotov|r
    .turnin 14468 >>Gebt die Quest Noch ein warmer Körper ab
    .accept 14469 >>Akzeptiert die Quest Aus zweiter Hand
    .target Commander Molotov
step
    .goto 76,29.38,57.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Glix|r
    .accept 14470 >>Akzeptiert die Quest Militärischer Durchbruch
    .target Glix Grindlock
step
    .goto 76,29.11,57.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Xiz|r
    .accept 14471 >>Akzeptiert die Quest Mörser ersten Grades
    .target Xiz "The Eye" Salvoblast
step
    #completewith next
    >>Plündert |cRXP_FRIENDLY_tote Soldaten|r vom Boden nach |cRXP_LOOT_militärische Vorräte|r
    >>|cRXP_WARN_Seid vorsichtig vor|r |cFFEB144CLandminen|r|cRXP_WARN_. Ihr werdet fortgeschleudert, wenn ihr darauf tretet.|r
    .complete 14469,1 --Military Supplies (12)
    .target Dead Soldier
    .target Sergeant Dynamo
step
    >>Tötet |cRXP_ENEMY_Kriegsherr Krellian|r. Plündert anschließend |cRXP_LOOT_BGG|r vom Boden.
    .complete 14470,1 --Warlord Krellian (1)
    .mob +Warlord Krellian
    .goto 76,27.562,52.010
    .complete 14470,2 --SFG (1)
    .goto 76,27.693,51.903
step
    #loop
    .goto 76,29.619,53.022,0
    .waypoint 76,28.259,53.135,20,0
    .waypoint 76,28.735,52.656,20,0
    .waypoint 76,29.212,52.368,20,0
    .waypoint 76,29.619,53.022,20,0
    .waypoint 76,29.508,54.180,20,0
    .waypoint 76,29.166,54.338,20,0
    .waypoint 76,28.623,54.670,20,0
    >>Plündert |cRXP_FRIENDLY_tote Soldaten|r vom Boden nach |cRXP_LOOT_militärische Vorräte|r
    >>|cRXP_WARN_Seid vorsichtig vor|r |cFFEB144CLandminen|r|cRXP_WARN_. Ihr werdet fortgeschleudert, wenn ihr darauf tretet.|r
    .complete 14469,1 --Military Supplies (12)
    .target Dead Soldier
    .target Sergeant Dynamo
step
    .goto 76,29.38,57.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Glix|r
    .turnin 14470 >>Gebt die Quest Militärischer Durchbruch ab
    .target Glix Grindlock
step
    .goto 76,29.45,57.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Molotov|r
    .turnin 14469 >>Gebt die Quest Aus zweiter Hand ab
    .target Commander Molotov
step
    .goto 76,31.12,57.59
    .vehicle >> Aufsitzen a |cRXP_FRIENDLY_Bilgewater Mörser|r
    .target Bilgewater Mortar
    .isOnQuest 14471
step
    .goto 76,31.12,57.59
    >>|cRXP_WARN_Benutzt|r |T252172:0|t[Mörsersalve] |cRXP_WARN_um zu töten|r |cRXP_ENEMY_Grollflosse-Angreifer|r
    .complete 14471,1 --Spitelash Attackers blown to bits (60)
step
    .goto 76,29.11,57.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Xiz|r
    .turnin 14471 >>Gebt die Quest Mörser ersten Grades ab
    .target Xiz "The Eye" Salvoblast
step
    .goto 76,29.37,57.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Glix|r
    .accept 14472 >>Nehmt die Quest Dahin, wo es weh tut! an
    .target Glix Grindlock
step
    .goto 76,31.61,60.49
    .use 49700 >> |cRXP_WARN_Benutzt von Euch|r |T133032:0|t[BGG] |cRXP_WARN_um zu töten|r |cRXP_ENEMY_Versklavter Sohn von Arkkoroc|r
    .complete 14472,1 --Enslaved Son of Arkkoroc (1)
    .mob Enslaved Son of Arkkoroc
step
    .goto 76,29.37,57.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Glix|r
    .turnin 14472 >>Gebt die Quest Dahin, wo es weh tut! ab
    .target Glix Grindlock
step
    .goto 76,29.45,57.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Molotov|r
    .accept 24452 >>Nehmt die Quest Auf der Suche nach Profit an
    .target Commander Molotov
step
    .goto 76,31.924,50.964
    >>Reist zum Zentrum der Ruinen von Eldarath
    .use 49701 >> |cRXP_WARN_Benutzt von Euch|r |T133866:0|t[Tarnfeldgenerator] |cRXP_WARN_um unsichtbar zu werden|r
    .complete 24452,1 --Heart of Arkkoroc identified
step
    .goto 76,29.45,57.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Molotov|r
    .turnin 24452 >>Gebt die Quest Auf der Suche nach Profit ab
    .accept 24453 >>Akzeptiert die Quest Ein Gespräch unter Gefreiten
    .target Commander Molotov
step
    #completewith next
    .subzone 4830 >>Reist zum Umschlagplatz der Raketenbahn von Orgrimmar
step
    .goto 76,29.53,66.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Worcester|r
    .turnin 24453 >>Gebt die Quest Ein Gespräch unter Gefreiten ab
    .target Private Worcester
step
    .goto 1447/1,-5012.00000,2915.30005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Custer|r
    .accept 14202 >>Akzeptiert die Quest Inspiziert das Seeufer
    .target Custer Clubnik
step
    .goto 76,29.67,66.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Malynea|r
    .accept 14201 >>Akzeptiert die Quest Tausende Geschichten im Sand
    .target Malynea Skyreaver
step
    #completewith next
    >>Sammelt |cRXP_PICK_Ancient Debril Piles|r vom Boden als Beute für |cRXP_LOOT_Recovered Artifacts|r
    .complete 14201,1 --Recovered Artifacts (5)
step
    >>Verteidigt |cRXP_FRIENDLY_Juniorgoblinerkunderin|r vor einkommenden |cRXP_ENEMY_Shades of Hate|r während sie die Umfragen markiert
    .use 48655 >> |cRXP_WARN_Benutzt von Euch|r |T133015:0|t[Surveyor's Leuchtfeuer] |cRXP_WARN_um einen neuen zu beschwören|r |cRXP_FRIENDLY_Goblin Surveyor|r |cRXP_WARN_falls nötig|r
    .complete 14202,2 --Survey North Marker (1)
    .goto 76,34.69,71.58
    .complete 14202,3 --Survey East Marker (1)
    .goto 1447/1,-5434.39990,2637.10010
    .complete 14202,1 --Survey West Marker (1)
    .goto 76,34.263,76.616
    .target Goblin Surveyor Jr. Grade
    .mob Shade of Hate
step
    #loop
    .goto 1447/1,-5316.60010,2747.90015,0
    .waypoint 1447/1,-5316.60010,2747.90015,40,0
    .waypoint 1447/1,-5409.30029,2716.69995,40,0
    .waypoint 1447/1,-5457.70020,2650.60010,40,0
    .waypoint 1447/1,-5385.00000,2562.80005,40,0
    .waypoint 1447/1,-5335.39990,2535.40015,40,0
    .waypoint 1447/1,-5274.00000,2535.90015,40,0
    .waypoint 1447/1,-5221.60010,2638.00000,40,0
    >>Sammelt |cRXP_PICK_Ancient Debril Piles|r vom Boden als Beute für |cRXP_LOOT_Recovered Artifacts|r
    .complete 14201,1 --Recovered Artifacts (5)
step
    .goto 1447/1,-5012.00000,2915.30005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Custer|r
    .turnin 14202 >>Gebt die Quest Inspiziert das Seeufer ab
    .accept 14209 >>Akzeptiert die Quest Motorschaden
    .target Custer Clubnik
step
    .goto 76,29.68,66.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Malynea|r
    .turnin 14201 >>Gebt die Quest Tausende Geschichten im Sand ab
    --.accept 14215 >>Accept Memories of the Dead
    .target Malynea Skyreaver
    --could skip 14215 and follow-up
step
    .goto 76,30.14,67.25
    >>Zwicken |cRXP_FRIENDLY_Clubnik's Dozer|r
    >>Tötet die |cRXP_ENEMY_Ectoplasm|r that appears. Plündert sie für |cRXP_LOOT_Sample|r
    .complete 14209,1 --Ectosplatter Sample (1)
    .target Clubnik's Dozer
    .mob Ectoplasmic Exhaust
step
    .goto 1447/1,-5012.00000,2915.30005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Custer|r
    .turnin 14209 >>Gebt die Quest Motorschaden ab
    .accept 14423 >>Akzeptiert die Quest Raupenexorzismus
    .target Custer Clubnik
step
    .goto 76,30.08,67.27
    .cast 68007 >>|cRXP_WARN_Use|r |T135619:0|t[Gesegnet Flaregun] |cRXP_WARN_near|r |cRXP_FRIENDLY_Clubnik's Dozer|r
    .timer 34,Raupenexorzismus RP
    >>Angreifen |cRXP_ENEMY_Clubnik's Dozer|r once it becomes hostile
    .complete 14423,1 --Clubnik's Dozer Exorcised (1)
    .use 49350
    .target Clubnik's Dozer
    .isOnQuest 14423
step
    .goto 1447/1,-5012.00000,2915.30005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Custer|r
    .turnin 14423 >>Gebt die Quest Raupenexorzismus ab
    .accept 14424 >>Akzeptiert die Quest Mehr Wissenschaft benötigt
    .target Custer Clubnik

    --next 2 quests not mandatory to continue in zone, could skip

step << skip
    .goto 1447/1,-5381.60010,2720.60010
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kalytha|r am Mennarsee
    .aura 67704 >>|cRXP_WARN_Lass sie dir die|r |T136223:0|t[Erinnerung der Toten] |cRXP_WARN_Stärkungszauber geben|r
    .skipgossip
    .target Spirit of Kalytha
    .isOnQuest 14215
step << skip
    .goto 76,37.515,74.507
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Archmage Selwyn|r
    .complete 14215,1 --Kalytha's Secret Learned (1)
    .skipgossip
    .target Archmage Selwyn
step << skip
    .turnin 14215 >>Gebt die Quest Erinnerung der Toten ab
    .accept 14216 >>Akzeptiert die Quest Das Geheimnis des Sarsensteins
step << skip
    .goto 76,35.57,75.31
    >>Sammelt |cRXP_PICK_Ancient Stein Cask|r am Grund des Sees für den |cRXP_LOOT_Sarcen Stein|r
    .complete 14216,1 --Sarcen Stone (1)
step << skip
    .goto 76,29.68,66.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Malynea|r
    .turnin 14216 >>Gebt die Quest Das Geheimnis des Sarsensteins ab
    .target Malynea Skyreaver

    --Travel to next area here

step
    #completewith next
    .goto 1447/1,-4993.50000,2936.90015,5,0
    .goto 1447/1,-4998.70020,2947.10010,3 >>Nehmt den Aufzug hinauf
step
    .goto Azshara,29.49,66.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit dem |cRXP_FRIENDLY_Bilgewater Raketenreiter|r
    .gossipoption 112430 >>Nehmt die Raketenfahrt zur Südlichen Endhaltestelle der Raketenbahn
    .timer 41,Südliche Endhaltestelle der Raketenbahn
    .target Bilgewater Rocket-jockey
    .isOnQuest 14424
step
    .goto 76,50.411,74.293
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Greely|r
    .turnin 14424 >>Gebt die Quest Mehr Wissenschaft benötigt ab
    .accept 14308 >>Akzeptiert die Quest Angriff der Wissenschaft
    .target Assistant Greely
step
    .goto 76,52.22,74.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Smooks|r
    .accept 14258 >>Akzeptiert die Quest Mörsermunition
    .target Bombardier Captain Smooks
step
    #completewith GoblinFires
    >>Sammelt |cRXP_PICK_Goblin Mörser Geschosse|r vom Boden auf
    .complete 14258,1 --Goblin Mortar Shell (5)
step
    #completewith NineVisit1
    .use 49132 >> |cRXP_WARN_Zielt euren|r |T133037:0|t[Fireliminator X-21] |cRXP_WARN_auf Feuer und|r |cRXP_FRIENDLY_Forschungs-Praktikanten|r
    .complete 14308,1 --Lab Fires Extinguished (8)
    .complete 14308,2 --Research Interns Rescued (6)
    .target Research Intern
step
    .goto 76,45.07,75.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Twistex|r
    .accept 14322 >>Akzeptiert die Quest Böse Wissenschaft! Pfui!
    .target Twistex Happytongs
step
    #label NineVisit1
    .goto 76,42.25,76.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Subject Nine|r
    .accept 14408 >>Akzeptiert die Quest Neuns Plan
    .target Subject Nine
step
    #label GoblinFires
    #loop
    .goto 76,44.122,76.798,0
    .waypoint 76,44.122,76.798,30,0
    .waypoint 76,43.906,74.755,30,0
    .waypoint 76,43.465,75.872,30,0
    .use 49132 >> |cRXP_WARN_Zielt euren|r |T133037:0|t[Fireliminator X-21] |cRXP_WARN_auf Feuer und|r |cRXP_FRIENDLY_Forschungs-Praktikanten|r
    >>|cRXP_WARN_Seht euch vor|r |cRXP_ENEMY_Versuchsobjekt vier|r|cRXP_WARN_ (roter Raptor). Er kann euch mit einem Schlag besiegen|r
    .complete 14308,1 --Lab Fires Extinguished (8)
    .complete 14308,2 --Research Interns Rescued (6)
    .target Research Intern
    .unitscan Subject Four
step
    .goto 76,43.82,77.39
    >>Klickt |cRXP_PICK_Geheimlab-Squawkbox|r
    .turnin 14308 >>Gebt die Quest Angriff der Wissenschaft ab
    .accept 14310 >>Nehmt die Quest Schutzverletzung: Kernabkopplung an
step
    .goto 76,43.818,77.301,10,0
    .goto 76,43.983,76.263,12,0
    .goto 76,44.108,75.642,12,0
    .goto 76,45.267,75.668,20,0
    .goto 76,46.571,75.710,20,0
    .goto 76,47.874,75.147,20,0
    .goto 76,49.490,74.495
    >>Klickt |cRXP_PICK_Reactor Steuerkonsole|r um die Eskorte zu starten
    >>Eskoriert den Wagen zurück zum Southern Rocketway Exchange
    .use 49132 >> |cRXP_WARN_Zielt mit eurem|r |T133037:0|t[Fireliminator X-21] |cRXP_WARN_auf den|r |cRXP_FRIENDLY_Bulliger Laborgoblin|r |cRXP_WARN_wenn er brennt|r
    .complete 14310,1 --Azsharite Core Delivered (1)
    .target Hulking Labgoblin
step
    .goto 76,50.42,74.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Greely|r
    .turnin 14310 >>Gebt die Quest Schutzverletzung: Kernabkopplung ab
    .accept 14370 >>Nehmt die Quest Rätselhafter Azsharit an
    .accept 14371 >>Nehmt die Quest Ein Riesenimbiss an
    .target Assistant Greely
step
    .goto 76,45.97,76.08
    >>Klickt |cRXP_PICK_Türklingel|r
    >>Tötet die |cRXP_ENEMY_Mutant Goblin|r that appears. Plündert sie für |cRXP_LOOT_Rocket Plans|r
    .complete 14408,1 --Ring Door Buzzer (1)
    .complete 14408,2 --Secret Rocket Plans (1)
    .mob Mutant Goblin
    .skipgossip
    --VV Gossipoption
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Mistwing Cliffdwellers|r. Plündert sie für |cRXP_LOOT_Carcasses|r
    >>Tötet |cRXP_ENEMY_Static-Geladen Hippogryphs|r
    .complete 14371,1 --Mutilated Mistwing Carcass (8)
    .mob +Mistwing Cliffdweller
    .complete 14322,1 --Static-Charged Hippogryph (8)
    .mob +Static-Charged Hippogryph
step
    #loop
    .goto 76,46.586,71.044,0
    .goto 76,42.053,70.833,0
    .goto 76,41.660,77.979,0
    .goto 76,44.681,81.500,0
    .waypoint 76,46.586,71.044,40,0
    .waypoint 76,43.917,70.036,40,0
    .waypoint 76,43.212,68.401,40,0
    .waypoint 76,42.053,70.833,40,0
    .waypoint 76,41.660,77.979,40,0
    .waypoint 76,43.022,81.757,40,0
    .waypoint 76,44.681,81.500,40,0
    >>Plündert |cRXP_PICK_Azsharite Formations|r vom Boden für |cRXP_LOOT_Azsharite Samples|r
    .complete 14370,1 --Azsharite Sample (5)
step
    #loop
    .goto 76,44.908,79.037,0
    .waypoint 76,45.723,72.688,60,0
    .waypoint 76,45.068,77.881,60,0
    .waypoint 76,44.908,79.037,60,0
    >>Tötet |cRXP_ENEMY_Mistwing Cliffdwellers|r. Plündert sie für |cRXP_LOOT_Carcasses|r
    >>Tötet |cRXP_ENEMY_Static-Geladen Hippogryphs|r
    .complete 14371,1 --Mutilated Mistwing Carcass (8)
    .mob +Mistwing Cliffdweller
    .complete 14322,1 --Static-Charged Hippogryph (8)
    .mob +Static-Charged Hippogryph
step
    .goto 76,42.25,76.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Subject Nine|r
    .turnin 14408 >>Gebt die Quest Neuns Plan ab
    .accept 14422 >>Nehmt die Quest Raptor Rakete an
    .target Subject Nine
step
    .goto 76,44.06,75.09
    .aura 69704,5+ >>Öffnet 5 |cRXP_PICK_Versuchskäfig|r im Geheimlabor
    .isOnQuest 14422
step
    .goto 76,42.25,76.08
    >>Kehrt zu |cRXP_FRIENDLY_Versuchsobjekt neun|r zurück
    .complete 14422,1 --Experimental Raptor Delivered (5)
step
    .goto 76,42.25,76.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Subject Nine|r
    .turnin 14422 >> Gebt die Quest Raptor Rakete ab
    .target Subject Nine
step
    .goto 76,45.06,75.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Twistex|r
    .turnin 14322 >>Gebt die Quest Böse Wissenschaft! Pfui! ab
    .target Twistex Happytongs
step
    .goto 76,50.41,74.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Greely|r
    .turnin 14370 >>Gebt die Quest Rätselhafter Azsharit ab
    .turnin 14371 >>Gebt die Quest Ein Riesenimbiss ab
    .accept 14377 >>Nehmt die Quest Ein Freund der Riesen an
    .target Assistant Greely
step
    .goto 1447/1,-6005.39990,2603.50000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gormungan|r
    .complete 14377,1 --Secret of Azsharite Discovered (1)
    .skipgossip
    .target Gormungan
step
    .goto 76,50.41,74.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Greely|r
    .turnin 14377 >>Gebt die Quest Ein Freund der Riesen ab
    .accept 14385 >>Nehmt die Quest Azsharitexperiment Nummer Eins an
    .target Assistant Greely
step
    .goto 76,50.53,74.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hobart|r
    .accept 14383 >>Nehmt die Quest Die schrecklichen Tüftler der Verfallenen Gegenden an
    .target Hobart Grapplehammer
step
    #completewith next
    .subzone 1256 >>Reist zu den Verfallenen Gegenden
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Netgun Gnomes|r, |cRXP_ENEMY_Zapper Gnomes|r und |cRXP_ENEMY_Bingham Gadgetspring|r
    .complete 14383,1 --Bingham Gadgetspring (1)
    .mob +*Bingham Gadgetspring
    .complete 14383,2 --Netgun Gnome (4)
    .mob +Netgun Gnome
    .complete 14383,3 --Zapper Gnome (6)
    .mob +Zapper Gnome
step
    .goto 76,39.89,84.76
    >>Plündert |cRXP_LOOT_Giant-Sized Laxative|r
    >>|cRXP_WARN_Benutzt den Aufzug zum oberen Geschoss des Gebäudes, wo|r |cRXP_ENEMY_Bingham Federdings|r |cRXP_WARN_sich befindet|r
    .complete 14385,2 --Giant-Sized Laxative (1)
step
    #loop
    .goto 76,40.921,84.919,0
    .waypoint 76,40.921,84.919,40,0
    .waypoint 76,42.938,85.531,40,0
    .waypoint 76,40.990,83.634,40,0
    .waypoint 76,42.123,83.416,40,0
    .waypoint 76,43.943,82.385,40,0
    >>Beenden killing |cRXP_ENEMY_Netgun Gnomes|r, |cRXP_ENEMY_Zapper Gnomes|r und |cRXP_ENEMY_Bingham Gadgetspring|r
    .complete 14383,1 --Bingham Gadgetspring (1)
    .mob +*Bingham Gadgetspring
    .complete 14383,2 --Netgun Gnome (4)
    .mob +Netgun Gnome
    .complete 14383,3 --Zapper Gnome (6)
    .mob +Zapper Gnome
step
    .goto 1447/1,-6005.39990,2603.50000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gormungan|r
    .complete 14385,1 --Try to Feed Gormungan (1)
    .skipgossip
    .target Gormungan
step
    .goto 76,50.41,74.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Greely|r
    .turnin 14385 >>Gebt die Quest Azsharitexperiment Nummer Eins ab
    .accept 14388 >>Nehmt die Quest Azsharitexperiment Nummer Zwei an
    .target Assistant Greely
 step
    .goto 76,50.41,74.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Greely|r
    .aura 68710 >>Schrumpfen into a mouse
    .skipgossipid 111824
    .isOnQuest 14388
    .target Assistant Greely
step
    .goto 76,50.313,74.422
    .vehicle >>Aufsitzen a |cRXP_FRIENDLY_Rocketway Ratte|r
    .target Rocketway Rat
    .isOnQuest 14388
step
    .goto 1447/1,-6005.39990,2603.50000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gormungan|r
    >>|cRXP_WARN_Benutzt|r |T132328:0|t[Huschen] |cRXP_WARN_um eure Bewegungsgeschwindigkeit zu erhöhen|r
    .complete 14388,1 --Gormungan Scared (1)
    .skipgossip
    .target Gormungan
step
    #loop
    .goto 76,46.532,75.907,0
    .goto 76,43.494,75.449,0
    .waypoint 76,46.532,75.907,20,0
    .waypoint 76,46.070,76.435,20,0
    .waypoint 76,44.095,76.145,20,0
    .waypoint 76,44.205,77.003,20,0
    .waypoint 76,43.494,75.449,20,0
    .waypoint 76,43.825,75.554,20,0
    .waypoint 76,43.536,74.743,20,0
    >>Beendet das Sammeln von |cRXP_PICK_Goblin-Mörsergeschosse|r
    .complete 14258,1 --Goblin Mortar Shell (5)
step
    .goto 76,50.41,74.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Greely|r
    .turnin 14388 >>Gebt die Quest Azsharitexperiment Nummer Zwei ab
    .target Assistant Greely
step
    .goto 76,50.53,74.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hobart|r
    .turnin 14383 >>Gebt die Quest Die schrecklichen Tüftler der Verfallenen Gegenden ab
    .accept 24458 >>Nehmt die Quest Ein Gruß an die Waffen an
    .target Hobart Grapplehammer
step
    .goto 76,52.21,74.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Smooks|r
    .turnin 14258 >>Gebt die Quest Mörsermunition ab
    .target Bombardier Captain Smooks
step
    #xprate <1.2
    .goto 76,50.68,75.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Torg|r
    .accept 14262 >>Nehmt die Quest Wie man einen Fisch ausnimmt an
    .accept 14267 >>Nehmt die Quest Die Untersuchung des Meeresschreins an
    .target Torg Twocrush
    .maxlevel 15
step
    #xprate <1.2
    #completewith KeystoneShard
    .goto 1447/1,-6378.30029,2577.10010
    .subzone 4826 >>Reist nach Sturmklippen
    .isOnQuest 14262
step
    #xprate <1.2
    #completewith KeystoneShard
    >>Tötet |cRXP_ENEMY_Spitelash Sturmzorn|r und |cRXP_ENEMY_Spitelash Seacallers|r
    .complete 14262,1 --Spitelash Stormfury (6)
    .mob +Spitelash Stormfury
    .complete 14262,2 --Spitelash Seacaller (6)
    .mob +Spitelash Seacaller
    .isOnQuest 14262
step
    #xprate <1.2
    .goto 76,58.98,71.85
    >>Klickt |cRXP_PICK_Naga Macht Stein|r
    .turnin 14267 >>Gebt die Quest Die Untersuchung des Meeresschreins ab
    .accept 14270 >>Nehmt die Quest Die Schlüsselsteinscherbe an
    .isOnQuest 14262
step
    #xprate <1.2
    .goto 76,57.51,70.96
    >>Plündert |cRXP_LOOT_Keystone Shard|r vom Boden
    .complete 14270,1 --Keystone Shard (1)
    .isOnQuest 14262
step
    #xprate <1.2
    #label KeystoneShard
    .goto 76,58.98,71.85
    >>Klickt |cRXP_PICK_Naga Macht Stein|r
    .turnin 14270 >>Gebt die Quest Die Schlüsselsteinscherbe ab
    .accept 14271 >>Nehmt die Quest Berichtet Zweimalmer an
    .isOnQuest 14262
step
    #xprate <1.2
    #loop
    .goto 76,61.858,77.871,0
    .waypoint 76,58.019,76.688,50,0
    .waypoint 76,59.851,77.431,50,0
    .waypoint 76,61.858,77.871,50,0
    .waypoint 76,63.084,82.431,50,0
    >>Tötet |cRXP_ENEMY_Spitelash Sturmzorn|r und |cRXP_ENEMY_Spitelash Seacallers|r
    .complete 14262,1 --Spitelash Stormfury (6)
    .mob +Spitelash Stormfury
    .complete 14262,2 --Spitelash Seacaller (6)
    .mob +Spitelash Seacaller
    .isOnQuest 14262
step
    #xprate <1.2
    .goto 76,50.68,75.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Torg Twocrush|r
    .turnin 14262 >>Gebt die Quest Wie man einen Fisch ausnimmt ab
    .turnin 14271 >>Gebt die Quest Berichtet Zweimalmer ab
    .accept 14295 >>Nehmt die Quest Schwestern des Meeres an
    .target Torg Twocrush
    .isQuestComplete 14262
step
    #xprate <1.2
    .goto 76,50.68,75.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Torg Twocrush|r
    .turnin 14271 >>Gebt die Quest Berichtet Zweimalmer ab
    .accept 14295 >>Nehmt die Quest Schwestern des Meeres an
    .target Torg Twocrush
    .isQuestComplete 14271
step
    #xprate <1.2
    .goto 76,50.68,75.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Torg Twocrush|r
    .turnin 14271 >>Gebt die Quest Berichtet Zweimalmer ab
    .accept 14295 >>Nehmt die Quest Schwestern des Meeres an
    .target Torg Twocrush
    .isQuestTurnedIn 14271
step
    #xprate <1.2
    .goto 76,63.15,75.87
    >>Tötet |cRXP_ENEMY_Lady Silisthra|r
    >>|cRXP_WARN_Klickt|r |cRXP_FRIENDLY_Silisthra's Macht Stein|r |cRXP_WARN_oben auf der Plattform, um sie zu schwächen|r
    .complete 14295,1 --Lady Silisthra (1)
    .mob Lady Silisthra
    .isQuestTurnedIn 14271
step
    #xprate <1.2
    .goto 76,63.63,79.42
    >>Tötet |cRXP_ENEMY_Lady Vesthra|r
    >>|cRXP_WARN_Klickt|r |cRXP_FRIENDLY_Vesthra's Macht Stein|r |cRXP_WARN_oben auf der Plattform, um sie zu schwächen|r
    .complete 14295,2 --Lady Vesthra (1)
    .mob Lady Vesthra
    .isQuestTurnedIn 14271
step
    #xprate <1.2
    .goto 76,50.67,75.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Torg Twocrush|r
    .turnin 14295 >>Gebt die Quest Schwestern des Meeres ab
    .target Torg Twocrush
    .isQuestTurnedIn 14271
step
    .goto 76,51.492,74.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Friz Groundspin|r
    .gossipoption 111876 >>Erlernt die Flugroute nach Bilgewasserhafen
    .timer 59,Tod am Nachmittag RP
    .target Friz Groundspin
    .isOnQuest 24458
step << Shaman Cata
    .goto 76,56.671,49.531
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Maxx Lawine|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Maxx Avalanche
step << Mage Cata
    .goto 76,56.919,49.598
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Fizz Lighter|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Fizz Lighter
step << Warlock Cata
    .goto 76,56.708,49.283
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Evol Fingers|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Evol Fingers
step << Priest Cata
    .goto 76,56.852,50.279
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sister Goldskimmer|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Sister Goldskimmer
step
    .goto 76,56.978,50.093
    >>Klickt |cRXP_PICK_Wrenchmen-Rekrutierungsplakat|r im Gebäude
    .accept 14478 >>Akzeptiert die Quest Operation Ausnehmer
step
    .goto 1447/1,-6519.00000,3529.80005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grimy Greasefingers|r
    .home >> Setzt den Ruhestein von Euch in Bilgewasserhafen
    .target Grimy Greasefingers
    .subzoneskip 4821,1
step << Rogue Cata
    .goto 76,56.884,50.575
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Stinky Shapshiv|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Stinky Shapshiv
step << Hunter Cata
    .goto 76,56.914,50.709
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bamm Megabomb|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Bamm Megabomb
step << Warrior Cata
    .goto 76,57.167,50.105
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Warrior-Matic NX-01|r upstairs
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Warrior-Matic NX-01

    --VV Confirm if there are no Druid/Pala trainers in Bilgewater

step
    .goto 76,59.33,50.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Teemo|r
    .accept 14407 >>Akzeptiert die Quest Azshara Blues
    .target Teemo
step
    .goto 76,60.56,51.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bleenik Fizzlefuse|r
    .turnin 24458 >>Gebt die Quest Tod am Nachmittag ab
    .target Bleenik Fizzlefuse
step
    .goto 76,60.64,50.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Commander Molotov|r
    .turnin 14478 >>Gebt die Quest Operation Ausnehmer ab
    .accept 24455 >>Akzeptiert die Quest Schnelle Entsendung
    .target Commander Molotov
step
    .goto 76,58.10,52.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Captain Desoto|r
    .turnin 24455 >>Gebt die Quest Schnelle Entsendung ab
    .accept 14479 >>Akzeptiert die Quest Es gibt viele andere
    .target Captain Desoto
step
    .goto 76,57.891,52.246
    .vehicle >>Sitzt auf |cRXP_FRIENDLY_Rakete|r
    .timer 38,Es gibt viele andere RP
    .target Surface to Other Surface Transport
    .isOnQuest 14479
step
    .goto 76,39.14,51.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ruckus|r
    .accept 24437 >>Akzeptiert die Quest Wer zuerst kommt, mahlt zuerst
    .target Ruckus
step
    .goto 76,41.50,53.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lieutenant Drex|r
    .turnin 14479 >>Gebt die Quest Es gibt viele andere ab
    .accept 24435 >>Akzeptiert die Quest Einmal nass wischen
    .target Lieutenant Drex
step
    .goto 76,41.37,53.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sergeant Hort|r
    .accept 24436 >>Akzeptiert die Quest Alles Heil kommt von oben
    .target Sergeant Hort
step
    #completewith NorthernVista
    >>Tötet |cRXP_ENEMY_Spitelash Naga|r und |cRXP_ENEMY_Spitelash Sirene|r
    .complete 24435,1 --Defending Naga (12)
    .mob Spitelash Naga
    .mob Spitelash Siren
step
    #completewith KillNagas
    .use 49679 >>|cRXP_WARN_Benutzt von Euch|r |T135619:0|t[Geheiligt Flaregun] |cRXP_WARN_on|r |cRXP_FRIENDLY_Wounded Soldiers|r
    .complete 24436,1 --Wounded Soldier rescued (8)
    .target Wounded Soldier
step
    .goto 76,43.86,59.95
    .use 49685 >>|cRXP_WARN_Benutzt|r |T132485:0|t[Flagge of Territorial Claim] |cRXP_WARN_at the Southern Pagoda|r
    .complete 24437,1 --Southern Pagoda claimed (1)
step
    .goto 76,43.60,43.43
    .use 49685 >>|cRXP_WARN_Benutzt|r |T132485:0|t[Flagge of Territorial Claim] |cRXP_WARN_at the Big ol' Turm|r
    .complete 24437,2 --Big ol' Tower claimed (1)
step
    #label NorthernVista
    .goto 76,45.46,38.52
    .use 49685 >>|cRXP_WARN_Benutzt|r |T1324855:0|t[Flagge of Territorial Claim] |cRXP_WARN_at the Northern Vista|r
    .complete 24437,3 --Northern Vista claimed (1)
step
    #label KillNagas
    #loop
    .goto 76,40.901,51.711,0
    .waypoint 76,42.234,43.478,60,0
    .waypoint 76,40.500,47.338,60,0
    .waypoint 76,40.901,51.711,60,0
    .waypoint 76,42.469,56.429,60,0
    .waypoint 76,42.583,60.598,60,0
    >>Tötet |cRXP_ENEMY_Spitelash Naga|r und |cRXP_ENEMY_Spitelash Sirene|r
    .complete 24435,1 --Defending Naga (12)
    .mob Spitelash Naga
    .mob Spitelash Siren
step
    #loop
    .goto 76,41.538,47.075,0
    .waypoint 76,42.063,42.177,30,0
    .waypoint 76,41.636,43.947,30,0
    .waypoint 76,41.538,47.075,30,0
    .waypoint 76,40.529,49.245,30,0
    .waypoint 76,39.905,51.764,30,0
    .waypoint 76,39.729,53.869,30,0
    .waypoint 76,42.040,50.686,30,0
    .waypoint 76,43.193,52.463,30,0
    .waypoint 76,42.736,60.005,30,0
    .use 49679 >>|cRXP_WARN_Benutzt von Euch|r |T135619:0|t[Geheiligt Flaregun] |cRXP_WARN_on|r |cRXP_FRIENDLY_Wounded Soldiers|r
    .complete 24436,1 --Wounded Soldier rescued (8)
    .target Wounded Soldier
step
    .goto 76,41.387,53.931
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sergeant Hort|r
    .turnin 24436 >>Gebt die Quest Alles Heil kommt von oben ab
    .target Sergeant Hort
step
    .goto 76,41.499,53.650
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lieutenant Drex|r
    .turnin 24435 >>Gebt die Quest Einmal nass wischen ab
    .accept 24448 >>Akzeptiert die Quest Beförderung
    .target Lieutenant Drex
step
    .goto 76,39.133,51.769
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ruckus|r
    .turnin 24437 >>Gebt die Quest Wer zuerst kommt, mahlt zuerst ab
    .target Ruckus
step
    .goto 76,34.317,44.910
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Captain Tork|r
    .turnin 24448 >>Gebt die Quest Beförderung ab
    .accept 14487 >>Akzeptiert die Quest Noch schlagendes Herz
    .target Captain Tork
step
    .goto 76,34.450,44.766
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sergeant Zelks|r
    .accept 14480 >>Akzeptiert die Quest Auslöschung
    .accept 14484 >>Akzeptiert die Quest Kopf der Schlange
    .accept 14485 >>Akzeptiert die Quest Wir brauchen Ticker
    .target Sergeant Zelks
step
    .goto 76,34.53,44.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tora Halotrix|r
    .accept 14486 >>Akzeptiert die Quest Die Ware anfassen
    .target Tora Halotrix
step
    #sticky
    #completewith SpitelashNagas
    .cast 69310 >>|cRXP_WARN_Benutzt|r |T134286:0|t[Leuchtpistole des Goblintrupps] |cRXP_WARN_to summon|r |cRXP_FRIENDLY_Goblins|r |cRXP_WARN_who will assist you with the upcoming quests|r
    .use 49629
step
    #completewith LordKassarus
    >>Zerstört |cRXP_PICK_Spitelash Runestones|r
    >>|cRXP_FRIENDLY_Tüfteln|r |cRXP_WARN_wird Sprengstoff bei den Runesteinen platzieren. Verteidigt ihn vor ankommenden|r |cRXP_ENEMY_Spitelash Naga|r
    .complete 14485,1 --Spitelash Runestones destroyed (3)
step
    #completewith Runestones
    >>Beute |cRXP_LOOT_Highborne Tablets|r auf dem Boden
    .complete 14486,1 --Highborne Tablet (12)
step
    #completewith HighborneTablets
    >>Tötet |cRXP_ENEMY_Spitelash Battlemasters|r und |cRXP_ENEMY_Spitelash Enchantresses|r
    .complete 14480,1 --Spitelash Naga (30)
    .mob Spitelash Battlemaster
    .mob Spitelash Enchantress
step
    .goto 76,31.877,50.086
    >>Plündert |cRXP_LOOT_Herz von Arkkoroc|r vom Boden
    .complete 14487,1 --|1/1 Heart of Arkkoroc
    .use 49629
step
    #label LordKassarus
    .goto 76,35.993,49.836
    >>Tötet |cRXP_ENEMY_Lord Kassarus|r
    .complete 14484,1 --Lord Kassarus (1)
    .mob Lord Kassarus
    .use 49629
step
    #label Runestones
    #loop
    .goto 76,34.045,51.533,0
    .goto 76,36.039,47.628,0
    .waypoint 76,30.477,48.782,20,0
    .waypoint 76,32.307,52.460,20,0
    .waypoint 76,34.045,51.533,20,0
    .waypoint 76,34.335,48.192,20,0
    .waypoint 76,36.039,47.628,20,0
    >>Zerstört |cRXP_PICK_Spitelash Runestones|r
    >>|cRXP_FRIENDLY_Tüfteln|r |cRXP_WARN_wird Sprengstoff bei den Runesteinen platzieren. Verteidigt ihn vor ankommenden|r |cRXP_ENEMY_Spitelash Naga|r
    .complete 14485,1 --Spitelash Runestones destroyed (3)
    .use 49629
step
    #label HighborneTablets
    #loop
    .goto 76,30.114,49.084,0
    .waypoint 76,33.666,47.151,20,0
    .waypoint 76,32.448,48.661,20,0
    .waypoint 76,31.121,48.792,20,0
    .waypoint 76,30.274,48.555,20,0
    .waypoint 76,30.114,49.084,20,0
    .waypoint 76,30.293,50.517,20,0
    .waypoint 76,30.179,51.323,20,0
    .waypoint 76,31.410,52.117,20,0
    .waypoint 76,31.982,51.393,20,0
    .waypoint 76,32.188,53.156,20,0
    .waypoint 76,33.390,51.737,20,0
    .waypoint 76,34.262,49.631,20,0
    .waypoint 76,34.745,47.102,20,0
    >>Beute |cRXP_LOOT_Highborne Tablets|r auf dem Boden
    .complete 14486,1 --Highborne Tablet (12)
    .use 49629
step
    #label SpitelashNagas
    #loop
    .goto 76,30.159,49.817,0
    .waypoint 76,32.789,46.635,60,0
    .waypoint 76,30.596,47.761,60,0
    .waypoint 76,30.159,49.817,60,0
    .waypoint 76,32.387,53.496,60,0
    .waypoint 76,34.325,51.617,60,0
    .waypoint 76,33.899,46.811,60,0
    >>Tötet |cRXP_ENEMY_Spitelash Battlemasters|r und |cRXP_ENEMY_Spitelash Enchantresses|r
    .complete 14480,1 --Spitelash Naga (30)
    .mob Spitelash Battlemaster
    .mob Spitelash Enchantress
    .use 49629
step
    .goto 76,34.464,44.727
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sergeant Zelks|r
    .turnin 14480 >>Gebt die Quest Auslöschung ab
    .turnin 14484 >>Gebt die Quest Kopf der Schlange ab
    .turnin 14485 >>Gebt die Quest Wir brauchen Ticker ab
    .target Sergeant Zelks
step
    .goto 76,34.53,44.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tora Halotrix|r
    .turnin 14486 >>Gebt die Quest Die Ware anfassen ab
    .target Tora Halotrix
step
    .goto 76,34.307,44.905
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Captain Tork|r
    .turnin 14487 >>Gebt die Quest Noch schlagendes Herz ab
    .accept 24449 >>Akzeptiert die Quest Landgang
    .target Captain Tork
step
    .goto 76,34.513,44.512
    .vehicle >>Sitzt auf |cRXP_FRIENDLY_Militärgyrokopter|r
    .timer 32,Landgang RP
    .target Military Gyrocopter
    .isOnQuest 24449
step
    .goto 76,60.61,50.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Uncle Bedlam|r
    .turnin 24449 >>Gebt die Quest Landgang ab
    .target Uncle Bedlam
step
    .goto 76,55.49,52.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kalec|r
    .turnin 14407 >>Gebt die Quest Azshara Blues ab
    .target Kalec
step
    .maxlevel 18,NorthAzsharaSkip
    .goto 76,55.49,52.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kalec|r
    .accept 14130 >>Akzeptiert die Quest Freundschaft kennt keine Farbe
    .target Kalec
step
    #completewith next
    .goto 76,70.36,36.25,60 >>Reisen toward |cRXP_FRIENDLY_Ergll|r
    >>|cRXP_WARN_Ihr könnt für die nächsten 5 Minuten auf dem Wasser laufen|r
step
    .goto 76,70.36,36.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ergll|r
    .turnin 14130 >>Gebt die Quest Freundschaft kennt keine Farbe ab
    .accept 14131 >>Akzeptiert die Quest Bohnensammler
    .accept 14132 >>Akzeptiert die Quest Was für eine Frechheit!
    .accept 14323 >>Akzeptiert die Quest Supersaugstark
    .target Ergll
step
    #completewith VileSplashers
    >>Plündert |cRXP_PICK_Kawphi Plants|r vom Boden für |cRXP_LOOT_Kawphi Beans|r
    .complete 14131,1 --Kawphi Bean (10)
step
    #completewith VileSplashers
    >>Tötet |cRXP_ENEMY_Makrinni Scrabblers|r
    .complete 14132,1 --Ruins of Arkkoran Makrinni (10)
    .mob Makrinni Scrabbler
step
    #label VileSplashers
    #loop
    .goto 76,75.914,35.559,0
    .goto 76,82.174,40.080,0
    .waypoint 76,75.914,35.559,50,0
    .waypoint 76,77.838,36.335,50,0
    .waypoint 76,80.072,37.683,50,0
    .waypoint 76,82.174,40.080,50,0
    .waypoint 76,79.225,40.686,50,0
    .waypoint 76,76.552,39.047,50,0
    .waypoint 76,75.496,36.880,50,0
    >>Tötet |cRXP_ENEMY_Vile Spritzer|r. Plündert sie für |cRXP_LOOT_Simmering Wasser Droplets|r
    >>|cRXP_ENEMY_Vile Spritzer|r |cRXP_WARN_die instantly when in close proximity|r
    .complete 14323,1 --Simmering Water Droplet (20)
    .mob Vile Splash
step
    #label ObsorbentTurnin
    .turnin 14323 >>Gebt die Quest Supersaugstark ab
    --.accept 14324 >>Accept Full of Hot Water
step
    .goto 76,81.40,30.84
    .use 49176 >>|cRXP_WARN_Use the|r |T135231:0|t[Vollgestopft Azshari Meer Sponge] |cRXP_WARN_at the|r |cRXP_PICK_Stein der Siedenden Wasserherren|r
    >>Tötet |cRXP_ENEMY_Scalding Wasser Lord|r, der auftaucht. Plündert ihn für seinen |cRXP_LOOT_Globe of Kochendes Wasser|r
    .complete 14324,1 --Globe of Boiling Water (1)
    .isOnQuest 14324
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Makrinni Scrabblers|r
    .complete 14132,1 --Ruins of Arkkoran Makrinni (10)
    .mob Makrinni Scrabbler
step
    #label KawphiBeans
    #loop
    .goto 76,70.927,35.021,0
    .goto 76,71.424,29.350,0
    .waypoint 76,70.927,35.021,25,0
    .waypoint 76,71.801,34.789,25,0
    .waypoint 76,70.604,32.345,25,0
    .waypoint 76,70.559,28.732,25,0
    .waypoint 76,71.424,29.350,25,0
    .waypoint 76,72.477,29.047,25,0
    >>Plündert |cRXP_PICK_Kawphi Plants|r vom Boden für |cRXP_LOOT_Kawphi Beans|r
    .complete 14131,1 --Kawphi Bean (10)
step
    #loop
    .goto 76,72.885,36.368,0
    .goto 76,70.218,30.672,0
    .waypoint 76,74.209,32.190,60,0
    .waypoint 76,72.885,36.368,60,0
    .waypoint 76,70.218,30.672,60,0
    >>Tötet |cRXP_ENEMY_Makrinni Scrabblers|r
    .complete 14132,1 --Ruins of Arkkoran Makrinni (10)
    .mob Makrinni Scrabbler
step
    .goto 76,70.36,36.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ergll|r
    .turnin 14131 >>Gebt die Quest Bohnensammler ab
    .turnin 14132 >>Gebt die Quest Was für eine Frechheit! ab
    .turnin 14324 >>Gebt die Quest Voll heißen Wassers ab
    .accept 14345 >>Akzeptiert die Quest Waschtag
    .target Ergll
    .isQuestComplete 14324
step
    #optional
    .goto 76,70.36,36.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ergll|r
    .turnin 14131 >>Gebt die Quest Bohnensammler ab
    .turnin 14132 >>Gebt die Quest Was für eine Frechheit! ab
    .accept 14324 >>Akzeptiert die Quest Voll heißen Wassers
    .target Ergll
step
    #optional
    .goto 76,81.40,30.84
    .use 49176 >>|cRXP_WARN_Use the|r |T135231:0|t[Vollgestopft Azshari Meer Sponge] |cRXP_WARN_at the|r |cRXP_PICK_Stein der Siedenden Wasserherren|r
    >>Tötet |cRXP_ENEMY_Scalding Wasser Lord|r, der auftaucht. Plündert ihn für seinen |cRXP_LOOT_Globe of Kochendes Wasser|r
    .complete 14324,1 --Globe of Boiling Water (1)
step
    #optional
    .goto 76,70.36,36.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ergll|r
    .turnin 14324 >>Gebt die Quest Voll heißen Wassers ab
    .accept 14345 >>Akzeptiert die Quest Waschtag
    .timer 198,Schildkröte Einsteigen
    .target Ergll
step << skip
    .goto 76,70.36,36.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ergll|r
    .vehicle >>Besteigt die Schildkröte und fahrt zum Nördlichen Umschlagplatz der Raketenbahn
    .timer 198,Schildkröte Einsteigen
    .target Ergll
    .skipgossip
    .isOnQuest 14345
step
    #completewith next
    .goto 76,42.71,25.15,80 >>Wartet, bis ihr am Nördlichen Umschlagplatz der Raketenbahn ankommt
    >>|cRXP_WARN_Talk to|r |cRXP_FRIENDLY_Ergll|r |cRXP_WARN_again to Transportmittel benutzen the Schildkröte if this did not happen automatically|r
    .skipgossip
step
    .goto 76,42.71,25.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sorata Firespinner|r
    .turnin 14345 >>Gebt die Quest Waschtag ab
    .accept 14340 >>Akzeptiert die Quest Schicker Fummel
    .target Sorata Firespinner
step
    #xprate <1.2
    .goto 76,42.61,23.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Andorel Sunsworn|r
    .accept 14428 >>Akzeptiert die Quest Goldwinds Tagebuch
    .target Andorel Sunsworn
step
    #xprate <1.2
    .goto 76,42.41,23.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Haggrum Blutfaust|r
    .accept 14431 >>Akzeptiert die Quest Die Schwarzschlund-Narbe
    .target Haggrum Bloodfist
step
    #xprate <1.2
    #loop
    .goto 76,37.967,28.403,0
    .waypoint 76,38.478,26.428,40,0
    .waypoint 76,37.967,28.403,40,0
    .waypoint 76,37.935,31.246,40,0
    .waypoint 76,37.212,34.089,40,0
    >>Tötet |cRXP_ENEMY_Talrendis Biologists|r. Plündert sie für |cRXP_LOOT_Blackmaw Intelligenz|r
    .complete 14431,2 --Blackmaw Intelligence (1)
    .complete 14431,1 --Talrendis Biologist (8)
    .mob Talrendis Biologist
step
    #xprate <1.2
    .goto 76,42.408,23.605
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Haggrum Blutfaust|r
    .turnin 14431 >>Gebt die Quest Die Schwarzschlund-Narbe ab
    .accept 14432 >>Akzeptiert die Quest Ein fahles Gebräu
    .accept 14433 >>Akzeptiert die Quest Diplomatie mal anders
    .target Haggrum Bloodfist
step
    #xprate <1.2
    .goto 76,49.75,28.44
    >>Tötet |cRXP_ENEMY_Lorekeeper Amberwind|r. Plündert sie für |cRXP_LOOT_Amberwind's Tagebuch|r
    .complete 14428,1 --Amberwind's Journal (1)
    .mob Lorekeeper Amberwind
step
    #xprate <1.2
    .goto 76,49.53,28.78
    >>Klickt |cRXP_PICK_Oberer Seherstein|r
    .turnin 14428 >>Gebt die Quest Goldwinds Tagebuch ab
    .accept 14429 >>Akzeptiert die Quest Arkane Dekonstruktion
step
    #xprate <1.2
    #loop
    .goto 76,52.303,27.112,0
    .goto 76,49.663,28.456,0
    .waypoint 76,50.329,27.556,40,0
    .waypoint 76,52.303,27.112,40,0
    .waypoint 76,51.685,25.068,40,0
    .waypoint 76,49.041,25.544,40,0
    .waypoint 76,49.291,27.335,40,0
    .waypoint 76,49.663,28.456,40,0
    >>Tötet |cRXP_ENEMY_Apprentice Investigators|r und |cRXP_ENEMY_Apprentice Illuminators|r. Plündert sie für |cRXP_LOOT_Attuned Runestones|r
    .complete 14429,1 --Attuned Runestone (10)
    .mob Apprentice Investigator
    .mob Apprentice Illuminator
step
    #xprate <1.2
    .goto 76,53.02,29.01
    >>Klickt |cRXP_PICK_Unterer Seherstein|r
    .turnin 14429 >>Gebt die Quest Arkane Dekonstruktion ab
    .accept 14430 >>Akzeptiert die Quest Das Konstrukt hacken
step
    #xprate <1.2
    .goto 76,52.998,29.974
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Arcane Konstrukt|r
    .complete 14430,1 --Arcane Construct Hacked (1)
    .target Arcane Construct
    .skipgossip
step
    .goto 76,47.241,20.861
    >>Reist zum |cRXP_FRIENDLY_Abbild des Erzmagiers Xylem|r
    .use 49201 >>|cRXP_WARN_Benutzt von Euch|r |T133131:0|t[Schäbiger Zaubererhut]
    .complete 14340,1 --Approach Archmage Xylem while wearing your Wizard Hat (1)
    .target Image of Archmage Xylem
step
    .goto 76,47.23,20.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Abbild des Erzmagiers Xylem|r
    .turnin 14340 >>Gebt die Quest Schicker Fummel ab
    .target Image of Archmage Xylem
step
    .goto 76,47.30,21.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tharkul Ironskull|r
    .accept 14250 >>Akzeptiert die Quest Erneuerbare Ressourcen
    .target Tharkul Ironskull
step
    .goto 76,47.17,21.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Will Robotronic|r
    .accept 14249 >>Akzeptiert die Quest Federgewichtig
    .target Will Robotronic
step
    .goto 76,47.01,21.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Quarla Whistlebreak|r
    .accept 14263 >>Akzeptiert die Quest Fidele Kräuter
    .target Quarla Whistlebreak
step
    #completewith BalboaBlow
    >>Beute |cRXP_LOOT_Living Zorn Thyme|r auf dem Boden
    >>|cRXP_WARN_Das Plündern dieser Gegenstände gibt euch einen|r |T135791:0|t[Lebendiger Zorn] |cRXP_WARN_Buff für 60 Sekunden (+20% Schaden verursacht und erlitten, stapelt sich bis zu 5 mal)|r
    .complete 14263,1 --Living Ire Thyme (8)
step
    #completewith IreThymes
    >>Tötet |cRXP_ENEMY_Thunderhead Hippogryphs|r. Plündert sie für |cRXP_LOOT_Pristine Donnerkopf Feather|r
    .complete 14249,1 --Pristine Thunderhead Feather (80)
    .mob Thunderhead Hippogryph
step
    #label BalboaBlow
    #loop
    .goto 76,53.267,20.867,0
    .goto 76,49.613,19.691,0
    .goto 76,46.529,15.659,0
    .waypoint 76,48.135,17.807,30,0
    .waypoint 76,49.613,19.691,30,0
    .waypoint 76,51.276,20.168,30,0
    .waypoint 76,53.267,20.867,30,0
    .waypoint 76,46.529,15.659,30,0
    .use 49038 >>|cRXP_WARN_Platziert|r |T135735:0|t[Arkane Aufladung] |cRXP_WARN_vor|r |cRXP_ENEMY_Balboa|r |cRXP_WARN_und lasst ihn hineinlaufen|r
    >>Plündert den |cRXP_LOOT_Animate Basalt|r vom Boden, nachdem es detoniert hat
    .complete 14250,1 --Animate Basalt (5)
    .unitscan Balboa
step
    #label IreThymes
    #loop
    .goto 76,52.188,19.077,0
    .goto 76,43.846,16.439,0
    .waypoint 76,50.142,16.603,25,0
    .waypoint 76,52.188,19.077,25,0
    .waypoint 76,52.920,22.025,25,0
    .waypoint 76,51.062,23.085,25,0
    .waypoint 76,50.191,23.321,25,0
    .waypoint 76,49.742,22.168,25,0
    .waypoint 76,49.866,18.267,25,0
    .waypoint 76,45.346,16.768,25,0
    .waypoint 76,43.846,16.439,25,0
    .waypoint 76,44.866,15.379,25,0
    .waypoint 76,45.688,13.923,25,0
    .waypoint 76,47.154,13.987,25,0
    >>Beute |cRXP_LOOT_Living Zorn Thyme|r auf dem Boden
    >>|cRXP_WARN_Das Plündern dieser Gegenstände gibt euch einen|r |T135791:0|t[Lebendiger Zorn] |cRXP_WARN_Buff für 60 Sekunden (+20% Schaden verursacht und erlitten, stapelt sich bis zu 5 mal)|r
    .complete 14263,1 --Living Ire Thyme (8)
step
    #loop
    .goto 76,47.293,15.109,0
    .waypoint 76,49.885,15.595,70,0
    .waypoint 76,51.383,18.945,70,0
    .waypoint 76,49.879,21.922,70,0
    .waypoint 76,47.293,15.109,70,0
    .waypoint 76,42.318,18.466,70,0
    >>Tötet |cRXP_ENEMY_Thunderhead Hippogryphs|r. Plündert sie für |cRXP_LOOT_Pristine Donnerkopf Feather|r
    .complete 14249,1 --Pristine Thunderhead Feather (80)
    .mob Thunderhead Hippogryph
step
    .goto 76,47.01,21.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Quarla Whistlebreak|r
    .turnin 14263 >>Gebt die Quest Fidele Kräuter ab
    .target Quarla Whistlebreak
step
    .goto 76,47.17,21.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Will Robotronic|r
    .turnin 14249 >>Gebt die Quest Federgewichtig ab
    .target Will Robotronic
step
    .goto 76,47.30,21.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tharkul Ironskull|r
    .turnin 14250 >>Gebt die Quest Erneuerbare Ressourcen ab
    .target Tharkul Ironskull
step
    .goto 76,47.24,21.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Teresa Spireleaf|r
    .accept 14230 >>Akzeptiert die Quest Körperliche Arbeit
    .target Teresa Spireleaf
step
    .goto 76,47.24,20.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Abbild des Erzmagiers Xylem|r
    .accept 14226 >>Akzeptiert die Quest Ärger unter den Füßen
    .target Image of Archmage Xylem
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Polymorphed Cockroaches|r
    >>|cRXP_WARN_Euer|r |cRXP_FRIENDLY_Personal Arkan Assistant|r |cRXP_WARN_wirkt|r |T294474:0|t[Insektenverwandlung] |cRXP_WARN_auf|r |cRXP_ENEMY_Satyr der Legashi|r|cRXP_WARN_,|r |cRXP_ENEMY_Legashi Rogues|r |cRXP_WARN_und|r |cRXP_ENEMY_Legashi Hellcallers|r
    .complete 14226,1 --Polymorphed Cockroach (12)
    .mob Legashi Satyr
    .mob Legashi Rogue
    .mob Legashi Hellcaller
step
    #loop
    .goto 76,54.474,24.603,0
    .waypoint 76,55.608,23.916,20,0
    .waypoint 76,55.295,25.216,20,0
    .waypoint 76,54.929,24.217,20,0
    .waypoint 76,54.474,24.603,20,0
    >>Plündert das |cRXP_PICK_Stolen Manuell|r auf dem Boden für das |cRXP_LOOT_Abjurer's Manuell|r
    >>|cRXP_WARN_Es gibt mehrere|r |cRXP_PICK_Stolen Manuals|r |cRXP_WARN_in der Gegend. Das|r |cRXP_FRIENDLY_Grün|r |cRXP_WARN_aussehende enthält das|r |cRXP_LOOT_Abjurer's Manuell|r
    .complete 14230,1 --Abjurer's Manual (1)
step
    #loop
    .goto 76,54.524,24.092,0
    .waypoint 76,54.524,24.092,40,0
    .waypoint 76,56.003,24.962,40,0
    .waypoint 76,52.415,22.519,40,0
    >>Tötet |cRXP_ENEMY_Polymorphed Cockroaches|r
    >>|cRXP_WARN_Euer|r |cRXP_FRIENDLY_Personal Arkan Assistant|r |cRXP_WARN_wirkt|r |T294474:0|t[Insektenverwandlung] |cRXP_WARN_auf|r |cRXP_ENEMY_Satyr der Legashi|r|cRXP_WARN_,|r |cRXP_ENEMY_Legashi Rogues|r |cRXP_WARN_und|r |cRXP_ENEMY_Legashi Hellcallers|r
    .complete 14226,1 --Polymorphed Cockroach (12)
    .mob Legashi Satyr
    .mob Legashi Rogue
    .mob Legashi Hellcaller
step
    #completewith next
    .goto 76,47.098,20.551,30 >>Kehrt zum Lager von |cRXP_FRIENDLY_Erzmagier Xylem|r zurück
    >>|cRXP_WARN_Have von Euch|r |cRXP_FRIENDLY_Personal Arkan Assistant|r |cRXP_WARN_cast|r |T135750:0|t[Zum Lager zurückkehren]
step
    .goto 76,47.24,21.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Teresa Spireleaf|r
    .turnin 14230 >>Gebt die Quest Körperliche Arbeit ab
    .target Teresa Spireleaf
step
    .goto 76,47.23,20.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Abbild des Erzmagiers Xylem|r
    .turnin 14226 >>Gebt die Quest Ärger unter den Füßen ab
    .accept 14413 >>Akzeptiert die Quest Der Gipfel des Lernens
    .timer 30,Der Gipfel des Lernens RP
    .target Image of Archmage Xylem
step
    .goto 76,55.71,14.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Abbild des Erzmagiers Xylem|r
    .turnin 14413 >>Gebt die Quest Der Gipfel des Lernens ab
    .accept 14296 >>Akzeptiert die Quest Stolpert nicht
    .target Image of Archmage Xylem
step
    #sticky
    #completewith WatchYourStepComplete
    .goto 76,55.375,14.957,0
    +|cRXP_WARN_Bewegt euch, um nicht vom Berg geworfen zu werden! Falls ihr herunterfällt, schwimmt zu|r |cRXP_FRIENDLY_Abbild des Erzmagiers Xylem|r |cRXP_WARN_um es erneut zu versuchen|r
    .target Image of Archmage Xylem
    .isOnQuest 14296
    --VV Need video for this quest
step
    .goto 76,55.740,14.745
    .aura 68613 >>Klickt auf den ersten |cRXP_PICK_Energy Medium|r
    .isOnQuest 14296
step
    .goto 76,56.211,14.735,5,0
    .goto 76,56.887,14.333
    .aura 68613,2+ >>Klickt auf den zweiten |cRXP_PICK_Energy Medium|r
    >>|cRXP_WARN_Bewegt euch auf die weißen Kreise, um nach oben zu gehen|r
    .isOnQuest 14296
step
    .goto 76,56.999,14.143,5,0
    .goto 76,57.570,12.867,5,0
    .goto 76,57.569,11.662
    .aura 68613,3+ >>Klickt auf den dritten |cRXP_PICK_Energy Medium|r
    >>|cRXP_WARN_Bewegt euch auf die weißen Kreise, um nach oben zu gehen|r
    .isOnQuest 14296
step
    .goto 76,57.386,11.252,5,0
    .goto 76,56.332,10.492,5,0
    .goto 76,55.486,10.606
    .aura 68613,4+ >>Klickt auf den vierten |cRXP_PICK_Energy Medium|r
    >>|cRXP_WARN_Bewegt euch auf die weißen Kreise, um nach oben zu gehen|r
    .isOnQuest 14296
step
    .goto 76,55.306,10.833,5,0
    .goto 76,55.038,12.596,5,0
    .goto 76,55.548,13.104,5,0
    .goto 76,56.295,13.520
    .aura 68613,5+ >>Klickt auf den fünften |cRXP_PICK_Energy Medium|r
    >>|cRXP_WARN_Bewegt euch auf die weißen Kreise, um nach oben zu gehen|r
    .isOnQuest 14296
step
    .goto 76,56.450,13.291,5,0
    .goto 76,56.859,11.766,5,0
    .goto 76,56.173,11.077
    .aura 68613,6+>>Klickt auf den sechsten |cRXP_PICK_Energy Medium|r
    >>|cRXP_WARN_Bewegt euch auf die weißen Kreise, um nach oben zu gehen|r
    .isOnQuest 14296
step
    .goto 76,55.992,11.256,5,0
    .goto 76,55.873,11.860
    >>|cRXP_WARN_Bewegt euch auf den weißen Kreis, um nach oben zu gehen|r
    .complete 14296,1 --Arcane Trial Completed (1)
    .isOnQuest 14296
step
    #label WatchYourStepComplete
    .goto 76,55.95,12.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Abbild des Erzmagiers Xylem|r
    .turnin 14296 >>Gebt die Quest Stolpert nicht ab
    .accept 24478 >>Akzeptiert die Quest Die Prüfung des Frosts
    .accept 14300 >>Akzeptiert die Quest Die Prüfung des Feuers
    .accept 24479 >>Akzeptiert die Quest Die Prüfung des Schattens
    .target Image of Archmage Xylem
step
    #completewith next
    .goto 76,56.049,11.926
    .goto 76,62.104,21.217,20 >>Klickt auf die |cRXP_PICK_Frost Portal Zone|r auf dem Boden, dann klickt auf das Portal
step
    #label FrostTrial
    #loop
    .goto 76,62.041,20.249,8,0
    .goto 76,62.168,19.956,8,0
    .goto 76,62.025,19.774,8,0
    .goto 76,61.633,20.002,8,0
    .goto 76,61.487,20.195,8,0
    .goto 76,61.228,20.548,8,0
    .goto 76,61.446,20.978,8,0
    .goto 76,61.665,20.874,8,0
    .goto 76,61.879,20.912,8,0
    .goto 76,62.116,20.756,8,0
    >>Sammelt 20 Stapel von |T252270:0|t[Essenz des Eises], indem ihr an kleinen schwebenden Eiskristallen vorbeilauft
    >>|cRXP_WARN_Weicht den rotierenden Eisblöcken und den blauen Kreisen auf dem Boden aus. Ihr verliert einen Stapel|r |T252270:0|t[Essenz des Eises] |cRXP_WARN_wenn ihr getroffen werdet|r
    .complete 24478,1 --Frost Trial Completed (1)
step
    #completewith FireTrial
    .goto 76,62.082,21.121
    .goto 76,56.173,12.079,20 >>BETRETET das Portal
step
    #completewith next
    .goto 76,56.082,11.942
    .goto 76,32.886,23.395,20 >>Klickt auf die |cRXP_PICK_Fire Portal Zone|r auf dem Boden, dann klickt auf das Portal
step
    #label FireTrial
    .goto 76,33.339,23.524
    >>Sammelt 10 Stapel von |T252268:0|t[Feuertanz], indem ihr von Kreis zu Kreis springt und dabei die Flammen vermeidet
    >>|cRXP_WARN_Der einfachste Weg ist, die Bewegungen von|r |cRXP_FRIENDLY_Darwin|r |cRXP_WARN_nachzuahmen|r
    .complete 14300,1 --Fire Trial Completed (1)
    .target Darwin
step
    #completewith ShadowTrial
    .goto 76,32.896,23.392
    .goto 76,56.173,12.079,20 >>BETRETET das Portal
step
    #completewith ShadowTrial
    .goto 76,56.119,11.959
    .goto 76,31.183,26.715,20 >>Klickt auf die |cRXP_PICK_Shadow Portal Zone|r auf dem Boden, dann klickt auf das Portal
step
    #completewith next
    .goto 76,30.792,27.281
    .aura 69863 >>Klickt auf den |cRXP_PICK_Violetten Stein|r, um die Prüfung zu beginnen
step
    #label ShadowTrial
    .goto 76,30.930,27.875
    >>Sammelt 20 Stapel von |T252272:0|t[Schattenköder], indem ihr |cRXP_ENEMY_Weeping Seelen|r auf die violetten Kreise auf dem Boden lockt
    >>|cRXP_WARN_Weicht den Angriffen der|r |cRXP_ENEMY_Weeping Seelen|r |cRXP_WARN_aus. Ihr verliert Stapel wenn sie euch angreifen|r
    .complete 24479,1 --Shadow Trial Completed (1)
    .mob Weeping Soul
step
    #completewith next
    .goto 76,31.172,26.719
    .goto 76,56.173,12.079,20 >>Klickt auf das Portal
step
    .goto 76,55.95,12.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Abbild des Erzmagiers Xylem|r
    .turnin 24478 >>Gebt die Quest Die Prüfung des Frosts ab
    .turnin 14300 >>Gebt die Quest Die Prüfung des Feuers ab
    .turnin 24479 >>Gebt die Quest Die Prüfung des Schattens ab
    .accept 14299 >>Akzeptiert die Quest Xylems Asyl
    .target Image of Archmage Xylem
step
    .goto 76,55.95,12.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Abbild des Erzmagiers Xylem|r
    .gossipoption 111896 >>Bittet ihn, das Portal zu seinem Turm zu öffnen
    .target Image of Archmage Xylem
    .isOnQuest 14299
step
    #completewith next
    .goto 76,56.162,12.079
    .goto 76,22.462,43.582,20 >>Klickt auf das Portal
step
    .goto 76,25.59,37.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Joanna|r
    .turnin 14299 >>Gebt die Quest Xylems Asyl ab
    .accept 14389 >>Akzeptiert die Quest War das nicht klar?
    .target Joanna
step
    #completewith next
    .goto 76,25.720,37.969
    .goto 76,27.773,40.970,20 >>Klickt auf das Portal
step
    .goto 76,27.798,40.448
    >>Find |cRXP_FRIENDLY_Anara|r und |cRXP_FRIENDLY_Azuregos|r
    .complete 14389,1 --Find Anara, and hopefully, Azuregos
    .target Anara
    .target Spirit of Azuregos
step
    .turnin 14389 >>Gebt die Quest War das nicht klar? ab
    .accept 14390 >>Akzeptiert die Quest Einfach kann jeder
step
    .goto 76,27.79,39.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Azuregos|r
    .complete 14390,1 --Convince Azuregos to meet with Kalecgos
    .target Spirit of Azuregos
    .skipgossip 36436,1
step
    .turnin 14390 >>Gebt die Quest Einfach kann jeder ab
    .accept 14391 >>Akzeptiert die Quest Das Blatt wenden
step
    .goto 76,27.617,39.602
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Anara|r
    .gossipoption 111889 >>Kehrt zum Leben zurück
    .target Anara
    .isOnQuest 14391
step
    #xprate <1.2
    #completewith MeetingAgenda
    >>Tötet |cRXP_ENEMY_Talrendis Ambassadors|r. Plündert sie für |cRXP_LOOT_Ambassador's Robes|r
    .complete 14433,2 --Ambassador's Robes (1)
    .mob Talrendis Ambassador
step
    #xprate <1.2
    #completewith AmbRobes
    >>Beute |cRXP_LOOT_Briaroot Gebräu|r auf dem Boden
    >>|cRXP_ENEMY_Blackmaw Timbermaw|r |cRXP_WARN_kann auch fallen lassen|r |cRXP_LOOT_Briaroot Gebräu|r
    .complete 14432,1 --Briaroot Brew (10)
    .mob Blackmaw Pathfinder
    .mob Blackmaw Warrior
    .mob Blackmaw Shaman
step
    #xprate <1.2
    #label MeetingAgenda
    .goto 76,29.813,38.566
    >>Sammelt |cRXP_PICK_Wichtig Documents|r vom Boden für die |cRXP_LOOT_Blackmaw Treffen Agenda|r
    .complete 14433,1 --Blackmaw Meeting Agenda (1)
step
    #xprate <1.2
    #label AmbRobes
    #loop
    .goto 76,30.564,37.729,0
    .waypoint 76,29.965,38.504,40,0
    .waypoint 76,30.564,37.729,40,0
    .waypoint 76,31.261,34.060,40,0
    .waypoint 76,32.123,32.756,40,0
    >>Tötet |cRXP_ENEMY_Talrendis Ambassadors|r. Plündert sie für |cRXP_LOOT_Ambassador's Robes|r
    .complete 14433,2 --Ambassador's Robes (1)
    .mob Talrendis Ambassador
step
    #xprate <1.2
    #loop
    .goto 76,30.365,37.578,0
    .waypoint 76,29.926,38.784,30,0
    .waypoint 76,30.365,37.578,30,0
    .waypoint 76,31.393,36.065,30,0
    .waypoint 76,31.073,34.994,30,0
    .waypoint 76,31.171,33.729,30,0
    >>Beute |cRXP_LOOT_Briaroot Gebräu|r auf dem Boden
    >>|cRXP_ENEMY_Blackmaw Timbermaw|r |cRXP_WARN_kann auch fallen lassen|r |cRXP_LOOT_Briaroot Gebräu|r
    .complete 14432,1 --Briaroot Brew (10)
    .mob Blackmaw Pathfinder
    .mob Blackmaw Warrior
    .mob Blackmaw Shaman
step
    #xprate <1.2
    #completewith Diplomatic
    .subzone 4825 >>Reist zum Nördlichen Umschlagplatz der Raketenbahn
step
    #xprate <1.2
    #optional
    .goto 76,42.402,23.602
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Haggrum Blutfaust|r
    .turnin 14432 >>Gebt die Quest Ein fahles Gebräu ab
    .turnin 14433 >>Gebt die Quest Diplomatie mal anders ab
    .accept 14435 >>Akzeptiert die Quest Doppeltes Spiel bei den Schwarzschlund
    .target Haggrum Bloodfist
    .maxlevel 20
step
    #xprate <1.2
    #label Diplomatic
    .goto 76,42.402,23.602
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Haggrum Blutfaust|r
    .turnin 14432 >>Gebt die Quest Ein fahles Gebräu ab
    .turnin 14433 >>Gebt die Quest Diplomatie mal anders ab
    .target Haggrum Bloodfist
step
    #xprate <1.2
    #optional
    .goto 76,42.614,23.709
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Andorel Sunsworn|r
    .turnin 14430 >>Gebt die Quest Das Konstrukt hacken ab
    .target Andorel Sunsworn
step
    #xprate <1.2
    #optional
    .goto 76,42.435,23.696
    .aura 69054 >>|cRXP_WARN_Benutzt von Euch|r |T132671:0|t[Verkleidung als Botschafter] |cRXP_WARN_bei|r |cRXP_PICK_Haggrum's Smokepit|r
    .use 49368
    .isOnQuest 14435
step
    #xprate <1.2
    #optional
    .goto 76,42.614,23.709
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Andorel Sunsworn|r
    .gossipoption 111853 >>Teleportiert zur Schwarzschlundfeste
    .target Andorel Sunsworn
    .isOnQuest 14435
step
    #xprate <1.2
    #optional
    .goto 76,30.986,29.992
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Andorel Sunsworn|r
    .complete 14435,1 --Negotiations Sabotaged (1)
    .target Ungarl
    .skipgossip 36618,2,1,1
    .isOnQuest 14435
step
    #xprate <1.2
    #optional
    .goto 76,31.046,29.258,12,0
    .goto 76,31.889,30.192,12,0
    .goto 76,32.188,31.228,12,0
    .goto 76,32.755,32.247
    >>Tötet |cRXP_ENEMY_Blackmaw Warriors|r und |cRXP_ENEMY_Blackmaw Shamans|r, während ihr von Euch Weg hinaus aus Schwarzschlundfeste kämpft
    .complete 14435,2 --Blackmaw Warrior (4)
    .complete 14435,3 --Blackmaw Shaman (4)
    .mob Blackmaw Warrior
    .mob Blackmaw Shaman
    .isOnQuest 14435
step
    #xprate <1.2
    #optional
    #completewith next
    .goto 76,32.755,32.247,12 >> Verlassen Schwarzschlundfeste
    .subzoneskip 1216,1
    .isOnQuest 14435
step
    #xprate <1.2
    #optional
    .goto 76,42.402,23.602
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Haggrum Blutfaust|r
    .turnin 14435 >>Gebt die Quest Doppeltes Spiel bei den Schwarzschlund ab
    .target Haggrum Bloodfist
    .isOnQuest 14435
step
    #xprate <1.2
    #completewith next
    .goto 1447/1,-5711.20020,4488.30029,5,0
    .goto 1447/1,-5718.10010,4477.89990,3 >>Nehmt den Aufzug hinauf
step
    #xprate <1.2
    .goto 76,42.526,24.562
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit dem |cRXP_FRIENDLY_Bilgewater Raketenreiter|r
    .gossipoption 112443 >>Nehmt die Raketenfahrt zum Nördlichen Raketenbahn-Der Terminus
    .timer 51,Northern Rocketway Der Der Terminus
    .target Bilgewater Rocket-jockey
    .isOnQuest 14391
step
    #xprate >1.19
    #completewith next
    .goto 76,25.93,49.64,7 >>Reist zur Spitze der Raketenbahn-Plattform
step
    #xprate >1.19
    .goto 76,25.93,49.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit dem |cRXP_FRIENDLY_Bilgewater Raketenreiter|r
    .gossipoption 112442 >>Nehmt die Raketenfahrt zum Nördlichen Raketenbahn-Der Terminus
    .timer 83,Northern Rocketway Der Der Terminus
    .target Bilgewater Rocket-jockey
    .isOnQuest 14391
step
    .goto Azshara,66.50,21.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Blitz Kawummsospazz|r
    .fp >>Erlernt die Flugroute nach Bittere Landzunge
    .target Blitz Blastospazz
    .isQuestAvailable 14261
step
    .goto 76,66.551,20.368
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kalec|r
    .turnin 14391 >>Gebt die Quest Das Blatt wenden ab
    .accept 24467 >>Akzeptiert die Quest Übergang ins Schwarze
    .target Kalec
step
    .goto 76,66.338,20.249
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jellix Luntenzünder|r
    .accept 14297 >>Akzeptiert die Quest Freiheitskämpfer
    .target Jellix Fuselighter
step
    .goto 76,66.540,19.590
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Feno Blastnoggin|r
    .accept 14261 >>Akzeptiert die Quest Eiskalt
    .target Feno Blastnoggin
step
    #completewith FadeToBlack
    >>Tötet |cRXP_ENEMY_Twilight Drache Hunters|r, |cRXP_ENEMY_Twilight Desecrators|r und |cRXP_ENEMY_Sable Drakonids|r. Plündert sie für |T134245:0|t[|cRXP_LOOT_Ironwrought Keys|r]
    >>Benutzt |T134245:0|t[Ironwrought Keys] um |cRXP_PICK_Zwielicht Käfige|r zu öffnen
    .complete 14297,1 --Bilgewater Laborer rescued (4)
    .mob Twilight Dragon Hunter
    .mob Twilight Desecrator
    .mob Sable Drakonid
step
    #completewith LaborerRescue
    .use 49596 >>Benutzt von Euch |T133146:0|t[Cryomatic 16] on |cRXP_ENEMY_Sable Dragons|r
    >>|cRXP_WARN_Das wird sie fast sofort töten|r
    .complete 14261,1 --Sable Drake (8)
    .mob Sable Drake
step
    .goto 76,71.627,16.433
    >>Tötet |cRXP_ENEMY_Twilight Lord Katrana|r
    >>|cRXP_WARN_Ignoriert|r |cRXP_ENEMY_Malicion|r |cRXP_WARN_. Er wird besiegt von|r |cRXP_FRIENDLY_Kalecgos|r |cRXP_WARN_danach|r
    .complete 24467,1 --|1/1 Twilight Lord Katrana slain
    .complete 24467,2 --|1/1 Malicion slain
    .mob Twilight Lord Katrana
step
    #label FadeToBlack
    .goto 76,71.81,16.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kalecgos|r
    .turnin 24467 >>Gebt die Quest Übergang ins Schwarze ab
    .target Kalecgos
step
    #label LaborerRescue
    #loop
    .goto 76,66.305,13.159,0
    .waypoint 76,69.095,16.926,40,0
    .waypoint 76,67.738,15.850,40,0
    .waypoint 76,66.305,13.159,40,0
    .waypoint 76,64.272,14.953,40,0
    .waypoint 76,64.953,16.437,40,0
    .waypoint 76,65.883,17.840,40,0
    >>Tötet |cRXP_ENEMY_Twilight Drache Hunters|r, |cRXP_ENEMY_Twilight Desecrators|r und |cRXP_ENEMY_Sable Drakonids|r. Plündert sie für |T134245:0|t[|cRXP_LOOT_Ironwrought Keys|r]
    >>Benutzt |T134245:0|t[Ironwrought Keys] um |cRXP_PICK_Zwielicht Käfige|r zu öffnen
    .complete 14297,1 --Bilgewater Laborer rescued (4)
    .mob Twilight Dragon Hunter
    .mob Twilight Desecrator
    .mob Sable Drakonid
step
    #loop
    .goto 76,69.901,16.655,0
    .waypoint 76,69.901,16.655,40,0
    .waypoint 76,67.157,14.734,40,0
    .waypoint 76,65.900,16.034,40,0
    .waypoint 76,69.595,19.144,40,0
    .use 49596 >>Benutzt von Euch |T133146:0|t[Cryomatic 16] on |cRXP_ENEMY_Sable Dragons|r
    >>|cRXP_WARN_Das wird sie fast sofort töten|r
    .complete 14261,1 --Sable Drake (8)
    .mob Sable Drake
step
    .goto 76,66.541,19.604
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Feno Blastnoggin|r
    .turnin 14261 >>Gebt die Quest Eiskalt ab
    .target Feno Blastnoggin
step
    .goto 76,66.338,20.260
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jellix Luntenzünder|r
    .turnin 14297 >>Gebt die Quest Freiheitskämpfer ab
    .target Jellix Fuselighter
step
    .goto 76,67.042,20.595
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Azuregos|r
    .accept 14392 >>Akzeptiert die Quest Leb wohl, Minnow
    .target Azuregos
step << Druid Cata
    #completewith DruidTraining1
    .cast 18960 >>Wirkt |T135758:0|t[Teleportieren: Mondlichtung]
    .zoneskip Moonglade
step << Druid Cata
    #label DruidTraining1
    .goto 1450/1,-2593.69995,7867.39990
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Loganaar|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Loganaar
step
    #completewith next
    .hs >>Benutzt euren Ruhestein zum Bilgewasserhafen
    .use 6948
    .subzoneskip 4821
step << Shaman Cata
    .goto 76,56.671,49.531
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Max Lawine|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Max Avalanche
step << Mage Cata
    .goto 76,56.919,49.598
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Fizz Lighter|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Fizz Lighter
step << Warlock Cata
    .goto 76,56.708,49.283
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Evol Fingers|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Evol Fingers
step << Priest Cata
    .goto 76,56.852,50.279
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sister Goldskimmer|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Sister Goldskimmer
step << Rogue Cata
    .goto 76,56.884,50.575
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Stinky Shapshiv|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Stinky Shapshiv
step << Hunter Cata
    .goto 76,56.914,50.709
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bamm Megabomb|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Bamm Megabomb
step << Warrior Cata
    .goto 76,57.167,50.105
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Warrior-Matic NX-01|r upstairs
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Warrior-Matic NX-01
step
    .goto 76,53.264,49.955
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sorata Firespinner|r
    .turnin 14392 >>Gebt die Quest Leb wohl, Minnow ab
    .target Sorata Firespinner
step
    .goto 76,52.977,49.761
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gurlorn|r
    .accept 24497 >>Akzeptiert die Quest Wieder in der Luft
    .target Gurlorn
step
    .goto 76,60.479,52.205
    .vehicle >>Sitzt auf |cRXP_FRIENDLY_Schwingen Stahlflügel|r
    .timer 130,Wieder in der Luft RP
    .target Wings of Steel
    .isOnQuest 24497
    --VV No need for this if flight path is available automatically
step
    #completewith next
    +|cRXP_WARN_Entfernt den|r |T135992:0|t[Fallschirm] |cRXP_WARN_Effekt wenn ihr ankommt, um zu vermeiden in den Fluss zu fliegen|r
step
    .goto 76,13.999,64.836
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Chawg|r
    .turnin 24497 >>Gebt die Quest Wieder in der Luft ab
    .accept 14462 >>Akzeptiert die Quest Wo ist mein Kopf?
    .accept 24433 >>Akzeptiert die Quest Angst, der große Motivator
    .target Chawg
    .isOnQuest 24497
step
    #optional
    #label NorthAzsharaSkip
step
    #completewith next
    .goto Azshara,52.92,49.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kroum|r
    .fly Southern Rocketway >>Fliegt nach Südliche Endhaltestelle der Raketenbahn
    .target Kroum
    .subzoneskip 1237
step
    #completewith next
    .goto Azshara,50.78,74.52,5,0
    .goto Azshara,50.70,74.22,3 >>Nehmt den Aufzug hinauf
step
    .goto Azshara,50.70,74.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit dem |cRXP_FRIENDLY_Bilgewater Raketenreiter|r
    .gossipoption 112434 >>Nehmt die Raketenfahrt zur Südlichen Endhaltestelle der Raketenbahn
    .timer 35,Südliche Endhaltestelle der Raketenbahn
    .target Bilgewater Rocket-jockey
    .subzoneskip 1237
    .isQuestAvailable 14392
step
    #completewith next
    .subzone 1237 >>Reist nach Valormok
    .isQuestAvailable 14392
step
    .goto 76,13.999,64.836
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Chawg|r
    .accept 14462 >>Akzeptiert die Quest Wo ist mein Kopf?
    .accept 24433 >>Akzeptiert die Quest Angst, der große Motivator
    .target Chawg
step
    .goto 76,13.854,64.479
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Andorel Sunsworn|r
    .accept 24434 >>Akzeptiert die Quest Truppen absetzen
    .target Andorel Sunsworn
step
    .goto 76,14.346,65.018
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kroum|r
    .accept 14475 >>Akzeptiert die Quest Gestranded!
    .target Kroum
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Talrendis Sentinels|r, |cRXP_ENEMY_Talrendis Defenders|r und |cRXP_ENEMY_Talrendis Lorekeepers|r
    .complete 24433,2 --Talrendis Sentinel (6)
    .mob +Talrendis Sentinel
    .complete 24433,1 --Talrendis Defender (12)
    .mob +Talrendis Defender
    .complete 24434,1 --Talrendis Lorekeeper (5)
    .mob +Talrendis Lorekeeper
step
    .goto 76,14.453,75.567
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bombardier Captain Smooks|r
    .target Bombardier Captain Smooks
    .turnin 14475 >>Gebt die Quest Gestranded! ab
    .accept 14476 >>Akzeptiert die Quest Verkabelt zum großen Knall
step
    .goto 76,15.02,74.28
    >>Zwicken |cRXP_PICK_Detonator Ladung 1|r auf dem Boden
    .complete 14476,1 --Detonator Charge 1 Armed (1)
step
    .goto 76,15.47,73.72
    >>Zwicken |cRXP_PICK_Detonator Ladung 2|r auf dem Boden
    .complete 14476,2 --Detonator Charge 2 Armed (1)
step
    .goto 76,15.57,74.47
    >>Zwicken |cRXP_PICK_Detonator Ladung 3|r auf dem Boden
    .complete 14476,3 --Detonator Charge 3 Armed (1)
step
    .goto 76,14.459,75.569
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bombardier Captain Smooks|r
    .turnin 14476 >>Gebt die Quest Verkabelt zum großen Knall ab
    .accept 14477 >>Akzeptiert die Quest Drückt auf den Knopf!
    .target Bombardier Captain Smooks
step
    .goto 76,14.408,75.734
    >>Zwicken |cRXP_PICK_Goblin Zünder|r
    .complete 14477,1 --Detonate the Explosives
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Talrendis Sentinels|r, |cRXP_ENEMY_Talrendis Defenders|r und |cRXP_ENEMY_Talrendis Lorekeepers|r
    .complete 24433,2 --Talrendis Sentinel (6)
    .mob +Talrendis Sentinel
    .complete 24433,1 --Talrendis Defender (12)
    .mob +Talrendis Defender
    .complete 24434,1 --Talrendis Lorekeeper (5)
    .mob +Talrendis Lorekeeper
step
    .goto 76,12.517,67.451
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Slinky|r
    .turnin 14462 >>Gebt die Quest Wo ist mein Kopf? ab
    .accept 14464 >>Akzeptiert die Quest Blitzschnelles Attentat
    .target Slinky Sharpshiv
step
    #completewith next
    .goto 76,12.517,67.451
    +|cRXP_WARN_Klettert den Turm hinauf mit Slinky|r
    .target Slinky Sharpshiv
step
    .goto 76,12.01,68.06
    >>Tötet |cRXP_ENEMY_Captain Grunwald|r. Plündert sie für |cRXP_LOOT_Head|r
    .complete 14464,1 --Grunwald's Head (1)
    .mob Captain Grunwald
step
    #loop
    .goto 76,10.899,70.438,0
    .goto 76,11.481,71.991,0
    .waypoint 76,10.899,70.438,50,0
    .waypoint 76,11.481,71.991,50,0
    .waypoint 76,10.320,73.798,50,0
    .waypoint 76,9.448,71.859,50,0
    >>Tötet |cRXP_ENEMY_Talrendis Sentinels|r, |cRXP_ENEMY_Talrendis Defenders|r und |cRXP_ENEMY_Talrendis Lorekeepers|r
    .complete 24433,2 --Talrendis Sentinel (6)
    .mob +Talrendis Sentinel
    .complete 24433,1 --Talrendis Defender (12)
    .mob +Talrendis Defender
    .complete 24434,1 --Talrendis Lorekeeper (5)
    .mob +Talrendis Lorekeeper
step
    .goto 76,10.56,69.85
    >>Klickt |cRXP_PICK_Lorekeeper's Beschwören Stein|r
    .turnin 24434 >>Gebt die Quest Truppen absetzen ab
    .target Lorekeeper's Summoning Stone
step
    #completewith next
    .goto 76,10.56,69.85
    >>Klickt |cRXP_PICK_Lorekeeper's Beschwören Stein|r
    .gossipoption 111875 >>Nutzt den Teleporter um nach Valormok zurückzukehren
    .target Lorekeeper's Summoning Stone
step
    .goto 76,14.350,65.023
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kroum|r
    .turnin 14477 >>Gebt die Quest Drückt auf den Knopf! ab
    .target Kroum
step
    .goto 76,14.471,65.725
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jr. Bombardier Hackel|r
    .accept 24430 >>Akzeptiert die Quest Den Himmel schwärzen
    .target Jr. Bombardier Hackel
step
    .goto 76,14.455,65.770
    .vehicle >>Reitet den |cRXP_FRIENDLY_Gestrandeten Windreiter|r
    .target Grounded Wind Rider
    .isOnQuest 24430
step
    #completewith next
    >>|cRXP_WARN_Benutzt|r |T133709:0|t[Bombe werfen] |cRXP_WARN_to destroy|r |cRXP_ENEMY_Talrendis Gleve Throwers|r
    .complete 24430,1 --Talrendis Glaive Thrower (6)
    .mob Talrendis Glaive Thrower
step
    .goto 76,9.239,72.539
    >>|cRXP_WARN_Benutzt|r |T133709:0|t[Bombe werfen] |cRXP_WARN_to destroy the|r |cRXP_ENEMY_Kommandozentrale|r
    .complete 24430,2 --Command Center Bombed (1)
step
    #loop
    .goto 76,12.374,72.832,0
    .goto 76,12.825,70.135,0
    .goto 76,11.672,67.149,0
    .goto 76,9.737,69.693,0
    .waypoint 76,12.374,72.832,40,0
    .waypoint 76,12.825,70.135,40,0
    .waypoint 76,11.672,67.149,40,0
    .waypoint 76,9.737,69.693,40,0
    >>|cRXP_WARN_Benutzt|r |T133709:0|t[Bombe werfen] |cRXP_WARN_to destroy|r |cRXP_ENEMY_Talrendis Gleve Throwers|r
    .complete 24430,1 --Talrendis Glaive Thrower (6)
    .mob Talrendis Glaive Thrower
step
    #completewith next
    .goto 76,14.471,65.721,50 >>Fliegen back toward |cRXP_FRIENDLY_Jr. Bombardier Hackel|r
step
    .goto 76,14.471,65.721
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jr. Bombardier Hackel|r
    .turnin 24430 >>Gebt die Quest Den Himmel schwärzen ab
    .target Jr. Bombardier Hackel
step
    .goto 76,13.999,64.836
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Chawg|r
    .turnin 24433 >>Gebt die Quest Angst, der große Motivator ab
    .turnin 14464 >>Gebt die Quest Blitzschnelles Attentat ab
    .accept 24439 >>Akzeptiert die Quest Die Unterwerfung Azsharas
    .target Chawg
step
    .goto 76,9.15,72.82
    >>Tötet |cRXP_ENEMY_Kommandant Jarrodenus|r im zweiten Geschoß des Gebäudes
    .complete 24439,1 --The Head of Jarrodenus (1)
    .mob Commander Jarrodenus
step
    #completewith next
    .goto 76,10.56,69.85
    >>Klickt |cRXP_PICK_Lorekeeper's Beschwören Stein|r
    .gossipoption 111875 >>Nutzt den Teleporter um nach Valormok zurückzukehren
    .target Lorekeeper's Summoning Stone
step
    .goto 76,13.999,64.836
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Chawg|r
    .turnin 24439 >>Gebt die Quest Die Unterwerfung Azsharas ab
    .target Chawg
step
    .goto 76,14.345,65.025
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kroum|r
    .accept 24463 >>Akzeptiert die Quest Ins Eschental vordringen
    .target Kroum
step
    #completewith next << !Warlock !Paladin
    #completewith FelsteedTraining << Warlock
    #completewith WarhorseTraining << Paladin
    .goto 76,14.346,65.018
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kroum|r
    .fly Orgrimmar >> Fliege nach Orgrimmar
    .target Kroum
    .zoneskip Orgrimmar
step
    .goto 1454/1,-4356.80029,1799.59998
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Maztha|r
    .train 33388 >>Erlernen Unerfahrener Reiter
    .target Maztha
    .xp <20,1
    .train 33391,1 --Journeyman Riding
    .train 34090,1 --Expert Riding
    .train 34091,1 --Artisan Riding
    .train 90265,1 --Master Riding
step << Orc !Warlock
    .goto 1454/1,-4569.50000,2095.10010
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ogunaro Wolfrunner|r
	.vendor >>|cRXP_BUY_Kauft einen|r |T132224:0|t[Wolf] |cRXP_BUY_von ihm, wenn ihr noch kein Reittier von Euch im Bestand habt|r
	.target Ogunaro Wolfrunner
	.mountcount 75-150,<1
    .xp <20,1
step << Goblin !Warlock
    .goto 1454/1,-4132.89990,1483.09998
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kall Worthaton|r
	.vendor >>|cRXP_BUY_Kauft einen|r |T134237:0|t[Tricerati] |cRXP_BUY_von ihm, wenn ihr noch kein Reittier von Euch im Bestand habt|r
	.target Kall Worthaton
	.mountcount 75-150,<1
    .xp <20,1
step << !Orc !Goblin !Warlock !Paladin
    .goto 1454/1,-4439.39990,1573.30005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gryshka|r
    .home >>Setzt euren Ruhestein in Orgrimmar
    .target Gryshka
	.mountcount 75-150,<1
step << Troll !Warlock
    #completewith next
    .goto 1454/1,-4370.00000,1799.90002
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Doras|r
    .fly Sen'Jin Village >>Fliegt nach Sen'Jin Village
    .target Doras
    .subzoneskip 367
step << Troll !Warlock
    .goto 1411/1,-4882.50000,-857.90002
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Zjolnir|r
	.vendor >>|cRXP_BUY_Kauft einen|r |T132253:0|t[Raptor] |cRXP_BUY_von ihm, wenn ihr noch kein Reittier von Euch im Bestand habt|r
	.target Zjolnir
	.mountcount 75-150,<1
    .xp <20,1
step << Undead/BloodElf !Warlock
    .goto 1454/1,-4390.80029,1840.09998
    #completewith next << Undead
    #completewith SilvermoonPort << BloodElf
    .zone Tirisfal Glades >>Nehmt den Zeppelin nach Tirisfal
    .zoneskip Undercity
step << Undead !Warlock
    .goto 1420/0,235.70000,2277.60010
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Zachariah Post|r
	.vendor >>|cRXP_BUY_Kauft einen|r |T132264:0|t[Skelettpferd] |cRXP_BUY_von ihm, wenn ihr noch kein Reittier von Euch im Bestand habt|r
	.target Zachariah Post
	.mountcount 75-150,<1
    .xp <20,1
step << BloodElf !Warlock
    #completewith SilvermoonPort
    .goto 18,66.21,1.16,20,0
    .zone Undercity >>Reist nach Unterstadt
step << BloodElf !Warlock
    #label SilvermoonPort
    .goto 1420/0,269.10001,1804.59998,15,0
    .goto 1420/0,346.60001,1806.00000
    .zone Silvermoon City >>Benutzt die |cRXP_PICK_Kugel der Translokation|r, um nach Silbermond zu gelangen
    .mountcount 75,<1
step << BloodElf !Warlock
    #completewith next
    .goto 110,72.396,85.242,12,0
    .goto 1941/0,-4877.20020,7012.10059,15,0
    .zone Eversong Woods >>Verlassen Silbermond
step << BloodElf !Warlock
    .goto 1941/0,-5096.30029,6844.10059
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Winaestra|r
	.vendor >>|cRXP_BUY_Kauft einen|r |T132227:0|t[Falkenschreiter] |cRXP_BUY_von ihr, wenn ihr noch kein Reittier von Euch im Bestand habt|r
	.target Winaestra
	.mountcount 75-150,<1
    .xp <20,1
step << Tauren !Paladin
    #completewith next
    .goto 1454/1,-4370.00000,1799.90002
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Doras|r
    .fly Thunder Bluff >>Fliege nach Donnerfels
    .target Doras
    .zoneskip Thunder Bluff
    .zoneskip Mulgore
step << Tauren !Paladin
    #completewith next
    .goto 1456/1,183.30000,-1314.09998,20 >>Nehmt den Aufzug, um Donnerfels zu verlassen
    .zoneskip Mulgore
step << Tauren !Paladin
    .goto 1412/1,-392.20001,-2280.00000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Harb Clawhoof|r
	.vendor >>|cRXP_BUY_Kauft einen|r |T132243:0|t[Kodo] |cRXP_BUY_von ihr, wenn ihr noch kein Reittier von Euch im Bestand habt|r
	.target Harb Clawhoof
	.mountcount 75-150,<1
    .xp <20,1
step << Warlock Cata
    #label FelsteedTraining
    .goto 1454,54.49,39.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Mirket|r
    .train 5784 >>Erlernen |T136103:0|t[Teufelsross]
    .target Mirket
    .mountcount 75-150,<1
step << Paladin Cata
    #label WarhorseTraining
    .goto 1454/1,-4292.50000,1863.70007
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Atohmo|r
    .train 34769 >>Erlernen |T136103:0|t[Schlachtross beschwören] << BloodElf
    .train 69820 >>Erlernen |T132245:0|t[Kodo der Sonnenläufer beschwören] << Tauren
    .target Sunwalker Atohmo
    .mountcount 75-150,<1
step << !Orc !Goblin !Warlock !Paladin
    #optional
    #completewith FlyValormok
    .hs >>Ruhestein nach Orgrimmar
    .use 6948
    .zoneskip Azshara
    .zoneskip Orgrimmar
    .zoneskip Ashenvale
step << Warrior/Paladin
    .goto 1454,75.08,36.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Zendo'jian|r
    >>|cRXP_BUY_Kauft einen|r |T135423:0|t[Streitaxt] |cRXP_BUY_von ihm|r
    .collect 926,1,24463,1 --Battle Axe (1)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
    .target Zendo'jian
    .zoneskip Orgrimmar,1
step << Shaman
    .goto 1454,76.12,37.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Shoma|r
    >>|cRXP_BUY_Kauft|r |T132941:0|t[Rechtshändige Klaue] |cRXP_BUY_und|r |T132941:0|t[Linkshändige Klaue] |cRXP_BUY_von ihm|r
    >>|cRXP_WARN_Überspringt diesen Schritt, wenn ihr die Verstärkung-Spezialisierung nicht ausgewählt habt!|r
    .collect 15903,1,24463,1 --Collect Right-Handed Claw (1)
    .collect 15907,1,24463,1 --Collect Left-Handed Claw (1)
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.6
    .target Shoma
    .zoneskip Orgrimmar,1
step << Rogue
    .goto 1454,76.12,37.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Shoma|r
    >>|cRXP_BUY_Kauft einen|r |T135419:0|t[Langschwert] |cRXP_BUY_von ihm. Legt es an, sobald ihr Stufe 21 erreicht|r
    >>|cRXP_WARN_Kauft einen|r |T135342:0|t[Kris] |cRXP_WARN_instead if you have Assasination or Feingefühl specialization|r
    .collect 923,1,24463,1 --Longsword (1)
    .target Shoma
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.1
    .xp >21,1
    .zoneskip Orgrimmar,1
step << Rogue
    .goto 1454,76.12,37.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Shoma|r
    >>|cRXP_BUY_Kauft einen|r |T135419:0|t[Langschwert] |cRXP_BUY_von ihm|r
    >>|cRXP_WARN_Kauft einen|r |T135342:0|t[Kris] |cRXP_WARN_instead if you have Assasination or Feingefühl specialization|r
    .collect 923,1,24463,1 --Longsword (1)
    .target Shoma
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.1
    .xp <21,1
    .zoneskip Orgrimmar,1
step << Warrior/Paladin
    #optional
    #optional
    #completewith AzsharaEnd
    +Legt die |T135423:0|t[Streitaxt] |cRXP_WARN_an|r
    .use 926
    .itemcount 926,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
step << Shaman
    #optional
    #completewith AzsharaEnd
    #label Knuckles
    +Legt die |T132941:0|t[Rechts-Handed Klaue] an
    .use 15903
    .itemcount 15903,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.6
step << Shaman
    #optional
    #completewith AzsharaEnd
    #label Knuckles
    +Legt die |T132938:0|t[Linkshändige Klaue] an
    .use 15907
    .itemcount 15907,1
    .itemStat 17,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.6
step << Rogue
    #optional
    #completewith AzsharaEnd
    +|cRXP_WARN_Legt|r die |T135419:0|t[Langschwert] an
    .use 923
    .itemcount 923,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.1
    .xp <21,1
step << Rogue
    #optional
    #completewith AzsharaEnd
    +|cRXP_WARN_Legt|r |T135342:0|t[Kris] an
    .use 2209
    .itemcount 2209,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.9
step
    #label FlyValormok
    .goto 1454/1,-4370.00000,1799.90002
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Doras|r
    .fly Valormok >>Fliegt nach Valormok
    .target Doras
    .zoneskip Azshara
    .zoneskip Ashenvale
step
    #completewith next
    .zone Ashenvale >>Überquert die Brücke ins Eschental
step
    .goto 63,94.410,46.819
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kulg Gorespatter|r
    .turnin 24463 >>Gebt die Quest Ins Eschental vordringen ab
    .accept 13866 >>Akzeptiert die Quest zum Schutzwall!
    .target Kulg Gorespatter
step
    #label AzsharaEnd
    .goto 63,94.410,46.819
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kulg Gorespatter|r
    .gossipoption 111683 >>Fliegt zu Mor'Shan Ramparts
    .target Kulg Gorespatter
    .subzoneskip 2457,1
    .isOnQuest 13866
step
    #optional
    .abandon 14407 >>Brecht die Quest Azshara Blues ab.
    ]])
