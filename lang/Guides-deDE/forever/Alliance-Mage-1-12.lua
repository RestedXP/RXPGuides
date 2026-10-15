if GetLocale() ~= "deDE" then return end
local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#forever
<< Human Mage
#name 1-10 Wald von Elwynn Magier AoE
#version 1
#group RestedXP Forever Dungeonführer (A)
#subgroup Speedrun Guide Magier
#defaultfor Human
#next 10-12 Loch Modan Magier AoE Guide
step
    #sticky
    #completewith next
    .goto 1429/0,-136.52,-8933.53
    +Ihr habt einen Leitfaden für Menschen ausgewählt. Ihr solltet die gleiche Startzone wählen, in der ihr startet << Gnome
    +Hinweis, dass ihr den AoE-Guide ausgewählt habt. AoE ist normalerweise viel schwieriger als Einzelziel-Magier, aber VIEL schneller
step
    >>Zerstört euren Ruhestein
    .goto 1429/0,-136.52,-8933.53
.target Deputy Willem
>>Sprecht mit |cRXP_FRIENDLY_Deputy Willem|r
    .accept 783 >> Akzeptiert die Quest Die Bedrohung von innen
step
    .goto 1429/0,-162.62,-8902.59
>>Sprecht mit |cRXP_FRIENDLY_Marshal McBride|r
    .turnin 783 >> Gebt die Quest Die Bedrohung von innen ab
.target Marshal McBride
    .accept 7 >> Akzeptiert die Quest Säuberung im Koboldlager
step
    .goto 1429/0,-136.52,-8933.53
.target Deputy Willem
>>Sprecht mit |cRXP_FRIENDLY_Deputy Willem|r
    .accept 5261 >> Akzeptiert die Quest Eagan Peltskinner
step
    .goto 1429/0,-68.11,-8874.67
    .vendor >>Tötet Wölfe, bis ihr Items im Wert von 50c habt, dann kauft 10x Wasser von Bruder Danil
    .collect 159,10 --Collect Refreshing Spring Water (x10)
step
    .xp 2 >> Farmt bis Stufe 2
step
    .goto 1429/0,-161.82,-8870.05
>>Sprecht mit |cRXP_FRIENDLY_Eagan Peltskinner|r
    .turnin 5261 >> Gebt die Quest Eagan Peltskinner ab
.target Eagan Peltskinner
    .accept 33 >> Akzeptiert die Quest Wölfe an der Grenze
step
    .goto 1429/0,-64.64,-8881.62,40,0
    .goto 1429/0,-68.11,-8809.87,40,0
    .goto 1429/0,-116.70,-8800.61,40,0
    .goto 1429/0,-64.64,-8881.62,40,0
    .goto 1429/0,-68.11,-8809.87,40,0
    .goto 1429/0,-116.70,-8800.61,40,0
    >>Tötet Junge Wölfe in der Gegend für Fleisch
    .complete 33,1 --Collect Tough Wolf Meat (x8)
step
    .goto 1429/0,-109.76,-8756.63,40,0
    .goto 1429/0,-189.59,-8777.46,40,0
    .goto 1429/0,-109.76,-8756.63,40,0
    .goto 1429/0,-189.59,-8777.46,40,0
    .goto 1429/0,-109.76,-8756.63,40,0
    .goto 1429/0,-189.59,-8777.46,40,0
    >>Tötet Koboldgezücht in der Umgebung
    .complete 7,1 --Kill Kobold Vermin (x10)
step
    .goto 1429/0,-161.82,-8870.05
.target Eagan Peltskinner
>>Sprecht mit |cRXP_FRIENDLY_Eagan Peltskinner|r
    .turnin 33 >> Gebt die Quest Wölfe an der Grenze ab
step
    .goto 1429/0,-116.70,-8900.14
    .vendor >>Verkauft Müll, dann kauft 10x mehr Wasser von Bruder Danil
step
    .goto 1429/0,-162.62,-8902.59
>>Sprecht mit |cRXP_FRIENDLY_Marshal McBride|r
    .turnin 7 >> Gebt die Quest Säuberung im Koboldlager ab
.target Marshal McBride
    .accept 15 >> Akzeptiert die Quest Überprüfung der Echokammmine
    .accept 3104 >> Akzeptiert die Quest Glyphen-Brief
step
    .xp 3 >> Farmt bis Stufe 3
step
    .goto 1429/0,-113.23,-8779.78,40,0
    .goto 1429/0,-81.99,-8684.88,40,0
    .goto 1429/0,-151.41,-8726.54,40,0
    .goto 1429/0,-113.23,-8779.78,40,0
    .goto 1429/0,-81.99,-8684.88,40,0
    .goto 1429/0,-151.41,-8726.54,40,0
    >>Tötet Koboldtagelöhner
    .complete 15,1 --Kill Kobold Worker (x10)
step
    .goto 1429/0,-120.17,-8897.82
    .xp 3+1110 >>Farmt bis 1110+/1400 XP auf dem Weg zurück zur Stadt
step
    .goto 1429/0,-120.17,-8897.82
    .vendor >>Verkauft Müll
step
    .goto 1429/0,-162.62,-8902.59
>>Sprecht mit |cRXP_FRIENDLY_Marshal McBride|r
    .turnin 15 >> Gebt die Quest Überprüfung der Echokammmine ab
.target Marshal McBride
    .accept 21 >> Akzeptiert die Quest Scharmützel in der Echokammmine
step
    >>Geh nach oben
    .goto 1429/0,-175.70,-8881.62,15,0
    .goto 1429/0,-182.65,-8865.42,15,0
    .goto 1429/0,-188.23,-8851.58
.target Khelden Bremen
>>Sprecht mit |cRXP_FRIENDLY_Khelden Bremen|r
    .turnin 3104 >> Gebt die Quest Glyphen-Brief ab
    .trainer >> Trainiere deine Klassenfähigkeiten
step
    .goto 1429/0,-136.52,-8933.53
.target Deputy Willem
>>Sprecht mit |cRXP_FRIENDLY_Deputy Willem|r
    .accept 18 >> Akzeptiert die Quest Bruderschaft der Diebe
step
    .goto 1429/0,-328.42,-9147.80,60,0
    .goto 1429/0,-397.84,-9036.70,60,0
    .goto 1429/0,-363.13,-8909.39,60,0
    .goto 1429/0,-328.42,-9147.80,60,0
    .goto 1429/0,-397.84,-9036.70,60,0
    .goto 1429/0,-363.13,-8909.39,60,0
    >>Tötet Rohling der Defias. Plündert sie für Rotes Sackleinenkopftuch
    .complete 18,1 --Collect Red Burlap Bandana (x12)
step
    .goto 1429/0,-136.52,-8933.53
>>Sprecht mit |cRXP_FRIENDLY_Deputy Willem|r
    .turnin 18 >> Gebt die Quest Bruderschaft der Diebe ab
.target Deputy Willem
    .accept 6 >> Akzeptiert die Quest Kopfgeld auf Garrick Padfoot
    .accept 3903 >> Akzeptiert die Quest Milly Osworth
step
    .goto 1429/0,-120.17,-8897.82
    .vendor >>Verkauft Müll und repariert
step
    .goto 1429/0,-363.13,-8909.39,60,0
    .goto 1429/0,-120.17,-8673.31,60,0
    .goto 1429/0,-213.88,-8564.52,60,0
    .goto 1429/0,-120.17,-8673.31,60,0
    .goto 1429/0,-213.88,-8564.52,60,0
    .goto 1429/0,-120.17,-8673.31,60,0
    .goto 1429/0,-213.88,-8564.52,60,0
    .goto 1429/0,-120.17,-8673.31,60,0
    .goto 1429/0,-213.88,-8564.52,60,0
    >>Tötet Arbeiter in der Mine
    .complete 21,1 --Kill Kobold Laborer (x12)
step
    .xp 5 >> Farmt bis Stufe 5
step
    #era/som
    .goto 1429/0,-224.30,-8846.90
>>Sprecht mit |cRXP_FRIENDLY_Milly Osworth|r
    .turnin 3903 >> Gebt die Quest Milly Osworth ab
.target Milly Osworth
    .accept 3904 >> Akzeptiert die Quest Millys Ernte
step
    #som
    #phase 3-6
    .goto 1429/0,-224.30,-8846.90
.target Milly Osworth
>>Sprecht mit |cRXP_FRIENDLY_Milly Osworth|r
    .turnin 3903 >> Gebt die Quest Milly Osworth ab
step
    #era/som
    >>Plündert die Traubeneimer im Feld
    .goto 1429/0,-356.19,-9082.99
    .complete 3904,1 --Collect Milly's Harvest (x8)
step
    .goto 1429/0,-460.31,-9055.21
    >>Tötet Garrick plündere seinen Kopf
    .complete 6,1 --Collect Garrick's Head (x1)
step
    .xp 5+1175 >> Farmt auf dem Weg zurück bis 1175+/2800xp
    .goto 1429/0,-224.30,-8846.90
step
    #era/som
    .goto 1429/0,-224.30,-8846.90
>>Sprecht mit |cRXP_FRIENDLY_Milly Osworth|r
    .turnin 3904 >> Gebt die Quest Millys Ernte ab
.target Milly Osworth
    .accept 3905 >>Akzeptiert die Quest Traubenliste
step
    .goto 1429/0,-136.52,-8933.53
.target Deputy Willem
>>Sprecht mit |cRXP_FRIENDLY_Deputy Willem|r
    .turnin 6 >> Gebt die Quest Kopfgeld auf Garrick Padfoot ab
step
    .goto 1429/0,-162.62,-8902.59
>>Sprecht mit |cRXP_FRIENDLY_Marshal McBride|r
    .turnin 21 >> Gebt die Quest Scharmützel in der Echokammmine ab
.target Marshal McBride
    .accept 54 >> Akzeptiert die Quest Meldung in Goldhain
step
     #era/som
     >>Geht die Haupttreppe hinauf
    .goto 1429/0,-186.12,-8902.45,15,0
    .goto 1429/0,-161.82,-8895.51,15,0
    .goto 1429/0,-181.64,-8902.13
.target Brother Neals
>>Sprecht mit |cRXP_FRIENDLY_Bruder Neals|r
    .turnin 3905 >>Gebt die Quest Traubenliste ab
step
    .goto 1429/0,-47.28,-9043.64
.target Falkhaan Isenstrider
>>Sprecht mit |cRXP_FRIENDLY_Falkhaan Isenstrider|r
    .accept 2158 >> Akzeptiert die Quest Ruhe und Entspannung
step
    #softcore
    #sticky
    #completewith next
    .goto 1429/0,164.44,-9339.91,200 >> Stirb und spawne beim Geistheiler oder lauf nach Goldhain
step
    .goto 1429/0,88.08,-9464.89
    .vendor >> Verkauft Müll und repariert
step
    .goto 1429/0,74.02,-9465.52
>>Sprecht mit |cRXP_FRIENDLY_Marshal Dughan|r
    .turnin 54 >> Gebt die Quest Meldung in Goldhain ab
