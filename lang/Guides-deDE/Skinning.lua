if GetLocale() ~= "deDE" then return end
RXPGuides.RegisterGuide([[
#wotlk
#group Beruf Leveling
<< Horde
#name 1-450 Kürschnerei (H)
#displayname 1-450 Kürschnerei

step << Mage
    #completewith Thuwd
    .zone Orgrimmar >> Teleportieren nach Orgrimmar
    .skill skinning,75,1
step << !Mage
    #completewith next
    .hs >> Benutzt euren Ruhestein zum Dalaran
    .zoneskip Orgrimmar
    .zoneskip Dalaran
    .skill skinning,75,1
step << !Mage
    #completewith Thuwd
    .goto Dalaran,55.5,25.5
    .zone Orgrimmar >> In Dalaran nehmt das Portal nach Orgrimmar
    .skill skinning,75,1
step
    #sticky
    #label Shank
    .goto Orgrimmar,63.0,45.5,0,0
    >>Kauft ein Kürschnermesser von Tamar neben Thuwd
    .collect 7005,1 --Skinning Knife (1)
    .skill skinning,75,1
step
    #label Thuwd
    .goto Orgrimmar,62.1,45.7,20,0
    .goto Orgrimmar,63.4,45.4
    .train 8613 >> Erlernt Kürschnerlehrling (1-75) von Thuwd im Gebäude in Orgrimmar
    .skill skinning,75,1
step
    #requires Shank
    #completewith next
    .goto Durotar,45.5,12.2
    .zone Durotar >> Verlassen Orgrimmar into Durotar
    .skill skinning,75,1
step
    #requires Shank
    .openmap Durotar
    .skill skinning,75 >> Übt von Euch Kürschnerei von 1-75 in Durotar, indem ihr Bestien tötet, sie plündert und dann abhäutet. Drückt "M", um die Karte von Euch zu öffnen und die Route zu sehen.
    .loop 45,Durotar,54.5,68.2,54.2,60.1,54.7,58.9,54.5,54.3,51.2,51.8,51.1,46.6,47.4,42.7,45.7,37.7,45.0,34.3,43.0,34.9,42.6,37.0,40.8,37.0,38.5,34.3,36.5,31.3,36.9,25.0,38.5,21.7,40.8,21.1,43.0,21.4,44.4,19.2,43.5,15.7,
step << !Mage
    .goto Orgrimmar,48.8,91.0
    .zone Orgrimmar >> Reist nach Orgrimmar zurück
    .skill skinning,125,1
    .cooldown item,6948,<0,1
step << Mage
    #completewith next
    .zone Orgrimmar >> Teleportieren nach Orgrimmar
    .skill skinning,125,1
step << !Mage
    #completewith next
    .hs >> Benutzt euren Ruhestein zum Dalaran
    .skill skinning,125,1
    .zoneskip Orgrimmar
step << !Mage
    #completewith next
    .goto Dalaran,55.5,25.5
    .zone Orgrimmar >> In Dalaran nehmt das Portal nach Orgrimmar
    .skill skinning,125,1
step
    .goto Orgrimmar,62.1,45.7,20,0
    .goto Orgrimmar,63.4,45.4
    .train 8617 >> Erlernt Kürschnergeselle (75-150) von Thuwd im Gebäude in Orgrimmar
    .skill skinning,125,1
step
    #completewith next
    .goto Orgrimmar,45.1,63.9
    .fly Crossroads >> Fliege nach Das Wegekreuz
    .zoneskip The Barrens
    .skill skinning,125,1
step
    >>Versucht, mindestens Fertigkeitsstufe 125 zu erreichen, bevor ihr zu Camp Taurajo kommt
    .skill skinning,125 >> Übt von Euch Kürschnerei von 75-125 in The Barrens
    .loop 45,The Barrens,51.0,31.7,51.0,35.0,50.2,36.3,49.3,38.0,49.6,39.9,49.0,42.5,50.2,45.4,49.5,47.8,46.0,51.7,45.9,53.7,46.3,56.2,
step
    .goto The Barrens,45.1,59.1
    .train 8618 >> Erlernt Kürschnerexperte (150-225) von Dranh in Camp Taurajo
    .skill skinning,165,1
step
    .skill skinning,165 >> Übt von Euch Kürschnerei von 125-165 in The Barrens
    .loop 45,The Barrens,46.1,59.9,46.9,63.1,46.7,65.3,46.9,68.0,45.6,71.5,45.4,74.6,45.0,77.6,47.1,79.2,46.8,82.0,44.8,85.2
step
    #completewith next
    .goto Thousand Needles,32.1,22.7
    .zone Thousand Needles >> Reitet zu den Tausend Nadeln
    .skill skinning,205,1
step
    .skill skinning,205 >> Übt von Euch Kürschnerei von 165-205 in den Tausend Nadeln
    .loop 45,Thousand Needles,31.4,25.4,30.8,28.2,31.4,31.2,30.0,34.2,29.9,41.7,31.2,47.5,32.2,52.4,38.8,56.7,42.9,59.7,48.4,59.4,53.3,54.0,57.7,56.5,61.7,60.1,66.6,61.6,69.9,62.7,72.1,67.7,71.8,74.2,72.9,81.3,77.4,84.0,80.9,87.7,78.6,91.1,75.7,89.7
step
    .goto Feralas,88.8,41.4,-1
    .goto Tanaris,51.3,21.4,-1
    .zone Tanaris >> Reist nach Feralas oder Tanaris, je nachdem, was näher ist
    .skill skinning,230,1
    .zoneskip Feralas
step
    #completewith next
    .goto Tanaris,51.6,25.4
    .fly Camp Mojache >> Fliege nach Camp Mojache
    .skill skinning,230,1
    .zoneskip Feralas
step
    .goto Feralas,74.7,43.0,12,0
    .goto Feralas,74.5,43.0
    .train 10768 >> Erlernt Fachmännische Kürschnerei (225-300) von Kulleg im großen Zelt in Camp Mojache
    .skill skinning,230,1
step
    .skill skinning,230 >> Übt von Euch Kürschnerei von 205-230 in Feralas
    .loop 45,Feralas,72.3,44.4,71.1,41.5,74.4,40.7,76.7,39.4,76.7,39.4,79.2,38.3,79.7,39.9,79.2,44.1,78.9,46.2,78.3,47.8,76.5,48.7,75.4,51.9,73.1,54.6,
step
    >>Tötet die Yetis in der Höhle oder die Hippogryphen draußen, dann häutet sie
    .skill skinning,260 >> Übt von Euch Kürschnerei von 230-260 in Feralas
    .loop 45,Feralas,58.7,55.0,57.2,56.4,55.3,56.3,56.2,58.3,55.5,62.1,56.1,63.9,54.6,65.4,53.4,68.5,53.8,70.0,54.5,73.6,56.3,73.5,55.5,69.9
step
    >>Tötet die Yetis in der Höhle oder die Bestien draußen, dann häutet sie
    .skill skinning,280 >> Übt von Euch Kürschnerei von 260-280 in Feralas
    .loop 45,Feralas,48.4,37.9,49.9,33.7,52.,31.8,49.4,31.5,49.5,29.3,50.1,26.4,47.6,24.5,45.8,24.6,46.5,27.5,46.3,29.9
step
    #completewith next
    .goto Feralas,75.4,44.4
    >>Reitet zurück nach Camp Mojache
    .fly Marshal's Refuge >> Fliegt nach Marschalls Zuflucht
    .zoneskip Un'Goro Crater
    .skill skinning,300,1
step
    .skill skinning,300 >> Übt von Euch Kürschnerei von 280-300 im Krater von Un'Goro
    .loop 45,Un'Goro Crater,31.5,28.9,37.1,28.9,42.1,33.4,42.7,40.2,40.7,45.1,34.3,44.6,29.4,40.0,29.4,34.4,31.5,28.9
step << Mage
    #completewith next
    .zone Shattrath City >> Teleportiert nach Shattrath
    .skill skinning,305,1
    .zoneskip Hellfire Peninsula
step << !Mage
    #completewith next
    .hs >> Benutzt euren Ruhestein zum Dalaran
    .skill skinning,305,1
    .zoneskip Hellfire Peninsula
step << !Mage
    #completewith next
    .goto Dalaran,37.3,66.2
    .zone Shattrath City >> In Dalaran nehmt das Portal nach Shattrath
    .skill skinning,305,1
    .zoneskip Hellfire Peninsula
step
    #completewith Moorutu
    .goto Shattrath City,64.1,41.1
    .fly Thrallmar >> Fliegt nach Thrallmar
    .skill skinning,305,1
    .skill riding,300,1
    .zoneskip Hellfire Peninsula
step
    #completewith next
    .goto Hellfire Peninsula,56.3,38.6
    .zone Hellfire Peninsula >> Fliegt zu Thrallmar in Höllenfeuerhalbinsel auf von Euch fliegendem Reittier
    .skill skinning,305,1
    .skill riding,<300,1
step
    #label Moorutu
    .goto Hellfire Peninsula,56.3,38.6
    .train 32678 >> Erlernt Meister Kürschnerei (300-375) von Moorutu in Thrallmar
    .skill skinning,305,1
step
    >>Tötet Verhungern Helboars, then skin them
    .skill skinning,305 >> Übt von Euch Kürschnerei von 300-305 in der Höllenfeuerhalbinsel
    .loop 45,Hellfire Peninsula,61.6,57.2,63.3,61.3,65.3,61.8,68.9,62.0,70.1,64.5,68.1,66.2,65.1,66.6,63.8,69.4,63.6,73.1,63.4,77.2,60.9,77.7,59.0,74.1,56.6,71.8
step
    >>Tötet Verstörter Höllenebers, then skin them
    .skill skinning,310 >> Übt von Euch Kürschnerei von 305-310 in der Höllenfeuerhalbinsel
    .loop 45,Hellfire Peninsula, 47.7,77.9,47.5,73.2,48.6,69.8,49.3,66.7,51.0,66.1,52.4,69.7,53.2,74.0,51.6,78.0,49.6,79.5,47.7,77.9
step
    >>Tötet Razorfang Hatchlings und Messerklauenfelshetzers, then skin them
    .skill skinning,330 >> Übt von Euch Kürschnerei von 310-330 in der Höllenfeuerhalbinsel
    .loop 45,Hellfire Peninsula,41.1,82.5,35.2,87.4,34.7,91.1,37.2,91.8,40.3,88.5,42.4,85.3,41.1,82.5
step << Mage
    #completewith next
    .zone Shattrath City >> Teleportiert nach Shattrath
    .skill skinning,375,1
    .zoneskip Nagrand
step
    #completewith next
    .goto Nagrand,77.4,54.6
    .zone Nagrand >> Fliegt nach Nagrand on von Euch flying mount
    .skill skinning,375,1
step
    >>Tötet Talbuks und Clefthoofs, then skin them
    .skill skinning,350 >> Übt von Euch Kürschnerei von 330-350 in Nagrand
    .loop 45,Nagrand,51.3,37.6,52.3,33.6,54.1,30.0,52.8,26.1,50.6,25.3,48.4,26.8,46.6,27.2,46.6,33.6,46.5,40.3,47.0,45.1,49.2,49.2,53.5,53.8,55.3,52.8,57.3,49.8,60.1,48.4,62.0,46.1,60.6,43.4,57.9,42.5,54.7,42.5,52.7,40.7,51.3,37.6
step << !Mage
    #completewith next
    .goto Shattrath City,52.3,52.5,40,0
    .zone Orgrimmar >> Nehmt ein Portal nach Orgrimmar
    .skill skinning,375,1
    .cooldown item,6948,<0,1
step << !Mage
    #completewith next
    .goto Orgrimmar,52.6,85.4,40,0
    .goto Durotar,41.4,18.0,40,0
    .skill skinning,375,1
    .cooldown item,6948,<0,1
    .zone Borean Tundra >> Klettert auf den Zeppelin-Turm. Nehmt den Zeppelin nach Boreanische Tundra
step << Mage
    #completewith next
    .zone Dalaran >> Nach Dalaran teleportieren
    .skill skinning,375,1
    .zoneskip Borean Tundra
step << !Mage
    #completewith next
    .hs >> Benutzt euren Ruhestein zum Dalaran
    .zoneskip Shattrath City
    .skill skinning,375,1
step << !Mage
    #completewith next
    .goto Borean Tundra,42.6,53.2
    .zone Borean Tundra >> Fliegt nach Boreanische Tundra on von Euch flying mount
    .skill skinning,375,1
    .skill riding,<300,1
step << !Mage
    #completewith next
    .goto Dalaran,71.8,45.6
    .fly Taunka'le Village >> Fliegt nach Boreanische Tundra (Taunka'le)
    .skill skinning,375,1
    .skill riding,300,1
    .zoneskip Borean Tundra
step
    #label Tiponi
    .goto Borean Tundra,76.2,37.6
    .train 50305 >> Erlernt Großmeister Kürschnerei (350-450) von Tiponi Stormwhisper in Taunka'le
    .skill skinning,375,1
step
    #label BoreanTundra
    .skill skinning,375 >> Übt von Euch Kürschnerei von 350-375 in der Boreanischen Tundra
    .loop 20,Borean Tundra,47.3,39.4,44.7,39.8,42.2,42.6,40.6,42.8,42.1,48.0,42.2,48.9,47.9,48.0,47.3,39.4
    .loop 20,Borean Tundra,49.7,74.3,43.4,76.4,40.1,73.8,40.6,70.3,45.8,69.7,48.7,68.9,50.7,66.7,52.1,68.7,49.7,74.3
step << Mage
    #completewith next
    .zone Dalaran >> Nach Dalaran teleportieren
    .skill skinning,400,1
    .zoneskip Zul'Drak
step << !mage
    #completewith next
    .hs >> Benutzt euren Ruhestein zum Dalaran
    .skill skinning,400,1
    .zoneskip Zul'Drak
step << !Mage
    #completewith next
    .zone Zul'Drak >> Fliegt nach Zul'Drak on von Euch flying mount
    .skill skinning,400,1
    .skill riding,<300,1
step << !Mage
    #completewith next
    .goto Dalaran,71.8,45.6
    .fly The Argent Stand >> Fliegt nach Zul'Drak (Die Argentumwache)
    .skill skinning,400,1
    .skill riding,300,1
    .zoneskip Borean Tundra
step
    #label ZulDrak
    .skill skinning,400 >> Levelt Eure Kürschnerei von 375-400 in Zul'Drak
    .loop 20,Zul'Drak,34.7,58.1,34.5,46.1,37.1,46.5,43.3,49.2,43.5,36.8,46.4,36.0,46.3,50.8,39.9,58.2,34.7,58.1
step
    #completewith next
    .zone The Storm Peaks >> Fliegt zu Sturmgipfel auf von Euch fliegendem Reittier
    .skill skinning 450,1
step
    .skill skinning,400 >> Levelt Eure Kürschnerei von 400-450 im Sturmgipfel
    .loop 20,The Storm Peaks,60.6,61.7,59.9,57.5,57.9,58.7,56.4,63.4,53.5,65.5,56.0,68.2,60.6,61.7,
step
    +Herzlich Glückwunsch zum Erreichen von Fertigkeitsstufe 450 in Kürschnerei!
]])

