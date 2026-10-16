if GetLocale() ~= "deDE" then return end
RXPGuides.RegisterGuide([[
#classic
#tbc

<< Alliance
#group RestedXP Endgame Guides
#subgroup Zutrittsvoraussetzungen
#name Onyxias Zutrittsvoraussetzungen (A)


step
    #completewith next
    .zone Burning Steppes>>|cRXP_WARN_Reist in die|r |cFFfa9602Brennende Steppe|r
step
    .goto Burning Steppes,85.820,68.948
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Helendis Riverhorn|r
    .accept 4182 >> Drachkin-Bedrohung annehmen
    .target Helendis Riverhorn
step
    #loop
    .goto Burning Steppes,90.6,43.6,0
    .goto Burning Steppes,81.8,27.8,70,0
    .goto Burning Steppes,91.4,32.6,70,0
    .goto Burning Steppes,89.8,54.6,70,0
    .goto Burning Steppes,81.8,60.0,70,0
    .goto Burning Steppes,89.8,54.6,70,0
    .goto Burning Steppes,91.4,32.6,70,0
    .goto Burning Steppes,81.8,27.8,70,0
    .goto Burning Steppes,90.6,43.6,70,0
    >>Töte |cRXP_ENEMY_Schwarzer Brutling|r, |cRXP_ENEMY_Schwarze Großdrachenbrut|r, |cRXP_ENEMY_Schwarzwyrmkin|r und einen |cRXP_ENEMY_Schwarzen Drachen|r
    >>|cRXP_ENEMY_Schwarze Großdrachenbrut|r|cRXP_WARN_,|r |cRXP_ENEMY_Schwarzwyrmkin|r |cRXP_WARN_und|r |cRXP_ENEMY_Schwarzdrache|r |cRXP_WARN_sind Elite. Bildet eine Gruppe, wenn nötig|r
    .complete 4182,1 -- Black Broodling slain (15)
    .mob +Black Broodling
    .complete 4182,2 -- Black Dragonspawn slain (10)
    .mob +Black Dragonspawn
    .complete 4182,4 -- Black Wyrmkin slain (4)
    .mob +Black Drake
    .complete 4182,3 -- Black Drake slain
    .mob +Black Wyrmkin
step
    .isQuestComplete 4182
    .goto Burning Steppes,85.820,68.948
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Helendis Riverhorn|r
    .turnin 4182 >> Gebt die Quest Drachkin-Bedrohung ab
    .accept 4183 >> Die wahren Meister annehmen
    .target Helendis Riverhorn
step
    .isQuestTurnedIn 4182
    .goto Burning Steppes,85.820,68.948
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Helendis Riverhorn|r
    .accept 4183 >> Die wahren Meister annehmen
    .target Helendis Riverhorn
step
    .isQuestTurnedIn 4182
    #completewith next
    .goto Burning Steppes,84.333,68.328
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Borgus Starkarm|r
    .fly Redridge >> Fliegt ins Rotkammgebirge
    .target Borgus Stoutarm
step
    .isQuestTurnedIn 4182
    .goto Redridge Mountains,29.98,44.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Magistrat Solomon|r
    .turnin 4183 >> Gebt die Quest Die wahren Meister ab
    .accept 4184 >> Die wahren Meister annehmen
    .target Magistrate Solomon
step
    .isQuestTurnedIn 4182
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ariena Sturmfeder|r
    .fly Stormwind >> Fliege nach Sturmwind
    .target Ariena Stormfeather
    .zoneskip Redridge Mountains,1
step
    .isQuestTurnedIn 4182
    .goto Stormwind City,78.213,17.980
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Hochlord Bolvar Fordragon|r
    .turnin 4184 >> Gebt die Quest Die wahren Meister ab
    .accept 4185 >> Die wahren Meister annehmen
    .target Highlord Bolvar Fordragon
step
    .isQuestTurnedIn 4182
    .goto Stormwind City,78.102,17.750
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Lady Katrana Prestor|r
    .complete 4185,1 -- Advice from Lady Prestor
    .skipgossip
    .target Lady Katrana Prestor
step
    .isQuestTurnedIn 4182
    .goto Stormwind City,78.213,17.980
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Hochlord Bolvar Fordragon|r
    .turnin 4185 >> Gebt die Quest Die wahren Meister ab
    .accept 4186 >> Die wahren Meister annehmen
    .target Highlord Bolvar Fordragon
step
    .isQuestTurnedIn 4182
    #completewith next
    .goto Stormwind City,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dungar Trinkfest|r
    .fly Redridge>> Fliegt ins Rotkammgebirge
    .target Dungar Longdrink
step
    .isQuestTurnedIn 4182
    .goto Redridge Mountains,29.98,44.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Magistrat Solomon|r
    .turnin 4186 >> Gebt die Quest Die wahren Meister ab
    .accept 4223 >> Die wahren Meister annehmen
    .target Magistrate Solomon
step
    .isQuestTurnedIn 4182
    #completewith next
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ariena Sturmfeder|r
    .fly Burning Steppes >> Flieg in die Brennenden Steppe
    .target Ariena Stormfeather
step
    .isQuestTurnedIn 4182
    .goto Burning Steppes,84.744,69.015
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Marschall Maxwell|r
    .turnin 4223 >> Gebt die Quest Die wahren Meister ab
    .accept 4224 >> Die wahren Meister annehmen
    .target Marshal Maxwell
step
    .isQuestTurnedIn 4182
    #completewith WindsorPickup
    .goto Burning Steppes,65.236,24.007
    .subzone 251 >> Reise zur Flammenwacht
step
    .isQuestTurnedIn 4182
    .goto Burning Steppes,65.012,23.757
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ragged John|r
    .complete 4224,1 -- Ragged John's Story (1)
    .skipgossip
    .target Ragged John
step
    #label WindsorPickup
    .isQuestTurnedIn 4182
    .goto Burning Steppes,84.744,69.015
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Marschall Maxwell|r
    .turnin 4224 >> Gebt die Quest Die wahren Meister ab
    .accept 4241 >> Akzeptiert die Quest Marschall Windsor
    .target Marshal Maxwell
step
    #completewith next
    .subzone 254 >>Reist zum |cFFfa9602Der Schwarzfels|r
step
    .isQuestTurnedIn 4182
    #completewith next
    .goto Eastern Kingdoms,48.07,62.42
    .subzone 1584,2 >>Betretet Schwarzfelstiefen
    >>|cRXP_WARN_Stellt sicher, dass ihr eine Gruppe parat habt|r
step
    .isQuestTurnedIn 4182
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Marschall Windsor|r
    >>|cRXP_WARN_Wenn eure Gruppe keinen Schurken hat, müsst ihr möglicherweise|r |cRXP_ENEMY_Verhörmeisterin Gerstahn|r |cRXP_WARN_töten, um|r |cRXP_LOOT_Gefängniszellenschlüssel|r |cRXP_WARN_für das Öffnen der Türen zu erhalten|r
    .turnin 4241 >> Gebt die Quest Marschall Windsor ab
    .accept 4242 >> Akzeptiert die Quest Verlorene Hoffnung
step
    .isQuestTurnedIn 4182
    #completewith next
    .subzone 2418 >>Reist zu Morgan's Wacht in der |cFFfa9602Brennenden Steppe|r
step
    .isQuestTurnedIn 4182
    .goto Burning Steppes,84.744,69.015
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Marschall Maxwell|r
    >>|cRXP_WARN_Die Questreihe macht hier Pause, bis ihr|r |T134331:0|t[Eine zusammengeknüllte Notiz] |cRXP_WARN_in der BRD findet|r
    .turnin 4242 >> Gebt die Quest Verlorene Hoffnung ab
    .target Marshal Maxwell
step
    #completewith next
    .subzone 254 >>Reist zum |cFFfa9602Der Schwarzfels|r
step
    .isQuestTurnedIn 4242
    .goto Eastern Kingdoms,48.07,62.42
    #completewith next
    .subzone 1584,2 >>Betretet Schwarzfelstiefen
step
    .isQuestTurnedIn 4242
    >>Tötet |cRXP_ENEMY_Zwerge|r in BRD. Plündert sie für |T134331:0|t[Eine zusammengeknüllte Notiz]
    .use 11446 >> |cRXP_WARN_Benutzt|r |T134331:0|t[Eine zusammengeknüllte Notiz] |cRXP_WARN_um die Quest zu starten|r
    >>|cRXP_WARN_Es ist wichtig, dass ihr dies macht, bevor ihr die Bosse |cRXP_ENEMY_General Zornesschmied|r und|r Golemlord Argelmach|cRXP_ENEMY_ tötet|r
    >>|cRXP_WARN_Wenn ihr diesen bis jetzt noch nicht gefunden habt, tötet alles rund um den Gefängnisblock, bis es droppt|r
    .collect 11446,1,4264,1 -- A Crumpled Up Note (1)
    .accept 4264 >> Akzeptiert die Quest Eine zusammengeknüllte Notiz
step
    .isOnQuest 4264
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Marschall Windsor|r
    .turnin 4264 >> Gebt die Quest Eine zusammengeknüllte Notiz ab
    .accept 4282 >> Akzeptiert die Quest Ein Funken Hoffnung
step
    .isQuestTurnedIn 4264
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Marschall Windsor|r
    .accept 4282 >> Akzeptiert die Quest Ein Funken Hoffnung
step
    .isOnQuest 4282
    >>Tötet |cRXP_ENEMY_General Zornesschmied|r und |cRXP_ENEMY_Golem Lord Argelmach|r. Plündert sie beide für |cRXP_LOOT_Marshal Windsor's Verloren Information|r
    .complete 4282,1 -- Marshal Windsor's Lost Information (1)
    .complete 4282,2 -- Marshal Windsor's Lost Information (1)
step
    .isQuestTurnedIn 4264
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Marschall Windsor|r
    >>|cRXP_WARN_STELLT SICHER, DASS ALLE GRUPPENMITGLIEDER AUTO-AKZEPTIEREN FÜR DIESEN SCHRITT DEAKTIVIERT HABEN!|r
    >>|cRXP_WARN_Das Annehmen dieser Quest wird die Gefängnisausbruch-Eskorte beginnen. Stellt sicher, dass ihr alle Bereiche des Gefängnisblocks geleert habt, damit die Eskorte leichter wird|r |cRXP_FRIENDLY_Marschall Windsor|r
    .turnin 4282 >> Gebt die Quest Ein Funken Hoffnung ab
    .accept 4322,1 >> Akzeptiert die Quest Gefängnisausbruch!
step
    .isOnQuest 4322
    >>Eskortiert |cRXP_FRIENDLY_Marschal Windsor|r durch BRD
    .complete 4322,1 -- Jail Break! (1)
step
    #completewith Rendezvoes
    .subzone 2418 >>Reist zu Morgan's Wacht in der |cFFfa9602Brennenden Steppe|r
step
    .isQuestComplete 4322
    .goto Burning Steppes,84.744,69.015
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Marschall Maxwell|r
    .turnin 4322 >> Gebt die Quest Gefängnisausbruch! ab
    .accept 6402 >> Akzeptiert die Quest Treffen in Sturmwind
    .target Marshal Maxwell
step
    .isQuestTurnedIn 4322
    #label Rendezvoes
    .goto Burning Steppes,84.744,69.015
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Marschall Maxwell|r
    .accept 6402 >> Akzeptiert die Quest Treffen in Sturmwind
    .target Marshal Maxwell
step
    .isQuestTurnedIn 4322
    #completewith next
    .goto StormwindClassic,70.424,85.171,5,0
    .goto StormwindClassic,69.709,86.083
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Knappe Rowe|r und |cRXP_FRIENDLY_Reginald Windsor|r
    >>|cRXP_FRIENDLY_Knappe Rowe|r wird die Ankunft von |cRXP_FRIENDLY_Reginald Windsor's|r ankündigen, nachdem ihr mit ihm bei den Toren von Sturmwind gesprochen habt
    >>|cRXP_WARN_WENN IHR IN EINER GRUPPE SEID, STELLT SICHER, DASS NIEMAND DIE GROßE MASKERADE AUTOMATISCH ANNIMMT. DIE AUTOMATISCHE ANNAHME WURDE FÜR DIESEN SCHRITT DEAKTIVIERT|r
    .turnin 6402 >> Gebt die Quest Treffen in Sturmwind ab
    .accept 6403,1 >> Akzeptiert die Quest Die große Maskerade
    .skipgossip
    .target Squire Rowe
    .target Reginald Windsor
step
    .isQuestTurnedIn 4322
    .goto StormwindClassic,75.955,19.114,-1
    .goto StormwindClassic,76.865,20.830,-1
    >>Escort |cRXP_FRIENDLY_Reginald Windsor|r in die Burg Sturmwind
    >>Unterstützt |cRXP_FRIENDLY_Reginald Windsor|r nicht im Kampf, während ihr in der Burg seid. Falls ihr das tut, habt ihr eine hohe Chance zu sterben. Bleibt beim markierten Ort zurück und lasst das Ereignis sich selbst beenden. Es wird ein paar Minuten dauern.
    .complete 6403,1 -- Reginald's March (1)
    .target Reginald Windsor
step
    .isQuestComplete 6403
    .goto StormwindClassic,77.569,18.864
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Hochlord Bolvar Fordragon|r
    .turnin 6403 >> Gebt die Quest Die große Maskerade ab
    .accept 6501 >> Akzeptiert die Quest Das Großdrachenauge
    .target Highlord Bolvar Fordragon
step
    .isQuestTurnedIn 6403
    .goto StormwindClassic,77.569,18.864
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Hochlord Bolvar Fordragon|r
    .accept 6501 >> Akzeptiert die Quest Das Großdrachenauge
    .target Highlord Bolvar Fordragon
step
    #completewith next
    .zone Winterspring >>Reist nach |cFFfa9602Winterquell|r
step
    .isQuestTurnedIn 6403
    #completewith next
    .goto Winterspring,56.60,52.78,0
    .goto Winterspring,56.60,52.78,50,0
    .goto Winterspring,56.36,53.60,30,0
    .goto Winterspring,55.31,53.84,20,0
    .goto Winterspring,54.78,53.30,20,0
    .goto Winterspring,54.51,53.44,20,0
    .goto Winterspring,54.14,52.84,10,0
    .goto Winterspring,53.73,52.04,10,0
    .goto Winterspring,54.54,51.21,30 >>Führt den Mountain-Skip durch, um |cRXP_FRIENDLY_Haleh|r zu erreichen
    >>Der Startpunkt ist auf eurer Karte markiert. Folgt dem Wegpunkt-Pfeil sorgfältig.
    >>|cRXP_WARN_Falls ihr|r |T134863:0|t[Noggenfogger-Elixiere]|cRXP_WARN_ habt, könnt ihr sie benutzen, um|r |T135992:0|t[Langsamer Fall] |cRXP_WARN_zu bekommen und den Sprung leichter zu machen|r << !Priest !Mage
    >>|cRXP_WARN_Falls ihr|r |T134863:0|t[Noggenfogger-Elixiere] |cRXP_WARN_oder|r |T132917:0|t[Leichte Federn]|cRXP_WARN_ habt, könnt ihr sie benutzen, um|r |T135992:0|t[Langsamer Falle] |cRXP_WARN_zu bekommen und den Sprung leichter zu machen|r << Mage
    >>|cRXP_WARN_Falls ihr|r |T134863:0|t[Noggenfogger-Elixiere] |cRXP_WARN_oder|r |T132917:0|t[Leichte Federn]|cRXP_WARN_ habt, könnt ihr sie benutzen, um|r |T135992:0|t[Langsamer Fall] |cRXP_WARN_oder|r |T135928:0|t[Levitieren] |cRXP_WARN_zu wirken und den Sprung leichter zu machen|r << Priest
    .link https://www.youtube.com/watch?v=qjmkIzbfBbQ&ab_channel=RestedXP >> |cRXP_WARN_Klickt hier für Videoanleitung|r
step
    .isQuestTurnedIn 6403
    .goto Winterspring,54.54,51.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Haleh|r
    .turnin 6501 >>Gebt die Quest Das Großdrachenauge ab
    .accept 6502 >>Akzeptiert die Quest Drachenfeueramulett
    .target Haleh
step
    #completewith next
    .subzone 254 >>Reist zum |cFFfa9602Der Schwarzfels|r
step
    #completewith next
    .goto Eastern Kingdoms,48.95,63.89
    .subzone 1583 >>Betretet die Schwarzfelsspitze
    >>|cRXP_WARN_Dies ist eine 10er-Instanz. Ihr oder jemand in der Gruppe von Euch muss das folgende haben|r |T133343:0|t[|cRXP_LOOT_Siegel des Aufstiegs|r] |cRXP_WARN_um die Obere Schwarzfelsspitze betreten zu können|r
step
    .isQuestTurnedIn 6403
    >>Tötet |cRXP_ENEMY_General Drakkisath|r. Plündert ihn für |cRXP_LOOT_Blut des schwarzen Großdrachenhelden|r
    .complete 6502,1 --Blood of the Black Dragon Champion 1/1
    .mob General Drakkisath
step
    #completewith next
    .zone Winterspring >>Reist nach |cFFfa9602Winterquell|r
step
    #completewith next
    .goto Winterspring,56.60,52.78,0
    .goto Winterspring,56.60,52.78,50,0
    .goto Winterspring,56.36,53.60,30,0
    .goto Winterspring,55.31,53.84,20,0
    .goto Winterspring,54.78,53.30,20,0
    .goto Winterspring,54.51,53.44,20,0
    .goto Winterspring,54.14,52.84,10,0
    .goto Winterspring,53.73,52.04,10,0
    .goto Winterspring,54.54,51.21,30 >>Führt den Mountain-Skip durch, um |cRXP_FRIENDLY_Haleh|r zu erreichen
    >>Der Startpunkt ist auf eurer Karte markiert. Folgt dem Wegpunkt-Pfeil sorgfältig.
    >>|cRXP_WARN_Falls ihr|r |T134863:0|t[Noggenfogger-Elixiere]|cRXP_WARN_ habt, könnt ihr sie benutzen, um|r |T135992:0|t[Langsamer Fall] |cRXP_WARN_zu bekommen und den Sprung leichter zu machen|r << !Priest !Mage
    >>|cRXP_WARN_Falls ihr|r |T134863:0|t[Noggenfogger-Elixiere] |cRXP_WARN_oder|r |T132917:0|t[Leichte Federn]|cRXP_WARN_ habt, könnt ihr sie benutzen, um|r |T135992:0|t[Langsamer Falle] |cRXP_WARN_zu bekommen und den Sprung leichter zu machen|r << Mage
    >>|cRXP_WARN_Falls ihr|r |T134863:0|t[Noggenfogger-Elixiere] |cRXP_WARN_oder|r |T132917:0|t[Leichte Federn]|cRXP_WARN_ habt, könnt ihr sie benutzen, um|r |T135992:0|t[Langsamer Fall] |cRXP_WARN_oder|r |T135928:0|t[Levitieren] |cRXP_WARN_zu wirken und den Sprung leichter zu machen|r << Priest
    .link https://www.youtube.com/watch?v=qjmkIzbfBbQ&ab_channel=RestedXP >> |cRXP_WARN_Klickt hier für Videoanleitung|r
step
    #softcore
    .isQuestTurnedIn 6403
    .goto Winterspring,54.54,51.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Haleh|r
    >>|cRXP_WARN_Passt auf den blauen Kreis vor|cRXP_FRIENDLY_ Haleh|r auf. Wenn ihr darauf tretet, werdet ihr in die Höhle teleportiert|r
    .turnin 6502 >>Gebt das Drachenfeueramulett ab
    .target Haleh
step
    #hardcore
    .isQuestTurnedIn 6403
    .goto Winterspring,54.54,51.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Haleh|r
    >>|cRXP_WARN_Passt auf! Tretet NICHT auf den blauen Kreis vor|cRXP_FRIENDLY_ Haleh|r. Das wird euch in die Höhle mit einem Elite-Drachen teleportieren und ihr könntet STERBEN|r
    .turnin 6502 >>Gebt das Drachenfeueramulett ab
    .target Haleh

]])
RXPGuides.RegisterGuide([[
#classic
#tbc

<< Horde
#group RestedXP Endgame Guides
#subgroup Zutrittsvoraussetzungen
#name Onyxias Zutrittsvoraussetzungen (H)

step
    #completewith next
    .subzone 340 >>Reist zu Kargath im |cFFfa9602Ödland|r
step
    .goto Badlands,5.81,47.52
	>>Sprecht mit |cRXP_FRIENDLY_Kriegsherr Goretooth|r, um |T133473:0|t[|cRXP_LOOT_Befehl des Kriegsherren Goretooth|r] zu erhalten. Benutzt es, um die Quest anzunehmen
    .collect 12563,1,4903 --Warlord Goretooth's Command 1/1
    .accept 4903 >>Akzeptiert Befehl des Kriegsherrn
    .target Warlord Goretooth
    .skipgossip 0,1,1,1,1,1
step
    #completewith next
    .subzone 254 >>Reist zum |cFFfa9602Der Schwarzfels|r
step
    #completewith next
    .goto Eastern Kingdoms,48.95,63.89
    .subzone 1583 >>Betretet die Schwarzfelsspitze
    >>|cRXP_WARN_Dies ist ein 5-10-Mann-Dungeon|r
step
    #sticky
    #label ImportantDocuments
    >>Plündert die |cRXP_LOOT_Wichtige Blackrockdokumente|r
    >>Dies hat 4 verschiedene mögliche Spawnpunkte im Dungeon
    >>|cRXP_WARN_Zu den Füßen von|r |cRXP_ENEMY_Oberanführer Wyrmthalak|r
    >>|cRXP_WARN_In einer leeren Ecke neben|r |cRXP_ENEMY_Kriegsmeister Voone|r
    >>|cRXP_WARN_In der nähe von|r |cRXP_ENEMY_Hochlord Omokk|r
    >>|cRXP_WARN_Neben|cRXP_ENEMY_ Urok Schreckensbotes|r Tributhaufen|r
    .complete 4903,4 --Important Blackrock Documents 1/1
step
    >>Tötet |cRXP_ENEMY_Hochlord Omokk|r, |cRXP_ENEMY_Kriegsmeister Voone|r und |cRXP_ENEMY_Oberanführer Wyrmthalak|r
    .complete 4903,2 --Highlord Omokk 1/1
    .mob +Highlord Omokk
    .complete 4903,3 --War Master Voone 1/1
    .mob +War Master Voone
    .complete 4903,1 --Overlord Wyrmthalak 1/1
    .mob +Overlord Wyrmthalak
step
    #requires ImportantDocuments
    #completewith next
    .subzone 340 >>Reist zu Kargath im |cFFfa9602Ödland|r
step
    #requires ImportantDocuments
    .goto Badlands,5.81,47.52
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Warlord Goretooth|r
    .turnin 4903 >>Gebt Befehl des Kriegsherrn ab
    .accept 4941 >>Akzeptiert Etriggs Weisheit
    .target Warlord Goretooth
step
    #completewith next
    .zone Orgrimmar >>Reist nach |cFFfa9602Orgrimmar|r
step
    .goto Orgrimmar,34.27,39.35,10,0
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Etrigg|r und geht durch den Dialog, dann sprecht mit |cRXP_FRIENDLY_Thrall|r
    .turnin 4941 >>Gebt Etriggs Weisheit ab
    .accept 4974 >>Akzeptiert die Quest Für die Horde!
    .target Eitrigg
    .target Thrall
    .skipgossip
step
    #completewith next
    .subzone 254 >>Reist zum |cFFfa9602Der Schwarzfels|r
step
    #completewith next
    .subzone 1583,2 >>Betretet die Schwarzfelsspitze
    >>|cRXP_WARN_Dies ist eine 10er-Instanz. Ihr oder jemand in der Gruppe von Euch muss das folgende haben|r |T133343:0|t[|cRXP_LOOT_Siegel des Aufstiegs|r] |cRXP_WARN_um die Obere Schwarzfelsspitze betreten zu können|r
step
    >>Tötet |cRXP_ENEMY_Kriegshäuptling Rend Blackhand|r. Plündert ihn für seinen |cRXP_LOOT_Kopf|r
    .complete 4974,1 --Head of Rend Blackhand 1/1
    .mob Rend Blackhand
step
    #completewith next
    .zone Orgrimmar >>Reist nach |cFFfa9602Orgrimmar|r
step
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thrall|r
    .turnin 4974 >>Gebt die Quest Für die Horde ab
    .accept 6566 >>Akzeptiert die Quest Was der Wind erzählt
    .target Thrall
step
    .goto Orgrimmar,31.74,37.82
    >>Hört euch |cRXP_FRIENDLY_Thralls|r Geschichte an
    .complete 6566,1 --Thrall's Tale
    .target Thrall
    .skipgossip
step
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thrall|r
    .turnin 6566 >>Gebt die Quest Was der Wind erzählt ab
    .accept 6567 >>Akzeptiert die Quest Der Champion der Horde
    .target Thrall
step
    #completewith next
    .goto Orgrimmar,45.120,63.889
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |r |cRXP_FRIENDLY_Doras|r
    .fly Sun Rock Retreat >> Fliege nach Sonnenfels
    .target Doras
    .zoneskip Stonetalon Mountains
    .zoneskip Desolace
    .zoneskip Feralas
step
    #loop
    .line Desolace,55.50,0.50,53.37,5.77,54.61,10.71,56.20,13.14,60.42,16.17,62.27,19.48,63.38,26.21,62.14,32.17,60.49,37.07,57.27,38.21,53.34,37.51,50.46,42.48,49.55,48.56,49.10,54.18,52.25,59.36,54.52,63.72,55.63,67.41,52.04,71.54,50.53,75.40,47.03,75.15,39.99,78.28,39.79,81.92,41.79,85.27,40.68,89.43,41.44,93.66,41.95,96.04
    .line Feralas,45.47,2.89,45.91,4.75,44.95,7.04,45.03,8.93,45.75,10.64,45.94,12.52,46.43,15.18,46.34,20.94,48.19,23.23
    .goto Desolace,55.50,0.50,60,0
    .goto Desolace,53.37,5.77,60,0
    .goto Desolace,54.61,10.71,60,0
    .goto Desolace,56.20,13.14,60,0
    .goto Desolace,60.42,16.17,60,0
    .goto Desolace,62.27,19.48,60,0
    .goto Desolace,63.38,26.21,60,0
    .goto Desolace,62.14,32.17,60,0
    .goto Desolace,60.49,37.07,60,0
    .goto Desolace,57.27,38.21,60,0
    .goto Desolace,53.34,37.51,60,0
    .goto Desolace,50.46,42.48,60,0
    .goto Desolace,49.55,48.56,60,0
    .goto Desolace,49.10,54.18,60,0
    .goto Desolace,52.25,59.36,60,0
    .goto Desolace,54.52,63.72,60,0
    .goto Desolace,55.63,67.41,60,0
    .goto Desolace,52.04,71.54,60,0
    .goto Desolace,50.53,75.40,60,0
    .goto Desolace,47.03,75.15,60,0
    .goto Desolace,39.99,78.28,60,0
    .goto Desolace,39.79,81.92,60,0
    .goto Desolace,41.79,85.27,60,0
    .goto Desolace,40.68,89.43,60,0
    .goto Desolace,41.44,93.66,60,0
    .goto Desolace,41.95,96.04,60,0
    .goto Feralas,45.47,2.89,60,0
    .goto Feralas,45.91,4.75,60,0
    .goto Feralas,44.95,7.04,60,0
    .goto Feralas,45.03,8.93,60,0
    .goto Feralas,45.75,10.64,60,0
    .goto Feralas,45.94,12.52,60,0
    .goto Feralas,46.43,15.18,60,0
    .goto Feralas,46.34,20.94,60,0
    .goto Feralas,48.19,23.23,60,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rexxar|r
    >>|cRXP_FRIENDLY_Rexxar|r |cRXP_WARN_patrouilliert von Norden nach Süden durch |cFFfa9602Desolace|r. Sein Patrouillenweg ist auf der Karte markiert. Folgt dem Pfeil des Wegpunkts, um sicherzustellen, dass ihr seinen gesamten Patrouillenweg abdeckt|r
    >>|cRXP_WARN_Er verschwindet, sobald er Die Zwillingskolosse in |cFFfa9602Feralas|r erreicht. Nach einer 5-Minuten-Verzögerung respawnt er an der |cFFfa9602Steinkrallengebirge/Desolace-Grenze|r
    .turnin 6567 >>Gebt die Quest Der Champion der Horde ab
    .accept 6568 >>Akzeptiert die Quest Nachricht von Rexxar
    .unitscan Rexxar
step
    #completewith next
    .zone Western Plaguelands >>Reist in die |cFFfa9602Westlichen Pestländer|r
step
    .goto Western Plaguelands,50.79,77.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Myranda die Vettel|r
    .turnin 6568 >>Gebt die Quest Nachricht von Rexxar ab
    .accept 6569 >>Akzeptiert die Quest Oculus-Illusionen
    .target Myranda the Hag
step
    #completewith next
    .subzone 254 >>Reist zum |cFFfa9602Der Schwarzfels|r
step
    #completewith next
    .goto Eastern Kingdoms,48.95,63.89
    .subzone 1583 >>Betretet die Schwarzfelsspitze
    >>|cRXP_WARN_Dies ist eine 10er-Instanz. Ihr oder jemand in der Gruppe von Euch muss das folgende haben|r |T133343:0|t[|cRXP_LOOT_Siegel des Aufstiegs|r] |cRXP_WARN_um die Obere Schwarzfelsspitze betreten zu können|r
step
    >>Tötet alle Arten von |cRXP_ENEMY_Drachkin|r. Plündert |cRXP_LOOT_Schwarzes Drachenbrutauge|r von ihnen
    >>Nur die |cRXP_WARN_Drachkin|cRXP_ENEMY_ in Obere Schwarzfelsspitze können die |rAugen|cRXP_LOOT_ droppen|r
    .complete 6569,1 --Black Dragonspawn Eye 20/20
step
    #completewith next
    .zone Western Plaguelands >>Reist in die |cFFfa9602Westlichen Pestländer|r
step
    .goto Western Plaguelands,50.79,77.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Myranda die Vettel|r
    .turnin 6569 >>Gebt die Quest Oculus-Illusionen ab
    .accept 6570 >>Akzeptiert die Quest Aschenschwinge
    .target Myranda the Hag
step
    #completewith next
    .zone Dustwallow Marsh >>Reist nach |cFFfa9602Düstermarschen|r
step
    #completewith Emberstrife1
    .goto Dustwallow Marsh,54.37,84.22
    .subzone 2158 >>Betretet Aschenschwinges Bau
step
    #hardcore
    #completewith next
    .cast 19937 >>|cRXP_WARN_Seid vorsichtig! Stellt sicher, dass ihr das|r |T133608:0|t[Amulett der drachischen Subversion] |cRXP_WARN_benutzt, BEVOR ihr euch |cRXP_ENEMY_Aschenschwinge|r nähert, oder er könnte euch TÖTEN|r
    .use 16787
step
    #label Emberstrife1
    .goto Dustwallow Marsh,56.67,87.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Aschenschwinge|r
    .use 16787 >>|cRXP_WARN_Benutzt das|r |T133608:0|t[Amulett der drachischen Subversion] |cRXP_WARN_um dich zu verkleiden|r
    .turnin 6570 >>Gebt die Quest Aschenschwinge ab
    .accept 6582 >>Akzeptiert die Quest Die Prüfung der Schädel, Scryer
    .accept 6583 >>Akzeptiert die Quest Die Prüfung der Schädel, Somnus
    .accept 6584 >>Akzeptiert die Quest Die Prüfung der Schädel, Chronalis
    .target Emberstrife
step
    #sticky
    #label SkullofDragons
    >>Tötet |cRXP_ENEMY_Seher|r in |cFFfa9602Winterquell|r
    >>Tötet |cRXP_ENEMY_Somnus|r in |cFFfa9602Sümpfe des Elends|r
    >>Tötet |cRXP_ENEMY_Chronalis|r in |cFFfa9602Tanaris|r
    >>Plündert sie für |cRXP_LOOT_Schädel|r
    >>|cRXP_WARN_Ihre Standorte sind auf der Karte markiert. Es wird empfohlen, dies mit mindestens 5 Spielern zu tun|r
    .complete 6582,1 --The Skull of Scryer 1/1
    .goto Winterspring,52.91,55.77,0
    .complete 6583,1 --The Skull of Somnus 1/1
    .goto Swamp of Sorrows,85.85,52.28,0
    .line Swamp of Sorrows,85.85,52.28,84.66,48.44,80.35,45.41,78.44,50.46,79.44,57.58,77.47,62.39,76.08,66.50,76.25,70.23,82.55,72.08,85.42,63.68,86.68,55.89,85.85,52.28
    .complete 6584,1 --The Skull of Chronalis 1/1
    .goto Tanaris,64.85,50.52
    .unitscan Scryer
    .unitscan Somnus
    .unitscan Chronalis
step
    #completewith next
    .zone Winterspring >>Reist nach |cFFfa9602Winterquell|r
step
    #completewith next
    .goto Winterspring,57.07,49.97
    .subzone 2245 >>Betretet die Mazthorils-Höhle
step
    .goto Winterspring,52.91,55.77
    >>Tötet |cRXP_ENEMY_Seher|r im hinteren Teil der Höhle. Plündert ihn für seinen |cRXP_LOOT_Schädel|r
    >>|cRXP_WARN_Passt auf seine|r |T135848:0|t[Frostatem] |cRXP_WARN_Fähigkeit (AOE vor ihm)|r auf
    .complete 6582,1 --The Skull of Scryer 1/1
    .unitscan Scryer
step
    #completewith next
    .zone Swamp of Sorrows >>Reist in die |cFFfa9602Sümpfe des Elends|r
step
    #loop
    .goto Swamp of Sorrows,85.85,52.28,0
    .line Swamp of Sorrows,85.85,52.28,84.66,48.44,80.35,45.41,78.44,50.46,79.44,57.58,77.47,62.39,76.08,66.50,76.25,70.23,82.55,72.08,85.42,63.68,86.68,55.89,85.85,52.28
    .goto Swamp of Sorrows,85.85,52.28,50,0
    .goto Swamp of Sorrows,84.66,48.44,50,0
    .goto Swamp of Sorrows,80.35,45.41,50,0
    .goto Swamp of Sorrows,78.44,50.46,50,0
    .goto Swamp of Sorrows,79.44,57.58,50,0
    .goto Swamp of Sorrows,77.47,62.39,50,0
    .goto Swamp of Sorrows,76.08,66.50,50,0
    .goto Swamp of Sorrows,76.25,70.23,50,0
    .goto Swamp of Sorrows,82.55,72.08,50,0
    .goto Swamp of Sorrows,85.42,63.68,50,0
    .goto Swamp of Sorrows,86.68,55.89,50,0
    >>Tötet |cRXP_ENEMY_Somnus|r. Plündert ihn für |cRXP_LOOT_Der Schädel des Somnus|r
    >>|cRXP_WARN_Passt auf seine|r |T136007:0|t[Ätzender Säureatem] |cRXP_WARN_Fähigkeit (AOE vor ihm)|r auf
    >>|cRXP_WARN_Er patrouilliert in einem kleinen Kreis südöstlich des Sees|r
    .complete 6583,1 --The Skull of Somnus 1/1
    .unitscan Somnus
step
    #completewith next
    .zone Tanaris >>Reist nach |cFFfa9602Tanaris|r
step
    #completewith next
    .goto Tanaris,61.55,50.54
    .subzone 1941 >>Reist zu den Höhlen der Zeit
step
    .goto Tanaris,64.85,50.52
    >>Tötet |cRXP_ENEMY_Chronalis|r. Plündert sie für |cRXP_LOOT_Der Schädel des Chronalis|r
    >>|cRXP_WARN_Passt auf seine|r |T135831:0|t[Sandatem] |cRXP_WARN_Fähigkeit (AOE vor ihm)|r auf
    .complete 6584,1 --The Skull of Chronalis 1/1
    .unitscan Chronalis
step
    #requires SkullofDragons
    #completewith next
    .zone Dustwallow Marsh >>Reist nach |cFFfa9602Düstermarschen|r
step
    #requires SkullofDragons
    #completewith Emberstrife2
    .goto Dustwallow Marsh,54.37,84.22
    .subzone 2158 >>Betretet Aschenschwinges Bau
step
    #requires SkullofDragons
    #hardcore
    #completewith next
    .cast 19937 >>|cRXP_WARN_Seid vorsichtig! Stellt sicher, dass ihr das|r |T133608:0|t[Amulett der drachischen Subversion] |cRXP_WARN_benutzt, BEVOR ihr euch |cRXP_ENEMY_Aschenschwinge|r nähert, oder er könnte euch TÖTEN|r
    .use 16787
step
    #label Emberstrife2
    #requires SkullofDragons
    .goto Dustwallow Marsh,56.67,87.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Aschenschwinge|r
    .use 16787 >>|cRXP_WARN_Benutzt das|r |T133608:0|t[Amulett der drachischen Subversion] |cRXP_WARN_um dich zu verkleiden|r
    .turnin 6582 >>Gebt die Quest Die Prüfung der Schädel, Scryer ab
    .turnin 6583 >>Gebt die Quest Die Prüfung der Schädel, Somnus ab
    .turnin 6584 >>Gebt die Quest Die Prüfung der Schädel, Chronalis ab
    .accept 6585 >>Akzeptiert die Quest Die Prüfung der Schädel, Axtroz
    .target Emberstrife
step
    #completewith next
    .zone Wetlands >>Reist ins |cFFfa9602Sumpfland|r
step
    #completewith next
    .goto Wetlands,75.44,46.76
    .subzone 1038 >>Reist zu den Toren des Drachenmals
step
    #loop
    .goto Wetlands,83.47,48.78,0
    .line Wetlands,81.41,48.41,83.47,48.78,85.61,50.89
    .goto Wetlands,81.41,48.41,30,0
    .goto Wetlands,83.47,48.78,30,0
    .goto Wetlands,85.61,50.89,30,0
    >>Tötet |cRXP_ENEMY_Axtroz|r. Plündert sie für |cRXP_LOOT_Der Schädel des Axtroz|r
    >>|cRXP_WARN_Passt auf seine|r |T135831:0|t[Flammenatem] |cRXP_WARN_Fähigkeit (AOE vor ihm)|r auf
    .complete 6585,1 --The Skull of Axtroz 1/1
    .unitscan Axtroz
step
    #completewith next
    .zone Dustwallow Marsh >>Reist nach |cFFfa9602Düstermarschen|r
step
    #completewith Emberstrife3
    .goto Dustwallow Marsh,54.37,84.22
    .subzone 2158 >>Betretet Aschenschwinges Bau
step
    #hardcore
    #completewith next
    .cast 19937 >>|cRXP_WARN_Seid vorsichtig! Stellt sicher, dass ihr das|r |T133608:0|t[Amulett der drachischen Subversion] |cRXP_WARN_benutzt, BEVOR ihr euch |cRXP_ENEMY_Aschenschwinge|r nähert, oder er könnte euch TÖTEN|r
    .use 16787
step
    #label Emberstrife3
    .goto Dustwallow Marsh,56.67,87.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Aschenschwinge|r
    .use 16787 >>|cRXP_WARN_Benutzt das|r |T133608:0|t[Amulett der drachischen Subversion] |cRXP_WARN_um dich zu verkleiden|r
    .turnin 6585 >>Gebt die Quest Die Prüfung der Schädel, Axtroz ab
    .accept 6601 >>Akzeptiert die Quest Aufstieg...
    .target Emberstrife
step
    #completewith next
    .zone Desolace >>Reist nach |cFFfa9602Desolace|r
step
    #loop
    .line Desolace,55.50,0.50,53.37,5.77,54.61,10.71,56.20,13.14,60.42,16.17,62.27,19.48,63.38,26.21,62.14,32.17,60.49,37.07,57.27,38.21,53.34,37.51,50.46,42.48,49.55,48.56,49.10,54.18,52.25,59.36,54.52,63.72,55.63,67.41,52.04,71.54,50.53,75.40,47.03,75.15,39.99,78.28,39.79,81.92,41.79,85.27,40.68,89.43,41.44,93.66,41.95,96.04
    .line Feralas,45.47,2.89,45.91,4.75,44.95,7.04,45.03,8.93,45.75,10.64,45.94,12.52,46.43,15.18,46.34,20.94,48.19,23.23
    .goto Desolace,55.50,0.50,60,0
    .goto Desolace,53.37,5.77,60,0
    .goto Desolace,54.61,10.71,60,0
    .goto Desolace,56.20,13.14,60,0
    .goto Desolace,60.42,16.17,60,0
    .goto Desolace,62.27,19.48,60,0
    .goto Desolace,63.38,26.21,60,0
    .goto Desolace,62.14,32.17,60,0
    .goto Desolace,60.49,37.07,60,0
    .goto Desolace,57.27,38.21,60,0
    .goto Desolace,53.34,37.51,60,0
    .goto Desolace,50.46,42.48,60,0
    .goto Desolace,49.55,48.56,60,0
    .goto Desolace,49.10,54.18,60,0
    .goto Desolace,52.25,59.36,60,0
    .goto Desolace,54.52,63.72,60,0
    .goto Desolace,55.63,67.41,60,0
    .goto Desolace,52.04,71.54,60,0
    .goto Desolace,50.53,75.40,60,0
    .goto Desolace,47.03,75.15,60,0
    .goto Desolace,39.99,78.28,60,0
    .goto Desolace,39.79,81.92,60,0
    .goto Desolace,41.79,85.27,60,0
    .goto Desolace,40.68,89.43,60,0
    .goto Desolace,41.44,93.66,60,0
    .goto Desolace,41.95,96.04,60,0
    .goto Feralas,45.47,2.89,60,0
    .goto Feralas,45.91,4.75,60,0
    .goto Feralas,44.95,7.04,60,0
    .goto Feralas,45.03,8.93,60,0
    .goto Feralas,45.75,10.64,60,0
    .goto Feralas,45.94,12.52,60,0
    .goto Feralas,46.43,15.18,60,0
    .goto Feralas,46.34,20.94,60,0
    .goto Feralas,48.19,23.23,60,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rexxar|r
    >>|cRXP_FRIENDLY_Rexxar|r |cRXP_WARN_patrouilliert von Norden nach Süden durch |cFFfa9602Desolace|r. Sein Patrouillenweg ist auf der Karte markiert. Folgt dem Pfeil des Wegpunkts, um sicherzustellen, dass ihr seinen gesamten Patrouillenweg abdeckt|r
    >>|cRXP_WARN_Er verschwindet, sobald er Die Zwillingskolosse in |cFFfa9602Feralas|r erreicht. Nach einer 5-Minuten-Verzögerung respawnt er an der |cFFfa9602Steinkrallengebirge/Desolace-Grenze|r
    .turnin 6601 >>Gebt die Quest Aufstieg... ab
    .accept 6602 >>Akzeptiert die Quest Blut des schwarzen Großdrachenhelden
    .unitscan Rexxar
step
    #completewith next
    .subzone 254 >>Reist zum |cFFfa9602Der Schwarzfels|r
step
    #completewith next
    .goto Eastern Kingdoms,48.95,63.89
    .subzone 1583 >>Betretet die Schwarzfelsspitze
    >>|cRXP_WARN_Dies ist eine 10er-Instanz. Ihr oder jemand in der Gruppe von Euch muss das folgende haben|r |T133343:0|t[|cRXP_LOOT_Siegel des Aufstiegs|r] |cRXP_WARN_um die Obere Schwarzfelsspitze betreten zu können|r
step
    .isQuestTurnedIn 6601
    >>Tötet |cRXP_ENEMY_General Drakkisath|r. Plündert ihn für |cRXP_LOOT_Blut des schwarzen Großdrachenhelden|r
    .complete 6602,1 --Blood of the Black Dragon Champion 1/1
    .mob General Drakkisath
step
    #completewith next
    .zone Desolace >>Reist nach |cFFfa9602Desolace|r
step
    .isQuestComplete 6602
    #loop
    .line Desolace,55.50,0.50,53.37,5.77,54.61,10.71,56.20,13.14,60.42,16.17,62.27,19.48,63.38,26.21,62.14,32.17,60.49,37.07,57.27,38.21,53.34,37.51,50.46,42.48,49.55,48.56,49.10,54.18,52.25,59.36,54.52,63.72,55.63,67.41,52.04,71.54,50.53,75.40,47.03,75.15,39.99,78.28,39.79,81.92,41.79,85.27,40.68,89.43,41.44,93.66,41.95,96.04
    .line Feralas,45.47,2.89,45.91,4.75,44.95,7.04,45.03,8.93,45.75,10.64,45.94,12.52,46.43,15.18,46.34,20.94,48.19,23.23
    .goto Desolace,55.50,0.50,60,0
    .goto Desolace,53.37,5.77,60,0
    .goto Desolace,54.61,10.71,60,0
    .goto Desolace,56.20,13.14,60,0
    .goto Desolace,60.42,16.17,60,0
    .goto Desolace,62.27,19.48,60,0
    .goto Desolace,63.38,26.21,60,0
    .goto Desolace,62.14,32.17,60,0
    .goto Desolace,60.49,37.07,60,0
    .goto Desolace,57.27,38.21,60,0
    .goto Desolace,53.34,37.51,60,0
    .goto Desolace,50.46,42.48,60,0
    .goto Desolace,49.55,48.56,60,0
    .goto Desolace,49.10,54.18,60,0
    .goto Desolace,52.25,59.36,60,0
    .goto Desolace,54.52,63.72,60,0
    .goto Desolace,55.63,67.41,60,0
    .goto Desolace,52.04,71.54,60,0
    .goto Desolace,50.53,75.40,60,0
    .goto Desolace,47.03,75.15,60,0
    .goto Desolace,39.99,78.28,60,0
    .goto Desolace,39.79,81.92,60,0
    .goto Desolace,41.79,85.27,60,0
    .goto Desolace,40.68,89.43,60,0
    .goto Desolace,41.44,93.66,60,0
    .goto Desolace,41.95,96.04,60,0
    .goto Feralas,45.47,2.89,60,0
    .goto Feralas,45.91,4.75,60,0
    .goto Feralas,44.95,7.04,60,0
    .goto Feralas,45.03,8.93,60,0
    .goto Feralas,45.75,10.64,60,0
    .goto Feralas,45.94,12.52,60,0
    .goto Feralas,46.43,15.18,60,0
    .goto Feralas,46.34,20.94,60,0
    .goto Feralas,48.19,23.23,60,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rexxar|r
    >>|cRXP_FRIENDLY_Rexxar|r |cRXP_WARN_patrouilliert von Norden nach Süden durch |cFFfa9602Desolace|r. Sein Patrouillenweg ist auf der Karte markiert. Folgt dem Pfeil des Wegpunkts, um sicherzustellen, dass ihr seinen gesamten Patrouillenweg abdeckt|r
    >>|cRXP_WARN_Er verschwindet, sobald er Die Zwillingskolosse in |cFFfa9602Feralas|r erreicht. Nach einer 5-Minuten-Verzögerung respawnt er an der |cFFfa9602Steinkrallengebirge/Desolace-Grenze|r
    .turnin 6602 >>Gebt die Quest Blut des schwarzen Großdrachenhelden ab
    .unitscan Rexxar

]])



