if GetLocale() ~= "deDE" then return end
local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end

RXPGuides.RegisterGuide([[
#classic
#tbc
<< Horde Mage
#name 12-17 Das Brachland AoE
#version 1
#group RestedXP Horde Magier AoE
#defaultfor Horde Mage
#next 17-21 Steinkrallengebirge/Brachland AoE

step << Mage
	#era/som
    #completewith next
	+Hinweis, dass ihr den AoE-Guide ausgewählt habt. AoE ist normalerweise viel schwieriger als Einzelziel-Magier, aber VIEL schneller
step << Mage
	#som
	#phase 3-6
    #completewith next
	+Hinweis, dass ihr den AoE-Guide ausgewählt habt. AoE ist normalerweise viel schwieriger als Einzelziel-Magier, und ist auch langsamer aufgrund der 100% Quest-XP-Änderungen in SoM
step
    .goto The Barrens,52.2,31.8
.target Tonga Runetotem
>>Sprecht mit |cRXP_FRIENDLY_Tonga Runetotem|r
    .accept 870 >>Akzeptiert die Quest Die Vergessenen Teiche
step
    .goto The Barrens,52.2,31.0
>>Sprecht mit |cRXP_FRIENDLY_Sergra Darkthorn|r
    .turnin 842 >>Gebt die Quest Wegekreuz-Wehrpflicht ab
.target Sergra Darkthorn
    .accept 844 >>Akzeptiert die Quest Ebenenschreiter-Bedrohung
step << Troll Mage
    .goto The Barrens,52.5,29.8
.target Zargh
>>Sprecht mit |cRXP_FRIENDLY_Zargh|r
    .accept 6365 >>Akzeptiert die Quest Fleisch für Orgrimmar
step
    .goto The Barrens,51.9,30.3
.target Gazrog
>>Sprecht mit |cRXP_FRIENDLY_Gazrog|r
    .accept 869 >>Akzeptiert die Quest Raptordiebe
step
    .goto The Barrens,51.99,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gastwirt Boorand|r
    .home >> Setzt euren Ruhestein im Wegekreuz
    .target Innkeeper Boorand Plainswind
step
    .goto The Barrens,51.5,30.8
.target Thork
>>Sprecht mit |cRXP_FRIENDLY_Thork|r
    .accept 871 >>Akzeptiert die Quest Vereitelung der Angriffe
    .accept 5041 >>Akzeptiert die Quest Vorräte für Crossroads
step
    .goto The Barrens,51.5,30.4
    .fp The Crossroads >> Erlernt die Flugroute beim Wegekreuz
step << Troll Mage
    >>Geht NICHT nach Orgrimmar
    .goto The Barrens,51.5,30.3
>>Sprecht mit |cRXP_FRIENDLY_Devrak|r
    .turnin 6365 >>Gebt die Quest Fleisch für Orgrimmar ab
.target Devrak
    .accept 6384 >>Akzeptiert die Quest Flug nach Orgrimmar
step
    .goto The Barrens,51.5,30.1
.target Apothecary Helbrim
>>Sprecht mit |cRXP_FRIENDLY_Apotheker Helbrim|r
    .accept 848 >>Akzeptiert die Quest Pilzsporen
    .accept 1492 >>Werftmeister Flunkerblick annehmen
step
    #sticky
    #completewith next
    >>Überprüft diesen Ort auf Chens leeres Fässchen. Plündert es und fangt die Quest an, sonst bekommt ihr es später
    .goto The Barrens,55.7,27.3
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >> Akzeptiert die Quest Chens leeres Fässchen
step
    .goto The Barrens,55.6,26.6
    >>Tötet Stacheleber in dem Bereich
    .complete 871,2 --Razormane Thornweaver (8)
    .complete 871,1 --Razormane Water Seeker (8)
    .complete 871,3 --Razormane Hunter (3)
step << !Undead
    #sticky
    #completewith next
    >>Falls der Fehlerhafte Kraftstein in eurer Tasche weniger als 10 Minuten übrig hat, werft ihn weg, geht zurück und plündert den violetten Stein neben Ak'zeloth erneut
    .turnin 926 >>Gebt die Quest Fehlerhafter Kraftstein ab
step << !Undead
    #sticky
    #completewith BeakCave
    >>Tötet einige Ebenenschreiter unterwegs, wenn ihr Zeit bei Fehlerhafter Kraftstein habt. Plündert sie für Schnäbel
    .complete 844,1 --Plainstrider Beak (7)
step << !Undead
    .goto The Barrens,50.4,22.0,20 >>Lauft hier den Berg hinauf
step << !Undead
    #label BeakCave
    .goto The Barrens,47.6,19.2,20 >>Geh zu der Höhle, die von Orcs der Brennenden Klinge umgeben ist
step << !Undead
    >>Rechtsklickt auf den Altar
    .goto The Barrens,48.0,19.1
    .collect 4986,1,924 --Collect Flawed Power Stone
    .complete 924,1 --Destroy the Demon Seed (1)
step
    #sticky
    #completewith next
    >>Tötet Raptors die ihr seht. Sammelt sie für Raptorköpfe - ihr bekommt später mehr
    .complete 869,1 --Raptor Head (12)
step
    >>Tötet Ebenenschreiter. Plündert sie für Schnäbel
    .goto The Barrens,50.8,32.1
    .complete 844,1 --Plainstrider Beak (7)
step
    >>Oben auf dem Turm
    .goto The Barrens,51.5,30.9
>>Sprecht mit |cRXP_FRIENDLY_Thork|r
    .turnin 871 >>Gebt die Quest Vereitelung der Angriffe ab
.target Thork
    .accept 872 >>Akzeptiert die Quest Das Ende der Unterbrechungen
.target Darsok Swiftdagger
>>Sprecht mit |cRXP_FRIENDLY_Darsok Swiftdagger|r
    .accept 867 >>Akzeptiert die Quest Räuberische Harpyien
step
    .goto The Barrens,52.2,31.0
>>Sprecht mit |cRXP_FRIENDLY_Sergra Darkthorn|r
    .turnin 844 >>Gebt die Quest Ebenenschreiter-Bedrohung ab
.target Sergra Darkthorn
    .accept 845 >>Akzeptiert die Quest Die Zhevras
step
    #sticky
    #completewith Crates
    >>Tötet Grimmhauer mobs während ihr die Kisten sammelt und Kreenig tötet
    .complete 872,1 --Razormane Geomancer (8)
    .complete 872,2 --Razormane Defender (8)
step
    #sticky
    #completewith next
    >>Sammelt die braunen Kisten in der Gegend
    .complete 5041,1 --Crossroads' Supply Crates (1)
step
    #label Kreenig
    >>Tötet Kreenig Grantelschnauze. Plündert ihn für seine Hauer
    .goto The Barrens,58.6,27.1
    .complete 872,3 --Kreenig Snarlsnout's Tusk (1)
step
    #label Crates
	.goto The Barrens,58.5,27.3,40,0
    .goto The Barrens,58.4,27.0,40,0
    .goto The Barrens,58.5,25.8,40,0
    .goto The Barrens,59.4,24.8,40,0
    >>Sammelt die braunen Kisten in der Gegend
    .complete 5041,1 --Crossroads' Supply Crates (1)
step
    .goto The Barrens,56.7,25.3
    >>Beendet das Töten der Grimmhauer
    .complete 872,1 --Razormane Geomancer (8)
    .complete 872,2 --Razormane Defender (8)
step << !Undead
    #sticky
    #completewith next
    >>Tötet alle Zhevras die ihr seht. Sammelt sie für Hufe
    .complete 845,1 --Zhevra Hooves (4)
step << !Undead
    .goto The Barrens,62.3,20.1
.target Ak'Zeloth
>>Sprecht mit |cRXP_FRIENDLY_Ak'Zeloth|r
    .turnin 924 >>Gebt die Quest Die Dämonensaat ab
step
    >>Tötet alle Zhevras die ihr seht. Sammelt sie für Hufe. Stellt sicher, dass ihr 4 habt bevor ihr Ratschet erreicht
    .goto The Barrens,58.03,19.76,150,0 << Undead
    .goto The Barrens,63.9,35.8
    .complete 845,1 --Zhevra Hooves (4)
step
    >>Oberstes Stockwerk des Gebäudes
    .goto The Barrens,62.7,36.3
.target Gazlowe
>>Sprecht mit |cRXP_FRIENDLY_Gazlowe|r
    .accept 887 >>Akzeptiert die Quest Südmeerfreibeuter
step
    .goto The Barrens,63.1,37.1
    .fp Ratchet >> Erlernt die Flugroute nach Ratschet
step
    .goto The Barrens,63.0,37.2
.target Sputtervalve
>>Sprecht mit |cRXP_FRIENDLY_Sputtervalve|r
    .accept 894 >>Akzeptiert die Quest Samophlang
step
    >>Klickt auf den Gesucht:Steckbrief. Ihr könnt hier auch Gegenstände auf die Bank legen, wenn ihr wollt
    .goto The Barrens,62.6,37.5
    .accept 895 >>Akzeptiert die Quest GESUCHT: Baron Küstenschipper
step
    .goto The Barrens,62.4,37.7
.target Mebok Mizzyrix
>>Sprecht mit |cRXP_FRIENDLY_Mebok Mizzyrix|r
    .accept 865 >>Akzeptiert die Quest Raptorhörner
step
    .goto The Barrens,62.3,38.4
>>Sprecht mit |cRXP_FRIENDLY_Braumeister Drohn|r
    .turnin 819 >>Gebt die Quest Chens leeres Fässchen ab
.target Brewmaster Drohn
    .accept 821 >>Akzeptiert die Quest Chens leeres Fässchen
step
    #sticky
    #label Southsea
    >>Tötet Südmeerfreibeuter mobs in der Gegend
    .complete 887,1 --Southsea Brigand (12)
    .complete 887,2 --Southsea Cannoneer (6)
step
    .goto The Barrens,64.2,47.1,40,0
    .goto The Barrens,63.6,49.1,40,0
    .goto The Barrens,62.6,49.7,40,0
    .goto The Barrens,64.2,47.1,40,0
    .goto The Barrens,63.6,49.1,40,0
    .goto The Barrens,62.6,49.7,40,0
    .goto The Barrens,64.2,47.1,40,0
    .goto The Barrens,63.6,49.1,40,0
    .goto The Barrens,62.6,49.7,40,0
    >>Tötet Baron Küstenschipper. Plündert ihn für seinen Kopf
    .complete 895,1 --Baron Longshore's Head (1)
step
    #requires Southsea
    .goto The Barrens,62.7,36.3
>>Sprecht mit |cRXP_FRIENDLY_Gazlowe|r
    .turnin 887 >>Gebt die Quest Südmeerfreibeuter ab
.target Gazlowe
    .accept 890 >>Akzeptiert die Quest Die verloren gegangene Lieferung
    .turnin 895 >>Gebt die Quest GESUCHT: Baron Küstenschipper ab
step
    .goto The Barrens,63.3,38.4
>>Sprecht mit |cRXP_FRIENDLY_Werftmeister Dizzywig|r
    .turnin 1492 >>Gebt die Quest Werftmeister Dizzywig ab
    .turnin 890 >>Gebt die Quest Die verloren gegangene Lieferung ab
.target Wharfmaster Dizzywig
    .accept 892 >>Akzeptiert die Quest Die verloren gegangene Lieferung
    .accept 896 >>Akzeptiert die Quest Des Minenarbeiters Vermögen
step
    .goto The Barrens,62.7,36.3
>>Sprecht mit |cRXP_FRIENDLY_Gazlowe|r
    .turnin 892 >>Gebt die Quest Die verloren gegangene Lieferung ab
.target Gazlowe
    .accept 888 >>Akzeptiert die Quest Gestohlene Beute
step
    .goto The Barrens,63.08,37.16
    .fly Crossroads >> Fliege nach Das Wegekreuz
step
    .goto The Barrens,51.5,30.8
.target Thork
>>Sprecht mit |cRXP_FRIENDLY_Thork|r
    .turnin 5041 >>Gebt die Quest Vorräte für Crossroads ab
    .turnin 872 >>Gebt die Quest Das Ende der Unterbrechungen ab
step
    .goto The Barrens,52.2,31.0
>>Sprecht mit |cRXP_FRIENDLY_Sergra Darkthorn|r
    .turnin 845 >>Gebt die Quest Die Zhevras ab
.target Sergra Darkthorn
    .accept 903 >>Akzeptiert die Quest Streuner des Brachlandes
step
    #sticky
    #completewith next
    >>Tötet Ebenenschreiter. Plündert sie für Nieren
    .complete 821,2 --Plainstrider Kidney (5)
step
    #label RegtharDeathgate1
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Regthar|r
    .accept 850 >>Akzeptiert die Quest Anführer der Kolkar
    .accept 855 >> Akzeptiert die Quest Zentaurenarmschienen
    .target Regthar Deathgate
step
    #completewith KodobaneTurnin
    >>Tötet |cRXP_ENEMY_Zänker der Kolkar|r und |cRXP_ENEMY_Sturmruferin der Kolkar|r. Plündert sie für ihre |cRXP_LOOT_armschienen|r
    >>|cRXP_WARN_Diese Quest muss jetzt nicht abgeschlossen werden|r
    .complete 855,1 --Centaur Bracers (15)
    .mob Kolkar Wrangler
    .mob Kolkar Stormer
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
    #sticky
    #completewith Claws
    >>Tötet Raptors die ihr seht. Sammelt sie für Raptorköpfe - ihr bekommt später mehr
    .complete 869,1 --Raptor Head (12)
step
    #sticky
    #completewith next
    .goto The Barrens,41.4,24.5,40,0
    .goto The Barrens,40.4,20.0,40,0
    .goto The Barrens,41.4,24.5,40,0
    .goto The Barrens,40.4,20.0,40,0
	>>Konzentriert euch jetzt nicht darauf alle zu bekommen
    .complete 821,1 --Savannah Lion Tusk (5)
step
    #label Claws
    >>Tötet Streuner. Plündert sie für ihre Klauen und Hauer
    .goto The Barrens,41.4,24.5
    .complete 903,1 --Prowler Claws (7)
step
    .goto The Barrens,40.2,18.9,40,0
    .goto The Barrens,40.7,14.6,40,0
    .goto The Barrens,42.6,15.1,40,0
    .goto The Barrens,40.2,18.9,40,0
    .goto The Barrens,40.7,14.6,40,0
    .goto The Barrens,42.6,15.1,40,0
    >>Tötet Harpien. Plündert sie für ihre Krallen
    .complete 867,1 --Witchwing Talon (8)
step
    #completewith next
    .goto The Barrens,43.8,12.2
    >> Falls ihr den Schweren Stachelkolben noch nicht habt, versucht, ihn von Vrang Wildblut zu kaufen << Druid/Warrior
    .vendor >> Verkauft bei dem Händler, falls nötig
step
    #sticky
    #completewith next
    >>Tötet Ebenenschreiter. Plündert sie für Nieren
    .complete 821,2 --Plainstrider Kidney (5)
step
    .goto The Barrens,54.3,12.3,40,0
    .goto The Barrens,54.6,16.7,40,0
    .goto The Barrens,42.6,15.1,40,0
    .goto The Barrens,54.3,12.3,40,0
    .goto The Barrens,54.6,16.7,40,0
    .goto The Barrens,42.6,15.1,40,0
    >>Tötet Raptoren. Plündert sie für ihre Köpfe
    .complete 869,1 --Raptor Head (12)
step
    >>Klickt auf die Steuerkonsole
    .goto The Barrens,52.4,11.6
    .turnin 894 >>Gebt die Quest Samophlang ab
    .accept 900 >>Akzeptiert die Quest Samophlang
step
    >>Klickt das Ventil
    .goto The Barrens,52.4,11.4
    .complete 900,2 --Shut off Fuel Control Valve (1)
step
    >>Klickt das Ventil. Mobs werden auftauchen, wenn ihr eines davon anklickt
    .goto The Barrens,52.3,11.4
    .complete 900,3 --Shut off Regulator Valve (1)
    .goto The Barrens,52.3,11.6
    .complete 900,1 --Shut off Main Control Valve (1)
step
    >>Klickt auf die Steuerkonsole
    .goto The Barrens,52.4,11.6
    .turnin 900 >>Gebt die Quest Samophlang ab
    .accept 901 >>Akzeptiert die Quest Samophlang
step
    >>Tötet Tüftler Sniggles im Gebäude. Plündert ihn für den Schlüssel zur Steuerkonsole
    .goto The Barrens,52.8,10.4
    .complete 901,1 --Console Key (1)
step
    .goto The Barrens,52.4,11.6
    .turnin 901 >>Gebt die Quest Samophlang ab
    .accept 902 >>Akzeptiert die Quest Samophlang
step
    >>Akzeptiert die Quest Zündung vom Schredder
    .goto The Barrens,56.5,7.5
.target Wizzlecrank's Shredder
>>Sprecht mit |cRXP_FRIENDLY_Wizzlecranks Schredder|r
    .accept 858 >>Akzeptiert die Quest Zündung
step
    >>Ihr solltet bis Stufe 16 farmen, da die nächsten 3 Quests ziemlich schwer sind.
	.xp 16 >> Farmt bis Stufe 16
step
    >>Tötet Vorsteher Lugwizzle (er patrouilliert überall im Turm). Plündert ihn für den Zündschlüssel
	.goto The Barrens,56.3,8.6
    .complete 858,1 --Ignition Key (1)
step
    >>Das wird eine Eskorte starten
    .goto The Barrens,56.5,7.5
>>Sprecht mit |cRXP_FRIENDLY_Wizzlecranks Schredder|r
    .turnin 858 >>Gebt die Quest Zündung ab
.target Wizzlecrank's Shredder
    .accept 863 >>Akzeptiert die Quest Die Flucht
step
    #label Slugs
    >>2 Mobs werden irgendwann spawnen. Tötet sie, dann wartet auf sein Rollenspiel-Event am Ende
    .goto The Barrens,55.3,7.8
    .complete 863,1 --Escort Wizzlecrank out of the Venture Co. drill site (1)
step
    >>Farmt die Mobs in der Gegend. Plündert sie, bis ein Katzenaugensmaragd droppt
    .goto The Barrens,61.5,4.3
    .complete 896,1 -- Cats Eye Emerald (1)
step
    #completewith next
	.goto Orgrimmar,11.5,67.0,40 >>Lauft zum westlichen Eingang von Orgrimmar
step
    .goto Orgrimmar,38.79,85.68
    .trainer >> Trainiere deine Klassenfähigkeiten
step << Troll Mage
    .goto Orgrimmar,54.2,68.6
>>Sprecht mit |cRXP_FRIENDLY_Gastwirtin Gryshka|r
    .turnin 6384 >>Gebt die Quest Flug nach Orgrimmar ab
.target Innkeeper Gryshka
    .accept 6385 >>Akzeptiert die Quest Doras der Windreitermeister
step
    >>Lauft zum Flugmeister. Fliegt NICHT irgendwo hin
    .goto Orgrimmar,45.120,63.889
    .fp Orgrimmar >> Erlernt die Orgrimmar-Flugroute << Undead
>>Sprecht mit |cRXP_FRIENDLY_Doras|r
    .turnin 6385 >>Gebt die Quest Doras der Windreitermeister ab << Troll Mage
.target Doras
    .accept 6386 >>Akzeptiert die Quest Kehrt nach Crossroads zurück << Troll Mage
step
    >>Lauft zur Feste Grommash
    .goto Orgrimmar,39.1,38.1
.target Zor Lonetree
>>Sprecht mit |cRXP_FRIENDLY_Zor Lonetree|r
    .accept 1061 >>Akzeptiert die Quest Die Geister des Steinkrallengebirges
step
    #completewith next
    .hs >>Ruhestein nach Das Wegekreuz
step << Troll Mage
    .goto The Barrens,52.6,29.9
.target Zargh
>>Sprecht mit |cRXP_FRIENDLY_Zargh|r
    .turnin 6386 >>Gebt die Quest Kehrt nach Crossroads zurück ab
step
    .goto The Barrens,51.9,30.3
>>Sprecht mit |cRXP_FRIENDLY_Gazrog|r
    .turnin 869 >>Gebt die Quest Raptordiebe ab
.target Gazrog
    .accept 3281 >>Akzeptiert die Quest Gestohlenes Silber
step
    .goto The Barrens,52.3,31.0
>>Sprecht mit |cRXP_FRIENDLY_Sergra Darkthorn|r
    .turnin 903 >>Gebt die Quest Streuner des Brachlandes ab
.target Sergra Darkthorn
    .accept 881 >>Akzeptiert die Quest Echeyakee
step
    >>Benutzt das Horn von Echeyakee in eurer Tasche, um Echeyakee zu beschwören. Tötet ihn und plündert ihn nach seinen Balg
    .goto The Barrens,55.5,17.3
    .complete 881,1 --Echeyakee's Hide (1)
step
    .goto The Barrens,52.2,31.0
>>Sprecht mit |cRXP_FRIENDLY_Sergra Darkthorn|r
    .turnin 881 >>Gebt die Quest Echeyakee ab
.target Sergra Darkthorn
    .accept 905 >>Akzeptiert die Quest Die wütenden Sensenklauen
step
    .goto The Barrens,52.20,31.90
>>Sprecht mit |cRXP_FRIENDLY_Tonga Runetotem|r
    .turnin 870 >> Gebt die Quest Die Vergessenen Teiche ab
.target Tonga Runetotem
    .accept 877 >> Akzeptiert die Quest Die Brackige Oase
step
    .goto The Barrens,52.00,31.60
.target Mankrik
>>Sprecht mit |cRXP_FRIENDLY_Mankrik|r
    .accept 899 >> Akzeptiert die Quest Von Hass zerfressen
    .accept 4921 >> Akzeptiert die Quest In der Schlacht vermisst
step
    >>Oben auf dem Turm
    .goto The Barrens,51.6,30.9
>>Sprecht mit |cRXP_FRIENDLY_Darsok Swiftdagger|r
    .turnin 867 >>Gebt die Quest Räuberische Harpyien ab
.target Darsok Swiftdagger
    .accept 875 >>Akzeptiert die Quest Offiziere der Harpyien
step
    .goto The Barrens,51.50,30.20
.target Apothecary Helbrim
>>Sprecht mit |cRXP_FRIENDLY_Apotheker Helbrim|r
    .turnin 848 >> Gebt die Quest Pilzsporen ab
step
    .goto The Barrens,51.5,30.3
    .fly Ratchet >>Fliege nach Ratschet
step
    .goto The Barrens,63.0,37.2
>>Sprecht mit |cRXP_FRIENDLY_Sputtervalve|r
    .turnin 902 >>Gebt die Quest Samophlang ab
    .turnin 863 >> Gebt die Quest Die Flucht ab
.target Sputtervalve
    .accept 1483 >> Akzeptiert die Quest Ziz Fizziks
step
    .goto The Barrens,63.30,38.40
.target Wharfmaster Dizzywig
>>Sprecht mit |cRXP_FRIENDLY_Werftmeister Dizzywig|r
    .turnin 896 >> Gebt die Quest Des Minenarbeiters Vermögen ab
step
    .goto The Barrens,62.40,37.70
.target Mebok Mizzyrix
>>Sprecht mit |cRXP_FRIENDLY_Mebok Mizzyrix|r
    .accept 1069 >> Akzeptiert die Quest Eier der Kluftmoosspinnen
step
    >>Plündert die Kiste
    .goto The Barrens,63.6,49.2
    .complete 888,2 --Telescopic Lens (1)
step
    >>Plündert die Kiste
    .goto The Barrens,62.6,49.6
step
    #sticky
    #completewith Nest
    >>Tötet alle Raptoren, die ihr seht. Plündert sie für ihre Hörner und Federn. Seid vorsichtig, da sie hauen werden
    .complete 865,1 --Intact Raptor Horn (5)
step
    >>Sammelt Gestohlenes Silber aus der Truhe
    >>Bewahrt alle Sonnenschuppenfedern , die ihr bekommt, für später auf
    .goto The Barrens,57.4,52.4,90,0
    .goto The Barrens,58.0,53.9
    .complete 3281,1 --Stolen Silver (1)
step
    #completewith Verog
    >>Sammelt |cRXP_LOOT_Potenter Pilz|r um Die Brackige Oase herum
    .complete 848,1 --Collect Fungal Spores (x4)
step
    >>Klickt auf den Blubbernden Felsspalt unter Wasser
    .goto The Barrens,55.6,42.7
    .complete 877,1 --Test the Dried Seeds (1)
step
    #sticky
	#completewith next
    >>Tötet Zentaueren. Plündert sie für ihre armschienen
    .complete 855,1 --Centaur Bracers (15)
step
    #label Verog
    >> Farmt alle Zentauren um den See, bis Verog spawnt (ihr seht eine Nachricht im Chat, wenn er spawnt)
    .goto The Barrens,52.95,41.77
    .complete 851,1 --Verog's Head (1)
step
#loop
	.line The Barrens,55.72,42.14,55.49,41.75,55.09,41.58,55.03,42.24,55.27,43.17,55.78,43.47,56.15,43.28,56.08,42.58,55.72,42.14
	.goto The Barrens,55.72,42.14,25,0
	.goto The Barrens,55.49,41.75,25,0
	.goto The Barrens,55.09,41.58,25,0
	.goto The Barrens,55.03,42.24,25,0
	.goto The Barrens,55.27,43.17,25,0
	.goto The Barrens,55.78,43.47,25,0
	.goto The Barrens,56.15,43.28,25,0
	.goto The Barrens,56.08,42.58,25,0
	.goto The Barrens,55.72,42.14,25,0
    >>Sammelt |cRXP_LOOT_Potenter Pilz|r um Die Brackige Oase herum
    .complete 848,1 --Collect Fungal Spores (x4)
step
    >>Klickt das Ei an. Ihr braucht die Sonnenschuppenfedern von den Raptoren
    .goto The Barrens,52.6,46.2
    .complete 905,1 --Visit Blue Raptor Nest (1)
step
    >>Klickt das Ei an. Ihr braucht die Sonnenschuppenfedern von den Raptoren
    .goto The Barrens,52.5,46.6
    .complete 905,3 --Visit Red Raptor Nest (1)
step
    #label Nest
    >>Klickt das Ei an. Ihr braucht die Sonnenschuppenfedern von den Raptoren
    .goto The Barrens,52.0,46.5
    .complete 905,2 --Visit Yellow Raptor Nest (1)
step
    .goto The Barrens,57.3,53.7,40,0
    .goto The Barrens,52.0,46.5,40,0
    .goto The Barrens,57.3,53.7,40,0
    .goto The Barrens,52.0,46.5,40,0
    .goto The Barrens,57.3,53.7,40,0
    .goto The Barrens,52.0,46.5,40,0
    .goto The Barrens,57.3,53.7,40,0
    .goto The Barrens,52.0,46.5,40,0
    >>Beenden das töten der Raptoren. Plündert sie für ihre Hörner
    .complete 865,1 --Intact Raptor Horn (5)
step
    >>Sprecht mit Mankriks Frau
    .goto The Barrens,49.3,50.4
    .complete 4921,1 --Find Mankrik's Wife (1)
step
    .goto The Barrens,45.6,59.0
    .home >>Setzt euren Ruhestein ins Camp Taurajo
step
    .goto The Barrens,44.5,59.2
.target Mangletooth
>>Sprecht mit |cRXP_FRIENDLY_Quetschzahn|r
    .accept 878 >>Akzeptiert die Quest Stämme im Krieg
step
    .goto The Barrens,44.5,59.2
    .fp Camp Taurajo >> Erlernt die Camp Taurajo-Flugroute
    .fly Crossroads >>Fliege nach Das Wegekreuz
step
    .goto The Barrens,51.9,30.3
.target Gazrog
>>Sprecht mit |cRXP_FRIENDLY_Gazrog|r
    .turnin 3281 >>Gebt die Quest Gestohlenes Silber ab
step
    .goto The Barrens,52.2,31.0
>>Sprecht mit |cRXP_FRIENDLY_Sergra Darkthorn|r
    .turnin 905 >>Gebt die Quest Die wütenden Sensenklauen ab
.target Sergra Darkthorn
    .accept 3261 >>Akzeptiert die Quest Jorn Skyseer
step
    .goto The Barrens,52.2,31.9
>>Sprecht mit |cRXP_FRIENDLY_Tonga Runetotem|r
    .turnin 877 >>Gebt die Quest Die Brackige Oase ab
.target Tonga Runetotem
    .accept 880 >>Akzeptiert die Quest Veränderte Wesen
step
    .goto The Barrens,52.0,31.6
.target Mankrik
>>Sprecht mit |cRXP_FRIENDLY_Mankrik|r
    .turnin 4921 >>Gebt die Quest In der Schlacht vermisst ab
step
    #sticky
	#completewith next
    >>Tötet Ebenenschreiter. Plündert sie für Nieren
    .complete 821,2 --Plainstrider Kidney (5)
step
    .goto The Barrens,45.39,28.43
>>Sprecht mit |cRXP_FRIENDLY_Regthar Deathgate|r
    .turnin 851 >>Gebt die Quest Verog der Derwisch ab
.target Regthar Deathgate
    .accept 852 >>Akzeptiert die Quest Hezrul Blutmal
step
    .goto The Barrens,45.39,28.43
.target Regthar Deathgate
>>Sprecht mit |cRXP_FRIENDLY_Regthar Deathgate|r
    .turnin 855 >> Gebt die Quest Zentaurenarmschienen ab
    .isQuestComplete 855
step
    .goto The Barrens,45.39,28.43
>>Sprecht mit |cRXP_FRIENDLY_Regthar Deathgate|r
    .turnin 851 >>Gebt die Quest Verog der Derwisch ab
.target Regthar Deathgate
    .accept 852 >>Akzeptiert die Quest Hezrul Blutmal
step
    #sticky
	#label CeBracers
    >>Tötet Zentaueren. Plündert sie für ihre armschienen
    .complete 855,1 --Centaur Bracers (15)
step
    .goto The Barrens,45.87,40.80
    >> Hezrul patrouilliert um den großen See bei den Höhlen des Wegklagens herum
    .complete 852,1 --Hezrul's Head (1)
step
	#requires CeBracers
	.goto The Barrens,45.37,28.43
.target Regthar Deathgate
>>Sprecht mit |cRXP_FRIENDLY_Regthar Deathgate|r
    .turnin 852 >>Gebt die Quest Hezrul Blutmal ab
    .turnin 855 >> Gebt die Quest Zentaurenarmschienen ab
step
    .goto The Barrens,45.37,28.43
.target Regthar Deathgate
>>Sprecht mit |cRXP_FRIENDLY_Regthar Deathgate|r
    .accept 4021 >>Akzeptiert die Quest Gegenangriff!
step
    >> Diese Quest kann allein sehr schwierig sein. Falls ihr niemanden zum Gruppieren habt, bildet eine Gruppe dafür oder zieht sie in die Nähe des Gebäudes des Questgebers.
    >> Überspringen falls sie zu schwer ist
    .goto The Barrens,44.33,28.14
    .complete 4021,1 --Piece of Krom'zar's Banner (1)
--N Link to safespot abuse
step
    .isQuestComplete 4021
    .goto The Barrens,45.39,28.44
.target Regthar Deathgate
>>Sprecht mit |cRXP_FRIENDLY_Regthar Deathgate|r
    .turnin 4021 >>Gebt die Quest Gegenangriff ab
step
    .goto The Barrens,39.8,17.3,80,0
    .goto The Barrens,37.4,15.8,80,0
    .goto The Barrens,40.3,15.2,80,0
    .goto The Barrens,39.8,17.3,80,0
    .goto The Barrens,37.4,15.8,80,0
    .goto The Barrens,40.3,15.2,80,0
    .goto The Barrens,39.8,17.3,80,0
    .goto The Barrens,37.4,15.8,80,0
    .goto The Barrens,40.3,15.2,80,0
    .goto The Barrens,39.8,17.3
    >>Tötet Töterin der Hexenschwingen. Plündert sie für Harpyienoffiziersringe
    .complete 875,1 --Harpy Lieutenant Ring (6)
step
    .goto The Barrens,41.4,24.5
    >>Tötet Savannenstreuner in der Gegend. Plündert siefür ihre Hauer
    .complete 821,1 --Savannah Lion Tusk (5)
step
    .goto The Barrens,35.3,27.9
>>Sprecht mit |cRXP_FRIENDLY_Seereth Stonebreak|r
    .turnin 1061 >> Gebt die Quest Die Geister des Steinkrallengebirges ab
.target Seereth Stonebreak
    .accept 1062 >> Akzeptiert die Quest Goblin-Eindringlinge
.target Makaba Flathoof
>>Sprecht mit |cRXP_FRIENDLY_Makaba Flathoof|r
    .accept 6548 >> Akzeptiert die Quest Rächt mein Dorf
]])

