if GetLocale() ~= "deDE" then return end
local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#classic
#tbc
<< Human Mage
#name 1-10 Wald von Elwynn Magier AoE
#version 1
#group RestedXP Allianz Magier
#defaultfor Human
#next 10-12 Loch Modan Magier AoE Guide
step
    #sticky
    #completewith next
    .goto Elwynn Forest,48.171,42.943
    +Ihr habt einen Leitfaden für Menschen ausgewählt. Ihr solltet die gleiche Startzone wählen, in der ihr startet << Gnome
    +Hinweis, dass ihr den AoE-Guide ausgewählt habt. AoE ist normalerweise viel schwieriger als Einzelziel-Magier, aber VIEL schneller
step
    >>Zerstört euren Ruhestein
    .goto Elwynn Forest,48.171,42.943
.target Deputy Willem
>>Sprecht mit |cRXP_FRIENDLY_Deputy Willem|r
    .accept 783 >> Akzeptiert die Quest Die Bedrohung von innen
step
    .goto Elwynn Forest,48.923,41.606
>>Sprecht mit |cRXP_FRIENDLY_Marshal McBride|r
    .turnin 783 >> Gebt die Quest Die Bedrohung von innen ab
.target Marshal McBride
    .accept 7 >> Akzeptiert die Quest Säuberung im Koboldlager
step
    .goto Elwynn Forest,48.171,42.943
.target Deputy Willem
>>Sprecht mit |cRXP_FRIENDLY_Deputy Willem|r
    .accept 5261 >> Akzeptiert die Quest Eagan Peltskinner
step
    .goto Elwynn Forest,46.2,40.4
    .vendor >>Tötet Wölfe, bis ihr Items im Wert von 50c habt, dann kauft 10x Wasser von Bruder Danil
    .collect 159,10 --Collect Refreshing Spring Water (x10)
step
    .xp 2 >> Farmt bis Stufe 2
step
    .goto Elwynn Forest,48.9,40.2
>>Sprecht mit |cRXP_FRIENDLY_Eagan Peltskinner|r
    .turnin 5261 >> Gebt die Quest Eagan Peltskinner ab
.target Eagan Peltskinner
    .accept 33 >> Akzeptiert die Quest Wölfe an der Grenze
step
    .goto Elwynn Forest,46.1,40.7,40,0
    .goto Elwynn Forest,46.2,37.6,40,0
    .goto Elwynn Forest,47.6,37.2,40,0
    .goto Elwynn Forest,46.1,40.7,40,0
    .goto Elwynn Forest,46.2,37.6,40,0
    .goto Elwynn Forest,47.6,37.2,40,0
    >>Tötet Junge Wölfe in der Gegend für Fleisch
    .complete 33,1 --Collect Tough Wolf Meat (x8)
step
    .goto Elwynn Forest,47.4,35.3,40,0
    .goto Elwynn Forest,49.7,36.2,40,0
    .goto Elwynn Forest,47.4,35.3,40,0
    .goto Elwynn Forest,49.7,36.2,40,0
    .goto Elwynn Forest,47.4,35.3,40,0
    .goto Elwynn Forest,49.7,36.2,40,0
    >>Tötet Koboldgezücht in der Umgebung
    .complete 7,1 --Kill Kobold Vermin (x10)
step
    .goto Elwynn Forest,48.9,40.2
.target Eagan Peltskinner
>>Sprecht mit |cRXP_FRIENDLY_Eagan Peltskinner|r
    .turnin 33 >> Gebt die Quest Wölfe an der Grenze ab
step
    .goto Elwynn Forest,47.6,41.5
    .vendor >>Verkauft Müll, dann kauft 10x mehr Wasser von Bruder Danil
step
    .goto Elwynn Forest,48.923,41.606
>>Sprecht mit |cRXP_FRIENDLY_Marshal McBride|r
    .turnin 7 >> Gebt die Quest Säuberung im Koboldlager ab
.target Marshal McBride
    .accept 15 >> Akzeptiert die Quest Überprüfung der Echokammmine
    .accept 3104 >> Akzeptiert die Quest Glyphen-Brief
step
    .xp 3 >> Farmt bis Stufe 3
step
    .goto Elwynn Forest,47.5,36.3,40,0
    .goto Elwynn Forest,46.6,32.2,40,0
    .goto Elwynn Forest,48.6,34.0,40,0
    .goto Elwynn Forest,47.5,36.3,40,0
    .goto Elwynn Forest,46.6,32.2,40,0
    .goto Elwynn Forest,48.6,34.0,40,0
    >>Tötet Koboldtagelöhner
    .complete 15,1 --Kill Kobold Worker (x10)
step
    .goto Elwynn Forest,47.7,41.4
    .xp 3+1110 >>Farmt bis 1110+/1400 XP auf dem Weg zurück zur Stadt
step
    .goto Elwynn Forest,47.7,41.4
    .vendor >>Verkauft Müll
step
    .goto Elwynn Forest,48.923,41.606
>>Sprecht mit |cRXP_FRIENDLY_Marshal McBride|r
    .turnin 15 >> Gebt die Quest Überprüfung der Echokammmine ab
.target Marshal McBride
    .accept 21 >> Akzeptiert die Quest Scharmützel in der Echokammmine
step
    >>Geh nach oben
    .goto Elwynn Forest,49.3,40.7,15,0
    .goto Elwynn Forest,49.5,40.0,15,0
    .goto Elwynn Forest,49.661,39.402
.target Khelden Bremen
>>Sprecht mit |cRXP_FRIENDLY_Khelden Bremen|r
    .turnin 3104 >> Gebt die Quest Glyphen-Brief ab
    .trainer >> Trainiere deine Klassenfähigkeiten
step
    .goto Elwynn Forest,48.171,42.943
.target Deputy Willem
>>Sprecht mit |cRXP_FRIENDLY_Deputy Willem|r
    .accept 18 >> Akzeptiert die Quest Bruderschaft der Diebe
step
    .goto Elwynn Forest,53.7,52.2,60,0
    .goto Elwynn Forest,55.7,47.4,60,0
    .goto Elwynn Forest,54.7,41.9,60,0
    .goto Elwynn Forest,53.7,52.2,60,0
    .goto Elwynn Forest,55.7,47.4,60,0
    .goto Elwynn Forest,54.7,41.9,60,0
    >>Tötet Rohling der Defias. Plündert sie für Rotes Sackleinenkopftuch
    .complete 18,1 --Collect Red Burlap Bandana (x12)
step
    .goto Elwynn Forest,48.171,42.943
>>Sprecht mit |cRXP_FRIENDLY_Deputy Willem|r
    .turnin 18 >> Gebt die Quest Bruderschaft der Diebe ab
.target Deputy Willem
    .accept 6 >> Akzeptiert die Quest Kopfgeld auf Garrick Padfoot
    .accept 3903 >> Akzeptiert die Quest Milly Osworth
step
    .goto Elwynn Forest,47.7,41.4
    .vendor >>Verkauft Müll und repariert
step
    .goto Elwynn Forest,54.7,41.9,60,0
    .goto Elwynn Forest,47.7,31.7,60,0
    .goto Elwynn Forest,50.4,27.0,60,0
    .goto Elwynn Forest,47.7,31.7,60,0
    .goto Elwynn Forest,50.4,27.0,60,0
    .goto Elwynn Forest,47.7,31.7,60,0
    .goto Elwynn Forest,50.4,27.0,60,0
    .goto Elwynn Forest,47.7,31.7,60,0
    .goto Elwynn Forest,50.4,27.0,60,0
    >>Tötet Arbeiter in der Mine
    .complete 21,1 --Kill Kobold Laborer (x12)
step
    .xp 5 >> Farmt bis Stufe 5
step
    #era/som
    .goto Elwynn Forest,50.7,39.2
>>Sprecht mit |cRXP_FRIENDLY_Milly Osworth|r
    .turnin 3903 >> Gebt die Quest Milly Osworth ab
.target Milly Osworth
    .accept 3904 >> Akzeptiert die Quest Millys Ernte
step
    #som
    #phase 3-6
    .goto Elwynn Forest,50.7,39.2
.target Milly Osworth
>>Sprecht mit |cRXP_FRIENDLY_Milly Osworth|r
    .turnin 3903 >> Gebt die Quest Milly Osworth ab
step
    #era/som
    >>Plündert die Traubeneimer im Feld
    .goto Elwynn Forest,54.5,49.4
    .complete 3904,1 --Collect Milly's Harvest (x8)
step
    .goto Elwynn Forest,57.5,48.2
    >>Tötet Garrick plündere seinen Kopf
    .complete 6,1 --Collect Garrick's Head (x1)
step
    .xp 5+1175 >> Farmt auf dem Weg zurück bis 1175+/2800xp
    .goto Elwynn Forest,50.7,39.2
step
    #era/som
    .goto Elwynn Forest,50.7,39.2
>>Sprecht mit |cRXP_FRIENDLY_Milly Osworth|r
    .turnin 3904 >> Gebt die Quest Millys Ernte ab
.target Milly Osworth
    .accept 3905 >>Akzeptiert die Quest Traubenliste
step
    .goto Elwynn Forest,48.171,42.943
.target Deputy Willem
>>Sprecht mit |cRXP_FRIENDLY_Deputy Willem|r
    .turnin 6 >> Gebt die Quest Kopfgeld auf Garrick Padfoot ab
step
    .goto Elwynn Forest,48.923,41.606
>>Sprecht mit |cRXP_FRIENDLY_Marshal McBride|r
    .turnin 21 >> Gebt die Quest Scharmützel in der Echokammmine ab
.target Marshal McBride
    .accept 54 >> Akzeptiert die Quest Meldung in Goldhain
step
     #era/som
     >>Geht die Haupttreppe hinauf
    .goto Elwynn Forest,49.6,41.6,15,0
    .goto Elwynn Forest,48.9,41.3,15,0
    .goto Elwynn Forest,49.471,41.586
.target Brother Neals
>>Sprecht mit |cRXP_FRIENDLY_Bruder Neals|r
    .turnin 3905 >>Gebt die Quest Traubenliste ab
step
    .goto Elwynn Forest,45.6,47.7
.target Falkhaan Isenstrider
>>Sprecht mit |cRXP_FRIENDLY_Falkhaan Isenstrider|r
    .accept 2158 >> Akzeptiert die Quest Ruhe und Entspannung
step
    #softcore
    #sticky
    #completewith next
    .goto Elwynn Forest,39.5,60.5,200 >> Stirb und spawne beim Geistheiler oder lauf nach Goldhain
step
    .goto Elwynn Forest,41.7,65.9
    .vendor >> Verkauft Müll und repariert
step
    .goto Elwynn Forest,42.105,65.927
>>Sprecht mit |cRXP_FRIENDLY_Marshal Dughan|r
    .turnin 54 >> Gebt die Quest Meldung in Goldhain ab
.target Marshal Dughan
    .accept 62 >> Die Fargodeep Mine annehmen
step
    .goto Elwynn Forest,42.9,65.7,15,0
    >>Direkt links neben dir, wenn du das Gasthaus betrittst
    .goto Elwynn Forest,43.283,65.721
.target William Pestle
>>Sprecht mit |cRXP_FRIENDLY_William Pestle|r
    .accept 60 >> Koboldkerzen annehmen
step
    .goto Elwynn Forest,43.771,65.803
.target Innkeeper Farley
>>Sprich mit |cRXP_FRIENDLY_Gastwirt Farley|r
    .turnin 2158 >> Gebt die Quest Ruhe und Entspannung ab
    .home >> Setzt euren Ruhestein in Goldhain
step
    .xp 6 >> Grinde bis 6
step
    .goto Elwynn Forest,43.7,66.4,12,0
    .goto Elwynn Forest,43.2,66.2
    .trainer >> Geht nach oben und lernt eure Klassenfähigkeiten