RXPGuides.RegisterGuide([[
#wotlk
#group Beruf Leveling
<< Alliance
#name 1-450 Kürschnerei (A)
#displayname 1-450 Kürschnerei

step << Mage
    #completewith Maris
    .zone Stormwind City >> Teleportieren nach Sturmwind
    .skill skinning,75,1
step << !Mage
    #completewith next
    .hs >> Benutzt euren Ruhestein zum Dalaran
    .skill skinning,75,1
    .zoneskip Stormwind City
step << !Mage
    .goto Dalaran,38.9,62.6
    .zone Stormwind City >> In Dalaran nehmt das Portal nach Sturmwind
    .skill skinning,75,1
step
    #sticky
    #label Shank
    .goto Stormwind City,71.6,62.8,0,0
    >>Kauft ein Kürschnermesser von Jillian neben Simon
    .collect 7005,1 --Skinning Knife (1)
    .skill skinning,75,1
step
    #label Maris
    .goto Stormwind City,72.6,62.1,12,0
    .goto Stormwind City,72.1,62.2
    .train 8613 >> Erlernt Kürschnerlehrling (1-75) von Maris im Haus in Sturmwind
    .skill skinning,75,1
step
    #requires Shank
    #completewith next
    .goto Elwynn Forest,32.3,49.9
    .zone Elwynn Forest >> Verlassen Sturmwind into Wald von Elwynn
    .skill skinning,75,1
step
    #requires Shank
    .openmap Elwynn Forest
    .skill skinning,75 >> Übt von Euch Kürschnerei von 1-75 in Elwynn, indem ihr Eber tötet, sie plündert und dann abhäutet. Drückt "M", um die Karte von Euch zu öffnen und die Route zu sehen.
	.loop 25,Elwynn Forest,32.6,83.0,31.0,85.6,32.6,87.8,33.6,85.4,32.6,83.0
step << Mage
    #completewith next
    .zone Ironforge >> Teleportiere dich nach Ironforge
    .skill skinning,125,1
step << !Mage
    .goto Stormwind City,68.2,72.9,20,0
    .goto Stormwind City,71.0,72.5
    >>Rückkehr nach Sturmwind
    .fly Ironforge
    .zone Ironforge >> Lauf nach Ironforge
    .zoneskip Ironforge
    .skill skinning,125,1
    .cooldown item,6948,<0,1
step << !Mage
    #completewith next
    .hs >> Benutzt euren Ruhestein zum Dalaran
    .skill skinning,125,1
    .zoneskip Ironforge
step << !Mage
    #completewith next
    .goto Dalaran,39.2,63.7
    .zone Ironforge >> In Dalaran, nehmt das Portal nach Eisenschmiede
    .skill skinning,125,1
step
    .goto Ironforge,42.1,33.2,15,0
    .goto Ironforge,40.4,35.5,12,0
    .goto Ironforge,39.9,32.5
    .train 8617 >> Erlernt Kürschnergeselle (75-150) von Balthus im Haus in Eisenschmiede
    .skill skinning,125,1
step
    #completewith next
    .goto Ironforge,55.5,47.7
    .fly Thelsamar >> Fliege nach Thelsamar
    .skill skinning,125,1
    .zoneskip Loch Modan
step
    .skill skinning,115 >> Übt von Euch Kürschnerei von 75-115 in Loch Modan
    .loop 45,Loch Modan,34.4,53.8,37.7,52.3,41.7,54.4,44.4,64.1,49.9,69.3,55.6,66.9,63.9,63.4,59.4,62.0,63.0,57.0,64.3,48.7,62.2,38.9,59.9,36.9,59.5,29.8,58.9
step
    .skill skinning,125 >> Übt von Euch Kürschnerei von 115-125 in Loch Modan
    .loop 45,Loch Modan,61.5,40.9,72.4,41.8,76.8,47.9,77.4,41.4,59.9,28.0,61.5,40.9
step << Mage
    #completewith next
    .zone Ironforge >> Teleportiere dich nach Ironforge
    .skill skinning,155,1
step << !Mage
    .goto Loch Modan,33.9,51.0
    >>Kehrt nach Thelsamar zurück
    .fly Ironforge
    .zone Ironforge >> Lauf nach Ironforge
    .zoneskip Ironforge
    .skill skinning,155,1
    .cooldown item,6948,<0,1
step << !Mage
    #completewith next
    .hs >> Benutzt euren Ruhestein zum Dalaran
    .skill skinning,155,1
    .zoneskip Ironforge
step << !Mage
    #completewith next
    .goto Dalaran,39.2,63.7
    .zone Ironforge >> In Dalaran, nehmt das Portal nach Eisenschmiede
    .skill skinning,155,1
step
    .goto Ironforge,42.1,33.2,15,0
    .goto Ironforge,40.4,35.5,12,0
    .goto Ironforge,39.9,32.5
    .train 8618 >> Erlernt Kürschnerexperte (150-225) von Balthus im Haus in Eisenschmiede
    .skill skinning,155,1
step
    #completewith next
    .goto Ironforge,55.5,47.7
    .fly Menethil >> Fliege zum Hafen von Menethil
    .skill skinning,155,1
    .zoneskip Wetlands
step
    .skill skinning,155 >> Übt von Euch Kürschnerei von 140-155 im Sumpfland
    .loop 45,Wetlands,31.9,42.0,30.4,45.1,29.9,47.5,27.7,46.7,26.6,47.8,26.5,49.7,24.6,53.8,22.7,57.4,20.2,54.4,18.9,50.7
step
    #completewith next
    .goto Wetlands,9.5,59.7
    >>Reitet zurück nach Menethil
    .fly Refuge Pointe >> Fliegt zur Zuflucht
    .zoneskip Arathi Highlands
step
    .skill skinning,185 >> Übt von Euch Kürschnerei von 155-185 im Arathihochland
    .loop 45,Arathi Highlands,44.9,52.8,47.0,54.9,49.7,50.6,52.4,46.0,55.2,48.3,59.4,45.1,64.4,45.4,68.6,39.1,66.8,34.3,64.3,38.0,59.6,38.4,55.5,42.9,51.3,40.4,46.5,41.1,43.3,38.7,42.0,43.4,40.7,48.4,36.2,49.8
step
    .skill skinning,205 >> Übt von Euch Kürschnerei von 185-205 im Arathihochland
    .loop 45,Arathi Highlands,47.2,69.9,46.8,73.0,45.7,76.4,45.6,81.2,48.2,82.6,51.1,74.4,54.1,69.9,56.6,68.0,54.9,62.9,48.7,60.6,47.2,69.9
step << Mage
    #completewith next
    .zone Ironforge >> Teleportiere dich nach Ironforge
    .skill skinning,230,1
step << !Mage
    .goto Arathi Highlands,45.8,46.1
    >>Kehrt zur Zuflucht zurück
    .fly Ironforge
    .zone Ironforge >> Lauf nach Ironforge
    .zoneskip Ironforge
    .skill skinning,230,1
    .cooldown item,6948,<0,1
step << !Mage
    #completewith next
    .hs >> Benutzt euren Ruhestein zum Dalaran
    .skill skinning,230,1
    .zoneskip Ironforge
step << !Mage
    #completewith next
    .goto Dalaran,39.2,63.7
    .zone Ironforge >> In Dalaran, nehmt das Portal nach Eisenschmiede
    .skill skinning,230,1
step
    .goto Ironforge,42.1,33.2,15,0
    .goto Ironforge,40.4,35.5,12,0
    .goto Ironforge,39.9,32.5
    .train 10768 >> Erlernt Fachmännische Kürschnerei (225-300) von Balthus im Haus in Eisenschmiede
    .skill skinning,230,1
step << Mage
    #completewith next
    .zone Dustwallow Marsh >> Teleportieren nach Theramore
    .skill skinning,230,1
step << !Mage
    #completewith next
    .goto Ironforge,55.5,47.7
    .fly Menethil >> Fliegt nach Hafen von Menethil. Oder bezahlt einen Magier für ein Portal nach Theramore
    .skill skinning,230,1
    .zoneskip Dustwallow Marsh
    .zoneskip Feralas
step << !Mage
    .goto Wetlands,5.0,63.5
    .zone Dustwallow Marsh >> Nehmt das Boot nach Düstermarschen (Theramore)
    .skill skinning,230,1
    .zoneskip Feralas
step
    #completewith next
    .goto Dustwallow Marsh,67.5,51.3
    .fly Thalanaar >> Fliege nach Thalanaar
    .skill skinning,230,1
    .zoneskip Feralas
step
    .skill skinning,230 >> Übt von Euch Kürschnerei von 205-230 in Feralas
    .loop 45,Feralas,72.3,44.4,71.1,41.5,74.4,40.7,76.7,39.4,76.7,39.4,79.2,38.3,79.7,39.9,79.2,44.1,78.9,46.2,78.3,47.8,76.5,48.7,75.4,51.9,73.1,54.6,
step
    >>Tötet die Yetis in der Höhle oder die Hippogryphen draußen, dann häutet sie
    .skill skinning,260 >> Übt von Euch Kürschnerei von 230-260 in Feralas
    .loop 45,Feralas,58.7,55.0,57.2,56.4,55.3,56.3,56.2,58.3,55.5,62.1,56.1,63.9,54.6,65.4,53.4,68.5,53.8,70.0,54.5,73.6,56.3,73.5,55.5,69.9
step
    >>Tötet die Yetis in der Höhle oder die Bestien draußen, dann häutet sie
    .skill skinning,280 >> Übt von Euch Kürschnerei von 260-280 in Feralas
    .loop 45,Feralas,48.4,37.9,49.9,33.7,52.,31.8,49.4,31.5,49.5,29.3,50.1,26.4,47.6,24.5,45.8,24.6,46.5,27.5,46.3,29.9
step << Mage
    #completewith next
    .zone Dustwallow Marsh >> Teleportieren nach Theramore
    .skill skinning,300,1
step
    #completewith next
    .goto Dustwallow Marsh,67.5,51.3 << Mage
    .goto Feralas,30.2,43.2 << !Mage
    >>Reist nach Mondfederfeste << !Mage
    .fly Marshal's Refuge >> Fliegt nach Marschalls Zuflucht
    .skill skinning,300,1
    .zoneskip Un'Goro Crater
step
    .skill skinning,300 >> Übt von Euch Kürschnerei von 280-300 im Krater von Un'Goro
    .loop 45,Un'Goro Crater,31.5,28.9,37.1,28.9,42.1,33.4,42.7,40.2,40.7,45.1,34.3,44.6,29.4,40.0,29.4,34.4,31.5,28.9
step << Mage
    #completewith next
    .zone Shattrath City >> Teleportiert nach Shattrath
    .skill skinning,330,1
    .zoneskip Hellfire Peninsula
step << !Mage
    #completewith next
    .hs >> Benutzt euren Ruhestein zum Dalaran
    .skill skinning,330,1
    .zoneskip Hellfire Peninsula
step >> !mage
    #completewith next
    .goto Dalaran,37.2,66.4
    .zone Shattrath City >> In Dalaran nehmt das Portal nach Shattrath
    .skill skinning,330.1
    .zoneskip Hellfire Peninsula
step
    #completewith Jelena
    .goto Shattrath City,64.1,41.1
    .fly Honor Hold >> Fliegt nach Ehrenfeste
    .skill skinning,330,1
    .skill riding,300,1
    .zoneskip Hellfire Peninsula
step
    #completewith next
    .goto Hellfire Peninsula,56.7,63.8
    .zone Hellfire Peninsula >> Fliegt auf Eurem fliegenden Reittier nach Ehrenfeste in der Höllenfeuerhalbinsel
    .skill skinning,330,1
    .skill riding,<300,1
step
    #label Jelena
    .goto Hellfire Peninsula,54.9,63.6,12,0
    .goto Hellfire Peninsula,54.5,63.2
    .train 32678 >> Erlernt Großmeister Kürschnerei (300-375) von Jelena in der Taverne in Ehrenfeste
    .skill skinning,305,1
step
    >>Tötet Verhungern Helboars, then skin them
    .skill skinning,305 >> Übt von Euch Kürschnerei von 300-305 in der Höllenfeuerhalbinsel
    .loop 45,Hellfire Peninsula,61.6,57.2,63.3,61.3,65.3,61.8,68.9,62.0,70.1,64.5,68.1,66.2,65.1,66.6,63.8,69.4,63.6,73.1,63.4,77.2,60.9,77.7,59.0,74.1,56.6,71.8
step
    >>Tötet Verstörter Höllenebers, then skin them
    .skill skinning,310 >> Übt von Euch Kürschnerei von 305-310 in der Höllenfeuerhalbinsel
    .loop 45,Hellfire Peninsula, 47.7,77.9,47.5,73.2,48.6,69.8,49.3,66.7,51.0,66.1,52.4,69.7,53.2,74.0,51.6,78.0,49.6,79.5,47.7,77.9
step
    >>Tötet Razorfang Hatchlings und Messerklauenfelshetzers, then skin them
    .skill skinning,330 >> Übt von Euch Kürschnerei von 310-330 in der Höllenfeuerhalbinsel
    .loop 45,Hellfire Peninsula,41.1,82.5,35.2,87.4,34.7,91.1,37.2,91.8,40.3,88.5,42.4,85.3,41.1,82.5
step << Mage
    #completewith next
    .zone Shattrath City >> Teleportiert nach Shattrath
    .skill skinning,350,1
    .zoneskip Nagrand
step << !Mage
    #completewith next
    .hs >> Benutzt euren Ruhestein zum Shattrath
    .skill skinning,350,1
    .zoneskip Nagrand
    .cooldown item,6948,>0,1
step
    #completewith next
    .goto Nagrand,77.4,54.6
    .zone Nagrand >> Fliegt nach Nagrand on von Euch flying mount
    .skill skinning,350,1
step
    >>Tötet Talbuks und Clefthoofs, then skin them
    .skill skinning,350 >> Steigert Eure Kürschnerei von 330-375 in Nagrand
    .loop 45,Nagrand,51.3,37.6,52.3,33.6,54.1,30.0,52.8,26.1,50.6,25.3,48.4,26.8,46.6,27.2,46.6,33.6,46.5,40.3,47.0,45.1,49.2,49.2,53.5,53.8,55.3,52.8,57.3,49.8,60.1,48.4,62.0,46.1,60.6,43.4,57.9,42.5,54.7,42.5,52.7,40.7,51.3,37.6
step << Mage
    #completewith next
    .zone Dalaran >> Nach Dalaran teleportieren
    .skill skinning,375,1
step << !Mage
    #completewith next
    .hs >> Benutzt euren Ruhestein zum Dalaran
    .skill skinning,375,1
step
    #completewith next
    .goto Dalaran,72.4,45.5
    .fly Valiance Keep >> Fliegt nach Boreanische Tundra (Valianzfeste)
    .skill riding,300,1
    .skill skinning,375,1
step
    #completewith next
    .goto Borean Tundra,57.6,71.8 >> Fliegt nach Valianzfeste in der Boreanischen Tundra auf dem fliegenden Reittier von Euch
    .skill riding,<300,1
    .skill skinning,375,1
step
    #label Jack
    .train 50305 >> Erlernt Großmeister Kürschnerei (350-450) von Fallensteller Kürbo in Valianzfeste
    .skill skinning,375,1
step
    .skill skinning 375 >> Steigert Eure Kürschnerei von 350-375 in der Boreanischen Tundra
    .loop 20,Borean Tundra,47.3,39.4,44.7,39.8,42.2,42.6,40.6,42.8,42.1,48.0,42.2,48.9,47.9,48.0,47.3,39.4
    .loop 20,Borean Tundra,49.7,74.3,43.4,76.4,40.1,73.8,40.6,70.3,45.8,69.7,48.7,68.9,50.7,66.7,52.1,68.7,49.7,74.3
step << Mage
    #completewith next
    .zone Dalaran >> Nach Dalaran teleportieren
    .skill skinning,400,1
    .zoneskip Zul'Drak
step << !mage
    #completewith next
    .hs >> Benutzt euren Ruhestein zum Dalaran
    .skill skinning,400,1
    .zoneskip Zul'Drak
step << !Mage
    #completewith next
    .zone Zul'Drak >> Fliegt nach Zul'Drak on von Euch flying mount
    .skill skinning,400,1
    .skill riding,<300,1
step << !Mage
    #completewith next
    .goto Dalaran,71.8,45.6
    .fly The Argent Stand >> Fliegt nach Zul'Drak (Die Argentumwache)
    .skill skinning,400,1
    .skill riding,300,1
    .zoneskip Borean Tundra
step
    #label ZulDrak
    .skill skinning,400 >> Levelt Eure Kürschnerei von 375-400 in Zul'Drak
    .loop 20,Zul'Drak,34.7,58.1,34.5,46.1,37.1,46.5,43.3,49.2,43.5,36.8,46.4,36.0,46.3,50.8,39.9,58.2,34.7,58.1
step
    #completewith next
    .zone The Storm Peaks >> Fliegt zu Sturmgipfel auf von Euch fliegendem Reittier
    .skill skinning 450,1
step
    .skill skinning,400 >> Levelt Eure Kürschnerei von 400-450 im Sturmgipfel
    .loop 20,The Storm Peaks,60.6,61.7,59.9,57.5,57.9,58.7,56.4,63.4,53.5,65.5,56.0,68.2,60.6,61.7,
step
    +Herzlich Glückwunsch zum Erreichen von Fertigkeitsstufe 450 in Kürschnerei!
]])
