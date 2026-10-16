if GetLocale() ~= "deDE" then return end
RXPGuides.RegisterGuide([[
#tbc
#version 7
#group RXP TBC Überlebenskunst Dungeonführer (H)
<< Horde
#name 14-16 The Barrens
#version 7
#subgroup RXP TBC Survival Guide 1-30
#next 16-18 Ghostlands

step << BloodElf/Undead
    #completewith next
    .goto Orgrimmar,48.97,92.84,50,0
    .zone Orgrimmar >> Betretet Orgrimmar
step << BloodElf/Undead
    .goto Orgrimmar,45.12,63.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Doras|r
    .fp Orgrimmar >>Erlernt die Orgrimmar-Flugroute
    .target Doras
step << BloodElf/Undead
    #completewith next
    .goto Orgrimmar,48.97,92.84,50,0
    .zone Durotar >> Verlasst Orgrimmar
step << BloodElf/Undead
    #completewith next
    .subzone 362 >>Reist nach Klingenhügel
step << BloodElf/Undead
    .goto Durotar,50.8,43.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Takrin|r
    .accept 840 >>Akzeptiert die Quest Freiwilliger der Horde
    .target Takrin Pathseeker
step << BloodElf/Undead
    .goto Durotar,55.94,74.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Vornal|r
    >>|cRXP_WARN_This is a low level quest that rewards 10x|r |T134712:0|t[Really Sticky Glue] |cRXP_WARN_(10 second instant root on enemy). This is extremely valuable when in dangerous situations, it could save your life!|r (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_WARN_Skip this step if you do not wish to get it|r (NOT TRANSLATED IN :deDE YET)
    .accept 818 >>Akzeptiert die Quest Ein geistvolles Getränk
    .target Master Vornal
step << BloodElf/Undead
    #loop
    .goto Durotar,59.64,73.84,0
    .goto Durotar,59.64,73.84,60,0
    .goto Durotar,58.11,77.30,60,0
    .goto Durotar,57.27,79.38,60,0
    .goto Durotar,55.66,80.47,60,0
    .goto Durotar,53.8,83.14,60,0
    >>Tötet |cRXP_ENEMY_Zwergbrandungskriecher|r und |cRXP_ENEMY_Brandungskriecher|r. Plündert sie für |cRXP_LOOT_Kriechersekret|r
    >>Tötet |cRXP_ENEMY_Makruramuschelhaut|r und |cRXP_ENEMY_Makruraklacker|r. Plündert sie für ihre |cRXP_LOOT_Augen|r
    .complete 818,2 --Crawler Mucus (8)
    .mob +Pygmy Surf Crawler
    .mob +Surf Crawler
    .complete 818,1 --Intact Makrura Eye (4)
    .mob +Makrura Shellhide
    .mob +Makrura Clacker
    .isOnQuest 818
step << BloodElf/Undead
    .goto Durotar,55.94,74.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Vornal|r
    >>|cRXP_WARN_Skip this step if you do not wish to get it|r (NOT TRANSLATED IN :deDE YET)
    .turnin 818 >>Gebt die Quest Ein geistvolles Getränk ab
    .target Master Vornal
    .isQuestComplete 818
step << BloodElf/Undead
    #completewith next
    .goto The Barrens,62.26,19.38,40 >> Reist zur Fernwacht
    .zoneskip The Barrens
step << BloodElf/Undead
    .goto The Barrens,62.27,19.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kargal|r
    .turnin 840 >>Gebt die Quest Freiwilliger der Horde ab
    .accept 842 >>Akzeptiert die Quest Crossroads-Wehrpflicht
    .target Kargal Battlescar
step << BloodElf/Undead
    #completewith CrossRoads1
    .subzone 380 >>Lauf nach Das Wegekreuz
step
    .goto The Barrens,51.93,30.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gazrog|r
    .accept 869 >>Akzeptiert die Quest Raptordiebe
    .target Gazrog
step
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Helbrim|r
    .accept 1492 >>Werftmeister Flunkerblick annehmen
    .accept 848 >>Akzeptiert die Quest Pilzsporen
    .target Apothecary Helbrim
step
    .goto The Barrens,51.50,30.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thork|r
    .accept 871 >>Akzeptiert die Quest Vereitelung der Angriffe
    .accept 5041 >>Akzeptiert die Quest Vorräte für Crossroads
    .target Thork
step
    .goto The Barrens,52.26,31.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tonga|r
    .accept 870 >>Akzeptiert die Quest Die Vergessenen Teiche
    .target Tonga Runetotem
step << Undead/BloodElf
    .goto The Barrens,52.24,31.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sergra|r
    .turnin 842 >>Gebt die Quest Wegekreuz-Wehrpflicht ab
    .accept 844 >>Akzeptiert die Quest Ebenenschreiter-Bedrohung
    .target Sergra Darkthorn
step
    #label CrossRoads1
    .goto The Barrens,51.93,30.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gazrog|r
    .accept 869 >>Akzeptiert die Quest Raptordiebe
    .target Gazrog
step << Orc/Troll
    .goto The Barrens,52.62,29.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Zargh|r
    .turnin 6386 >> Kehrt zum Wegekreuz zurück
    .target Zargh
step
    #completewith DisruptTheAttacks
    >>Tötet |cRXP_ENEMY_Ebenenschreiter|r. Plündert sie für |cRXP_LOOT_Ebenenschreiter-Schnabel|r
    .complete 844,1 --Plainstrider Beak (7)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
step
    #optional
    #completewith next
    >>Tötet |cRXP_ENEMY_Wassersucher|r, |cRXP_ENEMY_Dornenwirker|r und |cRXP_ENEMY_Jäger|r
    .complete 871,1 --Razormane Water Seeker (8)
    .mob +Razormane Water Seeker
    .complete 871,2 --Razormane Thornweaver (8)
    .mob +Razormane Thornweaver
    .complete 871,3 --Razormane Hunter (3)
    .mob +Razormane Hunter
step
    .goto The Barrens,55.70,27.30
    .use 4926 >> Plündert |cRXP_PICK_Chens leeres Fässchen|r vom Boden und startet die Quest
    >>|cRXP_WARN_Falls es nicht da ist, werdet ihr es später bekommen|r
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >> Akzeptiert die Quest Chens leeres Fässchen
step << Shaman
    #sticky
    #label FireTar2
    .goto The Barrens,54.97,25.23,50,0
    .goto The Barrens,54.2,24.60,50,0
    .goto The Barrens,53.57,25.51
    >>Tötet einen |cRXP_ENEMY_Wassersucher der Grimmhauer|r oder |cRXP_ENEMY_Dornenwirker der Grimmhauer|r. Plündert sie für |cRXP_LOOT_Feuerteer|r
    .complete 1525,1 --Fire Tar (1)
    .mob Razormane Water Seeker
    .mob Razormane Thornweaver
step
    #label DisruptTheAttacks
	.goto The Barrens,53.63,24.50,25,0
	.goto The Barrens,54.26,24.64,25,0
	.goto The Barrens,54.81,25.19,25,0
	.goto The Barrens,55.50,25.61,25,0
	.goto The Barrens,55.86,26.30,25,0
	.goto The Barrens,55.83,27.15,25,0
	.goto The Barrens,55.41,27.41,25,0
	.goto The Barrens,54.50,26.97,25,0
	.goto The Barrens,54.05,26.11,25,0
	.goto The Barrens,53.51,25.24,25,0
	.goto The Barrens,53.63,24.50,25,0
    >>Tötet |cRXP_ENEMY_Wassersucher|r, |cRXP_ENEMY_Dornenwirker|r und |cRXP_ENEMY_Jäger|r
    .complete 871,1 --Razormane Water Seeker (8)
    .mob +Razormane Water Seeker
    .complete 871,2 --Razormane Thornweaver (8)
    .mob +Razormane Thornweaver
    .complete 871,3 --Razormane Hunter (3)
    .mob +Razormane Hunter
step
    #optional
    #completewith next
    >>Tötet jeden |cRXP_ENEMY_Raptor|r, den ihr seht. Plündert sie für ihren |cRXP_LOOT_Kopf|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
step
    #label PlainstriderBeaks
    #loop
    .goto The Barrens,53.71,29.19,0
    .goto The Barrens,53.36,26.28,80,0
    .goto The Barrens,53.23,28.41,80,0
    .goto The Barrens,53.57,29.58,80,0
    .goto The Barrens,52.91,32.90,80,0
    .goto The Barrens,51.31,32.91,80,0
    .goto The Barrens,50.50,31.05,80,0
    .goto The Barrens,50.05,29.77,80,0
    .goto The Barrens,50.93,27.72,80,0
    .goto The Barrens,52.83,27.91,80,0
    .goto The Barrens,53.71,29.19,80,0
    >>Tötet |cRXP_ENEMY_Ebenenschreiter|r. Plündert sie für |cRXP_LOOT_Ebenenschreiter-Schnabel|r
    .complete 844,1 --Plainstrider Beak (7)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
step
    .goto The Barrens,52.24,31.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sergra|r
    .turnin 844 >>Gebt die Quest Ebenenschreiter-Bedrohung ab
    .accept 845 >>Akzeptiert die Quest Die Zhevras
    .target Sergra Darkthorn
step
    .goto The Barrens,51.50,30.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thork|r
    .turnin 871 >>Gebt die Quest Vereitelung der Angriffe ab
    .accept 872 >>Akzeptiert die Quest Das Ende der Unterbrechungen
    .target Thork
step
    .goto The Barrens,55.70,27.30,20,0
    .goto The Barrens,55.78,20.00
    .use 4926 >> Plündert |cRXP_PICK_Chens leeres Fässchen|r vom Boden und startet die Quest
    >>|cRXP_WARN_Wartet auf den Respawn, falls es noch nicht da ist|r
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >> Akzeptiert die Quest Chens leeres Fässchen
step
    #optional
    #completewith KreenigSnarlsnout
    .goto The Barrens,56.75,24.69,50,0
    .goto The Barrens,59.26,24.67,50,0
    >>Tötet |cRXP_ENEMY_Geomant der Grimmhauer|r und |cRXP_ENEMY_Verteidiger der Grimmhauer|r
    .complete 872,1 --Razormane Geomancer (8)
    .mob +Razormane Geomancer
    .complete 872,2 --Razormane Defender (8)
    .mob +Razormane Defender
step
    #optional
    #completewith next
    >>Plündert die |cRXP_PICK_Vorratskisten von Crossroads|r
    >>|cRXP_WARN_Es hat mehrere Spawnpunkte|r
    .complete 5041,1 --Crossroads' Supply Crates (1)
step
    #label KreenigSnarlsnout
    .goto The Barrens,58.69,27.08
    >>Tötet |cRXP_ENEMY_Kreenig Grantelschnauze|r. Plündert ihn für |cRXP_LOOT_Kreenig Grantelschnauzes Hauer|r
    .complete 872,3 --Kreenig Snarlsnout's Tusk (1)
    .mob Kreenig Snarlsnout
step
    #optional
    #completewith next
    .goto The Barrens,56.75,24.69,0
    .goto The Barrens,59.26,24.67,0
    >>Tötet |cRXP_ENEMY_Geomant der Grimmhauer|r und |cRXP_ENEMY_Verteidiger der Grimmhauer|r
    .complete 872,1 --Razormane Geomancer (8)
    .mob +Razormane Geomancer
    .complete 872,2 --Razormane Defender (8)
    .mob +Razormane Defender
step
    #loop
    .goto The Barrens,58.38,27.01,30,0
    .goto The Barrens,59.46,24.58,30,0
    .goto The Barrens,58.38,27.01,0
    .goto The Barrens,59.46,24.58,0
    >>Plündert die |cRXP_PICK_Vorratskisten von Crossroads|r
    >>|cRXP_WARN_Es hat mehrere Spawnpunkte|r
    .complete 5041,1 --Crossroads' Supply Crates (1)
step
    #loop
	.goto The Barrens,58.90,25.37,0
	.goto The Barrens,59.37,25.38,50,0
	.goto The Barrens,59.63,24.46,50,0
	.goto The Barrens,59.63,23.88,50,0
	.goto The Barrens,59.06,23.89,50,0
	.goto The Barrens,58.62,23.98,50,0
	.goto The Barrens,57.83,24.28,50,0
	.goto The Barrens,56.87,24.55,50,0
	.goto The Barrens,56.74,25.37,50,0
	.goto The Barrens,57.25,25.46,50,0
	.goto The Barrens,57.52,25.63,50,0
	.goto The Barrens,57.65,25.08,50,0
	.goto The Barrens,58.24,24.98,50,0
	.goto The Barrens,58.90,25.37,50,0
    >>Tötet |cRXP_ENEMY_Geomant der Grimmhauer|r und |cRXP_ENEMY_Verteidiger der Grimmhauer|r
    .complete 872,1 --Razormane Geomancer (8)
    .mob +Razormane Geomancer
    .complete 872,2 --Razormane Defender (8)
    .mob +Razormane Defender
step << Shaman
    #optional
    #completewith ShamanDurotar
    >>Tötet jeden |cRXP_ENEMY_Raptor|r, den ihr seht. Plündert sie für ihren |cRXP_LOOT_Kopf|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
step << Shaman
    #optional
    #completewith ShamanDurotar
    >>Tötet jedes |cRXP_ENEMY_Zhevra|r, das ihr seht. Plündert sie für ihre |cRXP_LOOT_Hufe|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob Zhevra Runner
step << Tauren Shaman
    .goto The Barrens,62.27,19.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kargal|r
    .turnin 840 >>Gebt die Quest Freiwilliger der Horde ab
    .accept 842 >>Akzeptiert die Quest Crossroads-Wehrpflicht
step << Shaman
    #completewith CallofFire3
    #label ShamanDurotar
    .goto Durotar,36.74,57.78
    .zone Durotar >> Reisen Richtung Durotar
    .isOnQuest 1525
step << Shaman
    #requires ShamanDurotar
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
    .goto Durotar,39.16,58.56,10 >> Reist den Weg den Berg hinauf zu |cRXP_FRIENDLY_Telf|r
step << Shaman
    #label CallofFire3
    #requires ShamanDurotar
    .goto Durotar,38.52,58.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Telf|r
    .turnin 1525 >>Gebt die Quest Ruf des Feuers ab
    .accept 1526 >>Akzeptiert die Quest Ruf des Feuers
    .target Telf Joolam
step << Shaman
    #completewith next
    .goto Durotar,38.18,58.58
    .cast 8898 >>|cRXP_WARN_Benutzt das|r |T134732:0|t[Feuersapta]
    .use 6636
step << Shaman
    .goto Durotar,38.96,58.22
    >>Tötet die |cRXP_ENEMY_Schwache Feuermanifestation|r. Plündert sie für eine |cRXP_LOOT_Leuchtendes Holzscheit|r
    .complete 1526,1 --Glowing Ember (1)
    .mob Minor Manifestation of Fire
step << Shaman
    .goto Durotar,38.96,58.22
    >>Klickt die |cRXP_PICK_Kohlenpfanne|r auf dem Boden
    .turnin 1526 >>Gebt die Quest Ruf des Feuers ab
    .accept 1527 >>Akzeptiert die Quest Ruf des Feuers
step << Shaman
    #optional
    #completewith FireEnd
    >>Tötet jeden |cRXP_ENEMY_Raptor|r, den ihr seht. Plündert sie für ihren |cRXP_LOOT_Kopf|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
step << Shaman
    #optional
    #completewith next
    >>Tötet jedes |cRXP_ENEMY_Zhevra|r, das ihr seht. Plündert sie für ihre |cRXP_LOOT_Hufe|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob Zhevra Runner
    .dungeon RFC
step << Shaman
    #label FireEnd
    .goto The Barrens,55.86,19.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kranal|r
    .turnin 1527 >>Gebt die Quest Ruf des Feuers ab
    .target Kranal Fiss
step << Shaman
    .goto The Barrens,55.78,20.00
    .use 4926 >> Plündert |cRXP_PICK_Chens leeres Fässchen|r vom Boden und startet die Quest
    >>|cRXP_WARN_Wartet auf den Respawn, falls es noch nicht da ist|r
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >> Akzeptiert die Quest Chens leeres Fässchen
step
    #optional
    #completewith next
    .goto The Barrens,63.89,31.66,100,0
    >>Tötet |cRXP_ENEMY_Zhevra-Läufer|r. Plündert sie für ihre |cRXP_LOOT_Hufe|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob Zhevra Runner
step << Tauren
    .goto The Barrens,62.27,19.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kargal|r
    .turnin 840 >>Gebt die Quest Freiwilliger der Horde ab
    .accept 842 >>Akzeptiert die Quest Crossroads-Wehrpflicht
step
    #label RatchetEnter
    .goto The Barrens,62.68,36.23
    .subzone 392 >> Reist nach Ratschet
    .isOnQuest 845
step
    .goto The Barrens,62.68,36.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gazlowe|r
    .accept 887 >>Akzeptiert die Quest Südmeerfreibeuter
    .target Gazlowe
step
    #completewith next
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Bragok|r
    .fp Ratchet >> Erlernt die Flugroute nach Ratschet
    .target Bragok
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sputtervalve|r und dem |cRXP_FRIENDLY_Gesucht Plakat|r
    .accept 894 >>Akzeptiert die Quest Samophlang
    .goto The Barrens,62.98,37.22
    .accept 895 >>Akzeptiert die Quest GESUCHT: Baron Küstenschipper
    .goto The Barrens,62.59,37.47
    .target Sputtervalve
step << Undead Warrior
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Kauft|r |T135353:0|t[Espandon] |cRXP_BUY_von ihm|r
    .collect 2024,1,895,1 --Collect Espadon (1)
    .money <0.6397
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
step << Undead Warrior
    #optional
    #completewith BaronLongshore
    +|cRXP_WARN_Legt den|r |T135353:0|t[Espandon] |cRXP_WARN_an, wenn ihr auf Stufe 16 seid.|r
    .use 2024
    .itemcount 2024,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .xp >16,1
step << Undead Warrior
    #optional
    #completewith BaronLongshore
    +|cRXP_WARN_Legt das|r |T135353:0|t[Espandon] an
    .use 2024
    .itemcount 2024,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .xp <16,1
step << Troll Warrior
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Kauft einen|r |T135147:0|t[Knorriger Stab] |cRXP_BUY_von ihm|r
    .collect 2030,1,850,1 --Collect Gnarled Staff (1)
    .money <0.5544
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Troll Warrior
    #optional
    #completewith BaronLongshore
    +|cRXP_WARN_Legt den|r |T135147:0|t[Knorriger Stab] an
    .use 2030
    .itemcount 2030,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Orc Warrior
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Kauft|r |T132394:0|t[Hakenaxt] |cRXP_BUY_von ihm|r
    .collect 2025,1,850,1 --Collect Bearded Axe (1)
    .money <0.5304
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << Orc Warrior
    #optional
    #completewith BaronLongshore
    +|cRXP_WARN_Legt die|r |T132394:0|t[Hakenaxt] an
    .use 2025
    .itemcount 2025,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << Tauren Warrior
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Kauft einen|r |T133046:0|t[Felshammer] |cRXP_BUY_von ihm|r
    .collect 2026,1,850,1 --Collect Rock Hammer (1)
    .money <0.6286
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
step << Tauren Warrior
    #optional
    #completewith BaronLongshore
    +|cRXP_WARN_Legt den|r |T133046:0|t[Felshammer] an |cRXP_WARN_, wenn ihr Stufe 16 seid|r
    .use 2026
    .itemcount 2026,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .xp >16,1
step << Tauren Warrior
    #optional
    #completewith BaronLongshore
    +|cRXP_WARN_Legt den|r |T133046:0|t[Felshammer] an
    .use 2026
    .itemcount 2026,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .xp <16,1
step << Shaman
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Kauft einen|r |T135147:0|t[Knorriger Stab] |cRXP_BUY_von ihm|r
    .collect 2030,1,895,1 --Collect Gnarled Staff (1)
    .money <0.5544
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Shaman
    #optional
    #completewith BaronLongshore
    +|cRXP_WARN_Legt den|r |T135147:0|t[Knorriger Stab] an
    .use 2030
    .itemcount 2030,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Rogue
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Kauft ein|r |T135343:0|t[Krummsäbel] |cRXP_BUY_von ihm|r
    .collect 2027,1,895,1 --Collect Scimitar (1)
    .money <0.3815
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
    .target Ironzar
step << Rogue
    #optional
    #completewith BaronLongshore
    +|cRXP_WARN_Legt den|r |T135343:0|t[Krummsäbel] an
    .use 2027
    .itemcount 2027,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
step << Rogue
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Kauft einen zweiten|r |T135343:0|t[Krummsäbel] |cRXP_BUY_von ihm für die Nebenhand von Euch|r
    .collect 2027,2,895,1 --Collect Scimitar(1)
    .money <0.3815
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
    .target Ironzar
step << skip
    #optional
    #completewith BaronLongshore
    +|cRXP_WARN_Legt den zweiten|r |T135343:0|t[Krummsäbel] |cRXP_WARN_in eure Nebenhand an|r
    .use 2027
    .itemcount 2027,1
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
step
    .goto The Barrens,62.27,38.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Drohn|r
    .turnin 819 >>Gebt die Quest Chens leeres Fässchen ab
    .accept 821 >>Akzeptiert die Quest Chens leeres Fässchen
    .target Brewmaster Drohn
step
    .goto The Barrens,62.05,39.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gastwirt Wiley|r
    >>|cRXP_BUY_Kauft|r |T133918:0|t[Roher Langzahniger Matschschnapper] |cRXP_BUY_bei ihm|r
    >>|cRXP_BUY_Kauft|r |T132796:0|t[Melonensaft] |cRXP_BUY_von ihm|r << Mage/Warlock/Priest/Shaman/Druid/Paladin
    >>|T133918:0|t[Langzahniger Matschschnapper] |cRXP_WARN_sind extrem billig, kauft so viele, wie ihr wollt|r
    .home >>Setzt euren Ruhestein in Ratschet << !BloodElf !Undead
    .vendor >> Verkauft Müll
    .collect 4592,20,895,1 --Longjaw Mud Snapper (20)
    .collect 1205,10,895,1 << Mage/Warlock/Priest/Shaman/Druid/Paladin --Melon Juice (10)
    .target Innkeeper Wiley
    .bindlocation 392 << !BloodElf !Undead
    .isOnQuest 887
step
    #completewith BaronLongshore
    .destroy 5088 >> |cRXP_WARN_Entfernt die|r |T133735:0|t[Steuerkonsolen-Bedienungsanleitung] |cRXP_WARN_aus euren Taschen, da sie nicht mehr benötigt wird|r
step
    #optional
    #completewith BaronLongshore
    >>Tötet |cRXP_ENEMY_Brigant der Südmeerfreibeuter|r und |cRXP_ENEMY_Kanonier der Südmeerfreibeuter|r
    .complete 887,1 --Southsea Brigand (12)
    .mob +Southsea Brigand
    .complete 887,2 --Southsea Cannoneer (6)
    .mob +Southsea Cannoneer
step << skip --Orc Rogue/Troll Rogue
    #optional
	#completewith SouthSea
	>>Tötet |cRXP_ENEMY_Tazan|r. Plündert ihn für |cRXP_LOOT_Tazans Ranzen|r
    >>|cRXP_WARN_Er patrouilliert auf dem Hügel auf und ab|r
	.complete 1963,1 --Tazan's Satchel (1)
    .unitscan Tazan
step
    #label BaronLongshore
    #loop
    .goto The Barrens,64.21,47.14,0
    .goto The Barrens,63.57,49.14,0
    .goto The Barrens,62.64,49.72,0
    .goto The Barrens,64.21,47.14,50,0
    .goto The Barrens,63.57,49.14,50,0
    .goto The Barrens,62.64,49.72,50,0
    >>Tötet |cRXP_ENEMY_Baron Küstenschipper|r. Plündert ihn für seinen |cRXP_LOOT_Kopf|r
    >>|cRXP_WARN_Er befindet sich in einem der Lager|r
    .complete 895,1 --Baron Longshore's Head (1)
    .unitscan Baron Longshore
step
    #label SouthSea
    #loop
    .goto The Barrens,64.23,47.10,0
    .goto The Barrens,64.40,44.09,50,0
    .goto The Barrens,63.62,46.26,50,0
    .goto The Barrens,64.23,47.10,50,0
    >>Tötet |cRXP_ENEMY_Brigant der Südmeerfreibeuter|r und |cRXP_ENEMY_Kanonier der Südmeerfreibeuter|r
    .complete 887,1 --Southsea Brigand (12)
    .mob +Southsea Brigand
    .complete 887,2 --Southsea Cannoneer (6)
    .mob +Southsea Cannoneer
step << skip --Orc Rogue/Troll Rogue
    .goto The Barrens,63.70,44.32,50,0
    .goto The Barrens,62.70,44.07,50,0
    .goto The Barrens,62.18,44.47
	>>Tötet |cRXP_ENEMY_Tazan|r. Plündert ihn für |cRXP_LOOT_Tazans Ranzen|r
    >>|cRXP_WARN_Er patrouilliert auf dem Hügel auf und ab|r
	.complete 1963,1 --Tazan's Satchel (1)
    .unitscan Tazan
step
    .goto The Barrens,62.68,36.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gazlowe|r
    .turnin 887 >>Gebt die Quest Südmeerfreibeuter ab
    .turnin 895 >>Gebt die Quest GESUCHT: Baron Küstenschipper ab
    .accept 890 >>Akzeptiert die Quest Die verloren gegangene Lieferung
    .target Gazlowe
step
    .goto The Barrens,63.35,38.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dizzywig|r
    .turnin 1492 >>Gebt die Quest Werftmeister Dizzywig ab
    .turnin 890 >>Gebt die Quest Die verloren gegangene Lieferung ab
    .accept 892 >>Akzeptiert die Quest Die verloren gegangene Lieferung
    .target Wharfmaster Dizzywig
step
    .goto The Barrens,62.68,36.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gazlowe|r
    .turnin 892 >>Gebt die Quest Die verloren gegangene Lieferung ab
    --.accept 888 >>Accept Stolen Booty
    .target Gazlowe
step << Undead Warrior
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Kauft|r |T135353:0|t[Espandon] |cRXP_BUY_von ihm|r
    .collect 2024,1,850,1 --Collect Espadon (1)
    .money <0.6397
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
step << Undead Warrior
    #optional
    #completewith FlyToXroads1
    +|cRXP_WARN_Legt den|r |T135353:0|t[Espandon] |cRXP_WARN_an, wenn ihr auf Stufe 16 seid.|r
    .use 2024
    .itemcount 2024,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .xp >16,1
step << Undead Warrior
    #optional
    #completewith FlyToXroads1
    +|cRXP_WARN_Legt das|r |T135353:0|t[Espandon] an
    .use 2024
    .itemcount 2024,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .xp <16,1
step << Troll Warrior
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Kauft einen|r |T135147:0|t[Knorriger Stab] |cRXP_BUY_von ihm|r
    .collect 2030,1,850,1 --Collect Gnarled Staff (1)
    .money <0.5544
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Troll Warrior
    #optional
    #completewith FlyToXroads1
    +|cRXP_WARN_Legt den|r |T135147:0|t[Knorriger Stab] an
    .use 2030
    .itemcount 2030,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Orc Warrior
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Kauft|r |T132394:0|t[Hakenaxt] |cRXP_BUY_von ihm|r
    .collect 2025,1,850,1 --Collect Bearded Axe (1)
    .money <0.5304
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << Orc Warrior
    #optional
    #completewith FlyToXroads1
    +|cRXP_WARN_Legt die|r |T132394:0|t[Hakenaxt] an
    .use 2025
    .itemcount 2025,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << Tauren Warrior
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Kauft einen|r |T133046:0|t[Felshammer] |cRXP_BUY_von ihm|r
    .collect 2026,1,850,1 --Collect Rock Hammer (1)
    .money <0.6286
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
step << Tauren Warrior
    #optional
    #completewith FlyToXroads1
    +|cRXP_WARN_Legt den|r |T133046:0|t[Felshammer] an |cRXP_WARN_, wenn ihr Stufe 16 seid|r
    .use 2026
    .itemcount 2026,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .xp >16,1
step << Tauren Warrior
    #optional
    #completewith FlyToXroads1
    +|cRXP_WARN_Legt den|r |T133046:0|t[Felshammer] an
    .use 2026
    .itemcount 2026,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .xp <16,1
step << Shaman
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Kauft einen|r |T135147:0|t[Knorriger Stab] |cRXP_BUY_von ihm|r
    .collect 2030,1,850,1 --Collect Gnarled Staff (1)
    .money <0.5544
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Shaman
    #optional
    #completewith BaronLongshore
    +|cRXP_WARN_Legt den|r |T135147:0|t[Knorriger Stab] an
    .use 2030
    .itemcount 2030,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Rogue
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Kauft ein|r |T135343:0|t[Krummsäbel] |cRXP_BUY_von ihm|r
    .collect 2027,1,850,1 --Collect Scimitar (1)
    .money <0.3815
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
    .target Ironzar
step << Rogue
    #optional
    #completewith FlyToXroads1
    +|cRXP_WARN_Legt den|r |T135343:0|t[Krummsäbel] an
    .use 2027
    .itemcount 2027,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
step << Rogue
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Kauft einen zweiten|r |T135343:0|t[Krummsäbel] |cRXP_BUY_von ihm für die Nebenhand von Euch|r
    .collect 2027,2,850,1 --Collect Scimitar (1)
    .money <0.3815
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
    .target Ironzar
step << skip
    #optional
    #completewith FlyToXroads1
    +|cRXP_WARN_Legt den|r |T135343:0|t[Krummsäbel] an
    .use 2027
    .itemcount 2027,1
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
step
    #label FlyToXroads1
    #completewith XroadsTurnins3
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Bragok|r
    .fly Crossroads >> Fliege nach Das Wegekreuz
    .target Bragok
    .subzoneskip 380
    .isQuestComplete 845
step
    #completewith next
    >>Tötet jeden |cRXP_ENEMY_Raptor|r, den ihr seht. Plündert sie für ihren |cRXP_LOOT_Kopf|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
step
    #loop
    .goto The Barrens,55.27,37.82,0
    .goto The Barrens,48.33,36.75,0
    .goto The Barrens,55.27,37.82,80,0
    .goto The Barrens,53.84,38.52,80,0
    .goto The Barrens,52.63,38.07,80,0
    .goto The Barrens,49.49,37.20,80,0
    .goto The Barrens,48.33,36.75,80,0
    >>Beenden das töten von |cRXP_ENEMY_Zhevras|r. Plündert sie für ihre |cRXP_LOOT_Hufe|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob Zhevra Runner
step
    #label XroadsTurnins3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thork|r und |cRXP_FRIENDLY_Sergra|r
    .turnin 5041 >>Gebt die Quest Vorräte für Crossroads ab
    .turnin 872 >>Gebt die Quest Das Ende der Unterbrechungen ab
    .target +Thork
    .goto The Barrens,51.50,30.87
    .turnin 845 >>Gebt die Quest Die Zhevras ab
    .turnin 842 >>Gebt die Quest Wegekreuz-Wehrpflicht ab << Tauren
    .accept 903 >>Akzeptiert die Quest Streuner des Brachlandes
    .target +Sergra Darkthorn
    .goto The Barrens,52.23,31.00
step << Hunter
    .goto The Barrens,51.67,29.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Barg|r
    .vendor >>|cRXP_BUY_Buy|r |T132382:0|t[Sharp Arrows] |cRXP_BUY_oder|r |T132384:0|t[Heavy Shots] |cRXP_BUY_from him|r
    .target Barg
step
    #completewith RegtharDeathgate1
    >>Tötet |cRXP_ENEMY_Ebenenschreiter|r. Plündert sie für ihre |cRXP_LOOT_Nieren|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .maxlevel 16
step
    #completewith next
    >>Tötet jeden |cRXP_ENEMY_Raptor|r, den ihr seht. Plündert sie für ihren |cRXP_LOOT_Kopf|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
step
    #label RegtharDeathgate1
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Regthar|r
    .accept 850 >>Akzeptiert die Quest Anführer der Kolkar
    .target Regthar Deathgate
step
    #completewith Barak
    >>Sammelt |cRXP_LOOT_Potenter Pilz|r um Die vergessenen Teiche herum
    .complete 848,1 --Collect Fungal Spores (x4)
step
    .goto The Barrens,45.06,22.54
    >>Taucht unter Wasser zur |cRXP_PICK_Blubbernder Felsspalt|r
    .complete 870,1 --Explore the waters of the Forgotten Pools
step
    #label Barak
    .goto The Barrens,42.82,23.52
    >>Tötet |cRXP_ENEMY_Barak Kodobann|r. Plündert ihn für seinen |cRXP_LOOT_kopf|r
    >>|cRXP_WARN_Seid vorsichtig, da die Nahkampfangriffe von |cRXP_ENEMY_Barak Kodobann|r großen Schaden anrichten und er durch einen |cRXP_ENEMY_Zänker der Kolkar|r beschützt wird. Sie können euch fesseln und aus der Ferne auf euch schießen|r
    .complete 850,1 --Kodobane's Head (1)
    .mob Barak Kodobane
step
    #completewith next
    >>Tötet jeden |cRXP_ENEMY_Raptor|r, den ihr seht. Plündert sie für ihren |cRXP_LOOT_Kopf|r
    >>|cRXP_WARN_Diese Quest muss jetzt nicht abgeschlossen werden|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
step
    #loop
    .goto The Barrens,41.62,23.42,0
    .goto The Barrens,41.62,23.42,50,0
    .goto The Barrens,41.30,24.31,50,0
    .goto The Barrens,40.52,22.88,50,0
    .goto The Barrens,41.00,21.19,50,0
    .goto The Barrens,40.32,20.69,50,0
    >>Tötet |cRXP_ENEMY_Savannenstreuner|r. Plündert sie für |cRXP_LOOT_Klauen|r und |cRXP_LOOT_Hauer|r
    .complete 903,1 --Prowler Claws (7)
    .complete 821,1 --Savannah Lion Tusk (5)
    .mob Savannah Prowler
step
    #loop
    .goto The Barrens,44.55,23.53,0
    .goto The Barrens,44.55,23.53,40,0
    .goto The Barrens,45.09,22.04,40,0
    .goto The Barrens,45.43,22.93,40,0
    .goto The Barrens,44.97,24.03,40,0
    >>Sammelt |cRXP_LOOT_Potenter Pilz|r um Die vergessenen Teiche herum
    .complete 848,1 --Collect Fungal Spores (x4)
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Regthar|r
    .turnin 850 >>Gebt die Quest Anführer der Kolkar ab
    .accept 851 >>Akzeptiert die Quest Verog der Derwisch
    .target Regthar Deathgate
step
    #completewith CrossRoads3
    .subzone 380 >> Reist zum Wegekreuz
step
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Helbrim|r
    .turnin 848 >> Gebt die Quest Pilzsporen ab
    .target Apothecary Helbrim
step
    .goto The Barrens,52.24,31.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sergra|r
    .turnin 903 >>Gebt die Quest Streuner des Brachlandes ab
    .accept 881 >>Akzeptiert die Quest Echeyakee
    .target Sergra Darkthorn
step
    #label CrossRoads3
    .goto The Barrens,52.26,31.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tonga|r
    .turnin 870 >> Gebt die Quest Die Vergessenen Teiche ab
    .accept 877 >> Akzeptiert die Quest Die Brackige Oase
    .target Tonga Runetotem
step
    .goto The Barrens,51.93,30.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gazrog|r
    .turnin 869 >>Gebt die Quest Raptordiebe ab
    .accept 3281 >>Akzeptiert die Quest Gestohlenes Silber
    .target Gazrog
    .isQuestComplete 869
step
    #completewith Samophlange
    >>Tötet |cRXP_ENEMY_Raptoren|r. Plündert sie für ihre |cRXP_LOOT_Köpfe|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
    .mob Sunscale Scytheclaw
step
    .goto The Barrens,55.80,17.03
    >>Benutzt das |T134227:0|t[Horn von Echeyakee], um |cRXP_ENEMY_Echeyakee|r zu beschwören
    >>Tötet |cRXP_ENEMY_Echeyakee|r. Plündert ihn für |cRXP_LOOT_Echeyakees Balg|r
    >>|cRXP_WARN_Falls |cRXP_ENEMY_Echeyakee|r nicht erscheint, nachdem ihr das|r |T134227:0|t[Horn von Echeyakee]|cRXP_WARN_ benutzt habt, oder ihr den tag nicht bekommen habt, als er erschien ist, überspringt diesen Schritt|r
    .complete 881,1 --Echeyakee's Hide (1)
    .mob Echeyakee
    .use 10327
step
    #optional
    .goto The Barrens,52.23,31.00
    .abandon 881 >>|cRXP_WARN_Wenn |cRXP_ENEMY_Echeyakee|r nicht gespawnt ist, nachdem ihr das|r |T134227:0|t[Horn von Echeyakee]|cRXP_WARN_ oder wenn ihr die tag nicht bekommen habt, wenn er doch gespawnt ist, brecht die Quest Echeyakee ab, kehrt dann zur Stadt zurück und nehmt sie wieder an|r
    .itemcount 5100,<1 --Echeyakee's Hide (0)
step
    .goto The Barrens,52.24,31.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sergra|r
    .accept 881 >>Akzeptiert die Quest Echeyakee
    .target Sergra Darkthorn
    .itemcount 5100,<1 --Echeyakee's Hide (0)
step
    .goto The Barrens,55.80,17.03
    >>Benutzt das |T134227:0|t[Horn von Echeyakee], um |cRXP_ENEMY_Echeyakee|r zu beschwören
    >>Tötet |cRXP_ENEMY_Echeyakee|r. Plündert ihn für |cRXP_LOOT_Echeyakees Balg|r
    .complete 881,1 --Echeyakee's Hide (1)
    .mob Echeyakee
    .use 10327
step
	#label Samophlange
    .goto The Barrens,52.40,11.65
    >>Klickt auf die |cRXP_PICK_Steuerkonsolen|r
    .turnin 894 >>Gebt die Quest Samophlang ab
    .accept 900 >>Akzeptiert die Quest Samophlang
step
    .goto The Barrens,52.33,11.57
    >>Klickt das |cRXP_PICK_Ventil|r
    >>|cRXP_WARN_Vorsicht! Zwei Mobs werden spawn, nachdem ihr das Ventil ausgeschaltet habt|r
    .complete 900,2 --Shut off Fuel Control Valve (1)
step
    .goto The Barrens,52.29,11.40
    >>Klickt das |cRXP_PICK_Ventil|r
    >>|cRXP_WARN_Ein Mob wird spawnen, nachdem ihr das Ventil ausgeschaltet habt|r
    .complete 900,3 --Shut off Regulator Valve (1)
step
    .goto The Barrens,52.40,11.40
    >>Klickt das |cRXP_PICK_Ventil|r
    .complete 900,1 --Shut off Main Control Valve (1)
step
    .goto The Barrens,52.40,11.65
    >>Klickt die |cRXP_PICK_Steuerkonsolen|r
    .turnin 900 >>Gebt die Quest Samophlang ab
    .accept 901 >>Akzeptiert die Quest Samophlang
step
    .goto The Barrens,52.84,10.40
    >>Tötet |cRXP_ENEMY_Tüftler Sniggles|r im Gebäude. Plündert ihn nach seinem |cRXP_LOOT_Konsolenschlüssel|r
    .complete 901,1 --Console Key (1)
    .mob Tinkerer Sniggles
step
    .goto The Barrens,52.40,11.65
    >>Klickt die |cRXP_PICK_Steuerkonsolen|r
    .turnin 901 >>Gebt die Quest Samophlang ab
    .accept 902 >>Akzeptiert die Quest Samophlang
step
    #optional
    #completewith next
    >>Tötet |cRXP_ENEMY_Ebenenschreiter|r. Plündert sie für ihre |cRXP_LOOT_Nieren|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrideridneys
step
    #loop
    .goto The Barrens,54.3,12.3,0
    .goto The Barrens,54.3,12.3,90,0
    .goto The Barrens,54.6,16.7,90,0
    .goto The Barrens,42.6,15.1,90,0
    >>Tötet |cRXP_ENEMY_Raptoren|r. Plündert sie für ihre |cRXP_LOOT_Köpfe|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
    .mob Sunscale Scytheclaw
step
    #sticky
    #completewith EnterRFC
    .subzone 2437 >> Jetzt solltet ihr eine Gruppe für Flammenschlund suchen
    .dungeon RFC
step << Druid
	#completewith DruidTrainB1
	.cast 18960 >> Caste Teleportieren: Moonglade
	.zoneskip Moonglade
	.xp <16,1
step << Druid
    #optional
    .goto Moonglade,52.53,40.57
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Loganaar|r
    .train 783 >> Trainiere deine Klassenfähigkeiten << wotlk
    .train 8925 >> Trainiere deine Klassenfähigkeiten << TBC
	.target Loganaar
    .cooldown item,6948,>0
	.xp <16,1
    .xp >18,1
step << Druid
    #optional
    .goto Moonglade,52.53,40.57
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Loganaar|r
    .train 8938 >> Trainiere deine Klassenfähigkeiten
	.target Loganaar
    .cooldown item,6948,>0
	.xp <18,1
    .xp >20,1
step << Druid
    #label DruidTrainB1
    .goto Moonglade,52.53,40.57
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Loganaar|r
    .train 6756 >> Trainiere deine Klassenfähigkeiten
	.target Loganaar
    .cooldown item,6948,>0
	.xp <20,1
step << !Undead !BloodElf
    #completewith SamuTurnin1
    .hs >>Ruhestein nach Ratschet
    .use 6948
    .cooldown item,6948,>0
    .bindlocation 392,1
step << !Undead !BloodElf
    #completewith SamuTurnin1
    .subzone 392 >>Reist nach Ratschet
    .cooldown item,6948,<0
step << !Undead !BloodElf
    #label SamuTurnin1
    .goto The Barrens,62.98,37.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Sputtervalve|r
    .turnin 902 >> Gebt die Quest Samophlang ab
    .accept 1483 >>Akzeptiert die Quest Ziz Fizziks
    .target Sputtervalve
step << !Undead !BloodElf
    .goto The Barrens,63.09,37.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bigglefuzz|r
    .accept 959 >>Ärger auf den Docks annehmen
    .target Crane Operator Bigglefuzz
step << !Undead !BloodElf
    .goto The Barrens,62.37,37.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Mebok|r
    .accept 865 >>Akzeptiert die Quest Raptorhörner
    .accept 1069 >>Akzeptiert die Quest Eier der Kluftmoosspinnen
    .target Mebok Mizzyrix
step << !Undead !BloodElf
    #completewith EcheyakeeTurnin
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Bragok|r
    .fly Crossroads >>Fliege nach Das Wegekreuz
    .target Bragok
    .subzoneskip 380
step << Undead/BloodElf
    #completewith EcheyakeeTurnin
    .subzone 380 >>Lauf nach Das Wegekreuz
step
    .goto The Barrens,51.93,30.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gazrog|r
    .turnin 869 >>Gebt die Quest Raptordiebe ab
    .accept 3281 >>Akzeptiert die Quest Gestohlenes Silber
    .target Gazrog
step
    #label EcheyakeeTurnin
    .goto The Barrens,52.24,31.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sergra|r
    .turnin 881 >>Gebt die Quest Echeyakee ab
    .accept 905 >>Akzeptiert die Quest Die wütenden Sensenklauen
    .target Sergra Darkthorn
step
    #completewith BarrensEnd
    .destroy 10327 >>|cRXP_WARN_Zerstört|r |T134227:0|t[Horn von Echeyakee] |cRXP_WARN_, da ihr es nicht mehr braucht|r
step << Undead/BloodElf
    #completewith SamuTurnin2
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Devrak|r
    .fly Ratchet >>Fliege nach Ratschet
    .target Devrak
    .subzoneskip 392
step << Undead/BloodElf
    .goto The Barrens,62.98,37.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Sputtervalve|r
    .turnin 902 >> Gebt die Quest Samophlang ab
    .accept 1483 >> Akzeptiert die Quest Ziz Fizziks
    .target Sputtervalve
step << Undead/BloodElf
    .goto The Barrens,63.09,37.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bigglefuzz|r
    .accept 959 >>Ärger auf den Docks annehmen
    .target Crane Operator Bigglefuzz
step << Undead/BloodElf
    .goto The Barrens,63.09,37.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bigglefuzz|r
    .accept 959 >>Ärger auf den Docks annehmen
    .target Crane Operator Bigglefuzz
step << Undead/BloodElf
    #label SamuTurnin2
    .goto The Barrens,62.37,37.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Mebok|r
    .accept 865 >>Akzeptiert die Quest Raptorhörner
    .accept 1069 >>Akzeptiert die Quest Eier der Kluftmoosspinnen
    .target Mebok Mizzyrix
step << !BloodElf/Undead
    #completewith BarrensEnd
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Devrak|r
    .fly Orgrimmar >> Fliege nach Orgrimmar
    .zoneskip Orgrimmar
    .target Devrak
step << Undead/BloodElf
    #completewith BarrensEnd
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Bragok|r
    .fly Orgrimmar >> Fliege nach Orgrimmar
    .target Bragok
    .zoneskip Orgrimmar
step
    #completewith next
    .skill firstaid,40 >> |cRXP_WARN_Stellt|r |T133685:0|t[Leinenverband] |cRXP_WARN_bis euer skill auf 40 oder higher ist her|r
    .skill firstaid,<1,1
step
    .goto Orgrimmar,34.18,84.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit|r |cRXP_FRIENDLY_Arnok|r
    >>|cRXP_WARN_Überspringt diesen Schritt, wenn ihr nicht genug|r |T132889:0|t[Leinenstoff] |cRXP_WARN_hattet, um Skill 40 zu erreichen|r
    .train 3276 >> Erlernt |T133688:0|t[Schwerer Leinenverband]
    .target Arnok
    .skill firstaid,<1,1
step
    #completewith next
    .skill firstaid,50 >> |cRXP_WARN_Stellt|r |T133688:0|t[Schwerer Leinenverband] |cRXP_WARN_bis euer skill auf 50 oder higher ist her|r
    .skill firstaid,<1,1
step
    .goto Orgrimmar,34.18,84.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit|r |cRXP_FRIENDLY_Arnok|r
    >>|cRXP_WARN_Überspringt diesen Schritt, wenn ihr nicht genug|r |T132889:0|t[Leinenstoff] |cRXP_WARN_hattet, um Skill 50 zu erreichen|r
    .train 3274 >> Erlernt Geselle für Erste Hilfe
    .target Arnok
    .skill firstaid,<40,1
step << Priest
    #optional
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit|r |cRXP_FRIENDLY_Ur'kyo|r
    .train 8102 >> Trainiere deine Klassenfähigkeiten
    .target Ur'kyo
    .xp <16,1
    .xp >18,1
step << Priest
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit|r |cRXP_FRIENDLY_Ur'kyo|r
    .train 970 >> Trainiere deine Klassenfähigkeiten
    .target Ur'kyo
    .xp <18,1
step << Shaman
    #optional
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kardris|r
    .train 8019 >> Trainiere deine Klassenfähigkeiten
    .target Kardris Dreamseeker
    .xp <16,1
    .xp >18,1
step << Shaman
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kardris|r
    .train 913 >> Trainiere deine Klassenfähigkeiten
    .target Kardris Dreamseeker
    .xp <18,1
step << Rogue
    .goto Orgrimmar,43.05,53.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Shenthul|r
    .train 6761 >>Trainiere deine Klassenfähigkeiten
    .target Shenthul
step << skip --Rogue
    .goto Orgrimmar,43.05,53.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Shenthul|r
    .train 6761 >>Trainiere deine Klassenfähigkeiten
    .accept 2379 >>Akzeptiert die Quest Zando'Zan
    .target Shenthul
step << skip --Rogue
    .goto Orgrimmar,42.72,52.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Zando'zan|r
    .turnin 2379 >>Gebt die Quest Zando'zan ab
    .accept 2382 >>Akzeptiert die Quest Wrenix aus Ratschet
    .target Zando'zan
step << Warlock
    #optional
    .goto Orgrimmar,48.62,46.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Mirket|r
    .train 1455 >> Trainiere deine Klassenfähigkeiten
    .target Mirket
    .xp <16,1
    .xp >18,1
step << Warlock
    .goto Orgrimmar,48.62,46.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Mirket|r
    .train 1014 >> Trainiere deine Klassenfähigkeiten
    .target Mirket
    .xp <18,1
step << Warlock
    .goto Orgrimmar,47.54,46.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kurgul|r und kauft |T133738:0|t[Grimoire der Opferung]
    .collect 16351,1,896,1 --Grimoire of Sacrifice (Rank 1) (1)
    .target Kurgul
    .xp <16,1
    .xp >18,1
step << Warlock
    .goto Orgrimmar,47.54,46.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kurgul|r und kauft |T133738:0|t[Zauberfoliant des Feuerblitzes (Rang 3)]
    .collect 16316,1,896,1 --Grimoire of Firebolt (Rank 3) (1)
    .target Kurgul
    .xp <18,1
step << Warrior
    #optional
    .goto Orgrimmar,79.91,31.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Grezz|r
    .train 285 >> Trainiere deine Klassenfähigkeiten
    .target Grezz Ragefist
    .xp <16,1
    .xp >18,1
step << Warrior
    .goto Orgrimmar,79.91,31.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Grezz|r
    .train 8198 >> Trainiere deine Klassenfähigkeiten
    .target Grezz Ragefist
    .xp <18,1
step << Hunter
    #optional
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ormak|r
    .train 13795 >> Trainiere deine Klassenfähigkeiten
    .target Ormak Grimshot
    .xp <16,1
    .xp >18,1
step << Hunter
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ormak|r
    .train 2643 >> Trainiere deine Klassenfähigkeiten
    .target Ormak Grimshot
    .xp <18,1
step << Hunter
    .goto Orgrimmar,66.34,14.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Xao'tsu|r
    .train 24557 >> Erlernt eure Begleiterfähigkeiten
    .target Xao'tsu
    .xp <18,1
step << Troll Hunter/Orc Hunter/Priest
    .goto Orgrimmar,81.52,19.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Hanashi|r
    .train 227 >>Erlernt Stäbe
    .target Hanashi
    .money <0.100
step << Tauren Hunter
    .goto Orgrimmar,81.52,19.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Hanashi|r
    .train 264 >>Erlernen Bogen
    .target Hanashi
step << Troll Warrior/Tauren Warrior/Undead Warrior
    .goto Orgrimmar,81.52,19.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Hanashi|r
    .train 197 >>Erlernt Zweihandäxte
    .train 227 >>Erlernt Stäbe
    .target Hanashi
step << Hunter
    .goto Orgrimmar,81.17,18.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Zendo'jian|r|cRXP_BUY_. Kauft|r |T135490:0|t[Verstärkter Bogen] |cRXP_BUY_von ihm|r
    .collect 3026,1,3281,1 --Collect Reinforced Bow (1)
    .money <0.3588
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.4
    .target Zendo'jian
    .train 227,3
step << Hunter
    #optional
    #completewith FoodandWater2
    +Legt den |T135490:0|t[Verstärkter Bogen] |cRXP_WARN_an|r
    .use 3026
    .itemcount 3026,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.4
step
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thrall|r
    >>|cRXP_WARN_This is a prerequisite quest for Ragefire Chasm. Skip this step if you do not wish to do it|r (NOT TRANSLATED IN :deDE YET)
    .accept 5726 >>Akzeptiert die Quest Verborgene Feinde
    .target Thrall
    .dungeon RFC
step
    #completewith next
    .zone Durotar >>Verlass Orgrimmar
    .dungeon RFC
step
    .goto Durotar,53.08,9.19
    >>Tötet |cRXP_ENEMY_Burning Blade|r Gegner in  der Knochenhöhle, bis |cRXP_LOOT_Insignien des Lieutenants|r dropt
    >>|cRXP_WARN_This is a prerequisite quest for Ragefire Chasm. Skip this step if you do not wish to do it|r (NOT TRANSLATED IN :deDE YET)
    .complete 5726,1 --Lieutenant's Insignia (1)
    .isOnQuest 5726
    .dungeon RFC
step
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thrall|r
    .turnin 5726 >>Gebt die Quest Verborgene Feinde ab
    .accept 5727 >>Akzeptiert die Quest Verborgene Feinde
    .target Thrall
    .isQuestComplete 5726
    .dungeon RFC
step
    #optional
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thrall|r
    .accept 5727 >>Akzeptiert die Quest Verborgene Feinde
    .target Thrall
    .isQuestTurnedIn 5726
    .dungeon RFC
step
    .goto Orgrimmar,49.6,50.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Neeru Fireblade|r
    .accept 5761 >>Akzeptiert die Quest Vernichtung der Bestie
    .target Neeru Fireblade
    .dungeon RFC
step
    .goto Orgrimmar,49.6,50.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Neeru Fireblade|r
    .complete 5727,1 --Gauge Neeru Fireblade's reaction to you being a member of the Burning Blade
    .skipgossip
    .target Neeru Fireblade
    .isOnQuest 5727
    .dungeon RFC
step
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thrall|r
    .turnin 5727 >>Gebt die Quest Verborgene Feinde ab
    .accept 5728 >>Akzeptiert die Quest Verborgene Feinde
    .target Thrall
    .isQuestComplete 5727
    .dungeon RFC
step
    #optional
    #label OrgPickups
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thrall|r
    .accept 5728 >>Akzeptiert die Quest Verborgene Feinde
    .target Thrall
    .isQuestTurnedIn 5727
    .dungeon RFC
step
    #completewith EnterRFC
    .destroy 14544 >>|cRXP_WARN_Zerstört|r |T134417:0|tInsignien des Lieutenants] |cRXP_WARN_da ihr es nicht mehr braucht|r
    .dungeon RFC
step
    #label EnterRFC
    .goto Orgrimmar,52.77,48.97
    .subzone 2437,2 >> BETRETET Das Flammenschlund Instanzportal. Betretet die Zone
    .dungeon RFC
step
    >>|cRXP_WARN_Falls möglich, lasst Gruppenmitglieder die folgenden Quests teilen|r
    >>|cRXP_WARN_Skip this step if nobody has these quests|r (NOT TRANSLATED IN :deDE YET)
    .accept 5722 >>Akzeptiert die Quest Die Suche nach dem verloren gegangenen Ranzen
    .accept 5723 >>Akzeptiert die Quest Die Kraft des Feindes wird auf die Probe gestellt
    .dungeon RFC
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Ragefire Troggs|r und |cRXP_ENEMY_Ragefire-Schamanen|r
    .complete 5723,1 --Ragefire Trogg (8)
    .mob +Ragefire Trogg
    .complete 5723,2 --Ragefire Shaman (8)
    .mob +Ragefire Shaman
    .isOnQuest 5723
    .dungeon RFC
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Maur|r
    .turnin 5722 >>Gebt die Quest Die Suche nach dem verloren gegangenen Ranzen ab
    .accept 5724 >>Akzeptiert die Quest Wiederbeschaffung des verloren gegangenen Ranzens
    .target Maur Grimtotem
    .isOnQuest 5722
    .dungeon RFC
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Maur|r
    .accept 5724 >>Akzeptiert die Quest Wiederbeschaffung des verloren gegangenen Ranzens
    .target Maur Grimtotem
    .isQuestTurnedIn 5722
    .dungeon RFC
step
    #label TroggsShamans
    >>Tötet |cRXP_ENEMY_Ragefire Troggs|r und |cRXP_ENEMY_Ragefire-Schamanen|r
    .complete 5723,1 --Ragefire Trogg (8)
    .mob +Ragefire Trogg
    .complete 5723,2 --Ragefire Shaman (8)
    .mob +Ragefire Shaman
    .isOnQuest 5723
    .dungeon RFC
step
    #requires TroggsShamans
    #completewith BazzalanandJergosh
    >>Tötet |cRXP_ENEMY_Searingblade-Kultist|r und |cRXP_ENEMY_Searingblade-Hexenmeister|r. Plündert sie für |cRXP_LOOT_Schattenzauber|r und |cRXP_LOOT_Zauberformeln aus dem Nether|r
    .complete 5725,1 --Spells of Shadow (1)
    .complete 5725,2 --	Incantations from the Nether (1)
    .mob Searing Blade Cultist
    .mob Searing Blade Warlock
    .isOnQuest 5725
    .dungeon RFC
step
    >>Tötet |cRXP_ENEMY_Taragaman der Hungerleider|r. Plündert ihn für sein |cRXP_LOOT_Herz|r
    .complete 5761,1 -- Taragaman the Hungerer's Heart
    .mob Taragaman the Hungerer
    .isOnQuest 5761
    .dungeon RFC
step
    #label BazzalanandJergosh
    >>Tötet |cRXP_ENEMY_Bazzalan|r und |cRXP_ENEMY_Jergosh der Herbeirufer|r
    .complete 5728,1 --Bazzalan (1)
    .mob +Bazzalan
    .complete 5728,2 --Jergosh the Invoker (1)
    .mob +Jergosh the Invoker
    .isOnQuest 5728
    .dungeon RFC
step
    >>Tötet |cRXP_ENEMY_Searingblade-Kultist|r und |cRXP_ENEMY_Searingblade-Hexenmeister|r. Plündert sie für |cRXP_LOOT_Schattenzauber|r und |cRXP_LOOT_Zauberformeln aus dem Nether|r
    .complete 5725,1 --Spells of Shadow (1)
    .complete 5725,2 --	Incantations from the Nether (1)
    .mob Searing Blade Cultist
    .mob Searing Blade Warlock
    .isOnQuest 5725
    .dungeon RFC
step
    .goto Orgrimmar,49.6,50.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Neeru Fireblade|r
    .turnin 5761 >>Gebt die Quest Vernichtung der Bestie ab
    .target Neeru Fireblade
    .isQuestComplete 5761
    .dungeon RFC
step
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thrall|r
    .turnin 5728 >>Gebt die Quest Verborgene Feinde ab
    .accept 5729 >>Akzeptiert die Quest Verborgene Feinde
    .target Thrall
    .isQuestComplete 5728
    .dungeon RFC
step
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thrall|r
    .accept 5729 >>Akzeptiert die Quest Verborgene Feinde
    .target Thrall
    .isQuestTurnedIn 5728
    .dungeon RFC
step
    .goto Orgrimmar,49.6,50.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Neeru Fireblade|r
    .turnin 5729 >>Gebt die Quest Verborgene Feinde ab
    .accept 5730 >>Akzeptiert die Quest Verborgene Feinde
    .target Neeru Fireblade
    .isQuestTurnedIn 5728
    .dungeon RFC
step
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thrall|r
    .turnin 5730 >>Gebt die Quest Verborgene Feinde ab
    .target Thrall
    .isQuestTurnedIn 5728
    .dungeon RFC
step
    #optional
    #label BarrensEnd
step << Undead !Rogue/BloodElf !Rogue
    .hs >>Hearth to Tristessa
    .bindlocation 3488,1
    .subzoneskip 3488
step << BloodElf Rogue/Undead Rogue
    .hs >>Hearth to Silbermond
    .bindlocation 3487,1
    .subzoneskip 3487
step << !Undead !BloodElf
    #completewith ZeptoUC2
    .goto Durotar,45.54,12.14
    .zone Durotar >>Verlasst Orgrimmar
step << !Undead !BloodElf
    #label ZeptoUC2
    .goto Durotar,50.8,13.8,40 >>Geh auf den Zeppelin-Turm
    .zone Tirisfal Glades >>Nehmt den Zeppelin nach Tirisfal
    .zoneskip Tirisfal Glades
step << !Undead !BloodElf
    #completewith PorttoSilvermoon2
    .goto Tirisfal Glades,61.80,65.06,20,0
    .zone Undercity >> Betrete Unterstadt
    .zoneskip Undercity
step << !Undead !BloodElf
    #completewith PorttoSilvermoon
    .goto Undercity,62.0,11.3,18 >>Go up the stairs here (NOT TRANSLATED IN :deDE YET)
step << !Undead !BloodElf
    #label PorttoSilvermoon
    .goto Undercity,54.9,11.3
    .zone Silvermoon City >>Benutz the |cRXP_PICK_Translokationskugel|r
step << Rogue
    .goto Silvermoon City,79.70,52.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Zelanis|r
    >>|cRXP_WARN_Make sure you've trained|r |T136058:0|t[Pick Lock] |cRXP_WARN_for a quest later|r (NOT TRANSLATED IN :deDE YET)
    .accept 10372 >> Eine diskrete Anfrage annehmen
    .train 6761 >>Trainiere deine Klassenfähigkeiten
    .target Zelanis
    .xp <16,1
step << !BloodElf !Undead
    #completewith next
    .goto Eversong Woods,56.43,49.91
    .zone Eversong Woods >>Verlassen Silvermoon
    .zoneskip Silvermoon City,1
step << !BloodElf !Undead
    .goto Eversong Woods,54.37,50.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gloaming|r
    .fly Tranquillien >> Fliege nach Tristessa
    .target Skymistress Gloaming
    .zoneskip Ghostlands
step << BloodElf Rogue/Undead Rogue
    #completewith next
    .goto Eversong Woods,56.43,49.91
    .zone Eversong Woods >>Verlassen Silvermoon
    .zoneskip Silvermoon City,1
step << BloodElf Rogue/Undead Rogue
    .goto Eversong Woods,54.37,50.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gloaming|r
    .fly Tranquillien >> Fliege nach Tristessa
    .target Skymistress Gloaming
    .zoneskip Ghostlands

]])