step
    .goto Elwynn Forest,42.1,67.3
.target Remy "Two Times"
>>Sprecht mit |cRXP_FRIENDLY_Remy "Zweifach"|r
    .accept 47 >> Tauschhandel mit Goldstaub annehmen
step
    #sticky
    #completewith BoarMeat1
    >>Beginne damit, Eber für Eberfleisch zu töten
    .collect 769,4 --Collect Chunk of Boar Meat (x4)
step
    .goto Elwynn Forest,34.486,84.253
.target "Auntie" Bernice Stonefield
>>Sprecht mit |cRXP_FRIENDLY_"Tantchen" Bernice Stonefield|r
    .accept 85 >> Verlorene Halskette annehmen
    .goto Elwynn Forest,34.660,84.482
.target Ma Stonefield
>>Sprecht mit |cRXP_FRIENDLY_Mutter Stonefield|r
    .accept 88 >> Prinzessin muss sterben! annehmen
step
    #sticky
    #completewith Candles
    >> Sammel Kerzen von den Kobolden in der Nähe
    .complete 60,1 --Collect Kobold Candle (x8)
step
    #sticky
    #label Candles
    #completewith next
    >> Sammelt Goldstaub von den nahegelegenen Kobolden
    .complete 47,1 --Collect Gold Dust (x10)
step
    #label Dust
    >>Farmt Gegner im Osten außerhalb der Mine
    .goto Elwynn Forest,43.132,85.722
>>Sprecht mit |cRXP_FRIENDLY_Billy Maclure|r
    .turnin 85 >> Gebt die Quest Die verlorene Halskette ab
.target Billy Maclure
    .accept 86 >> Kuchen für Billy annehmen
step
    #label BoarMeat1
    .goto Elwynn Forest,43.2,89.6
.target Maybell Maclure
>>Sprecht mit |cRXP_FRIENDLY_Maybell Maclure|r
    .accept 106 >> Junge liebende annehmen
step
    .goto Elwynn Forest,42.4,89.4
    .vendor >>Kauft so viel Milch wie möglich vom Verkäufer
step
    #sticky
    #completewith next
    >>Tötet Eber, die ihr seht, für Eberfleisch
    .collect 769,4 --Collect Chunk of Boar Meat (x4)
step
    .goto Elwynn Forest,29.840,85.997
>>Sprecht mit |cRXP_FRIENDLY_Tommy Joe Stonefield|r
    .turnin 106 >> Gebt die Quest Junge Liebende ab
.target Tommy Joe Stonefield
    .accept 111 >> Gespräch mit Oma annehmen
step
    .goto Elwynn Forest,32.5,85.5
    >>Beendet das Sammeln von Eberfleisch
    .complete 86,1 --Collect Chunk of Boar Meat (x4)
step
    .goto Elwynn Forest,34.486,84.253
>>Sprecht mit |cRXP_FRIENDLY_"Tantchen" Bernice Stonefield|r
    .turnin 86 >> Gebt die Quest Pastete für Billy ab
.target "Auntie" Bernice Stonefield
    .accept 84 >> Zurück zu Billy annehmen
step
    .goto 1429,34.945,83.855
>>Sprecht mit |cRXP_FRIENDLY_Oma Stonefield|r
    .turnin 111 >> Gebt die Quest Gespräch mit Oma ab
.target Gramma Stonefield
    .accept 107 >> Nachricht an William annehmen
step
    #sticky
    #label KoboldCandles
    >> Sammel Kerzen von den Kobolden in der Nähe
    .complete 60,1 --Collect Kobold Candle (x8)
step
    #sticky
    #label GoldDust
    >> Sammelt Goldstaub von den nahegelegenen Kobolden
    .complete 47,1 --Collect Gold Dust (x10)
step
    >>Farmt Gegner im Osten außerhalb der Mine
    .goto Elwynn Forest,43.132,85.722
>>Sprecht mit |cRXP_FRIENDLY_Billy Maclure|r
    .turnin 84 >> Gebt die Quest Zurück zu Billy ab
.target Billy Maclure
    .accept 87 >> Goldzahn annehmen
step
    >>Geht in die Mine
    .goto Elwynn Forest,40.5,82.3
    .complete 62,1 --Scout Through the Fargodeep Mine
step
    >>Tötet Goldzahn für Bernices Halskette
    .goto Elwynn Forest,41.7,78.1
    .complete 87,1 --Collect Bernice's Necklace  (x1)
step
    .xp 7+1600 >>Farmt bis 1600+/4500xp
step
#hidewindow
    #requires KoboldCandles
step
    #label Goldtooth
    #requires GoldDust
    .goto Elwynn Forest,34.486,84.253
.target "Auntie" Bernice Stonefield
>>Sprecht mit |cRXP_FRIENDLY_"Tantchen" Bernice Stonefield|r
    .turnin 87 >> Gebt die Quest Goldzahn ab
step
    >>Farmt einige Gegner auf dem Weg zurück nach Goldhain
    .xp 7+2690 >>Farmt bis 2690+/4500xp
    .goto Elwynn Forest,42.1,67.3
step
    .goto Elwynn Forest,42.1,67.3
>>Sprecht mit |cRXP_FRIENDLY_Remy "Zweifach"|r
    .turnin 47 >> Gebt die Quest Tauschhandel mit Goldstaub ab
.target Remy "Two Times"
    .accept 40 >> Gefahr aus dem Wasser annehmen
step
    .goto Elwynn Forest,41.7,65.9
    .vendor >>Verkauft Müll und repariert
step
    .goto Elwynn Forest,42.105,65.927
>>Sprecht mit |cRXP_FRIENDLY_Marshal Dughan|r
    .turnin 40 >> Gebt die Quest Gefahr aus dem Wasser ab
.target Marshal Dughan
    .accept 35 >> Weitere Sorgen annehmen
    .turnin 62 >> Die Fargodeep Mine abgeben
    .accept 76 >> Die Jaspismine annehmen
step
    .goto Elwynn Forest,41.7,65.9
    .vendor >> Verkauft Müll und repariert
step
    .goto Elwynn Forest,43.283,65.721
>>Sprecht mit |cRXP_FRIENDLY_William Pestle|r
    .turnin 60 >> Koboldkerzen abgeben
.target William Pestle
    .accept 61 >> Lieferung nach Sturmwind annehmen
    .turnin 107 >> Gebt die Quest Nachricht an William ab
    .accept 112 >> Kristalltangwedel einsammeln
step
    .xp 8 >> Grinde bis 8
step
    .money <0.1250
    .goto Elwynn Forest,44.0,65.9
    .vendor >>Kauft einen 6er-Platz-Beutel von Brog
step
    .goto Elwynn Forest,43.7,66.4,12,0
    .goto Elwynn Forest,43.2,66.2
    .trainer >> Geht nach oben und lernt eure Klassenfähigkeiten
step
    .goto Elwynn Forest,43.771,65.803
    .vendor >>Kauft bis zu 40x Wasser für Level 5
step
    >>Farmt Murlocs im Osten und plündert sie für Kristalltangwedel. Tötet auch Gegner auf der Insel, wenn ihr noch welche braucht
    .goto Elwynn Forest,47.6,63.3,60,0
    .goto Elwynn Forest,51.4,64.6,50,0
    .goto Elwynn Forest,57.6,62.8,50,0
    .goto Elwynn Forest,56.4,66.6,50,0
    .goto Elwynn Forest,53.8,66.8,50,0
    .complete 112,1 --Collect Crystal Kelp Frond (x4)
step
    >>Geht in die Mine und folgt dem mittleren Weg
    .goto Elwynn Forest,61.8,54.0,60,0
    .goto Elwynn Forest,60.4,50.2
    .complete 76,1 --Scout through the Jasperlode Mine
step
    .goto Elwynn Forest,73.973,72.179
>>Sprecht mit |cRXP_FRIENDLY_Wache Thomas|r
    .turnin 35 >> Gebt die Quest Weitere Sorgen ab
.target Guard Thomas
    .accept 37 >> Akzeptiert die Quest Suche nach den vermissten Wachen
    .accept 52 >> Akzeptiert die Quest Grenzschutz
step
    #sticky
    #completewith Prowlers
    >>Tötet Streuner, während ihr andere Quests erledigt
    .complete 52,1 --Kill Prowler (x8)
step
    #sticky
    #completewith Bears
    >>Tötet Bären, während ihr andere Quests erledigst. Tötet jeden, den ihr seht
    .complete 52,2 --Kill Young Forest Bear (x5)
step
    .goto Elwynn Forest,72.7,60.3
    .turnin 37 >> Gebt die Quest Suche nach den vermissten Wachen ab
    .accept 45 >> Akzeptiert die Quest Rolfs Schicksal
step
    .goto Elwynn Forest,81.382,66.112
.target Supervisor Raelen
>>Sprecht mit |cRXP_FRIENDLY_Vorsteherin Raelen|r
    .accept 5545 >> Ein Bündel Probleme annehmen
step
    .goto Elwynn Forest,83.3,66.1
    .vendor >> Verkauft Müll und repariert
step
    #sticky
    #completewith Bundles
    >>Achtet auf die Holzbündel am Fuße der Bäume
    .collect 13872,8 --Collect Bundle of Wood (x8)
step
    #label Bundles
    .goto Elwynn Forest,79.8,55.5,60 >> Geht zur Leiche des Wächters
step
    .goto Elwynn Forest,79.8,55.5
    >> Tötet die Gegner um die Leiche. Zieht die 2 Gegner vor den Hütten, zieht euch zurück und verwandelt einen, während ihr den anderen tötet, dann tötet den verwandelten Gegner. Plündert die Leiche auf dem Boden
    >> Seid vorsichtig, da diese Quest schwierig sein kann
    .turnin 45 >> Gebt die Quest Rolfs Schicksal ab
    .accept 71 >> Meldung bei Thomas annehmen
step
    .goto Elwynn Forest,76.8,62.4,40,0
    .goto Elwynn Forest,83.7,59.4,40,0
    .goto Elwynn Forest,76.8,62.4,40,0
    .goto Elwynn Forest,83.7,59.4,40,0
    .goto Elwynn Forest,76.8,62.4,40,0
    .goto Elwynn Forest,83.7,59.4,40,0
    >>Lauft zurück und beendet das Sammeln der Bündel
    .collect 13872,8 --Collect Bundle of Wood (x8)
step
    #label Bundles2
    .goto Elwynn Forest,81.382,66.112
.target Supervisor Raelen
>>Sprecht mit |cRXP_FRIENDLY_Vorsteherin Raelen|r
    .turnin 5545 >> Gebt die Quest Ein Bündel Probleme ab
step
    #label Prowlers
    .xp 9 >> Grinde bis 9
step
    #label Bears
    .goto Elwynn Forest,79.457,68.789
.target Sara Timberlain
>>Sprecht mit |cRXP_FRIENDLY_Sara Timberlain|r
    .accept 83 >> Akzeptiert die Quest Rote Leinenwaren
step
    .goto Elwynn Forest,76.7,75.6,40,0
    .goto Elwynn Forest,79.7,83.7,40,0
    .goto Elwynn Forest,82.0,76.8,40,0
    .goto Elwynn Forest,76.7,75.6,40,0
    .goto Elwynn Forest,79.7,83.7,40,0
    .goto Elwynn Forest,82.0,76.8,40,0
    >>Tötet die letzten Gegner für Grenzschutz
    .complete 52,1 --Kill Prowler (x8)
    .complete 52,2 --Kill Young Forest Bear (x5)
step
    .goto Elwynn Forest,73.973,72.179
>>Sprecht mit |cRXP_FRIENDLY_Wache Thomas|r
    .turnin 52 >> Gebt die Quest Grenzschutz ab
    .turnin 71 >> Gebt die Quest Meldung an Thomas ab
.target Guard Thomas
    .accept 39 >> Akzeptiert die Quest Zustellung von Thomas' Bericht