RXPGuides.RegisterGuide([[
#classic
#tbc

#subgroup Zutrittsvoraussetzungen
#group RestedXP Endgame Guides
#name Geschmolzener Kern Zutrittsvoraussetzung

step
    #completewith next
    .subzone 254 >>Reist zum |cFFfa9602Der Schwarzfels|r
step
    .goto Eastern Kingdoms,48.41,63.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Lothos Felsspalter|r
    .accept 7848 >>Akzeptiert die Quest Abstimmung mit dem Kern
    .target Lothos Riftwaker
step
    #completewith next
    .goto Eastern Kingdoms,48.07,62.42
    .subzone 1584,2 >>Betretet Schwarzfelstiefen
    >>|cRXP_WARN_Stellt sicher, dass ihr eine Gruppe parat habt|r
step
    #softcore
    >>Biege vor dem Betreten des Lyceums rechts ab und plündere das|cRXP_LOOT_Kernfragment|r das draußen vor dem Instanzportal zum |cFFfa9602Geschmolzenen Kern|r (Molten Core) auf dem Boden liegt 
    >>|cRXP_WARN_Der schnellste Weg, hierher zu gelangen, ist der 'Lava-Skip'. Dies beginnt von der Plattform von|r |cRXP_ENEMY_Lord Incendius|r
    --.link >> |cRXP_WARN_Click here for video reference|r
    .complete 7848,1 --Core Fragment 1/1
    --VV TODO: Lava skip video
step
    #hardcore
    >>Biege vor dem Betreten des Lyceums rechts ab und plündere das|cRXP_LOOT_Kernfragment|r das draußen vor dem Instanzportal zum |cFFfa9602Geschmolzenen Kern|r (Molten Core) auf dem Boden liegt 
    .complete 7848,1 --Core Fragment 1/1
step
    #completewith next
    .subzone 254 >>Reist zum |cFFfa9602Der Schwarzfels|r
step
    .goto Eastern Kingdoms,48.41,63.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Lothos Felsspalter|r
    .turnin 7848 >>Gebt die Quest Abstimmung mit dem Kern ab
    .target Lothos Riftwaker
    .isQuestComplete 7848

]])