.target Marshal Dughan
    .accept 62 >> Die Fargodeep Mine annehmen
step
    .goto 1429/0,46.43,-9460.26,15,0
    >>Direkt links neben dir, wenn du das Gasthaus betrittst
    .goto 1429/0,33.14,-9460.75
.target William Pestle
>>Sprecht mit |cRXP_FRIENDLY_William Pestle|r
    .accept 60 >> Koboldkerzen annehmen
step
    .goto 1429/0,16.20,-9462.65
.target Innkeeper Farley
>>Sprich mit |cRXP_FRIENDLY_Gastwirt Farley|r
    .turnin 2158 >> Gebt die Quest Ruhe und Entspannung ab
    .home >> Setzt euren Ruhestein in Goldhain
step
    .xp 6 >> Grinde bis 6
step
    .goto 1429/0,18.66,-9476.47,12,0
    .goto 1429/0,36.02,-9471.84
    .trainer >> Geht nach oben und lernt eure Klassenfähigkeiten
step
    .goto 1429/0,74.20,-9497.30
.target Remy "Two Times"
>>Sprecht mit |cRXP_FRIENDLY_Remy "Zweifach"|r
    .accept 47 >> Tauschhandel mit Goldstaub annehmen
step
    #sticky
    #completewith BoarMeat1
    >>Beginne damit, Eber für Eberfleisch zu töten
    .collect 769,4 --Collect Chunk of Boar Meat (x4)
step
    .goto 1429/0,338.47,-9889.69
.target "Auntie" Bernice Stonefield
>>Sprecht mit |cRXP_FRIENDLY_"Tantchen" Bernice Stonefield|r
    .accept 85 >> Verlorene Halskette annehmen
    .goto 1429/0,332.43,-9894.99--c:Elwynn Forest,34.660,84.482
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
    .goto 1429/0,38.38,-9923.69
>>Sprecht mit |cRXP_FRIENDLY_Billy Maclure|r
    .turnin 85 >> Gebt die Quest Die verlorene Halskette ab
.target Billy Maclure
    .accept 86 >> Kuchen für Billy annehmen
step
    #label BoarMeat1
    .goto 1429/0,36.02,-10013.45
.target Maybell Maclure
>>Sprecht mit |cRXP_FRIENDLY_Maybell Maclure|r
    .accept 106 >> Junge liebende annehmen
step
    .goto 1429/0,63.78,-10008.82
    .vendor >>Kauft so viel Milch wie möglich vom Verkäufer
step
    #sticky
    #completewith next
    >>Tötet Eber, die ihr seht, für Eberfleisch
    .collect 769,4 --Collect Chunk of Boar Meat (x4)
step
    .goto 1429/0,499.72,-9930.05--c:Elwynn Forest,29.840,85.997
>>Sprecht mit |cRXP_FRIENDLY_Tommy Joe Stonefield|r
    .turnin 106 >> Gebt die Quest Junge Liebende ab
.target Tommy Joe Stonefield
    .accept 111 >> Gespräch mit Oma annehmen
step
    .goto 1429/0,407.40,-9918.55
    >>Beendet das Sammeln von Eberfleisch
    .complete 86,1 --Collect Chunk of Boar Meat (x4)
step
    .goto 1429/0,338.47,-9889.69
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
    .goto 1429/0,38.38,-9923.69
>>Sprecht mit |cRXP_FRIENDLY_Billy Maclure|r
    .turnin 84 >> Gebt die Quest Zurück zu Billy ab
.target Billy Maclure
    .accept 87 >> Goldzahn annehmen
step
    >>Geht in die Mine
    .goto 1429/0,129.73,-9844.49
    .complete 62,1 --Scout Through the Fargodeep Mine
step
    >>Tötet Goldzahn für Bernices Halskette
    .goto 1429/0,88.08,-9744.96--??
    .complete 87,1 --Collect Bernice's Necklace  (x1)
step
    .xp 7+1600 >>Farmt bis 1600+/4500xp
step
#hidewindow
    #requires KoboldCandles
step
    #label Goldtooth
    #requires GoldDust
    .goto 1429/0,338.47,-9889.69
.target "Auntie" Bernice Stonefield
>>Sprecht mit |cRXP_FRIENDLY_"Tantchen" Bernice Stonefield|r
    .turnin 87 >> Gebt die Quest Goldzahn ab
step
    >>Farmt einige Gegner auf dem Weg zurück nach Goldhain
    .xp 7+2690 >>Farmt bis 2690+/4500xp
    .goto 1429/0,74.20,-9497.30
step
    .goto 1429/0,74.20,-9497.30
>>Sprecht mit |cRXP_FRIENDLY_Remy "Zweifach"|r
    .turnin 47 >> Gebt die Quest Tauschhandel mit Goldstaub ab
.target Remy "Two Times"
    .accept 40 >> Gefahr aus dem Wasser annehmen
step
    .goto 1429/0,88.08,-9464.89
    .vendor >>Verkauft Müll und repariert
step
    .goto 1429/0,74.02,-9465.52
>>Sprecht mit |cRXP_FRIENDLY_Marshal Dughan|r
    .turnin 40 >> Gebt die Quest Gefahr aus dem Wasser ab
.target Marshal Dughan
    .accept 35 >> Weitere Sorgen annehmen
    .turnin 62 >> Die Fargodeep Mine abgeben
    .accept 76 >> Die Jaspismine annehmen
step
    .goto 1429/0,88.08,-9464.89
    .vendor >> Verkauft Müll und repariert
step
    .goto 1429/0,33.14,-9460.75
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
    .goto 1429/0,8.25,-9464.89
    .vendor >>Kauft einen 6er-Platz-Beutel von Brog
step
    .goto 1429/0,18.66,-9476.47,12,0
    .goto 1429/0,36.02,-9471.84
    .trainer >> Geht nach oben und lernt eure Klassenfähigkeiten
step
    .goto 1429/0,16.20,-9462.65
    .vendor >>Kauft bis zu 40x Wasser für Level 5
step
    >>Farmt Murlocs im Osten und plündert sie für Kristalltangwedel. Tötet auch Gegner auf der Insel, wenn ihr noch welche braucht
    .goto 1429/0,-116.70,-9404.71,60,0
    .goto 1429/0,-248.59,-9434.80,50,0
    .goto 1429/0,-463.78,-9393.14,50,0
    .goto 1429/0,-422.13,-9481.10,50,0
    .goto 1429/0,-331.89,-9485.73,50,0
    .complete 112,1 --Collect Crystal Kelp Frond (x4)
step
    >>Geht in die Mine und folgt dem mittleren Weg
    .goto 1429/0,-609.56,-9189.46,60,0
    .goto 1429/0,-560.97,-9101.50
    .complete 76,1 --Scout through the Jasperlode Mine
step
    .goto 1429/0,-1032.06,-9610.23
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
    .goto 1429/0,-987.88,-9335.28
    .turnin 37 >> Gebt die Quest Suche nach den vermissten Wachen ab
    .accept 45 >> Akzeptiert die Quest Rolfs Schicksal
step
    .goto 1429/0,-1289.22,-9469.80
.target Supervisor Raelen
>>Sprecht mit |cRXP_FRIENDLY_Vorsteherin Raelen|r
    .accept 5545 >> Ein Bündel Probleme annehmen
step
    .goto 1429/0,-1355.79,-9469.52
    .vendor >> Verkauft Müll und repariert
step
    #sticky
    #completewith Bundles
    >>Achtet auf die Holzbündel am Fuße der Bäume
    .collect 13872,8 --Collect Bundle of Wood (x8)
step
    #label Bundles
    .goto 1429/0,-1234.31,-9224.18,60 >> Geht zur Leiche des Wächters
step
    .goto 1429/0,-1234.31,-9224.18
    >> Tötet die Gegner um die Leiche. Zieht die 2 Gegner vor den Hütten, zieht euch zurück und verwandelt einen, während ihr den anderen tötet, dann tötet den verwandelten Gegner. Plündert die Leiche auf dem Boden
    >> Seid vorsichtig, da diese Quest schwierig sein kann
    .turnin 45 >> Gebt die Quest Rolfs Schicksal ab
    .accept 71 >> Meldung bei Thomas annehmen
step
    .goto 1429/0,-1130.18,-9383.88,40,0
    .goto 1429/0,-1369.67,-9314.45,40,0
    .goto 1429/0,-1130.18,-9383.88,40,0
    .goto 1429/0,-1369.67,-9314.45,40,0
    .goto 1429/0,-1130.18,-9383.88,40,0
    .goto 1429/0,-1369.67,-9314.45,40,0
    >>Lauft zurück und beendet das Sammeln der Bündel
    .collect 13872,8 --Collect Bundle of Wood (x8)
step
    #label Bundles2
    .goto 1429/0,-1289.22,-9469.80
.target Supervisor Raelen
>>Sprecht mit |cRXP_FRIENDLY_Vorsteherin Raelen|r
    .turnin 5545 >> Gebt die Quest Ein Bündel Probleme ab
step
    #label Prowlers
    .xp 9 >> Grinde bis 9
step
    #label Bears
    .goto 1429/0,-1222.40,-9531.76
.target Sara Timberlain
>>Sprecht mit |cRXP_FRIENDLY_Sara Timberlain|r
    .accept 83 >> Akzeptiert die Quest Rote Leinenwaren
step
    .goto 1429/0,-1126.71,-9689.41,40,0
    .goto 1429/0,-1230.84,-9876.89,40,0
    .goto 1429/0,-1310.67,-9717.18,40,0
    .goto 1429/0,-1126.71,-9689.41,40,0
    .goto 1429/0,-1230.84,-9876.89,40,0
    .goto 1429/0,-1310.67,-9717.18,40,0
    >>Tötet die letzten Gegner für Grenzschutz
    .complete 52,1 --Kill Prowler (x8)
    .complete 52,2 --Kill Young Forest Bear (x5)
step
    .goto 1429/0,-1032.06,-9610.23
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
    .goto 1429/0,-911.52,-9735.70,60,0
    .goto 1429/0,-828.22,-9733.39,60,0
    .goto 1429/0,-831.69,-9823.65,60,0
    .goto 1429/0,-921.93,-9812.08,60,0
    .goto 1429/0,-911.52,-9735.70,60,0
    .goto 1429/0,-828.22,-9733.39,60,0
    .goto 1429/0,-831.69,-9823.65,60,0
    .goto 1429/0,-921.93,-9812.08,60,0
    .goto 1429/0,-911.52,-9735.70,60,0
    .goto 1429/0,-828.22,-9733.39,60,0
    .goto 1429/0,-831.69,-9823.65,60,0
    .goto 1429/0,-921.93,-9812.08,60,0
    >>Umrundet die Farm, tötet die Defias und plündert sie für Rotes Leinenkopftuch
    .complete 83,1 --Collect Red Linen Bandana (x6)
    .isOnQuest 83