.target Deputy Rainer
.target Marshal Haggard
.target Marshal Dughan
.target Farmer Furlbrow
.target Farmer Saldean
>>Sprecht mit |cRXP_FRIENDLY_Bauer Saldean|r
-->>Talk to |cRXP_FRIENDLY_Farmer Furlbrow|r
-->>Talk to |cRXP_FRIENDLY_Marshal Dughan|r
--
-->>Talk to |cRXP_FRIENDLY_Marshal Haggard|r
-->>Talk to |cRXP_FRIENDLY_Deputy Rainer|r
    .accept 109 >> Akzeptiert die Quest Meldung bei Gryan Stoutmantle
step
    #sticky
    #completewith Princess
    >>Achtet auf die Westfall-Urkunde von den Defias (seltener drop)
    .collect 1972,1,184 --Collect Westfall Deed (x1)
    .accept 184 >> Furlbrows Urkunde annehmen
step
    .goto Elwynn Forest,70.5,77.6,60,0
    .goto Elwynn Forest,68.1,77.5,60,0
    .goto Elwynn Forest,68.2,81.4,60,0
    .goto Elwynn Forest,70.8,80.9,60,0
    .goto Elwynn Forest,70.5,77.6,60,0
    .goto Elwynn Forest,68.1,77.5,60,0
    .goto Elwynn Forest,68.2,81.4,60,0
    .goto Elwynn Forest,70.8,80.9,60,0
    .goto Elwynn Forest,70.5,77.6,60,0
    .goto Elwynn Forest,68.1,77.5,60,0
    .goto Elwynn Forest,68.2,81.4,60,0
    .goto Elwynn Forest,70.8,80.9,60,0
    >>Umrundet die Farm, tötet die Defias und plündert sie für Rotes Leinenkopftuch
    .complete 83,1 --Collect Red Linen Bandana (x6)
    .isOnQuest 83
step
    #label Princess
    .goto Elwynn Forest,69.4,79.2
    >>Tötet Prinzessin. Benutzt einen Geringen Heiltrank von vorhin, wenn nötig. Plündert sie für das Messinghalsband
    >>Ihr könnt auch zwischen den Zäunen am Rand der Farm hin und her springen, um Prinzessin und ihre Gefolgsschweine zu töten
    .complete 88,1 --Collect Brass Collar (x1)
--N link
step
    #softcore
    #sticky
    #completewith next
    .goto Elwynn Forest,83.6,69.7,120 >>Sterbt und respawnt beim Geistheiler, wenn ihr wenig Leben habt, sonst lauft zurück und gebt die Quest ab
step
    .goto Elwynn Forest,79.5,68.9
.target Sara Timberlain
>>Sprecht mit |cRXP_FRIENDLY_Sara Timberlain|r
    .turnin 83 >> Gebt die Quest Rote Leinenwaren ab
    .isQuestComplete 83
step
    .goto Redridge Mountains,7.87,73.85
    .zone Redridge Mountains >>Farmt auf dem Weg ins Rotkammgebirge
step
    #softcore
    #sticky
    #completewith next
    +Sterbt hier absichtlich an den Mobs
    .goto Redridge Mountains,11.2,78.4
step
    #softcore
    >>Respawnt beim Geistheiler
    .goto Redridge Mountains,20.8,56.6,100 >>Respawnt beim Geistheiler
step
    #softcore
    .goto Redridge Mountains,30.6,59.4
    .fp Redridge Mountains >> Erlernt die Flugroute zum Rotkammgebirge
step
    #hardcore
    >>Lauft zur Flugroute. Seid vorsichtig: Versucht keine Aggro von den mobs auf eurem weg zu ziehen. Bleibt auf der Straße und achtet auf Mobs.
    .goto Redridge Mountains,30.6,59.4
    .fp Redridge Mountains >> Erlernt die Flugroute zum Rotkammgebirge
step
    .hs >> Ruhestein nach Goldhain
step
    .goto Elwynn Forest,43.283,65.721
    >>Wartet nicht auf sein Rollenspiel Event
.target William Pestle
>>Sprecht mit |cRXP_FRIENDLY_William Pestle|r
    .turnin 112 >> Gebt die Quest Die Suche nach dem Tang ab
step
    .goto Elwynn Forest,42.2,65.8
>>Sprecht mit |cRXP_FRIENDLY_Marshal Dughan|r
    .turnin 39 >> Gebt die Quest Zustellung von Thomas' Bericht ab
    .turnin 76 >> Gebt die Quest Die Jaspismine ab
.target Marshal Dughan
    .accept 239 >> Akzeptiert die Quest Hilfe für die Weststromgarnison!
step
    .goto Elwynn Forest,41.706,65.544
.target Smith Argus
.target Verner Osgood
>>Sprich mit |cRXP_FRIENDLY_Verner Gutmark|r
-->>Talk to |cRXP_FRIENDLY_Smith Argus|r
    .accept 1097 >> Elmores Aufgabe annehmen
step
    .goto Elwynn Forest,41.7,65.9
    .vendor >>Verkauft Müll und repariert
step
    .goto Elwynn Forest,43.283,65.721
.target William Pestle
>>Sprecht mit |cRXP_FRIENDLY_William Pestle|r
    .accept 114 >> Akzeptiert die Quest Die Flucht
step
    >>Lauft aus dem Gasthaus und geht nach Süden
    .goto Elwynn Forest,43.2,89.6
.target Maybell Maclure
>>Sprecht mit |cRXP_FRIENDLY_Maybell Maclure|r
    .turnin 114 >> Gebt die Quest Die Flucht ab
step
    .goto Elwynn Forest,34.660,84.482
.target Ma Stonefield
>>Sprecht mit |cRXP_FRIENDLY_Mutter Stonefield|r
    .turnin 88 >> Gebt die Quest Prinzessin muss sterben! ab
step
    .goto Elwynn Forest,24.2,74.5
.target Deputy Rainer
>>Sprecht mit |cRXP_FRIENDLY_Deputy Rainer|r
    .turnin 239 >> Gebt die Quest Hilfe für die Weststromgarnison ab
step
    .isOnQuest 184
    .goto Westfall,60.0,19.4
.target Farmer Furlbrow
>>Sprecht mit |cRXP_FRIENDLY_Bauer Furlbrow|r
    .turnin 184 >> Gebt die Quest Furlbrows Urkunde ab
step
    .goto Westfall,59.918,19.416
.target Verna Furlbrow
>>Sprecht mit |cRXP_FRIENDLY_Verna Furlbrow|r
    .accept 36 >> Akzeptiert die Quest Westfalleintopf
step
    .goto Westfall,56.416,30.519
.target Salma Saldean
>>Sprecht mit |cRXP_FRIENDLY_Salma Saldean|r
    .turnin 36 >> Gebt die Quest Westfalleintopf ab
step
    #softcore
    #sticky
    #completewith next
    .goto Westfall,51.7,49.4,150 >> Sterbt absichtlich und belebt euch beim Geistheiler wieder, oder lauft zu Späherkuppe
step
    .goto Westfall,56.327,47.520
.target Gryan Stoutmantle
>>Sprich mit |cRXP_FRIENDLY_Gryan Starkmantel|r
    .turnin 109 >> Gebt die Quest Meldung bei Gryan Stoutmantle ab
step
    .goto Westfall,57.002,47.169
    .vendor >>Verkauft Müll
.target Quartermaster Lewis
>>Sprecht mit |cRXP_FRIENDLY_Rüstmeister Lewis|r
    .accept 6181 >> Akzeptiert die Quest Eine eilige Nachricht
step
    #phase 3-6
    .goto Westfall,56.416,30.519
    .xp 11+3750 >> Farmt bis 3750+/8800 XP
step
    .goto Westfall,56.6,52.6
    .fp Sentinel Hill >> Holt euch den Flugpunkt der Späherkuppe
>>Sprecht mit |cRXP_FRIENDLY_Thor|r
    .turnin 6181 >> Gebt die Quest Eine eilige Nachricht ab
.target Thor
    .accept 6281 >> Akzeptiert die Quest Weiter nach Sturmwind
    .fly Stormwind >> Fliege nach Sturmwind
step
    .goto StormwindClassic,56.2,64.6
    >>Wählt Raketen. Diese richten sehr hohen Schaden an und können zum splitpullen verwendet werden
.target Morgan Pestle
>>Sprecht mit |cRXP_FRIENDLY_Morgan Pestle|r
    .turnin 61 >> Gebt die Quest Lieferung nach Sturmwind ab
step
    #era/som
    .goto StormwindClassic,57.1,57.7
    .trainer >> Erlernt 1h Schwerter
step
    .goto StormwindClassic,74.3,47.2
.target Osric Strang
>>Sprecht mit |cRXP_FRIENDLY_Osric Strang|r
    .turnin 6281 >> Gebt die Quest Weiter nach Sturmwind ab
    >>Verkaufe und Repariere
step
    #completewith next
    .goto StormwindClassic,51.8,12.1
.target Grimand Elmore
>>Sprecht mit |cRXP_FRIENDLY_Grimand Elmore|r
    .turnin 1097 >> Gebt die Quest Elmores Aufgabe ab
step
    .goto StormwindClassic,51.8,12.1
.target Grimand Elmore
>>Sprecht mit |cRXP_FRIENDLY_Grimand Elmore|r
    .accept 353 >> Akzeptiert die Quest Stormpikes Lieferung
step
    #sticky
    #completewith next
    .goto StormwindClassic,63.9,8.3,20 >>Betretet die Tiefenbahn
step
    >>Besteigt die Tiefenbahn, wenn sie ankommt, und steigt aus, wenn sie auf der anderen Seite ankommt
.target Monty
>>Sprecht mit |cRXP_FRIENDLY_Monty|r
    .accept 6661 >> Akzeptiert die Quest Tiefenbahn-Ratten-Razzia
step
    >>Benutzt die Flöte auf den Ratten, die überall verstreut sind
    .complete 6661,1 --Rats Captured (x5)
step
.target Monty
>>Sprecht mit |cRXP_FRIENDLY_Monty|r
    .turnin 6661 >> Gebt die Quest Tiefenbahn-Ratten-Razzia ab
step
    .goto Ironforge,77.0,51.0,30 >>Betretet Eisenschmiede
step
    .goto Ironforge,55.501,47.742
    .fp Ironforge >> Holt euch den Flugpunkt in Eisenschmiede
step
    #phase 3-6
    .goto Ironforge,27.17,8.57
     .trainer >> Trainiere deine Klassenfähigkeiten
step
    #sticky
    #completewith next
    .goto Dun Morogh,53.5,34.9,100 >>Lauft aus Eisenschmiede
step
    .goto Dun Morogh,60.1,52.6,50,0
    .goto Dun Morogh,63.1,49.8
.target Rudra Amberstill
>>Sprecht mit |cRXP_FRIENDLY_Rudra Amberstill|r
    .accept 314 >> Akzeptiert die Quest Die Herde beschützen
step
    #sticky
    #completewith next
    .goto Dun Morogh,62.3,50.3,14,0
    .goto Dun Morogh,62.2,49.4,12 >> Lauft diesen Teil des Berges hinauf
step
    >>Tötet Vagash. Plündert ihn für Fangzahn von Vagash
    >>Lockt ihn zur Wache südlich der Ranch. Achtet darauf, dass ihr 51%+ Schaden an ihm verursacht
    >>Seid vorsichtig, da diese Quest schwierig sein kann
    .goto Dun Morogh,62.6,46.1
    .goto Dun Morogh,62.78,54.60,0
    .complete 314,1 --Collect Fang of Vagash (1)
--N add video tutorial
step
    .goto Dun Morogh,63.1,49.8
.target Rudra Amberstill
>>Sprecht mit |cRXP_FRIENDLY_Rudra Amberstill|r
    .turnin 314 >> Gebt die Quest Die Herde beschützen ab
