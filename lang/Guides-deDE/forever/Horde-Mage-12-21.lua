if GetLocale() ~= "deDE" then return end
local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end

RXPGuides.RegisterGuide([[
#forever
#disabledungeons
<< Horde Mage
#name 12-17 Das Brachland AoE
#version 1
#group RestedXP Horde Magier AoE

#defaultfor none Horde Mage
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
    .goto 1413/1,-2666.68,-481.94--??
.target Tonga Runetotem
>>Sprecht mit |cRXP_FRIENDLY_Tonga Runetotem|r
    .accept 870 >>Akzeptiert die Quest Die Vergessenen Teiche
step
    .goto 1413/1,-2666.68,-481.94
>>Sprecht mit |cRXP_FRIENDLY_Sergra Darkthorn|r
    .turnin 842 >>Gebt die Quest Wegekreuz-Wehrpflicht ab
.target Sergra Darkthorn
    .accept 844 >>Akzeptiert die Quest Ebenenschreiter-Bedrohung
step << Troll Mage
    .goto 1413/1,-2697.08,-400.86
.target Zargh
>>Sprecht mit |cRXP_FRIENDLY_Zargh|r
    .accept 6365 >>Akzeptiert die Quest Fleisch für Orgrimmar
step
    .goto 1413/1,-2636.28,-434.64
.target Gazrog
>>Sprecht mit |cRXP_FRIENDLY_Gazrog|r
    .accept 869 >>Akzeptiert die Quest Raptordiebe
step
    .goto 1413/1,-2645.40,-406.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gastwirt Boorand|r
    .home >> Setzt euren Ruhestein im Wegekreuz
    .target Innkeeper Boorand Plainswind
step
    .goto 1413/1,-2595.75,-468.43
.target Thork
>>Sprecht mit |cRXP_FRIENDLY_Thork|r
    .accept 871 >>Akzeptiert die Quest Vereitelung der Angriffe
    .accept 5041 >>Akzeptiert die Quest Vorräte für Crossroads
step
    .goto 1413/1,-2595.75,-441.40
    .fp The Crossroads >> Erlernt die Flugroute beim Wegekreuz
step << Troll Mage
    >>Geht NICHT nach Orgrimmar
    .goto 1413/1,-2595.75,-434.64
>>Sprecht mit |cRXP_FRIENDLY_Devrak|r
    .turnin 6365 >>Gebt die Quest Fleisch für Orgrimmar ab
.target Devrak
    .accept 6384 >>Akzeptiert die Quest Flug nach Orgrimmar
step
    .goto 1413/1,-2595.75,-421.13
.target Apothecary Helbrim
>>Sprecht mit |cRXP_FRIENDLY_Apotheker Helbrim|r
    .accept 848 >>Akzeptiert die Quest Pilzsporen
    .accept 1492 >>Werftmeister Flunkerblick annehmen
step
    #sticky
    #completewith next
    >>Überprüft diesen Ort auf Chens leeres Fässchen. Plündert es und fangt die Quest an, sonst bekommt ihr es später
    .goto 1413/1,-3021.35,-231.96
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >> Akzeptiert die Quest Chens leeres Fässchen
step
    .goto 1413/1,-3011.22,-184.66
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
    .goto 1413/1,-2484.28,126.12,20 >>Lauft hier den Berg hinauf
step << !Undead
    #label BeakCave
    .goto 1413/1,-2200.55,315.3,20 >>Geh zu der Höhle, die von Orcs der Brennenden Klinge umgeben ist
step << !Undead
    >>Rechtsklickt auf den Altar
    .goto 1413/1,-2241.08,322.06
    .collect 4986,1,924 --Collect Flawed Power Stone
    .complete 924,1 --Destroy the Demon Seed (1)
step
    #sticky
    #completewith next
    >>Tötet Raptors die ihr seht. Sammelt sie für Raptorköpfe - ihr bekommt später mehr
    .complete 869,1 --Raptor Head (12)
step
    >>Tötet Ebenenschreiter. Plündert sie für Schnäbel
    .goto 1413/1,-2524.82,-556.26
    .complete 844,1 --Plainstrider Beak (7)
step
    >>Oben auf dem Turm
    .goto 1413/1,-2595.75,-475.18
>>Sprecht mit |cRXP_FRIENDLY_Thork|r
    .turnin 871 >>Gebt die Quest Vereitelung der Angriffe ab
.target Thork
    .accept 872 >>Akzeptiert die Quest Das Ende der Unterbrechungen
.target Darsok Swiftdagger
>>Sprecht mit |cRXP_FRIENDLY_Darsok Swiftdagger|r
    .accept 867 >>Akzeptiert die Quest Räuberische Harpyien
step
    .goto 1413/1,-2666.68,-481.94
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
    .goto 1413/1,-3315.22,-218.44
    .complete 872,3 --Kreenig Snarlsnout's Tusk (1)
step
    #label Crates
	.goto 1413/1,-3305.08,-231.96,40,0
    .goto 1413/1,-3294.95,-211.69,40,0
    .goto 1413/1,-3305.08,-130.61,40,0
    .goto 1413/1,-3396.28,-63.05,40,0
    >>Sammelt die braunen Kisten in der Gegend
    .complete 5041,1 --Crossroads' Supply Crates (1)
step
    .goto 1413/1,-3122.68,-96.83
    >>Beendet das Töten der Grimmhauer
    .complete 872,1 --Razormane Geomancer (8)
    .complete 872,2 --Razormane Defender (8)
step << !Undead
    #sticky
    #completewith next
    >>Tötet alle Zhevras die ihr seht. Sammelt sie für Hufe
    .complete 845,1 --Zhevra Hooves (4)
step << !Undead
    .goto 1413/1,-3690.15,254.49
.target Ak'Zeloth
>>Sprecht mit |cRXP_FRIENDLY_Ak'Zeloth|r
    .turnin 924 >>Gebt die Quest Die Dämonensaat ab
step
    >>Tötet alle Zhevras die ihr seht. Sammelt sie für Hufe. Stellt sicher, dass ihr 4 habt bevor ihr Ratschet erreicht
    .goto 1413/1,-3257.46,277.46,150,0 << Undead
    .goto 1413/1,-3852.28,-806.24
    .complete 845,1 --Zhevra Hooves (4)
step
    >>Oberstes Stockwerk des Gebäudes
    .goto 1413/1,-3730.68,-840.02
.target Gazlowe
>>Sprecht mit |cRXP_FRIENDLY_Gazlowe|r
    .accept 887 >>Akzeptiert die Quest Südmeerfreibeuter
step
    .goto 1413/1,-3771.22,-894.07
    .fp Ratchet >> Erlernt die Flugroute nach Ratschet
step
    .goto 1413/1,-3761.08,-900.83
.target Sputtervalve
>>Sprecht mit |cRXP_FRIENDLY_Sputtervalve|r
    .accept 894 >>Akzeptiert die Quest Samophlang
step
    >>Klickt auf den Gesucht:Steckbrief. Ihr könnt hier auch Gegenstände auf die Bank legen, wenn ihr wollt
    .goto 1413/1,-3720.55,-921.09
    .accept 895 >>Akzeptiert die Quest GESUCHT: Baron Küstenschipper
step
    .goto 1413/1,-3700.28,-934.61
.target Mebok Mizzyrix
>>Sprecht mit |cRXP_FRIENDLY_Mebok Mizzyrix|r
    .accept 865 >>Akzeptiert die Quest Raptorhörner
step
    .goto 1413/1,-3690.15,-981.90
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
    .goto 1413/1,-3882.68,-1569.69,40,0
    .goto 1413/1,-3821.88,-1704.82,40,0
    .goto 1413/1,-3720.55,-1745.36,40,0
    .goto 1413/1,-3882.68,-1569.69,40,0
    .goto 1413/1,-3821.88,-1704.82,40,0
    .goto 1413/1,-3720.55,-1745.36,40,0
    .goto 1413/1,-3882.68,-1569.69,40,0
    .goto 1413/1,-3821.88,-1704.82,40,0
    .goto 1413/1,-3720.55,-1745.36,40,0
    >>Tötet Baron Küstenschipper. Plündert ihn für seinen Kopf
    .complete 895,1 --Baron Longshore's Head (1)
step
    #requires Southsea
    .goto 1413/1,-3730.68,-840.02
>>Sprecht mit |cRXP_FRIENDLY_Gazlowe|r
    .turnin 887 >>Gebt die Quest Südmeerfreibeuter ab
.target Gazlowe
    .accept 890 >>Akzeptiert die Quest Die verloren gegangene Lieferung
    .turnin 895 >>Gebt die Quest GESUCHT: Baron Küstenschipper ab
step
    .goto 1413/1,-3791.48,-981.90
>>Sprecht mit |cRXP_FRIENDLY_Werftmeister Dizzywig|r
    .turnin 1492 >>Gebt die Quest Werftmeister Dizzywig ab
    .turnin 890 >>Gebt die Quest Die verloren gegangene Lieferung ab
.target Wharfmaster Dizzywig
    .accept 892 >>Akzeptiert die Quest Die verloren gegangene Lieferung
    .accept 896 >>Akzeptiert die Quest Des Minenarbeiters Vermögen
step
    .goto 1413/1,-3730.68,-840.02
>>Sprecht mit |cRXP_FRIENDLY_Gazlowe|r
    .turnin 892 >>Gebt die Quest Die verloren gegangene Lieferung ab
.target Gazlowe
    .accept 888 >>Akzeptiert die Quest Gestohlene Beute
step
    .goto 1413/1,-3769.19,-898.12
    .fly Crossroads >> Fliege nach Das Wegekreuz
step
    .goto 1413/1,-2595.75,-468.43
.target Thork
>>Sprecht mit |cRXP_FRIENDLY_Thork|r
    .turnin 5041 >>Gebt die Quest Vorräte für Crossroads ab
    .turnin 872 >>Gebt die Quest Das Ende der Unterbrechungen ab
step
    .goto 1413/1,-2666.68,-481.94
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
    .goto 1413/1,-1972.55,-306.95
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
    .goto 1413/1,-1943.16,89.64
    >>Taucht unter Wasser zur |cRXP_PICK_Blubbernder Felsspalt|r
    .complete 870,1 --Explore the waters of the Forgotten Pools
step
    #label Barak
    .goto 1413/1,-1716.18,23.43
    >>Tötet |cRXP_ENEMY_Barak Kodobann|r. Plündert ihn für seinen |cRXP_LOOT_kopf|r
    >>|cRXP_WARN_Seid vorsichtig, da die Nahkampfangriffe von |cRXP_ENEMY_Barak Kodobann|r großen Schaden anrichten und er durch einen |cRXP_ENEMY_Zänker der Kolkar|r beschützt wird. Sie können euch fesseln und aus der Ferne auf euch schießen|r
    .complete 850,1 --Kodobane's Head (1)
    .mob Barak Kodobane
step
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Regthar|r
    .turnin 850 >>Gebt die Quest Anführer der Kolkar ab
    .accept 851 >>Akzeptiert die Quest Verog der Derwisch
    .turnin 855 >>Gebt die Quest Zentaurenarmschienen ab
    .target Regthar Deathgate
    .isQuestComplete 855
step
    #label KodobaneTurnin
    .goto 1413/1,-1972.55,-306.95
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
    .goto 1413/1,-1572.28,-42.78,40,0
    .goto 1413/1,-1470.95,261.25,40,0
    .goto 1413/1,-1572.28,-42.78,40,0
    .goto 1413/1,-1470.95,261.25,40,0
	>>Konzentriert euch jetzt nicht darauf alle zu bekommen
    .complete 821,1 --Savannah Lion Tusk (5)
step
    #label Claws
    >>Tötet Streuner. Plündert sie für ihre Klauen und Hauer
    .goto 1413/1,-1572.28,-42.78
    .complete 903,1 --Prowler Claws (7)
step
    .goto 1413/1,-1450.68,335.57,40,0
    .goto 1413/1,-1501.35,626.09,40,0
    .goto 1413/1,-1693.88,592.31,40,0
    .goto 1413/1,-1450.68,335.57,40,0
    .goto 1413/1,-1501.35,626.09,40,0
    .goto 1413/1,-1693.88,592.31,40,0
    >>Tötet Harpien. Plündert sie für ihre Krallen
    .complete 867,1 --Witchwing Talon (8)
step
    #completewith next
    .goto 1413/1,-1815.48,788.24
    >> Falls ihr den Schweren Stachelkolben noch nicht habt, versucht, ihn von Vrang Wildblut zu kaufen << Druid/Warrior
    .vendor >> Verkauft bei dem Händler, falls nötig
step
    #sticky
    #completewith next
    >>Tötet Ebenenschreiter. Plündert sie für Nieren
    .complete 821,2 --Plainstrider Kidney (5)
step
    .goto 1413/1,-2879.48,781.48,40,0
    .goto 1413/1,-2909.88,484.21,40,0
    .goto 1413/1,-1693.88,592.31,40,0
    .goto 1413/1,-2879.48,781.48,40,0
    .goto 1413/1,-2909.88,484.21,40,0
    .goto 1413/1,-1693.88,592.31,40,0
    >>Tötet Raptoren. Plündert sie für ihre Köpfe
    .complete 869,1 --Raptor Head (12)
step
    >>Klickt auf die Steuerkonsole
    .goto 1413/1,-2686.95,828.77
    .turnin 894 >>Gebt die Quest Samophlang ab
    .accept 900 >>Akzeptiert die Quest Samophlang
step
    >>Klickt das Ventil
    .goto 1413/1,-2686.95,842.29
    .complete 900,2 --Shut off Fuel Control Valve (1)
step
    >>Klickt das Ventil. Mobs werden auftauchen, wenn ihr eines davon anklickt
    .goto 1413/1,-2676.82,842.29
    .complete 900,3 --Shut off Regulator Valve (1)
    .goto 1413/1,-2676.82,828.77
    .complete 900,1 --Shut off Main Control Valve (1)
step
    >>Klickt auf die Steuerkonsole
    .goto 1413/1,-2686.95,828.77
    .turnin 900 >>Gebt die Quest Samophlang ab
    .accept 901 >>Akzeptiert die Quest Samophlang
step
    >>Tötet Tüftler Sniggles im Gebäude. Plündert ihn für den Schlüssel zur Steuerkonsole
    .goto 1413/1,-2727.48,909.85
    .complete 901,1 --Console Key (1)
step
    .goto 1413/1,-2686.95,828.77
    .turnin 901 >>Gebt die Quest Samophlang ab
    .accept 902 >>Akzeptiert die Quest Samophlang
step
    >>Akzeptiert die Quest Zündung vom Schredder
    .goto 1413/1,-3102.42,1105.78
.target Wizzlecrank's Shredder
>>Sprecht mit |cRXP_FRIENDLY_Wizzlecranks Schredder|r
    .accept 858 >>Akzeptiert die Quest Zündung
step
    >>Ihr solltet bis Stufe 16 farmen, da die nächsten 3 Quests ziemlich schwer sind.
	.xp 16 >> Farmt bis Stufe 16
step
    >>Tötet Vorsteher Lugwizzle (er patrouilliert überall im Turm). Plündert ihn für den Zündschlüssel
	.goto 1413/1,-3082.15,1031.46
    .complete 858,1 --Ignition Key (1)
step
    >>Das wird eine Eskorte starten
    .goto 1413/1,-3102.42,1105.78
>>Sprecht mit |cRXP_FRIENDLY_Wizzlecranks Schredder|r
    .turnin 858 >>Gebt die Quest Zündung ab
.target Wizzlecrank's Shredder
    .accept 863 >>Akzeptiert die Quest Die Flucht
step
    #label Slugs
    >>2 Mobs werden irgendwann spawnen. Tötet sie, dann wartet auf sein Rollenspiel-Event am Ende
    .goto 1413/1,-2980.82,1085.51
    .complete 863,1 --Escort Wizzlecrank out of the Venture Co. drill site (1)
step
    >>Farmt die Mobs in der Gegend. Plündert sie, bis ein Katzenaugensmaragd droppt
    .goto 1413/1,-3609.08,1321.98
    .complete 896,1 -- Cats Eye Emerald (1)
step
    #completewith next
	.goto 1454/1,-3841.9,1647.15,40 >>Lauft zum westlichen Eingang von Orgrimmar
step
    .goto 1454/1,-4224.67,1472.41
    .trainer >> Trainiere deine Klassenfähigkeiten
step << Troll Mage
    .goto 1454/1,-4440.81,1632.18
>>Sprecht mit |cRXP_FRIENDLY_Gastwirtin Gryshka|r
    .turnin 6384 >>Gebt die Quest Flug nach Orgrimmar ab
.target Innkeeper Gryshka
    .accept 6385 >>Akzeptiert die Quest Doras der Windreitermeister
step
    >>Lauft zum Flugmeister. Fliegt NICHT irgendwo hin
    .goto 1454/1,-4313.46,1676.25--c:Orgrimmar,45.120,63.889
    .fp Orgrimmar >> Erlernt die Orgrimmar-Flugroute << Undead
>>Sprecht mit |cRXP_FRIENDLY_Doras|r
    .turnin 6385 >>Gebt die Quest Doras der Windreitermeister ab << Troll Mage
.target Doras
    .accept 6386 >>Akzeptiert die Quest Kehrt nach Crossroads zurück << Troll Mage
step
    >>Lauft zur Feste Grommash
    .goto 1454/1,-4229.02,1917.48
.target Zor Lonetree
>>Sprecht mit |cRXP_FRIENDLY_Zor Lonetree|r
    .accept 1061 >>Akzeptiert die Quest Die Geister des Steinkrallengebirges
step
    #completewith next
    .hs >>Ruhestein nach Das Wegekreuz
step << Troll Mage
    .goto 1413/1,-2707.22,-407.62
.target Zargh
>>Sprecht mit |cRXP_FRIENDLY_Zargh|r
    .turnin 6386 >>Gebt die Quest Kehrt nach Crossroads zurück ab
step
    .goto 1413/1,-2636.28,-434.64
>>Sprecht mit |cRXP_FRIENDLY_Gazrog|r
    .turnin 869 >>Gebt die Quest Raptordiebe ab
.target Gazrog
    .accept 3281 >>Akzeptiert die Quest Gestohlenes Silber
step
    .goto 1413/1,-2676.82,-481.94
>>Sprecht mit |cRXP_FRIENDLY_Sergra Darkthorn|r
    .turnin 903 >>Gebt die Quest Streuner des Brachlandes ab
.target Sergra Darkthorn
    .accept 881 >>Akzeptiert die Quest Echeyakee
step
    >>Benutzt das Horn von Echeyakee in eurer Tasche, um Echeyakee zu beschwören. Tötet ihn und plündert ihn nach seinen Balg
    .goto 1413/1,-3001.08,443.67
    .complete 881,1 --Echeyakee's Hide (1)
step
    .goto 1413/1,-2666.68,-481.94
>>Sprecht mit |cRXP_FRIENDLY_Sergra Darkthorn|r
    .turnin 881 >>Gebt die Quest Echeyakee ab
.target Sergra Darkthorn
    .accept 905 >>Akzeptiert die Quest Die wütenden Sensenklauen
step
    .goto 1413/1,-2666.68,-481.94
>>Sprecht mit |cRXP_FRIENDLY_Tonga Runetotem|r
    .turnin 870 >> Gebt die Quest Die Vergessenen Teiche ab
.target Tonga Runetotem
    .accept 877 >> Akzeptiert die Quest Die Brackige Oase
step
    .goto 1413/1,-2646.42,-522.480
.target Mankrik
>>Sprecht mit |cRXP_FRIENDLY_Mankrik|r
    .accept 899 >> Akzeptiert die Quest Von Hass zerfressen
    .accept 4921 >> Akzeptiert die Quest In der Schlacht vermisst
step
    >>Oben auf dem Turm
    .goto 1413/1,-2605.88,-475.18
>>Sprecht mit |cRXP_FRIENDLY_Darsok Swiftdagger|r
    .turnin 867 >>Gebt die Quest Räuberische Harpyien ab
.target Darsok Swiftdagger
    .accept 875 >>Akzeptiert die Quest Offiziere der Harpyien
step
    .goto 1413/1,-2595.75,-427.890
.target Apothecary Helbrim
>>Sprecht mit |cRXP_FRIENDLY_Apotheker Helbrim|r
    .turnin 848 >> Gebt die Quest Pilzsporen ab
step
    .goto 1413/1,-2595.75,-434.64
    .fly Ratchet >>Fliege nach Ratschet
step
    .goto 1413/1,-3761.08,-900.83
>>Sprecht mit |cRXP_FRIENDLY_Sputtervalve|r
    .turnin 902 >>Gebt die Quest Samophlang ab
    .turnin 863 >> Gebt die Quest Die Flucht ab
.target Sputtervalve
    .accept 1483 >> Akzeptiert die Quest Ziz Fizziks
step
    .goto 1413/1,-3791.48,-981.900
.target Wharfmaster Dizzywig
>>Sprecht mit |cRXP_FRIENDLY_Werftmeister Dizzywig|r
    .turnin 896 >> Gebt die Quest Des Minenarbeiters Vermögen ab
step
    .goto 1413/1,-3700.28,-934.610
.target Mebok Mizzyrix
>>Sprecht mit |cRXP_FRIENDLY_Mebok Mizzyrix|r
    .accept 1069 >> Akzeptiert die Quest Eier der Kluftmoosspinnen
step
    >>Plündert die Kiste
    .goto 1413/1,-3821.88,-1711.58
    .complete 888,2 --Telescopic Lens (1)
step
    >>Plündert die Kiste
    .goto 1413/1,-3720.55,-1738.60
step
    #sticky
    #completewith Nest
    >>Tötet alle Raptoren, die ihr seht. Plündert sie für ihre Hörner und Federn. Seid vorsichtig, da sie hauen werden
    .complete 865,1 --Intact Raptor Horn (5)
step
    >>Sammelt Gestohlenes Silber aus der Truhe
    >>Bewahrt alle Sonnenschuppenfedern , die ihr bekommt, für später auf
    .goto 1413/1,-3193.62,-1927.77,90,0
    .goto 1413/1,-3254.42,-2029.12
    .complete 3281,1 --Stolen Silver (1)
step
    #completewith Verog
    >>Sammelt |cRXP_LOOT_Potenter Pilz|r um Die Brackige Oase herum
    .complete 848,1 --Collect Fungal Spores (x4)
step
    >>Klickt auf den Blubbernden Felsspalt unter Wasser
    .goto 1413/1,-3011.22,-1272.42
    .complete 877,1 --Test the Dried Seeds (1)
step
    #sticky
	#completewith next
    >>Tötet Zentaueren. Plündert sie für ihre armschienen
    .complete 855,1 --Centaur Bracers (15)
step
    #label Verog
    >> Farmt alle Zentauren um den See, bis Verog spawnt (ihr seht eine Nachricht im Chat, wenn er spawnt)
    .goto 1413/1,-2742.68,-1209.59
    .complete 851,1 --Verog's Head (1)
step
#loop
	.line The Barrens,55.72,42.14,55.49,41.75,55.09,41.58,55.03,42.24,55.27,43.17,55.78,43.47,56.15,43.28,56.08,42.58,55.72,42.14
	.goto 1413/1,-3023.38,-1234.58,25,0
	.goto 1413/1,-3000.07,-1208.23,25,0
	.goto 1413/1,-2959.54,-1196.75,25,0
	.goto 1413/1,-2953.46,-1241.34,25,0
	.goto 1413/1,-2977.78,-1304.17,25,0
	.goto 1413/1,-3029.46,-1324.44,25,0
	.goto 1413/1,-3066.95,-1311.61,25,0
	.goto 1413/1,-3059.86,-1264.31,25,0
	.goto 1413/1,-3023.38,-1234.58,25,0
    >>Sammelt |cRXP_LOOT_Potenter Pilz|r um Die Brackige Oase herum
    .complete 848,1 --Collect Fungal Spores (x4)
step
    >>Klickt das Ei an. Ihr braucht die Sonnenschuppenfedern von den Raptoren
    .goto 1413/1,-2707.22,-1508.89
    .complete 905,1 --Visit Blue Raptor Nest (1)
step
    >>Klickt das Ei an. Ihr braucht die Sonnenschuppenfedern von den Raptoren
    .goto 1413/1,-2697.08,-1535.91
    .complete 905,3 --Visit Red Raptor Nest (1)
step
    #label Nest
    >>Klickt das Ei an. Ihr braucht die Sonnenschuppenfedern von den Raptoren
    .goto 1413/1,-2646.42,-1529.16
    .complete 905,2 --Visit Yellow Raptor Nest (1)
step
    .goto 1413/1,-3183.48,-2015.61,40,0
    .goto 1413/1,-2646.42,-1529.16,40,0
    .goto 1413/1,-3183.48,-2015.61,40,0
    .goto 1413/1,-2646.42,-1529.16,40,0
    .goto 1413/1,-3183.48,-2015.61,40,0
    .goto 1413/1,-2646.42,-1529.16,40,0
    .goto 1413/1,-3183.48,-2015.61,40,0
    .goto 1413/1,-2646.42,-1529.16,40,0
    >>Beenden das töten der Raptoren. Plündert sie für ihre Hörner
    .complete 865,1 --Intact Raptor Horn (5)
step
    >>Sprecht mit Mankriks Frau
    .goto 1413/1,-2372.82,-1792.65
    .complete 4921,1 --Find Mankrik's Wife (1)
step
    .goto 1413/1,-1997.88,-2373.69
    .home >>Setzt euren Ruhestein ins Camp Taurajo
step
    .goto 1413/1,-1886.42,-2387.20
.target Mangletooth
>>Sprecht mit |cRXP_FRIENDLY_Quetschzahn|r
    .accept 878 >>Akzeptiert die Quest Stämme im Krieg
step
    .goto 1413/1,-1886.42,-2387.20
    .fp Camp Taurajo >> Erlernt die Camp Taurajo-Flugroute
    .fly Crossroads >>Fliege nach Das Wegekreuz
step
    .goto 1413/1,-2636.28,-434.64
.target Gazrog
>>Sprecht mit |cRXP_FRIENDLY_Gazrog|r
    .turnin 3281 >>Gebt die Quest Gestohlenes Silber ab
step
    .goto 1413/1,-2666.68,-481.94
>>Sprecht mit |cRXP_FRIENDLY_Sergra Darkthorn|r
    .turnin 905 >>Gebt die Quest Die wütenden Sensenklauen ab
.target Sergra Darkthorn
    .accept 3261 >>Akzeptiert die Quest Jorn Skyseer
step
    .goto 1413/1,-2666.68,-481.94--??
>>Sprecht mit |cRXP_FRIENDLY_Tonga Runetotem|r
    .turnin 877 >>Gebt die Quest Die Brackige Oase ab
.target Tonga Runetotem
    .accept 880 >>Akzeptiert die Quest Veränderte Wesen
step
    .goto 1413/1,-2646.42,-522.48
.target Mankrik
>>Sprecht mit |cRXP_FRIENDLY_Mankrik|r
    .turnin 4921 >>Gebt die Quest In der Schlacht vermisst ab
step
    #sticky
	#completewith next
    >>Tötet Ebenenschreiter. Plündert sie für Nieren
    .complete 821,2 --Plainstrider Kidney (5)
step
    .goto 1413/1,-1976.6,-308.30
>>Sprecht mit |cRXP_FRIENDLY_Regthar Deathgate|r
    .turnin 851 >>Gebt die Quest Verog der Derwisch ab
.target Regthar Deathgate
    .accept 852 >>Akzeptiert die Quest Hezrul Blutmal
step
    .goto 1413/1,-1976.6,-308.30
.target Regthar Deathgate
>>Sprecht mit |cRXP_FRIENDLY_Regthar Deathgate|r
    .turnin 855 >> Gebt die Quest Zentaurenarmschienen ab
    .isQuestComplete 855
step
    .goto 1413/1,-1976.6,-308.30
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
    .goto 1413/1,-2025.24,-1144.050
    >> Hezrul patrouilliert um den großen See bei den Höhlen des Wegklagens herum
    .complete 852,1 --Hezrul's Head (1)
step
	#requires CeBracers
	.goto 1413/1,-1974.58,-308.30
.target Regthar Deathgate
>>Sprecht mit |cRXP_FRIENDLY_Regthar Deathgate|r
    .turnin 852 >>Gebt die Quest Hezrul Blutmal ab
    .turnin 855 >> Gebt die Quest Zentaurenarmschienen ab
step
    .goto 1413/1,-1974.58,-308.30
.target Regthar Deathgate
>>Sprecht mit |cRXP_FRIENDLY_Regthar Deathgate|r
    .accept 4021 >>Akzeptiert die Quest Gegenangriff!
step
    >> Diese Quest kann allein sehr schwierig sein. Falls ihr niemanden zum Gruppieren habt, bildet eine Gruppe dafür oder zieht sie in die Nähe des Gebäudes des Questgebers.
    >> Überspringen falls sie zu schwer ist
    .goto 1413/1,-1869.19,-288.71
    .complete 4021,1 --Piece of Krom'zar's Banner (1)
--N Link to safespot abuse
step
    .isQuestComplete 4021
    .goto 1413/1,-1976.6,-308.98
.target Regthar Deathgate
>>Sprecht mit |cRXP_FRIENDLY_Regthar Deathgate|r
    .turnin 4021 >>Gebt die Quest Gegenangriff ab
step
    .goto 1413/1,-1410.15,443.67,80,0
    .goto 1413/1,-1166.95,545.01,80,0
    .goto 1413/1,-1460.82,585.55,80,0
    .goto 1413/1,-1410.15,443.67,80,0
    .goto 1413/1,-1166.95,545.01,80,0
    .goto 1413/1,-1460.82,585.55,80,0
    .goto 1413/1,-1410.15,443.67,80,0
    .goto 1413/1,-1166.95,545.01,80,0
    .goto 1413/1,-1460.82,585.55,80,0
    .goto 1413/1,-1410.15,443.67
    >>Tötet Töterin der Hexenschwingen. Plündert sie für Harpyienoffiziersringe
    .complete 875,1 --Harpy Lieutenant Ring (6)
step
    .goto 1413/1,-1572.28,-42.78
    >>Tötet Savannenstreuner in der Gegend. Plündert siefür ihre Hauer
    .complete 821,1 --Savannah Lion Tusk (5)
step
    .goto 1413/1,-954.15,-272.49
>>Sprecht mit |cRXP_FRIENDLY_Seereth Stonebreak|r
    .turnin 1061 >> Gebt die Quest Die Geister des Steinkrallengebirges ab
.target Seereth Stonebreak
    .accept 1062 >> Akzeptiert die Quest Goblin-Eindringlinge
.target Makaba Flathoof
>>Sprecht mit |cRXP_FRIENDLY_Makaba Flathoof|r
    .accept 6548 >> Akzeptiert die Quest Rächt mein Dorf
]])

