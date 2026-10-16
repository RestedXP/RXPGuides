if GetLocale() ~= "deDE" then return end
RXPGuides.RegisterGuide([[
#tbc
#version 7
#group RestedXP TBC Dungeonführer (H)
<< Horde
#name 13-18 The Barrens
#subgroup RestedXP Horde 1-30
#defaultfor Shaman
#next 18-23 Stonetalon/The Barrens

step << Tauren Shaman
    .goto Durotar,50.8,43.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Takrin|r
    .accept 840 >>Akzeptiert die Quest Freiwilliger der Horde
    .target Takrin Pathseeker
step << Tauren Shaman
    #completewith next
    .goto Durotar,54.31,39.44,30,0
    .goto Durotar,52.8,28.7,20 >> Geht in die Staubwindhöhle
step << Tauren Shaman
    #loop
    .goto Durotar,51.90,25.70,0
    .goto Durotar,53.18,29.15,20,0
    .goto Durotar,52.70,27.97,12,0
    .goto Durotar,53.05,27.87,12,0
    .goto Durotar,53.14,27.24,12,0
    .goto Durotar,52.84,26.80,12,0
    .goto Durotar,52.07,26.85,12,0
    .goto Durotar,51.90,25.70,12,0
    >>Tötet |cRXP_ENEMY_Kultisten|r. Plündert sie für |cRXP_LOOT_Reagenzienbeutel|r
    .complete 1525,2 --Reagent Pouch (1)
    .mob Burning Blade Cultist
step << Tauren Shaman
    .goto The Barrens,62.27,19.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kargal|r
    .turnin 840 >>Gebt die Quest Freiwilliger der Horde ab
    .accept 842 >>Akzeptiert die Quest Crossroads-Wehrpflicht
    .target Kargal Battlescar
step << !Tauren
    #completewith DemonMountain
    +|cRXP_WARN_The|r |T134095:0|t[Flawed Power Stone] |cRXP_WARN_has a 30 minute timer. Do not go afk until you have completed 'The Demon Seed' quest|r (NOT TRANSLATED IN :deDE YET)
    .isOnQuest 924
step << Warrior
    #completewith next
    .goto The Barrens,54.53,27.96,30,0
    .goto The Barrens,55.53,28.28,30,0
    .goto The Barrens,56.58,28.61,30 >>Reist zur Spitze des Berges
step << Warrior
    .goto The Barrens,57.23,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thun'grim|r
    .turnin 1502 >>Gebt die Quest Thun'grim Firegaze ab
    .accept 1503 >>Akzeptiert die Quest Geschmiedeter Stahl
    .target Thun'grim Firegaze
step << Warrior
    .goto The Barrens,55.05,26.65
    >>Plündert die |cRXP_PICK_Gestohlene Eisentruhe|r für ihre |cRXP_LOOT_Schmiedestahlbarren|r
    .complete 1503,1 --Forged Steel Bars (1)
step << Warrior
    #completewith next
    .goto The Barrens,54.53,27.96,30,0
    .goto The Barrens,55.53,28.28,30,0
    .goto The Barrens,56.58,28.61,30 >>Reist zur Spitze des Berges
step << Warrior
    .goto The Barrens,57.23,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thun'grim|r
    .turnin 1503 >>Gebt die Quest Geschmiedeter Stahl ab
    .target Thun'grim Firegaze
step << !Warrior !Shaman
    #hardcore
    #completewith Xroadspickups
    .subzone 380 >>Lauf nach Das Wegekreuz
step << !Warrior !Shaman
    #softcore
    #completewith Xroadspickups
    .deathskip >>Deathskip to the Crossroads (NOT TRANSLATED IN :deDE YET)
    .subzoneskip 380
step << !Warrior !Shaman
    .goto The Barrens,52.26,31.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tonga|r
    .accept 870 >>Akzeptiert die Quest Die Vergessenen Teiche
    .target Tonga Runetotem
step << !Warrior !Shaman
    #optional
    .goto The Barrens,52.24,31.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sergra|r
    .turnin 842 >>Gebt die Quest Wegekreuz-Wehrpflicht ab
    .accept 844 >>Akzeptiert die Quest Ebenenschreiter-Bedrohung
    .target Sergra Darkthorn
    .isOnQuest 842
step << !Warrior !Shaman
    .goto The Barrens,52.24,31.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sergra|r
    .accept 844 >>Akzeptiert die Quest Ebenenschreiter-Bedrohung
    .target Sergra Darkthorn
step << !Warrior !Shaman
    .goto The Barrens,51.93,30.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gazrog|r
    .accept 869 >>Akzeptiert die Quest Raptordiebe
    .target Gazrog
step << !Warrior !Shaman
    .goto The Barrens,51.50,30.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thork|r
    .accept 871 >>Akzeptiert die Quest Vereitelung der Angriffe
    .accept 5041 >>Akzeptiert die Quest Vorräte für Crossroads
    .target Thork
step << !Warrior !Shaman
    #label Xroadspickups
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Helbrim|r
    .accept 848 >>Akzeptiert die Quest Pilzsporen
    .accept 1492 >>Werftmeister Flunkerblick annehmen
    .target Apothecary Helbrim
step
    #completewith PlainstriderBeaks
    >>Tötet jeden |cRXP_ENEMY_Raptor|r, den ihr seht. Plündert sie für ihren |cRXP_LOOT_Kopf|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
step
    #completewith DisruptTheAttacks
    >>Tötet |cRXP_ENEMY_Ebenenschreiter|r. Plündert sie für |cRXP_LOOT_Ebenenschreiter-Schnabel|r
    .complete 844,1 --Plainstrider Beak (7)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
step << !Tauren
    #completewith next
    #label DemonMountain
    .goto The Barrens,51.09,22.68,40,0
    .goto The Barrens,50.33,21.85,40,0
    .goto The Barrens,49.21,20.42,40,0
    .goto The Barrens,47.65,19.21,100 >> Reist zur Spitze des Berges
    .isOnQuest 924
step << !Tauren
    #completewith next
    #requires DemonMountain
    .goto The Barrens,47.65,19.21,15 >> Geht in die Höhle des Schreckensnebels
    .isOnQuest 924
step << !Tauren
    #label DemonSeed
    .goto The Barrens,47.97,19.07
    >>Rechts-klickt den |cRXP_PICK_Altar|r
    >>|cRXP_WARN_Stellt sicher, dass ihr einen|r |T134095:0|t[Fehlerhafter Kraftstein] |cRXP_WARN_(30 Minuten Dauer) bei euch habt|r
    .collect 4986,1,924 --Collect Flawed Power Stone
    .complete 924,1 --Destroy the Demon Seed (1)
    .isOnQuest 924
step << Shaman
    #completewith DisruptTheAttacks
    >>Tötet einen |cRXP_ENEMY_Wassersucher der Grimmhauer|r oder |cRXP_ENEMY_Dornenwirker der Grimmhauer|r. Plündert sie für |cRXP_LOOT_Feuerteer|r
    .complete 1525,1 --Fire Tar (1)
    .mob Razormane Water Seeker
    .mob Razormane Thornweaver
step
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
    .use 4926 >>Plündert |cRXP_PICK_Chens leeres Fässchen|r vom Boden und startet die Quest
    >>|cRXP_WARN_Falls es nicht da ist, werdet ihr es später bekommen|r
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >>Akzeptiert die Quest Chens leeres Fässchen
step
    #label DisruptTheAttacks
    #loop
	.goto The Barrens,53.63,24.50,0
	.goto The Barrens,54.26,24.64,50,0
	.goto The Barrens,54.81,25.19,50,0
	.goto The Barrens,55.50,25.61,50,0
	.goto The Barrens,55.86,26.30,50,0
	.goto The Barrens,55.83,27.15,50,0
	.goto The Barrens,55.41,27.41,50,0
	.goto The Barrens,54.50,26.97,50,0
	.goto The Barrens,54.05,26.11,50,0
	.goto The Barrens,53.51,25.24,50,0
	.goto The Barrens,53.63,24.50,50,0
    >>Tötet |cRXP_ENEMY_Wassersucher|r, |cRXP_ENEMY_Dornenwirker|r und |cRXP_ENEMY_Jäger|r
    .complete 871,1 --Razormane Water Seeker (8)
    .mob +Razormane Water Seeker
    .complete 871,2 --Razormane Thornweaver (8)
    .mob +Razormane Thornweaver
    .complete 871,3 --Razormane Hunter (3)
    .mob +Razormane Hunter
step << Shaman
    #loop
	.goto The Barrens,53.63,24.50,0
	.goto The Barrens,54.26,24.64,50,0
	.goto The Barrens,54.81,25.19,50,0
	.goto The Barrens,55.50,25.61,50,0
	.goto The Barrens,55.86,26.30,50,0
	.goto The Barrens,55.83,27.15,50,0
	.goto The Barrens,55.41,27.41,50,0
	.goto The Barrens,54.50,26.97,50,0
	.goto The Barrens,54.05,26.11,50,0
	.goto The Barrens,53.51,25.24,50,0
	.goto The Barrens,53.63,24.50,50,0
    >>Tötet einen |cRXP_ENEMY_Wassersucher der Grimmhauer|r oder |cRXP_ENEMY_Dornenwirker der Grimmhauer|r. Plündert sie für |cRXP_LOOT_Feuerteer|r
    .complete 1525,1 --Fire Tar (1)
    .mob Razormane Water Seeker
    .mob Razormane Thornweaver
step
    #label PlainstriderBeaks
    .goto The Barrens,53.36,26.28,0
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
step << Orc/Troll
    .goto The Barrens,52.62,29.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Zargh|r
    .turnin 6386 >> Kehrt zum Wegekreuz zurück
    .target Zargh
    .isOnQuest 6386
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sergra|r und |cRXP_FRIENDLY_Thork|r
    .turnin 842 >>Gebt die Quest Wegekreuz-Wehrpflicht ab << Tauren Shaman
    .turnin 844 >>Gebt die Quest Ebenenschreiter-Bedrohung ab
    .accept 845 >>Akzeptiert die Quest Die Zhevras
    .target +Sergra Darkthorn
    .goto The Barrens,52.24,31.01
    .turnin 871 >>Gebt die Quest Vereitelung der Angriffe ab
    .accept 872 >>Akzeptiert die Quest Das Ende der Unterbrechungen
    .target +Thork
    .goto The Barrens,51.50,30.87
step
    .goto The Barrens,51.62,30.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Darsok|r
    >>|cRXP_WARN_Er ist an der Spitze des Turms|r
    .accept 867 >>Akzeptiert die Quest Räuberische Harpyien
    .target Darsok Swiftdagger
step
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Helbrim|r
    .accept 1492 >>Werftmeister Flunkerblick annehmen
    .target Apothecary Helbrim
step << !Hunter !Rogue !Warlock !Mage !Priest
    #completewith next
    .goto The Barrens,52.5,30.7,0
    .vendor >>Check if|r |cRXP_FRIENDLY_Lizzarik|r is in the Crossroads (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_WARN_He sells potions and|r |T133476:0|t[|cRXP_FRIENDLY_Heavy Spiked Mace|r] |cRXP_WARN_which is a limited supply item|r (NOT TRANSLATED IN :deDE YET)
	.unitscan Lizzarik
    .subzoneskip 380,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
step << !Tauren
    .goto The Barrens,51.99,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gastwirt Boorand|r
    .home >>Setzt euren Ruhestein im Wegekreuz
    .target Innkeeper Boorand Plainswind
    .isQuestAvailable 894
    .bindlocation 380
step
    .goto The Barrens,55.70,27.30,20,0
    .goto The Barrens,55.78,20.00
    .use 4926 >> Plündert |cRXP_PICK_Chens leeres Fässchen|r vom Boden und startet die Quest
    >>|cRXP_WARN_Wartet auf den Respawn, falls es noch nicht da ist|r
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >> Akzeptiert die Quest Chens leeres Fässchen
step
    #completewith SupplyCrates
    .goto The Barrens,56.75,24.69,50,0
    .goto The Barrens,59.26,24.67,50,0
    >>Tötet |cRXP_ENEMY_Geomant der Grimmhauer|r und |cRXP_ENEMY_Verteidiger der Grimmhauer|r
    .complete 872,1 --Razormane Geomancer (8)
    .mob +Razormane Geomancer
    .complete 872,2 --Razormane Defender (8)
    .mob +Razormane Defender
step
    #completewith next
    >>Plündert |cRXP_PICK_Versorgungskisten des Kreuzwegs|r. Es gibt mehrere Spawnpunkte
    .complete 5041,1 --Crossroads' Supply Crates (1)
step
    #label KreenigSnarlsnout
    .goto The Barrens,58.69,27.08
    >>Tötet |cRXP_ENEMY_Kreenig Grantelschnauze|r. Plündert ihn für |cRXP_LOOT_Kreenig Grantelschnauzes Hauer|r
    .complete 872,3 --Kreenig Snarlsnout's Tusk (1)
    .mob Kreenig Snarlsnout
step
    #label SupplyCrates
    .goto The Barrens,58.38,27.01,30,0
    .goto The Barrens,59.46,24.58
    >>Plündert |cRXP_PICK_Versorgungskisten des Kreuzwegs|r. Es gibt mehrere Spawnpunkte
    .complete 5041,1 --Crossroads' Supply Crates (1)
step
    #loop
	.goto The Barrens,59.37,25.38,0
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
step << !Tauren
    #optional
    #completewith next
    >>Tötet jedes |cRXP_ENEMY_Zhevra|r, das ihr seht. Plündert sie für ihre |cRXP_LOOT_Hufe|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob Zhevra Runner
    .isQuestComplete 924
step << !Tauren
    .goto The Barrens,62.34,20.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ak'Zeloth|r
    .turnin 924 >>Gebt die Quest Die Dämonensaat ab
    .target Ak'Zeloth
    .isQuestComplete 924
step << Shaman
    #completewith ShamanDurotar
    >>Tötet jeden |cRXP_ENEMY_Raptor|r, den ihr seht. Plündert sie für ihren |cRXP_LOOT_Kopf|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
step << Shaman
    #completewith ShamanDurotar
    >>Tötet jedes |cRXP_ENEMY_Zhevra|r, das ihr seht. Plündert sie für ihre |cRXP_LOOT_Hufe|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob Zhevra Runner
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
    #completewith FireEnd
    >>Tötet jeden |cRXP_ENEMY_Raptor|r, den ihr seht. Plündert sie für ihren |cRXP_LOOT_Kopf|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
step << Shaman
    #completewith next
    >>Tötet jedes |cRXP_ENEMY_Zhevra|r, das ihr seht. Plündert sie für ihre |cRXP_LOOT_Hufe|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob Zhevra Runner
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
    #completewith next
    .goto The Barrens,63.89,31.66,100,0
    >>Tötet |cRXP_ENEMY_Zhevra-Läufer|r. Plündert sie für ihre |cRXP_LOOT_Hufe|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob Zhevra Runner
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
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Bragok|r
    .fp Ratchet >> Erlernt die Flugroute nach Ratschet
    .target Bragok
    .isQuestAvailable 895
step
    .goto The Barrens,62.98,37.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Sputtervalve|r
    .accept 894 >>Akzeptiert die Quest Samophlang
    .target Sputtervalve
step
    .goto The Barrens,62.59,37.47
    >>Klickt das |cRXP_PICK_Gesucht-Plakat|r
    .accept 895 >>Akzeptiert die Quest GESUCHT: Baron Küstenschipper
step
    .goto The Barrens,62.37,37.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Mebok|r
    .accept 865 >>Akzeptiert die Quest Raptorhörner
    .target Mebok Mizzyrix
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
    +|cRXP_WARN_Equip the|r |T135353:0|t[Espadon] |cRXP_WARN_when you reach level 16|r (NOT TRANSLATED IN :deDE YET)
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
    +|cRXP_WARN_Equip the|r |T135147:0|t[Gnarled Staff] |cRXP_WARN_once you reach level 15|r (NOT TRANSLATED IN :deDE YET)
    .use 2030
    .itemcount 2030,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
    .xp >15,1
step << Troll Warrior
    #optional
    #completewith BaronLongshore
    +|cRXP_WARN_Legt den|r |T135147:0|t[Knorriger Stab] an
    .use 2030
    .itemcount 2030,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
    .xp <15,1
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
    +|cRXP_WARN_Equip the|r |T132394:0|t[Bearded Axe] |cRXP_WARN_once you reach level 15|r (NOT TRANSLATED IN :deDE YET)
    .use 2025
    .itemcount 2025,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
    .xp >15,1
step << Orc Warrior
    #optional
    #completewith BaronLongshore
    +|cRXP_WARN_Legt die|r |T132394:0|t[Hakenaxt] an
    .use 2025
    .itemcount 2025,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
    .xp <15,1
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
    +|cRXP_WARN_Equip the|r |T133046:0|t[Rock Hammer] |cRXP_WARN_when you reach level 16|r (NOT TRANSLATED IN :deDE YET)
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
    +|cRXP_WARN_Equip the|r |T135147:0|t[Gnarled Staff] |cRXP_WARN_once you reach level 15|r (NOT TRANSLATED IN :deDE YET)
    .use 2030
    .itemcount 2030,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
    .xp >15,1
step << Shaman
    #optional
    #completewith BaronLongshore
    +|cRXP_WARN_Legt den|r |T135147:0|t[Knorriger Stab] an
    .use 2030
    .itemcount 2030,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
    .xp <15,1
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
    .vendor >> Verkauft Müll
    .collect 4592,20,895,1 --Longjaw Mud Snapper (20)
    .collect 1205,10,895,1 << Mage/Warlock/Priest/Shaman/Druid/Paladin --Melon Juice (10)
    .target Innkeeper Wiley
    .isOnQuest 887
step
    #optional
    #completewith BaronLongshore
    .destroy 5088 >> |cRXP_WARN_Entfernt die|r |T133735:0|t[Steuerkonsolen-Bedienungsanleitung] |cRXP_WARN_aus euren Taschen, da sie nicht mehr benötigt wird|r
step
    #completewith BaronLongshore
    >>Tötet |cRXP_ENEMY_Brigant der Südmeerfreibeuter|r und |cRXP_ENEMY_Kanonier der Südmeerfreibeuter|r
    .complete 887,1 --Southsea Brigand (12)
    .mob +Southsea Brigand
    .complete 887,2 --Southsea Cannoneer (6)
    .mob +Southsea Cannoneer
step
    #label BaronLongshore
    #loop
    .goto The Barrens,64.21,47.14,0
    .goto The Barrens,64.21,47.14,50,0
    .goto The Barrens,63.57,49.14,50,0
    .goto The Barrens,62.64,49.72,50,0
    >>Tötet |cRXP_ENEMY_Baron Küstenschipper|r. Plündert ihn für seinen |cRXP_LOOT_Kopf|r
    >>|cRXP_WARN_Er befindet sich in einem der Lager|r
    .complete 895,1 --Baron Longshore's Head (1)
    .unitscan Baron Longshore
step
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
    .accept 896 >>Akzeptiert die Quest Des Minenarbeiters Vermögen
    .target Wharfmaster Dizzywig
step
    .goto The Barrens,62.68,36.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gazlowe|r
    .turnin 892 >>Gebt die Quest Die verloren gegangene Lieferung ab
    .accept 888 >>Akzeptiert die Quest Gestohlene Beute
    .target Gazlowe
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
    #completewith FlyToXroads1
    +|cRXP_WARN_Equip the|r |T135353:0|t[Espadon] |cRXP_WARN_when you reach level 16|r (NOT TRANSLATED IN :deDE YET)
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
    +|cRXP_WARN_Equip the|r |T135147:0|t[Gnarled Staff] |cRXP_WARN_once you reach level 15|r (NOT TRANSLATED IN :deDE YET)
    .use 2030
    .itemcount 2030,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
    .xp >15,1
step << Troll Warrior
    #optional
    #completewith FlyToXroads1
    +|cRXP_WARN_Legt den|r |T135147:0|t[Knorriger Stab] an
    .use 2030
    .itemcount 2030,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
    .xp <15,1
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
    +|cRXP_WARN_Equip the|r |T132394:0|t[Bearded Axe] |cRXP_WARN_once you reach level 15|r (NOT TRANSLATED IN :deDE YET)
    .use 2025
    .itemcount 2025,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
    .xp >15,1
step << Orc Warrior
    #optional
    #completewith FlyToXroads1
    +|cRXP_WARN_Legt die|r |T132394:0|t[Hakenaxt] an
    .use 2025
    .itemcount 2025,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
    .xp <15,1
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
    #completewith FlyToXroads1
    +|cRXP_WARN_Equip the|r |T135147:0|t[Gnarled Staff] once you reach level 15 (NOT TRANSLATED IN :deDE YET)
    .use 2030
    .itemcount 2030,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
    .xp >15,1
step << Shaman
    #optional
    #completewith FlyToXroads1
    +|cRXP_WARN_Legt den|r |T135147:0|t[Knorriger Stab] an
    .use 2030
    .itemcount 2030,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
    .xp <15,1
step << Rogue
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Eisenzar|r|cRXP_BUY_. Buy a|r |T135343:0|t[Scimitar] |cRXP_BUY_from him.|r
    .collect 923,1,850,1 --Collect Scimitar (1)
    .money <0.3815
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
    .target Ironzar
step << Rogue
    #optional
    #completewith FlyToXroads1
    +|cRXP_WARN_Legt den|r |T135343:0|t[Krummsäbel] an
    .use 923
    .itemcount 923,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
step << Rogue
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Eisenzar|r|cRXP_BUY_. Buy a second|r |T135343:0|t[Scimitar] |cRXP_BUY_from him for your off-hand.|r
    .collect 923,1,850,1 --Collect Scimitar (1)
    .money <0.3815
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
    .target Ironzar
step << Rogue
    #optional
    #completewith FlyToXroads1
    +|cRXP_WARN_Legt den|r |T135343:0|t[Krummsäbel] an
    .use 923
    .itemcount 923,1
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
step
    #label FlyToXroads1
    #completewith XroadsTurnins3
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Bragok|r
    .fly Crossroads >> Fliege nach Das Wegekreuz
    .target Bragok
    .isQuestComplete 845
    .subzoneskip 380
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
    >>Finish killing |cRXP_ENEMY_Zhevras|r.Loote them for |cRXP_LOOT_Hooves|r
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
    .accept 903 >>Akzeptiert die Quest Streuner des Brachlandes
    .target +Sergra Darkthorn
    .goto The Barrens,52.23,31.00
step
    .goto The Barrens,51.95,31.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mankrik|r
    .accept 899 >>Akzeptiert die Quest Von Hass zerfressen
    .accept 4921 >>Akzeptiert die Quest In der Schlacht vermisst
    .target Mankrik
step << Troll Hunter/Orc Hunter/BloodElf Hunter
    .goto The Barrens,51.67,29.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Barg|r
    >>|cRXP_BUY_Kauft|r |T132382:0|t[Scharfe Pfeile] |cRXP_BUY_bei ihm|r
    .collect 2515,1200,850,1 << Hunter --Sharp Arrow (1200)
    .target Barg
step << Tauren Hunter
    .goto The Barrens,51.67,29.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Barg|r
    >>|cRXP_BUY_Kauft|r |T132384:0|t[Schweres Geschoss] |cRXP_BUY_von ihm|r
    .collect 2519,1000,850,1 << Hunter --Heavy Shot (1000)
    .target Barg
step << Troll Hunter/Orc Hunter/BloodElf Hunter
    .goto The Barrens,51.11,29.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Uthrok|r
    .vendor >> |cRXP_BUY_Kauft einen|r |T135490:0|t[|cRXP_FRIENDLY_Feiner Langbogen|r] |cRXP_BUY_von ihm, falls verfügbar, und füllt eure Pfeile auf|r
    >>|cRXP_WARN_Falls er nicht verfügbar ist kauft |r |T135490:0|t[Verstärkter Bogen] |cRXP_WARN_stattdessen|r
    .collect 2515,1200,870,1 << Hunter --Sharp Arrow (1200)
    .target Uthrok
    .isOnQuest 903
step << Tauren Hunter
    .goto The Barrens,51.11,29.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Uthrok|r|cRXP_BUY_. Kauft|r |T135613:0|t[Jägerschießeisen] |cRXP_BUY_von ihm|r
    .collect 2511,1,871,1 --Collect Hunter's Boomstick (1)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
    .target Uthrok
step
    #completewith KodobaneTurnin
    >>Tötet |cRXP_ENEMY_Ebenenschreiter|r. Plündert sie für ihre |cRXP_LOOT_Nieren|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
step
    #completewith next
    >>Tötet jeden |cRXP_ENEMY_Raptor|r, den ihr seht. Plündert sie für ihren |cRXP_LOOT_Kopf|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Regthar|r
    .accept 850 >>Akzeptiert die Quest Anführer der Kolkar
    .accept 855 >>Akzeptiert die Quest Zentaurenarmschienen
    .target Regthar Deathgate
step
    #completewith Barak
    >>Sammelt |cRXP_LOOT_Potenter Pilz|r um Die vergessenen Teiche herum
    >>|cRXP_WARN_Diese Quest muss jetzt nicht abgeschlossen werden|r
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
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Regthar|r
    .turnin 850 >>Gebt die Quest Anführer der Kolkar ab
    .accept 851 >>Akzeptiert die Quest Verog der Derwisch
    .turnin 855 >>Gebt die Quest Zentaurenarmschienen ab
    .target Regthar Deathgate
    .isQuestComplete 855
step
    #label KodobaneTurnin
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Regthar|r
    .turnin 850 >>Gebt die Quest Anführer der Kolkar ab
    .accept 851 >>Akzeptiert die Quest Verog der Derwisch
    .target Regthar Deathgate
step
    #optional
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Regthar|r
    .accept 851 >>Akzeptiert die Quest Verog der Derwisch
    .target Regthar Deathgate
    .isQuestTurnedIn 850
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
    .goto The Barrens,41.51,19.09,0
    .goto The Barrens,41.51,19.09,60,0
    .goto The Barrens,40.82,18.23,60,0
    .goto The Barrens,40.95,16.80,60,0
    .goto The Barrens,41.23,15.79,60,0
    .goto The Barrens,41.21,14.75,60,0
    .goto The Barrens,41.84,14.81,60,0
    >>Tötet |cRXP_ENEMY_Harpyie der Hexenschwingen|r und |cRXP_ENEMY_Wildfeder der Hexenschwingen|r. Plündert sie für ihre |cRXP_LOOT_Krallen|r
    .complete 867,1 --Witchwing Talon (8)
    .mob Witchwing Harpy
    .mob Witchwing Roguefeather
step
    #completewith Samophlange
    +|cRXP_WARN_Passt auf|r |cRXP_ENEMY_Bluthornsensenklaue|r |cRXP_WARN_in der Gegend auf. Sie sind bis Stufe 18 und können|r |T132152:0|t[Hauen]
    --.dungeon !RFC
    .xp >17,1
step
    #completewith Samophlange
    >>Tötet |cRXP_ENEMY_Ebenenschreiter|r. Plündert sie für ihre |cRXP_LOOT_Nieren|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrider
step
    .goto The Barrens,43.80,12.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Vrang|r
    >>|cRXP_FRIENDLY_Vrang|r |cRXP_WARN_verkauft|r |T133476:0|t[|cRXP_FRIENDLY_Schwerer Stachelkolben|r] |cRXP_WARN_ein Gegenstand mit begrenztem Vorrat|r << Orc Warrior/Troll Warrior/Tauren Warrior/Shaman
	.vendor	>> Verkauft trash und repariert
    .target Vrang Wildgore
    .isQuestAvailable 901
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
    #completewith Ignition
    >>Tötet |cRXP_ENEMY_Ebenenschreiter|r. Plündert sie für ihre |cRXP_LOOT_Nieren|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrideridneys
step
    #loop
    .goto The Barrens,54.3,12.3,90,0
    .goto The Barrens,54.6,16.7,90,0
    .goto The Barrens,42.6,15.1,90,0
    .goto The Barrens,54.3,12.3,0
    >>Tötet |cRXP_ENEMY_Raptoren|r. Plündert sie für ihre |cRXP_LOOT_Köpfe|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
    .mob Sunscale Scytheclaw
step
    #xprate <1.5
    #optional
    .goto The Barrens,56.5,7.5
    .xp 16 >>Farmt bis Stufe 16
    >>|cRXP_WARN_This is important, due to the next 3 quests being quite hard|r (NOT TRANSLATED IN :deDE YET)
step
    #label Ignition
    .goto The Barrens,56.52,7.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Wizzlecrank's Shredder|r in The Sludge Fen
    >>|cRXP_FRIENDLY_Wizzlecranks Schredder|r |cRXP_WARN_hat einen langen Respawn-Timer. Erwägt, diese Quest zu überspringen, wenn es viel Konkurrenz gibt|r
    .accept 858 >>Akzeptiert die Quest Zündung
    .target Wizzlecrank's Shredder
step
    #completewith next
    +|cRXP_WARN_Seid vorsichtig, wenn|r |cRXP_ENEMY_Großknecht Grills|r |cRXP_WARN_oder|r |cRXP_ENEMY_Schlammbestie|r |cRXP_WARN_aktiv ist. Sie sind starke Stufe-19-Rares|r
    .unitscan Foreman Grills
    .unitscan Sludge Beast
step
    .goto The Barrens,56.52,8.47,20,0
    .goto The Barrens,56.34,8.24,12,0
    .goto The Barrens,56.12,8.33,12,0
    .goto The Barrens,56.05,8.49,12,0
    .goto The Barrens,56.13,8.56,12,0
    .goto The Barrens,56.34,8.24
    >>Kill |cRXP_ENEMY_Supervisor Lugwizzle|r. Loot him for his |cRXP_LOOT_Key|r. He patrols up and down the platform (NOT TRANSLATED IN :deDE YET)
    .complete 858,1 --Ignition Key (1)
    .mob Supervisor Lugwizzle
    .isOnQuest 858
step
    .goto The Barrens,56.52,7.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit|r |cRXP_FRIENDLY_Kurbelwizz' Schredder|r
    >>|cRXP_FRIENDLY_Wizzlecranks Schredder|r |cRXP_WARN_hat einen langen Respawn-Timer. Erwägt, diese Quest zu überspringen, wenn es viel Konkurrenz gibt|r
    >>|cRXP_WARN_Dies startet eine Eskorte. Achtet darauf, dass ihr volle Lebenspunkte habt|r
    .turnin 858 >>Gebt die Quest Zündung ab
    .accept 863,1 >>Akzeptiert die Quest Die Flucht
    .target Wizzlecrank's Shredder
    .isQuestComplete 858
step
    #optional
    .goto The Barrens,56.52,7.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit|r |cRXP_FRIENDLY_Kurbelwizz' Schredder|r
    >>|cRXP_FRIENDLY_Wizzlecranks Schredder|r |cRXP_WARN_hat einen langen Respawn-Timer. Erwägt, diese Quest zu überspringen, wenn es viel Konkurrenz gibt|r
    >>|cRXP_WARN_Dies startet eine Eskorte. Achtet darauf, dass ihr volle Lebenspunkte habt|r
    .accept 863,1 >>Akzeptiert die Quest Die Flucht
    .target Wizzlecrank's Shredder
    .isQuestTurnedIn 858
step
    #label Slugs
    .goto The Barrens,55.80,7.76,30,0
    .goto The Barrens,55.51,7.13
    >>|cRXP_WARN_Zwei|r |cRXP_ENEMY_Söldner der Venture Co.|r |cRXP_WARN_werden spawnen, wenn der Schredder sich im höheren Gelände bewegt. Tötet sie dann und wartet auf sein RP-Event am Ende|r
    .complete 863,1 --Escort Wizzlecrank out of the Venture Co. drill site (1)
    .mob Venture Co. Mercenary
    .mob Venture Co. Drudger
    .mob Overseer Glibby
    .isOnQuest 863
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Ebenenschreiter|r. Plündert sie für ihre |cRXP_LOOT_Nieren|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrider
step
    #label CatsEye
    .goto The Barrens,61.46,4.50,0
    .goto The Barrens,61.46,4.50,40,0
    .goto The Barrens,61.06,3.63,40,0
    .goto The Barrens,61.63,3.37,40,0
    .goto The Barrens,62.14,3.52,40,0
    .goto The Barrens,61.94,4.53,40,0
    .goto The Barrens,61.85,5.37,40,0
    .goto The Barrens,61.44,5.56,40,0
    .goto The Barrens,61.17,5.05,40,0
    .goto The Barrens,61.51,4.43,40,0
    >>Tötet |cRXP_ENEMY_Vollstrecker der Venture Co.|r und |cRXP_ENEMY_Vorarbeiter der Venture Co.|r. Plündert sie für |cRXP_LOOT_Katzenaugensmaragd|r
    >>|cRXP_WARN_Falls es nach 25+ Mobs nicht gedropped ist, könnt ihr diese Quest gerne überspringen|r
    .complete 896,1 -- Cats Eye Emerald (1)
    .mob Venture Co. Enforcer
    .mob Venture Co. Overseer
step
    #completewith SpiritsPickup
    .goto Kalimdor,56.81,45.47
    .zone Orgrimmar >>Betretet Orgrimmar durch den westlichen Eingang
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
step << Mage
    .goto Orgrimmar,38.36,85.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |r |cRXP_FRIENDLY_Pephredo|r
    .train 2120 >> Trainiere deine Klassenfähigkeiten
    .target Pephredo
    .xp <16,1
    .xp >18,1
step << Mage
    #optional
    .goto Orgrimmar,38.36,85.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |r |cRXP_FRIENDLY_Pephredo|r
    .train 3140 >> Trainiere deine Klassenfähigkeiten
    .target Pephredo
    .xp <18,1
step << !Orc !Troll
    .goto Orgrimmar,45.13,63.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Doras|r
    >>|cRXP_WARN_Fliegt nicht irgendwohin!|r
    .fp Orgrimmar >> Erlernt die Orgrimmar-Flugroute
    .zoneskip The Barrens
    .target Doras
step << Shaman
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kardris|r
    .train 8019 >> Trainiere deine Klassenfähigkeiten
    .target Kardris Dreamseeker
    .xp <16,1
    .xp >18,1
step << Shaman
    #optional
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kardris|r
    .train 913 >> Trainiere deine Klassenfähigkeiten
    .target Kardris Dreamseeker
    .xp <18,1
step << Paladin
    .goto Orgrimmar,32.3,35.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Meister Pyreanor|r
    .train 7294 >>Trainiere deine Klassenfähigkeiten
    .target Master Pyreanor
    .xp <16,1
    .xp >18,1
step << Paladin
    #optional
    .goto Orgrimmar,32.3,35.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Meister Pyreanor|r
    .train 5573 >>Trainiere deine Klassenfähigkeiten
    .target Master Pyreanor
    .xp <18,1
step
    #label SpiritsPickup
    .goto Orgrimmar,38.94,38.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Zor|r
    .accept 1061 >>Akzeptiert die Quest Die Geister des Steinkrallengebirges
    .target Zor Lonetree
step
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thrall|r
    >>|cRXP_WARN_This is a prerequisite quest for Ragefire Chasm. Skip this step if you do not wish to do it|r (NOT TRANSLATED IN :deDE YET)
    .accept 5726 >>Akzeptiert die Quest Verborgene Feinde
    .target Thrall
    .dungeon RFC
step
    #optional
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thrall|r
    .accept 5727 >>Akzeptiert die Quest Verborgene Feinde
    .target Thrall
    .isQuestTurnedIn 5726
    .dungeon RFC
step << Rogue
    .goto Orgrimmar,43.05,53.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Shenthul|r
    .train 1804 >> Erlernt |T136058:0|t[Schloss knacken]
    .train 921 >> Erlernt |T133644:0|t[Taschendiebstahl]
    .accept 2379 >>Akzeptiert die Quest Zando'Zan
    .target Shenthul
step << Rogue
    .goto Orgrimmar,42.72,52.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Zando'zan|r
    .turnin 2379 >>Gebt die Quest Zando'zan ab
    .accept 2382 >>Akzeptiert die Quest Wrenix aus Ratschet
    .target Zando'zan
step << Warlock
    .goto Orgrimmar,48.62,46.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Mirket|r
    .train 1455 >> Trainiere deine Klassenfähigkeiten
    .target Mirket
    .xp <16,1
    .xp >18,1
step << Warlock
    #optional
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
    .goto Orgrimmar,79.91,31.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Grezz|r
    .train 285 >> Trainiere deine Klassenfähigkeiten
    .target Grezz Ragefist
    .xp <16,1
    .xp >18,1
step << Warrior
    #optional
    .goto Orgrimmar,79.91,31.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Grezz|r
    .train 8198 >> Trainiere deine Klassenfähigkeiten
    .target Grezz Ragefist
    .xp <18,1
step << Hunter
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ormak|r
    .train 13795 >> Trainiere deine Klassenfähigkeiten
    .target Ormak Grimshot
    .xp <16,1
    .xp >18,1
step << Hunter
    #optional
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
step << Warrior/Shaman/Paladin
    .goto Orgrimmar,81.52,19.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Hanashi|r
    .train 197 >>Erlernt Zweihandäxte
    .train 227 >>Erlernt Stäbe << !Paladin !Shaman
    .target Hanashi
step << Hunter
    .goto Orgrimmar,81.17,18.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Zendo'jian|r|cRXP_BUY_. Kauft|r |T135490:0|t[Verstärkter Bogen] |cRXP_BUY_von ihm|r
    .collect 3026,1,3281,1 --Collect Laminated Recurve Bow (1)
    .money <0.3588
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.4
    .target Zendo'jian
    .train 227,3
step << Hunter
    #optional
    #completewith EcheyakeePickup
    +Legt den |T135490:0|t[Verstärkter Bogen] |cRXP_WARN_an|r
    .use 3026
    .itemcount 3026,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.4
step << Warrior/Paladin/Shaman
    .goto Orgrimmar,81.17,18.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Zendo'jian|r|cRXP_BUY_. Kauft eine|r |T135423:0|t[Streitaxt] |cRXP_BUY_von ihm|r
    .collect 926,1,3281,1 --Collect Battle Axe (1)
    .money <1.021
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
    .target Zendo'jian
    .train 227,3
step << Warrior/Paladin/Shaman
    #optional
    #completewith EcheyakeePickup
    +|cRXP_WARN_Equip the|r |T135423:0|t[Battle Axe] |cRXP_WARN_when you reach level 20|r (NOT TRANSLATED IN :deDE YET)
    .use 926
    .itemcount 926,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
    .xp >20,1
step << Warrior/Paladin/Shaman
    #optional
    #completewith EcheyakeePickup
    +Legt die |T135423:0|t[Streitaxt] |cRXP_WARN_an|r
    .use 926
    .itemcount 926,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
    .xp <20,1
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
    #completewith EcheyakeePickup
    .goto Orgrimmar,45.120,63.889
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |r |cRXP_FRIENDLY_Doras|r
    .fly Crossroads >>Fliege nach Das Wegekreuz
    .target Doras
    .subzoneskip 380
step
    .goto The Barrens,51.93,30.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gazrog|r
    .turnin 869 >>Gebt die Quest Raptordiebe ab
    .accept 3281 >>Akzeptiert die Quest Gestohlenes Silber
    .target Gazrog
step
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Helbrim|r
    .turnin 848 >> Gebt die Quest Pilzsporen ab
    .target Apothecary Helbrim
    .isQuestComplete 848
step
    .goto The Barrens,51.62,30.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Darsok|r
    >>|cRXP_WARN_Er ist an der Spitze des Turms|r
    .turnin 867 >>Gebt die Quest Räuberische Harpyien ab
    .accept 875 >>Akzeptiert die Quest Offiziere der Harpyien
    .target Darsok Swiftdagger
step
    .goto The Barrens,52.26,31.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tonga|r
    .turnin 870 >>Gebt die Quest Die Vergessenen Teiche ab
    .accept 877 >>Akzeptiert die Quest Die Brackige Oase
    .target Tonga Runetotem
step
    #label EcheyakeePickup
    .goto The Barrens,52.24,31.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sergra|r
    .turnin 903 >>Gebt die Quest Streuner des Brachlandes ab
    .accept 881 >>Akzeptiert die Quest Echeyakee
    .target Sergra Darkthorn
step
    .goto The Barrens,55.80,17.03
    >>Benutzt das |T134227:0|t[Horn von Echeyakee], um |cRXP_ENEMY_Echeyakee|r zu beschwören
    >>Tötet |cRXP_ENEMY_Echeyakee|r. Plündert ihn für |cRXP_LOOT_Echeyakees Balg|r
    >>|cRXP_WARN_Falls |cRXP_ENEMY_Echeyakee|r nicht erscheint, nachdem ihr das|r |T134227:0|t[Horn von Echeyakee]|cRXP_WARN_ benutzt habt, oder ihr den tag nicht bekommen habt, als er erschien ist, überspringt diesen Schritt|r
    .complete 881,1 --Echeyakee's Hide (1)
    .mob Echeyakee
    .use 10327
step
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
    #completewith next
    >>Tötet |cRXP_ENEMY_Ebenenschreiter|r. Plündert sie für ihre |cRXP_LOOT_Nieren|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrider
step
    #loop
    .goto The Barrens,40.28,15.49,0
    .goto The Barrens,40.28,15.49,40,0
    .goto The Barrens,39.50,14.68,40,0
    .goto The Barrens,39.47,13.24,40,0
    .goto The Barrens,38.94,12.80,40,0
    .goto The Barrens,38.18,12.56,40,0
    .goto The Barrens,37.96,13.52,40,0
    .goto The Barrens,38.62,13.95,40,0
    .goto The Barrens,38.18,14.62,40,0
    .goto The Barrens,38.14,15.59,40,0
    .goto The Barrens,37.29,15.68,40,0
    .goto The Barrens,37.24,16.26,40,0
    .goto The Barrens,37.67,16.34,40,0
    .goto The Barrens,38.35,17.08,40,0
    .goto The Barrens,38.83,17.71,40,0
    .goto The Barrens,39.37,17.21,40,0
    .goto The Barrens,39.87,16.66,40,0
    .goto The Barrens,40.15,15.98,40,0
    >>Tötet |cRXP_ENEMY_Töterin der Hexenschwingen|r. Plündert sie für ihre |cRXP_LOOT_Ringe|r
    >>|cRXP_WARN_Passt auf, denn |cRXP_ENEMY_Töterin der Hexenschwingen|r wirken|r |T135358:0|t[Hinrichten] |cRXP_WARN_(verursacht SEHR VIEL Schaden, wenn ihr unter 20% Leben seid), und |cRXP_ENEMY_Wegelagerin der Hexenschwingen|r sind|r |T132320:0|t[Verstohlen] |cRXP_WARN_und patrouillieren umher|r
    >>|cRXP_WARN_Passt auf|r |cRXP_ENEMY_Wegelagerin der Hexenschwingen|r|cRXP_WARN_. Sie sind verstohlen und patrouillieren in der Gegend|r
    .complete 875,1 --Harpy Lieutenant Ring (6)
    .mob Witchwing Slayer
    .mob Witchwing Ambusher
step << Druid
    #completewith DruidTraining1
    .cast 18960 >>|cRXP_WARN_Wirkt |r|T135758:0|t[Teleportieren: Mondlichtung]
    .zoneskip Moonglade
step << Druid
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Loganaar|r
    .train 8925 >> Trainiere deine Klassenfähigkeiten
    .target Loganaar
    .xp <16,1
    .xp >18,1
step << Druid
    #label DruidTraining1
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Loganaar|r
    .train 6808 >> Trainiere deine Klassenfähigkeiten
    .target Loganaar
    .xp <18,1
step
    #completewith next
    .hs >> Ruhestein nach Das Wegekreuz
    .use 6948
    .bindlocation 380,1
    .subzoneskip 380
step
    .goto The Barrens,52.24,31.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sergra|r
    .turnin 881 >>Gebt die Quest Echeyakee ab
    .accept 905 >>Akzeptiert die Quest Die wütenden Sensenklauen
    .target Sergra Darkthorn
step
    #completewith RapHornsPickup
    .destroy 10327 >>|cRXP_WARN_Zerstört|r |T134227:0|t[Horn von Echeyakee] |cRXP_WARN_, da ihr es nicht mehr braucht|r
step
    .goto The Barrens,51.62,30.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Darsok|r
    >>|cRXP_WARN_Er ist an der Spitze des Turms|r
    .turnin 875 >>Gebt die Quest Offiziere der Harpyien ab
    .accept 876 >>Akzeptiert die Quest Serena Blutfeder
    .target Darsok Swiftdagger
step << Hunter
    .goto The Barrens,51.67,29.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Barg|r
    >>|cRXP_BUY_Kauft|r |T132382:0|t[Scharfe Pfeile] |cRXP_BUY_bei ihm|r
    .collect 2515,1800,888,1 << Hunter --Sharp Arrow (1800)
    .target Barg
step
    #completewith RapHornsPickup
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Devrak|r
    .fly Ratchet >>Fliege nach Ratschet
    .target Devrak
    .subzoneskip 392
step << Rogue
    .goto The Barrens,63.07,36.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Wrenix|r
    .turnin 2382 >>Gebt die Quest Wrenix aus Ratschet ab
    .accept 2381 >>Akzeptiert die Quest Das Ausplündern der Plünderer
    .target Wrenix the Wretched
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sputtervalve|r und |cRXP_FRIENDLY_Dizzywig|r
    .turnin 902 >>Gebt die Quest Samophlang ab
    .turnin 863 >>Gebt die Quest Die Flucht ab
    .accept 3921 >>Akzeptiert die Quest Wenikee Boltbucket << Hunter
    .accept 1483 >>Akzeptiert die Quest Ziz Fizziks
    .target +Sputtervalve
    .goto The Barrens,62.98,37.22
    .turnin 896 >>Gebt die Quest Des Minenarbeiters Vermögen ab
    .target +Wharfmaster Dizzywig
    .goto The Barrens,63.35,38.45
    .isQuestComplete 896
    .isQuestComplete 863
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sputtervalve|r und |cRXP_FRIENDLY_Dizzywig|r
    .turnin 902 >>Gebt die Quest Samophlang ab
    .accept 3921 >>Akzeptiert die Quest Wenikee Boltbucket << Hunter
    .accept 1483 >>Akzeptiert die Quest Ziz Fizziks
    .target +Sputtervalve
    .goto The Barrens,62.98,37.22
    .turnin 896 >>Gebt die Quest Des Minenarbeiters Vermögen ab
    .target +Wharfmaster Dizzywig
    .goto The Barrens,63.35,38.45
    .isQuestComplete 896
step
    #optional
    .goto The Barrens,62.98,37.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Sputtervalve|r
    .turnin 863 >>Gebt die Quest Die Flucht ab
    .accept 1483 >>Akzeptiert die Quest Ziz Fizziks
    .target Sputtervalve
    .isQuestComplete 863
step
    #optional
    .goto The Barrens,62.98,37.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Sputtervalve|r
    .accept 1483 >> Akzeptiert die Quest Ziz Fizziks
    .target Sputtervalve
step
    #label RapHornsPickup
    .goto The Barrens,62.37,37.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Mebok|r
    .accept 865 >>Akzeptiert die Quest Raptorhörner
    .accept 1069 >>Akzeptiert die Quest Eier der Kluftmoosspinnen
    .target Mebok Mizzyrix
step
    .goto The Barrens,62.05,39.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gastwirt Wiley|r
    >>|cRXP_BUY_Kauft|r |T133918:0|t[Roher Langzahniger Matschschnapper] |cRXP_BUY_bei ihm|r
    >>|cRXP_BUY_Kauft|r |T132796:0|t[Melonensaft] |cRXP_BUY_von ihm|r << Mage/Warlock/Priest/Shaman/Druid/Paladin
    >>|T133918:0|t[Langzahniger Matschschnapper] |cRXP_WARN_sind extrem billig, kauft so viele, wie ihr wollt|r
    .vendor >> Verkauft Müll
    .collect 4592,20,888,1 --Longjaw Mud Snapper (20)
    .collect 1205,10,888,1 << Mage/Warlock/Priest/Shaman/Druid/Paladin --Melon Juice (10)
    .target Innkeeper Wiley
    .isQuestAvailable 888,865,3281,877,848
step << Rogue
	#completewith next
    .goto The Barrens,65.04,45.44
    +|cRXP_WARN_Springt aufs Schiff, geht zur 2. Etage hinunter und trainiert euer Schlösser knacken bis mindestens 70|r
step << Rogue
    .goto The Barrens,64.95,45.44
    >>Sobald Eure Schlösserkunst 70 ist, geht ins Untergeschoss des Schiffes und öffnet |cRXP_PICK_Das Juwel der Südlichen Meere|r
    >>|cRXP_WARN_Benutzt|r |T134059:0|t[R.C.V.K.] |cRXP_WARN_auf|r |cRXP_ENEMY_Polly|r
    .complete 2381,1 --Southsea Treasure (1)
    .use 7970
    .mob Polly
step
    #label LeaveRatchet
    .goto The Barrens,63.58,49.25
    >>Plündert die |cRXP_PICK_Kiste|r vom Boden
    .complete 888,2 --Telescopic Lens (1)
step
    .goto The Barrens,62.63,49.64
    >>Plündert die |cRXP_PICK_Kiste|r vom Boden
    .complete 888,1 --Shipment of Boots (1)
step
    #completewith TestSeeds
    >>Tötet |cRXP_ENEMY_Ebenenschreiter|r. Plündert sie für ihre |cRXP_LOOT_Nieren|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrider
step
    #completewith TestSeeds
    >>Tötet |cRXP_ENEMY_Bluthornsensenklaue|r. Plündert sie für ihre |cRXP_LOOT_Hörner|r und |cRXP_LOOT_Federn|r
    >>|cRXP_WARN_Seid vorsichtig denn sie wirken|r |T132152:0|t[Hauen] |cRXP_WARN_(Aufladungen 2 extra Angriffe alle 10 Sek.)|r
    .complete 865,1 --Intact Raptor Horn (5)
    .collect 5165,3,905,3 --Sunscale Feather (3)
    .mob Sunscale Scytheclaw
step
    .goto The Barrens,57.39,52.28,60,0
    .goto The Barrens,58.04,53.87
    >>Plündert das |cRXP_PICK_Gestohlene Silber|r auf dem Boden
    .complete 3281,1 --Stolen Silver (1)
step
    #completewith Verog
    >>Sammelt |cRXP_LOOT_Potenter Pilz|r um Die Brackige Oase herum
    .complete 848,1 --Collect Fungal Spores (x4)
step
    #label TestSeeds
    .goto The Barrens,55.61,42.75
    >>Klickt auf den |cRXP_PICK_Blubbernden Felsspalt|r unter Wasser
    .complete 877,1 --Test the Dried Seeds (1)
step
    #completewith next
    #loop
    .goto The Barrens,55.80,45.78,50,0
    .goto The Barrens,56.75,43.41,50,0
    .goto The Barrens,57.01,41.22,50,0
    .goto The Barrens,55.45,41.37,50,0
    .goto The Barrens,54.99,40.84,50,0
    .goto The Barrens,53.41,40.26,50,0
    .goto The Barrens,52.99,44.73,50,0
    .goto The Barrens,54.31,46.81,50,0
    >>Tötet |cRXP_ENEMY_Kolkar|r rund um die Oase. Plündert sie für ihre |cRXP_LOOT_Armschienen|r
    .complete 855,1 --Centaur Bracers (15)
    .mob Kolkar Bloodcharger
    .mob Kolkar Pack runner
    .mob Kolkar Marauder
    .isOnQuest 851
step
    #label Verog
    .goto The Barrens,52.95,41.75
    >>Tötet |cRXP_ENEMY_Verog|r. Plündert ihn für seinen |cRXP_LOOT_Kopf|r
    >>|cRXP_WARN_Er hat eine Chance zu spawnen, jedes Mal wenn ein |cRXP_ENEMY_Kolkar|r getötet wird|r
    >>|cRXP_WARN_Auf einem stark bevölkerten Server oder bei einem frischen Start ist es am besten, an seinem Spawn-Punkt zu campen.|r
    .complete 851,1 --Verog's Head (1)
    .unitscan Verog the Dervish
    .isOnQuest 851
step
    #loop
    .goto The Barrens,55.72,42.14,0
    .goto The Barrens,55.72,42.14,30,0
    .goto The Barrens,55.49,41.75,30,0
    .goto The Barrens,55.09,41.58,30,0
    .goto The Barrens,55.03,42.24,30,0
    .goto The Barrens,55.27,43.17,30,0
    .goto The Barrens,55.78,43.47,30,0
    .goto The Barrens,56.15,43.28,30,0
    .goto The Barrens,56.08,42.58,30,0
    >>Sammelt |cRXP_LOOT_Potenter Pilz|r um Die Brackige Oase herum
    .complete 848,1 --Collect Fungal Spores (x4)
step
    #completewith LakotaMani
    >>Tötet |cRXP_ENEMY_Ebenenschreiter|r. Plündert sie für ihre |cRXP_LOOT_Nieren|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrider
step
    .goto The Barrens,52.60,46.10
    >>Klickt das |cRXP_PICK_Blauraptornest|r. Tötet weitere |cRXP_ENEMY_Bluthornsensenklaue|r, wenn ihr eine |T132914:0|t[Bluthornfeder] nicht habt
    >>|cRXP_WARN_Seid vorsichtig denn sie wirken|r |T132152:0|t[Hauen] |cRXP_WARN_(Aufladungen 2 extra Angriffe alle 10 Sek.)|r
    .complete 905,1 --Visit Blue Raptor Nest (1)
    .collect 5165,3,905,7,3
    .mob Sunscale Scytheclaw
step
    .goto The Barrens,52.45,46.57
    >>Klickt das |cRXP_PICK_Rotraptornest|r. Tötet weitere |cRXP_ENEMY_Bluthornsensenklaue|r, wenn ihr eine |T132914:0|t[Bluthornfeder] nicht habt
    >>|cRXP_WARN_Seid vorsichtig denn sie wirken|r |T132152:0|t[Hauen] |cRXP_WARN_(Aufladungen 2 extra Angriffe alle 10 Sek.)|r
    .complete 905,3 --Visit Red Raptor Nest (1)
    .collect 5165,3,905,7,3
    .mob Sunscale Scytheclaw
step
    #label Nest
    .goto The Barrens,52.02,46.47
    >>Klickt das |cRXP_PICK_Gelbraptornest|r. Tötet weitere |cRXP_ENEMY_Bluthornsensenklaue|r, wenn ihr eine |T132914:0|t[Bluthornfeder] nicht habt
    >>|cRXP_WARN_Seid vorsichtig denn sie wirken|r |T132152:0|t[Hauen] |cRXP_WARN_(Aufladungen 2 extra Angriffe alle 10 Sek.)|r
    .complete 905,2 --Visit Yellow Raptor Nest (1)
    .collect 5165,3,905,7,3
    .mob Sunscale Scytheclaw
step
    #loop
    .goto The Barrens,57.3,53.7,0
    .goto The Barrens,52.0,46.5,0
    .goto The Barrens,57.3,53.7,90,0
    .goto The Barrens,52.0,46.5,90,0
    >>Beenden das töten von |cRXP_ENEMY_Bluthornsensenklaue|r. Plündert sie für ihre |cRXP_LOOT_Hörner|r
    >>|cRXP_WARN_Seid vorsichtig denn sie wirken|r |T132152:0|t[Hauen] |cRXP_WARN_(Aufladungen 2 extra Angriffe alle 10 Sek.)|r
    .complete 865,1 --Intact Raptor Horn (5)
    .mob Sunscale Scytheclaw
step
    #label LostmyWife
    .goto The Barrens,49.33,50.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Geschlagener Kadaver|r
    .complete 4921,1 --Find Mankrik's Wife (1)
    .target Beaten Corpse
    .skipgossip
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Sturmschnauze|r. Plündert sie für |cRXP_LOOT_Donnerechsenhorn|r
    .complete 821,3 --Thunder Lizard Horn (1)
    .mob Stormsnout
step
    #label LakotaMani
    #loop
    .goto The Barrens,45.14,52.82,0
    .goto The Barrens,45.93,49.08,0
    .goto The Barrens,47.43,51.37,0
    .goto The Barrens,50.10,53.34,0
    .goto The Barrens,45.14,52.82,80,0
    .goto The Barrens,45.93,49.08,80,0
    .goto The Barrens,47.43,51.37,80,0
    .goto The Barrens,50.10,53.34,80,0
	>>Tötet |cRXP_ENEMY_Lakota'mani|r. Plündert sie für die |T132318:0|t[|cRXP_LOOT_Huf von Lakota'mani|r]
    >>|cRXP_WARN_Benutzt die |T132318:0|t[|cRXP_LOOT_Huf von Lakota'mani|r] um die Quest zu beginnen|r
    >>|cRXP_WARN_Er hat 4 Spawnpunkte (auf der Karte markiert)|r
    >>|cRXP_WARN_Überspringt diesen Schritt, falls ihr ihn nicht finden könnt|r
	.collect 5099,1,883 --Collect Hoof of Lakota'Mani
	.accept 883 >>Akzeptiert die Quest Lakota'Mani
    .use 5099
    .unitscan Lakota'mani
step
    #completewith SetCampTaurajoHS
    >>Tötet |cRXP_ENEMY_Sturmschnauzen|r. Plündert sie für ein |cRXP_LOOT_Horn|r
    >>|cRXP_WARN_This does not have to be completed now|r (NOT TRANSLATED IN :deDE YET)
    .complete 821,3 --Thunder Lizard Horn (1)
    .mob Stormsnout
step
    #completewith next
    .subzone 378 >>Reist nach Camp Taurajo
step
    #label SetCampTaurajoHS
    .goto The Barrens,45.58,59.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Byula|r
    .home >>Setzt euren Ruhestein ins Camp Taurajo
    .target Innkeeper Byula
    .isQuestAvailable 878
    .bindlocation 378
step
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Jorn Himmelsdeuter|r
    .turnin 883 >>Gebt die Quest Lakota'mani ab
    .target Jorn Skyseer
    .isOnQuest 883
step
    .goto The Barrens,44.55,59.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Quetschzahn|r
    .accept 878 >>Akzeptiert die Quest Stämme im Krieg
    .target Mangletooth
step
    #completewith Xroadsturnins2
    .goto The Barrens,44.45,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Omusa|r
    .fp Camp Taurajo >>Erlernt die Camp Taurajo-Flugroute << !Tauren
    .fly Crossroads >>Fliege nach Das Wegekreuz
    .target Omusa Thunderhorn
    .subzoneskip 380
step
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Helbrim|r
    .turnin 848 >>Gebt die Quest Pilzsporen ab
    .target Apothecary Helbrim
    .isQuestComplete 848
step
    #label Xroadsturnins2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mankrik|r, |cRXP_FRIENDLY_Tonga|r, |cRXP_FRIENDLY_Sergra|r und |cRXP_FRIENDLY_Gazrog|r
    .turnin 4921 >>Gebt die Quest In der Schlacht vermisst ab
    .target +Mankrik
    .goto The Barrens,51.95,31.58
    .turnin 877 >>Gebt die Quest Die Brackige Oase ab
    .accept 880 >>Akzeptiert die Quest Veränderte Wesen
    .target +Tonga Runetotem
    .goto The Barrens,52.26,31.93
    .turnin 905 >>Gebt die Quest Die wütenden Sensenklauen ab
    .accept 3261 >>Akzeptiert die Quest Jorn Skyseer
    .target +Sergra Darkthorn
    .goto The Barrens,52.24,31.01
    .turnin 3281 >>Gebt die Quest Gestohlenes Silber ab
    .target +Gazrog
    .goto The Barrens,51.93,30.32
step
    #completewith StonetalonPickups
    .destroy 5165 >>|cRXP_WARN_Entfernt alle übrigen|r |T132914:0|t[Bluthornfeder] |cRXP_WARN_die ihr noch habt|r
    .itemcount 5165,1
step << Hunter
    .goto The Barrens,51.11,29.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Uthrok|r|cRXP_BUY_. Kauft einen|r |T134410:0|t[Mittlerer Köcher] |cRXP_BUY_bei ihm|r
    .collect 11362,1,876,1 --Medium Quiver (1)
    .collect 2515,2200,876,1 --Sharp Arrow (2200)
    .target Uthrok
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Regthar|r
    .turnin 855 >>Gebt die Quest Zentaurenarmschienen ab
    .target Regthar Deathgate
    .isQuestComplete 855
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Regthar|r
    .turnin 851 >>Gebt die Quest Verog der Derwisch ab
    .accept 852 >>Akzeptiert die Quest Hezrul Blutmal
    .target Regthar Deathgate
    .isQuestComplete 851
step
    #optional
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Regthar|r
    .accept 852 >>Akzeptiert die Quest Hezrul Blutmal
    .target Regthar Deathgate
    .isQuestTurnedIn 851
step
    #completewith StonetalonPickups
    >>Tötet |cRXP_ENEMY_Ebenenschreiter|r. Plündert sie für ihre |cRXP_LOOT_Nieren|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrider
step
    #label Serena
    .goto The Barrens,39.16,12.16
    >>Tötet |cRXP_ENEMY_Serena Blutfeder|r. Plündert sie für ihren |cRXP_LOOT_Kopf|r
    .complete 876,1 --Serena's Head (1)
    .mob Serena Bloodfeather
step
    .goto The Barrens,35.26,27.88,100 >>Reist ins Steinkrallengebirge
    .zoneskip Stonetalon Mountains

    ]])

RXPGuides.RegisterGuide([[
#tbc
#version 7
#group RestedXP TBC Dungeonführer (H)
<< Horde
#name 18-23 Stonetalon/The Barrens
#subgroup RestedXP Horde 1-30
#defaultfor Shaman
#next 23-25 Hillsbrad Foothills

step
    #completewith next
    .goto The Barrens,35.26,27.88,100 >>Reist ins Steinkrallengebirge
    .zoneskip Stonetalon Mountains
step
    #label StonetalonPickups
    #map Stonetalon Mountains
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Seereth|r und |cRXP_FRIENDLY_Makaba|r
    .turnin 1061 >>Gebt die Quest Die Geister des Steinkrallengebirges ab
    .accept 1062 >>Akzeptiert die Quest Goblin-Eindringlinge
    .target +Seereth Stonebreak
    .goto The Barrens,35.26,27.88
    .accept 6548 >>Akzeptiert die Quest Rächt mein Dorf
    .target +Makaba Flathoof
    .goto The Barrens,35.19,27.79
step
    #loop
    .goto Stonetalon Mountains,80.62,89.99,0
    .goto Stonetalon Mountains,80.62,89.99,40,0
    .goto Stonetalon Mountains,79.79,88.75,40,0
    .goto Stonetalon Mountains,81.19,87.56,40,0
    .goto Stonetalon Mountains,81.70,86.44,40,0
    .goto Stonetalon Mountains,82.26,86.10,40,0
    .goto Stonetalon Mountains,82.55,85.22,40,0
    .goto Stonetalon Mountains,83.64,85.02,40,0
    .goto Stonetalon Mountains,84.20,85.20,40,0
    .goto Stonetalon Mountains,83.80,86.38,40,0
    .goto Stonetalon Mountains,83.25,87.23,40,0
    .goto Stonetalon Mountains,82.33,89.73,40,0
    .goto Stonetalon Mountains,82.33,90.43,40,0
    .goto Stonetalon Mountains,81.34,90.78,40,0
    >>Tötet |cRXP_ENEMY_Grobian der Grimmtotem|r und |cRXP_ENEMY_Söldner der Grimmtotem|r in der Gegend
    .complete 6548,1 --Kill Grimtotem Ruffian (x8)
    .mob +Grimtotem Ruffian
    .complete 6548,2 --Kill Grimtotem Mercenary (x6)
    .mob +Grimtotem Mercenary
step
    #map Stonetalon Mountains
    .goto The Barrens,35.19,27.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Makaba|r
    .turnin 6548 >> Gebt die Quest Rächt mein Dorf ab
    .accept 6629 >> Akzeptiert die Quest Tötet Grundig Finsterwolke
    .target Makaba Flathoof
step
    #completewith next
    .goto Stonetalon Mountains,75.89,87.49,30 >>Reist den Pfad zum Lagerfeuer hinauf
    .isQuestTurnedIn 6548
step
    .goto Stonetalon Mountains,73.65,86.13
    >>Tötet |cRXP_ENEMY_Grundig Finsterwolke|r und |cRXP_ENEMY_Schläger der Grimmtotem|r
    >>|cRXP_WARN_Tötet alle sechs|r |cRXP_ENEMY_Schläger der Grimmtotem|r |cRXP_WARN_bevor ihr die Quest startet|r
    .complete 6629,1 --Kill Grundig Darkcloud (x1)
    .mob +Grundig Darkcloud
    .complete 6629,2 --Kill Grimtotem Brute (x6)
    .mob +Grimtotem Brute
    .isQuestTurnedIn 6548
step
    .goto Stonetalon Mountains,73.48,85.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kaya|r
    .accept 6523,1 >> Akzeptiert die Quest Schützt Kaya
    .target Kaya Flathoof
    .isQuestTurnedIn 6548
step
    .goto Stonetalon Mountains,71.82,86.79,40,0
    .goto Stonetalon Mountains,71.83,89.79,40,0
    .goto Stonetalon Mountains,76.73,90.85
    >>Begleitet |cRXP_FRIENDLY_Kaya|r und bleibt in ihrer Nähe
    >>|cRXP_WARN_Passt auf! Drei|r |cRXP_ENEMY_Grimtotems|r |cRXP_WARN_werden erscheinen, wenn ihr das Lagerfeuer in Camp Aparaje erreicht|r
    .complete 6523,1 --Kaya Escorted to Camp Aparaje
    .target Kaya Flathoof
    .isQuestTurnedIn 6548
step
    .goto Stonetalon Mountains,71.25,95.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Xen'Zilla|r
    .accept 6461 >> Akzeptiert die Quest Blutfresser
    .target Xen'Zilla
step
    #completewith next
    .goto Stonetalon Mountains,68.59,88.34,100,0
    .goto Stonetalon Mountains,64.95,83.88,100,0
    .goto Stonetalon Mountains,61.47,81.51,100,0
    >>Tötet alle |cRXP_ENEMY_Kluftmooskrabbler|r die ihr seht
    >>|cRXP_WARN_Behaltet alle|r |T134339:0|t[Kleiner Giftbeutel] |cRXP_WARN_die ihr plündert|r << Rogue
    .complete 6461,1 --Kill Deepmoss Creeper (x10)
    .mob Deepmoss Creeper
step
    .goto Stonetalon Mountains,59.08,75.70
    >>Klickt auf das |cRXP_FRIENDLY_Gesucht Poster|r
    .accept 6284 >>Akzeptiert die Quest Arachnophobie
step
    #completewith Besseleth1
    >>Tötet |cRXP_ENEMY_Kluftmoosgiftspucker|r und |cRXP_ENEMY_Kluftmooskrabbler|r
    >>|cRXP_WARN_Behaltet alle|r |T134339:0|t[Kleiner Giftbeutel] |cRXP_WARN_die ihr plündert|r << Rogue
    .complete 6461,2 --Kill Deepmoss Venomspitter (x7)
    .mob +Deepmoss Venomspitter
    .complete 6461,1 --Kill Deepmoss Creeper (x10)
    .mob +Deepmoss Creeper
step
    #completewith next
    >>Sammelt die |cRXP_PICK_Spinneneier|r in der Nähe der Bäume
    >>|cRXP_WARN_Passt auf! Die|r |cRXP_ENEMY_Kluftmoosjungtier|r |cRXP_WARN_können einen Level-22|r |cRXP_ENEMY_Kluftmoosmatriarchin|r beschwören
    .complete 1069,1 --Collect Deepmoss Egg (x15)
step
    #label Besseleth1
    #loop
    .goto Stonetalon Mountains,54.80,71.95,0
    .goto Stonetalon Mountains,51.89,73.81,50,0
    .goto Stonetalon Mountains,52.46,71.67,50,0
    .goto Stonetalon Mountains,54.80,71.95,50,0
    >>Tötet |cRXP_ENEMY_Besseleth|r. Plündert sie für ihren |cRXP_LOOT_Fangzahn|r
    .complete 6284,1 --Collect Besseleth's Fang (x1)
	.unitscan Besseleth
step
    .goto Stonetalon Mountains,54.99,76.03
    >>Tötet |cRXP_ENEMY_Kluftmooskrabbler|r
    >>|cRXP_WARN_Behaltet alle|r |T134339:0|t[Kleiner Giftbeutel] |cRXP_WARN_die ihr plündert|r << Rogue
    .complete 6461,1 --Kill Deepmoss Creeper (x10)
    .mob Deepmoss Creeper
step
    #completewith next
    .goto Stonetalon Mountains,58.99,62.60,15 >> Reist zu|cRXP_FRIENDLY_Ziz|r
step
    .goto Stonetalon Mountains,58.99,62.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ziz|r
    .turnin 1483 >>Gebt die Quest Ziz Fizziks ab
    .accept 1093 >>Superschnitter 6000 annehmen
    .target Ziz Fizziks
step
    #completewith Windshear
    >>Sammelt die |cRXP_PICK_Spinneneier|r in der Nähe der Bäume
    >>|cRXP_WARN_Passt auf! Die|r |cRXP_ENEMY_Kluftmoosjungtier|r |cRXP_WARN_können einen Level-22|r |cRXP_ENEMY_Kluftmoosmatriarchin|r beschwören
    .complete 1069,1 --Collect Deepmoss Egg (x15)
step
    #loop
    .goto Stonetalon Mountains,59.25,61.55,0
    .goto Stonetalon Mountains,59.25,61.55,50,0
    .goto Stonetalon Mountains,60.37,60.10,50,0
    .goto Stonetalon Mountains,61.34,59.15,50,0
    .goto Stonetalon Mountains,61.15,57.85,50,0
    .goto Stonetalon Mountains,61.41,56.77,50,0
    .goto Stonetalon Mountains,62.21,58.55,50,0
    .goto Stonetalon Mountains,63.12,60.02,50,0
    .goto Stonetalon Mountains,64.69,60.03,50,0
    .goto Stonetalon Mountains,62.76,61.69,50,0
    .goto Stonetalon Mountains,62.50,62.92,50,0
    .goto Stonetalon Mountains,62.48,64.15,50,0
    .goto Stonetalon Mountains,61.85,66.07,50,0
    .goto Stonetalon Mountains,60.71,66.12,50,0
    .goto Stonetalon Mountains,60.96,63.99,50,0
    .goto Stonetalon Mountains,60.25,63.21,50,0
    >>Tötet |cRXP_ENEMY_Kluftmoosgiftspucker|r
    >>|cRXP_WARN_Behaltet alle|r |T134339:0|t[Kleiner Giftbeutel] |cRXP_WARN_die ihr plündert|r << Rogue
    .complete 6461,2 --Kill Deepmoss Venomspitter (x7)
    .mob Deepmoss Venomspitter
step
    #completewith BluePrints
    >>Tötet |cRXP_ENEMY_Holzarbeiter der Venture Co.|r
    .complete 1062,1 --Kill Venture Co. Logger (x15)
    .mob Venture Co. Logger
step << Warrior/Paladin/Shaman
    .goto Stonetalon Mountains,58.22,51.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Veenix|r|cRXP_BUY_. Kauft eine|r |T135423:0|t[Streitaxt] |cRXP_BUY_bei ihm|r
    .collect 926,1,899,1 --Collect Battle Axe (1)
    .money <1.021
    .target Veenix
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
step << Warrior/Paladin/Shaman
    #completewith BluePrints
    +Legt die |T135423:0|t[Streitaxt] |cRXP_WARN_an|r
    .use 926
    .itemcount 926,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
    .xp <20,1
step << Warrior/Paladin/Shaman
    #optional
    #completewith BluePrints
    +|cRXP_WARN_Equip the|r |T135423:0|t[Battle Axe] |cRXP_WARN_once you are level 20|r (NOT TRANSLATED IN :deDE YET)
    .use 926
    .itemcount 926,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
    .xp >19,1
step << Rogue
    .goto Stonetalon Mountains,58.22,51.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Veenix|r|cRXP_BUY_. Kauft ein|r |T135324:0|t[Langschwert] |cRXP_BUY_von ihm.|r
    .collect 923,1,899,1 --Collect Longsword (1)
    .money <0.8743
    .target Veenix
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.1
step << Rogue
    #optional
    #completewith BluePrints
    +|cRXP_WARN_Legt das|r |T135324:0|t[Langschwert] an
    .use 923
    .itemcount 923,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.1
    .xp <21,1
step << Rogue
    #optional
    #completewith BluePrints
    +|cRXP_WARN_Equip the|r |T135324:0|t[Longsword] |cRXP_WARN_once you are level 21|r (NOT TRANSLATED IN :deDE YET)
    --.use 923
    .itemcount 923,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.1
    .xp >20,1
step
    #label BluePrints
    #loop
    .goto Stonetalon Mountains,62.8,53.7,0
    .goto Stonetalon Mountains,62.8,53.7,100,0
    .goto Stonetalon Mountains,61.7,51.5,100,0
    .goto Stonetalon Mountains,66.8,45.3,100,0
    .goto Stonetalon Mountains,71.7,49.9,100,0
    .goto Stonetalon Mountains,74.3,54.7,100,0
    >>Tötet |cRXP_ENEMY_Maschinenführer der Venture Co.|r. Plündert sie für ihre |cRXP_LOOT_Blaupause|r
    .complete 1093,1 --Collect Super Reaper 6000 Blueprints (x1)
    .mob Venture Co. Operator
step
    #label Windshear
    #loop
    .goto Stonetalon Mountains,61.50,55.12,0
    .goto Stonetalon Mountains,61.50,55.12,50,0
    .goto Stonetalon Mountains,60.48,55.10,50,0
    .goto Stonetalon Mountains,59.80,53.69,50,0
    .goto Stonetalon Mountains,59.53,52.52,50,0
    .goto Stonetalon Mountains,60.80,51.23,50,0
    .goto Stonetalon Mountains,62.06,54.39,50,0
    .goto Stonetalon Mountains,62.63,55.35,50,0
    .goto Stonetalon Mountains,63.63,54.42,50,0
    .goto Stonetalon Mountains,65.42,54.15,50,0
    .goto Stonetalon Mountains,66.83,54.92,50,0
    .goto Stonetalon Mountains,68.64,54.03,50,0
    .goto Stonetalon Mountains,69.86,53.53,50,0
    .goto Stonetalon Mountains,70.34,56.41,50,0
    .goto Stonetalon Mountains,67.90,56.96,50,0
    .goto Stonetalon Mountains,66.25,56.64,50,0
    .goto Stonetalon Mountains,65.29,57.14,50,0
    .goto Stonetalon Mountains,64.27,57.63,50,0
    >>Tötet |cRXP_ENEMY_Holzarbeiter der Venture Co.|r
    .complete 1062,1 --Kill Venture Co. Logger (x15)
    .mob Venture Co. Logger
step
    #loop
    .goto Stonetalon Mountains,61.41,56.77,0
    .goto Stonetalon Mountains,59.25,61.55,30,0
    .goto Stonetalon Mountains,60.37,60.10,30,0
    .goto Stonetalon Mountains,61.34,59.15,30,0
    .goto Stonetalon Mountains,61.15,57.85,30,0
    .goto Stonetalon Mountains,61.41,56.77,30,0
    .goto Stonetalon Mountains,62.21,58.55,30,0
    .goto Stonetalon Mountains,63.12,60.02,30,0
    .goto Stonetalon Mountains,64.69,60.03,30,0
    .goto Stonetalon Mountains,62.76,61.69,30,0
    .goto Stonetalon Mountains,62.50,62.92,30,0
    .goto Stonetalon Mountains,62.48,64.15,30,0
    .goto Stonetalon Mountains,61.85,66.07,30,0
    .goto Stonetalon Mountains,60.71,66.12,30,0
    .goto Stonetalon Mountains,60.96,63.99,30,0
    .goto Stonetalon Mountains,60.25,63.21,30,0
    >>Sammelt die |cRXP_PICK_Spinneneier|r in der Nähe der Bäume
    >>|cRXP_WARN_Passt auf! Die|r |cRXP_ENEMY_Kluftmoosjungtier|r |cRXP_WARN_können einen Level-22|r |cRXP_ENEMY_Kluftmoosmatriarchin|r beschwören
    .complete 1069,1 --Collect Deepmoss Egg (x15)
step
	#completewith next
	+|cRXP_WARN_Falls ihr über 15 |cRXP_LOOT_Kluftmooseier|r|cRXP_WARN_ habt, teilt den Stapel auf (Umschalt + Klick),dann zerstört sie|r
    .itemcount 5570,16
step
    .goto Stonetalon Mountains,58.99,62.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ziz|r
    .turnin 1093 >> Gebt die Quest Superschnitter 6000 ab
    .accept 1094 >> Weitere Instruktionen annehmen
    .target Ziz Fizziks
step
    #loop
    .goto Stonetalon Mountains,59.04,73.01,0
    .goto Stonetalon Mountains,60.83,71.84,80,0
    .goto Stonetalon Mountains,59.04,73.01,80,0
    .goto Stonetalon Mountains,60.36,76.28,80,0
    .goto Stonetalon Mountains,61.47,81.51,80,0
    .goto Stonetalon Mountains,64.95,83.88,80,0
    .goto Stonetalon Mountains,68.59,88.34,80,0
    >>Beenden das töten von |cRXP_ENEMY_Kluftmooskrabbler|r
    >>|cRXP_WARN_Behaltet alle|r |T134339:0|t[Kleiner Giftbeutel] |cRXP_WARN_die ihr plündert|r << Rogue
    .complete 6461,1 --Kill Deepmoss Creeper (x10)
    .mob Deepmoss Creeper
step << Druid
    #completewith DruidTraining2
    .cast 18960 >>|cRXP_WARN_Wirkt |r|T135758:0|t[Teleportieren: Mondlichtung]
    .zoneskip Moonglade
step << Druid
    #optional
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Loganaar|r
    .train 1430 >>Trainiere deine Klassenfähigkeiten
    .target Loganaar
    .xp <18,1
    .xp >20,1
step << Druid
    #label DruidTraining2
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Loganaar|r
    .train 768 >>Trainiere deine Klassenfähigkeiten
    .target Loganaar
    .xp <20,1
step
    #completewith JornSkyseerTurnin
    .hs >>Ruhestein nach Camp Taurajo
    .use 6948
    .bindlocation 378,1
    .subzoneskip 378
step
    .goto The Barrens,45.58,59.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Byula|r
	.vendor >>|cRXP_BUY_Verkauft euren trash, dann füllt euer Essen und Trinken auf, wenn nötig|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Verkauft euren trash, dann füllt eure Nahrung auf, falls nötig|r << Rogue/Warrior
    .target Innkeeper Byula
    .isOnQuest 3261
step
    #label JornSkyseerTurnin
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Jorn Himmelsdeuter|r
    .turnin 3261 >>Gebt die Quest Jorn Skyseer ab
    .accept 882 >>Akzeptiert die Quest Ishamuhale
    .target Jorn Skyseer
step
	#completewith LakotaMani
    >>Kill |cRXP_ENEMY_Stormsnout|r. Loot them for a |cRXP_LOOT_Horn|r (NOT TRANSLATED IN :deDE YET)
    .complete 821,3 --Thunder Lizard Horn (1)
    .mob Stormsnout
step
    #completewith next
    >>Kill |cRXP_ENEMY_Bristleback Quilboars|r. Loot them for their |cRXP_LOOT_Tusks|r (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_WARN_Save the|r |T134128:0|t[|cRXP_LOOT_Blutsplitter|r] |cRXP_WARN_you get|r
	.complete 878,1 --Kill Bristleback Water Seeker (x6)
    .mob +Bristleback Water Seeker
    .complete 878,2 --Kill Bristleback Thornweaver (x12)
    .mob +Bristleback Thornweaver
    .complete 878,3 --Kill Bristleback Geomancer (x12)
    .mob +Bristleback Geomancer
    .complete 899,1 --Collect Bristleback Quilboar Tusk (x60)
    .mob +Bristleback Water Seeker
    .mob +Bristleback Thornweaver
    .mob +Bristleback Geomancer
step
    #label LakotaMani
    #loop
    .goto The Barrens,45.14,52.82,0
    .goto The Barrens,45.93,49.08,0
    .goto The Barrens,47.43,51.37,0
    .goto The Barrens,50.10,53.34,0
    .goto The Barrens,45.14,52.82,80,0
    .goto The Barrens,45.93,49.08,80,0
    .goto The Barrens,47.43,51.37,80,0
    .goto The Barrens,50.10,53.34,80,0
	>>Find & kill |cRXP_ENEMY_Lakota'mani|r (Gray Kodo) around this area. Loot him for |T132318:0|t[|cRXP_LOOT_Huf von Lakota'mani|r]. Use it to start the quest
    >>|cRXP_WARN_Skip this quest if you can't find him|r (NOT TRANSLATED IN :deDE YET)
	.collect 5099,1,883 --Collect Hoof of Lakota'Mani
	.accept 883 >>Akzeptiert die Quest Lakota'Mani
    .use 5099
    .unitscan Lakota'mani
step
    #completewith next
    >>Kill |cRXP_ENEMY_Stormsnout|r. Loot them for a |cRXP_LOOT_Horn|r (NOT TRANSLATED IN :deDE YET)
    .complete 821,3 --Thunder Lizard Horn (1)
    .mob Stormsnout
step
    #loop
    .goto The Barrens,50.71,54.60,0
    .goto The Barrens,50.71,54.60,60,0
    .goto The Barrens,50.74,55.33,60,0
    .goto The Barrens,50.73,56.78,60,0
    .goto The Barrens,50.42,57.23,60,0
    .goto The Barrens,50.50,57.65,60,0
    .goto The Barrens,50.87,57.50,60,0
    .goto The Barrens,51.26,57.84,60,0
    .goto The Barrens,51.74,57.69,60,0
    .goto The Barrens,51.79,57.10,60,0
    .goto The Barrens,53.08,54.69,60,0
    .goto The Barrens,53.65,54.27,60,0
    .goto The Barrens,53.63,53.53,60,0
    .goto The Barrens,53.35,52.72,60,0
    .goto The Barrens,53.00,51.83,60,0
    .goto The Barrens,52.62,52.19,60,0
    .goto The Barrens,52.59,52.71,60,0
    .goto The Barrens,52.41,53.07,60,0
    .goto The Barrens,52.32,53.71,60,0
    .goto The Barrens,51.39,54.22,60,0
    >>Kill |cRXP_ENEMY_Bristleback Quilboars|r. Loot them for their |cRXP_LOOT_Tusks|r (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_WARN_Save the|r |T134128:0|t[|cRXP_LOOT_Blutsplitter|r] |cRXP_WARN_you get|r
	.complete 878,1 --Kill Bristleback Water Seeker (x6)
    .mob +Bristleback Water Seeker
    .complete 878,2 --Kill Bristleback Thornweaver (x12)
    .mob +Bristleback Thornweaver
    .complete 878,3 --Kill Bristleback Geomancer (x12)
    .mob +Bristleback Geomancer
    .complete 899,1 --Collect Bristleback Quilboar Tusk (x60)
    .mob +Bristleback Water Seeker
    .mob +Bristleback Thornweaver
    .mob +Bristleback Geomancer
step << Warlock
    #xprate <1.5
    #loop
	.goto The Barrens,50.71,54.60,0
	.goto The Barrens,50.71,54.60,50,0
	.goto The Barrens,50.74,55.33,50,0
	.goto The Barrens,50.73,56.78,50,0
	.goto The Barrens,50.42,57.23,50,0
	.goto The Barrens,50.50,57.65,50,0
	.goto The Barrens,50.87,57.50,50,0
	.goto The Barrens,51.26,57.84,50,0
	.goto The Barrens,51.74,57.69,50,0
	.goto The Barrens,51.79,57.10,50,0
	.goto The Barrens,53.08,54.69,50,0
	.goto The Barrens,53.65,54.27,50,0
	.goto The Barrens,53.63,53.53,50,0
	.goto The Barrens,53.35,52.72,50,0
	.goto The Barrens,53.00,51.83,50,0
	.goto The Barrens,52.62,52.19,50,0
	.goto The Barrens,52.59,52.71,50,0
	.goto The Barrens,52.41,53.07,50,0
	.goto The Barrens,52.32,53.71,50,0
	.goto The Barrens,51.39,54.22,50,0
    .xp 19+11000 >> Farmt bis 11000+/21300 EXP
    --To ensure lvl 20 before ORG visit class q pickup
step << Warlock
    #xprate >1.49
    #loop
	.goto The Barrens,50.71,54.60,0
	.goto The Barrens,50.71,54.60,50,0
	.goto The Barrens,50.74,55.33,50,0
	.goto The Barrens,50.73,56.78,50,0
	.goto The Barrens,50.42,57.23,50,0
	.goto The Barrens,50.50,57.65,50,0
	.goto The Barrens,50.87,57.50,50,0
	.goto The Barrens,51.26,57.84,50,0
	.goto The Barrens,51.74,57.69,50,0
	.goto The Barrens,51.79,57.10,50,0
	.goto The Barrens,53.08,54.69,50,0
	.goto The Barrens,53.65,54.27,50,0
	.goto The Barrens,53.63,53.53,50,0
	.goto The Barrens,53.35,52.72,50,0
	.goto The Barrens,53.00,51.83,50,0
	.goto The Barrens,52.62,52.19,50,0
	.goto The Barrens,52.59,52.71,50,0
	.goto The Barrens,52.41,53.07,50,0
	.goto The Barrens,52.32,53.71,50,0
	.goto The Barrens,51.39,54.22,50,0
    .xp 19+700 >> Grind to 700+/21300 xp (NOT TRANSLATED IN :deDE YET)
    --To ensure lvl 20 before ORG visit class q pickup
step
    #loop
    .goto The Barrens,50.88,52.96,0
    .goto The Barrens,50.88,52.96,50,0
    .goto The Barrens,50.06,52.78,50,0
    .goto The Barrens,49.35,53.74,50,0
    .goto The Barrens,49.54,55.08,50,0
    .goto The Barrens,49.03,56.24,50,0
    .goto The Barrens,49.72,56.13,50,0
    >>Kill |cRXP_ENEMY_Stormsnout|r. Loot them for a |cRXP_LOOT_Horn|r (NOT TRANSLATED IN :deDE YET)
    .complete 821,3 --Thunder Lizard Horn (1)
    .mob Stormsnout
step
    #loop
    .goto The Barrens,53.98,51.68,0
    .goto The Barrens,53.98,51.68,50,0
    .goto The Barrens,54.10,50.58,50,0
    .goto The Barrens,53.85,49.76,50,0
    .goto The Barrens,54.32,49.38,50,0
    .goto The Barrens,54.82,49.00,50,0
    .goto The Barrens,55.23,47.96,50,0
    >>Beenden das töten von |cRXP_ENEMY_Ebenenschreitern|r. Plündert sie für ihre |cRXP_LOOT_Niere|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
step
    #loop
    .goto The Barrens,55.59,43.39,0
    .goto The Barrens,55.59,43.39,40,0
    .goto The Barrens,55.09,43.00,40,0
    .goto The Barrens,55.03,42.21,40,0
    .goto The Barrens,55.47,41.51,40,0
    .goto The Barrens,55.99,42.00,40,0
    .goto The Barrens,56.15,42.53,40,0
    .goto The Barrens,56.01,43.40,40,0
    >>Tötet |cRXP_ENEMY_Oasenschnappkiefer|r in und um den See herum. Plündert sie für ihre |cRXP_LOOT_Veränderte Schnappkieferschale|r
    .complete 880,1 --Altered Snapjaw Shell (8)
    .mob Oasis Snapjaw
step
    #completewith next
    >>Tötet jedes |cRXP_ENEMY_Zhevra|r. Plündert sie für ein |cRXP_LOOT_Frischer Zhevra-Kadaver|r
	.collect 10338,1 --Collect Fresh Zhevra Carcass
    .mob Zhevra Charger
step
    .goto The Barrens,59.87,30.41
    .use 10338 >>|cRXP_WARN_Use the|r |T134368:0|t[|cRXP_LOOT_Fresh Zhevra Carcass|r] |cRXP_WARN_at the dead tree|r (NOT TRANSLATED IN :deDE YET)
    >>Kill |cRXP_ENEMY_Ishamuhale|r as he spawns. Loot him for his |cRXP_LOOT_Fang|r (NOT TRANSLATED IN :deDE YET)
    .complete 882,1 --Ishamuhale's Fang (1)
    .mob Ishamuhale
step
    #completewith BootyTurnin
    .goto The Barrens,63.00,36.42,100 >> Run to Ratschet
step << Rogue
    .goto The Barrens,63.07,36.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Wrenix|r
    .turnin 2381 >>Gebt die Quest Das Ausplündern der Plünderer ab
    .target Wrenix the Wretched
step
    #label BootyTurnin
    .goto The Barrens,62.68,36.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gazlowe|r
    .turnin 888 >>Gebt die Quest Gestohlene Beute ab
    .target Gazlowe
step
    #xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sputtervalve|r, |cRXP_FRIENDLY_Mebok|r und |cRXP_FRIENDLY_Drohn|r
    .turnin 1094 >>Gebt die Quest Weitere Instruktionen ab
    .accept 1095 >>Weitere Instruktionen annehmen
    .target +Sputtervalve
    .goto The Barrens,62.98,37.22
    .turnin 865 >>Gebt die Quest Raptorhörner ab
    .turnin 1069 >>Gebt die Quest Eier der Kluftmoosspinnen ab
    .accept 1491 >>Akzeptiert die Quest Klugheitstränke
    .target +Mebok Mizzyrix
    .goto The Barrens,62.37,37.62
    .turnin 821 >>Gebt die Quest Chens leeres Fässchen ab
    --.accept 822 >>Accept Chen's Empty Keg
    .target +Brewmaster Drohn
    .goto The Barrens,62.27,38.39
step
    #xprate >1.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sputtervalve|r, |cRXP_FRIENDLY_Mebok|r und |cRXP_FRIENDLY_Drohn|r
    .turnin 1094 >>Gebt die Quest Weitere Instruktionen ab
    .accept 1095 >>Weitere Instruktionen annehmen
    .target +Sputtervalve
    .goto The Barrens,62.98,37.22
    .turnin 865 >>Gebt die Quest Raptorhörner ab
    .turnin 1069 >>Gebt die Quest Eier der Kluftmoosspinnen ab
    .target +Mebok Mizzyrix
    .goto The Barrens,62.37,37.62
    .turnin 821 >>Gebt die Quest Chens leeres Fässchen ab
    --.accept 822 >>Accept Chen's Empty Keg
    .target +Brewmaster Drohn
    .goto The Barrens,62.27,38.39
step
    .goto The Barrens,62.05,39.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gastwirt Wiley|r
    .home >>Setzt euren Ruhestein in Ratschet
    .target Innkeeper Wiley
    .bindlocation 392
    .dungeon WC
step << Warrior/Paladin
    .goto The Barrens,62.20,38.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grazlix|r
    .vendor >>Buy |T134583:0|t[|cRXP_FRIENDLY_Mighty Chain Pants|r] from him if it's available (NOT TRANSLATED IN :deDE YET)
    .target Grazlix
    .money <0.619
    .itemStat 7,ITEM_MOD_ARMOR_SHORT,<155
    .equip 9,4800
step << Rogue/Hunter/Warrior/Shaman/Druid
    .goto The Barrens,62.16,38.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Vexspindle|r
    .vendor >> Buy |T132603:0|t[|cRXP_FRIENDLY_Wolf Bracers|r] from him if they're available (NOT TRANSLATED IN :deDE YET)
    .target Vexspindle
    .money <0.3515
    .itemStat 9,ITEM_MOD_ARMOR_SHORT,<37
    .equip 9,4794
step << Warrior/Paladin
    #optional
    #completewith FlytoXroads
    +|cRXP_WARN_Legt die|r |T134583:0|t[|cRXP_FRIENDLY_Mächtige Kettenhose|r] an
    .use 4800
    .itemcount 4800,1
    .itemStat 7,ITEM_MOD_ARMOR_SHORT,<155
    .equip 7,4800
step << Rogue/Hunter/Warrior/Shaman/Druid
    #optional
    #completewith FlytoXroads
    +|cRXP_WARN_Legt die|r |T132603:0|t[|cRXP_FRIENDLY_Wolf-Armschienen|r] an
    .use 4794
    .itemcount 4794,1
    .itemStat 9,ITEM_MOD_ARMOR_SHORT,<37
    .equip 9,4794
step
    #xprate <1.5
    .goto The Barrens,63.09,37.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bigglefuzz|r
    .accept 959 >>Ärger auf den Docks annehmen
    .target Crane Operator Bigglefuzz
step
    #xprate >1.49
    .goto The Barrens,63.09,37.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bigglefuzz|r
    .accept 959 >>Ärger auf den Docks annehmen
    .target Crane Operator Bigglefuzz
    .dungeon WC
step
    #label FlytoXroads
    #completewith XroadsHS2
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Bragok|r
    .fly Crossroads >>Fliege nach Das Wegekreuz
    .target Bragok
    .subzoneskip 380
step
    .goto The Barrens,51.62,30.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Darsok|r
    >>|cRXP_WARN_Er ist an der Spitze des Turms|r
    .turnin 876 >>Gebt die Quest Serena Blutfeder ab
    .accept 1060 >>Akzeptiert die Quest Brief an Jin'Zil
    .target Darsok Swiftdagger
step
    #label XroadsHS2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mankrik|r und |cRXP_FRIENDLY_Tonga|r
    .turnin 899 >>Gebt die Quest Von Hass zerfressen ab
    .target +Mankrik
    .goto The Barrens,51.95,31.58
    .turnin 880 >>Gebt die Quest Veränderte Wesen ab
    .accept 1489 >>Akzeptiert die Quest Hamuul Runentotem
    .accept 3301 >>Akzeptiert die Quest Mura Runentotem
    .target +Tonga Runetotem
    .goto The Barrens,52.26,31.93
step
    #completewith TribesTurnin
    .destroy 5085 >>|cRXP_WARN_Zerstört jeden verbleibenden|r |T133721:0|t[Stacheleberhauer der Borstennacken] |cRXP_WARN_den ihr noch haben könntet|r
    .itemcount 5085,1
step << Warlock
    #completewith next
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Devrak|r
    .fly Orgrimmar >> Fliege nach Orgrimmar
    .zoneskip Orgrimmar
    .target Devrak
step << Warlock
    .goto Orgrimmar,48.25,45.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gan'rul|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .accept 1507 >>Akzeptiert die Quest Verschlinger der Seelen
    .target Gan'rul Bloodeye
step << Warlock
    .goto Orgrimmar,47.54,46.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kurgul|r und kauft |T133738:0|t[Zauberfoliant der Qual (Rang 2)]
    .collect 16346,1,1509,1 --Grimoire of Torment (Rank 2)
    .target Kurgul
step << Warlock
    .goto Orgrimmar,47.05,46.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Cazul|r
    .turnin 1507 >>Gebt die Quest Verschlinger der Seelen ab
    .accept 1508 >>Akzeptiert die Quest Der blinde Cazul
    .target Cazul
step << Warlock
    .goto Orgrimmar,44.16,48.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Katis|r|cRXP_BUY_. Kauft einen|r |T135139:0|t[Brennender Zauberstab] |cRXP_BUY_von ihr|r
    .collect 5210,1,1509,1 --Collect Burning Wand (1)
    .money <0.5808
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.4
    .target Katis
step << Warlock
    .goto Orgrimmar,37.03,59.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Zankaja|r
    .turnin 1508 >>Gebt die Quest Der blinde Cazul ab
    .accept 1509 >>Akzeptiert die Quest Neuigkeiten von Dogran
    .target Zankaja
step << Warlock
    #completewith TurninDogran
    .goto Orgrimmar,45.13,63.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Doras|r
	.fly Crossroads >> Fliege nach Das Wegekreuz
    .zoneskip Orgrimmar,1
    .subzoneskip 380
    .target Doras
step << Warlock
    #label TurninDogran
    .goto The Barrens,51.93,30.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gazrog|r
    .turnin 1509 >>Gebt die Quest Neuigkeiten von Dogran ab
    .accept 1510 >>Akzeptiert die Quest Neuigkeiten von Dogran
    .target Gazrog
step << !Tauren !Warrior !Shaman
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Helbrim|r
    >>|cRXP_FRIENDLY_Helbrim|r |cRXP_WARN_Startet eine 45-Minuten-Zeitquest|r
    .accept 853 >> Akzeptiert die Quest Apothekerin Zamah
    .target Apothecary Helbrim
    .isQuestTurnedIn 848
    .isQuestAvailable 853
step << !Tauren !Warrior !Shaman
    #sticky
    #completewith ZamahTurnin
    +|cRXP_WARN_Ihr seid auf einer zeitgesteuerten Quest, geht nicht afk. Sie wird 20-30 Minuten nach der Annahme automatisch abgegeben|r
    .isOnQuest 853
step
    #completewith TribesTurnin
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Devrak|r
    .fly Camp Taurajo >> Fliege nach Camp Taurajo
    .target Devrak
    .subzoneskip 378
step
    .goto The Barrens,44.55,59.27
    >>Tötet |cRXP_ENEMY_Stacheleber der Borstennacken|r. Plündert sie für einen |T134128:0|t[|cRXP_LOOT_Blutsplitter|r
    .collect 5075,1,5052,1 --Blood Shard (1)
    .mob Bristleback Water Seeker
    .mob Bristleback Thornweaver
    .mob Bristleback Geomancer
step
    #label TribesTurnin
    .goto The Barrens,44.55,59.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Quetschzahn|r
    .turnin 878 >>Gebt die Quest Stämme im Krieg ab
    .accept 5052 >>Akzeptiert die Quest Blutsplitter von Agamaggan
    .turnin 5052 >>Gebt die Quest Blutsplitter von Agamaggan ab
    .target Mangletooth
step
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Jorn Himmelsdeuter|r
    .turnin 882 >>Gebt die Quest Ishamuhale ab
    .accept 907 >>Akzeptiert die Quest Wütende Donnerechsen
    .turnin 883 >>Gebt die Quest Lakota'mani ab
    .target Jorn Skyseer
    .isOnQuest 883
step
    #label IshamuhaleTurnin
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Jorn Himmelsdeuter|r
    .turnin 882 >>Gebt die Quest Ishamuhale ab
    .accept 907 >>Akzeptiert die Quest Wütende Donnerechsen
    .target Jorn Skyseer
step
    #completewith next
    .goto The Barrens,44.63,62.71,0
    .goto The Barrens,45.78,63.09,0
    .goto The Barrens,49.57,59.36,0
    .goto The Barrens,49.21,61.42,0
    .goto The Barrens,44.63,62.71,80,0
    .goto The Barrens,45.78,63.09,80,0
    .goto The Barrens,49.21,61.42,80,0
    .goto The Barrens,49.57,59.36,80,0
    >>Tötet |cRXP_ENEMY_Owatanka|r. Plündert sie für |T133723:0|t[|cRXP_LOOT_Owatankas Schwanzstachel|r]
    >>|cRXP_WARN_Benutzt |T133723:0|t[|cRXP_LOOT_Owatankas Schwanzstachel|r] um die Quest zu starten|r
    >>|cRXP_WARN_Er hat 4 Spawnpunkte (auf der Karte markiert)|r
    .collect 5102,1,884,1 --Collect Owatanka's Tailspike
    .accept 884 >>Akzeptiert die Quest Owatanka
    .use 5102
    .unitscan Owatanka
step
    #loop
    .goto The Barrens,44.32,60.84,0
    .goto The Barrens,44.25,61.78,60,0
    .goto The Barrens,44.07,62.63,60,0
    .goto The Barrens,44.52,63.10,60,0
    .goto The Barrens,45.67,63.59,60,0
    .goto The Barrens,46.94,62.21,60,0
    .goto The Barrens,47.42,60.57,60,0
    .goto The Barrens,47.92,60.55,60,0
    .goto The Barrens,48.32,60.23,60,0
    .goto The Barrens,49.14,61.07,60,0
    .goto The Barrens,49.85,61.13,60,0
    .goto The Barrens,49.63,59.75,60,0
    .goto The Barrens,49.21,59.33,60,0
    .goto The Barrens,48.12,58.59,60,0
    .goto The Barrens,44.32,60.84,60,0
    >>Tötet |cRXP_ENEMY_Donnerechsen|r. Plündert sie für |cRXP_LOOT_Blut|r
    .complete 907,1 --Thunder Lizard Blood (3)
    .mob Thunderhead
    .mob Stormsnout
step
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Jorn|r
    .turnin 884 >>Gebt die Quest Owatanka ab
    .turnin 907 >>Gebt die Quest Wütende Donnerechsen ab
    .accept 913 >>Akzeptiert die Quest Der Ruf des Donnerfalken
    .target Jorn Skyseer
    .isOnQuest 884
step
    #label Thunderhawk
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Jorn|r
    .turnin 907 >>Gebt die Quest Wütende Donnerechsen ab
    .accept 913 >>Akzeptiert die Quest Der Ruf des Donnerfalken
    .target Jorn Skyseer
step
    #completewith next
    .goto The Barrens,44.63,62.71,0
    .goto The Barrens,45.78,63.09,0
    .goto The Barrens,49.57,59.36,0
    .goto The Barrens,49.21,61.42,0
    .goto The Barrens,44.63,62.71,80,0
    .goto The Barrens,45.78,63.09,80,0
    .goto The Barrens,49.21,61.42,80,0
    .goto The Barrens,49.57,59.36,80,0
    >>Tötet |cRXP_ENEMY_Owatanka|r. Plündert sie für |T133723:0|t[|cRXP_LOOT_Owatankas Schwanzstachel|r]
    >>|cRXP_WARN_Use |T133723:0|t[|cRXP_LOOT_Owatankas Schwanzstachel|r] to start the quest|r
    >>|cRXP_WARN_Er hat 4 Spawnpunkte (auf der Karte markiert)|r
    .collect 5102,1,884,1 --Collect Owatanka's Tailspike
    .accept 884 >>Akzeptiert die Quest Owatanka
    .use 5102
    .unitscan Owatanka
step
    #loop
    .goto The Barrens,44.83,63.12,0
    .goto The Barrens,44.83,63.12,60,0
    .goto The Barrens,46.57,61.33,60,0
    .goto The Barrens,48.99,58.69,60,0
    .goto The Barrens,45.45,56.69,60,0
    .goto The Barrens,43.41,56.96,60,0
    >>Tötet ein |cRXP_ENEMY_Donnerfalkenjungtier|r oder ein |cRXP_ENEMY_Donnerfalkenwolkenkitzler|r. Plündert sie für |cRXP_LOOT_Donnerfalkenflügel|r
    .complete 913,1 --Thunderhawk Wings (1)
    .mob Thunderhawk Hatchling
    .mob Thunderhawk Cloudscraper
step
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Jorn Himmelsdeuter|r
    .turnin 884 >>Gebt die Quest Owatanka ab
    .turnin 913 >>Gebt die Quest Der Ruf des Donnerfalken ab
    .accept 874 >>Akzeptiert die Quest Mahren Skyseer
    .target Jorn Skyseer
    .isOnQuest 884
step
    #label ThunderhawkTurnin
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Jorn Himmelsdeuter|r
    .turnin 913 >>Gebt die Quest Der Ruf des Donnerfalken ab
    .accept 874 >>Akzeptiert die Quest Mahren Skyseer
    .accept 6382 >>Akzeptiert die Quest Die Jagd im Eschental
    .target Jorn Skyseer
step << !Tauren !Shaman
    .goto The Barrens,44.55,59.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Quetschzahn|r
    .aura 16618 >>|cRXP_WARN_Falls ihr 10|r |T134128:0|t[|cRXP_LOOT_Blutsplitter|r übrig habt, benutzt sie, um|cRXP_WARN_ |T136022:0|t[Geist des Windes] |rvon|cRXP_WARN_ Quetschzahn|r |cRXP_FRIENDLY_zu erhalten|r
    >>|cRXP_WARN_Überspringen diesen Schritt, falls ihr die Donnerfels-Flugroute habt|r
    .itemcount 5075,10
    .train 5118,1 << Hunter --skips step if aspect of the cheetah trained
    .train 2645,1 << Shaman --skips this step if ghost wolf is trained
    .target Mangletooth
step << !Tauren !Shaman
    #completewith next
    .goto Mulgore,68.68,60.34,120,0
    .zone Mulgore >>Reist nach Mulgore
step << !Tauren !Shaman
    #completewith ZamahTurnin
    .goto Thunder Bluff,31.78,65.92
    .zone Thunder Bluff >>Nehmt den Aufzug nach Donnerfels
    >>|cRXP_WARN_Wenn ihr die Donnerfels Flugroute habt, fliegt stattdessen dorthin|r
step << Tauren/Shaman
    #completewith ZamahTurnin
    .goto The Barrens,44.45,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Omusa|r
    .fly Thunder Bluff >>Fliege nach Donnerfels
    .target Omusa Thunderhorn
    .zoneskip Thunder Bluff
step
    .goto Thunder Bluff,45.83,64.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gastwirtin Pala|r
    .home >>Setzt euren Ruhestein in Donnerfels
    .target Innkeeper Pala
    .dungeon !WC
    .bindlocation 1638
step
    .goto Thunder Bluff,47.12,57.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Chesmu|r
    .bankdeposit 5075 >>Packt eure |T134128:0|t[Blutsplitter] auf die Bank
    --.bankdeposit 5059 >>Deposit your |T132938:0|t[Digging Claw]
    .target Chesmu
step << Warrior !Tauren/Shaman/Paladin
    .goto Thunder Bluff,40.93,62.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ansekhwa|r
    .train 199 >>Erlernt Zweihandstreitkolben
    .target Ansekhwa
step << Troll Hunter/Orc Hunter/Warrior/Warlock/Priest
    .goto Thunder Bluff,40.93,62.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ansekhwa|r
    .train 227 >>Erlernt Stäbe
    .target Ansekhwa
step << Rogue
    .goto Thunder Bluff,40.93,62.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ansekhwa|r
    .train 198 >>Erlernt Streitkolben
    .target Ansekhwa
step << Rogue
    .goto Thunder Bluff,38.95,64.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Kuruk|r|cRXP_BUY_. Kauft |r |T135423:0|t[Tödliche Wurfaxt] |cRXP_BUY_von ihm|r
    .collect 25875,1,6562,1 --Deadly Throwing Axe (200)
    .target Kuruk
step
    #completewith ZamahTurnin
    .goto Thunder Bluff,28.14,32.97,40,0
    .goto Thunder Bluff,28.51,28.95,10 >>Reist zur Anhöhe der Geister und begebt euch zu den Teichen der Visionen
step
    #xprate <1.5
    #completewith ZamahTurnin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Clarice|r
    >>|cRXP_WARN_Sie patrouilliert herum|r
    .accept 264 >> Akzeptiert die Quest Bis dass der Tod uns scheidet
    .target Clarice Foster
step
    #xprate <1.5
    .goto Thunder Bluff,22.82,20.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Zamah|r
    .turnin 853 >> Gebt die Quest Apothekerin Zamah ab
    .accept 962 >> Akzeptiert die Quest Schlangenflaum
    .target Apothecary Zamah
    .isOnQuest 853
step
    #xprate <1.5
    #optional
    .goto Thunder Bluff,22.82,20.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Zamah|r
    .accept 962 >> Akzeptiert die Quest Schlangenflaum
    .target Apothecary Zamah
step
    #optional
    .goto Thunder Bluff,22.82,20.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Zamah|r
    .turnin 853 >> Gebt die Quest Apothekerin Zamah ab
    .target Apothecary Zamah
    .isOnQuest 853
step << Priest
    .goto Thunder Bluff,25.31,15.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Miles|r
    .accept 5644 >> Akzeptiert die Quest Verschlingende Seuche << Undead Priest
    .accept 5642 >> Akzeptiert die Quest Schattenwache << Troll Priest
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Miles Welsh
step << Mage
    .goto Thunder Bluff,22.74,14.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Shymm|r
    .train 12051 >> Trainiere deine Klassenfähigkeiten
    .target Archmage Shymm
    .xp <20,1
    .xp >22,1
step << Mage
    #optional
    .goto Thunder Bluff,22.74,14.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Shymm|r
    .train 2138 >> Trainiere deine Klassenfähigkeiten
    .target Archmage Shymm
    .xp <22,1
step
    #xprate <1.5
    .goto Thunder Bluff,28.55,25.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Clarice|r
    >>|cRXP_WARN_Sie patrouilliert herum|r
    .accept 264 >> Akzeptiert die Quest Bis dass der Tod uns scheidet
    .target Clarice Foster
step
    #optional
    #label ZamahTurnin
step << Shaman
    .goto Thunder Bluff,23.64,18.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Tigor|r
    .train 2645 >> Trainiere deine Klassenfähigkeiten
    .target Tigor Skychaser
    .xp <20,1
    .xp >22,1
step << Shaman
    #optional
    .goto Thunder Bluff,23.64,18.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Tigor|r
    .train 8498 >> Trainiere deine Klassenfähigkeiten
    .target Tigor Skychaser
    .xp <22,1
step << Shaman
    #optional
    .goto Thunder Bluff,25.21,20.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Xanis|r
    .accept 1529 >>Akzeptiert die Quest Ruf des Wassers
    .target Xanis Flameweaver
    .isQuestAvailable 1530
    .isNotOnQuest 1528,2985,2986
step
    #completewith next
    .skill firstaid,80 >> |cRXP_WARN_Stellt|r |T133688:0|t[Schwerer Leinenverband] |cRXP_WARN_bis euer skill auf 80 oder higher ist her|r
    .skill firstaid,<1,1
step
    .goto Thunder Bluff,29.68,21.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit|r |cRXP_FRIENDLY_Pand|r
    >>|cRXP_WARN_Überspringt diesen Schritt, wenn ihr nicht genug|r |T132889:0|t[Leinenstoff] |cRXP_WARN_hattet, um Skill 80 zu erreichen|r
    .train 3277 >> Erlernt |T133684:0|t[Wollverband]
    .train 7934 >> Erlernt |T134437:0|t[Gegengift] << Rogue
    .target Pand Stonebinder
    .skill firstaid,<1,1
step << Rogue
    >>|cRXP_WARN_Erstellt|r |T134437:0|t[Gegengift] |cRXP_WARN_falls ihr|r |T134339:0|t[Kleiner Giftbeutel]  gefunden habt 
    >>|cRXP_WARN_Behaltet sie für später|r
    .collect 6452,1 --Anti Venom
    .itemcount 1475,1
step
    #completewith WCRFCTUrnins
    .goto Thunder Bluff,69.88,30.90,80 >> Reist zur Anhöhe der Ältesten
step
    .goto Thunder Bluff,70.4,29.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rahauro|r
    .turnin 5724 >>Gebt die Quest Wiederbeschaffung des verloren gegangenen Ranzens ab
    .turnin 5723 >>Gebt die Quest Die Kraft des Feindes wird auf die Probe gestellt ab
    .target Rahauro
    .isOnQuest 5724
    .isQuestComplete 5723
    .dungeon RFC
step
    #optional
    .goto Thunder Bluff,70.4,29.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rahauro|r
    .turnin 5724 >>Gebt die Quest Wiederbeschaffung des verloren gegangenen Ranzens ab
    .target Rahauro
    .isOnQuest 5724
    .dungeon RFC
step
    #optional
    .goto Thunder Bluff,70.4,29.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rahauro|r
    .turnin 5723 >>Gebt die Quest Die Kraft des Feindes wird auf die Probe gestellt ab
    .target Rahauro
    .isQuestComplete 5723
    .dungeon RFC
step
    .goto Thunder Bluff,78.61,28.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Hamuul|r
    .turnin 1489 >> Gebt die Quest Hamuul Runentotem ab
    .accept 1490 >> Akzeptiert die Quest Nara Wildmane
    .target Arch Druid Hamuul Runetotem
    .dungeon WC << !Druid
step << Druid
    .goto Thunder Bluff,75.65,31.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Nara|r
    .turnin 1490 >> Gebt die Quest Nara Wildmane ab
    .target Nara Wildmane
    .dungeon !WC
step
    .goto Thunder Bluff,75.65,31.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Nara|r
    .turnin 1490 >> Gebt die Quest Nara Wildmane ab
    .accept 914 >> Akzeptiert die Quest Anführer der Giftzähne
    .target Nara Wildmane
    .dungeon WC
step
    #optional
    #label WCRFCTUrnins
step << Druid
    .goto Thunder Bluff,76.48,27.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Turak|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .accept 27 >> Akzeptiert die Quest Eine wertvolle Lektion
    .target Turak Runetotem
step << Druid
    #completewith next
    .cast 18960 >>|cRXP_WARN_Wirkt |r|T135758:0|t[Teleportieren: Mondlichtung]
    .zoneskip Moonglade
step << Druid
    .goto Moonglade,56.21,30.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dendrite|r
    .turnin 27 >> Gebt die Quest Eine wertvolle Lektion ab
    .accept 28 >> Akzeptiert die Quest Prüfung des Sees
    .target Dendrite Starblaze
step << Druid
    #completewith next
    .goto Moonglade,54.30,55.68
    .collect 15877,1,30,1 >>Loote the |cRXP_PICK_Schmuckstückbehälter|r at the bottom of the lake for a |T134125:0|t[|cRXP_LOOT_Shrine Bauble|r]
    >>|cRXP_WARN_Geht nicht unter Wasser, bis ihr direkt über dem Schmuckstück ankommt|r
step << Druid
    .goto Moonglade,36.40,42.01
    .cast 19719 >> |cRXP_WARN_Benutzt das|r |T134125:0|t[Schrein-Schmuckstück] |cRXP_WARN_beim Schrein von Remulos|r
    .complete 28,1 -- Complete the Trial of the Lake
    .use 15877
step << Druid
    .goto Moonglade,36.52,40.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tajarri|r
    .turnin 28 >> Gebt die Quest Prüfung des Sees ab
    .accept 30 >> Akzeptiert die Quest Prüfung des Seelöwen
    .target Tajarri
step << Druid
    .hs >> Ruhestein nach Donnerfels
    .use 6948
    .cooldown item,6948,>0
    .zoneskip Moonglade,1
    .bindlocation 1638,1
    .zoneskip Thunder Bluff
step << Druid
    .goto Moonglade,44.29,45.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bunthen|r
    .fly Thunder Bluff >> Fliege nach Donnerfels
    .target Bunthen Plainswind
    .cooldown item,6948,<0
    .zoneskip Moonglade,1
    .zoneskip Thunder Bluff
step
    .goto Thunder Bluff,54.96,51.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Zangen|r
    .accept 1195 >> Akzeptiert die Quest Die heilige Flamme
    .target Zangen Stonehoof
step
    #completewith next
    .goto Thunder Bluff,61.31,78.25,60 >> Reist zur Anhöhe der Jäger
step
    .goto Thunder Bluff,61.53,80.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Melor|r
    .accept 1131 >>Akzeptiert die Quest Stahlbiss
    .target Melor Stonehoof
step << Hunter
    .goto Thunder Bluff,59.13,86.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Urek|r
    .train 5118 >> Trainiere deine Klassenfähigkeiten
    .target Urek Thunderhorn
    .xp <20,1
    .xp >22,1
step << Hunter
    #optional
    .goto Thunder Bluff,59.13,86.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Urek|r
    .train 5118 >> Trainiere deine Klassenfähigkeiten
    .target Urek Thunderhorn
    .xp <22,1
step << Hunter
    .goto Thunder Bluff,54.07,84.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Hesuwa|r
    .train 24494 >> Erlernt eure Begleiterfähigkeiten
    .target Hesuwa Thunderhorn
step << Warrior
    .goto Thunder Bluff,57.27,87.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Torm|r
    .train 845 >> Trainiere deine Klassenfähigkeiten
    .accept 1823 >> Akzeptiert die Quest Gespräch mit Ruga
    .target Torm Ragetotem
step << Rogue
    .goto Thunder Bluff,53.00,56.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Kard|r|cRXP_BUY_. Kauft ein|r |T135324:0|t[Langschwert] |cRXP_BUY_von ihm.|r
    .collect 923,1,6562,1 --Collect Longsword (1)
    .money <0.8743
    .target Kard Ragetotem
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.1
step << Rogue
    #optional
    #completewith KayaLives
    +|cRXP_WARN_Legt das|r |T135324:0|t[Langschwert] an
    .use 923
    .itemcount 923,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.1
step << Warrior/Shaman/Paladin
    #completewith next
    #ah
    +|cRXP_FRIENDLY_Falls es billiger ist, könnt ihr stattdessen eine grüne Waffe vom Auktionshaus kaufen|r
step << Warrior/Paladin/Shaman
    .goto Thunder Bluff,53.21,58.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Etu|r|cRXP_BUY_. Buy a|r |T135423:0|t[Battle Axe] |cRXP_BUY_from him|r (NOT TRANSLATED IN :deDE YET)
    .collect 926,1,6562,1 --Collect Battle Axe (1)
    .money <1.021
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
    .target Etu Ragetotem
    .train 227,3
step << Warrior/Paladin/Shaman
    #optional
    #completewith KayaLives
    +Legt die |T135423:0|t[Streitaxt] |cRXP_WARN_an|r
    .use 926
    .itemcount 926,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
step << Hunter
    .goto Thunder Bluff,46.98,45.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Kuna|r|cRXP_BUY_. Kauft einen|r |T135489:0|t[Schwerer Doppelbogen] |cRXP_BUY_von ihr|r
    .collect 3027,1,6562,1 --Collect Heavy Recurve Bow (1)
    .money <0.5643
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.1
    .target Kuna Thunderhorn
step << Hunter
    #completewith KayaLives
    +|cRXP_WARN_Legt|r |T135489:0|t[Schwerer Doppelbogen] an
    .use 3027
    .itemcount 3027,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.1
step << Hunter
    .goto Thunder Bluff,46.98,45.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Kuna|r
    >>|cRXP_BUY_Kauft|r |T132382:0|t[Scharfe Pfeile] |cRXP_BUY_bei ihr|r
    .collect 2515,1600,6562,1 << Hunter --Sharp Arrow (1600)
    .target Kuna Thunderhorn
step
    #sticky
    #completewith EnterWC
    .subzone 718 >> Ihr solltet euch jetzt eine Gruppe für die Höhlen des Wehklagens suchen
    .dungeon WC
step
    #completewith Hezrul
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Tal|r
    .fly Crossroads >>Fliegt nach Kreuzweg
    .target Tal
    .subzoneskip 380
step
    #xprate <1.5
    .goto The Barrens,46.15,36.93,100 >> Reist zu den Höhlen des Wehklagens
    .isOnQuest 1491
step
    #xprate >1.49
    .goto The Barrens,46.15,36.93,100 >> Reist zu den Höhlen des Wehklagens
    .isOnQuest 1491
    .dungeon WC
step
    #xprate <1.5
    #completewith WCcavepickups
    .goto The Barrens,46.95,35.18,0
    .goto The Barrens,46.95,35.18,30,0
    .goto The Barrens,46.83,34.74,20,0
    .goto Kalimdor,51.98,55.36,20,0
    .goto Kalimdor,51.89,55.55,10,0
    .goto Kalimdor,51.87,55.50,10 >>Lauft den Berg hinauf am Versammlungsstein der Höhlen des Wehklagens
    >>|cRXP_WARN_Folgt dem Pfeil genau zur verborgenen Höhle|r
step
    #xprate <1.5
    .goto Kalimdor,51.91,55.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Nalpak|r
    >>|cRXP_WARN_Er befindet sich über dem Eingang der Höhlen des Wehklagens|r
    .accept 1486 >>Deviatbälge annehmen
    .target Nalpak
    .dungeon !WC
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Nalpak|r und |cRXP_FRIENDLY_Ebru|r
    >>|cRXP_WARN_Sie befinden sich über dem Eingang der Höhlen des Wehklagens|r
    .accept 1486 >> Deviatbälge annehmen
    .target +Nalpak
    .goto Kalimdor,51.91,55.42
    .accept 1487 >> Ausrottung der Deviat annehmen
    .target +Ebru
    .goto Kalimdor,51.92,55.44
    .dungeon WC
step
    #optional
    #label WCcavepickups
step
    #xprate <1.5
    #optional
    #completewith EnterWC
    >>Sammelt |cRXP_PICK_Schlangenflaum|r vom Boden
    >>|cRXP_WARN_Wirkt|r |T133939:0|t[Kräutersuche] |cRXP_WARN_um sie auf der Minikarte von euch zu sehen|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .isOnQuest 962
step
    #xprate <1.5
    #completewith EnterWC
    >>Sammelt |cRXP_PICK_Schlangenflaum|r vom Boden
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
step
    #xprate <1.5
    #completewith EnterWC
    >>Kill |cRXP_ENEMY_Deviate Beasts|r. Loote sie für ihre |cRXP_LOOT_Ausblenden|r
    >>Tötet |cRXP_ENEMY_Ektoplasma|r. Plündert sie für ihr |cRXP_LOOT_Klageessenz|r
    .complete 1486,1 --Deviate Hide (20)
    .mob +Deviate Slayer
    .mob +Deviate Stinglash
    .complete 1491,1 --Wailing Essence (6)
    .mob +Devouring Ectoplasm
step
    #xprate <1.5
    #label MadMagg
    #loop
    .goto Kalimdor,51.97,55.23,0
    .goto Kalimdor,51.82,54.86,0
    .goto Kalimdor,52.01,55.02,0
    .goto Kalimdor,52.15,55.15,0
    .goto Kalimdor,51.97,55.23,30,0
    .goto Kalimdor,51.82,54.86,30,0
    .goto Kalimdor,52.01,55.02,30,0
    .goto Kalimdor,52.15,55.15,30,0
    >>Tötet |cRXP_ENEMY_Zausel der Verrückte|r. Plündert ihn für |cRXP_LOOT_99 Jahre alter Portwein|r
    >>|cRXP_WARN_He is stealthed and has multiple spawn locations|r (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_WARN_Er hat eine lange Respawn-Zeit. Überspringt diesen Schritt, wenn ihr ihn nicht finden könnt|r
    .complete 959,1 --99-Year-Old Port (1)
    .mob Mad Magglish
    .isOnQuest 959
step
    #xprate >1.49
    #optional
    #completewith EnterWC
    >>Sammelt |cRXP_PICK_Schlangenflaum|r vom Boden
    >>|cRXP_WARN_Wirkt|r |T133939:0|t[Kräutersuche] |cRXP_WARN_um sie auf der Minikarte von euch zu sehen|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .isOnQuest 962
    .dungeon WC
step
    #xprate >1.49
    #completewith EnterWC
    >>Sammelt |cRXP_PICK_Schlangenflaum|r vom Boden
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
    .dungeon WC
step
    #xprate >1.49
    #completewith EnterWC
    >>Kill |cRXP_ENEMY_Deviate Beasts|r. Loote sie für ihre |cRXP_LOOT_Ausblenden|r
    >>Tötet |cRXP_ENEMY_Ektoplasma|r. Plündert sie für ihr |cRXP_LOOT_Klageessenz|r
    .complete 1486,1 --Deviate Hide (20)
    .mob +Deviate Slayer
    .mob +Deviate Stinglash
    .complete 1491,1 --Wailing Essence (6)
    .mob +Devouring Ectoplasm
    .dungeon WC
step
    #xprate >1.49
    #label MadMagg
    #loop
    .goto Kalimdor,51.97,55.23,0
    .goto Kalimdor,51.82,54.86,0
    .goto Kalimdor,52.01,55.02,0
    .goto Kalimdor,52.15,55.15,0
    .goto Kalimdor,51.97,55.23,30,0
    .goto Kalimdor,51.82,54.86,30,0
    .goto Kalimdor,52.01,55.02,30,0
    .goto Kalimdor,52.15,55.15,30,0
    >>Tötet |cRXP_ENEMY_Zausel der Verrückte|r. Plündert ihn für |cRXP_LOOT_99 Jahre alter Portwein|r
    >>|cRXP_WARN_He is stealthed and has multiple spawn locations|r (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_WARN_Er hat eine lange Respawn-Zeit. Überspringt diesen Schritt, wenn ihr ihn nicht finden könnt|r
    .complete 959,1 --99-Year-Old Port (1)
    .mob Mad Magglish
    .isOnQuest 959
    .dungeon WC
step
    .goto Kalimdor,51.89,54.77,20,0
    .goto Kalimdor,51.95,54.56,20,0
    .goto Kalimdor,52.27,54.65,30,0
    .goto Kalimdor,52.40,55.20,30 >> Betretet das HDW-Instanzportal. Tretet ein
    .dungeon WC
step
    #optional
    #label EnterWC
step
    #optional
    #hardcore
    #completewith DeviateRaptors
    >>Sammelt |cRXP_PICK_Schlangenflaum|r vom Boden
    >>|cRXP_WARN_Es wird empfohlen, dass maximal 3 Spieler diese Quest versuchen zu vollenden, wenn ihr nur 1 Durchlauf macht. Es gibt nicht genug|r |cRXP_PICK_Schlangenflaum|r |cRXP_WARN_für alle|r
    >>|cRXP_WARN_Wirkt|r |T133939:0|t[Kräutersuche] |cRXP_WARN_um sie auf der Minikarte von euch zu sehen|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .isOnQuest 962
    .dungeon WC
step
    #optional
    #hardcore
    #completewith DeviateRaptors
    >>Sammelt |cRXP_PICK_Schlangenflaum|r vom Boden
    >>|cRXP_WARN_Es wird empfohlen, dass maximal 3 Spieler diese Quest versuchen zu vollenden, wenn ihr nur 1 Durchlauf macht. Es gibt nicht genug|r |cRXP_PICK_Schlangenflaum|r |cRXP_WARN_für alle|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
    .dungeon WC
step
    #optional
    #softcore
    #completewith DeviateRaptors
    >>Sammelt |cRXP_PICK_Schlangenflaum|r vom Boden
    >>|cRXP_WARN_Wirkt|r |T133939:0|t[Kräutersuche] |cRXP_WARN_um sie auf der Minikarte von euch zu sehen|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .isOnQuest 962
    .dungeon WC
step
    #optional
    #softcore
    #completewith DeviateRaptors
    >>Sammelt |cRXP_PICK_Schlangenflaum|r vom Boden
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
    .dungeon WC
step
    #completewith DeviateRaptors
    >>Tötet |cRXP_ENEMY_Ektoplasma|r. Plündert sie für ihr |cRXP_LOOT_Klageessenz|r
    .complete 1491,1 --Wailing Essence (6)
    .isOnQuest 1491
    .dungeon WC
step
    #completewith GlowingShard
    >>Tötet |cRXP_ENEMY_Deviatverheerer|r, |cRXP_ENEMY_Deviatviper|r, |cRXP_ENEMY_Deviatschlurfer|r und |cRXP_ENEMY_Deviatschreckensfang|r
    .complete 1487,1 --Deviate Ravager (7)
    .mob +Deviate Ravager
    .complete 1487,2 --Deviate Viper (7)
    .mob +Deviate Viper
    .complete 1487,3 --Deviate Shambler (7)
    .mob +Deviate Shambler
    .complete 1487,4 --Deviate Dreadfang (7)
    .mob +Deviate Dreadfang
    .complete 1486,1 --Deviate Hide (20)
    .disablecheckbox
    .isOnQuest 1487
    .dungeon WC
step
    #label Gems
    >>Tötet |cRXP_ENEMY_Lord Kobrahn|r, |cRXP_ENEMY_Lady Anacondra|r, |cRXP_ENEMY_Lord Pythas|r und |cRXP_ENEMY_Lord Serpentis|r. Plündert sie für ihre |cRXP_LOOT_Edelsteine|r
    .complete 914,1 --Gem of Cobrahn (1)
    .mob +Lord Cobrahn
    .complete 914,2 --Gem of Anacondra (1)
    .mob +Lady Anacondra
    .complete 914,3 --Gem of Pythas (1)
    .mob +Lord Pythas
    .complete 914,4 --Gem of Serpentis (1)
    .mob +Lord Serpentis
    .isOnQuest 914
    .dungeon WC
step
    #requires Gems
    #completewith next
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Muyoh|r beim Eingang der Höhlen des Wehklagens. Begleitet ihn sicher zu |cRXP_FRIENDLY_Naralex|r
    .target Disciple of Naralex
    .skipgossip
    .dungeon WC
step
    #label GlowingShard
    >>Sobald ihr |cRXP_FRIENDLY_Naralex|r erreicht habt, werdet ihr von zwei Wellen Feinden angegriffen und schließlich von |cRXP_ENEMY_Mutanus der Verschlinger|r
    >>Tötet ihn und plündert |T135229:0|t[|cRXP_LOOT_Der leuchtende Splitter|r] von ihm und benutzt ihn, um die Quest zu starten
    .collect 10441,1 --Collect Glowing Shard (x1)
    .accept 6981 >> Der leuchtende Splitter annehmen
    .use 10441
    .mob Mutanus the Devourer
    .dungeon WC
step
    #label DeviateRaptors
    >>Tötet |cRXP_ENEMY_Deviatverheerer|r, |cRXP_ENEMY_Deviatviper|r, |cRXP_ENEMY_Deviatschlurfer|r und |cRXP_ENEMY_Deviatschreckensfang|r
    .complete 1487,1 --Deviate Ravager (7)
    .mob +Deviate Ravager
    .complete 1487,2 --Deviate Viper (7)
    .mob +Deviate Viper
    .complete 1487,3 --Deviate Shambler (7)
    .mob +Deviate Shambler
    .complete 1487,4 --Deviate Dreadfang (7)
    .mob +Deviate Dreadfang
    .complete 1486,1 --Deviate Hide (20)
    .disablecheckbox
    .isOnQuest 1487
    .dungeon WC
step
    #optional
    #completewith EssenceHides
    +|cRXP_WARN_The rest of these quests can be finished outside of the wailing caverns instance portal|r (NOT TRANSLATED IN :deDE YET)
    .dungeon WC
step
    #xprate <1.5
    #optional
    #completewith EssenceHides
    >>Sammelt |cRXP_PICK_Schlangenflaum|r vom Boden
    >>|cRXP_WARN_Wirkt|r |T133939:0|t[Kräutersuche] |cRXP_WARN_um sie auf der Minikarte von euch zu sehen|r
    >>|cRXP_WARN_This quest can be skipped if there is too much competition|r (NOT TRANSLATED IN :deDE YET)
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
step
    #xprate <1.5
    #optional
    #completewith EssenceHides
    >>Sammelt |cRXP_PICK_Schlangenflaum|r vom Boden
    >>|cRXP_WARN_This quest can be skipped if there is too much competition|r (NOT TRANSLATED IN :deDE YET)
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
step
    #xprate <1.5
    #label EssenceHides
    #loop
    .goto Kalimdor,52.21,54.62,0
    .goto Kalimdor,51.93,54.93,30,0
    .goto Kalimdor,51.87,54.76,30,0
    .goto Kalimdor,52.05,54.52,30,0
    .goto Kalimdor,52.21,54.62,30,0
    .goto Kalimdor,52.57,54.49,30,0
    .goto Kalimdor,52.77,54.82,30,0
    .goto Kalimdor,52.52,55.04,30,0
    .goto Kalimdor,52.32,55.03,30,0
    .goto Kalimdor,52.33,54.70,30,0
    >>Kill |cRXP_ENEMY_Deviate Beasts|r. Loot them for their |cRXP_LOOT_Hides|r (NOT TRANSLATED IN :deDE YET)
    >>Tötet |cRXP_ENEMY_Ektoplasma|r. Plündert sie für ihr |cRXP_LOOT_Klageessenz|r
    .complete 1486,1 --Deviate Hide (20)
    .mob +Deviate Slayer
    .mob +Deviate Stinglash
    .complete 1491,1 --Wailing Essence (6)
    .mob +Devouring Ectoplasm
step
    #xprate <1.5
    #optional
    #loop
    .goto Kalimdor,52.05,54.52,0
    .goto Kalimdor,51.93,54.93,30,0
    .goto Kalimdor,51.87,54.76,30,0
    .goto Kalimdor,52.05,54.52,30,0
    .goto Kalimdor,52.21,54.62,30,0
    .goto Kalimdor,52.57,54.49,30,0
    .goto Kalimdor,52.77,54.82,30,0
    .goto Kalimdor,52.52,55.04,30,0
    .goto Kalimdor,52.32,55.03,30,0
    .goto Kalimdor,52.33,54.70,30,0
    >>Sammelt |cRXP_PICK_Schlangenflaum|r vom Boden
    >>|cRXP_WARN_Wirkt|r |T133939:0|t[Kräutersuche] |cRXP_WARN_um sie auf der Minikarte von euch zu sehen|r
    >>|cRXP_WARN_This quest can be skipped if there is too much competition|r (NOT TRANSLATED IN :deDE YET)
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
step
    #xprate <1.5
    #label SerpBlooms
    #loop
    .goto Kalimdor,52.05,54.52,0
    .goto Kalimdor,51.93,54.93,30,0
    .goto Kalimdor,51.87,54.76,30,0
    .goto Kalimdor,52.05,54.52,30,0
    .goto Kalimdor,52.21,54.62,30,0
    .goto Kalimdor,52.57,54.49,30,0
    .goto Kalimdor,52.77,54.82,30,0
    .goto Kalimdor,52.52,55.04,30,0
    .goto Kalimdor,52.32,55.03,30,0
    .goto Kalimdor,52.33,54.70,30,0
    >>Sammelt |cRXP_PICK_Schlangenflaum|r vom Boden
    >>|cRXP_WARN_This quest can be skipped if there is too much competition|r (NOT TRANSLATED IN :deDE YET)
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
step
    #xprate >1.49
    #optional
    #completewith EssenceHides
    >>Sammelt |cRXP_PICK_Schlangenflaum|r vom Boden
    >>|cRXP_WARN_Wirkt|r |T133939:0|t[Kräutersuche] |cRXP_WARN_um sie auf der Minikarte von euch zu sehen|r
    >>|cRXP_WARN_This quest can be skipped if there is too much competition|r (NOT TRANSLATED IN :deDE YET)
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .dungeon WC
step
    #xprate >1.49
    #optional
    #completewith EssenceHides
    >>Sammelt |cRXP_PICK_Schlangenflaum|r vom Boden
    >>|cRXP_WARN_This quest can be skipped if there is too much competition|r (NOT TRANSLATED IN :deDE YET)
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .dungeon WC
step
    #xprate >1.49
    #label EssenceHides
    #loop
    .goto Kalimdor,52.21,54.62,0
    .goto Kalimdor,51.93,54.93,30,0
    .goto Kalimdor,51.87,54.76,30,0
    .goto Kalimdor,52.05,54.52,30,0
    .goto Kalimdor,52.21,54.62,30,0
    .goto Kalimdor,52.57,54.49,30,0
    .goto Kalimdor,52.77,54.82,30,0
    .goto Kalimdor,52.52,55.04,30,0
    .goto Kalimdor,52.32,55.03,30,0
    .goto Kalimdor,52.33,54.70,30,0
    >>Kill |cRXP_ENEMY_Deviate Beasts|r. Loot them for their |cRXP_LOOT_Hides|r (NOT TRANSLATED IN :deDE YET)
    >>Tötet |cRXP_ENEMY_Ektoplasma|r. Plündert sie für ihr |cRXP_LOOT_Klageessenz|r
    .complete 1486,1 --Deviate Hide (20)
    .mob +Deviate Slayer
    .mob +Deviate Stinglash
    .complete 1491,1 --Wailing Essence (6)
    .mob +Devouring Ectoplasm
    .dungeon WC
step
    #xprate >1.49
    #optional
    #loop
    .goto Kalimdor,52.05,54.52,0
    .goto Kalimdor,51.93,54.93,30,0
    .goto Kalimdor,51.87,54.76,30,0
    .goto Kalimdor,52.05,54.52,30,0
    .goto Kalimdor,52.21,54.62,30,0
    .goto Kalimdor,52.57,54.49,30,0
    .goto Kalimdor,52.77,54.82,30,0
    .goto Kalimdor,52.52,55.04,30,0
    .goto Kalimdor,52.32,55.03,30,0
    .goto Kalimdor,52.33,54.70,30,0
    >>Sammelt |cRXP_PICK_Schlangenflaum|r vom Boden
    >>|cRXP_WARN_Wirkt|r |T133939:0|t[Kräutersuche] |cRXP_WARN_um sie auf der Minikarte von euch zu sehen|r
    >>|cRXP_WARN_This quest can be skipped if there is too much competition|r (NOT TRANSLATED IN :deDE YET)
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .dungeon WC
step
    #xprate >1.49
    #label SerpBlooms
    #loop
    .goto Kalimdor,52.05,54.52,0
    .goto Kalimdor,51.93,54.93,30,0
    .goto Kalimdor,51.87,54.76,30,0
    .goto Kalimdor,52.05,54.52,30,0
    .goto Kalimdor,52.21,54.62,30,0
    .goto Kalimdor,52.57,54.49,30,0
    .goto Kalimdor,52.77,54.82,30,0
    .goto Kalimdor,52.52,55.04,30,0
    .goto Kalimdor,52.32,55.03,30,0
    .goto Kalimdor,52.33,54.70,30,0
    >>Sammelt |cRXP_PICK_Schlangenflaum|r vom Boden
    >>|cRXP_WARN_This quest can be skipped if there is too much competition|r (NOT TRANSLATED IN :deDE YET)
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .dungeon WC
step
    #completewith GShard
    .hs >> Ruhestein nach Ratschet
    .use 6948
    .dungeon WC
    .bindlocation 392,1
    .subzoneskip 392
step
    .goto The Barrens,62.37,37.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Mebok|r
    .turnin 1491 >>Gebt die Quest Klugheitstränke ab
    .target Mebok Mizzyrix
    .isQuestComplete 1491
    .dungeon WC
step
    .goto The Barrens,63.09,37.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bigglefuzz|r
    .turnin 959 >> Gebt die Quest Ärger auf den Docks ab
    .target Crane Operator Bigglefuzz
    .isQuestComplete 959
    .dungeon WC
step
    #label GShard
    .goto The Barrens,62.99,37.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Sputtervalve|r
    .complete 6981,1 --Speak with someone in Ratchet about the Glowing Shard
    .skipgossip
    .target Sputtervalve
    .isOnQuest 6981
    .dungeon WC
step << Shaman
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Islen|r und |cRXP_FRIENDLY_Mahren Himmelsdeuter|r
    .turnin 1529 >>Gebt die Quest Ruf des Wassers ab
    .accept 1530 >>Akzeptiert die Quest Ruf des Wassers
    .target +Islen Waterseer
    .goto The Barrens,65.83,43.78
    .turnin 874 >>Turn in Mahren Skyseer (NOT TRANSLATED IN :deDE YET)
    .accept 873 >>Accept Isha Awak (NOT TRANSLATED IN :deDE YET)
    .target +Mahren Skyseer
    .goto The Barrens,65.83,43.86
    .isOnQuest 1529
    .dungeon WC
step << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Islen|r und |cRXP_FRIENDLY_Mahren Himmelsdeuter|r
    .turnin 1528 >>Gebt die Quest Ruf des Wassers ab
    .accept 1530 >>Akzeptiert die Quest Ruf des Wassers
    .target +Islen Waterseer
    .goto The Barrens,65.83,43.78
    .turnin 874 >>Turn in Mahren Skyseer (NOT TRANSLATED IN :deDE YET)
    .accept 873 >>Accept Isha Awak (NOT TRANSLATED IN :deDE YET)
    .target +Mahren Skyseer
    .goto The Barrens,65.83,43.86
    .isOnQuest 1528
    .dungeon WC
step << Shaman
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Islen|r und |cRXP_FRIENDLY_Mahren Himmelsdeuter|r
    .accept 1530 >>Akzeptiert die Quest Ruf des Wassers
    .target +Islen Waterseer
    .goto The Barrens,65.83,43.78
    .turnin 874 >>Turn in Mahren Skyseer (NOT TRANSLATED IN :deDE YET)
    .accept 873 >>Accept Isha Awak (NOT TRANSLATED IN :deDE YET)
    .target +Mahren Skyseer
    .goto The Barrens,65.83,43.86
    .isQuestTurnedIn 1529
    .dungeon WC
step << Shaman
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Islen|r und |cRXP_FRIENDLY_Mahren Himmelsdeuter|r
    .accept 1530 >>Akzeptiert die Quest Ruf des Wassers
    .target +Islen Waterseer
    .goto The Barrens,65.83,43.78
    .turnin 874 >>Turn in Mahren Skyseer (NOT TRANSLATED IN :deDE YET)
    .accept 873 >>Accept Isha Awak (NOT TRANSLATED IN :deDE YET)
    .target +Mahren Skyseer
    .goto The Barrens,65.83,43.86
    .isQuestTurnedIn 1528
    .dungeon WC
step
    #completewith WCTurnins
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Bragok|r
    .fly Crossroads >> Fliege nach Das Wegekreuz
    .target Bragok
    .subzoneskip 392,1
    .isQuestComplete 1486
    .dungeon WC
step
    #completewith next
    .goto The Barrens,50.49,34.36,20,0
    .goto The Barrens,49.61,34.54,20,0
    .goto The Barrens,49.14,34.02,20,0
    .goto The Barrens,48.18,32.78,50 >> Reist den Berg hinauf
    .dungeon WC
step
    .goto The Barrens,48.18,32.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Falla|r
    .turnin 6981 >> Gebt die Quest Der leuchtende Splitter ab
    .accept 3369 >> Akzeptiert die Quest Alptraum
    .target Falla Sagewind
    .isOnQuest 6981
    .dungeon WC
step
    .goto The Barrens,48.18,32.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Falla|r
    .accept 3369 >> Akzeptiert die Quest Alptraum
    .target Falla Sagewind
    .isQuestTurnedIn 6981
    .dungeon WC
step
    .goto Kalimdor,51.92,55.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ebru|r
    >>|cRXP_WARN_Er befindet sich über dem Eingang der Höhlen des Wehklagens|r
    .turnin 1487 >> Gebt die Quest Ausrottung der Deviat ab
    .target Ebru
    .isQuestComplete 1487
    .dungeon WC
step
    #xprate <1.5
    .goto Kalimdor,51.91,55.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Nalpak|r
    >>|cRXP_WARN_Er befindet sich über dem Eingang der Höhlen des Wehklagens|r
    .turnin 1486 >>Gebt die Quest Deviatbälge ab
    .target Nalpak
    .isQuestComplete 1486
step
    #xprate >1.49
    .goto Kalimdor,51.91,55.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Nalpak|r
    >>|cRXP_WARN_Er befindet sich über dem Eingang der Höhlen des Wehklagens|r
    .turnin 1486 >>Gebt die Quest Deviatbälge ab
    .target Nalpak
    .isQuestComplete 1486
    .dungeon WC
step << skip
    #completewith next
    >>Tötet |cRXP_ENEMY_Kolkar|r rund um die Oase. Plündert sie für ihre |cRXP_LOOT_Armschienen|r
    .complete 855,1 --Centaur Bracers (15)
    .mob Kolkar Bloodcharger
    .mob Kolkar Pack runner
    .mob Kolkar Marauder
    .isOnQuest 855
step
    #loop
    #label Hezrul
    .goto The Barrens,45.64,38.16,0
    .goto The Barrens,45.64,38.16,50,0
    .goto The Barrens,45.84,37.86,50,0
    .goto The Barrens,45.78,37.41,50,0
    .goto The Barrens,45.95,37.11,50,0
    .goto The Barrens,45.93,36.91,50,0
    .goto The Barrens,46.14,36.85,50,0
    .goto The Barrens,46.19,36.88,50,0
    .goto The Barrens,46.28,36.86,50,0
    .goto The Barrens,46.46,37.17,50,0
    .goto The Barrens,46.58,37.31,50,0
    .goto The Barrens,46.63,37.93,50,0
    .goto The Barrens,46.75,38.39,50,0
    .goto The Barrens,47.27,38.98,50,0
    .goto The Barrens,47.47,39.27,50,0
    .goto The Barrens,48.20,39.57,50,0
    .goto The Barrens,48.40,39.58,50,0
    .goto The Barrens,48.60,39.51,50,0
    .goto The Barrens,48.54,39.96,50,0
    .goto The Barrens,48.58,40.52,50,0
    .goto The Barrens,48.27,40.82,50,0
    .goto The Barrens,48.06,40.82,50,0
    .goto The Barrens,47.86,41.13,50,0
    .goto The Barrens,47.49,41.33,50,0
    .goto The Barrens,47.34,41.61,50,0
    .goto The Barrens,47.22,41.64,50,0
    .goto The Barrens,46.85,42.05,50,0
    .goto The Barrens,46.56,41.93,50,0
    .goto The Barrens,46.27,41.76,50,0
    .goto The Barrens,46.03,41.15,50,0
    .goto The Barrens,45.86,41.32,50,0
    .goto The Barrens,46.09,40.98,50,0
    .goto The Barrens,46.08,40.68,50,0
    .goto The Barrens,45.71,40.56,50,0
    .goto The Barrens,45.64,38.16,50,0
    >>Findet und tötet |cRXP_ENEMY_Hezrul Blutmal|r. Plündert ihn für seinen |cRXP_LOOT_Kopf|r
    >>|cRXP_ENEMY_Hezrul|r |cRXP_WARN_patrouilliert um den See herum|r
    .complete 852,1 --Hezrul's Head
    .unitscan Hezrul Bloodmark
    .isQuestTurnedIn 851
step
    #completewith CounterattackComplete
    .abandon 855 >> Brecht die Quest Zentaurenarmschienen ab, wenn ihr nicht genug Loot bekommen habt
    .itemcount 5030,<5 --Centaur Bracers (5)
step
    #optional
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Regthar|r
    .turnin 852 >>Gebt die Quest Hezrul Blutmal ab
    .turnin 855 >>Gebt die Quest Zentaurenarmschienen ab
    .target Regthar Deathgate
    .isQuestComplete 852
    .isQuestComplete 855
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Regthar|r
    .turnin 852 >>Gebt die Quest Hezrul Blutmal ab
    .target Regthar Deathgate
    .isQuestComplete 852
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Regthar|r
    .turnin 855 >>Gebt die Quest Zentaurenarmschienen ab
    .target Regthar Deathgate
    .isQuestComplete 855
step
    #softcore
    #completewith CounterattackComplete
    +|cRXP_WARN_Diese Quest ist sehr schwer & Gruppenbildung wird empfohlen. Ihr könnt |cRXP_ENEMY_Kriegsherr Krom'zar|r um das Gebäude herum führen, in dem sich der Questgeber befindet|r
    .isQuestTurnedIn 852
step
    #hardcore
    #completewith CounterattackComplete
    +|cRXP_WARN_Diese Quest ist sehr schwer & Gruppenbildung wird empfohlen. Ihr könnt |cRXP_ENEMY_Kriegsherr Krom'zar|r um das Gebäude herum führen, in dem sich der Questgeber befindet|r
    >>|cRXP_WARN_There is a high risk of dying when solo and not familiar with this quest|r (NOT TRANSLATED IN :deDE YET)
    .isQuestTurnedIn 852
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Regthar|r
    .accept 4021 >>Akzeptiert die Quest Gegenangriff!
    .target Regthar Deathgate
    --.timer 183,Warlord Krom'zar Spawn
    .isQuestTurnedIn 852
    --timer is random, generally somewhere between 120-210 seconds
step
    #label CounterattackComplete
    .goto The Barrens,44.48,28.15
    >>Tötet |cRXP_ENEMY_Kriegsherr Krom'zar|r, sobald er erscheint. Plündert die |cRXP_PICK_Flagge|r, welche er auf dem Boden fallen lässt
    >>|cRXP_WARN_Seid vorsichtig! Er ist ein starker Elite und wird von mindestens zwei|r |cRXP_ENEMY_Kolkar|r |cRXP_WARN_mobs|r beschützt
    >>|cRXP_WARN_Es kann bis zu 3 Minuten dauern, bis er erscheint|r
    .complete 4021,1 --Piece of Krom'zar's Banner (1)
    .unitscan Warlord Krom'zar
    .isOnQuest 4021
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Regthar|r
    .turnin 4021 >>Gebt die Quest Gegenangriff ab
    .target Regthar Deathgate
    .isQuestComplete 4021
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Regthar|r
    .turnin 855 >>Gebt die Quest Zentaurenarmschienen ab
    .target Regthar Deathgate
    .isQuestComplete 855
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Regthar|r
    .turnin 4021 >>Gebt die Quest Gegenangriff ab
    .target Regthar Deathgate
    .isQuestComplete 4021
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Regthar|r
    .turnin 855 >>Gebt die Quest Zentaurenarmschienen ab
    .target Regthar Deathgate
    .isQuestComplete 855
step
    #completewith next
    .zone Stonetalon Mountains >> Reist ins Steinkrallengebirge
    .zoneskip Stonetalon Mountains
step
    #map Stonetalon Mountains
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Seereth|r und |cRXP_FRIENDLY_Makaba|r
    .turnin 1062 >>Gebt die Quest Goblin-Eindringlinge ab
    .timer 4,Goblineindringlinge RP
    .accept 1063 >>Akzeptiert die Quest Die Ältestengreisin
    .target +Seereth Stonebreak
    .goto The Barrens,35.26,27.88
    .turnin 6629 >>Gebt die Quest Tötet Grundig Finsterwolke ab
    .turnin 6523 >>Gebt die Quest Schützt Kaya ab
    .accept 6401 >>Akzeptiert die Quest Kaya lebt
    .target +Makaba Flathoof
    .goto The Barrens,35.19,27.79
step
    #completewith BloodFeedersTI
    .goto Stonetalon Mountains,82.57,98.63,60,0
    .goto Stonetalon Mountains,80.10,98.20,40,0
    .goto Stonetalon Mountains,77.17,98.61,40 >> Folgt dem Pfad auf der linken Seite
step
    .goto Stonetalon Mountains,74.54,97.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Jin'Zil|r
    .turnin 1060 >> Gebt die Quest Brief an Jin'Zil ab
    .target Witch Doctor Jin'Zil
step << Warlock
    .goto Stonetalon Mountains,73.25,95.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ken'zigla|r
    .turnin 1510 >>Gebt die Quest Neuigkeiten von Dogran ab
    .accept 1511 >>Akzeptiert die Quest Ken'ziglas Trunk
    .target Ken'zigla
step
    #label BloodFeedersTI
    .goto Stonetalon Mountains,71.25,95.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Xen'Zilla|r
    .turnin 6461 >>Gebt die Quest Blutfresser ab
    .target Xen'Zilla
step
    #xprate >1.49
    .goto Stonetalon Mountains,58.99,62.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ziz|r
    .turnin 1095 >>Gebt die Quest Weitere Instruktionen ab
    .target Ziz Fizziks
    .dungeon !BFD
step
    #completewith next
    .goto Stonetalon Mountains,51.40,61.14,50,0
    .goto Stonetalon Mountains,49.96,61.04
    .subzone 460 >>Reist nach Sonnenfels
step
    .goto Stonetalon Mountains,47.47,62.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gastwirt Jayka|r
	.vendor >>|cRXP_BUY_Verkauft euren trash, dann füllt euer Essen und Trinken auf, wenn nötig|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Verkauft euren trash, dann füllt eure Nahrung auf, falls nötig|r << Rogue/Warrior
    .target Innkeeper Jayka
    .isQuestAvailable 6641
step
    .goto Stonetalon Mountains,47.61,61.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jeeda|r auf der zweiten Etage des Gasthauses
    .vendor >>|cRXP_BUY_Kauft|r |T134831:0|t[Heiltränke] |cRXP_BUY_von ihr, wenn sie verfügbar sind|r << !Warrior
    .vendor >>|cRXP_BUY_Kauft|r |T134831:0|t[Heiltränke] |cRXP_BUY_und|r |T134413:0|t[Lebenswurz] |cRXP_BUY_von ihr, wenn sie verfügbar sind|r << Warrior
    .target Jeeda
    .isQuestAvailable 6641
step
    .goto Stonetalon Mountains,47.20,61.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Maggran|r
	.turnin 6284 >>Gebt die Quest Arachnophobie ab
    .target Maggran Earthbinder
step
    .goto Stonetalon Mountains,47.46,58.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Tammra|r
    .turnin 6401 >>Gebt die Quest Kaya lebt ab
    .target Tammra Windfield
step
    #label SRRFP
    .goto Stonetalon Mountains,45.13,59.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Tharm|r
    .fp Sun Rock Retreat >>Erlernt die Flugroute nach Sonnenfels
    .target Tharm
    .subzoneskip 460,1
step
    #xprate <1.5
    #completewith next
    .goto Stonetalon Mountains,49.38,61.68,30,0
    .goto Stonetalon Mountains,48.92,62.71,30,0
    .goto Stonetalon Mountains,48.11,63.88,30,0
    .goto Stonetalon Mountains,47.21,64.05,30 >> Lauft den Pfad nach rechts hinauf
step
    #xprate <1.5
    #label Tsunaman1
    .goto Stonetalon Mountains,47.36,64.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Tsunaman|r
    .accept 6562 >>Akzeptiert die Quest Ärger in der Tiefe
    .target Tsunaman
step
    #xprate <1.5
    .goto Stonetalon Mountains,58.99,62.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ziz|r
    .turnin 1095 >>Gebt die Quest Weitere Instruktionen ab
    .target Ziz Fizziks
step
    #xprate <1.5
    #completewith next
    .goto Stonetalon Mountains,78.29,42.51,30 >> Betretet den Steinkrallenpfad
step
    #xprate <1.5
	#completewith ZoramFP
    .goto Ashenvale,34.14,53.61,50,0
    .goto Ashenvale,18.43,32.94,50,0
    .goto Ashenvale,11.96,34.28,80 >>Reist zum Außenposten von Zoram'gar
    .subzoneskip 2897
    >>|cRXP_WARN_Vermeidet die Astranaar-Wachen unterwegs. Folgt dem Waypoint für Sicherheit|r
    .unitscan Astranaar Sentinel
step
    #xprate <1.5
    #label ZoramFP
    .goto Ashenvale,12.24,33.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Andruk|r
    .fp Zoram'gar Outpost >> Erlernt die Flugroute zum Außenposten von Zoram'gar
    .target Andruk
    .isQuestAvailable 6442
step
    #xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Je'neu|r, |cRXP_FRIENDLY_Karang|r, |cRXP_FRIENDLY_Mitsuwa|r und |cRXP_FRIENDLY_Marukai|r
    .turnin 6562 >>Gebt die Quest Ärger in der Tiefe ab
    .accept 6563 >>Akzeptiert die Quest Die Essenz von Aku'mai
    .accept 6921 >>Akzeptiert die Quest Inmitten der Ruinen
    .target +Je'neu Sancrea
    .goto Ashenvale,11.56,34.29
    .accept 216 >>Akzeptiert die Quest Hart auf hart
    .target +Karang Amakkar
    .goto Ashenvale,11.90,34.53
    .accept 6462 >>Akzeptiert die Quest Troll-Glücksbringer
    .target +Mitsuwa
    .goto Ashenvale,11.65,34.85
    .accept 6442 >>Akzeptiert die Quest Die Naga am Zoramstrand
    .target +Marukai
    .goto Ashenvale,11.69,34.90
    .dungeon BFD
step
    #xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Je'neu|r, |cRXP_FRIENDLY_Karang|r, |cRXP_FRIENDLY_Mitsuwa|r und |cRXP_FRIENDLY_Marukai|r
    .turnin 6562 >>Gebt die Quest Ärger in der Tiefe ab
    .accept 6563 >>Akzeptiert die Quest Die Essenz von Aku'mai
    .target +Je'neu Sancrea
    .goto Ashenvale,11.56,34.29
    .accept 216 >>Akzeptiert die Quest Hart auf hart
    .target +Karang Amakkar
    .goto Ashenvale,11.90,34.53
    .accept 6462 >>Akzeptiert die Quest Troll-Glücksbringer
    .target +Mitsuwa
    .goto Ashenvale,11.65,34.85
    .accept 6442 >>Akzeptiert die Quest Die Naga am Zoramstrand
    .target +Marukai
    .goto Ashenvale,11.69,34.90
    .dungeon !BFD
step
    #xprate <1.5
    #softcore
    .goto Ashenvale,12.06,34.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Muglash|r
    >>|cRXP_WARN_Dies wird ein Eskortenquest starten. Seid vorsichtig, da es schwierig ist|r
    .accept 6641,1 >> Akzeptiert die Quest Vorsha die Peitscherin
    .target Muglash
step
    #xprate <1.5
    #hardcore
    .goto Ashenvale,12.06,34.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Muglash|r
    >>|cRXP_WARN_This will start an escort quest. Be VERY careful! |cRXP_ENEMY_Vorsha|r hits very hard. Grouping up is recommended|r (NOT TRANSLATED IN :deDE YET)
    .accept 6641,1 >> Akzeptiert die Quest Vorsha die Peitscherin
    .target Muglash
step
    #xprate <1.5
    #completewith next
    >>Tötet |cRXP_ENEMY_Rächerflossen Nagas|r. Plündert sie für ihre |cRXP_LOOT_Köpfe|r
    .complete 6442,1 --Wrathtail Head (20)
    .mob Wrathtail Razortail
    .mob Wrathtail Wave Rider
    .mob Wrathtail Sorceress
    .mob Wrathtail Sea Witch
    .mob Wrathtail Priestess
    .mob Wrathtail Myrmidon
    .mob Lady Vespia
step
    #xprate <1.5
    #softcore
    .goto Ashenvale,9.63,27.63
    >>Klickt das |cRXP_PICK_Kohlenbecken|r an, wenn ihr dort ankommt
    >>|cRXP_WARN_Es werden Wellen von|r |cRXP_ENEMY_Naga|r |cRXP_WARN_auftauchen. Seid vorsichtig, wenn|r |cRXP_ENEMY_Vorsha|r |cRXP_WARN_erscheint, seine hits sind sehr stark|r
    >>|cRXP_WARN_Let|r |cRXP_FRIENDLY_Muglash|r |cRXP_WARN_get some aggro before attacking |cRXP_ENEMY_Vorsha|r!|r (NOT TRANSLATED IN :deDE YET)
    .complete 6641,1 --Defeat Vorsha the Lasher
    .mob Vorsha the Lasher
step
    #xprate <1.5
    #hardcore
    .goto Ashenvale,9.63,27.63
    >>Klickt das |cRXP_PICK_Kohlenbecken|r an, wenn ihr dort ankommt
    >>|cRXP_WARN_Es werden Wellen von|r |cRXP_ENEMY_Naga|r |cRXP_WARN_auftauchen. Seid vorsichtig, wenn|r |cRXP_ENEMY_Vorsha|r |cRXP_WARN_erscheint, seine hits sind sehr stark|r
    >>|cRXP_WARN_Let|r |cRXP_FRIENDLY_Muglash|r |cRXP_WARN_get some aggro before fighting him!|r (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_WARN_Be ready to use cooldowns and potions as |cRXP_ENEMY_Vorsha|r could crit you for high damage!|r (NOT TRANSLATED IN :deDE YET)
    .complete 6641,1 --Defeat Vorsha the Lasher
    .mob Vorsha the Lasher
step
    #xprate <1.5
    #sticky
    #completewith EnterBFD
    .subzone 2797,2 >> Now you should be looking for a group to BlackFathom Deeps (NOT TRANSLATED IN :deDE YET)
    .dungeon BFD
step
    #xprate <1.5
    #loop
    .goto Ashenvale,10.86,26.99,0
    .goto Ashenvale,10.86,26.99,50,0
    .goto Ashenvale,11.23,25.73,50,0
    .goto Ashenvale,11.83,25.75,50,0
    .goto Ashenvale,12.51,24.09,50,0
    .goto Ashenvale,14.18,24.03,50,0
    .goto Ashenvale,14.85,23.08,50,0
    .goto Ashenvale,14.13,20.77,50,0
    .goto Ashenvale,14.73,19.56,50,0
    .goto Ashenvale,14.59,17.90,50,0
    .goto Ashenvale,13.38,16.39,50,0
    .goto Ashenvale,13.62,14.48,50,0
    .goto Ashenvale,14.15,15.31,50,0
    .goto Ashenvale,15.88,15.42,50,0
    .goto Ashenvale,15.40,16.96,50,0
    .goto Ashenvale,15.22,18.81,50,0
    .goto Ashenvale,15.33,20.78,50,0
    .goto Ashenvale,15.33,22.51,50,0
    .goto Ashenvale,15.32,24.90,50,0
    .goto Ashenvale,14.76,25.52,50,0
    .goto Ashenvale,14.62,26.49,50,0
    .goto Ashenvale,14.52,28.25,50,0
    .goto Ashenvale,13.55,29.36,50,0
    .goto Ashenvale,12.41,29.15,50,0
    .goto Ashenvale,11.22,31.04,50,0
    .goto Ashenvale,10.38,29.60,50,0
    .goto Ashenvale,11.01,28.57,50,0
    >>Tötet |cRXP_ENEMY_Rächerflossen Nagas|r. Plündert sie für ihre |cRXP_LOOT_Köpfe|r
    .complete 6442,1 --Wrathtail Head (20)
    .mob Wrathtail Razortail
    .mob Wrathtail Wave Rider
    .mob Wrathtail Sorceress
    .mob Wrathtail Sea Witch
    .mob Wrathtail Priestess
    .mob Wrathtail Myrmidon
    .mob Lady Vespia
step
    #xprate <1.5
    #completewith Sapphires
    .goto Kalimdor,43.98,35.30,40 >>Reist zum Eingang der Tiefschwarzen Grotte
step
    #xprate <1.5
    #completewith next
    >>Plündert |cRXP_LOOT_Saphir von Aku'mai|r von der Wand
    .complete 6563,1 --Sapphire of Aku'Mai (20)
step
    #xprate <1.5
    #loop
    .goto Kalimdor,43.94,34.86,0
    .goto Kalimdor,43.81,35.16,20,0
    .goto Kalimdor,43.94,34.86,20,0
    .goto Kalimdor,43.90,34.59,20,0
    .goto Kalimdor,44.00,34.57,20,0
    .goto Kalimdor,44.16,34.85,20,0
    .goto Kalimdor,44.35,34.97,20,0
    .goto Kalimdor,44.53,34.86,20,0
    >>Tötet |cRXP_ENEMY_Blackfathom-Gezeitenpriesterin|r. Plündert sie für ein |T134332:0|t[|cRXP_LOOT_Feuchte Notiz|r], und benutzt sie, um die Quest zu starten
    .collect 16790,1,6564 --Collect Damp Note (1)
    .accept 6564 >> Akzeptiert die Quest Treue zu den Alten Göttern
    .mob Blackfathom Tide Priestess
    .use 16790
step
    #xprate <1.5
    #completewith EnterBFD
    .goto Ashenvale,11.56,34.29,0
    >>|cRXP_WARN_Optionally talk to|r |cRXP_FRIENDLY_Je'neu Sancrea|r |cRXP_WARN_back at Zoram'gar Outpost to get another BFD follow-up quest|r (NOT TRANSLATED IN :deDE YET)
    .turnin 6564 >>Gebt die Quest Treue zu den Alten Göttern ab
    .accept 6565 >>Akzeptiert die Quest Treue zu den Alten Göttern
    .target Je'neu Sancrea
    .dungeon BFD
step
    #xprate <1.5
    #label Sapphires
    #loop
    .goto Kalimdor,44.34,35.11,0
    .goto Kalimdor,44.53,34.86,20,0
    .goto Kalimdor,44.35,34.97,20,0
    .goto Kalimdor,44.16,34.85,20,0
    .goto Kalimdor,44.00,34.57,20,0
    .goto Kalimdor,43.90,34.59,20,0
    .goto Kalimdor,43.94,34.86,20,0
    .goto Kalimdor,43.81,35.16,20,0
    .goto Kalimdor,44.34,35.11,20,0
    >>Plündert |cRXP_LOOT_Saphir von Aku'mai|r von der Wand
    .complete 6563,1 --Sapphire of Aku'Mai (20
step
    #xprate >1.49
    #completewith next
    .goto Stonetalon Mountains,49.38,61.68,30,0
    .goto Stonetalon Mountains,48.92,62.71,30,0
    .goto Stonetalon Mountains,48.11,63.88,30,0
    .goto Stonetalon Mountains,47.21,64.05,30 >> Lauft den Pfad nach rechts hinauf
    .dungeon BFD
step
    #xprate >1.49
    #label Tsunaman1
    .goto Stonetalon Mountains,47.36,64.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Tsunaman|r
    .accept 6562 >>Akzeptiert die Quest Ärger in der Tiefe
    .target Tsunaman
    .dungeon BFD
step
    #xprate >1.49
    .goto Stonetalon Mountains,58.99,62.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ziz|r
    .turnin 1095 >>Gebt die Quest Weitere Instruktionen ab
    .target Ziz Fizziks
    .dungeon BFD
step
    #xprate >1.49
    #sticky
    #completewith EnterBFD
    .subzone 2797,2 >> Now you should be looking for a group to BlackFathom Deeps (NOT TRANSLATED IN :deDE YET)
    .dungeon BFD
step
    #xprate >1.49
    #completewith next
    .goto Stonetalon Mountains,78.29,42.51,30 >> Betretet den Steinkrallenpfad
    .dungeon BFD
step
    #xprate >1.49
	#completewith ZoramFP
    .goto Ashenvale,34.14,53.61,50,0
    .goto Ashenvale,18.43,32.94,50,0
    .goto Ashenvale,11.96,34.28,80 >>Reist zum Außenposten von Zoram'gar
    .subzoneskip 2897
    >>|cRXP_WARN_Vermeidet die Astranaar-Wachen unterwegs. Folgt dem Waypoint für Sicherheit|r
    .unitscan Astranaar Sentinel
    .dungeon BFD
step
    #xprate >1.49
    #label ZoramFP
    .goto Ashenvale,12.24,33.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Andruk|r
    .fp Zoram'gar Outpost >> Erlernt die Flugroute zum Außenposten von Zoram'gar
    .target Andruk
    .isQuestAvailable 6442
    .dungeon BFD
step
    #xprate >1.49
    .goto Ashenvale,11.56,34.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Je'neu|r (NOT TRANSLATED IN :deDE YET)
    .turnin 6562 >>Gebt die Quest Ärger in der Tiefe ab
    .accept 6563 >>Akzeptiert die Quest Die Essenz von Aku'mai
    .accept 6921 >>Akzeptiert die Quest Inmitten der Ruinen
    .target Je'neu Sancrea
    .dungeon BFD
step
    #xprate >1.49
    #completewith Sapphires
    .goto Kalimdor,43.98,35.30,40 >>Reist zum Eingang der Tiefschwarzen Grotte
    .dungeon BFD
step
    #xprate >1.49
    #completewith next
    >>Plündert |cRXP_LOOT_Saphir von Aku'mai|r von der Wand
    .complete 6563,1 --Sapphire of Aku'Mai (20)
    .dungeon BFD
step
    #xprate >1.49
    #loop
    .goto Kalimdor,43.94,34.86,0
    .goto Kalimdor,43.81,35.16,20,0
    .goto Kalimdor,43.94,34.86,20,0
    .goto Kalimdor,43.90,34.59,20,0
    .goto Kalimdor,44.00,34.57,20,0
    .goto Kalimdor,44.16,34.85,20,0
    .goto Kalimdor,44.35,34.97,20,0
    .goto Kalimdor,44.53,34.86,20,0
    >>Tötet |cRXP_ENEMY_Blackfathom-Gezeitenpriesterin|r. Plündert sie für ein |T134332:0|t[|cRXP_LOOT_Feuchte Notiz|r], und benutzt sie, um die Quest zu starten
    .collect 16790,1,6564 --Collect Damp Note (1)
    .accept 6564 >> Akzeptiert die Quest Treue zu den Alten Göttern
    .mob Blackfathom Tide Priestess
    .use 16790
    .dungeon BFD
step
    #xprate >1.49
    #completewith EnterBFD
    .goto Ashenvale,11.56,34.29,0
    >>|cRXP_WARN_Optionally talk to|r |cRXP_FRIENDLY_Je'neu Sancrea|r |cRXP_WARN_back at Zoram'gar Outpost to get another BFD follow-up quest|r (NOT TRANSLATED IN :deDE YET)
    .turnin 6564 >>Gebt die Quest Treue zu den Alten Göttern ab
    .accept 6565 >>Akzeptiert die Quest Treue zu den Alten Göttern
    .target Je'neu Sancrea
    .dungeon BFD
step
    #xprate >1.49
    #label Sapphires
    #loop
    .goto Kalimdor,44.34,35.11,0
    .goto Kalimdor,44.53,34.86,20,0
    .goto Kalimdor,44.35,34.97,20,0
    .goto Kalimdor,44.16,34.85,20,0
    .goto Kalimdor,44.00,34.57,20,0
    .goto Kalimdor,43.90,34.59,20,0
    .goto Kalimdor,43.94,34.86,20,0
    .goto Kalimdor,43.81,35.16,20,0
    .goto Kalimdor,44.34,35.11,20,0
    >>Plündert |cRXP_LOOT_Saphir von Aku'mai|r von der Wand
    .complete 6563,1 --Sapphire of Aku'Mai (20
    .dungeon BFD
step
    #label EnterBFD
    .goto Kalimdor,44.36,34.86
    .subzone 2797,2 >> Macht euren Weg zur Tiefschwarzen Grotte. Betretet sie
    .dungeon BFD
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Späher Thaelrid|r
    .accept 6561 >>Schurkerei in der Tiefschwarzen Grotte annehmen
    .target Argent Guard Thaelrid
    .dungeon BFD
step
    >>Tötet |cRXP_ENEMY_Lorgus Jett|r
    .complete 6565,1 --Lorgus Jett slain (1)
    .mob Lorgus Jett
    .isOnQuest 6565
    .dungeon BFD
step
    #completewith next
    >>Plündert den |cRXP_PICK_Fathom Stein|r im Wasser auf dem Boden für den |cRXP_LOOT_Fathomkern|r
    >>|cRXP_WARN_Das Plündern wird|r Baron Aquanis|cRXP_ENEMY_ beschwören|r
    .complete 6921,1 --Fathom Core (1)
    .isOnQuest 6921
    .dungeon BFD
step
    >>Tötet |cRXP_ENEMY_Baron Aquanis|r. Plündert ihn für eine |T136222:0|t[|cRXP_LOOT_Seltsame Wasserkugel|r]. Benutzt sie, um die Quest zu akzeptieren
    .collect 16782,1,6782 --Strange Water Globe (1)
    .accept 6922 >>Akzeptiert die Quest Baron Aquanis
    .mob Baron Aquanis
    .use 16782
    .dungeon BFD
step
    >>Plündert den |cRXP_PICK_Fathom Stein|r im Wasser auf dem Boden für den |cRXP_LOOT_Fathomkern|r
    .complete 6921,1 --Fathom Core (1)
    .isOnQuest 6921
    .dungeon BFD
step
    >>Tötet |cRXP_ENEMY_Twilight-Lord Kelris|r. Plündert ihn für seinen |cRXP_LOOT_Kopf|r
    .complete 6561,1 --Head of Kelris (1)
    .mob Twilight Lord Kelris
    .isOnQuest 6561
    .dungeon BFD
step
    #completewith BFDTurnins
    .zone Ashenvale >>Exit the dungeon (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_WARN_Tötet|r |cRXP_ENEMY_Aku'mai|r |cRXP_WARN_zuerst, wenn ihr möchtet. Dies ist der letzte Boss des Dungeons|r
    .dungeon BFD
step
    #xprate <1.5
    #optional
    #completewith ZoramTurnins
    .subzone 2897 >>Travel to Zoram'gar Outpost (NOT TRANSLATED IN :deDE YET)
step
    #xprate >1.49
    #optional
    #completewith ZoramTurnins
    .subzone 2897 >>Travel to Zoram'gar Outpost (NOT TRANSLATED IN :deDE YET)
    .dungeon BFD
step
    #xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Warsongläufer|r und |cRXP_FRIENDLY_Marukai|r
    .turnin 6641 >>Gebt die Quest Vorsha die Peitscherin ab
    .goto Ashenvale,12.22,34.21
    .target +Warsong Runner
    .turnin 6442 >>Gebt die Quest Die Naga am Zoramstrand ab
    .target +Marukai
    .goto Ashenvale,11.69,34.90
step
    #xprate <1.5
    .goto Ashenvale,11.56,34.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 6563 >>Gebt die Quest Die Essenz von Aku'mai ab
    .turnin 6564 >>Gebt die Quest Treue zu den Alten Göttern ab
    .target Je'neu Sancrea
step
    .goto Ashenvale,11.56,34.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 6565 >>Gebt die Quest Treue zu den Alten Göttern ab
    .target Je'neu Sancrea
    .dungeon BFD
    .isQuestComplete 6565
step
    .goto Ashenvale,11.56,34.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 6921 >>Gebt die Quest Inmitten der Ruinen ab
    .target Je'neu Sancrea
    .dungeon BFD
    .isQuestComplete 6521
step
    #label BFDTurnins
    .goto Ashenvale,11.56,34.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 6922 >>Gebt die Quest Baron Aquanis ab
    .target Je'neu Sancrea
    .dungeon BFD
    .isQuestComplete 6922
step
    #optional
    #label ZoramTurnins
step << Druid
    #completewith DruidTraining3
    .cast 18960 >>|cRXP_WARN_Wirkt |r|T135758:0|t[Teleportieren: Mondlichtung]
    .zoneskip Moonglade
step << Druid
    #optional
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Loganaar|r
    .train 768 >> Trainiere deine Klassenfähigkeiten
    .target Loganaar
    .xp <20,1
    .xp >22,1
    .cooldown item,6948,>0
step << Druid
    #label DruidTraining3
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Loganaar|r
    .train 1075 >> Trainiere deine Klassenfähigkeiten
    .target Loganaar
    .xp <22,1
    .cooldown item,6948,>0
step
    #xprate <1.5
    #completewith JourneytoTM
    .destroy 16784 >>|cRXP_WARN_Destroy your remaining|r |T134133:0|t[|cRXP_LOOT_Sapphire of Aku'Mai|r] |cRXP_WARN_as they're no longer needed|r (NOT TRANSLATED IN :deDE YET)
step
    #xprate >1.49
    #completewith JourneytoTM
    .destroy 16784 >>|cRXP_WARN_Destroy your remaining|r |T134133:0|t[|cRXP_LOOT_Sapphire of Aku'Mai|r] |cRXP_WARN_as they're no longer needed|r (NOT TRANSLATED IN :deDE YET)
    .dungeon BFD
step
    #completewith JourneytoTM
    .hs >> Ruhestein nach Donnerfels
    .use 6948
    .bindlocation 1638,1
    .subzoneskip 1638
    .dungeon !WC
step
    #completewith JourneytoTM
    .goto Ashenvale,12.24,33.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Andruk|r
    .fly Thunder Bluff >>Fliege nach Donnerfels
    .target Andruk
    .zoneskip Thunder Bluff
    .dungeon WC
    --WC users still have HS in Ratchet
step
    #completewith next
    .goto Thunder Bluff,69.88,30.90,80 >> Reist zur Anhöhe der Ältesten
step
    .goto Thunder Bluff,69.88,30.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Magatha|r
    .turnin 1063 >>Gebt die Quest Die Ältestengreisin ab
    .timer 6,Die Ältestengreisin RP
    .target Magatha Grimtotem
step
    .goto Thunder Bluff,78.61,28.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Hamuul|r
    .turnin 1489 >>Gebt die Quest Hamuul Runentotem ab
    .accept 1490 >>Akzeptiert die Quest Nara Wildmane
    .target Arch Druid Hamuul Runetotem
    .dungeon !WC
step
    .goto Thunder Bluff,75.65,31.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Nara|r
    .turnin 1490 >>Gebt die Quest Nara Wildmane ab
    .target Nara Wildmane
    .dungeon !WC
step
    .goto Thunder Bluff,75.65,31.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Nara|r
    .turnin 914 >>Gebt die Quest Anführer der Giftzähne ab
    .target Nara Wildmane
    .isQuestComplete 914
    .dungeon WC
step
    .goto Thunder Bluff,78.61,28.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Hamuul|r
    .turnin 3369 >>Gebt die Quest Alptraum ab
    .target Arch Druid Hamuul Runetotem
    .isOnQuest 3369
    .dungeon WC
step
    .goto Thunder Bluff,69.88,30.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Magatha|r
    .accept 1064 >>Akzeptiert die Quest Die Hilfe der Verlassenen
    .target Magatha Grimtotem
step
    .goto Thunder Bluff,71.04,34.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Bashana|r
    .turnin 6561 >>Gebt die Quest Schurkerei in der Tiefschwarzen Grotte ab
    .target Bashana Runetotem
    .isQuestComplete 6561
    .dungeon BFD
step
    #xprate <1.5
    #label JourneytoTM
    .goto Thunder Bluff,22.82,20.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zamah|r in the pools of vision (NOT TRANSLATED IN :deDE YET)
    .turnin 1064 >>Gebt die Quest Die Hilfe der Verlassenen ab
    .accept 1065 >>Akzeptiert die Quest Reise nach Tarrens Mühle
    .turnin 962 >>Gebt die Quest Schlangenflaum ab
    .target Apothecary Zamah
    .isQuestComplete 962
step
    #label JourneytoTM
    .goto Thunder Bluff,22.82,20.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zamah|r in the pools of vision (NOT TRANSLATED IN :deDE YET)
    .turnin 1064 >>Gebt die Quest Die Hilfe der Verlassenen ab
    .accept 1065 >>Akzeptiert die Quest Reise nach Tarrens Mühle
    .target Apothecary Zamah
step
    .goto Thunder Bluff,45.83,64.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gastwirtin Pala|r
    .home >>Setzt euren Ruhestein in Donnerfels
    .target Innkeeper Pala
    .bindlocation 1638
    .dungeon WC
step << Warlock
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Tal|r
    .fly Camp Taurajo >>Fliege nach Camp Taurajo
    .target Tal
    .zoneskip Thunder Bluff,1
    .subzoneskip 378
step << Warlock
    .goto The Barrens,44.62,59.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Logmar|r
    .turnin 1511 >>Gebt die Quest Ken'ziglas Trunk ab
    .accept 1515 >>Akzeptiert die Quest Dograns Gefangenschaft
    .target Grunt Logmar
step << Warlock
    .goto The Barrens,43.31,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dogran|r
    .turnin 1515 >>Gebt die Quest Dograns Gefangenschaft ab
    .accept 1512 >>Akzeptiert die Quest Die Liebesgabe
    .target Grunt Dogran
step << !Warlock
    #xprate <1.5
    #completewith DockTrouble << !Shaman
    #completewith CallofWater << Shaman
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Tal|r
    .fly Ratchet >>Fliege nach Ratschet
    .target Tal
    .zoneskip Thunder Bluff,1
    .dungeon !WC
step << Warlock
    #xprate <1.5
    #completewith DockTrouble
    .goto The Barrens,44.45,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Omusa|r
    .fly Ratchet >>Fliege nach Ratschet
    .target Omusa Thunderhorn
    .zoneskip The Barrens,1
    .dungeon !WC
step << Shaman
    #xprate >1.49
    #completewith CallofWater
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Tal|r
    .fly Ratchet >>Fliege nach Ratschet
    .target Tal
    .zoneskip Thunder Bluff,1
    .dungeon !WC
step
    #xprate <1.5
    .goto The Barrens,62.37,37.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Mebok|r
    .turnin 1491 >>Gebt die Quest Klugheitstränke ab
    .target Mebok Mizzyrix
    .dungeon !WC
step
    #xprate <1.5
    #label DockTrouble
    .goto The Barrens,63.09,37.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bigglefuzz|r
    .turnin 959 >> Gebt die Quest Ärger auf den Docks ab
    .target Crane Operator Bigglefuzz
    .isQuestComplete 959
    .dungeon !WC
step << Shaman
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Islen|r and |cRXP_FRIENDLY_Mahren Skyseer|r (NOT TRANSLATED IN :deDE YET)
    .turnin 1529 >>Gebt die Quest Ruf des Wassers ab
    .accept 1530 >>Akzeptiert die Quest Ruf des Wassers
    .target +Islen Waterseer
    .goto The Barrens,65.83,43.78
    .turnin 874 >>Turn in Mahren Skyseer (NOT TRANSLATED IN :deDE YET)
    .accept 873 >>Accept Isha Awak (NOT TRANSLATED IN :deDE YET)
    .target +Mahren Skyseer
    .goto The Barrens,65.83,43.86
    .isOnQuest 1529
    .dungeon !WC
step << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Islen|r and |cRXP_FRIENDLY_Mahren Skyseer|r (NOT TRANSLATED IN :deDE YET)
    .turnin 1528 >>Gebt die Quest Ruf des Wassers ab
    .accept 1530 >>Akzeptiert die Quest Ruf des Wassers
    .target +Islen Waterseer
    .goto The Barrens,65.83,43.78
    .turnin 874 >>Turn in Mahren Skyseer (NOT TRANSLATED IN :deDE YET)
    .accept 873 >>Accept Isha Awak (NOT TRANSLATED IN :deDE YET)
    .target +Mahren Skyseer
    .goto The Barrens,65.83,43.86
    .isOnQuest 1528
    .dungeon !WC
step << Shaman
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Islen|r and |cRXP_FRIENDLY_Mahren Skyseer|r (NOT TRANSLATED IN :deDE YET)
    .accept 1530 >>Akzeptiert die Quest Ruf des Wassers
    .target +Islen Waterseer
    .goto The Barrens,65.83,43.78
    .turnin 874 >>Turn in Mahren Skyseer (NOT TRANSLATED IN :deDE YET)
    .accept 873 >>Accept Isha Awak (NOT TRANSLATED IN :deDE YET)
    .target +Mahren Skyseer
    .goto The Barrens,65.83,43.86
    .isQuestTurnedIn 1529
    .dungeon !WC
step << Shaman
    #optional
    #label CallofWater
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Islen|r and |cRXP_FRIENDLY_Mahren Skyseer|r (NOT TRANSLATED IN :deDE YET)
    .accept 1530 >>Akzeptiert die Quest Ruf des Wassers
    .target +Islen Waterseer
    .goto The Barrens,65.83,43.78
    .turnin 874 >>Turn in Mahren Skyseer (NOT TRANSLATED IN :deDE YET)
    .accept 873 >>Accept Isha Awak (NOT TRANSLATED IN :deDE YET)
    .target +Mahren Skyseer
    .goto The Barrens,65.83,43.86
    .isQuestTurnedIn 1528
    .dungeon !WC
step << Shaman
    #completewith next
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Bragok|r
    .fly Camp Taurajo >>Fliege nach Camp Taurajo
    .target Bragok
    .subzoneskip 378
    .dungeon !WC
step << Shaman
    #completewith CallofWater
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Tal|r
    .fly Camp Taurajo >>Fliege nach Camp Taurajo
    .target Tal
    .zoneskip Thunder Bluff,1
    .dungeon WC
step << Shaman
    .goto The Barrens,45.58,59.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Byula|r
    .home >>Setzt euren Ruhestein ins Camp Taurajo
    .target Innkeeper Byula
    .bindlocation 378
step << Shaman
    .goto The Barrens,43.42,77.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Brine|r
    .turnin 1530 >>Gebt die Quest Ruf des Wassers ab
    .accept 1535 >>Akzeptiert die Quest Ruf des Wassers
    .target Brine
step << Shaman
    .goto The Barrens,44.22,76.75
    .use 7766 >> |cRXP_WARN_Füllt euren|r |T132825:0|t[Leerer brauner Wasserschlauch] |cRXP_WARN_in der Wasserstelle unterhalb von Brines Hütte|r
    .complete 1535,1 --Filled Brown Waterskin (1)
step << Shaman
    .goto The Barrens,43.42,77.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Brine|r
    .turnin 1535 >>Gebt die Quest Ruf des Wassers ab
    .accept 1536 >>Akzeptiert die Quest Ruf des Wassers
    .target Brine
step << Shaman
    #optional
    #completewith FlyOrg
    .hs >> Ruhestein nach Camp Taurajo
    .use 6948
    .cooldown item,6948,>0
    .bindlocation 378,1
    .subzoneskip 378
step << Shaman
    #completewith FlyOrg
    .goto The Barrens,44.85,59.14,200 >>Travel back to Camp Taurajo (NOT TRANSLATED IN :deDE YET)
    .cooldown item,6948,<0
    .subzoneskip 378
step << Shaman
    #label FlyOrg
    .goto The Barrens,44.45,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Omusa|r
    .fly Orgrimmar >>Fliege nach Orgrimmar
    .target Omusa Thunderhorn
    .zoneskip Orgrimmar
step << !Shaman !Druid
    #completewith BarrensEnd
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Bragok|r
    .fly Orgrimmar >>Fliege nach Orgrimmar
    .target Bragok
    .zoneskip Orgrimmar
    .dungeon !WC
step << !Shaman !Warlock
    #completewith BarrensEnd
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Tal|r
    .fly Orgrimmar >>Fliege nach Orgrimmar
    .target Tal
    .zoneskip Thunder Bluff,1
    .dungeon WC
step << Warlock
    #completewith BarrensEnd
    .goto The Barrens,44.45,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Omusa|r
    .fly Orgrimmar >>Fliege nach Orgrimmar
    .target Omusa Thunderhorn
    .zoneskip The Barrens,1
    .dungeon WC
step << Warlock
    .goto Orgrimmar,48.25,45.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gan'rul|r
    .turnin 1512 >>Gebt die Quest Die Liebesgabe ab
    .accept 1513 >>Die Bindung annehmen
    .target Gan'rul Bloodeye
step << Warlock
    #completewith next
    .cast 9224 >>|cRXP_WARN_Benutzt|r |T133290:0|t[Dograns Anhänger] |cRXP_WARN_am Beschwörungskreis|r
    .use 6626
step << Warlock
    .goto Orgrimmar,49.66,50.15
    >>Tötet die |cRXP_ENEMY_Beschworener Sukkubus|r
    .complete 1513,1 --Kill Summoned Succubus (1)
    .mob Summoned Succubus
    .use 6626
step << Warlock
    .goto Orgrimmar,48.25,45.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gan'rul|r
    .turnin 1513 >>Gebt die Quest Die Bindung ab
    .target Gan'rul Bloodeye
step << Warlock
    .goto Orgrimmar,48.62,46.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Mirket|r
    .train 6202 >> Trainiere deine Klassenfähigkeiten
    .target Mirket
    .xp <22,1
    .xp >24,1
step << Warlock
    #optional
    .goto Orgrimmar,48.62,46.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Mirket|r
    .train 6223 >> Trainiere deine Klassenfähigkeiten
    .target Mirket
    .xp <24,1
step << Rogue
    #completewith next
    .goto Orgrimmar,45.64,55.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Kareth|r|cRXP_BUY_. Kauft ein|r |T135640:0|t[Jambiya] |cRXP_BUY_von ihm, falls ihr keinen Dolch habt|r
    .collect 2207,1 --Collect Jambiya (1)
    .target Kareth
step << Rogue
    .goto Orgrimmar,43.05,53.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Shenthul|r
    .train 921 >> Erlernt |T133644:0|t[Taschendiebstahl]
    .train 8676 >> Trainieren |T132282:0|t[Hinterhalt]
    .train 1943 >> Erlernt |T132302:0|t[Blutung]
    .train 1856 >> Erlernt |T132331:0|t[Verschwinden]
    .train 1725 >> Erlernt |T132289:0|t[Ablenken]
    .train 1785 >> Erlernt |T132320:0|t[Verstohlenheit Rang 2]
    .accept 2460 >>Akzeptiert die Quest Der Shattered-Gruß
    .target Shenthul
step << Rogue
    .goto Orgrimmar,43.05,53.73
    >>Nachdem |cRXP_FRIENDLY_Shenthul|r salutiert hat gib /Salutieren während du ihn als Ziel ausgewählt hast
    .complete 2460,1 --Shattered Salute Performed (1)
    .target Shenthul
step << Rogue
    .goto Orgrimmar,43.05,53.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Shenthul|r
    .turnin 2460 >>Gebt die Quest Der Shattered-Gruß ab
    .accept 2458 >>Akzeptiert die Quest Undercover
    .target Shenthul
step << Rogue
    .goto Orgrimmar,42.10,49.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Rekkul|r|cRXP_BUY_. Kauft|r |T134387:0|t[Blitzstrahlpulver] |cRXP_BUY_von ihm|r
    .collect 2928,40,2479,1 --Collect Dust of Decay (40)
    .collect 3371,40,2479,1 --Collect Empty Vial (40)
    .collect 5140,20,2479,1 --Collect Flash Powder (20)
    .target Rekkul
step << Priest/Warlock
    .goto Orgrimmar,44.16,48.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Katis|r|cRXP_BUY_. Kauft einen|r |T135139:0|t[Brennender Zauberstab] |cRXP_BUY_von ihr|r
    .collect 5210,1,1507,1 --Collect Burning Wand (1)
    .money <0.5808
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.4
    .target Katis
step << Mage
    .goto Orgrimmar,38.36,85.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |r |cRXP_FRIENDLY_Pephredo|r
    .train 2138 >> Trainiere deine Klassenfähigkeiten
    .target Pephredo
    .xp <22,1
    .xp >24,1
step << Mage
    #optional
    .goto Orgrimmar,38.36,85.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |r |cRXP_FRIENDLY_Pephredo|r
    .train 2121 >> Trainiere deine Klassenfähigkeiten
    .target Pephredo
    .xp <24,1
step << Mage
    .goto Orgrimmar,38.66,85.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit|r |cRXP_FRIENDLY_Thuul|r oben auf der Hütte
    .train 3567 >> Erlernt |T135759:0|t[Teleportieren: Orgrimmar]
    .target Thuul
step << Troll Priest
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit|r |cRXP_FRIENDLY_Ur'kyo|r
    .turnin 5642 >> Gebt die Quest Schattenwache ab
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Ur'kyo
step << Undead Priest
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit|r |cRXP_FRIENDLY_Ur'kyo|r
    .train 8103 >> Trainiere deine Klassenfähigkeiten
    .target Ur'kyo
    .xp <22,1
    .xp >24,1
step << Undead Priest
    #optional
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit|r |cRXP_FRIENDLY_Ur'kyo|r
    .train 3747 >> Trainiere deine Klassenfähigkeiten
    .target Ur'kyo
    .xp <24,1
step << Rogue
    #completewith MissionProbable
    .goto Orgrimmar,26.22,61.58,80,0
    .goto Orgrimmar,15.66,63.33,30,0
    .goto Orgrimmar,18.03,60.51,50 >> Betretet Das Brachland durch den westlichen Ausgang
    .zoneskip The Barrens
    .isOnQuest 30 << Druid
step << Rogue/Druid
    #completewith MissionProbable
    .goto The Barrens,57.63,7.48,120,0
    .subzone 382 >> Travel to The Sludge Fen (NOT TRANSLATED IN :deDE YET)
    .isOnQuest 30 << Druid
step << Druid
    .goto The Barrens,56.67,8.32
    >>Plündert |cRXP_PICK_Merkwürdige Schließkassette|r im Wasser für den |T133443:0|t[Halber Anhänger der Wasserbeweglichkeit]
    .collect 15883,1,31,1 --Half Pendant of Aquatic Agility (1)
    .isOnQuest 30
step << Rogue
    #completewith next
    .goto The Barrens,55.70,5.89
	+Ziel |cRXP_FRIENDLY_Zuchtmeister Fizzule|r, dann benutzt eure |T134536:0|t[Leuchtfeuerwaffe] zwei mal und schreibt  /Salutieren
    >>|cRXP_WARN_Seid vorsichtig! Nähert euch ihm NICHT, bis er Befreundet wird, sonst wird er euch angreifen!|r
    .use 8051
    .target Taskmaster Fizzule
step << Rogue
    .goto The Barrens,55.44,5.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit|r |cRXP_FRIENDLY_Zuchtmeister Fitzel|r
    .turnin 2458 >>Gebt die Quest Undercover ab
    .accept 2478 >>Akzeptiert die Quest Mission: möglich, aber nicht sehr wahrscheinlich
    .target Taskmaster Fizzule
step << Rogue/Druid
    #optional
    #label MissionProbable
step << Rogue
    .goto The Barrens,54.80,5.97
    >>Benutzt |T133644:0|t[Taschendiebstahl] auf den |cRXP_ENEMY_Großknecht Silixiz|r für seinen |cRXP_LOOT_Turmschlüssel|r
    .complete 2478,5 --Silixiz's Tower Key (1)
    .mob Foreman Silixiz
step << Rogue
    #completewith roguetowerq
    +|cRXP_WARN_Jeder Mob hier erleidet verstärkten Schaden gegen bestimmte Fähigkeiten|r
    >>Benutzt |T132282:0|t[Hinterhalt] auf die |cRXP_ENEMY_Mutierte Drohne der Venture Co.|r
    >>Benutzt |T132302:0|t[Blutung] auf die |cRXP_ENEMY_Patrouille der Venture Co.|r
    >>Benutzt |T132292:0|t[Ausweiden] auf die |cRXP_ENEMY_Ausguck der Venture Co.|r einmal (1 Kombo-Punkt)
step << Rogue
    #label roguetowerq
    .goto The Barrens,54.72,5.74
    >>Lauft in den Schurke Turm und tötet die |cRXP_ENEMY_Drohnen|r, die |cRXP_ENEMY_Turmpatrouille|r und die |cRXP_ENEMY_Ausgucker|r
    .complete 2478,1 --Mutated Venture Co. Drone (2)
    .mob +Mutated Venture Co. Drone
    .complete 2478,3 --Venture Co. Patroller (2)
    .mob +Venture Co. Patroller
    .complete 2478,2 --Venture Co. Lookout (2)
    .mob +Venture Co. Lookout
step << Rogue
    .goto The Barrens,54.77,5.57
    >>Oben auf dem Turm findet ihr |cRXP_ENEMY_Gallywix|r. Plündert seinen |cRXP_LOOT_Kopf|r
    >>|cRXP_WARN_Benutzt|r |T132282:0|t[Hinterhalt] |cRXP_WARN_um sein Leben zur Hälfte zu reduzieren. Benutzt|r |T132155:0|t[Solarplexus] |cRXP_WARN_um Energie wiederherzustellen und benutzt|r |T136205:0|t[Entrinnen]
	>>|cRXP_WARN_Erinnert euch, einen Trank und|r |T132819:0|t[Disteltee] |cRXP_WARN_falls nötig zu benutzen|r
    .complete 2478,4 --Gallywix's Head (1)
    .mob Grand Foreman Puzik Gallywix
step << Rogue
    .goto The Barrens,54.77,5.57
    >>Benutzt euer Lockpicking, um die |cRXP_PICK_Gallywix' Schließkassette|r zu öffnen & plündert die |cRXP_LOOT_Mixtur|r
    .complete 2478,6 --Cache of Zanzil's Altered Mixture (1)
step << Rogue/Druid
    #hardcore
    #completewith next
    .goto Kalimdor,56.80,45.50,20,0
    .goto Orgrimmar,15.54,62.86
    .zone Orgrimmar >>Travel to Orgrimmar through the western entrance (NOT TRANSLATED IN :deDE YET)
    .isOnQuest 30 << Druid
step << Rogue/Druid
    #softcore
    #completewith next
    .deathskip >> Stirb und beleb dich am |cRXP_FRIENDLY_Geistheiler|r wieder
    .isOnQuest 30 << Druid
step << Rogue/Druid
    #softcore
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Devrak|r
    .fly Orgrimmar >> Fliege nach Orgrimmar
    .zoneskip Orgrimmar
    .target Devrak
    .isOnQuest 30 << Druid
step << Rogue
    .goto Orgrimmar,43.05,53.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Shenthul|r
    .turnin 2478 >>Gebt die Quest Mission: möglich, aber nicht sehr wahrscheinlich ab
    .accept 2479 >>Hinotts Hilfe annehmen
    .target Shenthul
step << Rogue
    .goto Orgrimmar,42.10,49.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Rekkul|r|cRXP_BUY_. Kauft|r |T133849:0|t[Staub des Verfalls] |cRXP_BUY_und|r |T132793:0|t[Leere Phiole] |cRXP_BUY_von ihm|r
    .collect 2928,20,2479,1 --Collect Dust of Decay (20)
    .collect 3371,20,2479,1 --Collect Empty Vial (20)
    .target Rekkul
step << Shaman
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kardris|r
    .train 8498 >> Trainiere deine Klassenfähigkeiten
    .target Kardris Dreamseeker
    .xp <22,1
    .xp >24,1
step << Shaman
    #optional
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kardris|r
    .train 905 >> Trainiere deine Klassenfähigkeiten
    .target Kardris Dreamseeker
    .xp <24,1
step << Troll Warrior/Undead Warrior/Tauren Warrior
    .goto Orgrimmar,81.52,19.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Hanashi|r
    .train 197 >>Erlernt Zweihandäxte
    .target Hanashi
step << Warrior
    .goto Orgrimmar,79.91,31.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Grezz|r
    .train 6192 >> Trainiere deine Klassenfähigkeiten
    .target Grezz Ragefist
    .xp <22,1
    .xp >24,1
step << Warrior
    #optional
    .goto Orgrimmar,79.91,31.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Grezz|r
    .train 5308 >> Trainiere deine Klassenfähigkeiten
    .target Grezz Ragefist
    .xp <24,1
step << Hunter
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ormak|r
    .train 14323 >> Trainiere deine Klassenfähigkeiten
    .target Ormak Grimshot
    .xp <22,1
    .xp >24,1
step << Hunter
    #optional
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ormak|r
    .train 14262 >> Trainiere deine Klassenfähigkeiten
    .target Ormak Grimshot
    .xp <24,1
step << Hunter
    .goto Orgrimmar,66.34,14.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Xao'tsu|r
    .train 24558 >> Erlernt eure Begleiterfähigkeiten
    .target Xao'tsu
    .xp <24,1
step << Rogue
    .goto Orgrimmar,48.12,80.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Trak'gen|r|cRXP_BUY_. Kauft|r |T135423:0|t[Tödliche Wurfaxt] |cRXP_BUY_von ihm|r
    .collect 25875,1,6544,1 --Deadly Throwing Axe (200)
    .target Trak'gen
step << Rogue
    >>Falls ihr irgendwelche |T134437:0|t[Gegengift]  habt|cRXP_WARN_, benutzt einen davon, um euch von|r |T136230:0|t[Berührung von Zanzil]|cRXP_WARN_ zu heilen|r
    .itemcount 6452,1
    .use 6452
    .aura -9991
step << Rogue
    .destroy 8051 >> |cRXP_WARN_Löscht die|r |T134536:0|t[Leuchtfeuerwaffe] |cRXP_WARN_aus euren Taschen, da sie nicht mehr benötigt wird|r
    .destroy 8066 >> |cRXP_WARN_Löscht|r |T134374:0|t[Fizzule's Pfeife] |cRXP_WARN_aus eurer Tasche, da sie nicht mehr benötigt wird|r
step
    #label BarrensEnd
    .goto Orgrimmar,49.1,94.5,30 >>Verlasst Orgrimmar
step
    #optional
    .abandon 1486 >>Brecht die Quest Deviatbälge ab
step
    #optional
    .abandon 1487 >>Brecht die Quest Ausrottung der Deviat ab
step
    #optional
    .abandon 914 >>Brecht die Quest Anführer der Giftzähne ab
step
    #optional
    .abandon 855 >>Brecht die Quest Zentaurenarmschienen ab
step
    #optional
    .abandon 959 >>Brecht die Quest Ärger auf den Docks ab
step
    #optional
    .abandon 1491 >>Brecht die Quest Klugheitstränke ab
]])