step
    >>Farmt ein bisschen auf dem Weg
    .goto Dun Morogh,68.6,54.7
    .vendor >>Verkauft, kauft Essen und Wasser
step
    .goto Dun Morogh,68.7,56.0
.target Senator Mehr Stonehallow
>>Sprecht mit |cRXP_FRIENDLY_Senator Mehr Stonehallow|r
    .accept 433 >> Akzeptiert die Quest Im Dienste des Volkes
step
    .goto Dun Morogh,69.084,56.330
.target Foreman Stonebrow
>>Sprecht mit |cRXP_FRIENDLY_Großknecht Stonebrow|r
    .accept 432 >> Akzeptiert die Quest Diese verfluchten Troggs!
step
    .goto Dun Morogh,70.6,56.6,30,0
    .goto Dun Morogh,70.8,53.3,30,0
    .goto Dun Morogh,71.9,50.7,30,0
    .goto Dun Morogh,72.9,53.1,30,0
    .goto Dun Morogh,70.6,56.6,30,0
    .goto Dun Morogh,70.8,53.3,30,0
    .goto Dun Morogh,71.9,50.7,30,0
    .goto Dun Morogh,72.9,53.1,30,0
    >>Tötet die Troggs in der Höhle
    .complete 432,1 --Kill Rockjaw Skullthumper (6)
    .complete 433,1 --Kill Rockjaw Bonesnapper (10)
step
    #era/som
    .xp 10+6350 >>Farmt bis 6350+/7600
step
    .goto Dun Morogh,69.084,56.330
.target Foreman Stonebrow
>>Sprecht mit |cRXP_FRIENDLY_Großknecht Stonebrow|r
    .turnin 432 >> Gebt die Quest Diese verfluchten Troggs! ab
step
    #completewith next
    .goto Dun Morogh,68.9,55.9
    .vendor >> Verkauft Müll und repariert
step
    .goto Dun Morogh,68.7,56.0
.target Senator Mehr Stonehallow
>>Sprecht mit |cRXP_FRIENDLY_Senator Mehr Stonehallow|r
    .turnin 433 >> Gebt die Quest Im Dienste des Volkes ab
step
    #era/som--xpgate
    .xp 11
step
    .goto Dun Morogh,68.6,54.7
    .vendor >>Verkauft Müll, kaufe 30x Wasser der Stufe 5 von Kazan
    .trainer >> Erlernt Kochkunst von Ghilm. Ihr braucht dies, um später 2 zusätzliche Quests anzunehmen
step
    .goto Dun Morogh,83.892,39.188
.target Pilot Hammerfoot
>>Sprecht mit |cRXP_FRIENDLY_Pilot Hammerfoot|r
    .accept 419 >> Akzeptiert die Quest Der vermisste Pilot
step
    .goto Dun Morogh,79.7,36.2
    .turnin 419 >> Gebt die Quest Der vermisste Pilot ab
    .accept 417 >> Akzeptiert die Quest Pilotenrache
step
    >>Tötet Marterklaue. Plündert sie für seine Räudige Klaue
    .goto Dun Morogh,80.0,36.4
    .complete 417,1 --Collect Mangy Claw (x1)
step
    .goto Dun Morogh,83.892,39.188
.target Pilot Hammerfoot
>>Sprecht mit |cRXP_FRIENDLY_Pilot Hammerfoot|r
    .turnin 417 >> Gebt die Quest Pilotenrache ab
step
    .goto Dun Morogh,84.4,31.1,25 >>Geht durch den Tunnel nach Loch Modan
]])