RXPGuides.RegisterGuide([[
#classic
#tbc

#group RestedXP Endgame Guides
#subgroup Zutrittsvoraussetzungen
#name Pechschwingenhort Zutrittsvorraussetzungen

step
    #completewith next
    .subzone 254 >>Reist zum |cFFfa9602Der Schwarzfels|r
step
    #hardcore
    .goto Eastern Kingdoms,48.94,63.92,10,0
    .goto Eastern Kingdoms,49.01,64.12,10,0
    .goto Eastern Kingdoms,49.12,64.09
    .use 18987 >>Tötet |cRXP_ENEMY_Rüstmeister der Schmetterschilde|r. Plündert ihn für |T133473:0|t[|cRXP_LOOT_Blackhands Befehl|r]. Benutzt es, um die Quest anzunehmen.
    >>|cRXP_WARN_Das ist ein starker Elite der Stufe 55. Macht das aus Sicherheitsgründen mit einer Gruppe|r
    >>|cRXP_WARN_Er befindet sich im Flur auf der rechten Seite des Schwarzfelsspitze-Instanzportals|r
    .collect 18987,1,7761 --Blackhand's Command 1/1
    .accept 7761 >>Akzeptiert die Quest Blackhands Befehl
    .unitscan Scarshield Quartermaster
step
    #softcore
    .goto Eastern Kingdoms,48.94,63.92,10,0
    .goto Eastern Kingdoms,49.01,64.12,10,0
    .goto Eastern Kingdoms,49.12,64.09
    .use 18987 >>Tötet |cRXP_ENEMY_Rüstmeister der Schmetterschilde|r. Plündert ihn für |T133473:0|t[|cRXP_LOOT_Blackhands Befehl|r]. Benutzt es, um die Quest anzunehmen.
    >>|cRXP_WARN_Er befindet sich im Flur auf der rechten Seite des Schwarzfelsspitze-Instanzportals|r
    .collect 18987,1,7761 --Blackhand's Command 1/1
    .accept 7761 >>Akzeptiert die Quest Blackhands Befehl
    .unitscan Scarshield Quartermaster
step
    #completewith next
    .goto Eastern Kingdoms,48.95,63.89
    .subzone 1583 >>Betretet die Schwarzfelsspitze
    >>|cRXP_WARN_Dies ist eine 10er-Instanz. Ihr oder jemand in der Gruppe von Euch muss das folgende haben|r |T133343:0|t[|cRXP_LOOT_Siegel des Aufstiegs|r] |cRXP_WARN_um die Obere Schwarzfelsspitze betreten zu können|r
step
    >>Klickt |cRXP_PICK_Drakkisaths Brandzeichen|r im letzten Raum der Oberen Schwarzfelsspitze hinter |cRXP_ENEMY_Kriegsherr Drakkisath|r
    .turnin 7761 >>Gebt die Quest Blackhands Befehl ab

]])