step
    #label Princess
    .goto 1429/0,-873.34,-9772.73
    >>Tötet Prinzessin. Benutzt einen Geringen Heiltrank von vorhin, wenn nötig. Plündert sie für das Messinghalsband
    >>Ihr könnt auch zwischen den Zäunen am Rand der Farm hin und her springen, um Prinzessin und ihre Gefolgsschweine zu töten
    .complete 88,1 --Collect Brass Collar (x1)
--N link
step
    #softcore
    #sticky
    #completewith next
    .goto 1429/0,-1366.20,-9552.85,120 >>Sterbt und respawnt beim Geistheiler, wenn ihr wenig Leben habt, sonst lauft zurück und gebt die Quest ab
step
    .goto 1429/0,-1223.90,-9534.33
.target Sara Timberlain
>>Sprecht mit |cRXP_FRIENDLY_Sara Timberlain|r
    .turnin 83 >> Gebt die Quest Rote Leinenwaren ab
    .isQuestComplete 83
step
    .goto 1433/0,-1741.68,-9644.29
    .zone Redridge Mountains >>Farmt auf dem Weg ins Rotkammgebirge
step
    #softcore
    #sticky
    #completewith next
    +Sterbt hier absichtlich an den Mobs
    .goto 1433/0,-1813.97,-9710.17
step
    #softcore
    >>Respawnt beim Geistheiler
    .goto 1433/0,-2022.37,-9394.52,100 >>Respawnt beim Geistheiler
step
    #softcore
    .goto 1433/0,-2235.11,-9435.06
    .fp Redridge Mountains >> Erlernt die Flugroute zum Rotkammgebirge
step
    #hardcore
    >>Lauft zur Flugroute. Seid vorsichtig: Versucht keine Aggro von den mobs auf eurem weg zu ziehen. Bleibt auf der Straße und achtet auf Mobs.
    .goto 1433/0,-2235.11,-9435.06
    .fp Redridge Mountains >> Erlernt die Flugroute zum Rotkammgebirge
step
    .hs >> Ruhestein nach Goldhain
step
    .goto 1429/0,33.14,-9460.75
    >>Wartet nicht auf sein Rollenspiel Event
.target William Pestle
>>Sprecht mit |cRXP_FRIENDLY_William Pestle|r
    .turnin 112 >> Gebt die Quest Die Suche nach dem Tang ab
step
    .goto 1429/0,70.72,-9462.58
>>Sprecht mit |cRXP_FRIENDLY_Marshal Dughan|r
    .turnin 39 >> Gebt die Quest Zustellung von Thomas' Bericht ab
    .turnin 76 >> Gebt die Quest Die Jaspismine ab
.target Marshal Dughan
    .accept 239 >> Akzeptiert die Quest Hilfe für die Weststromgarnison!
step
    .goto 1429/0,87.87,-9456.65
.target Smith Argus
.target Verner Osgood
>>Sprich mit |cRXP_FRIENDLY_Verner Gutmark|r
-->>Talk to |cRXP_FRIENDLY_Smith Argus|r
    .accept 1097 >> Elmores Aufgabe annehmen
step
    .goto 1429/0,88.08,-9464.89
    .vendor >>Verkauft Müll und repariert
step
    .goto 1429/0,33.14,-9460.75
.target William Pestle
>>Sprecht mit |cRXP_FRIENDLY_William Pestle|r
    .accept 114 >> Akzeptiert die Quest Die Flucht
step
    >>Lauft aus dem Gasthaus und geht nach Süden
    .goto 1429/0,36.02,-10013.45
.target Maybell Maclure
>>Sprecht mit |cRXP_FRIENDLY_Maybell Maclure|r
    .turnin 114 >> Gebt die Quest Die Flucht ab
step
    .goto 1429/0,332.43,-9894.99--c:Elwynn Forest,34.660,84.482
.target Ma Stonefield
>>Sprecht mit |cRXP_FRIENDLY_Mutter Stonefield|r
    .turnin 88 >> Gebt die Quest Prinzessin muss sterben! ab
step
    .goto 1429/0,695.47,-9663.95
.target Deputy Rainer
>>Sprecht mit |cRXP_FRIENDLY_Deputy Rainer|r
    .turnin 239 >> Gebt die Quest Hilfe für die Weststromgarnison ab
step
    .isOnQuest 184
    .goto 1436/0,916.67,-9852.67
.target Farmer Furlbrow
>>Sprecht mit |cRXP_FRIENDLY_Bauer Furlbrow|r
    .turnin 184 >> Gebt die Quest Furlbrows Urkunde ab
step
    .goto 1436/0,919.54,-9853.04
.target Verna Furlbrow
>>Sprecht mit |cRXP_FRIENDLY_Verna Furlbrow|r
    .accept 36 >> Akzeptiert die Quest Westfalleintopf
step
    .goto 1436/0,1042.11,-10112.11
.target Salma Saldean
>>Sprecht mit |cRXP_FRIENDLY_Salma Saldean|r
    .turnin 36 >> Gebt die Quest Westfalleintopf ab
step
    #softcore
    #sticky
    #completewith next
    .goto 1436/0,1207.17,-10552.67,150 >> Sterbt absichtlich und belebt euch beim Geistheiler wieder, oder lauft zu Späherkuppe
step
    .goto 1436/0,1045.22,-10508.800
.target Gryan Stoutmantle
>>Sprich mit |cRXP_FRIENDLY_Gryan Starkmantel|r
    .turnin 109 >> Gebt die Quest Meldung bei Gryan Stoutmantle ab
step
    .goto 1436/0,1021.60,-10500.61
    .vendor >>Verkauft Müll
.target Quartermaster Lewis
>>Sprecht mit |cRXP_FRIENDLY_Rüstmeister Lewis|r
    .accept 6181 >> Akzeptiert die Quest Eine eilige Nachricht
step
    #phase 3-6
    .goto 1436/0,1042.11,-10112.11
    .xp 11+3750 >> Farmt bis 3750+/8800 XP
step
    .goto 1436/0,1035.67,-10627.33
    .fp Sentinel Hill >> Holt euch den Flugpunkt der Späherkuppe
>>Sprecht mit |cRXP_FRIENDLY_Thor|r
    .turnin 6181 >> Gebt die Quest Eine eilige Nachricht ab
.target Thor
    .accept 6281 >> Akzeptiert die Quest Weiter nach Sturmwind
    .fly Stormwind >> Fliege nach Sturmwind
step
    .goto 1453/0,625.49,-8857.89
    >>Wählt Raketen. Diese richten sehr hohen Schaden an und können zum splitpullen verwendet werden
.target Morgan Pestle
>>Sprecht mit |cRXP_FRIENDLY_Morgan Pestle|r
    .turnin 61 >> Gebt die Quest Lieferung nach Sturmwind ab
step
    #era/som
    .goto 1453/0,613.39,-8796.05
    .trainer >> Erlernt 1h Schwerter
step
    .goto 1453/0,382.18,-8701.93
.target Osric Strang
>>Sprecht mit |cRXP_FRIENDLY_Osric Strang|r
    .turnin 6281 >> Gebt die Quest Weiter nach Sturmwind ab
    >>Verkaufe und Repariere
step
    #completewith next
    .goto 1453/0,684.64,-8387.31
.target Grimand Elmore
>>Sprecht mit |cRXP_FRIENDLY_Grimand Elmore|r
    .turnin 1097 >> Gebt die Quest Elmores Aufgabe ab
step
    .goto 1453/0,684.64,-8387.31
.target Grimand Elmore
>>Sprecht mit |cRXP_FRIENDLY_Grimand Elmore|r
    .accept 353 >> Akzeptiert die Quest Stormpikes Lieferung
step
    #sticky
    #completewith next
    .goto 1453/0,521.98,-8353.25,20 >>Betretet die Tiefenbahn
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
    .goto 1455/0,-1322.37,-4838.32,30 >>Betretet Eisenschmiede
step
    .goto 1455/0,-1152.40,-4821.13
    .fp Ironforge >> Holt euch den Flugpunkt in Eisenschmiede
step
    #phase 3-6
    .goto 1455/0,-928.40,-4614.46
     .trainer >> Trainiere deine Klassenfähigkeiten
step
    #sticky
    #completewith next
    .goto 1426/0,-832.79,-5022.97,100 >>Lauft aus Eisenschmiede
step
    .goto 1426/0,-1157.84,-5604.12,50,0
    .goto 1426/0,-1305.59,-5512.18
.target Rudra Amberstill
>>Sprecht mit |cRXP_FRIENDLY_Rudra Amberstill|r
    .accept 314 >> Akzeptiert die Quest Die Herde beschützen
step
    #sticky
    #completewith next
    .goto 1426/0,-1266.19,-5528.60,14,0
    .goto 1426/0,-1261.27,-5499.05,12 >> Lauft diesen Teil des Berges hinauf
step
    >>Tötet Vagash. Plündert ihn für Fangzahn von Vagash
    >>Lockt ihn zur Wache südlich der Ranch. Achtet darauf, dass ihr 51%+ Schaden an ihm verursacht
    >>Seid vorsichtig, da diese Quest schwierig sein kann
    .goto 1426/0,-1280.97,-5390.70
    .goto 1426/0,-1289.83,-5669.780,0
    .complete 314,1 --Collect Fang of Vagash (1)
--N add video tutorial
step
    .goto 1426/0,-1305.59,-5512.18
.target Rudra Amberstill
>>Sprecht mit |cRXP_FRIENDLY_Rudra Amberstill|r
    .turnin 314 >> Gebt die Quest Die Herde beschützen ab
step
    >>Farmt ein bisschen auf dem Weg
    .goto 1426/0,-1576.47,-5673.07
    .vendor >>Verkauft, kauft Essen und Wasser
step
    .goto 1426/0,-1581.39,-5715.75
.target Senator Mehr Stonehallow
>>Sprecht mit |cRXP_FRIENDLY_Senator Mehr Stonehallow|r
    .accept 433 >> Akzeptiert die Quest Im Dienste des Volkes
step
    .goto 1426/0,-1600.30,-5726.590
.target Foreman Stonebrow
>>Sprecht mit |cRXP_FRIENDLY_Großknecht Stonebrow|r
    .accept 432 >> Akzeptiert die Quest Diese verfluchten Troggs!
step
    .goto 1426/0,-1674.97,-5735.45,30,0
    .goto 1426/0,-1684.82,-5627.10,30,0
    .goto 1426/0,-1738.99,-5541.73,30,0
    .goto 1426/0,-1788.24,-5620.53,30,0
    .goto 1426/0,-1674.97,-5735.45,30,0
    .goto 1426/0,-1684.82,-5627.10,30,0
    .goto 1426/0,-1738.99,-5541.73,30,0
    .goto 1426/0,-1788.24,-5620.53,30,0
    >>Tötet die Troggs in der Höhle
    .complete 432,1 --Kill Rockjaw Skullthumper (6)
    .complete 433,1 --Kill Rockjaw Bonesnapper (10)
step
    #era/som
    .xp 10+6350 >>Farmt bis 6350+/7600
step
    .goto 1426/0,-1600.30,-5726.590