RXPGuides.RegisterGuide([[
#classic
#tbc
<< Gnome Mage
#name 1-10 Dun Morogh Magier AoE
#version 1
#group RestedXP Allianz Magier
#defaultfor Dwarf/Gnome
#next 10-12 Loch Modan Magier AoE Guide
step
    #era/som
    #sticky
    #completewith next
    .goto Dun Morogh,29.927,71.201
    +Ihr habt einen Leitfaden für Gnome und Zwerge ausgewählt. Ihr solltet die gleiche Startzone wählen, in der ihr startet << Human
    +Hinweis, dass ihr den AoE-Guide ausgewählt habt. AoE ist normalerweise viel schwieriger als Einzelziel-Magier, aber VIEL schneller
step
    #phase 3-6
    #sticky
    #completewith next
    .goto Dun Morogh,29.927,71.201
    +Ihr habt einen Leitfaden für Gnome und Zwerge ausgewählt. Ihr solltet die gleiche Startzone wählen, in der ihr startet << Human
    +Hinweis:Ihr habt den AoE-Leitfaden ausgewählt. AoE ist normalerweise viel schwieriger als Single-Target-Magie, aber mit den neuen 100%-Quest-XP-Änderungen ist es auch langsamer.
step
    >>Zerstört euren Ruhestein
    .goto Dun Morogh,29.927,71.201
.target Sten Stoutarm
>>Sprecht mit |cRXP_FRIENDLY_Sten Stoutarm|r
    .accept 179 >> Akzeptiert die Quest Zwergenausstatter
step
    >>Tötet Wölfe. Plündert sie für Fleisch
    .goto Dun Morogh,28.7,74.8
    .complete 179,1 --Collect Tough Wolf Meat (x8)
step
    .xp 2 >> Farmt bis Stufe 2
step
    .goto Dun Morogh,30.0,71.5
    >>verkauft Müll. Kauft 15 Wasser. Farmt zusätzliche Wölfe, wenn ihr nicht genug Geld habt
    .collect 159,15 --Collect Refreshing Spring Water (x15)
step
    .goto Dun Morogh,29.927,71.201
>>Sprecht mit |cRXP_FRIENDLY_Sten Stoutarm|r
    .turnin 179 >> Gebt die Quest Zwergenausstatter ab
.target Sten Stoutarm
    .accept 233 >> Akzeptiert die Quest Postbeförderung im Coldridgetal
    .accept 3114 >> Akzeptiert die Quest Glyphen-Memorandum
step
    .goto Dun Morogh,29.7,71.2
.target Balir Frosthammer
>>Sprecht mit |cRXP_FRIENDLY_Balir Frosthammer|r
    .accept 170 >> Akzeptiert die Quest Eine neue Bedrohung
step
    #sticky
    #completewith Rockjaw
    >>Tötet normale Trogg der Felsenkiefer, die ihr seht
    .complete 170,1 --Kill Rockjaw Trogg (x6)
step
    .goto Dun Morogh,26.9,72.7,30,0
    .goto Dun Morogh,25.1,72.1,30,0
    .goto Dun Morogh,26.9,72.7,30,0
    .goto Dun Morogh,25.1,72.1,30,0
    >>Tötet Bulliger Trogg der Felsenkiefer
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
step
    .goto Dun Morogh,22.601,71.433
>>Sprecht mit |cRXP_FRIENDLY_Talin Keeneye|r
    .turnin 233 >> Gebt die Quest Postbeförderung im Eisklammtal ab
.target Talin Keeneye
    .accept 183 >> Akzeptiert die Quest Der Eberjäger
    .accept 234 >> Akzeptiert die Quest Postbeförderung im Coldridgetal
step
    .goto Dun Morogh,22.2,72.5,40,0
    .goto Dun Morogh,20.5,71.4,40,0
    .goto Dun Morogh,21.1,69.0,40,0
    .goto Dun Morogh,22.8,69.6,40,0
    .goto Dun Morogh,22.2,72.5,40,0
    .goto Dun Morogh,20.5,71.4,40,0
    .goto Dun Morogh,21.1,69.0,40,0
    .goto Dun Morogh,22.8,69.6,40,0
    >>Tötet Eber in der Umgebung
    .complete 183,1 --Kill Small Crag Boar (x12)
step
    .goto Dun Morogh,22.601,71.433
.target Talin Keeneye
>>Sprecht mit |cRXP_FRIENDLY_Talin Keeneye|r
    .turnin 183 >> Gebt die Quest Der Eberjäger ab
step
    .xp 3+860 >> Farmt bis 860+/1400xp
    .goto Dun Morogh,23.0,75.0,40,0
    .goto Dun Morogh,24.2,72.5,40,0
    .goto Dun Morogh,27.7,76.3,40,0
    .goto Dun Morogh,23.0,75.0,40,0
    .goto Dun Morogh,24.2,72.5,40,0
    .goto Dun Morogh,27.7,76.3,40,0
step
    #label Rockjaw
    .goto Dun Morogh,25.076,75.713
>>Sprecht mit |cRXP_FRIENDLY_Grelin Whitebeard|r
    .turnin 234 >> Gebt die Quest Postbeförderung im Eisklammtal ab
.target Grelin Whitebeard
    .accept 182 >> Akzeptiert die Quest Die Trollhöhle
step
    .goto Dun Morogh,25.0,76.0
.target Nori Pridedrift
>>Sprecht mit |cRXP_FRIENDLY_Nori Pridedrift|r
    .accept 3364 >> Akzeptiert die Quest Lieferung des kochend heißen Morgengebräus
    >> Einmal akzeptiert startet ein 5-Minuten-Timer. Entspannt euch und folgt dem Leitfaden
step
    .goto Dun Morogh,28.7,77.5
    >>Geht hier hoch und tötet Troggs, falls ihr noch nicht damit fertig seid
    .complete 170,1 --Kill Rockjaw Trogg (x6)
step
    #sticky
    #completewith Scalding1
    >>Falls ihr zu langsam wart und die getimte Quest fehlschlägt , geht hin und nehmt sie erneut an
    .goto Dun Morogh,25.0,76.0,0
.target Nori Pridedrift
>>Sprecht mit |cRXP_FRIENDLY_Nori Pridedrift|r
    .accept 3364 >> Akzeptiert die Quest Lieferung des kochend heißen Morgengebräus
    .goto Dun Morogh,28.8,66.4
.target Durnan Furcutter
>>Sprecht mit |cRXP_FRIENDLY_Durnan Furcutter|r
    .turnin 3364 >> Gebt die Quest Lieferung des kochend heißen Morgengebräus ab
step
    #label Scalding1
    .goto Dun Morogh,28.8,66.4
>>Sprecht mit |cRXP_FRIENDLY_Durnan Furcutter|r
    .turnin 3364 >> Gebt die Quest Lieferung des kochend heißen Morgengebräus ab
.target Durnan Furcutter
    .accept 3365 >> Akzeptiert die Quest Den Becher zurückbringen
    .vendor >> Verkauft Müll
step
    .goto Dun Morogh,28.709,66.366
.target Marryk Nurribit
>>Sprecht mit |cRXP_FRIENDLY_Marryk Nurribit|r
    .turnin 3114 >> Gebt die Quest Glyphen-Memorandum ab
    .trainer >> Trainiere deine Klassenfähigkeiten
step
    >>Lauft zurück aus dem Bunker
    .goto Dun Morogh,29.7,71.2
.target Balir Frosthammer
>>Sprecht mit |cRXP_FRIENDLY_Balir Frosthammer|r
    .turnin 170 >> Gebt die Quest Eine neue Bedrohung ab
step
    .goto Dun Morogh,30.0,71.5
    .vendor >>Kauft 10 Wasser
    .collect 159,10 --Collect Refreshing Spring Water (x10)
step
    .goto Dun Morogh,26.3,79.2,30,0
    .goto Dun Morogh,22.7,79.3,30,0
    .goto Dun Morogh,20.9,75.7,30,0
    .goto Dun Morogh,22.7,79.3,30,0
    .goto Dun Morogh,20.9,75.7,30,0
    .goto Dun Morogh,22.7,79.3,30,0
    .goto Dun Morogh,20.9,75.7,30,0
    >>Tötet Trollwelpe der Frostmane
    .complete 182,1 --Kill Frostmane Troll Whelp (x14)
step
    #sticky
    #label Mug
    .goto Dun Morogh,25.0,76.0
.target Nori Pridedrift
>>Sprecht mit |cRXP_FRIENDLY_Nori Pridedrift|r
    .turnin 3365 >> Gebt die Quest Den Becher zurückbringen ab
step
    .goto Dun Morogh,25.076,75.713
>>Sprecht mit |cRXP_FRIENDLY_Grelin Whitebeard|r
    .turnin 182 >> Gebt die Quest Die Trollhöhle ab
.target Grelin Whitebeard
    .accept 218 >> Akzeptiert die Quest Das gestohlene Tagebuch
step
    #requires Mug
    .goto Dun Morogh,26.8,79.9,30,0
    .goto Dun Morogh,29.0,79.0,15,0
    .goto Dun Morogh,30.6,80.3
    >>BETRETET die Trollhöhle. Tötet Grik'nir und plündert Grelin Whitebeards Tagebuch
    .complete 218,1 --Collect Grelin Whitebeard's Journal (x1)
step
    >>Farmt hier noch ein bisschen zurück
    .goto Dun Morogh,25.1,75.8
>>Sprecht mit |cRXP_FRIENDLY_Grelin Whitebeard|r
    .turnin 218 >> Gebt die Quest Das gestohlene Tagebuch ab
.target Grelin Whitebeard
    .accept 282 >> Akzeptiert die Quest Senirs Beobachtungen
step
    >> Farmt ein paar Gegner bis zu diesem Punkt
    .goto Dun Morogh,33.484,71.841
>>Sprecht mit |cRXP_FRIENDLY_Gebirgsjäger Thalos|r
    .turnin 282 >> Gebt Senirs Beobachtungen ab
.target Mountaineer Thalos
    .accept 420 >> Akzeptiert die Quest Senirs Beobachtungen
step
    .goto Dun Morogh,33.9,72.2
.target Hands Springsprocket
>>Sprecht mit |cRXP_FRIENDLY_Hands Springsprocket|r
    .accept 2160 >> Akzeptiert die Quest Vorräte für Tannok
step
    .goto Dun Morogh,34.1,71.6,20,0
    .goto Dun Morogh,35.7,66.0,20 >>Geht durch den Tunnel
step
    #sticky
    #completewith BoarMeat44
    >> Tötet Eber, um 4 Brocken Eberfleisch für später zu erhalten
    .complete 317,1 --Collect Chunk of Boar Meat (x4)
step
    #sticky
    #completewith Ribs
    >> Tötet Eber, um 6 Eberrippchen für später zu erhalten
    .collect 2886,6 --Collect Crag Boar Rib (x6)
step
    >>farmt Eber nordöstlich nach Kharanos
    .goto Dun Morogh,36.4,62.9,45,0
    .goto Dun Morogh,37.7,60.5,45,0
    .goto Dun Morogh,43.9,55.7
    .xp 5+2415 >> Farmt bis 2415/+2800 EP
step
    #softcore
    .goto Dun Morogh,47.0,55.1,120 >> Sterbt und respawnt beim Geistheiler oder lauft nach Kharanos. Stellt sicher, dass eure Zone NICHT Eisklamm ist
step
    .goto Dun Morogh,46.726,53.826
.target Senir Whitebeard
>>Sprecht mit |cRXP_FRIENDLY_Senir Whitebeard|r
    .turnin 420 >> Gebt Senirs Beobachtungen ab
step
    #completewith next
    .goto Dun Morogh,46.7,53.5
    .vendor >>Verkauft Müll
step
    .goto Dun Morogh,46.8,52.4
.target Ragnar Thunderbrew
>>Sprecht mit |cRXP_FRIENDLY_Ragnar Donnerbräu|r
    .accept 384 >> Akzeptiert die Quest Eberrippchen in Biersauce
step
    .goto Dun Morogh,48.3,57.0
    .xp 6 >> Grinde bis 6
step
    .goto Dun Morogh,47.217,52.195
.target Tannok Frosthammer
>>Sprecht mit |cRXP_FRIENDLY_Tannok Frosthammer|r
    .turnin 2160 >> Gebt die Quest Vorräte für Tannok ab
step
    >>Oben
    .goto Dun Morogh,47.5,52.1
    .trainer >> Trainiere deine Klassenfähigkeiten
step
    .goto Dun Morogh,47.4,52.5
    .home >> Setzt den Ruhestein von Euch in die Brauerei Donnerbräu
    .vendor >> Kauft so viel trinken der Stufe 5, wie ihr euch leisten könnt
step
    .goto Dun Morogh,46.021,51.676
.target Tharek Blackstone
>>Sprecht mit |cRXP_FRIENDLY_Tharek Blackstone|r
    .accept 400 >> Akzeptiert die Quest Werkzeuge für Steelgrill
step
    .goto Dun Morogh,49.426,48.410
    >>Tötet NICHT die Bären auf dem Weg
.target Pilot Bellowfiz
>>Sprecht mit |cRXP_FRIENDLY_Pilot Bellowfiz|r
    .accept 317 >> Akzeptiert die Quest Vorräte für Jetsteam
step
    .goto Dun Morogh,49.622,48.612
.target Pilot Stonegear
>>Sprecht mit |cRXP_FRIENDLY_Pilot Stonegear|r
    .accept 313 >> Akzeptiert die Quest Der altgediente Bau
step
    .goto Dun Morogh,50.4,49.1
.target Beldin Steelgrill
>>Sprecht mit |cRXP_FRIENDLY_Beldin Steelgrill|r
    .turnin 400 >> Gebt die Quest Werkzeuge für Steelgrill ab
step
    #label BoarMeat44
    .goto Dun Morogh,50.084,49.420
.target Loslor Rudge
>>Sprecht mit |cRXP_FRIENDLY_Loslor Rudge|r
    .accept 5541 >> Akzeptiert die Quest Munition für Rumbleshot
step
    .goto Dun Morogh,52.0,50.1,40,0
    .goto Dun Morogh,51.5,53.9,40,0
    .goto Dun Morogh,50.1,53.9,40,0
    .goto Dun Morogh,49.9,50.9,40,0
    .goto Dun Morogh,48.0,49.5,40,0
    .goto Dun Morogh,48.2,46.9,40,0
    .goto Dun Morogh,43.5,52.5,40,0
    .goto Dun Morogh,52.0,50.1,40,0
    .goto Dun Morogh,51.5,53.9,40,0
    .goto Dun Morogh,50.1,53.9,40,0
    .goto Dun Morogh,49.9,50.9,40,0
    .goto Dun Morogh,48.0,49.5,40,0
    .goto Dun Morogh,48.2,46.9,40,0
    .goto Dun Morogh,43.5,52.5,40,0
    .goto Dun Morogh,52.0,50.1,40,0
    .goto Dun Morogh,51.5,53.9,40,0
    .goto Dun Morogh,50.1,53.9,40,0
    .goto Dun Morogh,49.9,50.9,40,0
    .goto Dun Morogh,48.0,49.5,40,0
    .goto Dun Morogh,48.2,46.9,40,0
    .goto Dun Morogh,43.5,52.5,40,0
    .goto Dun Morogh,52.0,50.1,40,0
    .goto Dun Morogh,51.5,53.9,40,0
    .goto Dun Morogh,50.1,53.9,40,0
    .goto Dun Morogh,49.9,50.9,40,0
    .goto Dun Morogh,48.0,49.5,40,0
    .goto Dun Morogh,48.2,46.9,40,0
    .goto Dun Morogh,43.5,52.5,40,0
    >>Sammelt die Gegenstände für Vorräte für Jetsteam
    .complete 317,1 --Collect Chunk of Boar Meat (x4)
    .complete 317,2 --Collect Thick Bear Fur (x2)
step
    .goto Dun Morogh,49.426,48.410
>>Sprecht mit |cRXP_FRIENDLY_Pilot Bellowfiz|r
    .turnin 317 >> Gebt die Quest Vorräte für Jetsteam ab
.target Pilot Bellowfiz
    .accept 318 >> Akzeptiert die Quest Immerschimmer
step
    >>Geht zum Gasthaus zurück
    .goto Dun Morogh,46.9,52.1,20,0
    .goto Dun Morogh,47.4,52.5
    .vendor >> Kauft so viel trinken der Stufe 5, wie ihr euch leisten könnt
    >>Ihr könnt ein Kürschnermesser außerhalb vom Gasthaus kaufen, wenn ihr wollt. Bis ihr eine Waffe mit +stats bekommt, ist es besser als ein Stab
step
    .goto Dun Morogh,42.5,54.8,40,0
    .goto Dun Morogh,42.4,52.2,40,0
    .goto Dun Morogh,41.0,49.4,40,0
    .goto Dun Morogh,42.5,54.8,40,0
    .goto Dun Morogh,42.4,52.2,40,0
    .goto Dun Morogh,41.0,49.4,40,0
    .goto Dun Morogh,42.5,54.8,40,0
    .goto Dun Morogh,42.4,52.2,40,0
    .goto Dun Morogh,41.0,49.4,40,0
    .goto Dun Morogh,42.5,54.8,40,0
    .goto Dun Morogh,42.4,52.2,40,0
    .goto Dun Morogh,41.0,49.4,40,0
    >> Geht in die Höhle. Tötet die Wendigos. Plündert sie für Wendigomähne
    .complete 313,1 --Collect Wendigo Mane (x8)
step
    >>Plündert die Kiste
    .goto Dun Morogh,44.1,56.9
    .complete 5541,1 --Collect Rumbleshot's Ammo (x1)
step
    #label BearFur
    .goto Dun Morogh,40.6,62.6,30,0
    .goto Dun Morogh,40.682,65.130
.target Hegnar Rumbleshot
>>Sprecht mit |cRXP_FRIENDLY_Hegnar Rumbleshot|r
    .turnin 5541 >> Gebt die Quest Munition für Rumbleshot ab
    .vendor >> Verkaufe und Repariere
step
    .xp 7 >> Farmt bis Stufe 7
step
    >>Farmt ein paar Gegner auf eurer Route
    .goto Dun Morogh,35.2,56.4,50,0
    .goto Dun Morogh,36.0,52.0,50,0
    .goto Dun Morogh,34.6,51.7
.target Tundra MacGrann
>>Sprecht mit |cRXP_FRIENDLY_Tundra MacGrann|r
    .accept 312 >> Akzeptiert die Quest Tundra MacGranns gestohlene Vorräte
step
    .goto Dun Morogh,30.5,46.0
    .vendor >> Verkaufen. Kauft bis zu 20 Stufe 5 Wasser
step
    #sticky
    #label Evershine
    .goto Dun Morogh,30.2,45.8
>>Sprecht mit |cRXP_FRIENDLY_Rejold Gerstenbräu|r
    .turnin 318 >> Gebt die Quest Immerschimmer ab
.target Rejold Barleybrew
    .accept 319 >> Akzeptiert die Quest Ein Gefallen für etwas Immerschimmer
    .accept 315 >> Akzeptiert die Quest Das perfekte Starkbier
step
    .goto Dun Morogh,30.186,45.531
.target Marleth Barleybrew
>>Sprecht mit |cRXP_FRIENDLY_Marleth Gerstenbräu|r
    .accept 310 >> Akzeptiert die Quest Bittere Rivalen
step
    #label Ribs
    #requires Evershine
    .goto Dun Morogh,31.5,38.9,60,0
    .goto Dun Morogh,28.3,39.9,60,0
    .goto Dun Morogh,28.7,43.7,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,30.0,51.8,60,0
    .goto Dun Morogh,31.5,38.9,60,0
    .goto Dun Morogh,28.3,39.9,60,0
    .goto Dun Morogh,28.7,43.7,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,30.0,51.8,60,0
    >> Tötet Bären, Eber und Leoparden. Geht von Norden nach Westen nach Süden
    .complete 319,1 --Kill Ice Claw Bear (x6)
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .complete 319,3 --Kill Snow Leopard (x8)
step
    >>Beendet das farmen der Eberrippchen
    .complete 384,1 --Collect Crag Boar Rib (x6)
step
    .goto Dun Morogh,30.189,45.725
>>Sprecht mit |cRXP_FRIENDLY_Rejold Gerstenbräu|r
    .turnin 319 >> Gebt die Quest Ein Gefallen für etwas Immerschimmer ab
.target Rejold Barleybrew
    .accept 320 >> Akzeptiert die Quest Rückkehr zu Bellowfiz
step
    .isQuestTurnedIn 384
    .xp 7+4360 >>Farmt bis 4360+/4500xp
step
    .xp 7+3735 >>Farmt bis 3735+/4500xp
step
    .hs >> Ruhestein nach Theramore
step
    .goto Dun Morogh,47.4,52.5
    >> Kauft ein Rhapsody-Malzbier und Donnerbier von Belm
    .complete 384,2 --Collect Rhapsody Malt (x1)
    .collect 2686,1 --Collect Thunder Ale (x1)
step
    .goto Dun Morogh,47.6,52.4,10,0
    .goto Dun Morogh,47.71,52.69
    >>Geht nach unten, sprecht dann mit Jarven und gebt ihm das Donnerbier
    >>Wartet darauf, dass das Fass "unbewacht" wird, dann gebt es ab
    .turnin 310 >> Gebt die Quest Bittere Rivalen ab
    .accept 311 >> Akzeptiert die Quest Rückkehr zu Marleth
step
    .goto Dun Morogh,46.8,52.4
.target Ragnar Thunderbrew
>>Sprecht mit |cRXP_FRIENDLY_Ragnar Donnerbräu|r
    .turnin 384 >> Gebt die Quest Eberrippchen in Biersauce ab
     >>Verkauft das Rezept beim nächsten Händler
step
    .xp 8 >> Grinde bis 8
step
    .goto Dun Morogh,47.5,52.1
    .trainer >> Trainiere deine Klassenfähigkeiten
    >>Stellt sicher, dass ihr Verwandlung trainiert habt
step
    .goto Dun Morogh,47.4,52.5
    .vendor >> Kauft bis zu 30 Level-5-Wasser vom Gastwirt
step
    .goto Dun Morogh,46.726,53.826
.target Senir Whitebeard
>>Sprecht mit |cRXP_FRIENDLY_Senir Whitebeard|r
    .accept 287 >> Akzeptiert die QuestHöhle der Frostmane
step
    .goto Dun Morogh,49.622,48.612
.target Pilot Stonegear
>>Sprecht mit |cRXP_FRIENDLY_Pilot Stonegear|r
    .turnin 313 >> Gebt die Quest Der altgediente Bau
step
    .goto Dun Morogh,49.426,48.410
.target Pilot Bellowfiz
>>Sprecht mit |cRXP_FRIENDLY_Pilot Bellowfiz|r
    .turnin 320 >> Gebt die Quest Rückkehr zu Bellowfiz ab
step
    #era/som
    >>Im Gebäude
    .goto Dun Morogh,45.8,49.4
.target Razzle Sprysprocket
>>Sprecht mit |cRXP_FRIENDLY_Razzle Sprysprocket|r
    .accept 412 >> Akzeptiert die Quest Operation Rekombobulationsgerät
step
    .goto Dun Morogh,43.1,45.0,25,0
    .goto Dun Morogh,42.1,45.4,25 >> Lauft die Rampe hinauf zum Schimmerkraut
step
    .goto Dun Morogh,40.9,45.3,30,0
    .goto Dun Morogh,41.5,43.6,30,0
    .goto Dun Morogh,39.7,40.0,30,0
    .goto Dun Morogh,42.1,34.3,30,0
    >>Tötet die Mobs in dieser Gegend. Seid vorsichtig, wenn ihr das mittlere Lager räumen müsst. Ihr könnt die Mobs in den Hütten pullen und sie hinter den Hütten aus dem Sichtbereich (LoS) bringen, wenn ihr noch 2 Mobs braucht. Falls ihr Pech habt, lauft in den anderen Bereich
    >>Plündert den Schimmerkrautkorb auf dem Boden
    .complete 315,1 --Collect Shimmerweed (x6)
step
    >> Verwandelt Eisbart der Alte, dann plündert MacGranns Trockenfleisch
    .goto Dun Morogh,38.5,53.9
    .complete 312,1 --Collect MacGrann's Dried Meats (x1)
step
    .goto Dun Morogh,34.6,51.7
.target Tundra MacGrann
>>Sprecht mit |cRXP_FRIENDLY_Tundra MacGrann|r
    .turnin 312 >> Gebt die Quest Tundra MacGranns gestohlene Vorräte ab
step
    .goto Dun Morogh,30.4,45.8
    .vendor >> Kauft bis zu 20 weiteres Level-5-Wasser
step
    #sticky
    #label Stout
    .goto Dun Morogh,30.189,45.725
>>Sprecht mit |cRXP_FRIENDLY_Rejold Gerstenbräu|r
    .turnin 315 >> Gebt die Quest Das perfekte Starkbier ab
.target Rejold Barleybrew
    .accept 413 >> Akzeptiert die Quest Schimmerstarkbier
step
    .goto Dun Morogh,30.186,45.531
.target Marleth Barleybrew
>>Sprecht mit |cRXP_FRIENDLY_Marleth Gerstenbräu|r
    .turnin 311 >> Gebt die Quest Rückkehr zu Marleth ab
step
    #era/som
    #requires Stout
    .goto Dun Morogh,27.2,43.0,40,0
    .goto Dun Morogh,24.8,39.3,40,0
    .goto Dun Morogh,25.6,43.4,40,0
    .goto Dun Morogh,24.3,44.0,40,0
    .goto Dun Morogh,25.4,45.4,40,0
    >>Tötet Lepragnom. Plündert sie für Gyromechanische Getriebeteile und Restabilisationszahnrad
    .complete 412,2 --Collect Gyromechanic Gear (x8)
    .complete 412,1 --Collect Restabilization Cog (x8)
step
    .xp 9 >> Grinde bis 9
step
    .goto Dun Morogh,24.5,50.8,35 >>Betretet die Höhle
step
    .goto Dun Morogh,22.1,50.3,40,0
    .goto Dun Morogh,21.3,52.9,40,0
    >>Tötet die Kopfgeldjäger in der Höhle
    .complete 287,1 --Kill Frostmane Headhunter (x5)
step
    #hardcore
    >>Farmt vorsichtig in dieser Ecke der Höhle hinunter
    .goto Dun Morogh,23.0,52.2
    .complete 287,2 --Fully explore Frostmane Hold
step
    #softcore
    .goto Dun Morogh,23.4,51.5,15 >>Geht die Höhle wieder hoch
step
    #softcore
    >>Springt hinunter, danach sterbt ihr
    .goto Dun Morogh,23.0,52.2
    .complete 287,2 --Fully explore Frostmane Hold
step
    #softcore
    .deathskip >> Sterbt und respawnt beim Geistheiler
step
    #hardcore
   .goto Dun Morogh,46.726,53.826,150 >> Ruhestein, wenn er verfügbar ist. Anderenfalls farmt auch dem Weg zurück nach Kharanos
step
    .goto Dun Morogh,46.726,53.826
>>Sprecht mit |cRXP_FRIENDLY_Senir Whitebeard|r
    .turnin 287 >> Gebt die Quest Höhle der Frostmähnen ab
.target Senir Whitebeard
    .accept 291 >> Akzeptiert die Quest Die Berichte
step
    #era/som
    .goto Dun Morogh,45.8,49.4
.target Razzle Sprysprocket
>>Sprecht mit |cRXP_FRIENDLY_Razzle Sprysprocket|r
    .turnin 412 >> Gebt die Quest Operation Rekombobulationsgerät ab
step
    .goto Dun Morogh,60.1,52.6,50,0
    .goto Dun Morogh,63.1,49.8
.target Rudra Amberstill
>>Sprecht mit |cRXP_FRIENDLY_Rudra Amberstill|r
    .accept 314 >> Akzeptiert die Quest Die Herde beschützen
step
    #sticky
    #completewith next
    .goto Dun Morogh,62.3,50.3,14,0
    .goto Dun Morogh,62.2,49.4,10 >>Lauft diesen Teil des Berges hinauf
step
    >>Tötet Vagash. Plündert ihn für Fangzahn von Vagash
    >>Lockt ihn zur Wache südlich der Ranch. Achtet darauf, dass ihr 51%+ Schaden an ihm verursacht
    >>Seid vorsichtig, da diese Quest schwierig sein kann
    .goto Dun Morogh,62.6,46.1
    .complete 314,1 --Collect Fang of Vagash (1)
--N Video tutorial needed
step
    .goto Dun Morogh,63.1,49.8
.target Rudra Amberstill
>>Sprecht mit |cRXP_FRIENDLY_Rudra Amberstill|r
    .turnin 314 >> Gebt die Quest Die Herde beschützen ab
step
    >>Farmt ein bisschen auf dem Weg
    .goto Dun Morogh,68.6,54.7
    .vendor >>Verkauft Müll. Kauft etwas Essen/Wasser, falls nötig
step
    .goto Dun Morogh,68.7,56.0
.target Senator Mehr Stonehallow
>>Sprecht mit |cRXP_FRIENDLY_Senator Mehr Stonehallow|r
    .accept 433 >> Akzeptiert die Quest Im Dienste des Volkes
step
    #completewith next
    .goto Dun Morogh,68.9,55.9
    .vendor >> Verkauft Müll und repariert
step
    .goto Dun Morogh,69.084,56.330
.target Foreman Stonebrow
>>Sprecht mit |cRXP_FRIENDLY_Großknecht Stonebrow|r
    .accept 432 >> Akzeptiert die Quest Diese verfluchten Troggs!
step
    .goto Dun Morogh,70.6,56.6,30,0
    .goto Dun Morogh,70.8,53.3,30,0
    .goto Dun Morogh,71.9,50.7,30,0
    .goto Dun Morogh,72.9,53.1,30,0
    .goto Dun Morogh,70.6,56.6,30,0
    .goto Dun Morogh,70.8,53.3,30,0
    .goto Dun Morogh,71.9,50.7,30,0
    .goto Dun Morogh,72.9,53.1,30,0
    >>Tötet die Troggs in der Höhle
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .complete 433,1 --Kill Rockjaw Bonesnapper (x10)
step
    .goto Dun Morogh,69.084,56.330
.target Foreman Stonebrow
>>Sprecht mit |cRXP_FRIENDLY_Großknecht Stonebrow|r
    .turnin 432 >> Gebt die Quest Diese verfluchten Troggs! ab
step
    #completewith next
    .goto Dun Morogh,68.9,55.9
    .vendor >> Verkauft Müll und repariert
step
    .goto Dun Morogh,68.7,56.0
.target Senator Mehr Stonehallow
>>Sprecht mit |cRXP_FRIENDLY_Senator Mehr Stonehallow|r
    .turnin 433 >> Gebt die Quest Im Dienste des Volkes ab
step
    .goto Dun Morogh,67.1,59.7,40,0
    .goto Dun Morogh,70.7,58.2,40,0
    .goto Dun Morogh,71.0,53.9,40,0
    .xp 10 >> Farmt bis Stufe 10 bei den Troggs
step
    .goto Dun Morogh,68.6,54.7
    .vendor >>Verkauft Müll, kaufe 30x Wasser der Stufe 5 von Kazan
    .trainer >> Erlernt Kochkunst von Ghilm. Ihr braucht dies, um später 2 zusätzliche Quests anzunehmen
step
    .goto Dun Morogh,83.8,39.2
.target Pilot Hammerfoot
>>Sprecht mit |cRXP_FRIENDLY_Pilot Hammerfoot|r
    .accept 419 >> Akzeptiert die Quest Der vermisste Pilot
step
    >>Farmt auf dem Weg
    .goto Dun Morogh,79.7,36.2
    .turnin 419 >> Gebt die Quest Der vermisste Pilot ab
    .accept 417 >> Akzeptiert die Quest Pilotenrache
step
    >>Tötet Marterklaue. Plündert sie für seine Räudige Klaue
    .goto Dun Morogh,80.0,36.4
    .complete 417,1 --Collect Mangy Claw (x1)
step
    .goto Dun Morogh,83.892,39.188
.target Pilot Hammerfoot
>>Sprecht mit |cRXP_FRIENDLY_Pilot Hammerfoot|r
    .turnin 417 >> Gebt die Quest Pilotenrache ab
step
    >>Geht durch den Tunnel zurück, durch den ihr gekommen seid
    .goto Dun Morogh,79.6,50.7,50,0
    .goto Dun Morogh,82.3,53.5,25,0
    .goto Dun Morogh,86.278,48.812
>>Sprecht mit |cRXP_FRIENDLY_Gebirgsjäger Gerstenbräu|r
    .turnin 413 >> Gebt die Quest Schimmerstarkbier ab
.target Mountaineer Barleybrew
    .accept 414 >> Akzeptiert die Quest Starkbier für Kadrell
]])

