if GetLocale() ~= "deDE" then return end
local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end

RXPGuides.RegisterGuide([[
#hardcore
#classic
#tbc
<< Horde
#name 15-19 Das Brachland
#version 1
#group RestedXP Überlebens-Guide (H)
#subgroup RXP Überlebens-Guide 1-20
#next 19-23 Steinkrallengebirge/Brachland/Eschental


step << !Tauren !Hunter !Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gar'Thok|r
    .turnin 837 >>Gebt die Quest Übergriff ab
    .goto Durotar,51.95,43.50
    .target Gar'Thok
    .isQuestComplete 837
step << Priest
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tai'jin|r
	.train 6074 >> Trainiere deine Klassenfähigkeiten
    .target Tai'jin
    .xp <14,1
    .xp >16,1
step << Priest
    #optional
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tai'jin|r
	.train 8102 >> Trainiere deine Klassenfähigkeiten
    .target Tai'jin
    .xp <16,1
step << Orc Warrior/Troll Warrior
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tarshaw|r
    .train 1160 >> Trainiere deine Klassenfähigkeiten
    .target Tarshaw Jaggedscar
    .xp <14,1
    .xp >16,1
step << Orc Warrior/Troll Warrior
    #optional
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tarshaw|r
    .train 285 >> Trainiere deine Klassenfähigkeiten
    .target Tarshaw Jaggedscar
    .xp <16,1
step << Rogue
    .goto Durotar,51.98,43.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kaplak|r
    .train 1758 >> Trainiere deine Klassenfähigkeiten
    .target Kaplak
    .xp <14,1
    .xp >16,1
step << Rogue
    #optional
    .goto Durotar,51.98,43.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kaplak|r
    .train 6761 >> Trainiere deine Klassenfähigkeiten
    .target Kaplak
    .xp <16,1
step << Warlock
    .goto Durotar,54.37,41.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dhugru|r
    .train 6222 >> Trainiere deine Klassenfähigkeiten
    .target Dhugru Gorelust
    .xp <14,1
    .xp >16,1
step << Warlock
    .goto Durotar,54.70,41.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kitha|r und kauft |T133738:0|t[Zauberfoliant der Opferung]
    .collect 16351,1,842,1 --Grimoire of Sacrifice (Rank 1) (1)
    .target Kitha
    .xp <16,1
step << Warlock
    #optional
    .goto Durotar,54.37,41.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dhugru|r
    .train 1455 >> Trainiere deine Klassenfähigkeiten
    .target Dhugru Gorelust
    .xp <16,1
step << !Tauren !Hunter !Shaman
    .goto Durotar,50.8,43.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Takrin|r
    .accept 840 >>Akzeptiert die Quest Freiwilliger der Horde
    .target Takrin Pathseeker
    .isQuestAvailable 840
step
    #optional
    .abandon 480 >> Brecht die Quest Die Weberin ab, um Probleme mit dem Questtagebuch zu vermeiden. Ihr werdet sie später erneut annehmen.
    .isOnQuest 480
step
    #completewith next
    .zone The Barrens >> Reist nach Das Brachland
    .zoneskip The Barrens
step << !Tauren !Hunter !Shaman
    .goto The Barrens,62.27,19.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kargal|r
    .turnin 840 >>Gebt die Quest Freiwilliger der Horde ab
    .accept 842 >>Akzeptiert die Quest Crossroads-Wehrpflicht
    .target Kargal Battlescar
    .isOnQuest 840
step << !Tauren !Hunter !Shaman
    #label Akzeloth
    .goto The Barrens,62.34,20.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ak'Zeloth|r
    .turnin 809 >>Gebt die Quest Ak'zeloth ab
    .accept 924 >>Akzeptiert die Quest Die Dämonensaat
    .isOnQuest 809
    .target Ak'Zeloth
    .group
step << !Tauren !Hunter !Shaman
    .goto The Barrens,62.34,20.03
    >>|cRXP_WARN_Plündert den|r |T134095:0|t[Fehlerhaften Kraftstein] |cRXP_WARN_neben|r |cRXP_FRIENDLY_Ak'zeloth|r|cRXP_WARN_. Dieser Gegenstand hat einen 30-Minuten-Timer, daher müsst ihr schnell sein|r
    .turnin 926 >>Gebt die Quest Fehlerhafter Kraftstein ab
    .isOnQuest 924
    .group
step << !Tauren !Hunter !Shaman
    #completewith next
    .goto The Barrens,52.34,29.27,150 >> Reist zum Wegekreuz
    .subzoneskip 380
step << !Undead !Tauren
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Zargh|r, |cRXP_FRIENDLY_Gazrog|r, |cRXP_FRIENDLY_Sergra|r, |cRXP_FRIENDLY_Tonga|r, |cRXP_FRIENDLY_Mankrik|r und |cRXP_FRIENDLY_Thork|r
    .accept 6365 >>Akzeptiert die Quest Fleisch für Orgrimmar
    .target +Zargh
    .goto The Barrens,52.62,29.84
    .accept 869 >>Akzeptiert die Quest Raptordiebe
    .target +Gazrog
    .goto The Barrens,51.93,30.32
    .turnin 842 >>Gebt die Quest Wegekreuz-Wehrpflicht ab
    .accept 844 >>Akzeptiert die Quest Ebenenschreiter-Bedrohung
    .target +Sergra Darkthorn
    .goto The Barrens,52.23,31.00
    .accept 870 >>Akzeptiert die Quest Die Vergessenen Teiche
    .target +Tonga Runetotem
    .goto The Barrens,52.26,31.94
    .accept 899 >>Akzeptiert die Quest Von Hass zerfressen
    .accept 4921 >>Akzeptiert die Quest In der Schlacht vermisst
    .target +Mankrik
    .goto The Barrens,52.00,31.60
    .accept 871 >>Akzeptiert die Quest Vereitelung der Angriffe
    .accept 5041 >>Akzeptiert die Quest Vorräte für Crossroads
    .target +Thork
    .goto The Barrens,51.50,30.87
    .maxlevel 16
step << !Undead !Tauren
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Zargh|r, |cRXP_FRIENDLY_Gazrog|r, |cRXP_FRIENDLY_Sergra|r, |cRXP_FRIENDLY_Tonga|r und |cRXP_FRIENDLY_Mankrik|r
    .accept 6365 >>Akzeptiert die Quest Fleisch für Orgrimmar
    .target +Zargh
    .goto The Barrens,52.62,29.84
    .accept 869 >>Akzeptiert die Quest Raptordiebe
    .target +Gazrog
    .goto The Barrens,51.93,30.32
    .turnin 842 >>Gebt die Quest Wegekreuz-Wehrpflicht ab
    .accept 844 >>Akzeptiert die Quest Ebenenschreiter-Bedrohung
    .target +Sergra Darkthorn
    .goto The Barrens,52.23,31.00
    .accept 870 >>Akzeptiert die Quest Die Vergessenen Teiche
    .target +Tonga Runetotem
    .goto The Barrens,52.26,31.94
    .accept 899 >>Akzeptiert die Quest Von Hass zerfressen
    .accept 4921 >>Akzeptiert die Quest In der Schlacht vermisst
    .target +Mankrik
    .goto The Barrens,52.00,31.60
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gazrog|r, |cRXP_FRIENDLY_Sergra|r, |cRXP_FRIENDLY_Tonga|r, |cRXP_FRIENDLY_Mankrik|r und |cRXP_FRIENDLY_Thork|r
    .accept 869 >>Akzeptiert die Quest Raptordiebe
    .target +Gazrog
    .goto The Barrens,51.93,30.32
    .turnin 842 >>Gebt die Quest Wegekreuz-Wehrpflicht ab
    .accept 844 >>Akzeptiert die Quest Ebenenschreiter-Bedrohung
    .target +Sergra Darkthorn
    .goto The Barrens,52.23,31.00
    .accept 870 >>Akzeptiert die Quest Die Vergessenen Teiche
    .target +Tonga Runetotem
    .goto The Barrens,52.26,31.94
    .accept 899 >>Akzeptiert die Quest Von Hass zerfressen
    .accept 4921 >>Akzeptiert die Quest In der Schlacht vermisst
    .target +Mankrik
    .goto The Barrens,52.00,31.60
    .accept 871 >>Akzeptiert die Quest Vereitelung der Angriffe
    .accept 5041 >>Akzeptiert die Quest Vorräte für Crossroads
    .target +Thork
    .goto The Barrens,51.50,30.87
    .maxlevel 16
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gazrog|r, |cRXP_FRIENDLY_Sergra|r, |cRXP_FRIENDLY_Tonga|r und |cRXP_FRIENDLY_Mankrik|r
    .accept 869 >>Akzeptiert die Quest Raptordiebe
    .target +Gazrog
    .goto The Barrens,51.93,30.32
    .turnin 842 >>Gebt die Quest Wegekreuz-Wehrpflicht ab
    .accept 844 >>Akzeptiert die Quest Ebenenschreiter-Bedrohung
    .target +Sergra Darkthorn
    .goto The Barrens,52.23,31.00
    .accept 870 >>Akzeptiert die Quest Die Vergessenen Teiche
    .target +Tonga Runetotem
    .goto The Barrens,52.26,31.94
    .accept 899 >>Akzeptiert die Quest Von Hass zerfressen
    .accept 4921 >>Akzeptiert die Quest In der Schlacht vermisst
    .target +Mankrik
    .goto The Barrens,52.00,31.60
step
    .goto The Barrens,51.62,30.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Darsok|r
    >>|cRXP_WARN_Er ist an der Spitze des Turms|r
    .accept 867 >>Akzeptiert die Quest Räuberische Harpyien
    .target Darsok Swiftdagger
step
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Devrak|r
    .turnin 6365 >>Gebt die Quest Fleisch für Orgrimmar ab << !Tauren !Undead
    .accept 6384 >>Akzeptiert die Quest Flug nach Orgrimmar << !Tauren !Undead
    --.fp Crossroads >> Get the Crossroads Flight Path
    .zoneskip Orgrimmar
    .target Devrak
    .isOnQuest 6365
step
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Helbrim|r
    .accept 848 >>Akzeptiert die Quest Pilzsporen
    .accept 1492 >>Werftmeister Flunkerblick annehmen
	.turnin 1358 >>Gebt Probe für Helbrim ab
    .target Apothecary Helbrim
step
    #completewith DemonSeed
    >>Tötet |cRXP_ENEMY_Ebenenschreiter|r. Plündert sie für |cRXP_LOOT_Ebenenschreiter-Schnabel|r
    .complete 844,1 --Plainstrider Beak (7)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
step
    .group
    .goto The Barrens,51.09,22.68,40,0
    .goto The Barrens,50.33,21.85,40,0
    .goto The Barrens,49.21,20.42,40,0
    .goto The Barrens,47.58,19.38,100 >> Reist zur Spitze des Berges
    .isOnQuest 924
step
    .group
    #label DemonSeed
    .goto The Barrens,47.98,19.08
    >>Rechts-klickt den |cRXP_PICK_Altar|r
    >>|cRXP_WARN_Stellt sicher, dass ihr einen|r |T134095:0|t[Fehlerhafter Kraftstein] |cRXP_WARN_(30 Minuten Dauer) bei euch habt|r
    .collect 4986,1,924 --Collect Flawed Power Stone
    .complete 924,1 --Destroy the Demon Seed (1)
    .isOnQuest 924
step
    .group
    #completewith DisruptTheAttacks
    .goto The Barrens,47.58,19.38,40,0
    .goto The Barrens,49.21,20.42,40,0
    .goto The Barrens,50.33,21.85,40,0
    .goto The Barrens,51.09,22.68,100 >> Reist den Berg hinunter, von wo ihr gekommen seid
    .isOnQuest 924
step
    #completewith DisruptTheAttacks
    >>Tötet |cRXP_ENEMY_Ebenenschreiter|r. Plündert sie für |cRXP_LOOT_Ebenenschreiter-Schnabel|r
    .complete 844,1 --Plainstrider Beak (7)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Wassersucher|r, |cRXP_ENEMY_Dornenwirker|r und |cRXP_ENEMY_Jäger|r
    .complete 871,1 --Razormane Water Seeker (8)
    .mob +Razormane Water Seeker
    .complete 871,2 --Razormane Thornweaver (8)
    .mob +Razormane Thornweaver
    .complete 871,3 --Razormane Hunter (3)
    .mob +Razormane Hunter
    .isOnQuest 871
step
    .goto The Barrens,55.70,27.30
    .use 4926 >> Plündert |cRXP_PICK_Chens leeres Fässchen|r vom Boden und startet die Quest
    >>|cRXP_WARN_Falls es nicht da ist, werdet ihr es später bekommen|r
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >> Akzeptiert die Quest Chens leeres Fässchen
step << !Tauren !Hunter !Shaman
    #label DisruptTheAttacks
    #loop
	.goto The Barrens,53.63,24.50,0
	.goto The Barrens,53.63,24.50,50,0
	.goto The Barrens,54.26,24.64,50,0
	.goto The Barrens,54.81,25.19,50,0
	.goto The Barrens,55.50,25.61,50,0
	.goto The Barrens,55.86,26.30,50,0
	.goto The Barrens,55.83,27.15,50,0
	.goto The Barrens,55.41,27.41,50,0
	.goto The Barrens,54.50,26.97,50,0
	.goto The Barrens,54.05,26.11,50,0
	.goto The Barrens,53.51,25.24,50,0
    >>Tötet |cRXP_ENEMY_Wassersucher|r, |cRXP_ENEMY_Dornenwirker|r und |cRXP_ENEMY_Jäger|r
    .complete 871,1 --Razormane Water Seeker (8)
    .mob +Razormane Water Seeker
    .complete 871,2 --Razormane Thornweaver (8)
    .mob +Razormane Thornweaver
    .complete 871,3 --Razormane Hunter (3)
    .mob +Razormane Hunter
    .isOnQuest 871
step
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
    .goto The Barrens,52.23,31.00
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
    .isQuestComplete 871
step
    .goto The Barrens,51.50,30.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thork|r
    .accept 872 >>Akzeptiert die Quest Das Ende der Unterbrechungen
    .target Thork
    .isQuestTurnedIn 871
step << !Tauren !Undead
    .goto The Barrens,52.62,29.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Zargh|r
    .turnin 6386 >>Kehrt zum Wegekreuz zurück
    .target Zargh
    .isOnQuest 6386
step
    #sticky
    #completewith EnterRFC
    .subzone 2437 >> Jetzt solltet ihr eine Gruppe für Flammenschlund suchen
    .dungeon RFC
step
    .goto The Barrens,51.99,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gastwirt Boorand|r
    .home >> Setzt euren Ruhestein im Wegekreuz
    .target Innkeeper Boorand Plainswind
    .bindlocation 380
    .isQuestAvailable 845
    .dungeon RFC
step << skip --!Tauren
    #completewith next
    .zone Stonetalon Mountains >> Reist ins Steinkrallengebirge
    .zoneskip Stonetalon Mountains
    .dungeon RFC
step << skip --!Tauren
    #completewith next
    .goto Stonetalon Mountains,82.57,98.63,60,0
    .goto Stonetalon Mountains,80.10,98.20,40,0
    .goto Stonetalon Mountains,77.17,98.61,40 >> Folgt dem Pfad auf der linken Seite
    .dungeon RFC
step << skip --!Tauren
    .goto Stonetalon Mountains,74.69,98.10
    .goto Thunder Bluff,56.65,18.96,30 >>|cRXP_WARN_Springt auf einen der Käfige. Macht einen Logout-Skip indem ihr euch aus und wieder einloggt|r
    .link https://www.youtube.com/watch?v=cp2YI86AO4Y&ab >> |cRXP_WARN_KLICKT HIER für ein Beispiel|r
    .dungeon RFC
step << skip --!Tauren
    #completewith RFCPickups
    .goto Thunder Bluff,50.75,37.07,40 >> Nehmt den Aufzug nach Donnerfels hinauf
    .dungeon RFC
step << Tauren
    #completewith RFCPickups
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Devrak|r
    .fly Thunder Bluff >>Fliege nach Donnerfels
    .zoneskip Thunder Bluff
    .dungeon RFC
step << !Tauren
    #completewith RFCPickups
    .goto Mulgore,68.68,60.34,120,0
    .zone Thunder Bluff >>Reist südlich zu Camp Taurajo und betretet Mulgore. Reist von dort zu Donnerfels
    >>|cRXP_WARN_Wenn ihr die Donnerfels Flugroute habt, fliegt stattdessen dorthin|r
    .dungeon RFC
step
    #completewith next
    .goto Thunder Bluff,69.88,30.90,80 >> Reist zur Anhöhe der Ältesten
    .dungeon RFC
step
    #label RFCPickups
    .goto Thunder Bluff,70.4,29.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rahauro|r
    .accept 5722 >> Akzeptiert die Quest Die Suche nach dem verloren gegangenen Ranzen
    .accept 5723 >> Akzeptiert die Quest Die Kraft des Feindes wird auf die Probe gestellt
    .target Rahauro
    .dungeon RFC
step
    #completewith next
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Tal|r
    .fp Thunder Bluff >> Erlernt die Flugroute nach Donnerfels << !Tauren
    .fly Orgrimmar >> Fliege nach Orgrimmar
    .zoneskip Orgrimmar
    .target Tal
    .dungeon RFC
step
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thrall|r
    .accept 5726 >>Akzeptiert die Quest Verborgene Feinde
    .target Thrall
    .dungeon RFC
step
    .goto Durotar,53.08,9.19
    >>Tötet |cRXP_ENEMY_Burning Blade|r Gegner in  der Knochenhöhle, bis |cRXP_LOOT_Insignien des Lieutenants|r dropt
    .complete 5726,1 --Lieutenant's Insignia (1)
    .dungeon RFC
step
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thrall|r
    .turnin 5726 >> Gebt die Quest Verborgene Feinde ab
    .accept 5727 >> Akzeptiert die Quest Verborgene Feinde
    .target Thrall
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
    .dungeon RFC
step
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thrall|r
    .turnin 5727 >> Gebt die Quest Verborgene Feinde ab
    .accept 5728 >> Akzeptiert die Quest Verborgene Feinde
    .target Thrall
    .dungeon RFC
step
    #completewith EnterRFC
    .destroy 14544 >>|cRXP_WARN_Zerstört|r |T134417:0|tInsignien des Lieutenants] |cRXP_WARN_da ihr es nicht mehr braucht|r
    .dungeon RFC
step
    #label EnterRFC
    .goto Orgrimmar,52.77,48.97
    .subzone 2437 >> BETRETET Das Flammenschlund Instanzportal. Betretet die Zone
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
    .turnin 5722 >> Gebt die Quest Die Suche nach dem verloren gegangenen Ranzen ab
    .accept 5724 >> Akzeptiert die Quest Wiederbeschaffung des verloren gegangenen Ranzens
    .target Maur Grimtotem
    .isOnQuest 5722
    .dungeon RFC
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Maur|r
    .accept 5724 >> Akzeptiert die Quest Wiederbeschaffung des verloren gegangenen Ranzens
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
    .turnin 5728 >> Gebt die Quest Verborgene Feinde ab
    .accept 5729 >> Akzeptiert die Quest Verborgene Feinde
    .target Thrall
    .isQuestComplete 5728
    .dungeon RFC
step
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thrall|r
    .accept 5729 >> Akzeptiert die Quest Verborgene Feinde
    .target Thrall
    .isQuestTurnedIn 5728
    .dungeon RFC
step
    .goto Orgrimmar,49.6,50.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Neeru Fireblade|r
    .turnin 5729 >> Gebt die Quest Verborgene Feinde ab
    .accept 5730 >> Akzeptiert die Quest Verborgene Feinde
    .target Neeru Fireblade
    .dungeon RFC
    .isQuestTurnedIn 5728
step
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thrall|r
    .turnin 5730 >> Gebt die Quest Verborgene Feinde ab
    .target Thrall
    .isQuestTurnedIn 5728
    .dungeon RFC
step
    #completewith next
    .zone Durotar >> Verlass Orgrimmar
    .zoneskip Durotar
    .dungeon RFC
step
    .goto Durotar,50.8,13.8,40 >>Geh auf den Zeppelin-Turm
    .zone Tirisfal Glades >>Nehmt den Zeppelin nach Tirisfal
    .zoneskip Tirisfal Glades
    .isQuestComplete 5725
    .dungeon RFC
step
    #completewith Varimathras
    .goto Tirisfal Glades,61.80,65.06,20,0
    .zone Undercity >> Betrete Unterstadt
    .zoneskip Undercity
    .dungeon RFC
step
    #completewith next
    .goto Undercity,66.09,20.06,20,0
    .goto Undercity,64.37,23.94,20,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >> Nehmt den Aufzug hinab nach Unterstadt
    .goto Undercity,56.2,96.2
    .dungeon RFC
step
    #label Varimathras
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Varimathras|r
    .turnin 5725 >>Gebt die Quest Die Macht zu Zerstören ab...
    .target Varimathras
    .isQuestComplete 5725
    .dungeon RFC
step
    #completewith next
    .hs >> Ruhestein nach Das Wegekreuz
    .use 6948
    .bindlocation 380,1
    .subzoneskip 380
    .dungeon RFC
step
    #completewith FinalRFCTurnin
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Devrak|r
    .fly Thunder Bluff >> Fliege nach Donnerfels
    .target Devrak
    .zoneskip Thunder Bluff
    .dungeon RFC
step
    .goto Thunder Bluff,70.4,29.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rahauro|r
    .turnin 5724 >> Gebt die Quest Wiederbeschaffung des verloren gegangenen Ranzens ab
    .turnin 5723 >> Gebt die Quest Die Kraft des Feindes wird auf die Probe gestellt ab
    .target Rahauro
    .dungeon RFC
    .isOnQuest 5724
    .isQuestComplete 5723
step
    .goto Thunder Bluff,70.4,29.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rahauro|r
    .turnin 5724 >> Gebt die Quest Wiederbeschaffung des verloren gegangenen Ranzens ab
    .target Rahauro
    .dungeon RFC
    .isOnQuest 5724
step
    #label FinalRFCTurnin
    .goto Thunder Bluff,70.4,29.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rahauro|r
    .turnin 5723 >> Gebt die Quest Die Kraft des Feindes wird auf die Probe gestellt ab
    .target Rahauro
    .dungeon RFC
    .isQuestComplete 5723
step
    #completewith RatchetArrive
    .hs >> Ruhestein nach Das Wegekreuz
    .cooldown item,6948,>0
    .use 6948
    .dungeon RFC
    .zoneskip Thunder Bluff,1
step
    #completewith RatchetArrive
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Tal|r
    .fly Crossroads >>Fliege nach Das Wegekreuz
    .target Tal
    .cooldown item,6948,<0
    .zoneskip The Barrens
    .dungeon RFC
step
    #optional
    .abandon 5723 >> Brecht die Quest Die Kraft des Feindes wird auf die Probe gestellt ab
    .dungeon RFC
step
    #optional
    .abandon 5725 >> Brecht die Quest Die Macht zu Zerstören... ab
    .dungeon RFC
step
    #optional
    .abandon 5728 >> Brecht die Quest Verborgene Feinde ab
    .dungeon RFC
step
    #optional
    .abandon 5761 >> Brecht die Quest Vernichtung der Bestie ab
    .dungeon RFC
step
    .goto The Barrens,55.70,27.30,20,0
    .goto The Barrens,55.78,20.00
    .use 4926 >> Plündert |cRXP_PICK_Chens leeres Fässchen|r vom Boden und startet die Quest
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >> Akzeptiert die Quest Chens leeres Fässchen
step
    #completewith KreenigSnarlsnout
    .goto The Barrens,56.75,24.69,50,0
    .goto The Barrens,59.26,24.67,50,0
    >>Tötet |cRXP_ENEMY_Geomant der Grimmhauer|r und |cRXP_ENEMY_Verteidiger der Grimmhauer|r
    .complete 872,1 --Razormane Geomancer (8)
    .mob +Razormane Geomancer
    .complete 872,2 --Razormane Defender (8)
    .mob +Razormane Defender
    .isOnQuest 872
step
    #completewith next
    >>Plündert |cRXP_PICK_Versorgungskisten des Kreuzwegs|r. Es gibt mehrere Spawnpunkte
    .complete 5041,1 --Crossroads' Supply Crates (1)
    .isOnQuest 5041
step
    #label KreenigSnarlsnout
    .goto The Barrens,58.69,27.08
    >>Tötet |cRXP_ENEMY_Kreenig Grantelschnauze|r. Plündert ihn für |cRXP_LOOT_Kreenig Grantelschnauzes Hauer|r
    .complete 872,3 --Kreenig Snarlsnout's Tusk (1)
    .mob Kreenig Snarlsnout
    .isOnQuest 872
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
    .isOnQuest 872
step
    .goto The Barrens,58.38,27.01,30,0
    .goto The Barrens,59.46,24.58
    >>Plündert die |cRXP_PICK_Vorratskisten von Crossroads|r
    >>|cRXP_WARN_Es hat mehrere Spawnpunkte|r
    .complete 5041,1 --Crossroads' Supply Crates (1)
    .isOnQuest 5041
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
    .isOnQuest 872
step
    #completewith next
    >>Tötet jedes |cRXP_ENEMY_Zhevra|r, das ihr seht. Plündert sie für ihre |cRXP_LOOT_Hufe|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob Zhevra Runner
step
    .group
    .goto The Barrens,62.34,20.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ak'Zeloth|r
    .turnin 924 >>Gebt die Quest Die Dämonensaat ab
    .target Ak'Zeloth
    .isQuestComplete 924
step
    #completewith next
    >>Tötet jedes |cRXP_ENEMY_Zhevra|r, das ihr seht. Plündert sie für ihre |cRXP_LOOT_Hufe|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob Zhevra Runner
step
    .goto The Barrens,63.08,36.56,120 >> Reisen toward Ratschet
    .subzoneskip 392
step
    #label RatchetArrive
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sputtervalve|r und |cRXP_FRIENDLY_Wanted poster|r
    .accept 894 >>Akzeptiert die Quest Samophlang
    .goto The Barrens,62.98,37.22
    .accept 895 >>Akzeptiert die Quest GESUCHT: Baron Küstenschipper
    .goto The Barrens,62.59,37.47
    .target Sputtervalve
step << Troll Warrior/Undead Warrior
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Kauft einen|r |T135147:0|t[Knorriger Stab] |cRXP_BUY_von ihm|r
    .collect 2030,1,895,1 --Collect Gnarled Staff (1)
    .money <0.5544
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Troll Warrior/Undead Warrior
    #optional
    #completewith BarenLongshore
    +|cRXP_WARN_Legt den|r |T135147:0|t[Knorriger Stab] an
    .use 2030
    .itemcount 2030,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Orc Warrior
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Eisenzar|r|cRXP_BUY_. Kauft bei ihm eine|r |T132394:0|t[Hakenaxt]
    .collect 2025,1,895,1 --Collect Bearded Axe (1)
    .money <0.5304
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << Orc Warrior
    #optional
    #completewith BarenLongshore
    +|cRXP_WARN_Legt die|r |T132394:0|t[Hakenaxt] an
    .use 2025
    .itemcount 2025,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << Tauren Warrior
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Kauft einen|r |T133046:0|t[Felshammer] |cRXP_BUY_von ihm|r
    .collect 2026,1,895,1 --Collect Rock Hammer (1)
    .money <0.6286
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
step << Tauren Warrior
    #optional
    #completewith BarenLongshore
    +|cRXP_WARN_Legt den|r |T133046:0|t[Felshammer] an |cRXP_WARN_, wenn ihr Stufe 16 seid|r
    .use 2026
    .itemcount 2026,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
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
    #completewith BarenLongshore
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
    >>|cRXP_BUY_Kauft|r |T132796:0|t[Melonensaft] |cRXP_BUY_von ihm|r << Mage/Warlock/Priest/Shaman/Druid
    >>|cRXP_WARN_Sie sind extrem günstig, kauft so viele, wie ihr wollt|r
    .vendor >> Verkauft Müll
    .collect 4592,40,895,1 --Longjaw Mud Snapper (40)
    .collect 1205,20,895,1 << Mage/Warlock/Priest/Shaman/Druid --Melon Juice (20)
    .home >>Setzt euren Ruhestein in Ratschet
    .target Innkeeper Wiley
    .bindlocation 392
    .isQuestAvailable 887
step
    #completewith BaronLongshore
    .destroy 5088 >> |cRXP_WARN_Entfernt die|r |T133735:0|t[Steuerkonsolen-Bedienungsanleitung] |cRXP_WARN_aus euren Taschen, da sie nicht mehr benötigt wird|r
step
    #completewith BaronLongshore
    >>Tötet |cRXP_ENEMY_Brigant der Südmeerfreibeuter|r und |cRXP_ENEMY_Kanonier der Südmeerfreibeuter|r
    .complete 887,1 --Southsea Brigand (12)
    .mob +Southsea Brigand
    .complete 887,2 --Southsea Cannoneer (6)
    .mob +Southsea Cannoneer
step << Orc Rogue/Troll Rogue
	#completewith next
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
step << Orc Rogue/Troll Rogue
	#completewith next
	>>Tötet |cRXP_ENEMY_Tazan|r. Plündert ihn für |cRXP_LOOT_Tazans Ranzen|r
    >>|cRXP_WARN_Er patrouilliert auf dem Hügel auf und ab|r
	.complete 1963,1 --Tazan's Satchel (1)
    .unitscan Tazan
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
step << Orc Rogue/Troll Rogue
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
    .accept 896 >>Akzeptiert die Quest Des Minenarbeiters Vermögen
    .target Wharfmaster Dizzywig
step
    .goto The Barrens,62.68,36.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gazlowe|r
    .turnin 892 >>Gebt die Quest Die verloren gegangene Lieferung ab
    .accept 888 >>Akzeptiert die Quest Gestohlene Beute
    .target Gazlowe
step << Troll Warrior/Undead Warrior
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Kauft einen|r |T135147:0|t[Knorriger Stab] |cRXP_BUY_von ihm|r
    .collect 2030,1,850,1 --Collect Gnarled Staff (1)
    .money <0.5544
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Troll Warrior/Undead Warrior
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
    +|cRXP_WARN_Legt den|r |T135147:0|t[Knorriger Stab] an
    .use 2030
    .itemcount 2030,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Rogue
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Eisenzar|r|cRXP_BUY_. Buy a|r |T135343:0|t[Scimitar] |cRXP_BUY_from him.|r
    .collect 2027,1,850,1 --Collect Scimitar (1)
    .money <0.3815
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
    .target Ironzar
step << Rogue
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Eisenzar|r|cRXP_BUY_. Buy a second|r |T135343:0|t[Scimitar] |cRXP_BUY_from him for your off-hand.|r
    .collect 2027,2,850,1 --Collect Scimitar (1)
    .money <0.3815
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
    .target Ironzar
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
    .goto The Barrens,51.50,30.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thork|r
    .turnin 5041 >>Gebt die Quest Vorräte für Crossroads ab
    .turnin 872 >>Gebt die Quest Das Ende der Unterbrechungen ab
    .target Thork
    .isQuestComplete 872
    .isQuestComplete 5041
step
    #optional
    .goto The Barrens,51.50,30.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thork|r
    .turnin 5041 >>Gebt die Quest Vorräte für Crossroads ab
    .target Thork
    .isQuestComplete 5041
step
    #optional
    .goto The Barrens,51.50,30.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thork|r
    .turnin 872 >>Gebt die Quest Das Ende der Unterbrechungen ab
    .target Thork
    .isQuestComplete 872
step
    #label XroadsTurnins3
    .goto The Barrens,52.23,31.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sergra|r
    .turnin 845 >>Gebt die Quest Die Zhevras ab
    .accept 903 >>Akzeptiert die Quest Streuner des Brachlandes
    .target Sergra Darkthorn
step << Hunter
    .goto The Barrens,51.67,29.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Barg|r
    .collect 2515,1200,870,1 << Hunter --Sharp Arrow (1200)
    .target Barg
step
    #completewith RegtharDeathgate1
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
    #label RegtharDeathgate1
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Regthar|r
    .accept 850 >>Akzeptiert die Quest Anführer der Kolkar
    .accept 855 >>Akzeptiert die Quest Zentaurenarmschienen
    .target Regthar Deathgate
step
    #completewith Leaders
    >>Tötet |cRXP_ENEMY_Zänker der Kolkar|r und |cRXP_ENEMY_Sturmruferin der Kolkar|r. Plündert sie für ihre |cRXP_LOOT_armschienen|r
    >>|cRXP_WARN_Diese Quest muss jetzt nicht abgeschlossen werden|r
    .complete 855,1 --Centaur Bracers (15)
    .mob Kolkar Wrangler
    .mob Kolkar Stormer
step
    #completewith next
    >>Sammelt |cRXP_LOOT_Potenter Pilz|r um Die vergessenen Teiche herum
    >>|cRXP_WARN_Diese Quest muss jetzt nicht abgeschlossen werden|r
    .complete 848,1 --Collect Fungal Spores (x4)
step
    .goto The Barrens,45.06,22.54
    >>Taucht unter Wasser zur |cRXP_PICK_Blubbernder Felsspalt|r
    .complete 870,1 --Explore the waters of the Forgotten Pools
step
    .goto The Barrens,42.82,23.52
    >>Tötet |cRXP_ENEMY_Barak Kodobann|r. Plündert ihn für seinen |cRXP_LOOT_kopf|r
    >>|cRXP_WARN_Seid vorsichtig! Seine Nahkampftreffer verursachen viel Schaden und er wird von einem|r |cRXP_ENEMY_Zänker der Kolkar|r|cRXP_WARN_ beschützt. Sie können euch mit einem Netz belegen und aus der Distanz auf euch schießen|r
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
    #label Leaders
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Regthar|r
    .turnin 850 >>Gebt die Quest Anführer der Kolkar ab
    .accept 851 >>Akzeptiert die Quest Verog der Derwisch
    .target Regthar Deathgate
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
    .goto The Barrens,41.84,14.81,0
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
    +|cRXP_WARN_Nehmt euch vor|r |cRXP_ENEMY_Sunscale Scytheclaws|r |cRXP_WARN_in der Gegend in Acht. Sie sind bis Stufe 18 und können|r |T132152:0|t[Hauen] |cRXP_WARN_(Aufladungen 2 zusätzliche Angriffe alle 10 Sek.)|r
step
    #sticky
    #completewith Samophlange
    >>Tötet |cRXP_ENEMY_Ebenenschreiter|r. Plündert sie für ihre |cRXP_LOOT_Nieren|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrider
step
    .goto The Barrens,43.80,12.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Vrang|r
	.vendor	>> Verkauft trash und repariert
    .target Vrang Wildgore
step
	#label Samophlange
    .goto The Barrens,52.40,11.65
    >>Klickt auf die |cRXP_PICK_Steuerkonsolen|r
    .turnin 894 >>Gebt die Quest Samophlang ab
    .accept 900 >>Akzeptiert die Quest Samophlang
step
    .goto The Barrens,52.33,11.57
    >>Klickt |cRXP_PICK_Ventil|r
    >>|cRXP_WARN_Vorsicht! Zwei Mobs werden spawn, nachdem ihr das Ventil ausgeschaltet habt|r
    .complete 900,2 --Shut off Fuel Control Valve (1)
step
    .goto The Barrens,52.29,11.40
    >>Klickt |cRXP_PICK_Ventil|r
    >>|cRXP_WARN_Ein Mob wird spawnen, nachdem ihr das Ventil ausgeschaltet habt|r
    .complete 900,3 --Shut off Regulator Valve (1)
step
    .goto The Barrens,52.40,11.40
    >>Klickt |cRXP_PICK_Ventil|r
    .complete 900,1 --Shut off Main Control Valve (1)
step
    .goto The Barrens,52.40,11.65
    >>Klickt auf die |cRXP_PICK_Steuerkonsolen|r
    .turnin 900 >>Gebt die Quest Samophlang ab
    .accept 901 >>Akzeptiert die Quest Samophlang
step
    .goto The Barrens,52.84,10.40
    >>Tötet |cRXP_ENEMY_Tüftler Sniggles|r im Gebäude. Plündert ihn nach seinem |cRXP_LOOT_Konsolenschlüssel|r
    .complete 901,1 --Console Key (1)
    .mob Tinkerer Sniggles
step
    .goto The Barrens,52.40,11.65
    >>Klickt auf die |cRXP_PICK_Steuerkonsolen|r
    .turnin 901 >>Gebt die Quest Samophlang ab
    .accept 902 >>Akzeptiert die Quest Samophlang
step << Druid
    #completewith DruidTraining1
    .cast 18960 >>Wirkt |T135758:0|t[Teleportieren: Mondlichtung]
    .zoneskip Moonglade
step << Druid
    #optional
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Loganaar|r
    .train 5211 >> Trainiere deine Klassenfähigkeiten
    .target Loganaar
    .xp <16,1
    .xp >18,1
step << Druid
    #label DruidTraining1
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Loganaar|r
    .train 1430 >> Trainiere deine Klassenfähigkeiten
    .target Loganaar
    .xp <18,1
step
    #completewith next
    .hs >>Ruhestein nach Ratschet
    .bindlocation 392,1
    .subzoneskip 392
    .use 6948
step
    .goto The Barrens,62.05,39.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gastwirt Wiley|r
    >>|cRXP_BUY_Kauft|r |T133918:0|t[Roher Langzahniger Matschschnapper] |cRXP_BUY_bei ihm|r
    >>|cRXP_BUY_Kauft|r |T132796:0|t[Melonensaft] |cRXP_BUY_von ihm|r << Mage/Warlock/Priest/Shaman/Druid
    >>|cRXP_WARN_Sie sind extrem günstig, kauft so viele, wie ihr wollt|r
    .vendor >> Verkauft Müll
    .collect 4592,40,896,1 --Longjaw Mud Snapper (40)
    .collect 1205,40,896,1 << Mage/Warlock/Priest/Shaman/Druid --Melon Juice (40)
    .target Innkeeper Wiley
    .isQuestAvailable 896
step
    .goto The Barrens,62.98,37.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Sputtervalve|r
    .turnin 902 >>Gebt die Quest Samophlang ab
    .accept 3921 >>Akzeptiert die Quest Wenikee Boltbucket
    .accept 1483 >> Akzeptiert die Quest Ziz Fizziks
    .target Sputtervalve
step
    #completewith Crossroadsturnins2
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Bragok|r
    .fly Crossroads >> Fliege nach Das Wegekreuz
    .target Bragok
    .subzoneskip 380
step
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Helbrim|r
    .turnin 848 >> Gebt die Quest Pilzsporen ab
    .target Apothecary Helbrim
    .isQuestComplete 848
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Darsok|r, |cRXP_FRIENDLY_Tonga|r, |cRXP_FRIENDLY_Sergra|r und |cRXP_FRIENDLY_Gazrog|r
    .turnin 867 >>Gebt die Quest Räuberische Harpyien ab
    .accept 875 >>Akzeptiert die Quest Offiziere der Harpyien
    .target +Darsok Swiftdagger
    .goto The Barrens,51.62,30.90
    .turnin 870 >> Gebt die Quest Die Vergessenen Teiche ab
    .accept 877 >> Akzeptiert die Quest Die Brackige Oase
    .target +Tonga Runetotem
    .goto The Barrens,52.26,31.93
    .turnin 903 >>Gebt die Quest Streuner des Brachlandes ab
    .accept 881 >>Akzeptiert die Quest Echeyakee
    .target +Sergra Darkthorn
    .goto The Barrens,52.24,31.01
    .turnin 869 >>Gebt die Quest Raptordiebe ab
    .accept 3281 >>Akzeptiert die Quest Gestohlenes Silber
    .target +Gazrog
    .goto The Barrens,51.93,30.32
    .isQuestComplete 869
step
    #label Crossroadsturnins2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Helbrim|r, |cRXP_FRIENDLY_Darsok|r, |cRXP_FRIENDLY_Tonga|r und |cRXP_FRIENDLY_Sergra|r
    .turnin 867 >>Gebt die Quest Räuberische Harpyien ab
    .accept 875 >>Akzeptiert die Quest Offiziere der Harpyien
    .target +Darsok Swiftdagger
    .goto The Barrens,51.62,30.90
    .turnin 870 >> Gebt die Quest Die Vergessenen Teiche ab
    .accept 877 >> Akzeptiert die Quest Die Brackige Oase
    .target +Tonga Runetotem
    .goto The Barrens,52.26,31.93
    .turnin 903 >>Gebt die Quest Streuner des Brachlandes ab
    .accept 881 >>Akzeptiert die Quest Echeyakee
    .target +Sergra Darkthorn
    .goto The Barrens,52.24,31.01
step << Hunter
    .goto The Barrens,51.11,29.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Uthrok|r|cRXP_BUY_. Kauft einen|r |T134410:0|t[Mittlerer Köcher] |cRXP_BUY_bei ihm|r
    .collect 11362,1,896,1 --Medium Quiver (1)
    .collect 2515,1800,896,1 --Sharp Arrow (1800)
    .target Uthrok
step
    .goto The Barrens,51.99,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gastwirt Boorand|r
    .home >>Setzt euren Ruhestein im Wegekreuz
    .target Innkeeper Boorand Plainswind
    .bindlocation 380
    .isQuestAvailable 881
step
    #completewith CatsEye
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Devrak|r
    .fly Orgrimmar >> Fliege nach Orgrimmar
    .zoneskip Orgrimmar
    .target Devrak
step << !Tauren !Undead
    .goto Orgrimmar,54.097,68.407
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit|r|cRXP_FRIENDLY_Gryshka|r
    .turnin 6384 >>Gebt die Quest Flug nach Orgrimmar ab
    .accept 6385 >>Akzeptiert die Quest Doras der Windreitermeister
    .target Innkeeper Gryshka
    .isOnQuest 6384
step << !Tauren !Undead
    .goto Orgrimmar,45.120,63.889
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |r |cRXP_FRIENDLY_Doras|r
    .turnin 6385 >> Gebt die Quest Doras der Windreitermeister ab
    .accept 6386 >> Akzeptiert die Quest Kehrt nach Crossroads zurück
    .target Doras
    .isOnQuest 6385
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
step
    .goto Orgrimmar,38.94,38.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Zor|r
    .accept 1061 >>Akzeptiert die Quest Die Geister des Steinkrallengebirges
    .target Zor Lonetree
step << Rogue
    .goto Orgrimmar,43.05,53.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Shenthul|r
    .train 1804 >> Erlernt |T136058:0|t[Schloss knacken]
    .train 921 >> Erlernt |T133644:0|t[Taschendiebstahl]
    .accept 2379 >> Akzeptiert die Quest Zando'Zan
    .target Shenthul
step << Orc Rogue/Troll Rogue
    .goto Orgrimmar,42.74,53.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Therzok|r
    .turnin 1963 >> Gebt die Quest Die Shattered-Hand ab
    .accept 1858 >> Akzeptiert die Quest Die Shattered-Hand
    .target Therzok
step << Rogue
    .goto Orgrimmar,42.72,52.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Zando'zan|r
    .turnin 2379 >>Gebt die Quest Zando'zan ab
    .accept 2382 >>Akzeptiert die Quest Wrenix aus Ratschet
    .target Zando'zan
step << Orc Rogue/Troll Rogue
    #completewith next
    .goto Orgrimmar,42.10,49.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Rekkul|r|cRXP_BUY_. Kauft ein|r |T134065:0|t[Diebeswerkzeug] |cRXP_BUY_von ihm|r
    .collect 5060,1,1858,1 --Collect Thieves' Tools (1)
    .target Rekkul
    .money <0.15
step << Orc Rogue/Troll Rogue
    .goto Orgrimmar,42.74,53.52
    >>Benutzt |T136058:0|t[Schloss knacken] |cRXP_WARN_um|r |T133626:0|t[Tazans Ranzen] |cRXP_WARN_zu öffnen|r
    .complete 1858,1 --Tazan's Logbook (1)
    .money <0.15
step << Orc Rogue/Troll Rogue
    .goto Orgrimmar,42.74,53.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Therzok|r
    .turnin 1858 >>Gebt die Quest Die Shattered-Hand ab
    .target Therzok
step << Orc Rogue/Troll Rogue
    .goto Orgrimmar,53.99,68.05
    >>|cRXP_WARN_Benutzt|r |T133644:0|t[Taschendiebstahl] |cRXP_WARN_auf|r Gamon|cRXP_ENEMY_ im Gasthaus. Benutzt seinen Schlüssel um|r |T133626:0|t[Tazans Ranzen] |cRXP_WARN_zu öffnen|r
	.collect 7208,1,1858,1 --Tazan's Key
	.complete 1858,1 --Tazan's Logbook (1)
    .isOnQuest 1858
step << Orc Rogue/Troll Rogue
    .goto Orgrimmar,42.74,53.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Therzok|r
    .turnin 1858 >>Gebt die Quest Die Shattered-Hand ab
    .target Therzok
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
    .collect 16316,1,896,1 --Grimoire of Firebolt (Rank 3) (Rank 1) (1)
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
    .xp <18,1
step << Hunter
    .goto Orgrimmar,81.52,19.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Hanashi|r
    .train 227 >>Erlernt Stäbe
    .target Hanashi
step << Priest
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit|r |cRXP_FRIENDLY_Ur'kyo|r
    .train 8102 >> Trainiere deine Klassenfähigkeiten
    .target Ur'kyo
    .xp <16,1
    .xp >18,1
step << Priest
    #optional
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
step
    #completewith next
    .skill firstaid,40 >> |cRXP_WARN_Stellt|r |T133685:0|t[Leinenverband] |cRXP_WARN_bis euer skill auf 40 oder higher ist her|r
    .skill firstaid,<1,1
step
    .goto Orgrimmar,34.18,84.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit|r |cRXP_FRIENDLY_Arnok|r
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
    .train 3274 >> Erlernt Geselle für Erste Hilfe
    .target Arnok
    .skill firstaid,<1,1
step
    .goto Orgrimmar,26.22,61.58,80,0
    .goto Orgrimmar,15.66,63.33,30,0
    .goto Orgrimmar,18.03,60.51,50 >> Betretet das Brachland durch den westlichen Ausgang
    .zoneskip The Barrens
    .isOnQuest 896
step
    #label CatsEye
    #loop
    .goto The Barrens,61.51,4.43,0
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
    >>|cRXP_WARN_Vermeidet es, in die Mine zu gehen. Gegner werden leicht doppelt gepullt, und es gibt nur wenig Platz zur Flucht|r
    .complete 896,1 -- Cats Eye Emerald (1)
    .mob Venture Co. Enforcer
    .mob Venture Co. Overseer
step
    #ssf
    .goto The Barrens,61.51,4.43,0
    .goto The Barrens,61.46,4.50,40,0
    .goto The Barrens,61.06,3.63,40,0
    .goto The Barrens,61.63,3.37,40,0
    .goto The Barrens,62.14,3.52,40,0
    .goto The Barrens,61.94,4.53,40,0
    .goto The Barrens,61.85,5.37,40,0
    .goto The Barrens,61.44,5.56,40,0
    .goto The Barrens,61.17,5.05,40,0
    .goto The Barrens,61.51,4.43,40,0
    >>Tötet |cRXP_ENEMY_Vorarbeiter der Venture Co.|r. Plündert sie für ihr |T132794:0|t[|cRXP_LOOT_Fläschchen Öl|r]
    .collect 814,5,103,1 --Flask of Oil (5)
    .dungeon DM
step
    #ah
    .goto The Barrens,61.51,4.43,0
    .goto The Barrens,61.46,4.50,40,0
    .goto The Barrens,61.06,3.63,40,0
    .goto The Barrens,61.63,3.37,40,0
    .goto The Barrens,62.14,3.52,40,0
    .goto The Barrens,61.94,4.53,40,0
    .goto The Barrens,61.85,5.37,40,0
    .goto The Barrens,61.44,5.56,40,0
    .goto The Barrens,61.17,5.05,40,0
    .goto The Barrens,61.51,4.43,40,0
    >>Tötet |cRXP_ENEMY_Vorarbeiter der Venture Co.|r. Plündert sie für ihr |T132794:0|t[|cRXP_LOOT_Fläschchen Öl|r]
    >>|cRXP_WARN_Alternativ könnt ihr sie auch vom Auktionshaus kaufen|r
    .collect 814,5,103,1 --Flask of Oil (5)
    .dungeon DM
step
    #completewith Wenikee
    >>Tötet jeden |cRXP_ENEMY_Raptor|r, den ihr seht. Plündert sie für ihren |cRXP_LOOT_Kopf|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
    .mob Sunscale Scytheclaw
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Ebenenschreiter|r. Plündert sie für ihre |cRXP_LOOT_Nieren|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Ornery Plainstrider
step
    #label Wenikee
    .goto The Barrens,49.05,11.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Wenikee|r
    .turnin 3921 >>Gebt die Quest Wenikee Boltbucket ab
    .accept 3922 >>Akzeptiert die Quest Schraubnieten
    .target Wenikee Boltbucket
step
    #sticky
    #completewith Slugs
    >>Loot |cRXP_PICK_Tool Buckets|r from the ground around The Sludge Fen
    .complete 3922,1 --Nugget Slugs (15)
step
    .goto The Barrens,56.52,7.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Wizzlecrank's Shredder|r in The Sludge Fen
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
    >>Tötet |cRXP_ENEMY_Vorsteher Lugwizzle|r. Plündert ihn für seinen |cRXP_LOOT_Schlüssel|r
    >>|cRXP_WARN_Er patrouilliert auf der Plattform auf und ab|r
    .complete 858,1 --Ignition Key (1)
    .mob Supervisor Lugwizzle
step
    .goto The Barrens,56.52,7.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit|r |cRXP_FRIENDLY_Kurbelwizz' Schredder|r
    >>|cRXP_WARN_Dies startet eine Eskorte. Achtet darauf, dass ihr volle Lebenspunkte habt|r
    .turnin 858 >>Gebt die Quest Zündung ab
    .accept 863,1 >>Akzeptiert die Quest Die Flucht
    .target Wizzlecrank's Shredder
step
    #label Slugs
    .goto The Barrens,55.80,7.76,30,0
    .goto The Barrens,55.51,7.13
    >>|cRXP_WARN_Zwei|r |cRXP_ENEMY_Söldner der Venture Co.|r |cRXP_WARN_werden spawnen, wenn der Schredder sich im höheren Gelände bewegt. Tötet sie dann und wartet auf sein RP-Event am Ende|r
    .complete 863,1 --Escort Wizzlecrank out of the Venture Co. drill site (1)
    .mob Venture Co. Mercenary
    .mob Venture Co. Drudger
    .mob Overseer Glibby
step
    #loop
	.goto The Barrens,55.69,6.94,0
	.goto The Barrens,55.50,7.98,25,0
	.goto The Barrens,55.60,8.85,25,0
	.goto The Barrens,56.04,9.79,25,0
	.goto The Barrens,56.68,8.82,25,0
	.goto The Barrens,57.17,9.08,25,0
	.goto The Barrens,57.61,8.41,25,0
	.goto The Barrens,57.31,7.20,25,0
	.goto The Barrens,56.72,6.92,25,0
	.goto The Barrens,56.17,6.80,25,0
	.goto The Barrens,55.69,6.94,25,0
    >>Loot |cRXP_PICK_Tool Buckets|r from the ground around The Sludge Fen
    .complete 3922,1 --Nugget Slugs (15)
step
	#completewith NuggetSlugsTurnIn
	+|cRXP_WARN_Falls ihr über 15 |cRXP_LOOT_Klumpen Schraubnieten|r|cRXP_WARN_ habt, teilt den Stapel (Umschalt+Klick) auf und löscht die Extras|r
step
    #sticky
    #completewith NuggetSlugsTurnIn
    >>Tötet jeden |cRXP_ENEMY_Raptor|r, den ihr seht. Plündert sie für ihren |cRXP_LOOT_Kopf|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
    .mob Sunscale Scytheclaw
step
    #sticky
    #completewith NuggetSlugsTurnIn
    >>Tötet |cRXP_ENEMY_Ebenenschreiter|r. Plündert sie für ihre |cRXP_LOOT_Nieren|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrider
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
    #label NuggetSlugsTurnIn
    .goto The Barrens,49.05,11.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Wenikee|r
    .turnin 3922 >>Gebt die Quest Schraubnieten ab
    .accept 3923 >>Akzeptiert Rilli Schmierklump
    .target Wenikee Boltbucket
step
    #loop
    .goto The Barrens,47.81,14.18,0
    .goto The Barrens,47.81,14.18,50,0
    .goto The Barrens,45.78,14.74,50,0
    .goto The Barrens,44.60,15.04,50,0
    >>Beenden killing |cRXP_ENEMY_Raptors|r. Plündert sie für |cRXP_LOOT_Heads|r
    >>|cRXP_WARN_Seid vorsichtig denn sie wirken|r |T132152:0|t[Hauen] |cRXP_WARN_(Aufladungen 2 extra Angriffe alle 10 Sek.)|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
    .mob Sunscale Scytheclaw
step
    #loop
	.goto The Barrens,40.15,15.98,0
	.goto The Barrens,40.28,15.49,50,0
	.goto The Barrens,39.50,14.68,50,0
	.goto The Barrens,39.47,13.24,50,0
	.goto The Barrens,38.94,12.80,50,0
	.goto The Barrens,38.18,12.56,50,0
	.goto The Barrens,37.96,13.52,50,0
	.goto The Barrens,38.62,13.95,50,0
	.goto The Barrens,38.18,14.62,50,0
	.goto The Barrens,38.14,15.59,50,0
	.goto The Barrens,37.29,15.68,50,0
	.goto The Barrens,37.24,16.26,50,0
	.goto The Barrens,37.67,16.34,50,0
	.goto The Barrens,38.35,17.08,50,0
	.goto The Barrens,38.83,17.71,50,0
	.goto The Barrens,39.37,17.21,50,0
	.goto The Barrens,39.87,16.66,50,0
	.goto The Barrens,40.15,15.98,50,0
    >>Tötet |cRXP_ENEMY_Töterin der Hexenschwingen|r. Plündert sie für ihre |cRXP_LOOT_Ringe|r
    >>|cRXP_WARN_Seid vorsichtig!|r |cRXP_ENEMY_Witchwing-Schläger|r |cRXP_WARN_können ausführen. Bleibt über 20% Gesundheit|r
    >>|cRXP_WARN_Passt auf|r |cRXP_ENEMY_Wegelagerin der Hexenschwingen|r|cRXP_WARN_. Sie sind verstohlen und patrouillieren in der Gegend|r
    .complete 875,1 --Harpy Lieutenant Ring (6)
    .mob Witchwing Slayer
    .mob Witchwing Ambusher
step
    #completewith FoodandWater1
    .hs >> Ruhestein nach Das Wegekreuz
    .use 6948
    .cooldown item,6948,>0
    .bindlocation 380,1
    .subzoneskip 380
step
    #completewith FoodandWater1
    .goto The Barrens,52.09,30.43,120 >>Reist zum Wegekreuz
    >>|cRXP_WARN_Ihr könnt auch grind until von Euch|r |T134414:0|t[Ruhestein] |cRXP_WARN_is back up|r
    .cooldown item,6948,<0
    .subzoneskip 380
step
    #completewith next
    +|cRXP_WARN_Stellt sicher, dass ihr den|r |T132794:0|t[|cRXP_LOOT_Fläschchen Öl|r]|cRXP_WARN_ von Euch nicht verkauft!|r
    .itemcount 814,5
    .dungeon DM
step
    #label FoodandWater1
    .goto The Barrens,51.99,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gastwirt Boorand|r
	.vendor >>|cRXP_BUY_Verkauft euren trash, dann füllt euer Essen und Trinken auf, wenn nötig|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Verkauft euren trash, dann füllt eure Nahrung auf, falls nötig|r << Rogue/Warrior
    .target Innkeeper Boorand Plainswind
step << !Tauren !Undead
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gazrog|r, |cRXP_FRIENDLY_Zargh|r, |cRXP_FRIENDLY_Sergra|r und |cRXP_FRIENDLY_Darsok|r
    .turnin 869 >>Gebt die Quest Raptordiebe ab
    .accept 3281 >>Akzeptiert die Quest Gestohlenes Silber
    .target +Gazrog
    .goto The Barrens,51.93,30.32
    .turnin 6386 >> Kehrt zum Wegekreuz zurück
    .target +Zargh
    .goto The Barrens,52.62,29.84
    .turnin 881 >>Gebt die Quest Echeyakee ab
    .accept 905 >>Akzeptiert die Quest Die wütenden Sensenklauen
    .target +Sergra Darkthorn
    .goto The Barrens,52.23,31.00
    .turnin 875 >> Gebt die Quest Offiziere der Harpyien ab
    .accept 876 >> Akzeptiert die Quest Serena Blutfeder
    .target +Darsok Swiftdagger
    .goto The Barrens,51.62,30.90
    .isOnQuest 6386
step
    #label EcheyakeeTurnin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gazrog|r, |cRXP_FRIENDLY_Sergra|r und |cRXP_FRIENDLY_Darsok|r
    .turnin 869 >>Gebt die Quest Raptordiebe ab
    .accept 3281 >>Akzeptiert die Quest Gestohlenes Silber
    .target +Gazrog
    .goto The Barrens,51.93,30.32
    .turnin 881 >>Gebt die Quest Echeyakee ab
    .accept 905 >>Akzeptiert die Quest Die wütenden Sensenklauen
    .target +Sergra Darkthorn
    .goto The Barrens,52.23,31.00
    .turnin 875 >> Gebt die Quest Offiziere der Harpyien ab
    .accept 876 >> Akzeptiert die Quest Serena Blutfeder
    .target +Darsok Swiftdagger
    .goto The Barrens,51.62,30.90
step
    #completewith TheEscapeTurnIn
    .destroy 10327 >>|cRXP_WARN_Zerstört|r |T134227:0|t[Horn von Echeyakee] |cRXP_WARN_, da ihr es nicht mehr braucht|r
step << Hunter
    .goto The Barrens,51.67,29.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Barg|r
    .collect 2515,1800,888,1 << Hunter --Sharp Arrow (1800)
    .target Barg
step
    #completewith TheEscapeTurnIn
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Devrak|r
    .fly Ratchet >> Fliege nach Ratschet
    .target Devrak
    .subzoneskip 392
step << Rogue
    .goto The Barrens,63.07,36.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Wrenix|r
    .turnin 2382 >>Gebt die Quest Wrenix aus Ratschet ab
    .accept 2381 >>Akzeptiert die Quest Das Ausplündern der Plünderer
    .target Wrenix the Wretched
step << Rogue
    .goto The Barrens,63.12,36.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Wrenix' Elektrodingsda-Apparat|r
    >>|cRXP_WARN_Besorgt einen|r |T134059:0|t[R.C.V.K.] |cRXP_WARN_und einen|r |T134065:0|t[Diebeswerkzeug]
    .collect 7970,1,888,1 --E.C.A.C. (1)
    .collect 5060,1,888,1 --Thieves' Tools (1)
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sputtervalve|r und |cRXP_FRIENDLY_Dizzywig|r
    .turnin 863 >> Gebt die Quest Die Flucht ab
    .accept 1483 >> Akzeptiert die Quest Ziz Fizziks
    .target +Sputtervalve
    .goto The Barrens,62.98,37.22
    .turnin 896 >> Gebt die Quest Des Minenarbeiters Vermögen ab
    .target +Wharfmaster Dizzywig
    .goto The Barrens,63.35,38.45
    .isQuestComplete 896
step
    #label TheEscapeTurnIn
    .goto The Barrens,62.98,37.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Sputtervalve|r
    .turnin 863 >> Gebt die Quest Die Flucht ab
    .accept 1483 >> Akzeptiert die Quest Ziz Fizziks
    .target Sputtervalve
step
    .goto The Barrens,62.37,37.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Mebok|r
    .accept 865 >>Akzeptiert die Quest Raptorhörner
    .accept 1069 >>Akzeptiert die Quest Eier der Kluftmoosspinnen
    .target Mebok Mizzyrix
step
    .goto The Barrens,62.05,39.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gastwirt Wiley|r
    >>|cRXP_BUY_Kauft|r |T133918:0|t[Roher Langzahniger Matschschnapper] |cRXP_BUY_bei ihm|r
    >>|cRXP_BUY_Kauft|r |T132796:0|t[Melonensaft] |cRXP_BUY_von ihm|r << Mage/Warlock/Priest/Shaman/Druid
    >>|cRXP_WARN_Sie sind extrem günstig, kauft so viele, wie ihr wollt|r
    .vendor >> Verkauft Müll
    .collect 4592,40,888,1 --Longjaw Mud Snapper (40)
    .collect 1205,20,888,1 << Mage/Warlock/Priest/Shaman/Druid --Melon Juice (20)
    .target Innkeeper Wiley
    .isQuestAvailable 888
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
    >>Tötet |cRXP_ENEMY_Sonnenschuppensensenklaue|r, die ihr seht. Plündert sie für |cRXP_LOOT_Hörner|r und |cRXP_LOOT_Federn|r
    >>|cRXP_WARN_Seid vorsichtig denn sie wirken|r |T132152:0|t[Hauen] |cRXP_WARN_(Aufladungen 2 extra Angriffe alle 10 Sek.)|r
    .complete 865,1 --Intact Raptor Horn (5)
    .collect 5165,3,905,3 --Sunscale Feather (3)
    .mob Sunscale Scytheclaw
step
    .goto The Barrens,57.39,52.28,60,0
    .goto The Barrens,58.04,53.87
    >>Plündert |cRXP_PICK_Stolen Silber|r
    .complete 3281,1 --Stolen Silver (1)
step
    #completewith Verog
    >>Sammelt |cRXP_LOOT_Potenter Pilz|r um Die Brackige Oase herum
    .complete 848,1 --Collect Fungal Spores (x4)
step
    #label TestSeeds
    .goto The Barrens,55.61,42.75
    >>Taucht unter Wasser in der Mitte des Sees und klickt auf |cRXP_PICK_Blubbernde Kluft|r.
    .complete 877,1 --Test the Dried Seeds (1)
step
    #completewith next
    .goto The Barrens,52.95,41.75,0
    >>Tötet |cRXP_ENEMY_Verog|r. Plündert ihn für seinen |cRXP_LOOT_Kopf|r
    >>|cRXP_WARN_Er hat eine Chance zu spawnen, jedes Mal wenn ein|r |cRXP_ENEMY_Zentaur|r |cRXP_WARN_besiegt wird|r
    .complete 851,1 --Verog's Head (1)
    .mob Verog the Dervish
    .isOnQuest 851
step
    #loop
    .goto The Barrens,55.80,45.78,0
    .goto The Barrens,55.80,45.78,50,0
    .goto The Barrens,56.75,43.41,50,0
    .goto The Barrens,57.01,41.22,50,0
    .goto The Barrens,55.45,41.37,50,0
    .goto The Barrens,54.99,40.84,50,0
    .goto The Barrens,53.41,40.26,50,0
    .goto The Barrens,52.99,44.73,50,0
    .goto The Barrens,54.31,46.81,50,0
    >>Schleift |cRXP_ENEMY_Zentauren|r rund um die Oase. Plündert sie für |cRXP_LOOT_Armschienen|r
    .complete 855,1 --Centaur Bracers (15)
    .mob Kolkar Bloodcharger
    .mob Kolkar Pack runner
    .mob Kolkar Marauder
    .isOnQuest 851
step
    #label Verog
    #loop
    .goto The Barrens,56.75,43.41,0
    .goto The Barrens,55.80,45.78,50,0
    .goto The Barrens,56.75,43.41,50,0
    .goto The Barrens,57.01,41.22,50,0
    .goto The Barrens,55.45,41.37,50,0
    .goto The Barrens,54.99,40.84,50,0
    .goto The Barrens,53.41,40.26,50,0
    .goto The Barrens,52.99,44.73,50,0
    .goto The Barrens,54.31,46.81,50,0
    >>Schleift |cRXP_ENEMY_Zentauren|r rund um die Oase. Sobald |cRXP_ENEMY_Verog|r spawnt, tötet ihn und plündert seinen |cRXP_LOOT_Kopf|r
    >>|cRXP_ENEMY_Verog|r |cRXP_WARN_hat eine Chance zu spawnen, jedes Mal wenn ein|r |cRXP_ENEMY_Zentaur|r |cRXP_WARN_besiegt wird|r
    .complete 851,1 --Verog's Head (1)
    .mob Verog the Dervish
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
    #completewith LizardHorn
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
    #optional
    #completewith next
    >>Tötet |cRXP_ENEMY_Bluthornsensenklaue|r. Plündert sie für ihre |cRXP_LOOT_Hörner|r
    >>|cRXP_WARN_Seid vorsichtig denn sie wirken|r |T132152:0|t[Hauen] |cRXP_WARN_(Aufladungen 2 extra Angriffe alle 10 Sek.)|r
    .complete 865,1 --Intact Raptor Horn (5)
    .mob Sunscale Scytheclaw
step
    #label LostmyWife
    .goto The Barrens,49.33,50.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mankrik's Wife|r
    .complete 4921,1 --Find Mankrik's Wife (1)
    .target Beaten Corpse
step
    #label LizardHorn
    #completewith SetCampTaurajoHS
    >>Tötet |cRXP_ENEMY_Sturmschnauze|r. Plündert sie für ein |cRXP_LOOT_Horn|r. Das muss nicht jetzt erledigt werden.
    .complete 821,3 --Thunder Lizard Horn (1)
    .mob Stormsnout
step
    #completewith next
    .goto The Barrens,45.23,58.41,120 >> Reist nach Camp Taurajo
    .subzoneskip 378
step
    #label SetCampTaurajoHS
    .goto The Barrens,45.58,59.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Byula|r
    .home >>Setzt euren Ruhestein ins Camp Taurajo
    .target Innkeeper Byula
    .bindlocation 378
    .isQuestAvailable 1093
step
    .goto The Barrens,44.55,59.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Quetschzahn|r
    .accept 878 >>Akzeptiert die Quest Stämme im Krieg
    .target Mangletooth
step
    #completewith Xroadsturnins2
    .goto The Barrens,44.45,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Omusa|r
    .fp Camp Taurajo >> Erlernt die Camp Taurajo-Flugroute << !Tauren
    .fly Crossroads >>Fliege nach Das Wegekreuz
    .subzoneskip 380
    .target Omusa Thunderhorn
step
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Helbrim|r
    .turnin 848 >> Gebt die Quest Pilzsporen ab
    .target Apothecary Helbrim
    .isQuestComplete 848
step
    #label Xroadsturnins2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mankrik|r, |cRXP_FRIENDLY_Tonga|r, |cRXP_FRIENDLY_Sergra|r und |cRXP_FRIENDLY_Gazrog|r
    .turnin 4921 >>Gebt die Quest In der Schlacht vermisst ab
    .target +Mankrik
    .goto The Barrens,52.00,31.60
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
    .destroy 5165 >>|cRXP_WARN_Entfernt alle übrigen|r |T132914:0|t[Bluthornfeder] |cRXP_WARN_die ihr noch habt|r
    .itemcount 5165,1
step << Hunter
    .goto The Barrens,51.67,29.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Barg|r
    .collect 2515,1800,888,1 << Hunter --Sharp Arrow (1800)
    .target Barg
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
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Regthar|r
    .accept 852 >>Akzeptiert die Quest Hezrul Blutmal
    .target Regthar Deathgate
    .isQuestTurnedIn 851
step
    #completewith next
    .goto The Barrens,35.26,27.88,100 >> Reist ins Steinkrallengebirge
    .zoneskip Stonetalon Mountains
step
    #map Stonetalon Mountains
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Seereth|r und |cRXP_FRIENDLY_Makaba|r
    .turnin 1061 >> Gebt die Quest Die Geister des Steinkrallengebirges ab
    .accept 1062 >> Akzeptiert die Quest Goblin-Eindringlinge
    .target +Seereth Stonebreak
    .goto The Barrens,35.26,27.88
    .accept 6548 >> Akzeptiert die Quest Rächt mein Dorf
    .target +Makaba Flathoof
    .goto The Barrens,35.19,27.79

]])