RXPGuides.RegisterGuide([[
#classic
#tbc

#group RestedXP Endgame Guides
#subgroup Schlüssel
#name Schlüssel der Obere Schwarzfelsspitze

step
    #completewith next
    .subzone 254 >>Reist zum |cFFfa9602Der Schwarzfels|r
step
    #completewith next
    .goto Eastern Kingdoms,48.07,62.42
    .subzone 1583 >>Betretet die Schwarzfelsspitze
    >>|cRXP_WARN_Stellt sicher, dass ihr eine Gruppe parat habt|r
step
    >>Tötet alle Arten von Kreaturen in der Schwarzfelsspitze, bis ihr |T135725:0|t[|cRXP_LOOT_Unverziertes Siegel des Aufstiegs|r] plündert
    .collect 12219,1,4742 --Unadorned Seal of Ascension
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Spitzel der Schmetterschilde|r
    >>|cRXP_WARN_Wenn ihr Hordemar am Anfang des Dungeons betretet, wird er sich auf einer Plattform auf der linken Seite von Euch befinden|r
    .accept 4742 >>Akzeptiert die Quest Siegel des Aufstiegs
    .target Scarshield Infiltrator
    .target Vaelan
step
    >>Tötet |cRXP_ENEMY_Hochlord Omokk|r. Plündert ihn für |cRXP_LOOT_Edelstein der Felsspitzoger|r
    >>Tötet |cRXP_ENEMY_Kriegsmeister Voone|r. Plündert ihn für |cRXP_LOOT_Edelstein der Gluthauer|r
    >>Tötet |cRXP_ENEMY_Oberanführer Wyrmthalak|r. Plündert |cRXP_LOOT_Edelstein der Blutäxte|r
    >>|cRXP_WARN_Die|r |cRXP_LOOT_Edelsteine|r |cRXP_WARN_haben eine ~30% Dropchance. Ihr müsst wahrscheinlich mehrere Läufe Untere Schwarzfelsspitze absolvieren|r
    .complete 4742,1 --Gemstone of Spirestone 1/1
    .target +Highlord Omokk
    .complete 4742,2 --Gemstone of Smolderthorn 1/1
    .target +War Master Voone
    .complete 4742,3 --Gemstone of Bloodaxe 1/1
    .target +Overlord Wyrmthalak
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Spitzel der Schmetterschilde|r
    >>|cRXP_WARN_Wenn ihr Hordemar am Anfang des Dungeons betretet, wird er sich auf einer Plattform auf der linken Seite von Euch befinden|r
    .turnin 4742 >>Gebt die Quest Siegel des Aufstiegs ab
    .accept 4743 >>Akzeptiert die Quest Siegel des Aufstiegs
    .target Scarshield Infiltrator
    .target Vaelan
step
    #completewith ForgedSeal
    .use 12339 >>|cRXP_WARN_Öffnet|r |T132595:0|t[Vaelans Gabe] |cRXP_WARN_um|r |T133276:0|t[|cRXP_LOOT_Ungeschmiedetes Siegel des Aufstiegs|r] |cRXP_WARN_und|r |T134334:0|t[|cRXP_LOOT_Kugel der drachischen Energie|r] zu plündern
    .collect 12323,1,4743,1 --Unforged Seal of Ascension
    .collect 12300,1,4743,1 --Orb of Draconic Energy
step
    #completewith next
    .zone Dustwallow Marsh >>Reist nach |cFFfa9602Düstermarschen|r
step
    #softcore
    .goto Dustwallow Marsh,54.37,84.22
    .subzone 2158 >>Betretet Aschenschwinges Bau
    >>|cRXP_WARN_Ihr benötigt eine Gruppe aus mindestens 3 Spielern, um den nächsten Abschnitt abzuschließen|r
step
    #hardcore
    .goto Dustwallow Marsh,54.37,84.22
    .subzone 2158 >>Betretet Aschenschwinges Bau
    >>|cRXP_WARN_Ihr benötigt eine Gruppe aus mindestens 3 Spielern, um diesen nächsten Abschnitt mit einem Tank und einem Heiler abzuschließen!|r
step
    #completewith next
    .cast 16057 >>|cRXP_WARN_Platziert|r |T133276:0|t[|cRXP_LOOT_Ungeschmiedetes Siegel des Aufstiegs|r] |cRXP_WARN_auf dem Boden, bevor ihr|r Aschenschwinge|cRXP_ENEMY_ angreift|r
    .use 12323
step
    #label ForgedSeal
    .goto Dustwallow Marsh,56.67,87.64
    .use 12300 >>|cRXP_WARN_Greift|r Aschenschwinge|cRXP_ENEMY_. an |rSobald er unter 10 Prozent Gesundheit ist, benutzt die|cRXP_WARN_ |T134334:0|t[|rKugel der drachischen Energie|cRXP_LOOT_] |rum die Kontrolle über|cRXP_WARN_ Aschenschwinge|r |cRXP_ENEMY_zu erlangen|r
    >>|cRXP_WARN_Wirkt|r |T135824:0|t[Flammen des schwarzen Drachenschwarms] |cRXP_WARN_um das|r |T133276:0|t[|cRXP_LOOT_Ungeschmiedetes Siegel des Aufstiegs|r] |cRXP_WARN_zu schmieden, welches ihr auf dem Boden platziert habt|r
    >>Sobald es abgeschlossen ist, hebt das |cRXP_PICK_Geschmiedete Siegel des Aufstiegs|r vom Boden auf
    .complete 4743,1 --Forged Seal of Ascension
    .mob Emberstrife
step
    #completewith next
    .subzone 254 >>Reist zum |cFFfa9602Der Schwarzfels|r
step
    #completewith next
    .goto Eastern Kingdoms,48.07,62.42
    .subzone 1583 >>Betretet die Schwarzfelsspitze
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Spitzel der Schmetterschilde|r
    >>|cRXP_WARN_Wenn ihr Hordemar am Anfang des Dungeons betretet, wird er sich auf einer Plattform auf der linken Seite von Euch befinden|r
    .turnin 4743 >>Gebt die Quest Siegel des Aufstiegs ab
    .target Scarshield Infiltrator
    .target Vaelan

]])