RXPGuides.RegisterGuide([[
#classic
#tbc
<< Alliance Mage
#name 10-12 Loch Modan Magier AoE Guide
#version 1
#group RestedXP Allianz Magier
#defaultfor Human Mage/Gnome Mage
#next 12-18 Dunkelküste Magier AoE
step
    #era/som
    #completewith next
    +Während ihr in Loch Modan Quests erledigt, sammelt ALLE Brocken Eberfleisch, die ihr bekommt, und VERKAUFT sie NICHT. Ihr benötigt sie später
step << Gnome
    .goto Loch Modan,22.071,73.127
.target Mountaineer Cobbleflint
>>Sprecht mit |cRXP_FRIENDLY_Gebirgsjäger Cobbleflint|r
    .accept 224 >> Akzeptiert die Quest Verteidigung der Länder des Königs
step << Gnome
    .goto Loch Modan,23.233,73.675
    >>Geht von hinten in den Bunker
.target Captain Rugelfuss
>>Sprecht mit |cRXP_FRIENDLY_Captain Rugelfuss|r
    .accept 267 >> Akzeptiert die Quest Die Bedrohung durch die Troggs
step << Gnome
    .goto Loch Modan,29.9,68.2,45 >> Lauft zum Eingang der Troggs
step << Gnome
    .goto Loch Modan,30.0,72.4,50,0
    .goto Loch Modan,34.7,71.6,50,0
    .goto Loch Modan,30.9,81.1,50,0
    .goto Loch Modan,30.0,72.4,50,0
    .goto Loch Modan,34.7,71.6,50,0
    .goto Loch Modan,30.9,81.1,50,0
    >>Tötet Splittersteintroggs. Plündert sie für Trogg-Steinzahn
    >>Seid vorsichtig, da diese Quest schwierig sein kann. Lauft weg, wenn ihr versehentlich 2 Mobs auf einmal zieht
    .complete 224,1 --Kill Stonesplinter Trogg (x10)
    .complete 224,2 --Kill Stonesplinter Scout (x10)
    .complete 267,1 --Collect Trogg Stone Tooth (x8)
step << Gnome
    .goto Loch Modan,22.071,73.127
.target Mountaineer Cobbleflint
>>Sprecht mit |cRXP_FRIENDLY_Gebirgsjäger Cobbleflint|r
    .turnin 224 >> Gebt die Quest Verteidigung der Länder des Königs ab
step << Gnome
    .goto Loch Modan,23.233,73.675
    >>Geht von hinten in den Bunker
.target Captain Rugelfuss
>>Sprecht mit |cRXP_FRIENDLY_Captain Rugelfuss|r
    .turnin 267 >> Gebt die Quest Die Bedrohung durch die Troggs ab
step << Human
    .goto Loch Modan,24.1,18.2
    .vendor >>Verkaufe und Repariere
step << Human
    .goto Loch Modan,24.764,18.397
>>Sprecht mit |cRXP_FRIENDLY_Gebirgsjäger Stormpike|r
    .turnin 353 >> Gebt die Quest Stormpikes Lieferung ab
.target Mountaineer Stormpike
    .accept 307 >> Akzeptiert die Quest Schmutzige Pfoten
step << Human
    #sticky
    #completewith next
    >>Tötet Spinnen in der Zone, um Spinnensekret zu erhalten
    .collect 3174,3 --Collect Spider Ichor (x3)
    >>Tötet Bären in der Zone um Bärenfleisch zu erhalten
    .collect 3173,3 --Collect Bear Meat (x3)
    >>Tötet Eber in der Zone um Eberdärme zu erhalten
    .collect 3172,3 --Collect Boar Intestines (x3)
step << Human
    .goto Loch Modan,35.1,47.8,130 >>Farmt Mobs unterwegs für die spätere Kochquest
step
    >>Lauft nach Thelsamar.Setzt euren Ruhestein nicht << Gnome
    .goto Loch Modan,34.828,49.283
.target Vidra Hearthstove
>>Sprecht mit |cRXP_FRIENDLY_Vidra Hearthstove|r
    .accept 418 >> Akzeptiert die Quest Blutwurst aus Thelsamar
step << Human
    #sticky
    .abandon 1338 >> Brecht die Quest Sturmlanzes Bestellung ab. Dies ermöglicht die Quest Gebirgsjäger Stormpikes Aufgabe
step
    .goto Loch Modan,34.8,48.6
    .vendor >>Kauft 1-2 6-Slot-Taschen, um eure Taschenplätze zu füllen
step
    .goto Loch Modan,35.5,48.4
    .vendor >> Kauft Essen/Wasser (versucht, 40 Wasser der Stufe 5 und 20 Essen der Stufe 5 zu haben)
step
    .goto Loch Modan,32.6,49.9,80.0,0
    .goto Loch Modan,37.2,46.1,80.0,0
    .goto Loch Modan,36.7,41.6
    >>Findet Kadrell. Er patrouilliert auf der Straße in Thelsamar
.target Mountaineer Kadrell
>>Sprecht mit |cRXP_FRIENDLY_Gebirgsjäger Kadrell|r
    .accept 416 >> Akzeptiert die Quest Rattenfang
    .accept 1339 >> Akzeptiert die Quest Gebirgsjäger Stormpikes Aufgabe
step
    #sticky
    #completewith Thelsamar1
    >>Tötet Spinnen in der Zone für Thelsamar-Blutwurst
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
step
    #sticky
    #completewith Thelsamar1
    >>Tötet Bären in der Zone für Thelsamar-Blutwurst
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
step
    #sticky
    #completewith Thelsamar1
    >>Tötet Eber in der Zone für Thelsamar-Blutwurst
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
step << Gnome
    .goto Loch Modan,24.1,18.2
    .vendor >>Verkaufe und Repariere
step << Gnome
    .goto Loch Modan,24.764,18.397
>>Sprecht mit |cRXP_FRIENDLY_Gebirgsjäger Stormpike|r
    .turnin 1339 >> Gebt die Quest Gebirgsjäger Stormpikes Aufgabe ab
.target Mountaineer Stormpike
    .accept 1338 >> Akzeptiert die Quest Stormpikes Bestellung
    .accept 307 >> Akzeptiert die Quest Schmutzige Pfoten
step << Gnome
    #label Thelsamar1
    .goto Loch Modan,33.71,17.20,130 >>Farmt einige Gegner für Eberdärme, Bärenfleisch und Spinnensekret auf dem Weg
step << Human
    #label Thelsamar1
    .goto Loch Modan,39.3,27.0,130 >>Farmt einige Gegner für Eberdärme, Bärenfleisch und Spinnensekret auf dem Weg
step
    #sticky
    #completewith Gear
    >> Tötet Tunnel Ratten. Plündert sie für ihre Ohren
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
step
    .goto Loch Modan,35.5,18.2,45 >>Geht zum Höhleneingang, während ihr die Ratten tötet
step
    #label Gear
    .goto Loch Modan,35.5,19.9,12,0
    .goto Loch Modan,36.4,20.7,12,0
    .goto Loch Modan,35.3,22.0,12,0
    .goto Loch Modan,35.9,22.1,12,0
    .goto Loch Modan,36.3,24.7,12,0
    .goto Loch Modan,35.7,24.3,12,0
    .goto Loch Modan,34.9,24.9,12,0
    .goto Loch Modan,35.7,24.3,12,0
    .goto Loch Modan,36.3,24.7,12,0
    .goto Loch Modan,35.9,22.1,12,0
    .goto Loch Modan,35.3,22.0,12,0
    .goto Loch Modan,36.4,20.7,12,0
    .goto Loch Modan,35.5,19.9,12,0
    >>Sammelt die Kisten, die ihr in der Höhle findet. Seid vorsichtig, denn dies ist auf Stufe 11 schwierig
    >>Seid vorsichtig, denn die Geomanten wirken den Flammenschutz (Feuerimunität) nach wenigen Sekunden
    .complete 307,1 --Collect Miners' Gear (x4)
step
    .goto Loch Modan,39.43,22.58
    >> Tötet Tunnel Ratten. Plündert sie für ihre Ohren
    >> Versucht, das Ungeziefer anstelle von Kobolden/Geomanten zu töten
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
step
    #sticky
    #completewith Thelsamar2
    >>Tötet Spinnen in der Zone für Thelsamar-Blutwurst
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
step
    #sticky
    #completewith Thelsamar2
    >>Tötet Bären in der Zone für Thelsamar-Blutwurst
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
step
    #sticky
    #completewith Thelsamar2
    >>Tötet Eber in der Zone für Thelsamar-Blutwurst
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
step
    #label Thelsamar2
    .goto Loch Modan,23.3,17.9,60 >>Lauft zum Bunker zurück und farmt unterwegs
step
    .goto Loch Modan,24.1,18.2
    .vendor >>Verkaufe und Repariere
step
    .goto Loch Modan,24.7,18.3
>>Sprecht mit |cRXP_FRIENDLY_Gebirgsjäger Stormpike|r
    .turnin 307 >> Gebt die Quest Schmutzige Pfoten ab
    .turnin 1339 >> Gebt die Quest Gebirgsjäger Stormpikes Aufgabe ab << Human
.target Mountaineer Stormpike
    .accept 1338 >> Akzeptiert die Quest Stormpikes Bestellung << Human
step
    #sticky
    #label Meat9
    .goto Loch Modan,26.9,10.7,40,0
    .goto Loch Modan,30.9,10.6,40,0
    .goto Loch Modan,28.6,15.4,40,0
    .goto Loch Modan,30.5,26.6,40,0
    .goto Loch Modan,33.4,30.3,40,0
    .goto Loch Modan,39.4,33.3,40,0
    .goto Loch Modan,26.9,10.7,40,0
    .goto Loch Modan,30.9,10.6,40,0
    .goto Loch Modan,28.6,15.4,40,0
    .goto Loch Modan,30.5,26.6,40,0
    .goto Loch Modan,33.4,30.3,40,0
    .goto Loch Modan,39.4,33.3,40,0
    .goto Loch Modan,26.9,10.7
    >>Tötet Bären. Plündert sie für Bärenfleisch
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
step
    #sticky
    #label Ichor9
    .goto Loch Modan,31.9,16.4,40,0
    .goto Loch Modan,28.0,20.6,40,0
    .goto Loch Modan,33.8,40.5,40,0
    .goto Loch Modan,36.2,30.9,40,0
    .goto Loch Modan,39.0,32.1,40,0
    .goto Loch Modan,31.9,16.4,40,0
    .goto Loch Modan,28.0,20.6,40,0
    .goto Loch Modan,33.8,40.5,40,0
    .goto Loch Modan,36.2,30.9,40,0
    .goto Loch Modan,39.0,32.1,40,0
    .goto Loch Modan,31.9,16.4
    >>Tötet Spinnen. Plündert sie für Spinnensekret
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
step
    .goto Loch Modan,38.0,34.9,40,0
    .goto Loch Modan,37.1,39.8,40,0
    .goto Loch Modan,29.8,35.9,40,0
    .goto Loch Modan,27.7,25.3,40,0
    .goto Loch Modan,28.6,22.6,40,0
    .goto Loch Modan,38.0,34.9,40,0
    .goto Loch Modan,37.1,39.8,40,0
    .goto Loch Modan,29.8,35.9,40,0
    .goto Loch Modan,27.7,25.3,40,0
    .goto Loch Modan,28.6,22.6,40,0
    .goto Loch Modan,38.0,34.9
    >>Tötet Eber. Plündert sie für Ebergedärme
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
step
#hidewindow
    #requires Meat9
step
    #sticky
    #label RatCatching
    #requires Ichor9
    .goto Loch Modan,32.6,49.9,80.0,0
    .goto Loch Modan,37.2,46.1,80.0,0
    .goto Loch Modan,36.7,41.6
    >>Findet Kadrell. Er patrouilliert auf der Straße in Thelsamar
.target Mountaineer Kadrell
>>Sprecht mit |cRXP_FRIENDLY_Gebirgsjäger Kadrell|r
    .turnin 416 >> Gebt die Quest Rattenfang ab
step
    #requires Ichor9
    .goto Loch Modan,34.828,49.283
.target Vidra Hearthstove
>>Sprecht mit |cRXP_FRIENDLY_Vidra Hearthstove|r
    .turnin 418 >> Gebt die Blutwurst in Thelsamar ab
step
    #era/som
    .goto Loch Modan,34.76,48.62
    .vendor >> Kaufe 6 slots bis eure Taschenplätze voll sind. Außerdem kauft ein Feuerstein, Zunser und 2x einfaches Holz
    .collect 4470,2 --Simple Wood (2)
    .collect 4471,1 --Flint and Tinder (1)
step
    .xp 12 >> Farmt bis Stufe 12
step << Gnome
    #completewith next
    #requires RatCatching
    .goto Loch Modan,64.82,66.04
    .vendor >> Schau bei Aldren nach einem Weisengürtel . Kauft ihn, wenn ihr es euch leisten könnt. Behaltet ihn für später
step << Gnome
    #requires RatCatching
    .goto Loch Modan,65.94,65.62
.target Prospector Ironband
>>Sprecht mit |cRXP_FRIENDLY_Ausgrabungsleiter Ironband|r
    .accept 298 >>Akzeptiert die Quest Bericht über den Fortschritt der Ausgrabungen
step << Gnome
    #softcore
    .goto Loch Modan,68.12,62.98
    .deathskip >> Sterbt und belebt euch in Thelsamar wieder
step << Gnome
    #hardcore
    >> Lauft nach Thelsamar zurück. Geht ins Gebäude
    .goto Loch Modan,37.16,46.89,20,0
    .goto Loch Modan,37.02,47.81
.target Brock Stoneseeker
>>Sprecht mit |cRXP_FRIENDLY_Brock Stoneseeker|r
    .accept 6387 >>Akzeptiert die Quest Ehrenstudenten
>>Sprecht mit |cRXP_FRIENDLY_Jern Hornhelm|r
    .turnin 298 >>Gebt die Quest Bericht über den Fortschritt der Ausgrabungen ab
.target Jern Hornhelm
    .accept 301 >>Akzeptiert die Quest Meldung in Eisenschmiede
step << Gnome
    #softcore
    >> Geht ins Gebäude
    .goto Loch Modan,37.16,46.89,20,0
    .goto Loch Modan,37.02,47.81
.target Brock Stoneseeker
>>Sprecht mit |cRXP_FRIENDLY_Brock Stoneseeker|r
    .accept 6387 >>Akzeptiert die Quest Ehrenstudenten
>>Sprecht mit |cRXP_FRIENDLY_Jern Hornhelm|r
    .turnin 298 >>Gebt die Quest Bericht über den Fortschritt der Ausgrabungen ab
.target Jern Hornhelm
    .accept 301 >>Akzeptiert die Quest Meldung in Eisenschmiede
step
    #requires RatCatching
    .goto Loch Modan,33.94,50.96
    .fp Thelsamar >> Erlernt die Flugroute nach Thelsamar
>>Sprecht mit |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .turnin 6387 >>Gebt die Quest Ehrenstudenten ab << Gnome
.target Thorgrum Borrelson
    .accept 6391 >>Akzeptiert die Quest Flug nach Eisenschmiede << Gnome
    .fly Ironforge >> Fliege nach Eisenschmiede
step << Human
    .goto Ironforge,27.15,8.57
    .trainer >> Trainiere deine Klassenfähigkeiten
step << skip --logout skip << Human
    #completewith next
    +Geht zur Treppe hinter den Paladin-Ausbildern hinten im Raum. Geht etwa bis zur mitte hinauf, dann bewegt euch zum Rand der Treppe, bis es aussieht, als würdet ihr schweben. Meldet euch ab, dann wieder an
    .link https://www.youtube.com/watch?v=E8b90bzJMSI >> KLICKT HIER als Referenz
    >>Meldet euch ab um zur Vorderseite von Eisenschmiede zu springen
step << Human
    .goto Ironforge,12.24,89.17,120 >> Verlasst Eisenschmiede
step << Gnome
    .goto Ironforge,74.65,11.74
>>Sprich mit |cRXP_FRIENDLY_Ausgrabungsleiter Sturmlanze|r
    .turnin 301 >>Gebt die Quest Meldung in Eisenschmiede ab
.target Prospector Stormpike
    .accept 302 >>Akzeptiert die Quest Pulver für Ironband
step << Gnome
    >>Geht zurück zur Großen Schmiede, biegt rechts ab und geht ins Gebäude
    .goto Ironforge,49.59,28.96,30,0
    .goto Ironforge,51.52,26.32
>>Sprecht mit |cRXP_FRIENDLY_Golnir Bouldertoe|r
    .turnin 6391 >>Gebt die Quest Fahrt nach Eisenschmiede ab
.target Golnir Bouldertoe
    .accept 6388 >>Akzeptiert die Quest Gryth Thurden
step << Gnome
    .goto Ironforge,39.55,57.49
.target Senator Barin Redstone
>>Sprecht mit |cRXP_FRIENDLY_Senator Barin Redstone|r
    .turnin 291 >>Gebt die Quest Die Berichte ab
step << Gnome
    .goto Ironforge,55.50,47.74
>>Sprecht mit |cRXP_FRIENDLY_Gryth Thurden|r
    .turnin 6388 >>Gebt die Quest Gryth Thurden ab
.target Gryth Thurden
    .accept 6392 >>Akzeptiert die Quest Rückkehr zu Brock
    .fly Thelsamar >> Fliege nach Thelsamar
step << Gnome
    >>Geht ins Gebäude
    .goto Loch Modan,37.16,46.89,20,0
    .goto Loch Modan,37.02,47.81
.target Brock Stoneseeker
>>Sprecht mit |cRXP_FRIENDLY_Brock Stoneseeker|r
    .turnin 6392 >>Gebt die Quest Rückkehr zu Brock ab
.target Jern Hornhelm
>>Sprecht mit |cRXP_FRIENDLY_Jern Hornhelm|r
    .turnin 302 >>Gebt die Quest Pulver für Ironband ab
step << Gnome
    .hs >> Ruhestein nach Theramore
step << Gnome
    .goto Dun Morogh,47.50,52.08
    .trainer >> Trainiere deine Klassenfähigkeiten
step
    #hardcore
    #completewith next
    .goto Dun Morogh,59.43,42.85,150 >> Reist zum Skip spot
step
    #hardcore
    .goto Dun Morogh,59.5,42.8,40,0
    .goto Dun Morogh,60.4,44.1,40,0
    .goto Dun Morogh,61.1,44.1,40,0
    .goto Dun Morogh,61.2,42.3,40,0
    .goto Dun Morogh,60.8,40.9,40,0
    .goto Dun Morogh,59.0,39.5,40,0
    .goto Dun Morogh,60.3,38.6,40,0
    .goto Dun Morogh,61.7,38.7,40,0
    .goto Dun Morogh,65.7,21.6,40,0
    .goto Dun Morogh,65.8,12.5,40,0
    .goto Dun Morogh,65.6,10.8,40,0
    .goto Dun Morogh,66.5,10.0,40,0
    .goto Dun Morogh,66.9,8.5,40,0
    .goto Wetlands,20.6,67.2,50,0
    .goto Wetlands,17.7,67.7,40,0
    .goto Wetlands,16.8,65.3,40,0
    .goto Wetlands,15.1,64.0,40,0
    .goto Wetlands,12.1,60.3,40,0
    >>Öffnet den link und ruft es auf einen anderen Bildschirm auf.
    >>Macht den Dun Morogh -> Sumpfland skip ohne zu sterben
    >>Weicht den Krokodilen aus, wenn ihr das Meer überquert
    .link https://www.youtube.com/watch?v=9afQTimaiZQ >> KLICKT HIER zum nachschauen
    .goto Wetlands,12.1,60.3,80 >> Laufe zum Hafen von Menethil
step
    #softcore
    .goto Dun Morogh,30.3,37.5,50 >> Lauft hierhin
step
    #softcore
    .goto Dun Morogh,30.9,33.1,15 >>Lauft den Berg nach Norden hinauf
step
    #softcore
    .goto Dun Morogh,32.4,29.1,15 >>Folgt dem Pfad hier hinauf
step
    #softcore
    .goto Dun Morogh,33.0,27.2,15,0
    .goto Dun Morogh,33.0,25.2,15,0
    .goto Wetlands,11.6,43.4,60,0
    .deathskip >>Lauft einfach weiter nach Norden, lass dich fallen, stirb und respawne dann
step
    #softcore
    #completewith next
    .goto Wetlands,12.7,46.7,60 >> Schwimmt ans Ufer
step
    .money <0.08
    .goto Wetlands,10.4,56.0,15,0
    .goto Wetlands,10.1,56.9,15,0
    .goto Wetlands,10.6,57.2,15,0
    .goto 1437,10.760,56.721
    .vendor >> Falls ihr 8s habt, überprüft bei Neal Allen auf Bronzeröhre und kauft sie, falls sie vorhanden ist
step
    .money <0.04
    .goto Wetlands,8.1,56.3
    .vendor >> Überprüft bei Dewin auf Heiltränke und kauft sie solange, bis ihr noch 1s habt
step
    .goto Wetlands,9.5,59.7
    .fp Menethil Harbor >> Holt euch den Flugpunkt zum Hafen von Menethil
step
    #era/som
    #sticky
    #completewith Darkshore1
    +Wartet hier auf das Boot. Erstellt ein Lagerfeuer aus eurem Zauberbuch und kocht die Brocken Eberfleisch, die ihr vorher gesammelt habt. Ihr benötigt jetzt Kochskill 10 und später 50 (kocht also alles auf)
    .goto Wetlands,4.7,57.3
step
    #era/som
    #label Darkshore1
    .zone Darkshore >>Steigt ins Boot, wenn es ankommt. Fahrt nach Dunkelküste. Falls ihr mit dem Kochen fertig seid, beginne damit, so viel Wasser der Stufe 5 wie möglich herbeizuzaubern
step
    #som
    #phase 3-6
    #label Darkshore1
    .zone Darkshore >>Steigt ins Boot, wenn es ankommt. Fahrt nach Dunkelküste. Beginne damit, so viel Wasser der Stufe 5 wie möglich herbeizuzaubern
]])