RXPGuides.RegisterGuide([[
#classic
#tbc
<< Horde Mage
#name 17-21 Steinkrallengebirge/Brachland AoE
#version 1
#group RestedXP Horde Magier AoE
#defaultfor Horde Mage
#next 21-30 Silberwald/Hillsbrad AoE

step
    .goto Stonetalon Mountains,80.7,89.2,50,0
    .goto Stonetalon Mountains,82.0,86.0,50,0
    .goto Stonetalon Mountains,84.7,84.3,50,0
    .goto Stonetalon Mountains,82.3,90.0,50,0
    .goto Stonetalon Mountains,80.7,89.2,50,0
    .goto Stonetalon Mountains,82.0,86.0,50,0
    .goto Stonetalon Mountains,84.7,84.3,50,0
    .goto Stonetalon Mountains,82.3,90.0,50,0
    >>Tötet Grimtotems in der Gegend
    .complete 6548,2 --Kill Grimtotem Mercenary (x6)
    .complete 6548,1 --Kill Grimtotem Ruffian (x8)
step
    .goto The Barrens,35.191,27.791
>>Sprecht mit |cRXP_FRIENDLY_Makaba Flathoof|r
    .turnin 6548 >> Gebt die Quest Rächt mein Dorf ab
.target Makaba Flathoof
    .accept 6629 >> Akzeptiert die Quest Tötet Grundig Finsterwolke
step
    >>Betretet das Dorf durch den westlichen Pfad. Tötet alle 6 Schläger, bevor ihr die Quest im Inneren startet. Tötet Grundig vor dem Hauptzelt
    .goto Stonetalon Mountains,71.7,86.7,60,0
    .goto Stonetalon Mountains,74.0,86.2
    .complete 6629,1 --Kill Grundig Darkcloud (x1)
    .complete 6629,2 --Kill Grimtotem Brute (x6)
step
    >>Startet die Eskorte mit Kaya
    .goto Stonetalon Mountains,73.5,85.8
.target Kaya Flathoof
>>Sprecht mit |cRXP_FRIENDLY_Kaya Flathoof|r
    .accept 6523 >> Akzeptiert die Quest Schützt Kaya
step
     >>Begleitet Kaya und bleibt in ihrer Nähe. 3 Grimtotems erscheinen am Lagerfeuer. Esst und trinkt, bevor sie das Lager erreicht
    .goto Stonetalon Mountains,75.8,91.4
    .complete 6523,1 --Kaya Escorted to Camp Aparaje
step
    .goto Stonetalon Mountains,71.4,95.1
.target Xen'Zilla
>>Sprecht mit |cRXP_FRIENDLY_Xen'Zilla|r
    .accept 6461 >> Akzeptiert die Quest Blutfresser
step
    #sticky
    #label deepmossegg
    >>Klickt die Spinneneier bei den Bäumen
    .complete 1069,1 --Collect Deepmoss Egg (x15)
step
    >>Tötet die Kluftmoosspinnen n in der Gegend
    .goto Stonetalon Mountains,57.5,76.2,60,0
    .goto Stonetalon Mountains,54.7,71.9,60,0
    .goto Stonetalon Mountains,52.6,71.8,60,0
    .goto Stonetalon Mountains,52.2,75.6,60,0
    .goto Stonetalon Mountains,53.9,74.2,60,0
    .goto Stonetalon Mountains,54.7,71.9,60,0
    .goto Stonetalon Mountains,52.6,71.8,60,0
    .goto Stonetalon Mountains,52.2,75.6,60,0
    .goto Stonetalon Mountains,53.9,74.2,60,0
    .goto Stonetalon Mountains,54.7,71.9
    .complete 6461,1 --Kill Deepmoss Creeper (x10)
    .complete 6461,2 --Kill Deepmoss Venomspitter (x7)
step
    .goto Stonetalon Mountains,58.989,62.599
>>Sprecht mit |cRXP_FRIENDLY_Ziz Fizziks|r
    .turnin 1483 >> Gebt die Quest Ziz Fizziks ab
.target Ziz Fizziks
    .accept 1093 >> Superschnitter 6000 annehmen
step
    #sticky
    #requires deepmossegg
    #completewith next
    >>Tötet Holzarbeiter, während ihr nach Maschinenführern sucht, um die Blaupause zu erhalten
    .complete 1062,1 --Kill Venture Co. Logger (x15)
step
    #requires deepmossegg
    >>Tötet Maschinenführer der Venture Co. , bis ihr die Blaupause bekommt
    .goto Stonetalon Mountains,62.8,53.7,40,0
    .goto Stonetalon Mountains,61.7,51.5,40,0
    .goto Stonetalon Mountains,66.8,45.3,40,0
    .goto Stonetalon Mountains,71.7,49.9,40,0
    .goto Stonetalon Mountains,74.3,54.7,40,0
    .goto Stonetalon Mountains,62.8,53.7,40,0
    .complete 1093,1 --Collect Super Reaper 6000 Blueprints (x1)
step
    >>Beendet das töten von Holzfällern
    .goto Stonetalon Mountains,64.1,56.7,40,0
    .goto Stonetalon Mountains,73.4,54.3,40,0
    .goto Stonetalon Mountains,64.1,56.7,40,0
    .goto Stonetalon Mountains,73.4,54.3,40,0
    .goto Stonetalon Mountains,64.1,56.7,40,0
    .goto Stonetalon Mountains,73.4,54.3,40,0
    .goto Stonetalon Mountains,64.1,56.7,40,0
    .goto Stonetalon Mountains,73.4,54.3,40,0
    .complete 1062,1 --Kill Venture Co. Logger (x15)
step
    .goto Stonetalon Mountains,58.989,62.599
>>Sprecht mit |cRXP_FRIENDLY_Ziz Fizziks|r
    .turnin 1093 >> Gebt die Quest Superschnitter 6000 ab
.target Ziz Fizziks
    .accept 1094 >> Weitere Instruktionen annehmen
step
    .hs >> Ruhestein nach Camp Taurajo
step
    .goto The Barrens,44.9,59.1
>>Sprecht mit |cRXP_FRIENDLY_Jorn Skyseer|r
    .turnin 3261 >>Gebt die Quest Jorn Skyseer ab
.target Jorn Skyseer
    .accept 882 >>Akzeptiert die Quest Ishamuhale
step
    #sticky
    #label Lizard
    >>Tötet Sturmschnauzen. Plündert sie für ein Horn
    .complete 821,3 --Thunder Lizard Horn (1)
step
	#sticky
	#label Lakota1
	#completewith next
	.goto The Barrens,50.0,53.1,0
    .goto The Barrens,46.0,49.2,0
    .goto The Barrens,45.3,52.5,0
    .goto The Barrens,45.0,51.8,0
	>>Findet und tötet Lakota'mani (Grauer Kodo) in der Gegend. Plündert seinen Huf. Falls ihr ihn nicht findet, überspringt diese Quest.
	.collect 5099,1,883 --Collect Hoof of Lakota'Mani
	.accept 883 >>Akzeptiert die Quest Lakota'Mani
step
    >>Tötet viele Stacheleber. Plündert sie für ihre Stoßzähne. Behaltet die Blutsplitter, die ihr erhaltet
	.goto The Barrens,44.3,52.3,50,0
    .goto The Barrens,47.1,53.3,50,0
    .goto The Barrens,45.2,54.3,50,0
	.goto The Barrens,44.3,52.3,50,0
    .goto The Barrens,47.1,53.3,50,0
    .goto The Barrens,45.2,54.3,50,0
	.goto The Barrens,44.3,52.3,50,0
    .goto The Barrens,47.1,53.3,50,0
    .goto The Barrens,45.2,54.3,50,0
	.goto The Barrens,44.3,52.3,50,0
    .goto The Barrens,47.1,53.3,50,0
    .goto The Barrens,45.2,54.3,50,0
	.complete 878,1 --Kill Bristleback Water Seeker (x6)
    .complete 878,2 --Kill Bristleback Thornweaver (x12)
    .complete 878,3 --Kill Bristleback Geomancer (x12)
    .complete 899,1 --Collect Bristleback Quilboar Tusk (x60)
step
    #sticky
    #completewith Ishamuhale
    >>Tötet Ebenenschreiter. Plündert sie für Nieren
    .complete 821,2 --Plainstrider Kidney (5)
step
    #requires Lizard
    >>Geht um den See herum und tötet Schildkröten mit Flächenschaden. Plündert sie für ihre Schalen
	.goto The Barrens,55.5,42.6
    .complete 880,1 --Altered Snapjaw Shell (8)
step
   #completewith next
	>>Tötet einen Zhevra in der Gegend. Plündert sie seinen Kadaver
	.goto The Barrens,61.0,32.2
	.collect 10338,1 --Collect Fresh Zhevra Carcass
step
	#label Ishamuhale
    >>Benutzt den Frischen Zhevrakadaver beim toten Baum, um Ishamuhale zu beschwören. Tötet und plündert ihn um seinen Fangzahn
	.goto The Barrens,59.9,30.4
    .complete 882,1 --Ishamuhale's Fang (1)
step
    >>Tötet Ebenenschreiter. Plündert sie für Nieren
    .complete 821,2 --Plainstrider Kidney (5)
step
	.goto The Barrens,62.7,36.3
    >>Lauft zu Ratschet zurück
.target Gazlowe
>>Sprecht mit |cRXP_FRIENDLY_Gazlowe|r
    .turnin 888 >>Gebt die Quest Gestohlene Beute ab
step
    .goto The Barrens,63.0,37.2
>>Sprecht mit |cRXP_FRIENDLY_Sputtervalve|r
    .turnin 1094 >>Gebt die Quest Weitere Instruktionen ab
.target Sputtervalve
    .accept 1095 >>Weitere Instruktionen annehmen
step
    .goto The Barrens,62.4,37.6
.target Mebok Mizzyrix
>>Sprecht mit |cRXP_FRIENDLY_Mebok Mizzyrix|r
    .turnin 865 >>Gebt die Quest Raptorhörner ab
    .turnin 1069 >>Gebt die Quest Eier der Kluftmoosspinnen ab
step
    .goto The Barrens,62.3,38.4
.target Brewmaster Drohn
>>Sprecht mit |cRXP_FRIENDLY_Braumeister Drohn|r
    .turnin 821 >>Gebt die Quest Chens leeres Fässchen ab
step
    .goto The Barrens,63.1,37.1
    .fly Crossroads >>Fliege nach Das Wegekreuz
step
    .goto The Barrens,52.2,31.9
>>Sprecht mit |cRXP_FRIENDLY_Tonga Runetotem|r
    .turnin 880 >>Gebt die Quest Veränderte Wesen ab
.target Tonga Runetotem
    .accept 1489 >>Akzeptiert die Quest Hamuul Runentotem
    .accept 3301 >>Akzeptiert die Quest Mura Runentotem
step
    .goto The Barrens,52.0,31.6
.target Mankrik
>>Sprecht mit |cRXP_FRIENDLY_Mankrik|r
    .turnin 899 >>Gebt die Quest Von Hass zerfressen ab
step
    >>Oben auf dem Turm
    .goto The Barrens,51.60,30.90
>>Sprecht mit |cRXP_FRIENDLY_Darsok Swiftdagger|r
    .turnin 875 >> Gebt die Quest Offiziere der Harpyien ab
.target Darsok Swiftdagger
    .accept 876 >> Akzeptiert die Quest Serena Blutfeder
step
    >>Dies startet eine zeitgesteuerte Quest
    .goto The Barrens,51.4,30.2
>>Sprecht mit |cRXP_FRIENDLY_Apotheker Helbrim|r
    .turnin 848 >>Gebt die Quest Pilzsporen ab
.target Apothecary Helbrim
    .accept 853 >>Akzeptiert die Quest Apothekerin Zamah
step
    .goto The Barrens,51.5,30.3
    .fly Camp Taurajo >>Fliege nach Camp Taurajo
step
    .goto The Barrens,53.0,52.1
    >>Tötet Stacheleber für einen Blutsplitter
    .collect 5075 --Blood Shard (1)
step
    .goto The Barrens,44.6,59.2
>>Sprecht mit |cRXP_FRIENDLY_Quetschzahn|r
    .turnin 878 >>Gebt die Quest Stämme im Krieg ab
.target Mangletooth
    .accept 5052 >>Akzeptiert die Quest Blutsplitter von Agamaggan
    .turnin 5052 >>Gebt die Quest Blutsplitter von Agamaggan ab
--N Different classes needing different buffs, e.g. need speed buff later for Mulgore run for classes that didnt get FP earlier
step
    .goto The Barrens,44.8,59.1
>>Sprecht mit |cRXP_FRIENDLY_Jorn Skyseer|r
    .turnin 882 >>Gebt die Quest Ishamuhale ab
.target Jorn Skyseer
    .accept 907 >>Akzeptiert die Quest Wütende Donnerechsen
    .accept 1130 >>Akzeptiert die Quest Melor schickt Kunde
step
    .goto The Barrens,44.8,59.1
    .isOnQuest 883
.target Jorn Skyseer
>>Sprecht mit |cRXP_FRIENDLY_Jorn Skyseer|r
    .turnin 883 >>Gebt die Quest Lakota'mani ab
step
    .goto The Barrens,44.8,59.1
>>Sprecht mit |cRXP_FRIENDLY_Jorn Skyseer|r
    .turnin 882 >>Gebt die Quest Ishamuhale ab
.target Jorn Skyseer
    .accept 907 >>Akzeptiert die Quest Wütende Donnerechsen
    .accept 1130 >>Akzeptiert die Quest Melor schickt Kunde
step
    #sticky
    #label Owatanka2
    #completewith next
    .goto The Barrens,44.2,62.1,0
    .goto The Barrens,49.2,62.6,0
    .goto The Barrens,49.6,60.0,0
    >>Sucht nach Owatanka (Blauer Donnerechse) in dieser Gegend. Falls ihr ihn findet, plündert seinen Schwanzstachel und startet die Quest. Falls ihr ihn nicht findet, überspringt diese Quest
    .collect 5102,1,884 --Collect Owatanka's Tailspike
    .accept 884 >>Akzeptiert die Quest Owatanka
step
    .goto The Barrens,42.5,60.3,30,0
    .goto The Barrens,47.1,63.7,30,0
    .goto The Barrens,50.0,61.1,30,0
    >>Tötet Donnerechsen. Plündert sie für ihr Blut
    .complete 907,1 --Thunder Lizard Blood (3)
step
    .goto The Barrens,44.9,59.1
>>Sprecht mit |cRXP_FRIENDLY_Jorn Skyseer|r
    .turnin 907 >>Gebt die Quest Wütende Donnerechsen ab
.target Jorn Skyseer
    .accept 913 >>Akzeptiert die Quest Der Ruf des Donnerfalken
step
    .goto The Barrens,44.9,59.1
.target Jorn Skyseer
>>Sprecht mit |cRXP_FRIENDLY_Jorn Skyseer|r
    .turnin 884 >>Gebt die Quest Owatanka ab
    .isOnQuest 884
step
    .goto The Barrens,44.9,59.1
>>Sprecht mit |cRXP_FRIENDLY_Jorn Skyseer|r
    .turnin 907 >>Gebt die Quest Wütende Donnerechsen ab
.target Jorn Skyseer
    .accept 913 >>Akzeptiert die Quest Der Ruf des Donnerfalken
step
    .goto The Barrens,44.8,63.2,30,0
    .goto The Barrens,47.0,61.6,30,0
    .goto The Barrens,44.8,63.2,30,0
    .goto The Barrens,47.0,61.6,30,0
    .goto The Barrens,44.8,63.2,30,0
    .goto The Barrens,47.0,61.6,30,0
    >>Tötet einen Donnerfalken. Plündert sie für seine Flügel
    .complete 913,1 --Thunderhawk Wings (1)
step
    .goto The Barrens,44.8,59.1
.target Jorn Skyseer
>>Sprecht mit |cRXP_FRIENDLY_Jorn Skyseer|r
    .turnin 913 >>Gebt die Quest Der Ruf des Donnerfalken ab
--    .accept 874 >>Accept Mahren Skyseer
step
    #completewith next
    .goto The Barrens,44.54,59.27
    >>Gebt Blutsplitter von Euch für den Geist des Windes Buff von Quetschzahn ab. Falls ihr versehentlich Splitter verkauft habt, überspringt diesen Schritt
.target Mangletooth
>>Sprecht mit |cRXP_FRIENDLY_Quetschzahn|r
    .turnin 889 >> Gebt die Quest Geist des Windes ab
step
    .goto Thunder Bluff,32.0,66.9,60 >>Lauft zum Aufzug und nehmt ihn nach Donnerfels
step
    .goto Thunder Bluff,45.814,64.711
    .home >>Setzt euren Ruhestein in Donnerfels
step
    .goto Thunder Bluff,61.538,80.919
>>Sprecht mit |cRXP_FRIENDLY_Melor Stonehoof|r
    .turnin 1130 >>Gebt die Quest Melor schickt Kunde ab
.target Melor Stonehoof
    .accept 1131 >>Akzeptiert die Quest Stahlbiss
step
 	>>Geht zu den Teichen der Visionen
	.goto Thunder Bluff,30.1,30.0,30,0
	.goto Thunder Bluff,23.00,21.00
.target Apothecary Zamah
>>Sprecht mit |cRXP_FRIENDLY_Apothekerin Zamah|r
    .turnin 853 >> Gebt die Quest Apothekerin Zamah ab
step
    .goto Thunder Bluff,25.16,20.95
    .trainer >> Trainiere deine Klassenfähigkeiten
	>>Spezialisiert euch noch nicht auf AoE (falls ihr bereits auf Feuer spezialisiert seid)
step
    .goto Thunder Bluff,28.4,27.7
.target Clarice Foster
>>Sprecht mit |cRXP_FRIENDLY_Clarice Foster|r
    .accept 264 >>Akzeptiert die Quest Bis dass der Tod uns scheidet
step
	.goto Thunder Bluff,47.003,49.832
    .fp Thunder Bluff >> Erlernt die Flugroute nach Donnerfels
    .fly Crossroads >>Fliege nach Das Wegekreuz
step
    >>Tötet Serena Blutfeder. Plündert sie für ihren Kopf
	.goto The Barrens,39.2,12.2
    .complete 876,1 --Serena's Head (1)
step
    .goto The Barrens,35.3,27.9
>>Sprecht mit |cRXP_FRIENDLY_Seereth Stonebreak|r
    .turnin 1062 >>Gebt die Quest Goblin-Eindringlinge ab
>>Sprecht mit |cRXP_FRIENDLY_Makaba Flathoof|r
    .turnin 6629 >>Gebt die Quest Tötet Grundig Finsterwolke ab
    .turnin 6523 >>Gebt die Quest Schützt Kaya ab
.target Makaba Flathoof
    .accept 6401 >>Akzeptiert die Quest Kaya lebt
.target Seereth Stonebreak
    .accept 1063 >>Akzeptiert die Quest Die Ältestengreisin
--    .accept 1068 >> Accept Shredding Machines
step
    .goto Stonetalon Mountains,71.3,95.1
.target Xen'Zilla
>>Sprecht mit |cRXP_FRIENDLY_Xen'Zilla|r
    .turnin 6461 >>Gebt die Quest Blutfresser ab
step
    .goto Stonetalon Mountains,58.989,62.599
.target Ziz Fizziks
>>Sprecht mit |cRXP_FRIENDLY_Ziz Fizziks|r
    .turnin 1095 >>Gebt die Quest Weitere Instruktionen ab
step
    .goto Stonetalon Mountains,47.5,58.4
.target Tammra Windfield
>>Sprecht mit |cRXP_FRIENDLY_Tammra Windfield|r
    .turnin 6401 >>Gebt die Quest Kaya lebt ab
step
    .goto Stonetalon Mountains,45.12,59.84
    .fp Sun Rock>> Erlernt die Flugroute nach Sonnenfels
step
    #completewith next
    .hs >> Ruhestein nach Donnerfels
step
    .goto Thunder Bluff,70.00,30.90
>>Sprecht mit |cRXP_FRIENDLY_Magatha Grimtotem|r
    .turnin 1063 >> Gebt die Quest Die Ältestengreisin ab
.target Magatha Grimtotem
    .accept 1064 >> Akzeptiert die Quest Die Hilfe der Verlassenen
step
    .goto Thunder Bluff,78.62,28.56
>>Sprecht mit |cRXP_FRIENDLY_Erzdruide Hamuul Runetotem|r
    .turnin 1489 >> Gebt die Quest Hamuul Runentotem ab
.target Arch Druid Hamuul Runetotem
    .accept 1490 >> Akzeptiert die Quest Nara Wildmane
step
    .goto Thunder Bluff,75.65,31.62
.target Nara Wildmane
>>Sprich mit |cRXP_FRIENDLY_Nara Wildmähne|r
    .turnin 1490 >> Gebt die Quest Nara Wildmane ab
step
    .goto Thunder Bluff,23.00,21.0
>>Sprecht mit |cRXP_FRIENDLY_Apothekerin Zamah|r
    .turnin 1064 >> Gebt die Quest Die Hilfe der Verlassenen ab
.target Apothecary Zamah
    .accept 1065 >> Akzeptiert die Quest Reise nach Tarrens Mühle
step
    .goto Thunder Bluff,25.16,20.95
    .trainer >> Erlernt eure Klassenfähigkeiten, falls nötig
	>>Spezialisiert euch auf Frostschaden AoE , falls ihr das noch nicht getan habt
step
    .goto Thunder Bluff,46.8,50.0
    .fly The Crossroads >>Fliege nach Das Wegekreuz
step
    .goto The Barrens,51.60,30.90
	>>Geh nach oben
.target Darsok Swiftdagger
>>Sprecht mit |cRXP_FRIENDLY_Darsok Swiftdagger|r
    .turnin 876 >> Gebt die Quest Serena Blutfeder ab
step
    .goto The Barrens,51.50,30.34
    .fly Orgrimmar >> Fliege nach Orgrimmar
]])