.target Foreman Stonebrow
>>Sprecht mit |cRXP_FRIENDLY_Großknecht Stonebrow|r
    .turnin 432 >> Gebt die Quest Diese verfluchten Troggs! ab
step
    #completewith next
    .goto 1426/0,-1591.24,-5712.47
    .vendor >> Verkauft Müll und repariert
step
    .goto 1426/0,-1581.39,-5715.75
.target Senator Mehr Stonehallow
>>Sprecht mit |cRXP_FRIENDLY_Senator Mehr Stonehallow|r
    .turnin 433 >> Gebt die Quest Im Dienste des Volkes ab
step
    #era/som--xpgate
    .xp 11
step
    .goto 1426/0,-1576.47,-5673.07
    .vendor >>Verkauft Müll, kaufe 30x Wasser der Stufe 5 von Kazan
    .trainer >> Erlernt Kochkunst von Ghilm. Ihr braucht dies, um später 2 zusätzliche Quests anzunehmen
step
    .goto 1426/0,-2329.60,-5163.76
.target Pilot Hammerfoot
>>Sprecht mit |cRXP_FRIENDLY_Pilot Hammerfoot|r
    .accept 419 >> Akzeptiert die Quest Der vermisste Pilot
step
    .goto 1426/0,-2123.14,-5065.65
    .turnin 419 >> Gebt die Quest Der vermisste Pilot ab
    .accept 417 >> Akzeptiert die Quest Pilotenrache
step
    >>Tötet Marterklaue. Plündert sie für seine Räudige Klaue
    .goto 1426/0,-2137.92,-5072.22
    .complete 417,1 --Collect Mangy Claw (x1)
step
    .goto 1426/0,-2329.60,-5163.76
.target Pilot Hammerfoot
>>Sprecht mit |cRXP_FRIENDLY_Pilot Hammerfoot|r
    .turnin 417 >> Gebt die Quest Pilotenrache ab
step
    .goto 1426/0,-2354.62,-4898.20,25 >>Geht durch den Tunnel nach Loch Modan
]])