RXPGuides.RegisterGuide([[
#forever
#disabledungeons
<< Horde Mage
#name 17-21 Steinkrallengebirge/Brachland AoE
#version 1
#group RestedXP Horde Magier AoE

#defaultfor none Horde Mage
#next 21-30 Silberwald/Hillsbrad AoE

step
    .goto 1442/1,-695.02,12.09,50,0
    .goto 1442/1,-758.5,116.29,50,0
    .goto 1442/1,-890.35,171.65,50,0
    .goto 1442/1,-773.15,-13.96,50,0
    .goto 1442/1,-695.02,12.09,50,0
    .goto 1442/1,-758.5,116.29,50,0
    .goto 1442/1,-890.35,171.65,50,0
    .goto 1442/1,-773.15,-13.96,50,0
    >>Tötet Grimtotems in der Gegend
    .complete 6548,2 --Kill Grimtotem Mercenary (x6)
    .complete 6548,1 --Kill Grimtotem Ruffian (x8)
step
    .goto 1413/1,-943.1,-265.13
>>Sprecht mit |cRXP_FRIENDLY_Makaba Flathoof|r
    .turnin 6548 >> Gebt die Quest Rächt mein Dorf ab
.target Makaba Flathoof
    .accept 6629 >> Akzeptiert die Quest Tötet Grundig Finsterwolke
step
    >>Betretet das Dorf durch den westlichen Pfad. Tötet alle 6 Schläger, bevor ihr die Quest im Inneren startet. Tötet Grundig vor dem Hauptzelt
    .goto 1442/1,-255.52,93.5,60,0
    .goto 1442/1,-367.83,109.78
    .complete 6629,1 --Kill Grundig Darkcloud (x1)
    .complete 6629,2 --Kill Grimtotem Brute (x6)
step
    >>Startet die Eskorte mit Kaya
    .goto 1442/1,-343.42,122.80
.target Kaya Flathoof
>>Sprecht mit |cRXP_FRIENDLY_Kaya Flathoof|r
    .accept 6523 >> Akzeptiert die Quest Schützt Kaya
step
     >>Begleitet Kaya und bleibt in ihrer Nähe. 3 Grimtotems erscheinen am Lagerfeuer. Esst und trinkt, bevor sie das Lager erreicht
    .goto 1442/1,-455.73,-59.55
    .complete 6523,1 --Kaya Escorted to Camp Aparaje
step
    .goto 1442/1,-240.87,-180.03
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
    .goto 1442/1,437.92,435.4,60,0
    .goto 1442/1,574.65,575.42,60,0
    .goto 1442/1,677.2,578.68,60,0
    .goto 1442/1,696.73,454.94,60,0
    .goto 1442/1,613.72,500.53,60,0
    .goto 1442/1,574.65,575.42,60,0
    .goto 1442/1,677.2,578.68,60,0
    .goto 1442/1,696.73,454.94,60,0
    .goto 1442/1,613.72,500.53,60,0
    .goto 1442/1,574.65,575.42
    .complete 6461,1 --Kill Deepmoss Creeper (x10)
    .complete 6461,2 --Kill Deepmoss Venomspitter (x7)
step
    .goto 1442/1,365.2,878.29
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
    .goto 1442/1,179.10,1168.06,40,0
    .goto 1442/1,232.82,1239.70,40,0
    .goto 1442/1,-16.23,1441.59,40,0
    .goto 1442/1,-255.52,1291.80,40,0
    .goto 1442/1,-382.48,1135.50,40,0
    .goto 1442/1,179.10,1168.06,40,0
    .complete 1093,1 --Collect Super Reaper 6000 Blueprints (x1)
step
    >>Beendet das töten von Holzfällern
    .goto 1442/1,115.62,1070.37,40,0
    .goto 1442/1,-338.53,1148.52,40,0
    .goto 1442/1,115.62,1070.37,40,0
    .goto 1442/1,-338.53,1148.52,40,0
    .goto 1442/1,115.62,1070.37,40,0
    .goto 1442/1,-338.53,1148.52,40,0
    .goto 1442/1,115.62,1070.37,40,0
    .goto 1442/1,-338.53,1148.52,40,0
    .complete 1062,1 --Kill Venture Co. Logger (x15)
step
    .goto 1442/1,365.2,878.29
>>Sprecht mit |cRXP_FRIENDLY_Ziz Fizziks|r
    .turnin 1093 >> Gebt die Quest Superschnitter 6000 ab
.target Ziz Fizziks
    .accept 1094 >> Weitere Instruktionen annehmen
step
    .hs >> Ruhestein nach Camp Taurajo
step
    .goto 1413/1,-1926.95,-2380.44
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
	.goto 1413/1,-2443.75,-1975.07,0
    .goto 1413/1,-2038.42,-1711.58,0
    .goto 1413/1,-1967.48,-1934.53,0
    .goto 1413/1,-1937.08,-1887.24,0
	>>Findet und tötet Lakota'mani (Grauer Kodo) in der Gegend. Plündert seinen Huf. Falls ihr ihn nicht findet, überspringt diese Quest.
	.collect 5099,1,883 --Collect Hoof of Lakota'Mani
	.accept 883 >>Akzeptiert die Quest Lakota'Mani
step
    >>Tötet viele Stacheleber. Plündert sie für ihre Stoßzähne. Behaltet die Blutsplitter, die ihr erhaltet
	.goto 1413/1,-1866.15,-1921.02,50,0
    .goto 1413/1,-2149.88,-1988.58,50,0
    .goto 1413/1,-1957.35,-2056.14,50,0
	.goto 1413/1,-1866.15,-1921.02,50,0
    .goto 1413/1,-2149.88,-1988.58,50,0
    .goto 1413/1,-1957.35,-2056.14,50,0
	.goto 1413/1,-1866.15,-1921.02,50,0
    .goto 1413/1,-2149.88,-1988.58,50,0
    .goto 1413/1,-1957.35,-2056.14,50,0
	.goto 1413/1,-1866.15,-1921.02,50,0
    .goto 1413/1,-2149.88,-1988.58,50,0
    .goto 1413/1,-1957.35,-2056.14,50,0
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
	.goto 1413/1,-3001.08,-1265.66
    .complete 880,1 --Altered Snapjaw Shell (8)
step
   #completewith next
	>>Tötet einen Zhevra in der Gegend. Plündert sie seinen Kadaver
	.goto 1413/1,-3558.42,-563.01
	.collect 10338,1 --Collect Fresh Zhevra Carcass
step
	#label Ishamuhale
    >>Benutzt den Frischen Zhevrakadaver beim toten Baum, um Ishamuhale zu beschwören. Tötet und plündert ihn um seinen Fangzahn
	.goto 1413/1,-3446.95,-441.40
    .complete 882,1 --Ishamuhale's Fang (1)
step
    >>Tötet Ebenenschreiter. Plündert sie für Nieren
    .complete 821,2 --Plainstrider Kidney (5)
step
	.goto 1413/1,-3730.68,-840.02
    >>Lauft zu Ratschet zurück
.target Gazlowe
>>Sprecht mit |cRXP_FRIENDLY_Gazlowe|r
    .turnin 888 >>Gebt die Quest Gestohlene Beute ab
step
    .goto 1413/1,-3761.08,-900.83
>>Sprecht mit |cRXP_FRIENDLY_Sputtervalve|r
    .turnin 1094 >>Gebt die Quest Weitere Instruktionen ab
.target Sputtervalve
    .accept 1095 >>Weitere Instruktionen annehmen
step
    .goto 1413/1,-3700.28,-927.85
.target Mebok Mizzyrix
>>Sprecht mit |cRXP_FRIENDLY_Mebok Mizzyrix|r
    .turnin 865 >>Gebt die Quest Raptorhörner ab
    .turnin 1069 >>Gebt die Quest Eier der Kluftmoosspinnen ab
step
    .goto 1413/1,-3690.15,-981.90
.target Brewmaster Drohn
>>Sprecht mit |cRXP_FRIENDLY_Braumeister Drohn|r
    .turnin 821 >>Gebt die Quest Chens leeres Fässchen ab
step
    .goto 1413/1,-3771.22,-894.07
    .fly Crossroads >>Fliege nach Das Wegekreuz
step
    .goto 1413/1,-2666.68,-481.94--??
>>Sprecht mit |cRXP_FRIENDLY_Tonga Runetotem|r
    .turnin 880 >>Gebt die Quest Veränderte Wesen ab
.target Tonga Runetotem
    .accept 1489 >>Akzeptiert die Quest Hamuul Runentotem
    .accept 3301 >>Akzeptiert die Quest Mura Runentotem
step
    .goto 1413/1,-2646.42,-522.48
.target Mankrik
>>Sprecht mit |cRXP_FRIENDLY_Mankrik|r
    .turnin 899 >>Gebt die Quest Von Hass zerfressen ab
step
    >>Oben auf dem Turm
    .goto 1413/1,-2605.88,-475.180
>>Sprecht mit |cRXP_FRIENDLY_Darsok Swiftdagger|r
    .turnin 875 >> Gebt die Quest Offiziere der Harpyien ab
.target Darsok Swiftdagger
    .accept 876 >> Akzeptiert die Quest Serena Blutfeder
step
    >>Dies startet eine zeitgesteuerte Quest
    .goto 1413/1,-2585.62,-427.89
>>Sprecht mit |cRXP_FRIENDLY_Apotheker Helbrim|r
    .turnin 848 >>Gebt die Quest Pilzsporen ab
.target Apothecary Helbrim
    .accept 853 >>Akzeptiert die Quest Apothekerin Zamah
step
    .goto 1413/1,-2595.75,-434.64
    .fly Camp Taurajo >>Fliege nach Camp Taurajo
step
    .goto 1413/1,-2747.75,-1907.51
    >>Tötet Stacheleber für einen Blutsplitter
    .collect 5075 --Blood Shard (1)
step
    .goto 1413/1,-1896.55,-2387.20
>>Sprecht mit |cRXP_FRIENDLY_Quetschzahn|r
    .turnin 878 >>Gebt die Quest Stämme im Krieg ab
.target Mangletooth
    .accept 5052 >>Akzeptiert die Quest Blutsplitter von Agamaggan
    .turnin 5052 >>Gebt die Quest Blutsplitter von Agamaggan ab
--N Different classes needing different buffs, e.g. need speed buff later for Mulgore run for classes that didnt get FP earlier
step
    .goto 1413/1,-1916.82,-2380.44
>>Sprecht mit |cRXP_FRIENDLY_Jorn Skyseer|r
    .turnin 882 >>Gebt die Quest Ishamuhale ab
.target Jorn Skyseer
    .accept 907 >>Akzeptiert die Quest Wütende Donnerechsen
    .accept 1130 >>Akzeptiert die Quest Melor schickt Kunde
step
    .goto 1413/1,-1916.82,-2380.44
    .isOnQuest 883
.target Jorn Skyseer
>>Sprecht mit |cRXP_FRIENDLY_Jorn Skyseer|r
    .turnin 883 >>Gebt die Quest Lakota'mani ab
step
    .goto 1413/1,-1916.82,-2380.44
>>Sprecht mit |cRXP_FRIENDLY_Jorn Skyseer|r
    .turnin 882 >>Gebt die Quest Ishamuhale ab
.target Jorn Skyseer
    .accept 907 >>Akzeptiert die Quest Wütende Donnerechsen
    .accept 1130 >>Akzeptiert die Quest Melor schickt Kunde
step
    #sticky
    #label Owatanka2
    #completewith next
    .goto 1413/1,-1856.02,-2583.13,0
    .goto 1413/1,-2362.68,-2616.91,0
    .goto 1413/1,-2403.22,-2441.25,0
    >>Sucht nach Owatanka (Blauer Donnerechse) in dieser Gegend. Falls ihr ihn findet, plündert seinen Schwanzstachel und startet die Quest. Falls ihr ihn nicht findet, überspringt diese Quest
    .collect 5102,1,884 --Collect Owatanka's Tailspike
    .accept 884 >>Akzeptiert die Quest Owatanka
step
    .goto 1413/1,-1683.75,-2461.52,30,0
    .goto 1413/1,-2149.88,-2691.23,30,0
    .goto 1413/1,-2443.75,-2515.57,30,0
    >>Tötet Donnerechsen. Plündert sie für ihr Blut
    .complete 907,1 --Thunder Lizard Blood (3)
step
    .goto 1413/1,-1926.95,-2380.44
>>Sprecht mit |cRXP_FRIENDLY_Jorn Skyseer|r
    .turnin 907 >>Gebt die Quest Wütende Donnerechsen ab
.target Jorn Skyseer
    .accept 913 >>Akzeptiert die Quest Der Ruf des Donnerfalken
step
    .goto 1413/1,-1926.95,-2380.44
.target Jorn Skyseer
>>Sprecht mit |cRXP_FRIENDLY_Jorn Skyseer|r
    .turnin 884 >>Gebt die Quest Owatanka ab
    .isOnQuest 884
step
    .goto 1413/1,-1926.95,-2380.44
>>Sprecht mit |cRXP_FRIENDLY_Jorn Skyseer|r
    .turnin 907 >>Gebt die Quest Wütende Donnerechsen ab
.target Jorn Skyseer
    .accept 913 >>Akzeptiert die Quest Der Ruf des Donnerfalken
step
    .goto 1413/1,-1916.82,-2657.45,30,0
    .goto 1413/1,-2139.75,-2549.35,30,0
    .goto 1413/1,-1916.82,-2657.45,30,0
    .goto 1413/1,-2139.75,-2549.35,30,0
    .goto 1413/1,-1916.82,-2657.45,30,0
    .goto 1413/1,-2139.75,-2549.35,30,0
    >>Tötet einen Donnerfalken. Plündert sie für seine Flügel
    .complete 913,1 --Thunderhawk Wings (1)
step
    .goto 1413/1,-1916.82,-2380.44
.target Jorn Skyseer
>>Sprecht mit |cRXP_FRIENDLY_Jorn Skyseer|r
    .turnin 913 >>Gebt die Quest Der Ruf des Donnerfalken ab
--    .accept 874 >>Accept Mahren Skyseer
step
    #completewith next
    .goto 1413/1,-1890.47,-2391.93
    >>Gebt Blutsplitter von Euch für den Geist des Windes Buff von Quetschzahn ab. Falls ihr versehentlich Splitter verkauft habt, überspringt diesen Schritt
.target Mangletooth
>>Sprecht mit |cRXP_FRIENDLY_Quetschzahn|r
    .turnin 889 >> Gebt die Quest Geist des Windes ab
step
    .goto 1456/1,182.67,-1315.51,60 >>Lauft zum Aufzug und nehmt ihn nach Donnerfels
step
    .goto 1456/1,38.48,-1300.28
    .home >>Setzt euren Ruhestein in Donnerfels
step
    .goto 1456/1,-125.64,-1413.06
>>Sprecht mit |cRXP_FRIENDLY_Melor Stonehoof|r
    .turnin 1130 >>Gebt die Quest Melor schickt Kunde ab
.target Melor Stonehoof
    .accept 1131 >>Akzeptiert die Quest Stahlbiss
step
 	>>Geht zu den Teichen der Visionen
	.goto 1456/1,202.5,-1058.75,30,0
	.goto 1456/1,276.6,-996.120
.target Apothecary Zamah
>>Sprecht mit |cRXP_FRIENDLY_Apothekerin Zamah|r
    .turnin 853 >> Gebt die Quest Apothekerin Zamah ab
step
    .goto 1456/1,254.06,-995.78
    .trainer >> Trainiere deine Klassenfähigkeiten
	>>Spezialisiert euch noch nicht auf AoE (falls ihr bereits auf Feuer spezialisiert seid)
step
    .goto 1456/1,220.24,-1042.75
.target Clarice Foster
>>Sprecht mit |cRXP_FRIENDLY_Clarice Foster|r
    .accept 264 >>Akzeptiert die Quest Bis dass der Tod uns scheidet
step
	.goto 1456/1,26.07,-1196.75
    .fp Thunder Bluff >> Erlernt die Flugroute nach Donnerfels
    .fly Crossroads >>Fliege nach Das Wegekreuz
step
    >>Tötet Serena Blutfeder. Plündert sie für ihren Kopf
	.goto 1413/1,-1349.35,788.24
    .complete 876,1 --Serena's Head (1)
step
    .goto 1413/1,-954.15,-272.49
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
    .goto 1442/1,-235.98,-180.03
.target Xen'Zilla
>>Sprecht mit |cRXP_FRIENDLY_Xen'Zilla|r
    .turnin 6461 >>Gebt die Quest Blutfresser ab
step
    .goto 1442/1,365.2,878.29
.target Ziz Fizziks
>>Sprecht mit |cRXP_FRIENDLY_Ziz Fizziks|r
    .turnin 1095 >>Gebt die Quest Weitere Instruktionen ab
step
    .goto 1442/1,926.25,1015.02
.target Tammra Windfield
>>Sprecht mit |cRXP_FRIENDLY_Tammra Windfield|r
    .turnin 6401 >>Gebt die Quest Kaya lebt ab
step
    .goto 1442/1,1042.47,968.13
    .fp Sun Rock>> Erlernt die Flugroute nach Sonnenfels
step
    #completewith next
    .hs >> Ruhestein nach Donnerfels
step
    .goto 1456/1,-213.96,-1065.010
>>Sprecht mit |cRXP_FRIENDLY_Magatha Grimtotem|r
    .turnin 1063 >> Gebt die Quest Die Ältestengreisin ab
.target Magatha Grimtotem
    .accept 1064 >> Akzeptiert die Quest Die Hilfe der Verlassenen
step
    .goto 1456/1,-303.93,-1048.73
>>Sprecht mit |cRXP_FRIENDLY_Erzdruide Hamuul Runetotem|r
    .turnin 1489 >> Gebt die Quest Hamuul Runentotem ab
.target Arch Druid Hamuul Runetotem
    .accept 1490 >> Akzeptiert die Quest Nara Wildmane
step
    .goto 1456/1,-272.93,-1070.02
.target Nara Wildmane
>>Sprich mit |cRXP_FRIENDLY_Nara Wildmähne|r
    .turnin 1490 >> Gebt die Quest Nara Wildmane ab
step
    .goto 1456/1,276.6,-996.12
>>Sprecht mit |cRXP_FRIENDLY_Apothekerin Zamah|r
    .turnin 1064 >> Gebt die Quest Die Hilfe der Verlassenen ab
.target Apothecary Zamah
    .accept 1065 >> Akzeptiert die Quest Reise nach Tarrens Mühle
step
    .goto 1456/1,254.06,-995.78
    .trainer >> Erlernt eure Klassenfähigkeiten, falls nötig
	>>Spezialisiert euch auf Frostschaden AoE , falls ihr das noch nicht getan habt
step
    .goto 1456/1,28.19,-1197.92
    .fly The Crossroads >>Fliege nach Das Wegekreuz
step
    .goto 1413/1,-2605.88,-475.180
	>>Geh nach oben
.target Darsok Swiftdagger
>>Sprecht mit |cRXP_FRIENDLY_Darsok Swiftdagger|r
    .turnin 876 >> Gebt die Quest Serena Blutfeder ab
step
    .goto 1413/1,-2595.75,-437.35
    .fly Orgrimmar >> Fliege nach Orgrimmar
]])