RXPGuides.RegisterGuide([[
#classic
#tbc

<< Alliance
#group RestedXP Endgame Guides
#subgroup Schlüssel
#name Scholomance Schlüssel (A)

step
    #sticky
    #label ThoriumBars
    >>|cRXP_WARN_Geht zum Auktionshaus in einer beliebigen Hauptstadt und kauft 2|r |T133221:0|t[Thoriumbarren]
    .collect 12359,2,5801,1 --Thorium Bar x2
step
    #completewith next
	.zone Ironforge >> Reist nach |cFFfa9602Eisenschmiede|r
step
    #loop
    .goto Ironforge,33.4,20.0,0
    .goto Ironforge,33.4,20.0,70,0
    .goto Ironforge,25.6,61.6,70,0
    .goto Ironforge,64.8,77.8,70,0
    .goto Ironforge,70.6,48.0,70,0
    .goto Ironforge,65.0,22.6,70,0
    .goto Ironforge,50.4,10.4,70,0
    .goto Ironforge,32.6,21.0,70,0
    .goto Ironforge,40.8,39.4,70,0
    .goto Ironforge,51.2,56.6,70,0
    .goto Ironforge,55.8,35.2,70,0
    .goto Ironforge,33.0,22.4,70,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kurier Hammerfall|r
    >>|cRXP_FRIENDLY_Kurier Hammerfall|r patrouilliert durch ganz Ironforge
    >>|cRXP_WARN_Diese Quest kann auch in|r Sturmwind|cFFfa9602 oder in|r |cRXP_WARN_Darnassus|r |cFFfa9602angenommen werden|r
    .acceptmultiple 5091,5090,5066 >> Der Ruf zu den Waffen: Die Pestländer! annehmen
    .unitscan Courier Hammerfall --IF
    .unitscan Herald Moonstalker --DARN
    .unitscan Crier Goodman --SW
    .isQuestAvailable 5092
step
    #requires ThoriumBars
    #completewith ClearTheWayPU
    .subzone 3197 >>Reist ins Zugwindlager in den |cFFfa9602Westliche Pestländern|r
step
    #requires ThoriumBars
    #optional
    .isOnQuest 5066
    .goto Western Plaguelands,42.702,84.031
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kommandant Ashlam Valorfist|r
    .turnin 5066 >> Gebt die Quest Der Ruf zu den Waffen: Die Pestländer! ab
    .accept 5092 >> Weg frei annehmen
    .target Commander Ashlam Valorfist
step
    #requires ThoriumBars
    #optional
    .isQuestTurnedIn 5066
    .goto Western Plaguelands,42.702,84.031
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kommandant Ashlam Valorfist|r
    .accept 5092 >> Weg frei annehmen
    .target Commander Ashlam Valorfist
step
    #requires ThoriumBars
    #optional
    .isOnQuest 5091
    .goto Western Plaguelands,42.702,84.031
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kommandant Ashlam Valorfist|r
    .turnin 5091 >> Gebt die Quest Der Ruf zu den Waffen: Die Pestländer! ab
    .accept 5092 >> Weg frei annehmen
    .target Commander Ashlam Valorfist
step
    #requires ThoriumBars
    #optional
    .isQuestTurnedIn 5091
    .goto Western Plaguelands,42.702,84.031
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kommandant Ashlam Valorfist|r
    .accept 5092 >> Weg frei annehmen
    .target Commander Ashlam Valorfist
step
    #requires ThoriumBars
    .isOnQuest 5090
    .goto Western Plaguelands,42.702,84.031
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kommandant Ashlam Valorfist|r
    .turnin 5090 >> Gebt die Quest Der Ruf zu den Waffen: Die Pestländer! ab
    .accept 5092 >> Weg frei annehmen
    .target Commander Ashlam Valorfist
step
    #requires ThoriumBars
    #label ClearTheWayPU
    .isQuestTurnedIn 5090
    .goto Western Plaguelands,42.702,84.031
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kommandant Ashlam Valorfist|r
    .accept 5092 >> Weg frei annehmen
    .target Commander Ashlam Valorfist
step
    #loop
    .goto Western Plaguelands,49.90,76.54,0
    .goto Western Plaguelands,48.70,80.37,60,0
    .goto Western Plaguelands,49.90,76.54,60,0
    .goto Western Plaguelands,50.88,76.14,60,0
    .goto Western Plaguelands,50.05,80.74,60,0
    >>Töte |cRXP_ENEMY_Skelettschinder|r und |cRXP_ENEMY_Sabbernder Ghul|r
    .complete 5092,1 -- Skeletal Flayer slain (10)
    .mob +Skeletal Flayer
    .complete 5092,2 -- Slavering Ghoul slain (10)
    .mob +Slavering Ghoul
step
    .goto Western Plaguelands,42.702,84.031
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kommandant Ashlam Valorfist|r
    .accept 5098 >> Turm um Turm annehmen
    .target Commander Ashlam Valorfist
step
    .goto Western Plaguelands,46.681,71.135,-1
    .goto Western Plaguelands,46.558,71.156,-1
    .use 12815 >> |cRXP_WARN_Benutzt die|r |T135432:0|t[Signalfackel] |cRXP_WARN_neben dem Eingang des Turms. Ihr könnt dies tun, ohne den Elite |cRXP_ENEMY_Skelettkriegsherr|r im Inneren zu pullen|r
    .complete 5098,4 --Tower Four marked
step
    .goto Western Plaguelands,44.217,63.319,-1
    .goto Western Plaguelands,44.247,63.131,-1
    .use 12815 >> |cRXP_WARN_Benutzt die|r |T135432:0|t[Signalfackel] |cRXP_WARN_neben dem Eingang des Turms. Ihr könnt dies tun, ohne den Elite |cRXP_ENEMY_Skelettkriegsherr|r im Inneren zu pullen|r
    .complete 5098,3 --Tower Three marked
step
    .goto Western Plaguelands,42.326,66.105,-1
    .goto Western Plaguelands,42.422,66.222,-1
    .use 12815 >> |cRXP_WARN_Benutzt die|r |T135432:0|t[Signalfackel] |cRXP_WARN_neben dem Eingang des Turms. Ihr könnt dies tun, ohne den Elite |cRXP_ENEMY_Skelettkriegsherr|r im Inneren zu pullen|r
    .complete 5098,2 --Tower Two marked
step
    .goto Western Plaguelands,40.116,71.561,-1
    .goto Western Plaguelands,40.038,71.713,-1
    .use 12815 >> |cRXP_WARN_Benutzt die|r |T135432:0|t[Signalfackel] |cRXP_WARN_neben dem Eingang des Turms. Ihr könnt dies tun, ohne den Elite |cRXP_ENEMY_Skelettkriegsherr|r im Inneren zu pullen|r
    .complete 5098,1 --Tower One marked
step
    .goto Western Plaguelands,42.702,84.031
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kommandant Ashlam Valorfist|r
    .turnin 5098 >> Gebt Turm um Turm ab
    .accept 5533 >> Scholomance annehmen
    .target Commander Ashlam Valorfist
step
    #completewith SkeletalFragments
    .isQuestTurnedIn 5098
    .destroy 12815 >> Zerstört die |T135432:0|t[Signalfackel]
step
    .goto Western Plaguelands,42.665,83.774
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Alchemist Arbington|r
    .turnin 5533 >>Gebt die Quest Scholomance ab
    .accept 5537 >>Akzeptiert die Quest Skelettfragmente
    .target Alchemist Arbington
step
    #label SkeletalFragments
    #loop
	.line Western Plaguelands,46.4,70.0,45.6,72.2,42.6,71.4,41.6,73.2,38.8,71.0,38.8,68.2,40.4,66.4,42.6,70.0,43.4,64.4,45.8,65.8,46.4,70.0
	.goto Western Plaguelands,46.40,70.00,60,0
	.goto Western Plaguelands,45.60,72.20,60,0
	.goto Western Plaguelands,42.60,71.40,60,0
	.goto Western Plaguelands,41.60,73.20,60,0
	.goto Western Plaguelands,38.80,71.00,60,0
	.goto Western Plaguelands,38.80,68.20,60,0
	.goto Western Plaguelands,40.40,66.40,60,0
	.goto Western Plaguelands,42.60,70.00,60,0
	.goto Western Plaguelands,43.40,64.40,60,0
	.goto Western Plaguelands,45.80,65.80,60,0
	.goto Western Plaguelands,46.40,70.00,60,0
    >>Tötet |cRXP_ENEMY_Skeletthenker|r und |cRXP_ENEMY_Skelettakolyth|r. Plündert sie für |cRXP_LOOT_Skelettfragmente|r
    .complete 5537,1 -- Collect Skeletal Fragments (x15)
    .mob Skeletal Executioner
    .mob Skeletal Acolyte
step
    .goto Western Plaguelands,42.665,83.774
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Alchemist Arbington|r
    .turnin 5537 >>Gebt die Quest Skelettfragmente ab
    .accept 5538 >>Akzeptiert die Quest Sold reimt sich auf...
    .target Alchemist Arbington
step
    #completewith next
    .subzone 976 >>Reist nach Gadgetzan im |cFFfa9602Tanaris|r
step
    .goto Tanaris,51.46,28.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Krinkle Goodsteel|r
    >>|cRXP_WARN_Um die Quest abzugeben, müsst ihr 15 Gold zahlen|r
    .turnin 5538 >>Gebt die Quest Sold reimt sich auf... ab
    .accept 5801 >>Akzeptiert die Quest Feuerfeder geschmiedet
    .target Krinkle Goodsteel
step
    >>|cRXP_WARN_Falls ihr sie nicht früher gekauft habt, geht zum Auktionshaus in einer beliebigen Hauptstadt und kauft 2|r |T133221:0|t[Thoriumbarren]
    .collect 12359,2,5801,1 --Thorium Bar x2
step
    #completewith next
    .goto Tanaris,51.006,29.345
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Bera Steinhammer|r
    .fly Un'Goro >> Fliegt in den Krater von Un'Goro
    .target Bera Stonehammer
    .zoneskip Un'Goro Crater
step
    #completewith next
    .goto Un'Goro Crater,49.62,47.56,100 >>Reist zum Gipfel des Berges des Feuersäulengrats
step
    .goto Un'Goro Crater,49.28,47.04
    .use 14644 >>|cRXP_WARN_Benutzt die|r |T134457:0|t[Skelettschlüsselform] |cRXP_WARN_am Lavabecken um den|r Unvollendeter Skelettschlüssel|cRXP_LOOT_ herzustellen|r
    .complete 5801,1 --Unfinished Skeleton Key (1)
step
    #completewith next
    .subzone 3197 >>Reist ins Zugwindlager in den |cFFfa9602Westliche Pestländern|r
step
    .goto Western Plaguelands,42.665,83.774
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Alchemist Arbington|r
    .turnin 5801 >>Gebt die Quest Feuerfeder geschmiedet ab
    .accept 5803 >>Akzeptiert die Quest Arajs Skarabäus
    .target Alchemist Arbington
step
    #completewith ArajTheSummoner
    .goto Western Plaguelands,45.60,69.28,100 >>Reist zur Mitte der Ruinen von Andorhal
step
    #softcore
    .goto Western Plaguelands,45.60,69.28
    >>Tötet |cRXP_ENEMY_Araj der Beschwörer|r. Plündert |cRXP_PICK_Araj's Phylakterium|r auf dem Boden für |cRXP_LOOT_Arajs Skarabäus|r
    >>|cRXP_ENEMY_Araj|r |cRXP_WARN_ist eine starker Elite. Tötet ihn in einer Gruppe von mindestens 3 Spielern|r
    .use 12650 >>|cRXP_WARN_Benutzt einen|r |T134961:0|t[Eingestellter Dämpfer] |cRXP_WARN_bei ihm, falls ihr einen habt|r
    .complete 5803,1 --Araj's Scarab (1x)
    .mob Araj the Summoner
    .itemcount 12650,1 --Attuned Dampener
step
    #softcore
    #label ArajTheSummoner
    .goto Western Plaguelands,45.60,69.28
    >>Tötet |cRXP_ENEMY_Araj der Beschwörer|r. Plündert |cRXP_PICK_Araj's Phylakterium|r auf dem Boden für |cRXP_LOOT_Arajs Skarabäus|r
    >>|cRXP_ENEMY_Araj|r |cRXP_WARN_ist eine starker Elite. Tötet ihn in einer Gruppe von mindestens 3 Spielern|r
    .complete 5803,1 --Araj's Scarab (1x)
    .mob Araj the Summoner
step
    #hardcore
    .goto Western Plaguelands,45.60,69.28
    >>Tötet |cRXP_ENEMY_Araj der Beschwörer|r. Plündert |cRXP_PICK_Araj's Phylakterium|r auf dem Boden für |cRXP_LOOT_Arajs Skarabäus|r
    >>|cRXP_ENEMY_Araj|r |cRXP_WARN_ist eine starke Elite und ist umgeben von vielen Mobs, tötet sie sorgfältig. Tötet ihn in einer Gruppe von mindestens 4 Spielern|r
    .use 12650 >>|cRXP_WARN_Benutzt einen|r |T134961:0|t[Eingestellter Dämpfer] |cRXP_WARN_bei ihm, falls ihr einen habt|r
    .complete 5803,1 --Araj's Scarab (1x)
    .mob Araj the Summoner
    .itemcount 12650,1 --Attuned Dampener
step
    #hardcore
    #label ArajTheSummoner
    .goto Western Plaguelands,45.60,69.28
    >>Tötet |cRXP_ENEMY_Araj der Beschwörer|r. Plündert |cRXP_PICK_Araj's Phylakterium|r auf dem Boden für |cRXP_LOOT_Arajs Skarabäus|r
    >>|cRXP_ENEMY_Araj|r |cRXP_WARN_ist eine starke Elite und ist umgeben von vielen Mobs, tötet sie sorgfältig. Tötet ihn in einer Gruppe von mindestens 4 Spielern|r
    .complete 5803,1 --Araj's Scarab (1x)
    .mob Araj the Summoner
step
    .goto Western Plaguelands,42.665,83.774
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Alchemist Arbington|r
    .turnin 5803 >>Gebt die Quest Arajs Skarabäus ab
    .target Alchemist Arbington
step
    .goto Western Plaguelands,42.665,83.774
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Alchemist Arbington|r
    .turnin 5505 >>Gebt die Quest Der Schlüssel zur Scholomance ab
    .target Alchemist Arbington

]])