RXPGuides.RegisterGuide([[
#forever
<< Gnome Mage
#name 1-10 Dun Morogh Magier AoE
#version 1
#group RestedXP Forever Dungeonführer (A)
#subgroup Speedrun Guide Magier
#defaultfor Dwarf/Gnome
#next 10-12 Loch Modan Magier AoE Guide
step
    #era/som
    #sticky
    #completewith next
    .goto 1426/0,328.18,-6214.85
    +Ihr habt einen Leitfaden für Gnome und Zwerge ausgewählt. Ihr solltet die gleiche Startzone wählen, in der ihr startet << Human
    +Hinweis, dass ihr den AoE-Guide ausgewählt habt. AoE ist normalerweise viel schwieriger als Einzelziel-Magier, aber VIEL schneller
step
    #phase 3-6
    #sticky
    #completewith next
    .goto 1426/0,328.18,-6214.85
    +Ihr habt einen Leitfaden für Gnome und Zwerge ausgewählt. Ihr solltet die gleiche Startzone wählen, in der ihr startet << Human
    +Hinweis:Ihr habt den AoE-Leitfaden ausgewählt. AoE ist normalerweise viel schwieriger als Single-Target-Magie, aber mit den neuen 100%-Quest-XP-Änderungen ist es auch langsamer.
step
    >>Zerstört euren Ruhestein
    .goto 1426/0,328.18,-6214.85
.target Sten Stoutarm
>>Sprecht mit |cRXP_FRIENDLY_Sten Stoutarm|r
    .accept 179 >> Akzeptiert die Quest Zwergenausstatter
step
    >>Tötet Wölfe. Plündert sie für Fleisch
    .goto 1426/0,388.61,-6333.02
    .complete 179,1 --Collect Tough Wolf Meat (x8)
step
    .xp 2 >> Farmt bis Stufe 2
step
    .goto 1426/0,324.58,-6224.67
    >>verkauft Müll. Kauft 15 Wasser. Farmt zusätzliche Wölfe, wenn ihr nicht genug Geld habt
    .collect 159,15 --Collect Refreshing Spring Water (x15)
step
    .goto 1426/0,328.18,-6214.85
>>Sprecht mit |cRXP_FRIENDLY_Sten Stoutarm|r
    .turnin 179 >> Gebt die Quest Zwergenausstatter ab
.target Sten Stoutarm
    .accept 233 >> Akzeptiert die Quest Postbeförderung im Coldridgetal
    .accept 3114 >> Akzeptiert die Quest Glyphen-Memorandum
step
    .goto 1426/0,339.36,-6214.82
.target Balir Frosthammer
>>Sprecht mit |cRXP_FRIENDLY_Balir Frosthammer|r
    .accept 170 >> Akzeptiert die Quest Eine neue Bedrohung
step
    #sticky
    #completewith Rockjaw
    >>Tötet normale Trogg der Felsenkiefer, die ihr seht
    .complete 170,1 --Kill Rockjaw Trogg (x6)
step
    .goto 1426/0,477.26,-6264.07,30,0
    .goto 1426/0,565.91,-6244.37,30,0
    .goto 1426/0,477.26,-6264.07,30,0
    .goto 1426/0,565.91,-6244.37,30,0
    >>Tötet Bulliger Trogg der Felsenkiefer
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
step
    .goto 1426/0,688.98,-6222.47
>>Sprecht mit |cRXP_FRIENDLY_Talin Keeneye|r
    .turnin 233 >> Gebt die Quest Postbeförderung im Eisklammtal ab
.target Talin Keeneye
    .accept 183 >> Akzeptiert die Quest Der Eberjäger
    .accept 234 >> Akzeptiert die Quest Postbeförderung im Coldridgetal
step
    .goto 1426/0,708.73,-6257.50,40,0
    .goto 1426/0,792.46,-6221.38,40,0
    .goto 1426/0,762.91,-6142.58,40,0
    .goto 1426/0,679.18,-6162.28,40,0
    .goto 1426/0,708.73,-6257.50,40,0
    .goto 1426/0,792.46,-6221.38,40,0
    .goto 1426/0,762.91,-6142.58,40,0
    .goto 1426/0,679.18,-6162.28,40,0
    >>Tötet Eber in der Umgebung
    .complete 183,1 --Kill Small Crag Boar (x12)
step
    .goto 1426/0,688.98,-6222.47
.target Talin Keeneye
>>Sprecht mit |cRXP_FRIENDLY_Talin Keeneye|r
    .turnin 183 >> Gebt die Quest Der Eberjäger ab
step
    .xp 3+860 >> Farmt bis 860+/1400xp
    .goto 1426/0,669.33,-6339.58,40,0
    .goto 1426/0,610.23,-6257.50,40,0
    .goto 1426/0,437.86,-6382.27,40,0
    .goto 1426/0,669.33,-6339.58,40,0
    .goto 1426/0,610.23,-6257.50,40,0
    .goto 1426/0,437.86,-6382.27,40,0
step
    #label Rockjaw
    .goto 1426/0,567.09,-6362.99
>>Sprecht mit |cRXP_FRIENDLY_Grelin Whitebeard|r
    .turnin 234 >> Gebt die Quest Postbeförderung im Eisklammtal ab
.target Grelin Whitebeard
    .accept 182 >> Akzeptiert die Quest Die Trollhöhle
step
    .goto 1426/0,570.83,-6372.42
.target Nori Pridedrift
>>Sprecht mit |cRXP_FRIENDLY_Nori Pridedrift|r
    .accept 3364 >> Akzeptiert die Quest Lieferung des kochend heißen Morgengebräus
    >> Einmal akzeptiert startet ein 5-Minuten-Timer. Entspannt euch und folgt dem Leitfaden
step
    .goto 1426/0,388.61,-6421.67
    >>Geht hier hoch und tötet Troggs, falls ihr noch nicht damit fertig seid
    .complete 170,1 --Kill Rockjaw Trogg (x6)
step
    #sticky
    #completewith Scalding1
    >>Falls ihr zu langsam wart und die getimte Quest fehlschlägt , geht hin und nehmt sie erneut an
    .goto 1426/0,570.83,-6372.42,0
.target Nori Pridedrift
>>Sprecht mit |cRXP_FRIENDLY_Nori Pridedrift|r
    .accept 3364 >> Akzeptiert die Quest Lieferung des kochend heißen Morgengebräus
    .goto 1426/0,383.68,-6057.22
.target Durnan Furcutter
>>Sprecht mit |cRXP_FRIENDLY_Durnan Furcutter|r
    .turnin 3364 >> Gebt die Quest Lieferung des kochend heißen Morgengebräus ab
step
    #label Scalding1
    .goto 1426/0,383.68,-6057.22
>>Sprecht mit |cRXP_FRIENDLY_Durnan Furcutter|r
    .turnin 3364 >> Gebt die Quest Lieferung des kochend heißen Morgengebräus ab
.target Durnan Furcutter
    .accept 3365 >> Akzeptiert die Quest Den Becher zurückbringen
    .vendor >> Verkauft Müll
step
    .goto 1426/0,388.17,-6056.10
.target Marryk Nurribit
>>Sprecht mit |cRXP_FRIENDLY_Marryk Nurribit|r
    .turnin 3114 >> Gebt die Quest Glyphen-Memorandum ab
    .trainer >> Trainiere deine Klassenfähigkeiten
step
    >>Lauft zurück aus dem Bunker
    .goto 1426/0,339.36,-6214.82
.target Balir Frosthammer
>>Sprecht mit |cRXP_FRIENDLY_Balir Frosthammer|r
    .turnin 170 >> Gebt die Quest Eine neue Bedrohung ab
step
    .goto 1426/0,324.58,-6224.67
    .vendor >>Kauft 10 Wasser
    .collect 159,10 --Collect Refreshing Spring Water (x10)
step
    .goto 1426/0,506.81,-6477.48,30,0
    .goto 1426/0,684.11,-6480.77,30,0
    .goto 1426/0,772.76,-6362.57,30,0
    .goto 1426/0,684.11,-6480.77,30,0
    .goto 1426/0,772.76,-6362.57,30,0
    .goto 1426/0,684.11,-6480.77,30,0
    .goto 1426/0,772.76,-6362.57,30,0
    >>Tötet Trollwelpe der Frostmane
    .complete 182,1 --Kill Frostmane Troll Whelp (x14)
step
    #sticky
    #label Mug
    .goto 1426/0,570.83,-6372.42
.target Nori Pridedrift
>>Sprecht mit |cRXP_FRIENDLY_Nori Pridedrift|r
    .turnin 3365 >> Gebt die Quest Den Becher zurückbringen ab
step
    .goto 1426/0,567.09,-6362.99
>>Sprecht mit |cRXP_FRIENDLY_Grelin Whitebeard|r
    .turnin 182 >> Gebt die Quest Die Trollhöhle ab
.target Grelin Whitebeard
    .accept 218 >> Akzeptiert die Quest Das gestohlene Tagebuch
step
    #requires Mug
    .goto 1426/0,482.18,-6500.47,30,0
    .goto 1426/0,373.83,-6470.92,15,0
    .goto 1426/0,295.03,-6513.60
    >>BETRETET die Trollhöhle. Tötet Grik'nir und plündert Grelin Whitebeards Tagebuch
    .complete 218,1 --Collect Grelin Whitebeard's Journal (x1)
step
    >>Farmt hier noch ein bisschen zurück
    .goto 1426/0,565.91,-6365.85
>>Sprecht mit |cRXP_FRIENDLY_Grelin Whitebeard|r
    .turnin 218 >> Gebt die Quest Das gestohlene Tagebuch ab
.target Grelin Whitebeard
    .accept 282 >> Akzeptiert die Quest Senirs Beobachtungen
step
    >> Farmt ein paar Gegner bis zu diesem Punkt
    .goto 1426/0,153.00,-6235.86
>>Sprecht mit |cRXP_FRIENDLY_Gebirgsjäger Thalos|r
    .turnin 282 >> Gebt Senirs Beobachtungen ab
.target Mountaineer Thalos
    .accept 420 >> Akzeptiert die Quest Senirs Beobachtungen
step
    .goto 1426/0,132.51,-6247.65
.target Hands Springsprocket
>>Sprecht mit |cRXP_FRIENDLY_Hands Springsprocket|r
    .accept 2160 >> Akzeptiert die Quest Vorräte für Tannok
step
    .goto 1426/0,122.66,-6227.95,20,0
    .goto 1426/0,43.86,-6044.08,20 >>Geht durch den Tunnel
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
    .goto 1426/0,9.38,-5942.30,45,0
    .goto 1426/0,-54.64,-5863.50,45,0
    .goto 1426/0,-359.99,-5705.90
    .xp 5+2415 >> Farmt bis 2415/+2800 EP
step
    #softcore
    .goto 1426/0,-512.67,-5686.2,120 >> Sterbt und respawnt beim Geistheiler oder lauft nach Kharanos. Stellt sicher, dass eure Zone NICHT Eisklamm ist
step
    .goto 1426/0,-499.17,-5644.37
.target Senir Whitebeard
>>Sprecht mit |cRXP_FRIENDLY_Senir Whitebeard|r
    .turnin 420 >> Gebt Senirs Beobachtungen ab
step
    #completewith next
    .goto 1426/0,-497.89,-5633.67
    .vendor >>Verkauft Müll
step
    .goto 1426/0,-502.82,-5597.55
.target Ragnar Thunderbrew
>>Sprecht mit |cRXP_FRIENDLY_Ragnar Donnerbräu|r
    .accept 384 >> Akzeptiert die Quest Eberrippchen in Biersauce
step
    .goto 1426/0,-576.69,-5748.58
    .xp 6 >> Grinde bis 6
step
    .goto 1426/0,-523.35,-5590.82
.target Tannok Frosthammer
>>Sprecht mit |cRXP_FRIENDLY_Tannok Frosthammer|r
    .turnin 2160 >> Gebt die Quest Vorräte für Tannok ab
step
    >>Oben
    .goto 1426/0,-537.29,-5587.70
    .trainer >> Trainiere deine Klassenfähigkeiten
step
    .goto 1426/0,-532.37,-5600.83
    .home >> Setzt den Ruhestein von Euch in die Brauerei Donnerbräu
    .vendor >> Kauft so viel trinken der Stufe 5, wie ihr euch leisten könnt
step
    .goto 1426/0,-464.45,-5573.78
.target Tharek Blackstone
>>Sprecht mit |cRXP_FRIENDLY_Tharek Blackstone|r
    .accept 400 >> Akzeptiert die Quest Werkzeuge für Steelgrill
step
    .goto 1426/0,-632.15,-5466.540
    >>Tötet NICHT die Bären auf dem Weg
.target Pilot Bellowfiz
>>Sprecht mit |cRXP_FRIENDLY_Pilot Bellowfiz|r
    .accept 317 >> Akzeptiert die Quest Vorräte für Jetsteam
step
    .goto 1426/0,-641.80,-5473.18
.target Pilot Stonegear
>>Sprecht mit |cRXP_FRIENDLY_Pilot Stonegear|r
    .accept 313 >> Akzeptiert die Quest Der altgediente Bau
step
    .goto 1426/0,-680.12,-5489.20
.target Beldin Steelgrill
>>Sprecht mit |cRXP_FRIENDLY_Beldin Steelgrill|r
    .turnin 400 >> Gebt die Quest Werkzeuge für Steelgrill ab
step
    #label BoarMeat44
    .goto 1426/0,-664.55,-5499.710
.target Loslor Rudge
>>Sprecht mit |cRXP_FRIENDLY_Loslor Rudge|r
    .accept 5541 >> Akzeptiert die Quest Munition für Rumbleshot
step
    .goto 1426/0,-758.92,-5522.03,40,0
    .goto 1426/0,-734.29,-5646.80,40,0
    .goto 1426/0,-665.34,-5646.80,40,0
    .goto 1426/0,-655.49,-5548.30,40,0
    .goto 1426/0,-561.92,-5502.33,40,0
    .goto 1426/0,-571.77,-5416.97,40,0
    .goto 1426/0,-340.29,-5600.83,40,0
    .goto 1426/0,-758.92,-5522.03,40,0
    .goto 1426/0,-734.29,-5646.80,40,0
    .goto 1426/0,-665.34,-5646.80,40,0
    .goto 1426/0,-655.49,-5548.30,40,0
    .goto 1426/0,-561.92,-5502.33,40,0
    .goto 1426/0,-571.77,-5416.97,40,0
    .goto 1426/0,-340.29,-5600.83,40,0
    .goto 1426/0,-758.92,-5522.03,40,0
    .goto 1426/0,-734.29,-5646.80,40,0
    .goto 1426/0,-665.34,-5646.80,40,0
    .goto 1426/0,-655.49,-5548.30,40,0
    .goto 1426/0,-561.92,-5502.33,40,0
    .goto 1426/0,-571.77,-5416.97,40,0
    .goto 1426/0,-340.29,-5600.83,40,0
    .goto 1426/0,-758.92,-5522.03,40,0
    .goto 1426/0,-734.29,-5646.80,40,0
    .goto 1426/0,-665.34,-5646.80,40,0
    .goto 1426/0,-655.49,-5548.30,40,0
    .goto 1426/0,-561.92,-5502.33,40,0
    .goto 1426/0,-571.77,-5416.97,40,0
    .goto 1426/0,-340.29,-5600.83,40,0
    >>Sammelt die Gegenstände für Vorräte für Jetsteam
    .complete 317,1 --Collect Chunk of Boar Meat (x4)
    .complete 317,2 --Collect Thick Bear Fur (x2)
step
    .goto 1426/0,-632.15,-5466.540
>>Sprecht mit |cRXP_FRIENDLY_Pilot Bellowfiz|r
    .turnin 317 >> Gebt die Quest Vorräte für Jetsteam ab
.target Pilot Bellowfiz
    .accept 318 >> Akzeptiert die Quest Immerschimmer
step
    >>Geht zum Gasthaus zurück
    .goto 1426/0,-507.74,-5587.70,20,0
    .goto 1426/0,-532.37,-5600.83
    .vendor >> Kauft so viel trinken der Stufe 5, wie ihr euch leisten könnt
    >>Ihr könnt ein Kürschnermesser außerhalb vom Gasthaus kaufen, wenn ihr wollt. Bis ihr eine Waffe mit +stats bekommt, ist es besser als ein Stab
step
    .goto 1426/0,-291.04,-5676.35,40,0
    .goto 1426/0,-286.12,-5590.98,40,0
    .goto 1426/0,-217.17,-5499.05,40,0
    .goto 1426/0,-291.04,-5676.35,40,0
    .goto 1426/0,-286.12,-5590.98,40,0
    .goto 1426/0,-217.17,-5499.05,40,0
    .goto 1426/0,-291.04,-5676.35,40,0
    .goto 1426/0,-286.12,-5590.98,40,0
    .goto 1426/0,-217.17,-5499.05,40,0
    .goto 1426/0,-291.04,-5676.35,40,0
    .goto 1426/0,-286.12,-5590.98,40,0
    .goto 1426/0,-217.17,-5499.05,40,0
    >> Geht in die Höhle. Tötet die Wendigos. Plündert sie für Wendigomähne
    .complete 313,1 --Collect Wendigo Mane (x8)
step
    >>Plündert die Kiste
    .goto 1426/0,-369.84,-5745.30
    .complete 5541,1 --Collect Rumbleshot's Ammo (x1)
step
    #label BearFur
    .goto 1426/0,-197.47,-5932.45,30,0
    .goto 1426/0,-201.51,-6015.520
.target Hegnar Rumbleshot
>>Sprecht mit |cRXP_FRIENDLY_Hegnar Rumbleshot|r
    .turnin 5541 >> Gebt die Quest Munition für Rumbleshot ab
    .vendor >> Verkaufe und Repariere
step
    .xp 7 >> Farmt bis Stufe 7
step
    >>Farmt ein paar Gegner auf eurer Route
    .goto 1426/0,68.48,-5728.88,50,0
    .goto 1426/0,29.08,-5584.42,50,0
    .goto 1426/0,98.03,-5574.57
.target Tundra MacGrann
>>Sprecht mit |cRXP_FRIENDLY_Tundra MacGrann|r
    .accept 312 >> Akzeptiert die Quest Tundra MacGranns gestohlene Vorräte
step
    .goto 1426/0,299.96,-5387.42
    .vendor >> Verkaufen. Kauft bis zu 20 Stufe 5 Wasser
step
    #sticky
    #label Evershine
    .goto 1426/0,314.73,-5380.85
>>Sprecht mit |cRXP_FRIENDLY_Rejold Gerstenbräu|r
    .turnin 318 >> Gebt die Quest Immerschimmer ab
.target Rejold Barleybrew
    .accept 319 >> Akzeptiert die Quest Ein Gefallen für etwas Immerschimmer
    .accept 315 >> Akzeptiert die Quest Das perfekte Starkbier
step
    .goto 1426/0,315.42,-5372.02
.target Marleth Barleybrew
>>Sprecht mit |cRXP_FRIENDLY_Marleth Gerstenbräu|r
    .accept 310 >> Akzeptiert die Quest Bittere Rivalen
step
    #label Ribs
    #requires Evershine
    .goto 1426/0,250.71,-5154.30,60,0
    .goto 1426/0,408.31,-5187.13,60,0
    .goto 1426/0,388.61,-5311.90,60,0
    .goto 1426/0,531.43,-5426.82,60,0
    .goto 1426/0,531.43,-5426.82,60,0
    .goto 1426/0,324.58,-5577.85,60,0
    .goto 1426/0,250.71,-5154.30,60,0
    .goto 1426/0,408.31,-5187.13,60,0
    .goto 1426/0,388.61,-5311.90,60,0
    .goto 1426/0,531.43,-5426.82,60,0
    .goto 1426/0,531.43,-5426.82,60,0
    .goto 1426/0,324.58,-5577.85,60,0
    >> Tötet Bären, Eber und Leoparden. Geht von Norden nach Westen nach Süden
    .complete 319,1 --Kill Ice Claw Bear (x6)
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .complete 319,3 --Kill Snow Leopard (x8)
step
    >>Beendet das farmen der Eberrippchen
    .complete 384,1 --Collect Crag Boar Rib (x6)
step
    .goto 1426/0,315.28,-5378.39
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
    .goto 1426/0,-532.37,-5600.83
    >> Kauft ein Rhapsody-Malzbier und Donnerbier von Belm
    .complete 384,2 --Collect Rhapsody Malt (x1)
    .collect 2686,1 --Collect Thunder Ale (x1)
step
    .goto 1426/0,-542.22,-5597.55,10,0
    .goto 1426/0,-547.63,-5607.07
    >>Geht nach unten, sprecht dann mit Jarven und gebt ihm das Donnerbier
    >>Wartet darauf, dass das Fass "unbewacht" wird, dann gebt es ab
    .turnin 310 >> Gebt die Quest Bittere Rivalen ab
    .accept 311 >> Akzeptiert die Quest Rückkehr zu Marleth
step
    .goto 1426/0,-502.82,-5597.55
.target Ragnar Thunderbrew
>>Sprecht mit |cRXP_FRIENDLY_Ragnar Donnerbräu|r
    .turnin 384 >> Gebt die Quest Eberrippchen in Biersauce ab
     >>Verkauft das Rezept beim nächsten Händler
step
    .xp 8 >> Grinde bis 8
step
    .goto 1426/0,-537.29,-5587.70
    .trainer >> Trainiere deine Klassenfähigkeiten
    >>Stellt sicher, dass ihr Verwandlung trainiert habt
step
    .goto 1426/0,-532.37,-5600.83
    .vendor >> Kauft bis zu 30 Level-5-Wasser vom Gastwirt
step
    .goto 1426/0,-499.17,-5644.37
.target Senir Whitebeard
>>Sprecht mit |cRXP_FRIENDLY_Senir Whitebeard|r
    .accept 287 >> Akzeptiert die QuestHöhle der Frostmane
step
    .goto 1426/0,-641.80,-5473.18
.target Pilot Stonegear
>>Sprecht mit |cRXP_FRIENDLY_Pilot Stonegear|r
    .turnin 313 >> Gebt die Quest Der altgediente Bau
step
    .goto 1426/0,-632.15,-5466.540
.target Pilot Bellowfiz
>>Sprecht mit |cRXP_FRIENDLY_Pilot Bellowfiz|r
    .turnin 320 >> Gebt die Quest Rückkehr zu Bellowfiz ab
step
    #era/som
    >>Im Gebäude
    .goto 1426/0,-453.57,-5499.05
.target Razzle Sprysprocket
>>Sprecht mit |cRXP_FRIENDLY_Razzle Sprysprocket|r
    .accept 412 >> Akzeptiert die Quest Operation Rekombobulationsgerät
step
    .goto 1426/0,-320.59,-5354.58,25,0
    .goto 1426/0,-271.34,-5367.72,25 >> Lauft die Rampe hinauf zum Schimmerkraut
step
    .goto 1426/0,-212.24,-5364.43,30,0
    .goto 1426/0,-241.79,-5308.62,30,0
    .goto 1426/0,-153.14,-5190.42,30,0
    .goto 1426/0,-271.34,-5003.27,30,0
    >>Tötet die Mobs in dieser Gegend. Seid vorsichtig, wenn ihr das mittlere Lager räumen müsst. Ihr könnt die Mobs in den Hütten pullen und sie hinter den Hütten aus dem Sichtbereich (LoS) bringen, wenn ihr noch 2 Mobs braucht. Falls ihr Pech habt, lauft in den anderen Bereich
    >>Plündert den Schimmerkrautkorb auf dem Boden
    .complete 315,1 --Collect Shimmerweed (x6)
step
    >> Verwandelt Eisbart der Alte, dann plündert MacGranns Trockenfleisch
    .goto 1426/0,-94.04,-5646.80
    .complete 312,1 --Collect MacGrann's Dried Meats (x1)
step
    .goto 1426/0,98.03,-5574.57
.target Tundra MacGrann
>>Sprecht mit |cRXP_FRIENDLY_Tundra MacGrann|r
    .turnin 312 >> Gebt die Quest Tundra MacGranns gestohlene Vorräte ab
step
    .goto 1426/0,304.88,-5380.85
    .vendor >> Kauft bis zu 20 weiteres Level-5-Wasser
step
    #sticky
    #label Stout
    .goto 1426/0,315.28,-5378.39
>>Sprecht mit |cRXP_FRIENDLY_Rejold Gerstenbräu|r
    .turnin 315 >> Gebt die Quest Das perfekte Starkbier ab
.target Rejold Barleybrew
    .accept 413 >> Akzeptiert die Quest Schimmerstarkbier
step
    .goto 1426/0,315.42,-5372.02
.target Marleth Barleybrew
>>Sprecht mit |cRXP_FRIENDLY_Marleth Gerstenbräu|r
    .turnin 311 >> Gebt die Quest Rückkehr zu Marleth ab
step
    #era/som
    #requires Stout
    .goto 1426/0,462.48,-5288.92,40,0
    .goto 1426/0,580.68,-5167.43,40,0
    .goto 1426/0,541.28,-5302.05,40,0
    .goto 1426/0,605.31,-5321.75,40,0
    .goto 1426/0,551.13,-5367.72,40,0
    >>Tötet Lepragnom. Plündert sie für Gyromechanische Getriebeteile und Restabilisationszahnrad
    .complete 412,2 --Collect Gyromechanic Gear (x8)
    .complete 412,1 --Collect Restabilization Cog (x8)
step
    .xp 9 >> Grinde bis 9
step
    .goto 1426/0,595.46,-5545.02,35 >>Betretet die Höhle
step
    .goto 1426/0,713.66,-5528.60,40,0
    .goto 1426/0,753.06,-5613.97,40,0
    >>Tötet die Kopfgeldjäger in der Höhle
    .complete 287,1 --Kill Frostmane Headhunter (x5)
step
    #hardcore
    >>Farmt vorsichtig in dieser Ecke der Höhle hinunter
    .goto 1426/0,669.33,-5590.98
    .complete 287,2 --Fully explore Frostmane Hold
step
    #softcore
    .goto 1426/0,649.63,-5568.00,15 >>Geht die Höhle wieder hoch
step
    #softcore
    >>Springt hinunter, danach sterbt ihr
    .goto 1426/0,669.33,-5590.98
    .complete 287,2 --Fully explore Frostmane Hold
step
    #softcore
    .deathskip >> Sterbt und respawnt beim Geistheiler
step
    #hardcore
   .goto 1426/0,-499.17,-5644.37,150 >> Ruhestein, wenn er verfügbar ist. Anderenfalls farmt auch dem Weg zurück nach Kharanos
step
    .goto 1426/0,-499.17,-5644.37
>>Sprecht mit |cRXP_FRIENDLY_Senir Whitebeard|r
    .turnin 287 >> Gebt die Quest Höhle der Frostmähnen ab
.target Senir Whitebeard
    .accept 291 >> Akzeptiert die Quest Die Berichte
step
    #era/som
    .goto 1426/0,-453.57,-5499.05
.target Razzle Sprysprocket
>>Sprecht mit |cRXP_FRIENDLY_Razzle Sprysprocket|r
    .turnin 412 >> Gebt die Quest Operation Rekombobulationsgerät ab
step
    .goto 1426/0,-1157.84,-5604.12,50,0
    .goto 1426/0,-1305.59,-5512.18
.target Rudra Amberstill
>>Sprecht mit |cRXP_FRIENDLY_Rudra Amberstill|r
    .accept 314 >> Akzeptiert die Quest Die Herde beschützen
step
    #sticky
    #completewith next
    .goto 1426/0,-1266.19,-5528.60,14,0
    .goto 1426/0,-1261.27,-5499.05,10 >>Lauft diesen Teil des Berges hinauf
step
    >>Tötet Vagash. Plündert ihn für Fangzahn von Vagash
    >>Lockt ihn zur Wache südlich der Ranch. Achtet darauf, dass ihr 51%+ Schaden an ihm verursacht
    >>Seid vorsichtig, da diese Quest schwierig sein kann
    .goto 1426/0,-1280.97,-5390.70
    .complete 314,1 --Collect Fang of Vagash (1)
--N Video tutorial needed
step
    .goto 1426/0,-1305.59,-5512.18
.target Rudra Amberstill
>>Sprecht mit |cRXP_FRIENDLY_Rudra Amberstill|r
    .turnin 314 >> Gebt die Quest Die Herde beschützen ab
step
    >>Farmt ein bisschen auf dem Weg
    .goto 1426/0,-1576.47,-5673.07
    .vendor >>Verkauft Müll. Kauft etwas Essen/Wasser, falls nötig
step
    .goto 1426/0,-1581.39,-5715.75
.target Senator Mehr Stonehallow
>>Sprecht mit |cRXP_FRIENDLY_Senator Mehr Stonehallow|r
    .accept 433 >> Akzeptiert die Quest Im Dienste des Volkes
step
    #completewith next
    .goto 1426/0,-1591.24,-5712.47
    .vendor >> Verkauft Müll und repariert
step
    .goto 1426/0,-1600.30,-5726.590
.target Foreman Stonebrow
>>Sprecht mit |cRXP_FRIENDLY_Großknecht Stonebrow|r
    .accept 432 >> Akzeptiert die Quest Diese verfluchten Troggs!
step
    .goto 1426/0,-1674.97,-5735.45,30,0
    .goto 1426/0,-1684.82,-5627.10,30,0
    .goto 1426/0,-1738.99,-5541.73,30,0
    .goto 1426/0,-1788.24,-5620.53,30,0
    .goto 1426/0,-1674.97,-5735.45,30,0
    .goto 1426/0,-1684.82,-5627.10,30,0
    .goto 1426/0,-1738.99,-5541.73,30,0
    .goto 1426/0,-1788.24,-5620.53,30,0
    >>Tötet die Troggs in der Höhle
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .complete 433,1 --Kill Rockjaw Bonesnapper (x10)
step
    .goto 1426/0,-1600.30,-5726.590
.target Foreman Stonebrow
>>Sprecht mit |cRXP_FRIENDLY_Großknecht Stonebrow|r
    .turnin 432 >> Gebt die Quest Diese verfluchten Troggs! ab
step
    #completewith next
    .goto 1426/0,-1591.24,-5712.47
    .vendor >> Verkauft Müll und repariert
step
    .goto 1426/0,-1581.39,-5715.75
.target Senator Mehr Stonehallow
>>Sprecht mit |cRXP_FRIENDLY_Senator Mehr Stonehallow|r
    .turnin 433 >> Gebt die Quest Im Dienste des Volkes ab
step
    .goto 1426/0,-1502.59,-5837.23,40,0
    .goto 1426/0,-1679.89,-5787.98,40,0
    .goto 1426/0,-1694.67,-5646.8,40,0
    .xp 10 >> Farmt bis Stufe 10 bei den Troggs
step
    .goto 1426/0,-1576.47,-5673.07
    .vendor >>Verkauft Müll, kaufe 30x Wasser der Stufe 5 von Kazan
    .trainer >> Erlernt Kochkunst von Ghilm. Ihr braucht dies, um später 2 zusätzliche Quests anzunehmen
step
    .goto 1426/0,-2325.07,-5164.15
.target Pilot Hammerfoot
>>Sprecht mit |cRXP_FRIENDLY_Pilot Hammerfoot|r
    .accept 419 >> Akzeptiert die Quest Der vermisste Pilot
step
    >>Farmt auf dem Weg
    .goto 1426/0,-2123.14,-5065.65
    .turnin 419 >> Gebt die Quest Der vermisste Pilot ab
    .accept 417 >> Akzeptiert die Quest Pilotenrache
step
    >>Tötet Marterklaue. Plündert sie für seine Räudige Klaue
    .goto 1426/0,-2137.92,-5072.22
    .complete 417,1 --Collect Mangy Claw (x1)
step
    .goto 1426/0,-2329.60,-5163.76
.target Pilot Hammerfoot
>>Sprecht mit |cRXP_FRIENDLY_Pilot Hammerfoot|r
    .turnin 417 >> Gebt die Quest Pilotenrache ab
step
    >>Geht durch den Tunnel zurück, durch den ihr gekommen seid
    .goto 1426/0,-2118.22,-5541.73,50,0
    .goto 1426/0,-2251.19,-5633.67,25,0
    .goto 1426/0,-2447.11,-5479.74
>>Sprecht mit |cRXP_FRIENDLY_Gebirgsjäger Gerstenbräu|r
    .turnin 413 >> Gebt die Quest Schimmerstarkbier ab
.target Mountaineer Barleybrew
    .accept 414 >> Akzeptiert die Quest Starkbier für Kadrell
]])