RXPGuides.RegisterGuide([[
#hardcore
#classic
#tbc
<< Horde
#name 19-23 Steinkrallengebirge/Brachland/Eschental
#version 1
#group RestedXP Überlebens-Guide (H)
#subgroup RXP Überlebens-Guide 1-20
#next 23-25 Hillsbrad

step
    #optional
    #completewith next
    >>Brecht die Quest Meldung bei Kadrak ab, um Probleme mit eurem Questtagebuch zu vermeiden. Ihr werdet sie später erneut annehmen.
    .abandon 6541 >> Brecht die Quest Meldung bei Kadrak ab
    .isOnQuest 6541
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
step
    .goto Stonetalon Mountains,73.65,86.13
    >>Tötet |cRXP_ENEMY_Grundig Finsterwolke|r und |cRXP_ENEMY_Schläger der Grimmtotem|r
    >>|cRXP_WARN_Tötet alle sechs|r |cRXP_ENEMY_Schläger der Grimmtotem|r |cRXP_WARN_bevor ihr die Quest startet|r
    .complete 6629,1 --Kill Grundig Darkcloud (x1)
    .mob +Grundig Darkcloud
    .complete 6629,2 --Kill Grimtotem Brute (x6)
    .mob +Grimtotem Brute
step
    .goto Stonetalon Mountains,73.48,85.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kaya|r
    .accept 6523,1 >> Akzeptiert die Quest Schützt Kaya
    .target Kaya Flathoof
step
    .goto Stonetalon Mountains,71.82,86.79,40,0
    .goto Stonetalon Mountains,71.83,89.79,40,0
    .goto Stonetalon Mountains,76.73,90.85
    >>Begleitet |cRXP_FRIENDLY_Kaya|r und bleibt in ihrer Nähe
    >>|cRXP_WARN_Passt auf! Drei|r |cRXP_ENEMY_Grimtotems|r |cRXP_WARN_werden erscheinen, wenn ihr das Lagerfeuer in Camp Aparaje erreicht|r
    .complete 6523,1 --Kaya Escorted to Camp Aparaje
    .target Kaya Flathoof
step
    .goto Stonetalon Mountains,71.25,95.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Xen'Zilla|r
    .accept 6461 >> Akzeptiert die Quest Blutfresser
    .target Xen'Zilla
step
    #completewith InDeepTrouble
    .goto Stonetalon Mountains,68.59,88.34,80,0
    .goto Stonetalon Mountains,64.95,83.88,80,0
    .goto Stonetalon Mountains,61.47,81.51,80,0
    .goto Stonetalon Mountains,60.36,76.28,80,0
    .goto Stonetalon Mountains,59.04,73.01,80,0
    .goto Stonetalon Mountains,60.83,71.84,80,0
    >>Tötet alle |cRXP_ENEMY_Kluftmooskrabbler|r die ihr seht
    .complete 6461,1 --Kill Deepmoss Creeper (x10)
    .mob Deepmoss Creeper
step
    #completewith InDeepTrouble
    .goto Stonetalon Mountains,51.40,61.14,50,0
    .goto Stonetalon Mountains,49.96,61.04
    .subzone 460 >>Reist nach Sonnenfels
step
    #completewith next
    .goto Stonetalon Mountains,49.38,61.68,20,0
    .goto Stonetalon Mountains,48.92,62.71,30,0
    .goto Stonetalon Mountains,48.11,63.88,30,0
    .goto Stonetalon Mountains,47.21,64.05,30 >> Lauft den Pfad links hinauf
    .group
step
    #label InDeepTrouble
    .goto Stonetalon Mountains,47.21,64.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mor'Rogal|r
    .accept 6421 >>Akzeptiert die Quest Steinschlagklamm
    .target Mor'Rogal
    .group
step
    .goto Stonetalon Mountains,47.47,62.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gastwirt Jayka|r
    >>|cRXP_WARN_Setzt euren Ruhestein NICHT!|r
	.vendor >>|cRXP_BUY_Verkauft euren trash, dann füllt euer Essen und Trinken auf, wenn nötig|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Verkauft euren trash, dann füllt eure Nahrung auf, falls nötig|r << Rogue/Warrior
    .target Innkeeper Jayka
    .isQuestAvailable 1093
step
    .goto Stonetalon Mountains,47.61,61.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jeeda|r auf der zweiten Etage des Gasthauses
    .vendor >> |cRXP_BUY_Kauft|r |T134831:0|t[Heiltränke] |cRXP_BUY_von ihr, wenn sie verfügbar sind|r << !Warrior
    .vendor >> |cRXP_BUY_Kauft|r |T134831:0|t[Heiltränke] |cRXP_BUY_und|r |T134413:0|t[Lebenswurz] |cRXP_BUY_von ihr, wenn sie verfügbar sind|r << Warrior
    .target Jeeda
    .isQuestAvailable 1093
step
    .goto Stonetalon Mountains,45.13,59.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Tharm|r
    .fp Sun Rock Retreat >> Erlernt die Flugroute nach Sonnenfels
    .target Tharm
    .subzoneskip 460,1
step
    #completewith next
    .goto Stonetalon Mountains,58.99,62.60,100 >> Reisen zur Scherwindklippe
step
    .goto Stonetalon Mountains,58.99,62.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ziz|r
    .turnin 1483 >> Gebt die Quest Ziz Fizziks ab
    .accept 1093 >> Superschnitter 6000 annehmen
    .target Ziz Fizziks
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Kluftmoosgiftspucker|r
    .complete 6461,2 --Kill Deepmoss Venomspitter (x7)
    .mob Deepmoss Venomspitter
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
    #loop
	.goto Stonetalon Mountains,60.25,63.21,0
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
    .complete 6461,2 --Kill Deepmoss Venomspitter (x7)
    .mob Deepmoss Venomspitter
step << Troll Warrior/Undead Warrior
    .goto Stonetalon Mountains,58.22,51.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Veenix|r|cRXP_BUY_. Kauft einen|r |T135157:0|t[Langstab] |cRXP_BUY_von ihm|r
    .collect 928,1,899,1 --Collect Long Staff (1)
    .money <0.9860
    .target Veenix
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
step << Troll Warrior/Undead Warrior
    #optional
    #completewith BluePrints
    +|cRXP_WARN_Legt|r |T135157:0|t[Langstab] an
    .use 928
    .itemcount 928,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
    .xp <20,1
step << Orc Warrior
    .goto Stonetalon Mountains,58.22,51.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Veenix|r|cRXP_BUY_. Kauft eine|r |T135423:0|t[Streitaxt] |cRXP_BUY_bei ihm|r
    .collect 926,1,899,1 --Collect Battle Axe (1)
    .money <0.9784
    .target Veenix
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.3
step << Orc Warrior
    #optional
    #completewith BluePrints
    +Legt die |T135423:0|t[Streitaxt] |cRXP_WARN_an|r
    .use 926
    .itemcount 926,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.3
    .xp <20,1
step << Tauren Warrior
    .goto Stonetalon Mountains,58.22,51.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Veenix|r|cRXP_BUY_. Kauft einen|r |T133044:0|t[Zermalmen] |cRXP_BUY_bei ihm|r
    .collect 924,1,899,1 --Collect Maul (1)
    .money <1.0972
    .target Veenix
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.0
step << Tauren Warrior
    #optional
    #completewith BluePrints
    +Rüstet |T133044:0|t[Zermalmen] |cRXP_WARN_aus|r
    .use 924
    .itemcount 924,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.0
    .xp <21,1
step << Shaman
    .goto Stonetalon Mountains,58.22,51.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Veenix|r|cRXP_BUY_. Kauft einen|r |T135157:0|t[Langstab] |cRXP_BUY_von ihm|r
    .collect 928,1,899,1 --Collect Long Staff (1)
    .money <0.9860
    .target Veenix
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
step << Shaman
    #optional
    #completewith BluePrints
    +|cRXP_WARN_Legt|r |T135157:0|t[Langstab] an
    .use 928
    .itemcount 928,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
    .xp <20,1
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
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Holzarbeiter der Venture Co.|r
    .complete 1062,1 --Kill Venture Co. Logger (x15)
    .mob Venture Co. Logger
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
	#completewith next
	+|cRXP_WARN_Falls ihr über 15 |cRXP_LOOT_Kluftmooseier|r|cRXP_WARN_ habt, teilt den Stapel auf (Umschalt + Klick),dann zerstört sie|r
step
    .goto Stonetalon Mountains,58.99,62.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ziz|r
    .turnin 1093 >> Gebt die Quest Superschnitter 6000 ab
    .accept 1094 >> Weitere Instruktionen annehmen
    .target Ziz Fizziks
step
    #loop
    .goto Stonetalon Mountains,68.59,88.34,0
    .goto Stonetalon Mountains,60.83,71.84,80,0
    .goto Stonetalon Mountains,59.04,73.01,80,0
    .goto Stonetalon Mountains,60.36,76.28,80,0
    .goto Stonetalon Mountains,61.47,81.51,80,0
    .goto Stonetalon Mountains,64.95,83.88,80,0
    .goto Stonetalon Mountains,68.59,88.34,80,0
    >>Beenden das töten von |cRXP_ENEMY_Kluftmooskrabbler|r
    .complete 6461,1 --Kill Deepmoss Creeper (x10)
    .mob Deepmoss Creeper
step << Druid
    #completewith DruidTraining2
    .cast 18960 >>Wirkt |T135758:0|t[Teleportieren: Mondlichtung]
    .zoneskip Moonglade
step << Druid
    #optional
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Loganaar|r
    .train 1430 >> Trainiere deine Klassenfähigkeiten
    .target Loganaar
    .xp <18,1
    .xp >20,1
step << Druid
    #label DruidTraining2
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Loganaar|r
    .train 768 >> Trainiere deine Klassenfähigkeiten
    .target Loganaar
    .xp <20,1
step
    #completewith next
    .hs >> Ruhestein nach Camp Taurajo
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
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Jorn Himmelsdeuter|r
    .turnin 3261 >>Gebt die Quest Jorn Skyseer ab
    .accept 882 >>Akzeptiert die Quest Ishamuhale
    .target Jorn Skyseer
step
	#completewith LakotaMani
    >>Tötet |cRXP_ENEMY_Stormsnout|r. Plündert sie für |cRXP_LOOT_Horn|r
    .complete 821,3 --Thunder Lizard Horn (1)
    .mob Stormsnout
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Stacheleber der Borstennacken|r. Plündert sie für ihre |cRXP_LOOT_Hauer|r. behaltet die |T134128:0|t[|cRXP_LOOT_Blutsplitter|r], die ihr bekommt
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
	>>Tötet |cRXP_ENEMY_Lakota'mani|r. Plündert sie für die |T132318:0|t[|cRXP_LOOT_Huf von Lakota'mani|r]
    >>|cRXP_WARN_Benutzt die |T132318:0|t[|cRXP_LOOT_Huf von Lakota'mani|r] um die Quest zu beginnen|r
    >>|cRXP_WARN_Er hat 4 Spawnpunkte (auf der Karte markiert)|r
    >>|cRXP_WARN_Überspringt diesen Schritt, falls ihr ihn nicht finden könnt|r
	.collect 5099,1,883,1 --Collect Hoof of Lakota'Mani
	.accept 883 >>Akzeptiert die Quest Lakota'Mani
    .use 5099
    .unitscan Lakota'mani
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Stormsnout|r. Plündert sie für |cRXP_LOOT_Horn|r
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
    >>Tötet |cRXP_ENEMY_Stacheleber der Borstennacken|r. Plündert sie für ihre |cRXP_LOOT_Hauer|r. behaltet die |T134128:0|t[|cRXP_LOOT_Blutsplitter|r], die ihr bekommt
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
    #loop
    .goto The Barrens,50.88,52.96,0
    .goto The Barrens,50.88,52.96,50,0
    .goto The Barrens,50.06,52.78,50,0
    .goto The Barrens,49.35,53.74,50,0
    .goto The Barrens,49.54,55.08,50,0
    .goto The Barrens,49.03,56.24,50,0
    .goto The Barrens,49.72,56.13,50,0
    >>Tötet |cRXP_ENEMY_Stormsnout|r. Plündert sie für |cRXP_LOOT_Horn|r
    .complete 821,3 --Thunder Lizard Horn (1)
    .mob Stormsnout
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Bluthornsensenklaue|r. Plündert sie für ihre |cRXP_LOOT_Hörner|r
    >>|cRXP_WARN_Seid vorsichtig denn sie wirken|r |T132152:0|t[Hauen] |cRXP_WARN_(Aufladungen 2 extra Angriffe alle 10 Sek.)|r
    .complete 865,1 --Intact Raptor Horn (5)
    .mob Sunscale Scytheclaw
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
    .goto The Barrens,57.3,53.7,0
    .goto The Barrens,52.0,46.5,0
    .goto The Barrens,57.3,53.7,90,0
    .goto The Barrens,52.0,46.5,90,0
    >>Beenden das töten von |cRXP_ENEMY_Bluthornsensenklaue|r. Plündert sie für ihre |cRXP_LOOT_Hörner|r
    >>|cRXP_WARN_Seid vorsichtig denn sie wirken|r |T132152:0|t[Hauen] |cRXP_WARN_(Aufladungen 2 extra Angriffe alle 10 Sek.)|r
    .complete 865,1 --Intact Raptor Horn (5)
    .mob Sunscale Scytheclaw
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
    .goto The Barrens,59.71,30.33
    .use 10338 >>Benutzt den |T134368:0|t[|cRXP_LOOT_Frischen Zhevra-Kadaver|r] bei dem toten Baum um |cRXP_ENEMY_Ishamuhale|r zu beschwören. Tötet ihn und plündert ihn für seinen |cRXP_LOOT_Ishamuhales Fangzahn|r
    >>|cRXP_WARN_Der Kadaver ist nur 30 Minuten aktiv!|r
    .complete 882,1 --Ishamuhale's Fang (1)
    .mob Ishamuhale
step
    #completewith BootyTurnin
    .subzone 392 >> Reist nach Ratschet
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
    .accept 822 >>Akzeptiert die Quest Chens leeres Fässchen
    .target +Brewmaster Drohn
    .goto The Barrens,62.27,38.39
    .dungeon WC
step
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
    .accept 822 >>Akzeptiert die Quest Chens leeres Fässchen
    .target +Brewmaster Drohn
    .goto The Barrens,62.27,38.39
step << Warrior
    .goto The Barrens,62.20,38.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grazlix|r
    .vendor >>Kauft |T134583:0|t[|cRXP_FRIENDLY_Mächtige Kettenhose|r] von ihm, falls es verfügbar ist
    .target Grazlix
    .money <0.619
    .itemStat 7,ITEM_MOD_ARMOR_SHORT,<155
    .equip 7,4800
step << Rogue/Hunter/Warrior/Shaman/Druid
    .goto The Barrens,62.16,38.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Vexspindle|r
    .vendor >> Kauft |T132603:0|t[|cRXP_FRIENDLY_Wolf-Armschienen|r] von ihm, falls sie verfügbar sind
    .target Vexspindle
    .money <0.3515
    .itemStat 9,ITEM_MOD_ARMOR_SHORT,<37
    .equip 9,4794
step
    .goto The Barrens,62.05,39.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gastwirt Wiley|r
    .home >>Setzt euren Ruhestein in Ratschet
    .target Innkeeper Wiley
    .bindlocation 392
    .isQuestAvailable 959
    .dungeon WC
step << Warrior
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
    .goto The Barrens,63.09,37.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bigglefuzz|r
    .accept 959 >> Ärger auf den Docks annehmen
    .target Crane Operator Bigglefuzz
    .dungeon WC
step
    #label FlytoXroads
    #completewith XroadsHS2
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Bragok|r
    .fly Crossroads >> Fliege nach Das Wegekreuz
    .target Bragok
    .subzoneskip 380
step
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
    .destroy 5085 >>|cRXP_WARN_Zerstört jeden verbleibenden|r |T133721:0|t[Stacheleberhauer der Borstennacken] |cRXP_WARN_den ihr noch haben könntet|r
    .itemcount 5085,1
step
    #label XroadsHS2
    .goto The Barrens,51.99,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gastwirt Boorand|r
    .home >>Setzt euren Ruhestein im Wegekreuz
	.vendor >>|cRXP_BUY_Verkauft euren trash, dann füllt euer Essen und Trinken auf, wenn nötig|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Verkauft euren trash, dann füllt eure Nahrung auf, falls nötig|r << Rogue/Warrior
    .target Innkeeper Boorand Plainswind
    .bindlocation 380
    .dungeon !WC
step << Shaman
    #completewith next
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Devrak|r
    .fly Orgrimmar >> Fliege nach Orgrimmar
    .zoneskip Orgrimmar
    .target Devrak
step << Shaman
    .goto Orgrimmar,37.96,37.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Searn|r
	.accept 1528 >> Akzeptiert die Quest Ruf des Wassers
    .target Searn Firewarder
step << Shaman
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kardris|r
    .train 2645 >> Trainiere deine Klassenfähigkeiten
    .target Kardris Dreamseeker
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
    .collect 16346,1,1507,1 --Grimoire of Torment (Rank 2)
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
    .collect 5210,1,1507,1 --Collect Burning Wand (1)
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
step
    #completewith EnterDM
    .subzone 1581 >> Jetzt solltet ihr nach einer Gruppe für die Todesminen suchen
    .dungeon DM
step
    #completewith ZepptoSTVforDM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Devrak|r
    .fly Orgrimmar >> Fliege nach Orgrimmar
    .zoneskip Orgrimmar
    .target Devrak
    .dungeon DM
step << Shaman
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kardris|r
    .train 8052 >> Trainiere deine Klassenfähigkeiten
    .target Kardris Dreamseeker
    .xp <18,1
    .xp >20,1
    .dungeon DM
step << Shaman
    #optional
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kardris|r
    .train 2645 >> Trainiere deine Klassenfähigkeiten
    .target Kardris Dreamseeker
    .xp <20,1
    .dungeon DM
step << Hunter
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ormak|r
	.train 14318 >>Trainiere deine Klassenfähigkeiten
    .target Ormak Grimshot
    .xp <18,1
    .xp >20,1
    .dungeon DM
step << Hunter
    #optional
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ormak|r
	.train 14290 >>Trainiere deine Klassenfähigkeiten
    .target Ormak Grimshot
    .xp <20,1
    .dungeon DM
step << Hunter
    .goto Orgrimmar,66.33,14.83
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Xao'tsu|r
	.train 5118 >>Erlernt eure Begleiterfähigkeiten
	.target Xao'tsu
    .xp <20,1
    .dungeon DM
step << Warrior
    .goto Orgrimmar,79.91,31.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Grezz|r
	.train 8198 >>Trainiere deine Klassenfähigkeiten
    .target Grezz Ragefist
    .xp <18,1
    .xp >20,1
    .dungeon DM
step << Warrior
    #optional
    .goto Orgrimmar,79.91,31.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Grezz|r
    .train 845 >> Trainiere deine Klassenfähigkeiten
    .target Grezz Ragefist
    .xp <20,1
    .dungeon DM
step << Rogue
    .goto Orgrimmar,43.90,54.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ormok|r
    .train 1943 >> Trainiere deine Klassenfähigkeiten
    .target Ormok
    .xp <20,1
    .dungeon DM
step << Warlock
    .goto Undercity,48.47,45.42
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Zevrost|r
    .train 1014 >> Trainiere deine Klassenfähigkeiten
	.target Zevrost
    .xp <18,1
    .xp >20,1
    .dungeon DM
step << Warlock
    #optional
    .goto Undercity,48.47,45.42
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Zevrost|r
    .train 706 >> Trainiere deine Klassenfähigkeiten
	.target Zevrost
    .xp <20,1
    .dungeon DM
step << Mage
    .goto Orgrimmar,38.36,85.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |r |cRXP_FRIENDLY_Pephredo|r
    .train 3140 >> Trainiere deine Klassenfähigkeiten
    .target Pephredo
    .xp <18,1
    .xp >20,1
    .dungeon DM
step << Mage
    #optional
    .goto Orgrimmar,38.36,85.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |r |cRXP_FRIENDLY_Pephredo|r
    .train 1953 >> Trainiere deine Klassenfähigkeiten
    .target Pephredo
    .xp <20,1
    .dungeon DM
step << Priest
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit|r |cRXP_FRIENDLY_Ur'kyo|r
    .train 970 >> Trainiere deine Klassenfähigkeiten
    .target Ur'kyo
    .xp <18,1
    .xp >20,1
    .dungeon DM
step << Priest
    #optional
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit|r |cRXP_FRIENDLY_Ur'kyo|r
    .train 14914 >> Trainiere deine Klassenfähigkeiten
    .target Ur'kyo
    .xp <20,1
    .dungeon DM
step
    #ah
    .goto Orgrimmar,55.59,62.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thathung|r
    >>|cRXP_BUY_Kauft|r |T132794:0|t[Fläschchen Öl] |cRXP_BUY_vom Auktionshaus wenn möglich|r
    .collect 814,5,103,1 --Flask of Oil (5)
	.target Auctioneer Thathung
    .dungeon DM
step
    #completewith next
    .zone Durotar >> Verlass Orgrimmar
    .zoneskip Durotar
    .dungeon DM
step
    #label ZepptoSTVforDM
    .goto Durotar,50.8,13.8,40 >>Geh auf den Zeppelin-Turm
    .zone Stranglethorn Vale >>Nehmt den Zeppelin nach Schlingendorntal
    .zoneskip Stranglethorn Vale
    .dungeon DM
step
    .goto Stranglethorn Vale,30.51,29.10,40,0
    .goto Stranglethorn Vale,27.09,31.27,40,0
    .goto Stranglethorn Vale,22.90,31.17,60,0
    .goto Stranglethorn Vale,19.06,27.00,60,0
    .goto Stranglethorn Vale,16.33,23.46,60,0
    .goto Stranglethorn Vale,13.49,19.04,60,0
    .goto Westfall,41.08,98.55,60,0
    .goto Westfall,37.10,89.16,40,0
    .goto Westfall,30.01,86.02,200 >> Schwimmt direkt westlich von Grom'Gol ins Das finstere Riff und schwimmt dann nördlich in Richtung Westfall
    >>|cRXP_WARN_Meidet die Insel. Folgt dem Wegpunkt zur Sicherheit!|r
    .dungeon DM
step
    #completewith next
    .goto Westfall,30.01,86.02,40 >> Reist zum Leuchtturm von Westfall
    .dungeon DM
step
    .goto Westfall,30.01,86.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kapitän Grausohn|r
    .accept 103 >> Akzeptiert die Quest Bewahrer der Flamme
    .target Captain Grayson
    .itemcount 814,5 -- Flask of Oil (5)
    .dungeon DM
step
    .goto Westfall,30.01,86.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kapitän Grausohn|r
    .turnin 103 >> Gebt die Quest Bewahrer der Flamme ab
    .itemcount 814,5 -- Flask of Oil (5)
    .target Captain Grayson
    .dungeon DM
step
    .goto Westfall,30.01,86.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kapitän Grausohn|r
    .accept 104 >> Akzeptiert die Quest Bedrohung an der Küste
    .target Captain Grayson
    .dungeon DM
step
    .goto Westfall,34.43,83.93
    .line Westfall,34.43,83.93,34.43,83.93,33.88,83.32,33.08,82.86,32.56,82.71,32.08,82.49,31.91,82.36,31.55,81.88,30.86,81.42,30.63,81.16,30.33,80.81,30.02,80.11,29.68,79.22,29.32,78.19,29.29,77.60,29.27,77.31,29.18,76.26,29.07,75.29,28.95,74.14,28.85,73.29,28.79,72.48,28.37,71.94,27.84,71.29,27.44,70.25,27.29,69.47,27.13,68.65,27.09,67.57,27.07,67.01,26.74,66.09,27.07,67.01,27.09,67.57,27.13,68.65,27.29,69.47,27.44,70.25,27.84,71.29,28.37,71.94,28.79,72.48,28.85,73.29,28.95,74.14,29.07,75.29,29.18,76.26,29.27,77.31,29.29,77.60,29.32,78.19,29.68,79.22,30.02,80.11,30.33,80.81,30.63,81.16,30.86,81.42,31.55,81.88,31.91,82.36,32.08,82.49,32.56,82.71,33.08,82.86,33.88,83.32,34.43,83.93
    >>Tötet |cRXP_ENEMY_Old Murk-Eye|r. Plündert ihn für seine |cRXP_LOOT_Schuppe|r
    >>|cRXP_ENEMY_Old Murk-Eye|r |cRXP_WARN_patrouilliert auf und ab an der Endlosen Küste. Falls ihr ihn nicht seht, wartet, bis er im südlichsten |cRXP_ENEMY_Murloc|r-Lager spawnt|r
    .complete 104,1 -- Scale of Old Murk-Eye (1)
    .unitscan Old Murk-Eye
    .dungeon DM
step
    .goto Westfall,30.01,86.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kapitän Grausohn|r
    .turnin 104 >> Gebt die Quest Bedrohung an der Küste ab
    .target Captain Grayson
    .dungeon DM
step
    #optional
    .abandon 103 >> Brecht die Quest Bewahrer der Flamme ab
    .dungeon DM
step
    #label EnterDM
    .goto Eastern Kingdoms,40.92,81.97,8,0
    .goto Eastern Kingdoms,40.92,82.02,8,0
    .goto Eastern Kingdoms,40.89,82.04,8,0
    .goto Eastern Kingdoms,40.96,82.10,8,0
    .goto Eastern Kingdoms,40.92,82.16,15,0
    .goto Eastern Kingdoms,40.82,82.30,15,0
    .goto Eastern Kingdoms,40.77,82.52,15,0
    .goto Eastern Kingdoms,40.74,82.61,15,0
    .goto Eastern Kingdoms,40.63,82.49,15,0
    .goto Eastern Kingdoms,40.50,82.45
    .zone 291 >> Betretet das Todesminen Instanz-Portal. Betretet die Instanz.
    .dungeon DM
step
    .hs >> Geht ins Brachland, nachdem ihr Todesminen abgeschlossen habt.
    .zone The Barrens >> Trefft im Brachland ein
    .use 6948
    .dungeon DM
step
    #optional
    .goto The Barrens,62.05,39.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gastwirt Wiley|r
	.vendor >>|cRXP_BUY_Verkauft euren trash, dann füllt euer Essen und Trinken auf, wenn nötig|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Verkauft euren trash, dann füllt eure Nahrung auf, falls nötig|r << Rogue/Warrior
    .target Innkeeper Wiley
    .subzoneskip 392,1
    .dungeon WC
step
    #optional
    .goto The Barrens,51.99,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gastwirt Boorand|r
	.vendor >>|cRXP_BUY_Verkauft euren trash, dann füllt euer Essen und Trinken auf, wenn nötig|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Verkauft euren trash, dann füllt eure Nahrung auf, falls nötig|r << Rogue/Warrior
    .target Innkeeper Boorand Plainswind
    .subzoneskip 380,1
    .dungeon DM
step << Warlock
    #optional
    #completewith TurninDogran
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Bragok|r
    .fly Crossroads >> Fliege nach Das Wegekreuz
    .target Bragok
    .subzoneskip 392,1
    .dungeon WC
step << Warlock
    #completewith TurninDogran
    .goto Orgrimmar,45.13,63.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Doras|r
	.fly Crossroads >> Fliege nach Das Wegekreuz
    .zoneskip Orgrimmar,1
    .target Doras
step << Warlock
    #label TurninDogran
    .goto The Barrens,51.93,30.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gazrog|r
    .turnin 1509 >>Gebt die Quest Neuigkeiten von Dogran ab
    .accept 1510 >>Akzeptiert die Quest Neuigkeiten von Dogran
    .target Gazrog
step << Shaman
    #optional
    #completewith CallofWater01
    .goto Orgrimmar,45.13,63.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Doras|r
    .fly Ratchet >> Fliege nach Ratschet
    .target Doras
    .zoneskip Orgrimmar,1
step << Shaman
    #optional
    #completewith CallofWater01
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Bragok|r
    .fly Ratchet >> Fliege nach Ratschet
    .target Bragok
    .subzoneskip 392,1
    .dungeon DM
step << Shaman
    #label CallofWater01
    .goto The Barrens,65.83,43.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Islen|r
    .turnin 1528 >>Gebt die Quest Ruf des Wassers ab
    .accept 1530 >>Akzeptiert die Quest Ruf des Wassers
    .target Islen Waterseer
step << Shaman
    #completewith next
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Bragok|r
    .fly Crossroads >> Fliege nach Das Wegekreuz
    .target Bragok
    .subzoneskip 380
step << !Shaman
    #completewith next
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Bragok|r
    .fly Crossroads >> Fliege nach Das Wegekreuz
    .target Bragok
    .subzoneskip 392,1
step
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Helbrim|r
    >>|cRXP_FRIENDLY_Helbrim|r |cRXP_WARN_Startet eine 45-Minuten-Zeitquest|r
    .accept 853 >> Akzeptiert die Quest Apothekerin Zamah
    .target Apothecary Helbrim
    .isQuestTurnedIn 848
    .isQuestAvailable 853
step
    #sticky
    #completewith ZamahTurnin
    +|cRXP_WARN_Ihr seid auf einer zeitgesteuerten Quest, geht nicht afk. Sie wird 20-30 Minuten nach der Annahme automatisch abgegeben|r
    .isOnQuest 853
step << !Warlock !Shaman
    #completewith TribesTurnin
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Bragok|r
    .fly Camp Taurajo >> Fliege nach Camp Taurajo
    .target Bragok
    .subzoneskip 392,1
    .dungeon WC
step << Shaman
    #completewith TribesTurnin
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Bragok|r
    .fly Camp Taurajo >> Fliege nach Camp Taurajo
    .subzoneskip 378
    .target Bragok
step << !Shaman
    #completewith TribesTurnin
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Devrak|r
    .fly Camp Taurajo >> Fliege nach Camp Taurajo
    .target Devrak
    .subzoneskip 380,1
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
    .addquestitem 5075,5052
step
    #optional
    #completewith Thunderhawk
    .goto The Barrens,44.55,59.27,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Quetschzahn|r
    +|cRXP_WARN_Benutzt euren|r |T134128:0|t[|cRXP_LOOT_Blutsplitter|r] |cRXP_WARN_um Buffs zu erhalten. Behaltet mindestens 4 davon für später|r
    +|cRXP_WARN_Achtet darauf, dass ihr alle Autovervollständigungsfunktionen von Add-ons wie Questie oder Leatrix Plus ausschaltet!|r
    .target Mangletooth
step
    #label IshamuhaleTurnin
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Jorn Himmelsdeuter|r
    .turnin 882 >>Gebt die Quest Ishamuhale ab
    .accept 907 >>Akzeptiert die Quest Wütende Donnerechsen
    .target Jorn Skyseer
step
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Jorn Himmelsdeuter|r
    .accept 883 >>Akzeptiert die Quest Lakota'Mani
    .turnin 883 >>Gebt die Quest Lakota'mani ab
    .target Jorn Skyseer
    .itemcount 5099,1
step
    #loop
    .goto The Barrens,44.32,60.84,0
    .goto The Barrens,44.32,60.84,60,0
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
    >>Tötet |cRXP_ENEMY_Donnerechsen|r. Plündert sie für |cRXP_LOOT_Blut|r
    .complete 907,1 --Thunder Lizard Blood (3)
    .mob Thunderhead
    .mob Stormsnout
step
    #label Thunderhawk
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Jorn|r
    .turnin 907 >>Gebt die Quest Wütende Donnerechsen ab
    .accept 913 >>Akzeptiert die Quest Der Ruf des Donnerfalken
    .target Jorn Skyseer
step << Shaman
    #completewith CallofWater2
    .goto The Barrens,43.42,77.41,60>> Reisen south toward |cRXP_FRIENDLY_Brine|r
step << Shaman
    #completewith next
    >>Tötet einen |cRXP_ENEMY_Donnerfalken|r. Plündert sie für |cRXP_LOOT_Flügel|r
    .complete 913,1 --Thunderhawk Wings (1)
    .mob Thunderhawk Hatchling
    .mob Thunderhawk Cloudscraper
    .mob Greater Thunderhawk
step << Shaman
    #label CallofWater2
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
    #completewith ThunderhawkTurnin
    .goto The Barrens,44.85,59.14,200 >>Reist zurück ins Camp Taurajo
step
    #loop
    .goto The Barrens,44.83,63.12,0
    .goto The Barrens,44.83,63.12,60,0
    .goto The Barrens,46.57,61.33,60,0
    .goto The Barrens,48.99,58.69,60,0
    .goto The Barrens,45.45,56.69,60,0
    .goto The Barrens,43.41,56.96,60,0
    >>Tötet einen |cRXP_ENEMY_Donnerfalken|r. Plündert sie für |cRXP_LOOT_Flügel|r
    .complete 913,1 --Thunderhawk Wings (1)
    .mob Thunderhawk Hatchling
    .mob Thunderhawk Cloudscraper
step
    #label ThunderhawkTurnin
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Jorn Himmelsdeuter|r
    .turnin 913 >>Gebt die Quest Der Ruf des Donnerfalken ab
    .accept 874 >>Akzeptiert die Quest Mahren Skyseer
    .target Jorn Skyseer
step << !Tauren
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Quetschzahn|r
    .aura 16618 >>|cRXP_WARN_Falls ihr 10|r |T134128:0|t[|cRXP_LOOT_Blutsplitter|r übrig habt, benutzt sie, um|cRXP_WARN_ |T136022:0|t[Geist des Windes] |rvon|cRXP_WARN_ Quetschzahn|r |cRXP_FRIENDLY_zu erhalten|r
    >>|cRXP_WARN_Überspringen diesen Schritt, falls ihr die Donnerfels-Flugroute habt|r
    .itemcount 5075,10
    .target Mangletooth
step << !Tauren
    #completewith next
    .goto Mulgore,68.68,60.34,120,0
    .zone Mulgore >>Reist nach Mulgore
step << !Tauren
    #completewith DeathDUPpickup
    .goto Thunder Bluff,31.78,65.92
    .zone Thunder Bluff >>Nehmt den Aufzug nach Donnerfels
    >>|cRXP_WARN_Wenn ihr die Donnerfels Flugroute habt, fliegt stattdessen dorthin|r
step << Tauren
    #completewith DeathDUPpickup
    .goto The Barrens,44.45,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Omusa|r
    .fly Thunder Bluff >>Fliege nach Donnerfels
    .target Omusa Thunderhorn
step << Undead Warrior/Orc Warrior/Troll Warrior
    .goto Thunder Bluff,40.93,62.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ansekhwa|r
    .train 199 >>Erlernt Zweihandstreitkolben
    .train 227 >>Erlernt Stäbe
    .target Ansekhwa
step << Troll Hunter/Orc Hunter/Undead Warrior/Warlock/Priest
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
    .collect 3137,200,6544,1 --Deadly Throwing Axe (200)
    .target Kuruk
step
    .goto Thunder Bluff,47.12,57.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Chesmu|r
    .bankdeposit 5075 >> Packt eure |T134128:0|t[Blutsplitter] auf die Bank
    .target Chesmu
step
    .goto Thunder Bluff,45.83,64.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gastwirtin Pala|r
    .home >>Setzt euren Ruhestein in Donnerfels
    .target Innkeeper Pala
    .bindlocation 1638
    .dungeon !WC
step
    #completewith next
    .goto Thunder Bluff,28.14,32.97,40,0
    .goto Thunder Bluff,28.51,28.95,10 >> Reist zur Anhöhe der Geister und begebt euch zu den Teichen der Visionen
step
    #sticky
    #completewith DeathDUPpickup
    .goto Thunder Bluff,28.55,25.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Clarice|r
    .accept 264 >> Akzeptiert die Quest Bis dass der Tod uns scheidet
    .target Clarice Foster
    .dungeon !WC
step
    .goto Thunder Bluff,22.82,20.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Zamah|r
    .turnin 853 >> Gebt die Quest Apothekerin Zamah ab
    .accept 962 >> Akzeptiert die Quest Schlangenflaum
    .target Apothecary Zamah
    .isOnQuest 853
    .dungeon WC
step
    #optional
    .goto Thunder Bluff,22.82,20.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Zamah|r
    .accept 962 >> Akzeptiert die Quest Schlangenflaum
    .target Apothecary Zamah
    .dungeon WC
step
    #optional
    #label ZamahTurnin
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
    #optional
    #label DeathDUPpickup
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
step
    #completewith next
    .skill firstaid,80 >> |cRXP_WARN_Stellt|r |T133688:0|t[Schwerer Leinenverband] |cRXP_WARN_bis euer skill auf 80 oder higher ist her|r
    .skill firstaid,<1,1
step
    .goto Thunder Bluff,29.68,21.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |r |cRXP_FRIENDLY_Pand|r
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
    #completewith next
    .goto Thunder Bluff,69.88,30.90,80 >> Reist zur Anhöhe der Ältesten
step
    .goto Thunder Bluff,78.61,28.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Hamuul|r
    .turnin 1489 >> Gebt die Quest Hamuul Runentotem ab
    .accept 1490 >> Akzeptiert die Quest Nara Wildmane
    .target Arch Druid Hamuul Runetotem
step
    .goto Thunder Bluff,75.65,31.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Nara|r
    .turnin 1490 >> Gebt die Quest Nara Wildmane ab
    .accept 914 >> Akzeptiert die Quest Anführer der Giftzähne
    .target Nara Wildmane
    .dungeon WC
step
    .goto Thunder Bluff,75.65,31.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Nara|r
    .turnin 1490 >> Gebt die Quest Nara Wildmane ab
    .target Nara Wildmane
step << Druid
    .goto Thunder Bluff,76.48,27.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Turak|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .accept 27 >> Akzeptiert die Quest Eine wertvolle Lektion
    .target Turak Runetotem
step << Druid
    #completewith next
    .cast 18960 >>Wirkt |T135758:0|t[Teleportieren: Mondlichtung]
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
    .collect 15877,1,28,1 >>Plündert den |cRXP_PICK_Schmuckstückbehälter|r am Boden des Sees für ein |T134125:0|t[Schrein-Schmuckstück]
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
    #completewith FlyXroads2
    .hs >> Ruhestein nach Donnerfels
    .use 6948
    .cooldown item,6948,>0
    .dungeon !WC
step << Druid
    #completewith FlyXroads2
    .goto Moonglade,44.29,45.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bunthen|r
    .fly Thunder Bluff >> Fliege nach Donnerfels
    .target Bunthen Plainswind
    .zoneskip Thunder Bluff
    .dungeon WC
step << Druid
    #completewith FlyXroads2
    .goto Moonglade,44.29,45.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bunthen|r
    .fly Thunder Bluff >> Fliege nach Donnerfels
    .target Bunthen Plainswind
    .cooldown item,6948,<0
    .zoneskip Thunder Bluff
    .dungeon !WC
step << Hunter
    #completewith HunterTraining2
    .goto Thunder Bluff,61.31,78.25,60 >> Reist zur Anhöhe der Jäger
step << Hunter
    .goto Thunder Bluff,59.13,86.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Urek|r
    .train 5118 >> Trainiere deine Klassenfähigkeiten
    .target Urek Thunderhorn
    .xp <20,1
    .xp >22,1
step << Hunter
    #label HunterTraining2
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
    #completewith next
    .goto Thunder Bluff,61.31,78.25,60 >> Reist zur Anhöhe der Jäger
step << Warrior
    .goto Thunder Bluff,57.27,87.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Torm|r
    .train 845 >> Trainiere deine Klassenfähigkeiten
    .accept 1823 >>Akzeptiert die Quest Gespräch mit Ruga
    .target Torm Ragetotem
step << Rogue
    .goto Thunder Bluff,53.00,56.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Kard|r|cRXP_BUY_. Kauft ein|r |T135324:0|t[Langschwert] |cRXP_BUY_von ihm.|r
    .collect 923,1,493,1 --Collect Longsword (1)
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
    .xp <21,1
step << Warrior/Shaman
    #completewith next
    #ah
    +|cRXP_FRIENDLY_Falls es billiger ist, könnt ihr stattdessen eine grüne Waffe vom Auktionshaus kaufen|r
step << Warrior
    .goto Thunder Bluff,53.21,58.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Etu|r|cRXP_BUY_. Kauft ein|r |T135157:0|t[Langstab] |cRXP_BUY_von ihm|r
    .collect 928,1,493,1 --Collect Long Staff (1)
    .money <0.9860
    .target Etu Ragetotem
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
step << Warrior
    #optional
    #completewith KayaLives
    +|cRXP_WARN_Legt|r |T135157:0|t[Langstab] an
    .use 928
    .itemcount 928,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
step << Shaman
    .goto Thunder Bluff,53.21,58.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Etu|r|cRXP_BUY_. Kauft ein|r |T135157:0|t[Langstab] |cRXP_BUY_von ihm|r
    .collect 928,1,493,1 --Collect Long Staff (1)
    .money <0.9860
    .target Etu Ragetotem
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
step << Shaman
    #optional
    #completewith KayaLives
    +|cRXP_WARN_Legt|r |T135157:0|t[Langstab] an
    .use 928
    .itemcount 928,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
step << Shaman
    #season 2
    .goto Thunder Bluff,53.21,58.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Etu|r|cRXP_BUY_. Kauft einen|r |T133476:0|t[Dreschflegel] |cRXP_BUY_von ihm|r
    .collect 925,1,493,1 --Collect Flail (1)
    .money <0.7797
    .target Etu Ragetotem
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << Shaman
    #season 2
    #optional
    #completewith KayaLives
    +|cRXP_WARN_Legt den|r |T133476:0|t[Dreschflegel] an
    .use 925
    .itemcount 925,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << Hunter
    .goto Thunder Bluff,46.98,45.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Kuna|r|cRXP_BUY_. Kauft einen|r |T135489:0|t[Schwerer Doppelbogen] |cRXP_BUY_von ihr|r
    .collect 3027,1,493,1 --Collect Heavy Recurve Bow (1)
    .money <0.5643
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.1
    .target Kuna Thunderhorn
step << Hunter
    #optional
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
    .collect 2515,1600,493,1 << Hunter --Sharp Arrow (1600)
    .target Kuna Thunderhorn
step
    #sticky
    #completewith EnterWC
    .subzone 718 >> Ihr solltet euch jetzt eine Gruppe für die Höhlen des Wehklagens suchen
    .dungeon WC
step
    #label FlyXroads2
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Tal|r
    .fly Crossroads >>Fliege nach Das Wegekreuz
    .target Tal
    .zoneskip The Barrens
step
    #completewith next
    .goto The Barrens,45.66,40.34,120 >> Reist zur Blühenden Oase
    .isQuestTurnedIn 851
step
    #loop
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
    >>Findet und tötet |cRXP_ENEMY_Hezrul Blutmal|r. Plündert ihn für seinen |cRXP_LOOT_Kopf|r
    >>|cRXP_ENEMY_Hezrul|r |cRXP_WARN_patrouilliert um den See herum|r
    .complete 852,1 --Hezrul's Head
    .unitscan Hezrul Bloodmark
    .isQuestTurnedIn 851
step
    .goto The Barrens,46.15,36.93,100 >> Reist zu den Höhlen des Wehklagens
    .isOnQuest 914
    .dungeon WC
step
    #completewith next
    .goto The Barrens,46.95,35.18,0
    .goto The Barrens,46.95,35.18,30,0
    .goto The Barrens,46.83,34.74,20,0
    .goto Kalimdor,51.98,55.36,20,0
    .goto Kalimdor,51.89,55.55,10,0
    .goto Kalimdor,51.87,55.50,10 >>Lauft den Berg hinauf am Versammlungsstein der Höhlen des Wehklagens
    >>|cRXP_WARN_Folgt dem Pfeil genau zur verborgenen Höhle|r
    .dungeon WC
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Nalpak|r und |cRXP_FRIENDLY_Ebru|r
    >>|cRXP_WARN_Sie befinden sich über dem Eingang der Höhlen des Wehklagens|r
    .accept 1486 >> Deviatbälge annehmen
    .target +Nalpak
    .goto Kalimdor,51.91,55.42
    .accept 1487 >> Ausrottung der Deviat annehmen
    .goto Kalimdor,51.92,55.44
    .target +Ebru
    .dungeon WC
step
    #optional
    #completewith EnterWC
    >>Sammelt |cRXP_PICK_Schlangenflaum|r vom Boden
    >>|cRXP_WARN_Es wird empfohlen, dass maximal 3 Spieler diese Quest versuchen zu vollenden, wenn ihr nur 1 Durchlauf macht. Es gibt nicht genug|r |cRXP_PICK_Schlangenflaum|r |cRXP_WARN_für alle|r
    >>|cRXP_WARN_Wirkt|r |T133939:0|t[Kräutersuche] |cRXP_WARN_um sie auf der Minikarte von euch zu sehen|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .isOnQuest 962
    .dungeon WC
step
    #completewith EnterWC
    >>Sammelt |cRXP_PICK_Schlangenflaum|r vom Boden
    >>|cRXP_WARN_Es wird empfohlen, dass maximal 3 Spieler diese Quest versuchen zu vollenden, wenn ihr nur 1 Durchlauf macht. Es gibt nicht genug|r |cRXP_PICK_Schlangenflaum|r |cRXP_WARN_für alle|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
    .dungeon WC
step
    #completewith EnterWC
    >>Tötet |cRXP_ENEMY_Deviat mobs|r, die ihr seht. Plündert sie für ihre |cRXP_LOOT_Deviatbälge|r
    >>|cRXP_WARN_Es wird empfohlen, dass maximal 3 Spieler diese Quest versuchen zu absolvieren, wenn ihr nur einen Durchgang macht. Es gibt nicht genug|r |cRXP_LOOT_Bälge|r |cRXP_WARN_für alle|r
    .complete 1486,1 --Deviate Hide (20)
    .dungeon WC
    .isOnQuest 1486
    --Too many .mobs, would clutter target box
step
    #completewith EnterWC
    >>Tötet |cRXP_ENEMY_Ektoplasma|r. Plündert sie für ihr |cRXP_LOOT_Klageessenz|r
    .complete 1491,1 --Wailing Essence (6)
    .isOnQuest 1491
    .dungeon WC
step
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
    >>|cRXP_WARN_Er hat eine lange Respawn-Zeit. Überspringt diesen Schritt, wenn ihr ihn nicht finden könnt|r
    .complete 959,1 --99-Year-Old Port (1)
    .mob Mad Magglish
    .isOnQuest 959
    .dungeon WC
step
    #label EnterWC
    .goto Kalimdor,51.89,54.77,20,0
    .goto Kalimdor,51.95,54.56,20,0
    .goto Kalimdor,52.27,54.65,30,0
    .goto Kalimdor,52.40,55.20,30 >> Betretet das HDW-Instanzportal. Tretet ein
    .dungeon WC
step
    #optional
    #completewith GlowingShard
    >>Sammelt |cRXP_PICK_Schlangenflaum|r vom Boden
    >>|cRXP_WARN_Es wird empfohlen, dass maximal 3 Spieler diese Quest versuchen zu vollenden, wenn ihr nur 1 Durchlauf macht. Es gibt nicht genug|r |cRXP_PICK_Schlangenflaum|r |cRXP_WARN_für alle|r
    >>|cRXP_WARN_Wirkt|r |T133939:0|t[Kräutersuche] |cRXP_WARN_um sie auf der Minikarte von euch zu sehen|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .isOnQuest 962
    .dungeon WC
step
    #optional
    #completewith GlowingShard
    >>Sammelt |cRXP_PICK_Schlangenflaum|r vom Boden
    >>|cRXP_WARN_Es wird empfohlen, dass maximal 3 Spieler diese Quest versuchen zu vollenden, wenn ihr nur 1 Durchlauf macht. Es gibt nicht genug|r |cRXP_PICK_Schlangenflaum|r |cRXP_WARN_für alle|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
    .dungeon WC
step
    #optional
    #completewith GlowingShard
    >>Tötet |cRXP_ENEMY_Ektoplasma|r. Plündert sie für ihr |cRXP_LOOT_Klageessenz|r
    >>|cRXP_WARN_Es wird empfohlen, dass maximal 3 Spieler diese Quest versuchen zu absolvieren, wenn ihr nur einen Durchgang macht. Es gibt nicht genug|r |cRXP_LOOT_Bälge|r |cRXP_WARN_für alle|r
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
    #optional
    #completewith DeviateRaptors
    >>Tötet |cRXP_ENEMY_Ektoplasma|r. Plündert sie für ihr |cRXP_LOOT_Klageessenz|r
    .complete 1491,1 --Wailing Essence (6)
    .isOnQuest 1491
    .dungeon WC
step
    #optional
    #completewith Ectoplasms
    >>Sammelt |cRXP_PICK_Schlangenflaum|r vom Boden
    >>|cRXP_WARN_Es wird empfohlen, dass maximal 3 Spieler diese Quest versuchen zu vollenden, wenn ihr nur 1 Durchlauf macht. Es gibt nicht genug|r |cRXP_PICK_Schlangenflaum|r |cRXP_WARN_für alle|r
    >>|cRXP_WARN_Wirkt|r |T133939:0|t[Kräutersuche] |cRXP_WARN_um sie auf der Minikarte von euch zu sehen|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .isOnQuest 962
    .dungeon WC
step
    #optional
    #completewith Ectoplasms
    >>Sammelt |cRXP_PICK_Schlangenflaum|r vom Boden
    >>|cRXP_WARN_Es wird empfohlen, dass maximal 3 Spieler diese Quest versuchen zu vollenden, wenn ihr nur 1 Durchlauf macht. Es gibt nicht genug|r |cRXP_PICK_Schlangenflaum|r |cRXP_WARN_für alle|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
    .dungeon WC
step
    #optional
    >>Tötet |cRXP_ENEMY_Deviatverheerer|r, |cRXP_ENEMY_Deviatviper|r, |cRXP_ENEMY_Deviatschlurfer|r und |cRXP_ENEMY_Deviatschreckensfang|r .Plündert sie für ihre|cRXP_ENEMY_Balg|r
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
    .isOnQuest 1486
    .dungeon WC
 step
    >>Tötet |cRXP_ENEMY_Deviatverheerer|r, |cRXP_ENEMY_Deviatviper|r, |cRXP_ENEMY_Deviatschlurfer|r und |cRXP_ENEMY_Deviatschreckensfang|r
    .complete 1487,1 --Deviate Ravager (7)
    .mob +Deviate Ravager
    .complete 1487,2 --Deviate Viper (7)
    .mob +Deviate Viper
    .complete 1487,3 --Deviate Shambler (7)
    .mob +Deviate Shambler
    .complete 1487,4 --Deviate Dreadfang (7)
    .mob +Deviate Dreadfang
    .isOnQuest 1487
    .dungeon WC
step
    #label DeviateRaptors
    >>Tötet |cRXP_ENEMY_Deviat Raptoren|r. Plündert sie für |cRXP_ENEMY_Bälge|r
    .complete 1486,1 --Deviate Hide (20)
    .mob Deviate Ravager
    .mob Deviate Viper
    .mob Deviate Shambler
    .mob Deviate Dreadfang
    .isOnQuest 1486
    .dungeon WC
step
    #label Ectoplasms
    >>Tötet |cRXP_ENEMY_Ektoplasma|r. Plündert sie für ihr |cRXP_LOOT_Klageessenz|r
    .complete 1491,1 --Wailing Essence (6)
    .mob Devouring Ectoplasm
    .mob Evolving Ectoplasm
    .mob Nightmare Ectoplasm
    .isOnQuest 1491
    .dungeon WC
step
    #optional
    #hardcore
    >>Sammelt |cRXP_PICK_Schlangenflaum|r vom Boden
    >>|cRXP_WARN_Es wird empfohlen, dass maximal 3 Spieler diese Quest versuchen zu vollenden, wenn ihr nur 1 Durchlauf macht. Es gibt nicht genug|r |cRXP_PICK_Schlangenflaum|r |cRXP_WARN_für alle|r
    >>|cRXP_WARN_Wirkt|r |T133939:0|t[Kräutersuche] |cRXP_WARN_um sie auf der Minikarte von euch zu sehen|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .isOnQuest 962
    .dungeon WC
step
    #hardcore
    >>Sammelt |cRXP_PICK_Schlangenflaum|r vom Boden
    >>|cRXP_WARN_Es wird empfohlen, dass maximal 3 Spieler diese Quest versuchen zu vollenden, wenn ihr nur 1 Durchlauf macht. Es gibt nicht genug|r |cRXP_PICK_Schlangenflaum|r |cRXP_WARN_für alle|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
    .dungeon WC
step
    #optional
    #softcore
    >>Sammelt |cRXP_PICK_Schlangenflaum|r vom Boden
    >>|cRXP_WARN_Wirkt|r |T133939:0|t[Kräutersuche] |cRXP_WARN_um sie auf der Minikarte von euch zu sehen|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .isOnQuest 962
    .dungeon WC
step
    #softcore
    >>Sammelt |cRXP_PICK_Schlangenflaum|r vom Boden
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
    .dungeon WC
step
    #completewith GlowingShardRP
    .hs >> Ruhestein nach Ratschet
    .bindlocation 392,1
    .subzoneskip 392
    .use 6948
    .dungeon WC
step
    .goto The Barrens,63.09,37.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bigglefuzz|r
    .turnin 959 >> Gebt die Quest Ärger auf den Docks ab
    .target Crane Operator Bigglefuzz
    .isQuestComplete 959
    .dungeon WC
step
    .goto The Barrens,62.37,37.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Mebok|r
    .turnin 1491 >>Gebt die Quest Klugheitstränke ab
    .target Mebok Mizzyrix
    .isQuestComplete 1491
    .dungeon WC
step
    .use 10441 >>Benutzt |T135229:0|t[|cRXP_LOOT_Leuchtender Splitter|r] um die Quest zu akzeptieren
    .accept 6981 >> Der leuchtende Splitter annehmen
    .itemcount 10441,1
    .dungeon WC
step
    #label GlowingShardRP
    .goto The Barrens,62.99,37.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Sputtervalve|r
    .complete 6981,1 --Speak with someone in Ratchet about the Glowing Shard
    .skipgossip
    .target Sputtervalve
    .isOnQuest 6981
    .dungeon WC
step
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Bragok|r
    .fly Crossroads >> Fliege nach Das Wegekreuz
    .target Bragok
    .subzoneskip 380
    .isOnQuest 6981
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Nalpak|r und |cRXP_FRIENDLY_Ebru|r
    >>|cRXP_WARN_Sie befinden sich über dem Eingang der Höhlen des Wehklagens|r
    .turnin 1486 >> Gebt die Quest Deviatbälge ab
    .target +Nalpak
    .goto Kalimdor,51.91,55.42
    .turnin 1487 >> Gebt die Quest Ausrottung der Deviat ab
    .target +Ebru
    .goto Kalimdor,51.92,55.44
    .isQuestComplete 1487
    .isQuestComplete 1486
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
    .goto Kalimdor,51.91,55.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Nalpak|r
    >>|cRXP_WARN_Er befindet sich über dem Eingang der Höhlen des Wehklagens|r
    .turnin 1486 >> Gebt die Quest Deviatbälge ab
    .target Nalpak
    .isQuestComplete 1486
    .dungeon WC
step
    #completewith WCEnd
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Devrak|r
    .fly Thunder Bluff >>Fliege nach Donnerfels
    .target Devrak
    .zoneskip Thunder Bluff
    .dungeon WC
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
    .turnin 3369 >> Gebt die Quest Alptraum ab
    .target Arch Druid Hamuul Runetotem
    .isOnQuest 3369
    .dungeon WC
step
    .goto Thunder Bluff,23.0,21.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Apothekerin Zamah|r
    .turnin 962 >>Gebt die Quest Schlangenflaum ab
    .target Apothecary Zamah
    .isQuestComplete 962
    .dungeon WC
step
    .goto Thunder Bluff,28.55,25.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Clarice|r
    .accept 264 >> Akzeptiert die Quest Bis dass der Tod uns scheidet
    .target Clarice Foster
    .dungeon WC
step
    #label WCEnd
    .goto Thunder Bluff,45.83,64.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gastwirtin Pala|r
    .home >>Setzt euren Ruhestein in Donnerfels
    .target Innkeeper Pala
    .bindlocation 1638
    .isQuestAvailable 6442
    .dungeon WC
step
    #completewith SerenaKill
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Tal|r
    .fly Crossroads >>Fliege nach Das Wegekreuz
    .target Tal
    .zoneskip Thunder Bluff,1
    .dungeon WC
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
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Regthar|r
    .accept 4021 >>Akzeptiert die Quest Gegenangriff!
    --.timer 183,Warlord Krom'zar Spawn
    .target Regthar Deathgate
    .isQuestTurnedIn 852
    .group
    --timer is random, generally somewhere between 120-210 seconds
step
    .goto The Barrens,44.48,28.15
    >>Tötet |cRXP_ENEMY_Kriegsherr Krom'zar|r, sobald er erscheint. Plündert die |cRXP_PICK_Flagge|r, welche er auf dem Boden fallen lässt
    >>|cRXP_WARN_Seid vorsichtig! Er ist ein starker Elite und wird von mindestens zwei|r |cRXP_ENEMY_Kolkar|r |cRXP_WARN_mobs|r beschützt
    >>|cRXP_WARN_Es kann bis zu 3 Minuten dauern, bis er erscheint|r
    .complete 4021,1 --Piece of Krom'zar's Banner (1)
    .unitscan Warlord Krom'zar
    .group 3
    .isQuestTurnedIn 852
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Regthar|r
    .turnin 4021 >>Gebt die Quest Gegenangriff ab
    .target Regthar Deathgate
    .isQuestComplete 4021
    .group
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Regthar|r
    .turnin 855 >>Gebt die Quest Zentaurenarmschienen ab
    .target Regthar Deathgate
    .isQuestComplete 855
    .group
step
    #optional
    >>Falls ihr die Quest Zentaurenarmschienen noch nicht abgeschlossen habt, brecht sie ab.
    .abandon 855 >> Brecht die Quest Zentaurenarmschienen ab
    .isOnQuest 855
step
    #label SerenaKill
    .goto The Barrens,39.16,12.16
    >>Tötet |cRXP_ENEMY_Serena Blutfeder|r. Plündert sie für ihren |cRXP_LOOT_Kopf|r
    .complete 876,1 --Serena's Head (1)
    .mob Serena Bloodfeather
step
    #completewith next
    .subzone 380 >>Reist zum Wegekreuz
step
    #label ApothecaryPickup
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Darsok|r und |cRXP_FRIENDLY_Korran|r
    .turnin 876 >> Gebt die Quest Serena Blutfeder ab
    .accept 1060 >> Akzeptiert die Quest Brief an Jin'Zil
    .target +Darsok Swiftdagger
    .goto The Barrens,51.62,30.90
    .accept 868 >> Akzeptiert die Quest Eierjagd
    .target +Korran
    .goto The Barrens,51.10,29.60
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
    .accept 1068 >> Akzeptiert die Quest Schreddermaschinen
    .target +Seereth Stonebreak
    .goto The Barrens,35.26,27.88
    .turnin 6629 >>Gebt die Quest Tötet Grundig Finsterwolke ab
    .turnin 6523 >>Gebt die Quest Schützt Kaya ab
    .accept 6401 >>Akzeptiert die Quest Kaya lebt
    .target +Makaba Flathoof
    .goto The Barrens,35.19,27.79
step
    #completewith next
    .goto Stonetalon Mountains,82.57,98.63,60,0
    .goto Stonetalon Mountains,80.10,98.20,40,0
    .goto Stonetalon Mountains,77.17,98.61,40 >> Folgt dem Pfad auf der linken Seite
step
    .goto Stonetalon Mountains,74.54,97.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Jin'Zil|r
    .turnin 1060 >> Gebt die Quest Brief an Jin'Zil ab
    .accept 1058 >> Akzeptiert die Quest Jin'Zils Forest magischer Schaden
    .target Witch Doctor Jin'Zil
step << Warlock
    .goto Stonetalon Mountains,73.25,95.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ken'zigla|r
    .turnin 1510 >>Gebt die Quest Neuigkeiten von Dogran ab
    .accept 1511 >>Akzeptiert die Quest Ken'ziglas Trunk
    .target Ken'zigla
step
    .goto Stonetalon Mountains,71.25,95.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Xen'Zilla|r
    .turnin 6461 >>Gebt die Quest Blutfresser ab
    .target Xen'Zilla
step << skip
    .goto Stonetalon Mountains,74.69,98.10
    .goto Thunder Bluff,56.65,18.96,30 >>|cRXP_WARN_Springt auf einen der Käfige. Macht einen Logout-Skip indem ihr euch aus und wieder einloggt|r
    .link https://www.youtube.com/watch?v=cp2YI86AO4Y&ab >> |cRXP_WARN_KLICKT HIER für ein Beispiel|r
    .solo
step
    #completewith next
    .goto Stonetalon Mountains,67.41,87.92,60,0
    .goto Stonetalon Mountains,65.93,89.87,40,0
    .goto Stonetalon Mountains,63.66,93.80,40,0
    .goto Stonetalon Mountains,61.75,93.06,40 >> Reist nach Steinschlagklamm und betretet die nördliche Höhle
    .group
step
    .goto Stonetalon Mountains,60.16,90.92,30,0
    .goto Stonetalon Mountains,58.44,89.90
    >>Greift |cRXP_PICK_Resonite Kristalle|r an und lauft weit genug in die Höhle, um die Gegend zu untersuchen
    >>|cRXP_WARN_Passt auf! Diese Monster sind stärker als sie aussehen und können leicht doppelt gepullt werden.|r |cRXP_ENEMY_Gogger Felsbewahrer|r |cRXP_WARN_wirkt|r |T136026:0|t[Erdschock] |cRXP_WARN_der einen hohen Schaden verursacht!|r
    .complete 6421,1 --Investigate Cave in Boulderslide Ravine
    .complete 6421,2 --Resonity Crystal (x10)
    .isOnQuest 6421
    .group
step << skip
    #completewith next
    .goto Stonetalon Mountains,64.62,93.86,25,0
    .goto Stonetalon Mountains,64.80,95.27,20,0
    .goto Stonetalon Mountains,64.32,95.84,15 >> BETRETET die südliche Höhle in Steinschlagklamm
    .group
step << skip
    .goto Stonetalon Mountains,64.28,96.60
    .goto Thunder Bluff,56.65,18.96,30 >>|cRXP_WARN_Springt auf den Stein auf der rechten Seite. Macht einen Ausloggen-Überspringen, indem ihr euren Charakter so positioniert, bis es aussieht als würde er schweben, dann meldet euch ab und wieder an.|r
    .link https://www.youtube.com/watch?v=j_DRDkqWeuE&ab >> |cRXP_WARN_HIER KLICKEN für ein Beispiel|r
    .group
step
    #completewith next
    .subzone 460 >>Reist nach Sonnenfels
step
    #label KayaLives
    .goto Stonetalon Mountains,47.46,58.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Tammra|r
    .turnin 6401 >>Gebt die Quest Kaya lebt ab
    .target Tammra Windfield
step
    .goto Stonetalon Mountains,47.47,62.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gastwirt Jayka|r
    >>|cRXP_WARN_Setzt euren Ruhestein NICHT!|r
	.vendor >>|cRXP_BUY_Verkauft euren trash, dann füllt euer Essen und Trinken auf, wenn nötig|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Verkauft euren trash, dann füllt eure Nahrung auf, falls nötig|r << Rogue/Warrior
    .target Innkeeper Jayka
    .isQuestAvailable 6442
step
    .goto Stonetalon Mountains,47.61,61.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jeeda|r auf der zweiten Etage des Gasthauses
    .vendor >> |cRXP_BUY_Kauft|r |T134831:0|t[Heiltränke] |cRXP_BUY_von ihr, wenn sie verfügbar sind|r << !Warrior
    .vendor >> |cRXP_BUY_Kauft|r |T134831:0|t[Heiltränke] |cRXP_BUY_und|r |T134413:0|t[Lebenswurz] |cRXP_BUY_von ihr, wenn sie verfügbar sind|r << Warrior
    .target Jeeda
    .isQuestAvailable 6442
step
    #completewith InDeepTrouble2
    .goto Stonetalon Mountains,49.38,61.68,30,0
    .goto Stonetalon Mountains,48.92,62.71,30,0
    .goto Stonetalon Mountains,48.11,63.88,30,0
    .goto Stonetalon Mountains,47.21,64.05,30 >> Lauft den Pfad nach rechts hinauf
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tsunaman|r und |cRXP_FRIENDLY_Mor'Rogal|r
    .accept 6562 >>Akzeptiert die Quest Ärger in der Tiefe
    --.accept 6393 >>Accept Elemental War
    .target +Tsunaman
    .goto Stonetalon Mountains,47.36,64.25
    .turnin 6421 >>Gebt die Quest Steinschlagklamm ab
    .accept 6481 >>Akzeptiert die Quest Der Irdene erhebt sich
    .target +Mor'Rogal
    .goto Stonetalon Mountains,47.21,64.05
    .isQuestComplete 6421
    .group
step
    .goto Stonetalon Mountains,47.21,64.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mor'Rogal|r
    .accept 6481 >>Akzeptiert die Quest Der Irdene erhebt sich
    .target Mor'Rogal
    .isQuestTurnedIn 6421
    .group
step
    #label InDeepTrouble2
    .goto Stonetalon Mountains,47.36,64.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Tsunaman|r
    .accept 6562 >>Akzeptiert die Quest Ärger in der Tiefe
    --.accept 6393 >>Accept Elemental War
    .target Tsunaman
step
    .goto Stonetalon Mountains,59.08,75.70
    >>Klickt auf das |cRXP_FRIENDLY_Gesucht Poster|r
    .accept 6284 >>Akzeptiert die Quest Arachnophobie
    .group
step
    #loop
    .goto Stonetalon Mountains,54.80,71.95,0
    .goto Stonetalon Mountains,51.89,73.81,50,0
    .goto Stonetalon Mountains,52.46,71.67,50,0
    .goto Stonetalon Mountains,54.80,71.95,50,0
    >>Tötet |cRXP_ENEMY_Besseleth|r. Plündert sie für ihren |cRXP_LOOT_Fangzahn|r
    >>|cRXP_WARN_Löscht das Gebiet, bevor ihr sie angreift. Seid vorsichtig, sie kann euch 10 Sek. lang einweben!|r
    .complete 6284,1 --Collect Besseleth's Fang (x1)
	.unitscan Besseleth
    .group 3
step
    #completewith next
    .goto Stonetalon Mountains,67.41,87.92,60,0
    .goto Stonetalon Mountains,65.93,89.87,40,0
    .goto Stonetalon Mountains,63.66,93.80,40,0
    .goto Stonetalon Mountains,61.75,93.06,40 >> Reist nach Steinschlagklamm und betretet die nördliche Höhle
    .group
    .isOnQuest 6481
step
    .goto Stonetalon Mountains,59.50,90.40,40,0
    .goto Stonetalon Mountains,57.65,89.52
    >>Klickt |cRXP_PICK_Resonite Cask|r, um |cRXP_ENEMY_Goggeroc|r zu beschwören. Tötet ihn, wenn er erscheint
    .complete 6481,1 --Goggeroc slain (1)
    .mob Goggeroc
    .group 2
    .isOnQuest 6481
step << skip
    .goto Stonetalon Mountains,58.24,89.81
    .goto Stonetalon Mountains,57.57,61.99,30 >>|cRXP_WARN_Springt auf einen gelben Pilz. Führt einen Ausloggen-Überspringen aus, indem ihr in die Luft springt und euch gleichzeitig aus- und wieder einloggt. Lauft zurück nach Sonnenfels, wenn es euch nicht gelingt|r
    .link https://www.youtube.com/watch?v=DGsL3FX9_TE&ab >> |cRXP_WARN_KLICKT HIER für ein Beispiel|r
    .group
    .isQuestComplete 6481
    --VV Jump logout required for it to work, remove if it doesn't work on new servers
step
    #completewith EarthenAriseTurnin
    .goto Stonetalon Mountains,49.38,61.68,50 >> Reist nach Sonnenfels
    .group
    .isQuestComplete 6481
step
    #completewith next
    .goto Stonetalon Mountains,49.38,61.68,20,0
    .goto Stonetalon Mountains,48.92,62.71,30,0
    .goto Stonetalon Mountains,48.11,63.88,30,0
    .goto Stonetalon Mountains,47.21,64.05,30 >> Lauft den Pfad links hinauf
    .group
    .isQuestComplete 6481
step
    #label EarthenAriseTurnin
    .goto Stonetalon Mountains,47.21,64.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mor'Rogal|r
    .turnin 6481 >>Gebt die Quest Der Irdene erhebt sich ab
    .target Mor'Rogal
    .isQuestComplete 6481
    .group
step
    .goto Stonetalon Mountains,47.20,61.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Maggran|r
	.turnin 6284 >> Gebt die Quest Arachnophobie ab
    .target Maggran Earthbinder
	.isQuestComplete 6284
    .group
step
    #completewith next
    .goto Stonetalon Mountains,58.99,62.60,100 >> Reisen zur Scherwindklippe
step
    .goto Stonetalon Mountains,58.99,62.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ziz|r
    .turnin 1095 >>Gebt die Quest Weitere Instruktionen ab
    .target Ziz Fizziks
step
    #loop
    .line Stonetalon Mountains,70.82,55.25,70.52,56.22,69.76,56.70,68.52,56.04,67.77,55.97,66.94,56.25,66.41,56.31,65.74,57.20,65.14,57.02,64.37,56.47,63.72,56.80,62.99,56.25,62.32,56.11,61.58,55.10,61.10,54.68,60.98,54.06,59.81,53.51,59.66,52.14,60.33,51.68
    .goto Stonetalon Mountains,61.03,52.32,50,0
    .goto Stonetalon Mountains,60.33,51.68,50,0
    .goto Stonetalon Mountains,59.66,52.14,50,0
    .goto Stonetalon Mountains,59.81,53.51,50,0
    .goto Stonetalon Mountains,60.98,54.06,50,0
    .goto Stonetalon Mountains,61.10,54.68,50,0
    .goto Stonetalon Mountains,61.58,55.10,50,0
    .goto Stonetalon Mountains,62.32,56.11,50,0
    .goto Stonetalon Mountains,62.99,56.25,50,0
    .goto Stonetalon Mountains,63.72,56.80,50,0
    .goto Stonetalon Mountains,64.37,56.47,50,0
    .goto Stonetalon Mountains,65.14,57.02,50,0
    .goto Stonetalon Mountains,65.74,57.20,50,0
    .goto Stonetalon Mountains,66.41,56.31,50,0
    .goto Stonetalon Mountains,66.94,56.25,50,0
    .goto Stonetalon Mountains,67.77,55.97,50,0
    .goto Stonetalon Mountains,68.52,56.04,50,0
    .goto Stonetalon Mountains,69.76,56.70,50,0
    .goto Stonetalon Mountains,70.52,56.22,50,0
    .goto Stonetalon Mountains,70.82,55.25,50,0
    .goto Stonetalon Mountains,59.66,52.14,0
    >>Tötet |cRXP_ENEMY_XT:9|r. Er patrouilliert auf der südlichen Seite des Flusses
    >>|cRXP_WARN_Diese Quest muss jetzt nicht abgeschlossen werden|r
    .complete 1068,2 --XT:9 (1)
    .unitscan XT:9
step
    #loop
    .line Stonetalon Mountains,67.18,46.87,66.53,46.95,65.72,45.09,63.73,45.02,63.72,45.92,63.43,46.57,64.43,46.13,64.72,46.63,64.82,47.72,65.11,48.31,65.98,48.67,66.24,49.65,66.65,49.58,66.88,48.95,68.41,49.58,69.45,46.56,70.22,48.62,70.95,48.49,71.41,45.54,71.25,43.45
    .goto Stonetalon Mountains,67.18,46.87,50,0
    .goto Stonetalon Mountains,66.53,46.95,50,0
    .goto Stonetalon Mountains,65.72,45.09,50,0
    .goto Stonetalon Mountains,63.73,45.02,50,0
    .goto Stonetalon Mountains,63.72,45.92,50,0
    .goto Stonetalon Mountains,63.43,46.57,50,0
    .goto Stonetalon Mountains,64.43,46.13,50,0
    .goto Stonetalon Mountains,64.72,46.63,50,0
    .goto Stonetalon Mountains,64.82,47.72,50,0
    .goto Stonetalon Mountains,65.11,48.31,50,0
    .goto Stonetalon Mountains,65.98,48.67,50,0
    .goto Stonetalon Mountains,66.24,49.65,50,0
    .goto Stonetalon Mountains,66.65,49.58,50,0
    .goto Stonetalon Mountains,66.88,48.95,50,0
    .goto Stonetalon Mountains,68.41,49.58,50,0
    .goto Stonetalon Mountains,69.45,46.56,50,0
    .goto Stonetalon Mountains,70.22,48.62,50,0
    .goto Stonetalon Mountains,70.95,48.49,50,0
    .goto Stonetalon Mountains,71.41,45.54,50,0
    .goto Stonetalon Mountains,71.25,43.45,50,0
    .goto Stonetalon Mountains,64.82,47.23,50,0
    .goto Stonetalon Mountains,64.82,47.23,0
    >>Tötet |cRXP_ENEMY_XT:4|r. Er patrouilliert auf der nördlichen Seite des Flusses
    >>|cRXP_WARN_Diese Quest muss jetzt nicht abgeschlossen werden|r
    .complete 1068,1 --XT:4 (1)
    .unitscan XT:4
step
    #completewith next
    .subzone 2160 >> Betretet die Scherwindmine
    .group
step
    .goto Stonetalon Mountains,71.87,60.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Piznik|r
    .accept 1090 >> Akzeptiert die Quest Gerenzos Befehle
    .target Piznik
    .group 3
step
    .goto Stonetalon Mountains,71.77,60.19
    >>Beschützt |cRXP_FRIENDLY_Piznik|r vor eingehenden |cRXP_ENEMY_Gezücht der Scherwindmine|r
    .complete 1090,1 --Keep Piznik safe while he mines the mysterious ore
    .mob Windshear Vermin
    .group 3
step
    .goto Stonetalon Mountains,71.87,60.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Piznik|r
    .turnin 1090 >> Gebt die Quest Gerenzos Befehle ab
    .accept 1092 >> Akzeptiert die Quest Gerenzos Befehle
    .target Piznik
    .group
step << skip
    .goto Stonetalon Mountains,71.83,60.34
    .goto Stonetalon Mountains,57.57,61.99,30 >>|cRXP_WARN_Springt auf das Holzrad. Führt einen Logout-Skip durch, indem ihr euch abmeldet und wieder anmeldet|r
    .link https://www.youtube.com/watch?v=8s1SRza7qFg&ab_channel=RestedXP >> |cRXP_WARN_KLICKT HIER für ein Beispiel|r
    .group
step
    .goto Stonetalon Mountains,58.99,62.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ziz|r
    .turnin 1092 >> Gebt die Quest Gerenzos Befehle ab
    .target Ziz Fizziks
    .isQuestTurnedIn 1090
    .group
step
    #completewith next
    .goto Stonetalon Mountains,78.29,42.51,30 >> Betretet den Steinkrallenpfad
step << skip
    .goto Stonetalon Mountains,78.89,41.24
    .goto Ashenvale,40.40,53.06,30 >>|cRXP_WARN_Springt auf den weißen Stein auf der rechten Seite von Euch. Führt einen Logout-Skip durch, indem ihr euch abmeldet und wieder anmeldet|r
    .link https://www.youtube.com/watch?v=h2s4ZjFBLtg&ab_channel=RestedXP >> |cRXP_WARN_KLICKT HIER für ein Beispiel|r
    .zoneskip Ashenvale
step
	#completewith ZoramFP
    .goto Ashenvale,39.45,55.29,50,0
    .goto Ashenvale,36.47,57.15,50,0
    .goto Ashenvale,34.56,54.13,30,0
    .goto Ashenvale,32.14,52.12,60,0
    .goto Ashenvale,28.64,48.10,50,0
    .goto Ashenvale,26.34,45.44,50,0
    .goto Ashenvale,25.40,39.00,70,0
    .goto Ashenvale,11.96,34.28,80 >>Reist zum Außenposten von Zoram'gar
    >>|cRXP_WARN_Vermeidet die Astranaar-Wachen unterwegs. Folgt dem Waypoint für Sicherheit|r
    .unitscan Astranaar Sentinel
step
    #optional
	#loop
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
    .xp 21 >> Farmt bis Stufe 21
step
    #label ZoramFP
   .goto Ashenvale,12.24,33.80
   >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Andruk|r
   .fp Zoram'gar Outpost >> Erlernt die Flugroute zum Außenposten von Zoram'gar
   .target Andruk
   .isQuestAvailable 6442
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Je'neu|r, |cRXP_FRIENDLY_Karang|r, |cRXP_FRIENDLY_Mitsuwa|r und |cRXP_FRIENDLY_Marukai|r
    .turnin 6562 >> Gebt die Quest Ärger in der Tiefe ab
    .accept 6563 >> Akzeptiert die Quest Die Essenz von Aku'mai
    .target +Je'neu Sancrea
    .goto Ashenvale,11.56,34.29
    .accept 216 >> Akzeptiert die Quest Hart auf hart
    .target +Karang Amakkar
    .goto Ashenvale,11.90,34.53
    .accept 6462 >> Akzeptiert die Quest Troll-Glücksbringer
    .target +Mitsuwa
    .goto Ashenvale,11.65,34.85
    .accept 6442 >> Akzeptiert die Quest Die Naga am Zoramstrand
    .target +Marukai
    .goto Ashenvale,11.69,34.90
    .group
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Je'neu|r, |cRXP_FRIENDLY_Karang|r, |cRXP_FRIENDLY_Mitsuwa|r und |cRXP_FRIENDLY_Marukai|r
    .turnin 6562 >> Gebt die Quest Ärger in der Tiefe ab
    .target +Je'neu Sancrea
    .goto Ashenvale,11.56,34.29
    .accept 216 >> Akzeptiert die Quest Hart auf hart
    .target +Karang Amakkar
    .goto Ashenvale,11.90,34.53
    .accept 6462 >> Akzeptiert die Quest Troll-Glücksbringer
    .target +Mitsuwa
    .goto Ashenvale,11.65,34.85
    .accept 6442 >> Akzeptiert die Quest Die Naga am Zoramstrand
    .target +Marukai
    .goto Ashenvale,11.69,34.90
step
    .goto Ashenvale,12.06,34.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Muglash|r
    >>|cRXP_WARN_Dies wird ein Eskortenquest starten. Seid vorsichtig, da es schwierig ist|r
    .accept 6641,1 >> Akzeptiert die Quest Vorsha die Peitscherin
    .target Muglash
    .group 2
step
    .goto Ashenvale,9.63,27.63
    >>Klickt das |cRXP_PICK_Kohlenbecken|r an, wenn ihr dort ankommt
    >>|cRXP_WARN_Es werden Wellen von|r |cRXP_ENEMY_Naga|r |cRXP_WARN_auftauchen. Seid vorsichtig, wenn|r |cRXP_ENEMY_Vorsha|r |cRXP_WARN_erscheint, seine hits sind sehr stark|r
    >>|cRXP_WARN_Ihr könnt|r |cRXP_FRIENDLY_Muglash|r |cRXP_WARN_etwas Aggro aufbauen, bevor du gegen ihn kämpfst|r
    .complete 6641,1 --Defeat Vorsha the Lasher
    .mob Vorsha the Lasher
    .group 2
step
	#loop
	.goto Ashenvale,11.01,28.57,0
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
    .goto Kalimdor,43.89,35.23,100 >> Reist zum Eingang der Tiefschwarzen Grotte
    .isOnQuest 6563
    .group
step
    #completewith next
    >>Plündert |cRXP_PICK_Saphir von Aku'mai|r von der Wand
    .complete 6563,1 --Sapphire of Aku'Mai (20)
    .group 4
step
    #loop
    .goto Kalimdor,43.94,34.86,0
    .goto Kalimdor,43.81,35.16,20,0
    .goto Kalimdor,43.94,34.86,20,0
    .goto Kalimdor,43.90,34.59,20,0
    .goto Kalimdor,44.00,34.57,20,0
    .goto Kalimdor,44.16,34.85,20,0
    .goto Kalimdor,44.35,34.97,20,0
    .goto Kalimdor,44.53,34.86,20,0
    .goto Kalimdor,43.94,34.86,20,0
    >>Tötet |cRXP_ENEMY_Blackfathom-Gezeitenpriesterin|r. Plündert sie für ein |T134332:0|t[|cRXP_LOOT_Feuchte Notiz|r], und benutzt sie, um die Quest zu starten
    .collect 16790,1,6564 --Collect Damp Note (1)
    .accept 6564 >> Akzeptiert die Quest Treue zu den Alten Göttern
    .mob Blackfathom Tide Priestess
    .use 16790
    .group 4
step
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
    >>Plündert |cRXP_PICK_Saphir von Aku'mai|r von der Wand
    .complete 6563,1 --Sapphire of Aku'Mai (20)
    .group 4
step
	#loop
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
    .xp 23 >> Farmt bis Stufe 23
step
    .goto Ashenvale,11.56,34.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 6563 >>Gebt die Quest Die Essenz von Aku'mai ab
    .turnin 6564 >>Gebt die Quest Treue zu den Alten Göttern ab
    .target Je'neu Sancrea
    .group
    .isQuestComplete 6563
    .isQuestComplete 6564
step
    .goto Ashenvale,11.56,34.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 6563 >>Gebt die Quest Die Essenz von Aku'mai ab
    .target Je'neu Sancrea
    .group
    .isQuestComplete 6563
step
    .goto Ashenvale,11.56,34.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 6564 >>Gebt die Quest Treue zu den Alten Göttern ab
    .target Je'neu Sancrea
    .group
    .isQuestComplete 6564
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Warsongläufer|r und |cRXP_FRIENDLY_Marukai|r
    .turnin 6641 >> Gebt die Quest Vorsha die Peitscherin ab
    .target +Warsong Runner
    .goto Ashenvale,12.22,34.21
    .turnin 6442 >> Gebt die Quest Die Naga am Zoramstrand ab
    .target +Marukai
    .goto Ashenvale,11.69,34.90
    .isQuestComplete 6641
    .group
step
    .goto Ashenvale,11.69,34.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Marukai|r
    .turnin 6442 >> Gebt die Quest Die Naga am Zoramstrand ab
    .target Marukai
step
    .goto Ashenvale,11.90,34.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Karang|r
    .accept 216 >> Akzeptiert die Quest Hart auf hart
    .target Karang Amakkar
step
    #completewith flytoORG
    .hs >> Ruhestein nach Donnerfels
    .use 6948
    .bindlocation 1638,1
    .zoneskip Thunder Bluff
    .cooldown item,6948,>0
step
    #completewith flytoORG
    .goto Ashenvale,12.24,33.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Andruk|r
    .zoneskip Thunder Bluff
    .fly Thunder Bluff >> Fliege nach Donnerfels
    .target Andruk
    .cooldown item,6948,<0
step
    .goto Thunder Bluff,47.12,57.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Chesmu|r
    .bankdeposit 5059 >> Packt eure |T132938:0|t[Gräberklaue] auf die Bank
    .target Chesmu
step
    #completewith next
    .goto Thunder Bluff,69.88,30.90,80 >> Reist zur Anhöhe der Ältesten
step
    .goto Thunder Bluff,69.88,30.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Magatha|r
    >>|cRXP_WARN_Wartet bis das RP vorbei ist|r
    .turnin 1063 >> Gebt die Quest Die Ältestengreisin ab
    .timer 6,Die Ältestengreisin RP
    .accept 1064 >> Akzeptiert die Quest Die Hilfe der Verlassenen
    .target Magatha Grimtotem
step
    .goto Thunder Bluff,22.82,20.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Zamah|r
    .turnin 1064 >> Gebt die Quest Die Hilfe der Verlassenen ab
    .accept 1065 >> Akzeptiert die Quest Reise nach Tarrens Mühle
    .target Apothecary Zamah
step << Warlock
    #completewith flytoORG
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Tal|r
    .fly Camp Taurajo >>Fliege nach Camp Taurajo
    .target Tal
    .subzoneskip 378
step << !Warlock
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Tal|r
    .fly Orgrimmar >>Fliege nach Orgrimmar
    .target Tal
    .zoneskip Orgrimmar
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
step << Warlock
    .goto The Barrens,44.45,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Omusa|r
    .fly Orgrimmar >>Fliege nach Orgrimmar
    .target Omusa Thunderhorn
    .zoneskip The Barrens,1
step
    #optional
    #label flytoORG
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
    .collect 2928,20,2479,1 --Collect Dust of Decay (20)
    .collect 3371,20,2479,1 --Collect Empty Vial (20)
    .collect 5140,20,2479,1 --Collect Flash Powder (20)
    .target Rekkul
step
    .goto Orgrimmar,76.50,24.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rilli |r
    .turnin 3923 >> Gebt die Quest Rilli Schmierklump ab
    .accept 3924 >> Akzeptiert die Quest Samophlanghandbuch
    .target Rilli Greasygob
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
step << Rogue/Druid
    #completewith MissionProbable
    .goto Orgrimmar,26.22,61.58,80,0
    .goto Orgrimmar,15.66,63.33,30,0
    .goto Orgrimmar,18.03,60.51,50 >> Betretet das Brachland durch den westlichen Ausgang
    .zoneskip The Barrens
step << Rogue/Druid
    #completewith MissionProbable
    .goto The Barrens,57.63,7.48,120 >> Reist in Richtung Das Schlickmoor
step << Druid
    .goto The Barrens,56.67,8.32
    >>Plündert |cRXP_PICK_Merkwürdige Schließkassette|r im Wasser für den |T133443:0|t[Halber Anhänger der Wasserbeweglichkeit]
    .collect 15883,1,3924,1 --Half Pendant of Aquatic Agility (1)
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
    --VV Video?
step << Rogue
    .goto The Barrens,54.77,5.57
    >>Benutzen von Euch Schlossknacken, um |cRXP_PICK_Gallywix's Schließkassette|r zu öffnen, und plündert die |cRXP_LOOT_Mixtur|r.
    .complete 2478,6 --Cache of Zanzil's Altered Mixture (1)
step << Rogue/Druid
    #completewith SamophlangePages
    .goto The Barrens,61.33,4.21,120 >>Reist zur Felsadermine
step << !Rogue/Druid
    .goto Orgrimmar,26.22,61.58,80,0
    .goto Orgrimmar,15.66,63.33,30,0
    .goto Orgrimmar,18.03,60.51,50 >> Betretet Das Brachland durch den westlichen Ausgang
    .zoneskip The Barrens
    .isOnQuest 3924
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Venture Co. Enforcers|r und |cRXP_ENEMY_Venture Co. Overseers|r. Plündert sie für |cRXP_LOOT_Samophlange Manuell Pages|r
    .collect 11148,5 --Samophlange Manual Page (5)
    .mob Venture Co. Enforcer
    .mob Venture Co. Overseer
step
    #label SamophlangePages
    .goto The Barrens,60.90,3.84,20,0
    .goto The Barrens,59.99,4.13
    >>Tötet |cRXP_ENEMY_Boss Kupferdraht|r hinten in der Mine. Beute ihn für das |cRXP_LOOT_Samophlang-Handbuchdeckblatt|r
    .collect 11147,1 --Samophlange Manual Cover (1)
    .mob Boss Copperplug
    .mob Venture Co. Enforcer
    .mob Venture Co. Overseer
step
    #label SamophlangePages2
    #loop
    .goto The Barrens,61.51,4.43,0
    .goto The Barrens,61.46,4.50,40,0
    .goto The Barrens,61.06,3.63,40,0
    .goto The Barrens,61.63,3.37,40,0
    .goto The Barrens,62.14,3.52,40,0
    .goto The Barrens,61.94,4.53,40,0
    .goto The Barrens,61.85,5.37,40,0
    .goto The Barrens,61.44,5.56,40,0
    .goto The Barrens,61.17,5.05,40,0
    .goto The Barrens,61.51,4.43,40,0
    >>Tötet |cRXP_ENEMY_Venture Co. Enforcers|r und |cRXP_ENEMY_Venture Co. Overseers|r. Plündert sie für |cRXP_LOOT_Samophlange Manuell Pages|r
    .collect 11148,5 --Samophlange Manual Page (5)
    .mob Venture Co. Enforcer
    .mob Venture Co. Overseer
step
    #requires SamophlangePages
    #requires SamophlangePages2
    >>|cRXP_WARN_Klickt auf das|r |T133735:0|t[Samophlanghandbuch Deckung] |cRXP_WARN_um das|r Manuell|cRXP_LOOT_ zu erstellen|r
    .complete 3924,1 -- Samophlange Manual
    .use 6626
ste
    .goto Kalimdor,56.81,45.47
    .zone Orgrimmar >>Betretet Orgrimmar durch den westlichen Eingang
    .isQuestComplete 3924
step << skip
    .goto The Barrens,60.00,4.09
    .goto Orgrimmar,40.05,68.05,30 >>|cRXP_WARN_Springt auf das Zelt. Führt einen Ausloggen-Überspringen durch, indem ihr euch aus- und wieder einloggt. Lauft zurück nach Orgrimmar, falls es euch nicht gelingt|r
    .link https://www.youtube.com/watch?v=cOxspH4RcI8&ab >> |cRXP_WARN_KLICKT HIER für ein Beispiel|r
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
step
    .goto Orgrimmar,76.50,24.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rilli |r
    .turnin 3924 >> Gebt die Quest Samophlanghandbuch ab
    .target Rilli Greasygob
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
    .collect 3137,200,6544,1 --Deadly Throwing Axe (200)
    .target Trak'gen
step
    #optional
    .abandon 6421 >>Brecht die Quest Steinschlagklamm ab
step
    #optional
    .abandon 4021 >>Brecht die Quest Gegenangriff ab!
step
    #optional
    .abandon 6481 >>Brecht die Quest Der Irdene erhebt sich ab
step
    #optional
    .abandon 6284 >>Brecht die Quest Arachnophobie ab
step
    #optional
    .abandon 6641 >>Brecht die Quest Vorsha die Peitscherin ab
step
    #optional
    .abandon 6563 >>Brecht die Quest Die Essenz von Aku'mai ab
step
    #optional
    .abandon 1486 >>Brecht die Quest Deviatbälge ab
step
    #optional
    .abandon 1487 >>Brecht die Quest Ausrottung der Deviat ab
step
    #optional
    .abandon 1491 >>Brecht die Quest Klugheitstränke ab
step
    #optional
    .abandon 959 >>Brecht die Quest Ärger auf den Docks ab
step
    #optional
    .abandon 914 >>Brecht die Quest Anführer der Giftzähne ab
step
    #optional
    .abandon 962 >>Brecht die Quest Schlangenflaum ab
step
    #completewith next
    .zone Durotar >> Verlass Orgrimmar
    .zoneskip Durotar
step
    .goto Durotar,50.8,13.8,40 >>Geh auf den Zeppelin-Turm
    .zone Tirisfal Glades >>Nehmt den Zeppelin nach Tirisfal
    .zoneskip Tirisfal Glades
    .zoneskip Undercity

]])