RXPGuides.RegisterGuide([[
#classic
#tbc

<< Horde
#group RestedXP Endgame Guides
#subgroup Schlüssel
#name Scholomance Schlüssel (H)


step
    #sticky
    #label ThoriumBars
    >>|cRXP_WARN_Geht zum Auktionshaus in einer beliebigen Hauptstadt und kauft 2|r |T133221:0|t[Thoriumbarren]
    .collect 12359,2,5801,1 --Thorium Bar x2
step
    #completewith next
    .zone Undercity >>Reist nach |cFFfa9602Unterstadt|r
step
    #loop
    .goto Undercity,67.43,46.15,0
    .goto Undercity,67.43,46.15,50,0
    .goto Undercity,71.23,51.64,50,0
    .goto Undercity,72.99,44.19,50,0
    .goto Undercity,70.91,36.25,50,0
    .goto Undercity,65.84,33.54,50,0
    .goto Undercity,60.90,36.56,50,0
    .goto Undercity,58.89,44.30,50,0
    .goto Undercity,60.98,51.69,50,0
    .goto Undercity,66.07,54.64,50,0
    .goto Undercity,70.81,51.49,50,0
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Künder Balthazad|r
    .acceptmultiple 5093,5094,5095 >>Der Ruf zu den Waffen: Die Pestländer! annehmen
    >>|cRXP_WARN_Diese Quest kann auch in|r |cFFfa9602Orgrimmar|r |cRXP_WARN_oder|r |cFFfa9602Donnerfels|r angenommen werden
    .unitscan Warcaller Gorlach --ORG
    .unitscan Harbinger Balthazadd --UC
    .unitscan Bluff Runner Windstrider --TB
    .isQuestAvailable 5096
    --VV TODO: Patrol paths
step
    #requires ThoriumBars
	#completewith ScarletDiversionsPU
	.subzone 152 >> Reist zum Bollwerk in |cFFfa9602Tirisfal|r
step
    #optional
    #requires ThoriumBars
    .goto Tirisfal Glades,83.15,68.92
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Derrington|r
    .turnin 5093 >>Gebt die Quest Der Ruf zu den Waffen: Die Pestländer! ab
    .accept 5096 >>Akzeptiert die Quest Scharlachrote Ablenkung
	.target High Executor Derrington
    .isOnQuest 5093
step
    #optional
    #requires ThoriumBars
    .goto Tirisfal Glades,83.15,68.92
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Derrington|r
    .accept 5096 >>Akzeptiert die Quest Scharlachrote Ablenkung
	.target High Executor Derrington
    .isQuestTurnedIn 5093
step
    #optional
    #requires ThoriumBars
    .goto Tirisfal Glades,83.15,68.92
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Derrington|r
    .turnin 5094 >>Gebt die Quest Der Ruf zu den Waffen: Die Pestländer! ab
    .accept 5096 >>Akzeptiert die Quest Scharlachrote Ablenkung
	.target High Executor Derrington
    .isOnQuest 5094
step
    #optional
    #requires ThoriumBars
    .goto Tirisfal Glades,83.15,68.92
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Derrington|r
    .accept 5096 >>Akzeptiert die Quest Scharlachrote Ablenkung
	.target High Executor Derrington
    .isQuestTurnedIn 5094
step
    #requires ThoriumBars
    .goto Tirisfal Glades,83.15,68.92
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Derrington|r
    .turnin 5095 >>Gebt die Quest Der Ruf zu den Waffen: Die Pestländer! ab
    .accept 5096 >>Akzeptiert die Quest Scharlachrote Ablenkung
	.target High Executor Derrington
    .isOnQuest 5095
step
	.goto Western Plaguelands,26.55,56.18
	>>Klickt den |cRXP_PICK_Kasten mit Anzündern|r beim Feuer
	.collect 12814,1,5095,1 --Flame in a Bottle (1)
    .isOnQuest 5095
step
    #label ScarletDiversionsPU
    #requires ThoriumBars
    .goto Tirisfal Glades,83.15,68.92
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Derrington|r
    .accept 5096 >>Akzeptiert die Quest Scharlachrote Ablenkung
	.target High Executor Derrington
    .isQuestTurnedIn 5095
step
    .goto Western Plaguelands,40.5,51.8
    .use 12807 >>Klickt das |cRXP_PICK_Befehlszelt|r, dann benutzt euer |T132484:0|t[Banner der Geißel]
	>>|cRXP_WARN_Diese Gegner sind relativ schwierig und können sich gegenseitig mitziehen – sei also vorsichtig.|r
    .complete 5096,1 --Destroy the command tent and plant the Scourge banner in the camp (1)
step
    .goto Tirisfal Glades,83.15,68.92
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Derrington|r
    .turnin 5096 >>Gebt die Quest Scharlachrote Ablenkung ab
    .accept 5098 >>Turm um Turm annehmen
	.target High Executor Derrington
step
    .goto Western Plaguelands,46.681,71.135,-1
    .goto Western Plaguelands,46.558,71.156,-1
    .use 12815 >> |cRXP_WARN_Benutzt die|r |T135432:0|t[Signalfackel] |cRXP_WARN_neben dem Eingang des Turms. Ihr könnt dies tun, ohne den Elite |cRXP_ENEMY_Skelettkriegsherr|r im Inneren zu pullen|r
    .complete 5098,4 --Tower Four marked
step
    .goto Western Plaguelands,44.217,63.319,-1
    .goto Western Plaguelands,44.247,63.131,-1
    .use 12815 >> |cRXP_WARN_Benutzt die|r |T135432:0|t[Signalfackel] |cRXP_WARN_neben dem Eingang des Turms. Ihr könnt dies tun, ohne den Elite |cRXP_ENEMY_Skelettkriegsherr|r im Inneren zu pullen|r
    .complete 5098,3 --Tower Three marked
step
    .goto Western Plaguelands,42.326,66.105,-1
    .goto Western Plaguelands,42.422,66.222,-1
    .use 12815 >> |cRXP_WARN_Benutzt die|r |T135432:0|t[Signalfackel] |cRXP_WARN_neben dem Eingang des Turms. Ihr könnt dies tun, ohne den Elite |cRXP_ENEMY_Skelettkriegsherr|r im Inneren zu pullen|r
    .complete 5098,2 --Tower Two marked
step
    .goto Western Plaguelands,40.116,71.561,-1
    .goto Western Plaguelands,40.038,71.713,-1
    .use 12815 >> |cRXP_WARN_Benutzt die|r |T135432:0|t[Signalfackel] |cRXP_WARN_neben dem Eingang des Turms. Ihr könnt dies tun, ohne den Elite |cRXP_ENEMY_Skelettkriegsherr|r im Inneren zu pullen|r
    .complete 5098,1 --Tower One marked
step
    .goto Tirisfal Glades,83.15,68.92
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Derrington|r
    .turnin 5098 >>Gebt Turm um Turm ab
    .accept 838 >>Scholomance annehmen
	.target High Executor Derrington
 step
    #completewith SkeletalFragments
    .isQuestTurnedIn 5098
    .destroy 12815 >> Zerstört die |T135432:0|t[Signalfackel]
step
 	#era/som
    .goto Tirisfal Glades,83.28,69.23
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dithers|r
    .turnin 838 >>Gebt die Quest Scholomance ab
    .accept 964 >>Akzeptiert die Quest Skelettfragmente
	.target Apothecary Dithers
step
    #label SkeletalFragments
    #loop
	.line Western Plaguelands,46.4,70.0,45.6,72.2,42.6,71.4,41.6,73.2,38.8,71.0,38.8,68.2,40.4,66.4,42.6,70.0,43.4,64.4,45.8,65.8,46.4,70.0
	.goto Western Plaguelands,46.40,70.00,60,0
	.goto Western Plaguelands,45.60,72.20,60,0
	.goto Western Plaguelands,42.60,71.40,60,0
	.goto Western Plaguelands,41.60,73.20,60,0
	.goto Western Plaguelands,38.80,71.00,60,0
	.goto Western Plaguelands,38.80,68.20,60,0
	.goto Western Plaguelands,40.40,66.40,60,0
	.goto Western Plaguelands,42.60,70.00,60,0
	.goto Western Plaguelands,43.40,64.40,60,0
	.goto Western Plaguelands,45.80,65.80,60,0
	.goto Western Plaguelands,46.40,70.00,60,0
    >>Tötet |cRXP_ENEMY_Skeletthenker|r und |cRXP_ENEMY_Skelettakolyth|r. Plündert sie für |cRXP_LOOT_Skelettfragmente|r
    .complete 964,1 -- Collect Skeletal Fragments (x15)
    .mob Skeletal Executioner
    .mob Skeletal Acolyte
step
    .goto Tirisfal Glades,83.28,69.23
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dithers|r
    .turnin 964 >>Gebt die Quest Skelettfragmente ab
    .accept 5514 >>Akzeptiert die Quest Sold reimt sich auf...
	.target Apothecary Dithers
step
    #completewith next
    .subzone 976 >>Reist nach Gadgetzan im |cFFfa9602Tanaris|r
step
    .goto Tanaris,51.46,28.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Krinkle Goodsteel|r
    >>|cRXP_WARN_Um die Quest abzugeben, müsst ihr 15 Gold zahlen|r
    .turnin 5514 >>Gebt die Quest Sold reimt sich auf... ab
    .accept 5802 >>Akzeptiert die Quest Feuerfeder geschmiedet
    .target Krinkle Goodsteel
step
    >>|cRXP_WARN_Falls ihr sie nicht früher gekauft habt, geht zum Auktionshaus in einer beliebigen Hauptstadt und kauft 2|r |T133221:0|t[Thoriumbarren]
    .collect 12359,2,5802,1 --Thorium Bar x2
step
    #completewith next
    .goto Silithus,48.69,36.67
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Runk|r
    .fly Un'Goro >>Fliegt in den Krater von Un'Goro
	.target Runk Windtamer
	.zoneskip Un'Goro Crater
step
    #completewith next
    .goto Un'Goro Crater,49.62,47.56,100 >>Reist zum Gipfel des Berges des Feuersäulengrats
step
    .goto Un'Goro Crater,49.28,47.04
    .use 14644 >>|cRXP_WARN_Benutzt die|r |T134457:0|t[Skelettschlüsselform] |cRXP_WARN_am Lavabecken um den|r Unvollendeter Skelettschlüssel|cRXP_LOOT_ herzustellen|r
    .complete 5802,1 --Unfinished Skeleton Key (1)
step
    #completewith next
	.subzone 152 >> Reist zum Bollwerk in |cFFfa9602Tirisfal|r
step
    .goto Tirisfal Glades,83.28,69.23
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dithers|r
    .turnin 5802 >>Gebt die Quest Feuerfeder geschmiedet ab
    .accept 5804 >>Akzeptiert die Quest Arajs Skarabäus
	.target Apothecary Dithers
step
    #completewith ArajTheSummoner
    .goto Western Plaguelands,45.60,69.28,100 >>Reist zur Mitte der Ruinen von Andorhal
step
    #softcore
    .goto Western Plaguelands,45.60,69.28
    >>Tötet |cRXP_ENEMY_Araj der Beschwörer|r. Plündert |cRXP_PICK_Araj's Phylakterium|r auf dem Boden für |cRXP_LOOT_Arajs Skarabäus|r
    >>|cRXP_ENEMY_Araj|r |cRXP_WARN_ist eine starker Elite. Tötet ihn in einer Gruppe von mindestens 3 Spielern|r
    .use 12650 >>|cRXP_WARN_Benutzt einen|r |T134961:0|t[Eingestellter Dämpfer] |cRXP_WARN_bei ihm, falls ihr einen habt|r
    .complete 5804,1 --Araj's Scarab (1x)
    .mob Araj the Summoner
    .itemcount 12650,1 --Attuned Dampener
step
    #softcore
    #label ArajTheSummoner
    .goto Western Plaguelands,45.60,69.28
    >>Tötet |cRXP_ENEMY_Araj der Beschwörer|r. Plündert |cRXP_PICK_Araj's Phylakterium|r auf dem Boden für |cRXP_LOOT_Arajs Skarabäus|r
    >>|cRXP_ENEMY_Araj|r |cRXP_WARN_ist eine starker Elite. Tötet ihn in einer Gruppe von mindestens 3 Spielern|r
    .complete 5804,1 --Araj's Scarab (1x)
    .mob Araj the Summoner
step
    #hardcore
    .goto Western Plaguelands,45.60,69.28
    >>Tötet |cRXP_ENEMY_Araj der Beschwörer|r. Plündert |cRXP_PICK_Araj's Phylakterium|r auf dem Boden für |cRXP_LOOT_Arajs Skarabäus|r
    >>|cRXP_ENEMY_Araj|r |cRXP_WARN_ist eine starke Elite und ist umgeben von vielen Mobs, tötet sie sorgfältig. Tötet ihn in einer Gruppe von mindestens 4 Spielern|r
    .use 12650 >>|cRXP_WARN_Benutzt einen|r |T134961:0|t[Eingestellter Dämpfer] |cRXP_WARN_bei ihm, falls ihr einen habt|r
    .complete 5804,1 --Araj's Scarab (1x)
    .mob Araj the Summoner
    .itemcount 12650,1 --Attuned Dampener
step
    #hardcore
    #label ArajTheSummoner
    .goto Western Plaguelands,45.60,69.28
    >>Tötet |cRXP_ENEMY_Araj der Beschwörer|r. Plündert |cRXP_PICK_Araj's Phylakterium|r auf dem Boden für |cRXP_LOOT_Arajs Skarabäus|r
    >>|cRXP_ENEMY_Araj|r |cRXP_WARN_ist eine starke Elite und ist umgeben von vielen Mobs, tötet sie sorgfältig. Tötet ihn in einer Gruppe von mindestens 4 Spielern|r
    .complete 5804,1 --Araj's Scarab (1x)
    .mob Araj the Summoner
step
    .goto Tirisfal Glades,83.28,69.23
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dithers|r
    .turnin 5804 >>Gebt die Quest Arajs Skarabäus ab
	.target Apothecary Dithers
step
    .goto Tirisfal Glades,83.28,69.23
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dithers|r
    .turnin 5511 >>Gebt die Quest Der Schlüssel zur Scholomance ab
	.target Apothecary Dithers

]])