RXPGuides.RegisterGuide([[
#forever
<< Alliance Mage
#name 10-12 Loch Modan Magier AoE Guide
#version 1
#group RestedXP Forever Dungeonführer (A)
#subgroup Speedrun Guide Magier
#defaultfor Human Mage/Gnome Mage
#next 12-18 Dunkelküste Magier AoE
step
    #era/som
    #completewith next
    +Während ihr in Loch Modan Quests erledigt, sammelt ALLE Brocken Eberfleisch, die ihr bekommt, und VERKAUFT sie NICHT. Ihr benötigt sie später
step << Gnome
    .goto 1432/0,-2602.54,-5832.73
.target Mountaineer Cobbleflint
>>Sprecht mit |cRXP_FRIENDLY_Gebirgsjäger Cobbleflint|r
    .accept 224 >> Akzeptiert die Quest Verteidigung der Länder des Königs
step << Gnome
    .goto 1432/0,-2634.59,-5842.81
    >>Geht von hinten in den Bunker
.target Captain Rugelfuss
>>Sprecht mit |cRXP_FRIENDLY_Captain Rugelfuss|r
    .accept 267 >> Akzeptiert die Quest Die Bedrohung durch die Troggs
step << Gnome
    .goto 1432/0,-2818.49,-5742.10,45 >> Lauft zum Eingang der Troggs
step << Gnome
    .goto 1432/0,-2821.25,-5819.36,50,0
    .goto 1432/0,-2950.89,-5804.64,50,0
    .goto 1432/0,-2846.07,-5979.40,50,0
    .goto 1432/0,-2821.25,-5819.36,50,0
    .goto 1432/0,-2950.89,-5804.64,50,0
    .goto 1432/0,-2846.07,-5979.40,50,0
    >>Tötet Splittersteintroggs. Plündert sie für Trogg-Steinzahn
    >>Seid vorsichtig, da diese Quest schwierig sein kann. Lauft weg, wenn ihr versehentlich 2 Mobs auf einmal zieht
    .complete 224,1 --Kill Stonesplinter Trogg (x10)
    .complete 224,2 --Kill Stonesplinter Scout (x10)
    .complete 267,1 --Collect Trogg Stone Tooth (x8)
step << Gnome
    .goto 1432/0,-2602.54,-5832.73
.target Mountaineer Cobbleflint
>>Sprecht mit |cRXP_FRIENDLY_Gebirgsjäger Cobbleflint|r
    .turnin 224 >> Gebt die Quest Verteidigung der Länder des Königs ab
step << Gnome
    .goto 1432/0,-2634.59,-5842.81
    >>Geht von hinten in den Bunker
.target Captain Rugelfuss
>>Sprecht mit |cRXP_FRIENDLY_Captain Rugelfuss|r
    .turnin 267 >> Gebt die Quest Die Bedrohung durch die Troggs ab
step << Human
    .goto 1432/0,-2658.51,-4822.30
    .vendor >>Verkaufe und Repariere
step << Human
    .goto 1432/0,-2676.82,-4825.93
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
    .goto 1432/0,-2961.92,-5366.82,130 >>Farmt Mobs unterwegs für die spätere Kochquest
step
    >>Lauft nach Thelsamar.Setzt euren Ruhestein nicht << Gnome
    .goto 1432/0,-2954.42,-5394.10
.target Vidra Hearthstove
>>Sprecht mit |cRXP_FRIENDLY_Vidra Hearthstove|r
    .accept 418 >> Akzeptiert die Quest Blutwurst aus Thelsamar
step << Human
    #sticky
    .abandon 1338 >> Brecht die Quest Sturmlanzes Bestellung ab. Dies ermöglicht die Quest Gebirgsjäger Stormpikes Aufgabe
step
    .goto 1432/0,-2953.65,-5381.54
    .vendor >>Kauft 1-2 6-Slot-Taschen, um eure Taschenplätze zu füllen
step
    .goto 1432/0,-2972.96,-5377.86
    .vendor >> Kauft Essen/Wasser (versucht, 40 Wasser der Stufe 5 und 20 Essen der Stufe 5 zu haben)
step
    .goto 1432/0,-2892.97,-5405.45,80.0,0
    .goto 1432/0,-3019.85,-5335.55,80.0,0
    .goto 1432/0,-3006.06,-5252.77
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
    .goto 1432/0,-2658.51,-4822.30
    .vendor >>Verkaufe und Repariere
step << Gnome
    .goto 1432/0,-2676.82,-4825.93
>>Sprecht mit |cRXP_FRIENDLY_Gebirgsjäger Stormpike|r
    .turnin 1339 >> Gebt die Quest Gebirgsjäger Stormpikes Aufgabe ab
.target Mountaineer Stormpike
    .accept 1338 >> Akzeptiert die Quest Stormpikes Bestellung
    .accept 307 >> Akzeptiert die Quest Schmutzige Pfoten
step << Gnome
    #label Thelsamar1
    .goto 1432/0,-2923.58,-4803.910,130 >>Farmt einige Gegner für Eberdärme, Bärenfleisch und Spinnensekret auf dem Weg
step << Human
    #label Thelsamar1
    .goto 1432/0,-3077.77,-4984.19,130 >>Farmt einige Gegner für Eberdärme, Bärenfleisch und Spinnensekret auf dem Weg
step
    #sticky
    #completewith Gear
    >> Tötet Tunnel Ratten. Plündert sie für ihre Ohren
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
step
    .goto 1432/0,-2972.96,-4822.30,45 >>Geht zum Höhleneingang, während ihr die Ratten tötet
step
    #label Gear
    .goto 1432/0,-2972.96,-4853.58,12,0
    .goto 1432/0,-2997.78,-4868.29,12,0
    .goto 1432/0,-2967.44,-4892.21,12,0
    .goto 1432/0,-2983.99,-4894.05,12,0
    .goto 1432/0,-2995.02,-4941.88,12,0
    .goto 1432/0,-2978.47,-4934.52,12,0
    .goto 1432/0,-2956.41,-4945.56,12,0
    .goto 1432/0,-2978.47,-4934.52,12,0
    .goto 1432/0,-2995.02,-4941.88,12,0
    .goto 1432/0,-2983.99,-4894.05,12,0
    .goto 1432/0,-2967.44,-4892.21,12,0
    .goto 1432/0,-2997.78,-4868.29,12,0
    .goto 1432/0,-2972.96,-4853.58,12,0
    >>Sammelt die Kisten, die ihr in der Höhle findet. Seid vorsichtig, denn dies ist auf Stufe 11 schwierig
    >>Seid vorsichtig, denn die Geomanten wirken den Flammenschutz (Feuerimunität) nach wenigen Sekunden
    .complete 307,1 --Collect Miners' Gear (x4)
step
    .goto 1432/0,-3081.36,-4902.88
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
    .goto 1432/0,-2636.44,-4816.79,60 >>Lauft zum Bunker zurück und farmt unterwegs
step
    .goto 1432/0,-2658.51,-4822.30
    .vendor >>Verkaufe und Repariere
step
    .goto 1432/0,-2675.06,-4824.14
>>Sprecht mit |cRXP_FRIENDLY_Gebirgsjäger Stormpike|r
    .turnin 307 >> Gebt die Quest Schmutzige Pfoten ab
    .turnin 1339 >> Gebt die Quest Gebirgsjäger Stormpikes Aufgabe ab << Human
.target Mountaineer Stormpike
    .accept 1338 >> Akzeptiert die Quest Stormpikes Bestellung << Human
step
    #sticky
    #label Meat9
    .goto 1432/0,-2735.74,-4684.34,40,0
    .goto 1432/0,-2846.07,-4682.50,40,0
    .goto 1432/0,-2782.63,-4770.80,40,0
    .goto 1432/0,-2835.04,-4976.83,40,0
    .goto 1432/0,-2915.03,-5044.89,40,0
    .goto 1432/0,-3080.53,-5100.08,40,0
    .goto 1432/0,-2735.74,-4684.34,40,0
    .goto 1432/0,-2846.07,-4682.50,40,0
    .goto 1432/0,-2782.63,-4770.80,40,0
    .goto 1432/0,-2835.04,-4976.83,40,0
    .goto 1432/0,-2915.03,-5044.89,40,0
    .goto 1432/0,-3080.53,-5100.08,40,0
    .goto 1432/0,-2735.74,-4684.34
    >>Tötet Bären. Plündert sie für Bärenfleisch
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
step
    #sticky
    #label Ichor9
    .goto 1432/0,-2873.66,-4789.19,40,0
    .goto 1432/0,-2766.08,-4866.45,40,0
    .goto 1432/0,-2926.07,-5232.53,40,0
    .goto 1432/0,-2992.27,-5055.93,40,0
    .goto 1432/0,-3069.5,-5078.01,40,0
    .goto 1432/0,-2873.66,-4789.19,40,0
    .goto 1432/0,-2766.08,-4866.45,40,0
    .goto 1432/0,-2926.07,-5232.53,40,0
    .goto 1432/0,-2992.27,-5055.93,40,0
    .goto 1432/0,-3069.5,-5078.01,40,0
    .goto 1432/0,-2873.66,-4789.19
    >>Tötet Spinnen. Plündert sie für Spinnensekret
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
step
    .goto 1432/0,-3041.92,-5129.51,40,0
    .goto 1432/0,-3017.09,-5219.65,40,0
    .goto 1432/0,-2815.73,-5147.91,40,0
    .goto 1432/0,-2757.81,-4952.91,40,0
    .goto 1432/0,-2782.63,-4903.25,40,0
    .goto 1432/0,-3041.92,-5129.51,40,0
    .goto 1432/0,-3017.09,-5219.65,40,0
    .goto 1432/0,-2815.73,-5147.91,40,0
    .goto 1432/0,-2757.81,-4952.91,40,0
    .goto 1432/0,-2782.63,-4903.25,40,0
    .goto 1432/0,-3041.92,-5129.51
    >>Tötet Eber. Plündert sie für Ebergedärme
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
step
#hidewindow
    #requires Meat9
step
    #sticky
    #label RatCatching
    #requires Ichor9
    .goto 1432/0,-2892.97,-5405.45,80.0,0
    .goto 1432/0,-3019.85,-5335.55,80.0,0
    .goto 1432/0,-3006.06,-5252.77
    >>Findet Kadrell. Er patrouilliert auf der Straße in Thelsamar
.target Mountaineer Kadrell
>>Sprecht mit |cRXP_FRIENDLY_Gebirgsjäger Kadrell|r
    .turnin 416 >> Gebt die Quest Rattenfang ab
step
    #requires Ichor9
    .goto 1432/0,-2954.42,-5394.10
.target Vidra Hearthstove
>>Sprecht mit |cRXP_FRIENDLY_Vidra Hearthstove|r
    .turnin 418 >> Gebt die Blutwurst in Thelsamar ab
step
    #era/som
    .goto 1432/0,-2952.55,-5381.91
    .vendor >> Kaufe 6 slots bis eure Taschenplätze voll sind. Außerdem kauft ein Feuerstein, Zunser und 2x einfaches Holz
    .collect 4470,2 --Simple Wood (2)
    .collect 4471,1 --Flint and Tinder (1)
step
    .xp 12 >> Farmt bis Stufe 12
step << Gnome
    #completewith next
    #requires RatCatching
    .goto 1432/0,-3781.70,-5702.36
    .vendor >> Schau bei Aldren nach einem Weisengürtel . Kauft ihn, wenn ihr es euch leisten könnt. Behaltet ihn für später
step << Gnome
    #requires RatCatching
    .goto 1432/0,-3812.59,-5694.63
.target Prospector Ironband
>>Sprecht mit |cRXP_FRIENDLY_Ausgrabungsleiter Ironband|r
    .accept 298 >>Akzeptiert die Quest Bericht über den Fortschritt der Ausgrabungen
step << Gnome
    #softcore
    .goto 1432/0,-3872.73,-5646.07
    .deathskip >> Sterbt und belebt euch in Thelsamar wieder
step << Gnome
    #hardcore
    >> Lauft nach Thelsamar zurück. Geht ins Gebäude
    .goto 1432/0,-3018.75,-5350.08,20,0
    .goto 1432/0,-3014.88,-5367.00
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
    .goto 1432/0,-3018.75,-5350.08,20,0
    .goto 1432/0,-3014.88,-5367.00
.target Brock Stoneseeker
>>Sprecht mit |cRXP_FRIENDLY_Brock Stoneseeker|r
    .accept 6387 >>Akzeptiert die Quest Ehrenstudenten
>>Sprecht mit |cRXP_FRIENDLY_Jern Hornhelm|r
    .turnin 298 >>Gebt die Quest Bericht über den Fortschritt der Ausgrabungen ab
.target Jern Hornhelm
    .accept 301 >>Akzeptiert die Quest Meldung in Eisenschmiede
step
    #requires RatCatching
    .goto 1432/0,-2929.93,-5424.95
    .fp Thelsamar >> Erlernt die Flugroute nach Thelsamar
>>Sprecht mit |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .turnin 6387 >>Gebt die Quest Ehrenstudenten ab << Gnome
.target Thorgrum Borrelson
    .accept 6391 >>Akzeptiert die Quest Flug nach Eisenschmiede << Gnome
    .fly Ironforge >> Fliege nach Eisenschmiede
step << Human
    .goto 1455/0,-928.25,-4614.46
    .trainer >> Trainiere deine Klassenfähigkeiten
step << skip --logout skip << Human
    #completewith next
    +Geht zur Treppe hinter den Paladin-Ausbildern hinten im Raum. Geht etwa bis zur mitte hinauf, dann bewegt euch zum Rand der Treppe, bis es aussieht, als würdet ihr schweben. Meldet euch ab, dann wieder an
    .link https://www.youtube.com/watch?v=E8b90bzJMSI >> KLICKT HIER als Referenz
    >>Meldet euch ab um zur Vorderseite von Eisenschmiede zu springen
step << Human
    .goto 1455/0,-810.36,-5039.71,120 >> Verlasst Eisenschmiede
step << Gnome
    .goto 1455/0,-1303.79,-4631.18
>>Sprich mit |cRXP_FRIENDLY_Ausgrabungsleiter Sturmlanze|r
    .turnin 301 >>Gebt die Quest Meldung in Eisenschmiede ab
.target Prospector Stormpike
    .accept 302 >>Akzeptiert die Quest Pulver für Ironband
step << Gnome
    >>Geht zurück zur Großen Schmiede, biegt rechts ab und geht ins Gebäude
    .goto 1455/0,-1105.66,-4722.04,30,0
    .goto 1455/0,-1120.92,-4708.11
>>Sprecht mit |cRXP_FRIENDLY_Golnir Bouldertoe|r
    .turnin 6391 >>Gebt die Quest Fahrt nach Eisenschmiede ab
.target Golnir Bouldertoe
    .accept 6388 >>Akzeptiert die Quest Gryth Thurden
step << Gnome
    .goto 1455/0,-1026.28,-4872.56
.target Senator Barin Redstone
>>Sprecht mit |cRXP_FRIENDLY_Senator Barin Redstone|r
    .turnin 291 >>Gebt die Quest Die Berichte ab
step << Gnome
    .goto 1455/0,-1152.39,-4820.914
>>Sprecht mit |cRXP_FRIENDLY_Gryth Thurden|r
    .turnin 6388 >>Gebt die Quest Gryth Thurden ab
.target Gryth Thurden
    .accept 6392 >>Akzeptiert die Quest Rückkehr zu Brock
    .fly Thelsamar >> Fliege nach Thelsamar
step << Gnome
    >>Geht ins Gebäude
    .goto 1432/0,-3018.75,-5350.08,20,0
    .goto 1432/0,-3014.88,-5367.00
.target Brock Stoneseeker
>>Sprecht mit |cRXP_FRIENDLY_Brock Stoneseeker|r
    .turnin 6392 >>Gebt die Quest Rückkehr zu Brock ab
.target Jern Hornhelm
>>Sprecht mit |cRXP_FRIENDLY_Jern Hornhelm|r
    .turnin 302 >>Gebt die Quest Pulver für Ironband ab
step << Gnome
    .hs >> Ruhestein nach Theramore
step << Gnome
    .goto 1426/0,-537.29,-5587.04
    .trainer >> Trainiere deine Klassenfähigkeiten
step
    #hardcore
    #completewith next
    .goto 1426/0,-1124.84,-5283.99,150 >> Reist zum Skip spot
step
    #hardcore
    .goto 1426/0,-1128.29,-5282.35,40,0
    .goto 1426/0,-1172.62,-5325.03,40,0
    .goto 1426/0,-1207.09,-5325.03,40,0
    .goto 1426/0,-1212.02,-5265.93,40,0
    .goto 1426/0,-1192.32,-5219.97,40,0
    .goto 1426/0,-1103.67,-5174.0,40,0
    .goto 1426/0,-1167.69,-5144.45,40,0
    .goto 1426/0,-1236.64,-5147.73,40,0
    .goto 1426/0,-1433.64,-4586.28,40,0
    .goto 1426/0,-1438.57,-4287.50,40,0
    .goto 1426/0,-1428.72,-4231.68,40,0
    .goto 1426/0,-1473.04,-4205.42,40,0
    .goto 1426/0,-1492.74,-4156.17,40,0
    .goto 1437/0,-1241.48,-4000.12,50,0
    .goto 1437/0,-1121.55,-4013.90,40,0
    .goto 1437/0,-1084.33,-3947.75,40,0
    .goto 1437/0,-1014.03,-3911.92,40,0
    .goto 1437/0,-889.97,-3809.94,40,0
    >>Öffnet den link und ruft es auf einen anderen Bildschirm auf.
    >>Macht den Dun Morogh -> Sumpfland skip ohne zu sterben
    >>Weicht den Krokodilen aus, wenn ihr das Meer überquert
    .link https://www.youtube.com/watch?v=9afQTimaiZQ >> KLICKT HIER zum nachschauen
    .goto 1437/0,-889.97,-3809.94,80 >> Laufe zum Hafen von Menethil
step
    #softcore
    .goto 1426/0,309.81,-5108.33,50 >> Lauft hierhin
step
    #softcore
    .goto 1426/0,280.26,-4963.87,15 >>Lauft den Berg nach Norden hinauf
step
    #softcore
    .goto 1426/0,206.38,-4832.53,15 >>Folgt dem Pfad hier hinauf
step
    #softcore
    .goto 1426/0,176.83,-4770.15,15,0
    .goto 1426/0,176.83,-4704.48,15,0
    .goto 1437/0,-869.29,-3344.13,60,0
    .deathskip >>Lauft einfach weiter nach Norden, lass dich fallen, stirb und respawne dann
step
    #softcore
    #completewith next
    .goto 1437/0,-914.78,-3435.09,60 >> Schwimmt ans Ufer
step
    .money <0.08
    .goto 1437/0,-819.67,-3691.42,15,0
    .goto 1437/0,-807.26,-3716.22,15,0
    .goto 1437/0,-827.94,-3724.49,15,0
    .goto 1437,10.760,56.721
    .vendor >> Falls ihr 8s habt, überprüft bei Neal Allen auf Bronzeröhre und kauft sie, falls sie vorhanden ist
step
    .money <0.04
    .goto 1437/0,-724.55,-3699.69
    .vendor >> Überprüft bei Dewin auf Heiltränke und kauft sie solange, bis ihr noch 1s habt
step
    .goto 1437/0,-782.45,-3793.40
    .fp Menethil Harbor >> Holt euch den Flugpunkt zum Hafen von Menethil
step
    #era/som
    #sticky
    #completewith Darkshore1
    +Wartet hier auf das Boot. Erstellt ein Lagerfeuer aus eurem Zauberbuch und kocht die Brocken Eberfleisch, die ihr vorher gesammelt habt. Ihr benötigt jetzt Kochskill 10 und später 50 (kocht also alles auf)
    .goto 1437/0,-583.95,-3727.25
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