RXPGuides.RegisterGuide([[
#classic
#tbc

#group RestedXP Endgame Guides
#subgroup Schlüssel
#name Schwarzfelstiefen Schlüssel


step
    #completewith next
    .subzone 254 >>Reist zum |cFFfa9602Der Schwarzfels|r
step
    #softcoreserver
    #softcore
    .goto 1415,48.624,64.186
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Franclorn Forgewright|r
    >>|cRXP_WARN_Ihr müsst ein|r |T132331:0|t[Geist] |cRXP_WARN_sein, um mit|r Franclorn Forgewright|cRXP_FRIENDLY_ zu sprechen|r
    >>|cRXP_WARN_Sterbt absichtlich in der Lava im Schwarzfels, idealerweise in der Nähe des Eingangs-Ort des Geschmolzenen Kerns|r
    .accept 3801 >> Akzeptiert die Quest Dunkeleisenerbe
    .turnin 3801 >> Gebt die Quest Dunkeleisenerbe ab
    .accept 3802 >> Akzeptiert die Quest Dunkeleisenerbe
    .target Franclorn Forgewright
step
    #hardcoreserver
    #completewith next
    .goto 1415,48.656,64.134
    .cast 417803 >>|cRXP_WARN_Klickt|r |cRXP_PICK_Kohlenpfanne der Glutsicht|r |cRXP_WARN_um den|r |T136215:0|t[Leuchtglutsicht] |cRXP_WARN_Schwächungszauber zu erhalten|r
step
    #hardcoreserver
    .goto 1415,48.624,64.186
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Franclorn Forgewright|r
    >>|cRXP_WARN_Ihr müsst den|r |T136215:0|t[Leuchtglutsicht] |cRXP_WARN_Schwächungszauber haben, um ihn zu sehen|r
    .accept 3801 >> Akzeptiert die Quest Dunkeleisenerbe
    .turnin 3801 >> Gebt die Quest Dunkeleisenerbe ab
    .accept 3802 >> Akzeptiert die Quest Dunkeleisenerbe
    .target Franclorn Forgewright
step
    #softcore
    #completewith next
    .goto Eastern Kingdoms,48.07,62.42
    .subzone 1584,2 >>Belebt euch an eurer Leiche wieder und betretet die Schwarzfelstiefen
    >>|cRXP_WARN_Stellt sicher, dass ihr eine Gruppe parat habt|r
step
    #hardcoreserver
    #completewith next
    .goto Eastern Kingdoms,48.07,62.42
    .subzone 1584,2 >>Betretet Schwarzfelstiefen
    >>|cRXP_WARN_Stellt sicher, dass ihr eine Gruppe parat habt|r
step
    >>Tötet |cRXP_ENEMY_Fineous Darkvire|r. Plündert ihn für |cRXP_LOOT_Ironfel|r
    >>|cRXP_WARN_Er patrouilliert im Steinbruch außerhalb von Lord Incendius' Kammer|r
    .complete 3802,1 -- Ironfel (1)
    .target Fineous Darkvire
    .isOnQuest 3802
step
    >>Lauf zurück zur Location über dem Ring des Gesetzes
    >>Zwickt |cRXP_PICK_Denkmal für Franclorn Forgewright|r
    .turnin 3802 >> Gebt die Quest Dunkeleisenerbe ab
    .isQuestComplete 3802

    ]])


RXPGuides.RegisterGuide([[
#classic
#tbc

#group RestedXP Endgame Guides
#subgroup Schlüssel
#name Düsterbruch Schlüssel

step
    #completewith next
    .zone Feralas >>Reist nach |cFFfa9602Feralas|r
    .subzoneskip 2557
step
    #completewith next
    .goto Kalimdor,43.84,67.41,20 >>Betretet den östlichen Eingang von Düsterbruch
    >>|cRXP_WARN_Stellt sicher, dass ihr eine Gruppe parat habt|r
step
    #completewith next
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Pusillin|r
    >>|cRXP_WARN_Das ist ein grüner |cRXP_FRIENDLY_Wichtel|r zu Beginn der Instanz. Er wird fliehen, nachdem ihr mit ihm gesprochen habt. Ihr müsst ihn mehrmals verfolgen und mit ihm sprechen, bis er in der Kammer "Die Verborgene Weite" feindselig wird|r
    .skipgossip
    .unitscan Pusillin
step
    >>Tötet |cRXP_ENEMY_Pusillin|r sobald er feindselig wird. Plündert ihr für |T134244:0|t[|cRXP_LOOT_Mondsichelschlüssel|r]
    .collect 18249,1 --Crescent Key
    .unitscan Pusillin

]])

RXPGuides.RegisterGuide([[
#classic
#tbc

#group RestedXP Endgame Guides
#name Naxxramas-Zugangsberechtigung
#subgroup Zutrittsvoraussetzungen

step
    >>|cRXP_BUY_Sammelt die folgenden Gegenstände|r:
    >>Fünf |T134135:0|t[|cRXP_FRIENDLY_Arkankristall|r]
    >>Zwei |T132880:0|t[|cRXP_PICK_Nexus Kristalle|r]
    >>Eins |T134122:0|t[|cRXP_FRIENDLY_Rechtschaffene Kugel|r]
    >>|cRXP_WARN_Kauft sie wenn möglich aus dem Auktionshaus|r
    >>|cRXP_WARN_Ihr braucht sie zum Abgeben der Quest, die euch für Naxxramas anpasst. Mit höheren Rufstufen bei der Argentumdämmerung kostet es weniger Materialien und Gold!|r
    .collect 12363,5 --Arcane Crystal (x5)
    .collect 20725,2 --Nexus Crystal (x2)
    .collect 12811,1 --Righteous Orb (x1)
    .reputation 529,revered,>0,1 --Below Revered AD
    .isQuestAvailable 9121 --The Dread Citadel - Naxxramas
step
    >>|cRXP_BUY_Sammelt die folgenden Gegenstände|r:
    >>Zwei |T134135:0|t[|cRXP_FRIENDLY_Arkankristalle|r]
    >>Einen |T132880:0|t[|cRXP_PICK_Nexuskristall|r]
    >>|cRXP_WARN_Kauft sie wenn möglich aus dem Auktionshaus|r
    >>|cRXP_WARN_Ihr braucht sie zum Abgeben der Quest, die euch für Naxxramas anpasst. Mit höheren Rufstufen bei der Argentumdämmerung kostet es weniger Materialien und Gold!|r
    .collect 12363,2 --Arcane Crystal (x2)
    .collect 20725,1 --Nexus Crystal (x1)
    .reputation 529,exalted,>0,1 --Below Exalted AD
    .reputation 529,revered,<0,1 --Revered AD
    .isQuestAvailable 9122 --The Dread Citadel - Naxxramas
step
    #completewith AttuneComplete
    .zone Eastern Plaguelands >>Reist in die |cFFfa9602Die Östlichen Pestländer|r
step
    #optional
    .reputation 529,honored >>Erlangt einen Wohlwollenden Ruf bei der Argentumdämmerung
    >>|cRXP_WARN_Farmt |cRXP_ENEMY_Untote|r-Mobs in Östliche Pestländer/Westliche Pestländer oder absolviert Dungeons mit eurer|r |T133440:0|t[Anstecknadel der Argentumdämmerung]|cRXP_WARN_ ausgerüstet, um |T133447:0|t[Geißelsteine] zu sammeln und abzugeben|r
step
    .goto Eastern Plaguelands,81.523,58.269
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Erzmagierin Angela Dosantos|r
    >>|cRXP_WARN_Euer Ruf muss Wohlwollend sein, um diese Quest anzunehmen|r
    >>|cRXP_WARN_Ihr braucht ebenfalls|r |cRXP_WARN_60 Gold|r |cRXP_WARN_zum Abgeben der Quest|r
    .accept 9121 >>Akzeptiert die Quest Die Zitadelle des Schreckens - Naxxramas
    .turnin 9121 >>Gebt die Quest Die Zitadelle des Schreckens - Naxxramas ab
    .target Archmage Angela Dosantos
    .reputation 529,revered,>0,1 --Below Revered AD
    .isQuestAvailable 9121 --The Dread Citadel - Naxxramas
step
    .goto Eastern Plaguelands,81.523,58.269
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Erzmagierin Angela Dosantos|r
    >>|cRXP_WARN_Euer Ruf muss Respektvoll sein, um diese Quest zu akzeptieren|r
    >>|cRXP_WARN_Ihr braucht ebenfalls|r |cRXP_WARN_30 Gold|r |cRXP_WARN_zum Abgeben der Quest|r
    .accept 9122 >>Akzeptiert die Quest Die Zitadelle des Schreckens - Naxxramas
    .turnin 9122 >>Gebt die Quest Die Zitadelle des Schreckens - Naxxramas ab
    .target Archmage Angela Dosantos
    .reputation 529,exalted,>0,1 --Below Exalted AD
    .reputation 529,revered,<0,1 --Revered AD
    .isQuestAvailable 9122 --The Dread Citadel - Naxxramas
step
    #label AttuneComplete
    .goto Eastern Plaguelands,81.523,58.269
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Erzmagierin Angela Dosantos|r
    >>|cRXP_WARN_Euer Ruf muss Ehrfürchtig sein, um diese Quest anzunehmen|r
    .accept 9123 >>Akzeptiert die Quest Die Zitadelle des Schreckens - Naxxramas
    .turnin 9123 >>Gebt die Quest Die Zitadelle des Schreckens - Naxxramas ab
    .target Archmage Angela Dosantos
    .reputation 529,exalted,<0,1 --Exalted AD
    .isQuestAvailable 9123 --The Dread Citadel - Naxxramas

]])


RXPGuides.RegisterGuide([[
#classic
#tbc

#group RestedXP Endgame Guides
#name Demon Fall Canyon Zugangsberechtigung
#subgroup Zutrittsvoraussetzungen
<<sod

step
    #completewith next
    .subzone 2479 >>Reist zum Smaragdgrünen Heiligtum im |cFFfa9602Teufelswald|r
    .itemcount 228172,<1 --Only shows if you don't have the trinket
step
    .goto Felwood,51.4,82.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit dem |cRXP_FRIENDLY_Abgesandten des Schattenzahns|r
    .accept 84384 >> Akzeptiert die Quest Dämonische Täuschungen
    .target Shadowtooth Emissary
    .itemcount 228172,<1 --Only shows if you don't have the trinket
step
    #completewith next
    .zone Winterspring >> Reist nach |cFFfa9602Winterquell|r
    .itemcount 228172,<1 --Only shows if you don't have the trinket
step
	.line Winterspring,64.0,22.6,65.6,23.2,67.6,22.6,65.6,19.6,63.6,16.2,65.6,19.6,64.0,20.8,64.0,22.6
	.goto Winterspring,64.00,22.60,25,0
	.goto Winterspring,65.60,23.20,25,0
	.goto Winterspring,67.60,22.60,25,0
	.goto Winterspring,65.60,19.60,25,0
	.goto Winterspring,63.60,16.20,25,0
	.goto Winterspring,65.60,19.60,25,0
	.goto Winterspring,64.00,20.80,25,0
	.goto Winterspring,64.00,22.60,25,0
    >>Tötet |cRXP_ENEMY_Berserkereulenbestie|r. Plündert sie für |T237413:0|t[|cRXP_LOOT_Zirbeldrüse der Eulenbestie|r]
    .complete 84384,1
    .mob Berserk Owlbeast
    .itemcount 228172,<1 --Only shows if you don't have the trinket
step
    #completewith next
    .subzone 2479 >>Reist zum Smaragdgrünen Heiligtum im |cFFfa9602Teufelswald|r
    .itemcount 228172,<1 --Only shows if you don't have the trinket
step
    .goto Felwood,51.4,82.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit dem |cRXP_FRIENDLY_Abgesandten des Schattenzahns|r
    .turnin 84384 >> Gebt die Quest Dämonische Täuschungen ab
    .target Shadowtooth Emissary
    .itemcount 228172,<1 --Only shows if you don't have the trinket

]])
