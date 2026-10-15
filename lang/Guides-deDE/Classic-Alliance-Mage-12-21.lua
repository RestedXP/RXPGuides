if GetLocale() ~= "deDE" then return end
local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#classic
#tbc
<< Alliance Mage
#name 12-18 Dunkelküste Magier AoE
#version 1
#group RestedXP Allianz Magier
#defaultfor Alliance Mage
#next 18-21 Rotkamm Magier AoE

step
    #completewith next
    .goto Darkshore,36.77,44.28
    .vendor >> Ihr könnt extrem günstig Stufe-5-Nahrung von Laird (Fischverkäufer) kaufen
step
    >>Geht nach oben zum obersten Geschoss
    .goto Darkshore,36.98,44.14
.target Wizbang Cranktoggle
>>Sprecht mit |cRXP_FRIENDLY_Wizbang Cranktoggle|r
    .accept 983 >>Akzeptiert die Quest Dröhnkiste 827
step
    >>Springt hinunter in den 1.Stock
    .goto Darkshore,37.04,44.13
    .home >> Setzt den Ruhestein von Euch in Auberdine
step
    .goto Darkshore,37.32,43.64
.target Barithras Moonshade
>>Sprecht mit |cRXP_FRIENDLY_Barithras Moonshade|r
    .accept 947 >>Akzeptiert die Quest Höhlenpilze
step
    .goto Darkshore,37.68,43.38
.target Sentinel Glynda Nal'Shea
>>Sprecht mit |cRXP_FRIENDLY_Schildwache Glynda Nal'Shea|r
    .accept 4811 >>Akzeptiert die Quest Der rote Kristall
step
    .goto Darkshore,38.84,43.41
.target Tharnariun Treetender
>>Sprecht mit |cRXP_FRIENDLY_Tharnariun Treetender|r
    .accept 2118 >>Akzeptiert die Quest Verseuchtes Land
step
    .goto Darkshore,39.37,43.49
.target Terenthis
>>Sprecht mit |cRXP_FRIENDLY_Terenthis|r
    .accept 984 >>Akzeptiert die Quest Wie groß ist die Bedrohung?
step
    .goto Darkshore,36.62,45.59
.target Gwennyth Bly'Leggonde
>>Sprecht mit |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .accept 3524 >>Akzeptiert die Quest An Land gespült
step
    .goto Darkshore,36.34,45.58
    .fp Auberdine >> Erlernt die Flugroute nach Auberdine
step
    #completewith Bear
     >> Tötet Kriecher entlang der Küste
    .complete 983,1 --Crawler Leg (6)
step
    .goto Darkshore,36.38,50.88
     >> Plündert die Meereskreatur
    .complete 3524,1 --Sea Creature Bones (1)
step
    #sticky
    #completewith next
    >> Findet einen Tollwütigen Distelbär.Pullt ihn und benutzt Tharnariuns Hoffnung in eurer Taschen (die violette Kugel)
    .complete 2118,1 --Rabid Thistle Bear Captured (1)
step
    .goto Darkshore,39.01,53.70
     >> Geht zum nahegelegenen Furbolg-Lager
    .complete 984,1 --Find a corrupt furbolg camp (1)
step
    #label Bear
    >> Findet einen Tollwütigen Distelbär.Pullt ihn und benutzt Tharnariuns Hoffnung in eurer Taschen (die violette Kugel)
    .goto Darkshore,38.47,57.92
    .complete 2118,1 --Rabid Thistle Bear Captured (1)
step
    .goto Darkshore,36.61,54.29,150,0
    .goto Darkshore,36.10,44.42
    >> Tötet Kriecher entlang der Küste
    .complete 983,1 --Crawler Leg (6)
step
    #sticky
    #completewith ReadAndy
     >> Lagert 5x Schreiterfleisch für später
    .collect 5469,5,2178,1
step
    .goto Darkshore,36.66,46.26
    .turnin 983 >>Gebt die Quest Dröhnkiste 827 ab
    .accept 1001 >>Akzeptiert die Quest Dröhnkiste 411
step
    .goto Darkshore,36.62,45.59
>>Sprecht mit |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 3524 >>Gebt die Quest An Land gespült ab
.target Gwennyth Bly'Leggonde
    .accept 4681 >>Akzeptiert die Quest An Land gespült
step
    .goto Darkshore,36.73,44.06,40,0
    >>Lauft zu den Docks
    .goto Darkshore,35.74,43.70
.target Cerellean Whiteclaw
>>Sprecht mit |cRXP_FRIENDLY_Cerellean Whiteclaw|r
    .accept 963 >>Akzeptiert die Quest In ewiger Liebe
step
    #sticky
    #completewith Thundris
     >> Tötet Dunkelküstendrescher im Meer
    .complete 1001,1 --Thresher Eye (3)
step
    #completewith next
    .goto Darkshore,33.70,42.45,60 >> Lauft zu den Docks hinauf und springt dann an der Kreuzung ins Wasser
step
    .goto Darkshore,31.86,46.33
    >>Klickt auf den Kopf der Meerschildkröte unter Wasser
    .complete 4681,1 --Sea Turtle Remains (1)
step
    .goto Darkshore,36.62,45.59
    >>Tötet Drescher auf dem Rückweg zum Ufer
.target Gwennyth Bly'Leggonde
>>Sprecht mit |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4681 >> Gebt die Quest An Land gespült ab
step
    .goto Darkshore,38.84,43.41
>>Sprecht mit |cRXP_FRIENDLY_Tharnariun Treetender|r
    .turnin 2118 >> Gebt die Quest Verseuchtes Land ab
.target Tharnariun Treetender
    .accept 2138 >> Akzeptiert die Quest Ausrottung der Infizierten
step
    .goto Darkshore,39.37,43.49
>>Sprecht mit |cRXP_FRIENDLY_Terenthis|r
    .turnin 984 >> Gebt die Quest Wie groß ist die Bedrohung? ab
.target Terenthis
    .accept 985 >> Akzeptiert die Quest Wie groß ist die Bedrohung?
    .accept 4761 >> Akzeptiert die Quest Thundris Windwirker
step
    >> Tötet Furbolgs
    .goto Darkshore,39.83,56.11
    .goto Darkshore,39.74,53.76,0
    .complete 985,1 --Blackwood Pathfinder (8)
    .complete 985,2 --Blackwood Windtalker (5)
step
    .goto Darkshore,39.37,43.48
>>Sprecht mit |cRXP_FRIENDLY_Terenthis|r
    .turnin 985 >>Gebt die Quest Wie groß ist die Bedrohung? ab
.target Terenthis
    .accept 986 >>Akzeptiert die Quest Ein verirrter Meister
step
    >>Geht nach oben
    .goto Darkshore,39.04,43.55
.target Sentinel Elissa Starbreeze
>>Sprecht mit |cRXP_FRIENDLY_Schildwache Elissa Starbreeze|r
    .accept 965 >>Der Turm von Althalaxx annehmen
step
    .goto Darkshore,38.11,41.16
.target Gorbold Steelhand
>>Sprecht mit |cRXP_FRIENDLY_Gorbold Steelhand|r
    .accept 982 >> Akzeptiert die Quest Tiefer Ozean, weites Meer
step
    #label Thundris
    .goto Darkshore,37.39,40.13
>>Sprecht mit |cRXP_FRIENDLY_Thundris Windwirker|r
    .turnin 4761 >> Gebt die Quest Thundris Windwirker ab
.target Thundris Windweaver
    .accept 4762 >> Akzeptiert die Quest Der Cliffspring
    .accept 954 >>Akzeptiert die Quest Bashal'Aran
    .accept 958 >>Akzeptiert die Quest Werkzeuge der Hochgeborenen
step
     #label Threshers
     #sticky
     >> Schwimmt entlang der Küste und tötet Dunkelküstendrescher
    .complete 1001,1 --Thresher Eye (3)
step
    .goto Darkshore,38.93,29.33,40,0
    .goto Darkshore,38.23,28.79
     >> BETRETET das erste Schiff durch das Loch im Rumpf. Geht dann zum Heck des untersten Decks
    .complete 982,1 --Silver Dawning's Lockbox (1)
step
    #requires Threshers
    .goto Darkshore,40.30,27.69,40,0
    .goto Darkshore,39.63,27.45
     >> BETRETET das zweite Schiff durch das Loch im Rumpf. Geht dann zum Heck des untersten Decks
    .complete 982,2 --Mist Veil's Lockbox (1)
step
    .goto Darkshore,41.96,28.64
    .turnin 1001 >> Gebt die Quest Dröhnkiste 411 ab
    .accept 1002 >> Akzeptiert die Quest Dröhnkiste 323
step
    .goto Darkshore,41.94,31.47
    .accept 4723 >> Akzeptiert die Quest Gestrandete Meereskreatur
step
    .goto Felwood,27.70,10.03
>>Sprecht mit |cRXP_FRIENDLY_Asterion|r
    .turnin 954 >> Gebt die Quest Bashal'Aran ab
.target Asterion
    .accept 955 >> Akzeptiert die Quest Bashal'Aran
step
    .goto Felwood,29.13,12.34
     >> Tötet Grellkins. Plündert sie für ihre Ohrringe
    .complete 955,1 --Grell Earring (8)
step
    .goto Felwood,27.70,10.03
>>Sprecht mit |cRXP_FRIENDLY_Asterion|r
    .turnin 955 >> Gebt die Quest Bashal'Aran ab
.target Asterion
    .accept 956 >> Akzeptiert die Quest Bashal'Aran
step
    .goto Felwood,29.60,12.52
     >> Tötet Satyre. Plündert sie für das Altes Mondstein-Siegel
    .complete 956,1 --Ancient Moonstone Seal (1)
step
    .goto Felwood,27.70,10.03
>>Sprecht mit |cRXP_FRIENDLY_Asterion|r
    .turnin 956 >> Gebt die Quest Bashal'Aran ab
.target Asterion
    .accept 957 >> Akzeptiert die Quest Bashal'Aran
step
    #sticky
    #completewith ReadAndy
     >> Tötet jeden Mondpirscher. Plündert sie für ihre Fangzähne
    .complete 1002,1 --Moonstalker Fang (6)
--N don't think unitscan is needed
step
    #sticky
    #completewith ReadAndy
    >>Tötet die tollwütigen Thistle-Bären. Habt mindestens 50% Mana und tötet sie schnell, bevor sie euch mit dem Tollwut(debuff) infizieren
    .complete 2138,1 --Rabid Thistle Bear (20)
step
    .goto Darkshore,50.77,25.43
    >>Benutzt die Leere Probenröhre in euren Taschen
    .complete 4762,1 --Cliffspring River Sample (1)
step
    #sticky
    #completewith ReadAndy
    +Bewahrt die kleinen Eier auf, die ihr als Beute bekommt, um später eure Kochkunst zu steigern. Bewahrt ALLE leichten Federn für später auf.
step
    .goto Darkshore,47.11,48.63
     >> Lauft hoch zum Roten Kristall in den Bergen
    .complete 4811,1 --Locate the large, red crystal on Darkshore's eastern mountain range (1)
step
    #label ReadAndy
    .goto Darkshore,40.30,59.73
.target Sentinel Tysha Moonblade
>>Sprecht mit |cRXP_FRIENDLY_Schildwache Tysha Moonblade|r
    .accept 953 >>Akzeptiert die Quest Der Untergang von Ameth'Aran
step
    #sticky
    #label anaya
    .goto Darkshore,42.29,60.46,0
     >> Tötet Anaya Dawnrunner. Sie patrouilliert in der Mitte von Ameth'Aran
    .complete 963,1
    .unitscan ANAYA DAWNRUNNER
step
    #label ghosts
    #sticky
    .goto Darkshore,42.66,61.90,0
     >> Tötet Geister. Plündert sie für die Relikte
    .complete 958,1 --Highborne Relic (7)
step
    .goto Felwood,25.98,40.62
     >> Klickt auf die Tafel auf dem Boden
    .complete 953,2 --Read the Fall of Ameth'Aran (1)
step
    .goto Felwood,25.66,39.11
     >> Klickt auf die grüne Fackel beim Pavillon
    .complete 957,1 --Destroy the seal at the ancient flame (1)
step
    .goto Felwood,26.71,35.53
     >> Klickt auf die Tafel auf dem Boden
    .complete 953,1 --Read the Lay of Ameth'Aran (1)
step
#hidewindow
    #requires ghosts
step
    #requires anaya
    .goto Darkshore,40.30,59.73
.target Sentinel Tysha Moonblade
>>Sprecht mit |cRXP_FRIENDLY_Schildwache Tysha Moonblade|r
    .turnin 953 >> Gebt die Quest Der Untergang von Ameth'Aran ab
step
    .goto Darkshore,38.83,60.82
    >>Schließe das Töten der Tollwütigen Distelbären und das Sammeln von Schreiterfleisch ab
    .complete 2138,1 --Rabid Thistle Bear (20)
    .collect 5469,5,2178,1
step
    >>Sammelt die Beute von der Meeresschildkröte
    .goto Darkshore,37.14,62.12
    .accept 4722 >>Akzeptiert die Quest Gestrandete Meeresschildkröte
step
    >>Sammelt die Beute von der Meeresschildkröte
    .goto Darkshore,36.02,70.79
    .accept 4728 >>Akzeptiert die Quest Gestrandete Meereskreatur
step
    .hs >> Ruhestein nach Auberdine
step
    .goto Darkshore,38.84,43.42
>>Sprecht mit |cRXP_FRIENDLY_Tharnariun Treetender|r
    .turnin 2138 >>Gebt die Quest Ausrottung der Infizierten ab
.target Tharnariun Treetender
    .accept 2139 >>Akzeptiert die Quest Tharnariuns Hoffnung
step
    .goto Darkshore,38.11,41.17
.target Gorbold Steelhand
>>Sprecht mit |cRXP_FRIENDLY_Gorbold Steelhand|r
    .turnin 982 >>Gebt die Quest Tiefer Ozean, weites Meer ab
    .vendor >> Kauft Milde Gewürze von Gorbold, bis ihr genug habt, um alle eure Eier zu kochen
step
    .goto Darkshore,37.69,40.66
    >>Ihr solltet 10 Punkte im Kochen haben, sonst könnt ihr die Quest nicht akzeptieren oder abgeben
.target Alanndarian Nightsong
>>Sprecht mit |cRXP_FRIENDLY_Alanndarian Nightsong|r
    .accept 2178 >>Akzeptiert die Quest Schreitereintopf
    .turnin 2178 >>Gebt die Quest Schreitereintopf ab
step
    .goto Darkshore,37.40,40.13
>>Sprecht mit |cRXP_FRIENDLY_Thundris Windwirker|r
    .turnin 958 >>Gebt die Quest Werkzeuge der Hochgeborenen ab
    .turnin 4762 >>Gebt die Quest Der Cliffspring ab
.target Thundris Windweaver
    .accept 4763 >>Akzeptiert die Quest Die verderbten Schwarzfelle
step
    .goto Darkshore,37.44,41.84
.target Archaeologist Hollee
>>Sprecht mit |cRXP_FRIENDLY_Archäologin Hollee|r
    .accept 729 >>Der geistesabwesende Ausgrabungsleiter annehmen
step
    .goto Darkshore,37.71,43.36
>>Sprecht mit |cRXP_FRIENDLY_Schildwache Glynda Nal'Shea|r
    .turnin 4811 >> Gebt die Quest Der rote Kristall ab
.target Sentinel Glynda Nal'Shea
    .accept 4812 >> Akzeptiert die Quest Wenn das Wasser fließt
step
    .goto Darkshore,37.78,44.06
     >> Füllt die Leere Wasserröhre am Mondbrunnen
    .complete 4812,1
     >> Füllt die Leere Säuberungsschale am Mondbrunnen
    .collect 12347,1,4763,1
step
    #completewith next
    .goto Darkshore,36.83,43.91
    .vendor >> Kauft Wasser der Stufe 15 von Taldan
step
    >>Geht zurück zum Dock
    .goto Felwood,18.10,18.48
.target Cerellean Whiteclaw
>>Sprecht mit |cRXP_FRIENDLY_Cerellean Whiteclaw|r
    .turnin 963 >> Gebt die Quest In ewiger Liebe ab
step
    .goto Darkshore,36.09,44.93
.target Gubber Blump
>>Sprecht mit |cRXP_FRIENDLY_Gubber Blump|r
    .accept 1138 >> Akzeptiert die Quest Meeresfrüchte
step
    .goto Darkshore,36.62,45.59
.target Gwennyth Bly'Leggonde
>>Sprecht mit |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4722 >>Gebt die Quest Gestrandete Meeresschildkröte ab
    .turnin 4723 >>Gebt die Quest Gestrandete Meereskreatur ab
    .turnin 4728 >>Gebt die Quest Gestrandete Meereskreatur ab << Gnome
step
    .goto Darkshore,47.32,48.70
     >> Klickt auf den roten Kristall
    .turnin 4812 >> Gebt die Quest Wenn das Wasser fließt ab
    .accept 4813 >> Akzeptiert die Quest Die Fragmente im Inneren
step
    #sticky
    #label MoonstalkersF
     >> Tötet jeden Mondpirscher. Plündert sie für ihre Fangzähne
    .complete 1002,1 --Moonstalker Fang (6)
    .unitscan Moonstalker;Moonstalker Runt
step
    .goto Darkshore,44.18,36.29
.target Asterion
>>Sprecht mit |cRXP_FRIENDLY_Asterion|r
    .turnin 957 >>Gebt die Quest Bashal'Aran ab
step
    .goto Darkshore,50.66,34.98
    >>Rüstet euren neuen Zauberstab aus
    >>Sammelt die Beute (Getreideprobe der Schwarzfelle) vom Fass, dann lauft südöstlich zur Höhlenmutter (bekämpft die Mobs nicht)
    .collect 12342,1 --Blackwood Grain Sample (1)
step
    .goto Darkshore,52.60,36.65,45,0
    >>Tötet Höhlenmutter. Seid vorsichtig, da ihre Jungen euch für 2 Sek. zu Boden werfen können
    >>Farmt bis Stufe 16 und versucht es erneut, falls ihr Schwierigkeiten habt
    .goto Darkshore,51.48,38.26
    .complete 2139,1 --Den Mother (1)
step
    >>Sammelt die Beute Nussprobe der Schwarzfelle vom Fass
    .goto Darkshore,51.80,33.51
    .collect 12343,1 --Blackwood Nut Sample (1)
step
    >>Plündert die Obstprobe der Schwarzfelle aus dem Fass. Ein Mob wird vor euch spawnen, und zwischen den Hütten im Westen - ihr müsst möglicherweise laufen
    .goto Darkshore,52.85,33.42
    .collect 12341,1 --Blackwood Fruit Sample (1)
step
    >>Benutzt die Gefüllte Säuberungsschale in eurem Inventar in der Nähe des Lagerfeuers. Dies macht alle nahe gelegenen Furbolgs freundlich.
    >>Tötet den Satyr, der zwischen den Lagern spawnt und dann um das Feuer herumläuft. Startet mit maximaler Reichweite, da er schwierig sein kann. Plündert den Korb, der nach dem Töten von ihm auf dem Boden fällt
    .goto Darkshore,52.38,33.29
    .complete 4763,1 --Talisman of Corruption (1)
step
    #completewith next
    .goto Darkshore,54.98,32.79,35 >> Geht zur Höhle über dem Wasserfall
step
    .goto Darkshore,55.66,34.89
     >> Bleibt auf dem oberen Teil der Höhle. Falls dort keine Todeskappe am Ende der oberen Seite ist, springt hinab und sammelt eine von unten
     >> Der erste blaue sollte bei der Mündung der Höhle respawnt sein, wenn ihr die Todeskappe geplündert habt
    .complete 947,1 --Scaber Stalk (5)
    .complete 947,2 --Death Cap (1)
step
    .goto Darkshore,54.97,24.89
>>Sprecht mit |cRXP_FRIENDLY_Balthule Shadowstrike|r
    .turnin 965 >>Gebt die Quest Der Turm von Althalaxx ab
.target Balthule Shadowstrike
    .accept 966 >>Der Turm von Althalaxx annehmen
step
    >>Tötet Fanatikerin des dunklen Strangs. Plündert sie für Abgenutztes Pergament
    .goto Darkshore,55.36,26.84
    .complete 966,1 --Worn Parchment (4)
step
    .goto Darkshore,54.97,24.89
>>Sprecht mit |cRXP_FRIENDLY_Balthule Shadowstrike|r
    .turnin 966 >>Gebt die Quest Der Turm von Althalaxx ab
.target Balthule Shadowstrike
    .accept 967 >>Der Turm von Althalaxx annehmen
step
    #requires MoonstalkersF
    .goto Darkshore,53.11,18.16
    .accept 4727 >>Akzeptiert die Quest Gestrandete Meeresschildkröte
step
    #sticky
    #completewith Turtles
     >> Tötet Riffkriecher an der Küste, macht keine Umwege für diese Quest - Tötet keine Mobs die 4 Stufen oder höher sind
    .complete 1138,1 --Fine Crab Chunks (6)
step
    .goto Darkshore,51.38,24.19,25,0
    .goto Darkshore,51.29,24.53
    .turnin 1002 >> Gebt die Quest Dröhnkiste 323 ab
    .accept 1003 >> Akzeptiert die Quest Dröhnkiste 525
step
    #softcore
    #label Turtles
    >>Lasst einige der nahe gelegenen Murlocs am Leben, ihr werdet an ihnen sterben, nachdem ihr diese Quest akzeptiert habt.
    .goto Darkshore,44.18,20.60
    .accept 4725 >> Akzeptiert die Quest Gestrandete Meeresschildkröte
step
    #hardcore
    #label Turtles
    .goto Darkshore,44.18,20.60
    .accept 4725 >> Akzeptiert die Quest Gestrandete Meeresschildkröte
step
    #softcore
    .deathskip >> Sterbt und belebt euch in Auberdine wieder.
step
    .goto Darkshore,37.40,40.13
    >>Rüstet euren neuen Zauberstab aus
.target Thundris Windweaver
>>Sprecht mit |cRXP_FRIENDLY_Thundris Windwirker|r
    .turnin 4763 >> Gebt die Quest Die verderbten Schwarzfelle ab
step
    .goto Darkshore,38.84,43.42
.target Tharnariun Treetender
>>Sprecht mit |cRXP_FRIENDLY_Tharnariun Treetender|r
    .turnin 2139 >>Gebt die Quest Tharnariuns Hoffnung ab
step
    .goto Darkshore,37.71,43.36
.target Sentinel Glynda Nal'Shea
>>Sprecht mit |cRXP_FRIENDLY_Schildwache Glynda Nal'Shea|r
    .turnin 4813 >>Gebt die Quest Die Fragmente im Inneren ab
step
    .goto Darkshore,37.32,43.64
>>Sprecht mit |cRXP_FRIENDLY_Barithras Moonshade|r
    .turnin 947 >> Gebt die Quest Höhlenpilze ab
.target Barithras Moonshade
    .accept 948 >> Akzeptiert die Quest Onu
step
    .goto Darkshore,37.23,44.23
     >> Klickt auf das Gesuchtsplakat außerhalb vom Gasthaus
    .accept 4740 >> Akzeptiert die Quest GESUCHT: Gurgelbacke!
step
    .isQuestComplete 1138
    .goto Darkshore,36.09,44.93
.target Gubber Blump
>>Sprecht mit |cRXP_FRIENDLY_Gubber Blump|r
    .turnin 1138 >>Gebt die Quest Meeresfrüchte ab
step
    #label end
    #requires bowl
    .goto Felwood,19.10,20.63
.target Gwennyth Bly'Leggonde
>>Sprecht mit |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4727 >> Gebt die Quest Gestrandete Meereskreatur ab
    .turnin 4725 >> Gebt die Quest Gestrandete Meeresschildkröte ab
step
     #completewith Murkdeep
     >> Tötet jede Mondpirscherpatriarch, die ihr findet, und Mondpirschermatriarchin, wenn ihr euch wohlfühlt. Plündert sie für Feiner Mondpirscherpelz. Sie teilen Spawns mit Ergrauter Distelbär.
    .complete 986,1 --Fine Moonstalker Pelt (5)
    .unitscan Moonstalker Sire;Moonstalker Matriarch
step
     #completewith Murkdeep
    .goto Darkshore,38.60,80.50,0
     >> Tötet Ergrauter Distelbärs. Plündert sie für Ergrauter Skalp
    .complete 1003,1 --Grizzled Scalp (4)
step
    .goto Darkshore,43.55,76.29
>>Sprecht mit |cRXP_FRIENDLY_Onu|r
    .turnin 948 >> Gebt die Quest Onu ab
.target Onu
    .accept 944 >> Akzeptiert die Quest Die Meistergleve
step
    #completewith next
    .goto Darkshore,43.69,76.64
    .vendor >> Kauft Wasser der Stufe 15 von Tiyani.
step << Human
    >>Sammelt die Überreste auf.
    .goto Darkshore,35.97,70.90
    .accept 4728 >>Akzeptiert die Quest Gestrandete Meereskreatur
step
    #label Murkdeep
    .goto Darkshore,36.52,76.55
    >> Tötet alle Murlocs im Lager, bleibt weg vom Lagerfeuer in der Mitte.
    >> Sobald ihr alles getötet habt, geht zur Mitte des Lagers, um Gurgelbacke zu beschwören.
    >> Wenn ihr Glück habt, könnte Gurgelbacke bereits etwa 30 Meter westlich der Küste verfügbar sein (falls jemand zuvor an ihm gestorben ist)
    .complete 4740,1 --Murkdeep (1)
step
     >> Tötet Krebse an der Küste für Feine Krebsbrocken
    .complete 1138,1 --Fine Crab Chunks (6)
step
    >>Sammelt die Überreste auf.
    .goto Darkshore,32.70,80.73
    .accept 4730 >>Akzeptiert die Quest Gestrandete Meereskreatur
step
    >>Sammelt die Überreste auf. Seid vorsichtig, da die Orakels Blitzschlag machen welcher 90 Schaden verursacht und sie sich vollheilen können, wenn ihr HP <55% HP ist.Ihr könnt den Schildkrötenkopf hier nutzen, um außer Sichtlinie zu kommen
    >>Lasst immer einen Fluchtweg offen. Gezeitenjäger der Grauflossen sind nicht so übel, aber seid euch ihrer Giftfähigkeit mit geringem Schaden bewusst.
    >>Versucht, eure Heiltränke für später zu sparen, besonders die großen.
    .goto Darkshore,31.70,83.72
    .accept 4731 >>Akzeptiert die Quest Gestrandete Meeresschildkröte
step
    >>Der Schildkrötenpanzer auf der Insel kann hier genutzt werden, um außer Sichtlinie zu kommen
    .goto Darkshore,31.22,85.56
    .accept 4732 >>Akzeptiert die Quest Gestrandete Meeresschildkröte
step
    >>Sammelt es am Hals auf, passt auf die 2 Mobs auf, die vom Gelände versteckt sind (ihr solltet nur 3 Mobs töten müssen, um diesen Gegenstand zu plündern).
    .goto Darkshore,31.28,87.39
    .accept 4733 >>Akzeptiert die Quest Gestrandete Meereskreatur
step
    .goto Darkshore,35.72,83.69
.target Prospector Remtravel
>>Sprecht mit |cRXP_FRIENDLY_Ausgrabungsleiter Remtravel|r
    .turnin 729 >> Gebt die Quest Der geistesabwesende Ausgrabungsleiter ab
step
    .goto Darkshore,35.72,83.69
     >>Diese Quest ist SEHR schwierig. Macht sie mit einem anderen Spieler, wenn ihr könnt.
     >> Startet die Eskortenquest.
.target Prospector Remtravel
>>Sprecht mit |cRXP_FRIENDLY_Ausgrabungsleiter Remtravel|r
    .accept 731,1 >> Der geistesabwesende Ausgrabungsleiter annehmen
step
     >>Eskortiert Ausgrabungsleiter Remtravel
     >>Lasst Remtravel alles angreifen (da die Mobs ihn treffen müssen, damit er sie angreift), dann beschießt den Mob mit Feuerbällen
     >>Remtravel hat wenig Leben, also versucht, Versucht also, die Aggro der anderen Gegner von ihm zu ziehen
     >>Wenn Troggs erscheinen, verwandelt denjenigen, den er nicht angreift, dann bombardiert den anderen, wenn er ihn getroffen hat. Verwandelt den Magier zuerst, der am Ende spawnt, NACHDEM er einen Feuerball auf den Prospektoren geschossen hat
     >>Falls ihr diese Quest beim ersten Mal nicht schafft, überspringt sie einfach - sie ist SEHR fertigkeitsabhängig und auch sehr vom Glück abhängig
     .complete 731,1 --Escort Prospector Remtravel (1)
step
     #completewith Glaive
     >> Tötet jede Mondpirscherpatriarch, die ihr findet, und Mondpirschermatriarchin, wenn ihr euch wohlfühlt. Plündert sie für Feiner Mondpirscherpelz. Sie teilen Spawns mit Ergrauter Distelbär.
    .complete 986,1 --Fine Moonstalker Pelt (5)
    .unitscan Moonstalker Sire;Moonstalker Matriarch
step
    >>Tötet Ebenenschreiter. Stellt sicher, dass ihr mindestens 1 leichte Feder für später habt
    .collect 17056,1 --Light Feather (1)
step
     #completewith next
    .goto Darkshore,38.60,80.50,0
     >> Tötet Ergrauter Distelbärs. Plündert sie für Ergrauter Skalp
    .complete 1003,1 --Grizzled Scalp (4)
step
    #sticky
    #completewith Therylune
    >>Halte Ausschau nach „The Powers Below“. Es ist eine kostenlose Quest mit geringer Drop-Rate.
    .collect 5352,1,968 --Book: The Powers Below (1)
    .accept 968 >> Akzeptiert die Quest Die Macht in der Tiefe
step
    #label Glaive
    .goto Darkshore,38.30,87.12
     >> BETRETET Die Meistergleve und tötet die Mobs um den Altar in der Mitte
    .complete 944,1
step
    #sticky
    #label TheryluneE
    .goto Darkshore,38.65,87.34
.target Therylune
>>Sprecht mit |cRXP_FRIENDLY_Therylune|r
    .accept 945 >> Akzeptiert die Quest Therylunes Flucht
step
     >> Lasst die Wahrsageschale aus eurem Inventar auf den Boden fallen
    .turnin 944 >> Gebt die Quest Die Meistergleve ab
    .accept 949 >> Akzeptiert die Quest Das Twilight-Lager
step
    .goto Darkshore,38.55,86.03
     >> Klickt auf das Buch oben auf dem Sockel. Passt auf, dass Therylune nicht davonläuft, wenn ihr es bereits gestartet habt
    .turnin 949 >> Gebt die Quest Das Twilight-Lager ab
    .accept 950 >> Akzeptiert die Quest Rückkehr zu Onu
step
    #label Therylune
    #requires TheryluneE
    >> Beendet die Eskortquest
    >> Wenn ihr den letzten Mob auf dem Weg aus der Meistergleve getötet habt, macht ein Lagerfeuer und kocht das ganze Fleisch und alle Eier, die ihr noch habt, um eure Kochfähigkeit zu verbessern
    >> Ihr benötigt Kochlevel 50 für eine kostenlose Quest in Dunkelhain
    .complete 945,1 --Escort Therylune away from the Master's Glaive (1)
step
     #sticky
    #label MoonstalkerP
    .goto Darkshore,37.38,91.87,100,0
    .goto Darkshore,38.96,80.07,100,0
    .goto Darkshore,43.82,82.08,100,0
    .goto Darkshore,38.96,80.07,0
     >> Tötet jede Mondpirscherpatriarch, die ihr findet, und Mondpirschermatriarchin, wenn ihr euch wohlfühlt. Plündert sie für Feiner Mondpirscherpelz. Sie teilen Spawns mit Ergrauter Distelbär.
     >> Falls ihr extrem Pech mit Spawns und Droprates habt, könnt ihr diese Quest einfach überspringen
    .complete 986,1 --Fine Moonstalker Pelt (5)
    .unitscan Moonstalker Sire;Moonstalker Matriarch
step
    .goto Darkshore,38.60,80.50
     >> Tötet alle Ergrauter Distelbär um die südliche Dunkelküste. Plündert sie für Ergrauter Skalp
    .complete 1003,1 --Grizzled Scalp (4)
step
    .goto Darkshore,41.40,80.56
    .turnin 1003 >> Gebt die Quest Dröhnkiste 525 ab
step
    #requires MoonstalkerP
    .goto Darkshore,43.55,76.29
.target Onu
>>Sprecht mit |cRXP_FRIENDLY_Onu|r
    .turnin 950 >> Gebt die Quest Rückkehr zu Onu ab
step
    #completewith next
    .goto Darkshore,43.69,76.63
    .vendor >> Kauft Essen/trinken von Tiyani, falls nötig
step
    >>Akzeptiert die Escortquest von Kerlonian. Falls er nicht da ist, überspringt diesen Schritt
    .goto Darkshore,44.40,76.42
.target Kerlonian Evershade
>>Sprecht mit |cRXP_FRIENDLY_Kerlonian Evershade|r
    .accept 5321 >>Akzeptiert die Quest Der Schläfer ist erwacht
step
    .isOnQuest 5321
    >>Plündert die kleine graue Kiste neben Kerlonian
    .goto Darkshore,44.40,76.42
    .complete 5321,2 --Horn of Awakening (1)
step
    .isOnQuest 5321
    .goto Ashenvale,26.84,36.74
    >>Lauft nach Süden ins Eschental. Bindet das Horn der Erweckung in euren Aktionsleisten und benutzt es bei Kerlonian, wenn er anfängt auf der Stelle zu gehen und einschläft
    .complete 5321,1 --Escort Kerlonian Evershade to Maestra's Post (1)
step
    .isOnQuest 5321
    .goto Ashenvale,27.26,35.58
.target Liladris Moonriver
>>Sprecht mit |cRXP_FRIENDLY_Liladris Moonriver|r
    .turnin 5321 >>Gebt die Quest Der Schläfer ist erwacht ab
step
    .goto Ashenvale,26.19,38.70
.target Delgren the Purifier
>>Sprich mit |cRXP_FRIENDLY_Delgren der Läuterer|r
    .turnin 967 >>Gebt die Quest Der Turm von Althalaxx ab
step
    #softcore
    >>Lauft die Straße nach Süden hinauf. Lauft zum Schrein von Aessina
    -->>Whilst you're doing this, start opening the Website Unstuck tool, and select your character. Do NOT confirm it yet though
    .goto Ashenvale,22.64,51.91
.target Therysil
>>Sprecht mit |cRXP_FRIENDLY_Therysil|r
    .turnin 945 >>Gebt die Quest Therylunes Flucht ab
step
    #hardcore
    >>Lauft die Straße nach Süden hinauf. Lauft zum Schrein von Aessina
    .goto Ashenvale,22.64,51.91
.target Therysil
>>Sprecht mit |cRXP_FRIENDLY_Therysil|r
    .turnin 945 >>Gebt die Quest Therylunes Flucht ab
step
    .hs >> Ruhestein nach Auberdine
step
    .goto Darkshore,36.09,44.93
.target Gubber Blump
>>Sprecht mit |cRXP_FRIENDLY_Gubber Blump|r
    .turnin 1138 >>Gebt die Quest Meeresfrüchte ab
step
    .goto Darkshore,36.62,45.60
.target Gwennyth Bly'Leggonde
>>Sprecht mit |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4730 >>Gebt die Quest Gestrandete Meereskreatur ab
    .turnin 4731 >>Gebt die Quest Gestrandete Meeresschildkröte ab
    .turnin 4732 >>Gebt die Quest Gestrandete Meeresschildkröte ab
    .turnin 4733 >>Gebt die Quest Gestrandete Meereskreatur ab
step
    .goto Darkshore,37.73,43.38
.target Sentinel Glynda Nal'Shea
>>Sprecht mit |cRXP_FRIENDLY_Schildwache Glynda Nal'Shea|r
    .turnin 4740 >>Gebt die Quest GESUCHT: Gurgelbacke! ab
step
    .isQuestComplete 986
    >>Behaltet den nächsten Teil der Quest in eurem Questlog für den +3-Ausdauer-Umhang. Brecht die Quest ab, wenn ihr den Umhang nicht mehr braucht
    .goto Darkshore,39.37,43.48
>>Sprecht mit |cRXP_FRIENDLY_Terenthis|r
    .turnin 986 >>Gebt die Quest Ein verirrter Meister ab
.target Terenthis
    .accept 993 >>Akzeptiert die Quest Ein verirrter Meister
step
    .goto Darkshore,37.44,41.84
.target Archaeologist Hollee
>>Sprecht mit |cRXP_FRIENDLY_Archäologin Hollee|r
    .turnin 731 >> Gebt die Quest Der geistesabwesende Ausgrabungsleiter ab
    .isQuestComplete 731
step
    .goto Darkshore,37.44,41.84
.target Archaeologist Hollee
>>Sprecht mit |cRXP_FRIENDLY_Archäologin Hollee|r
    .accept 741 >> Der geistesabwesende Ausgrabungsleiter annehmen
    .isQuestTurnedIn 731
step
    #completewith next
    .isOnQuest 741
    >>Lauft zum Dock zurück. Wartet auf das Boot nach Darnassus
    .goto Darkshore,36.43,43.84,30,0
    .goto Darkshore,33.17,40.17,40
step
    .isOnQuest 741
    .zone Teldrassil >> Nehmt das Boot nach Darnassus
step
    .isOnQuest 741
    .goto Teldrassil,55.95,89.86,30 >> Geht durch das violette Portal
step
    .isOnQuest 741
    .goto Darnassus,31.24,84.49
>>Sprecht mit |cRXP_FRIENDLY_Chefarchäologe Greywhisker|r
    .turnin 741 >>Gebt die Quest Der geistesabwesende Ausgrabungsleiter ab
.target Chief Archaeologist Greywhisker
    .accept 942 >>Der geistesabwesende Ausgrabungsleiter annehmen
step
    .goto Teldrassil,58.40,94.02
    .fp Teldrassil >> Erlernt die Flugroute nach Teldrassil
    .fly Auberdine >> Fliege nach Auberdine
step
    .goto Darkshore,32.42,43.75,50,0
    .zone Wetlands >> Nehmt das Boot nach Menethil
step
    #completewith next
    .money <0.08
    .goto Wetlands,10.4,56.0,15,0
    .goto Wetlands,10.1,56.9,15,0
    .goto Wetlands,10.6,57.2,15,0
    .goto 1437,10.760,56.721
    >> Falls ihr 8s habt, überprüft ob Neal Allen eine Bronzeröhre hat und kauft sie, falls sie vorhanden ist. Anderenfalls überspringt diesen Schritt
    .collect 4371,1,175,1
step
    .goto Wetlands,9.49,59.69
    .fly Ironforge >> Fliege nach Eisenschmiede
step << skip --logout skip
    #completewith next
    .goto Ironforge,56.23,46.83,0
    +Führt einen Logout-Skip durch, indem ihr auf einen der Greif-Köpfe springt, euch abmeldet und dann wieder anmeldet
    .link https://www.youtube.com/watch?v=PWMJhodh6Bw >> KLICKT HIER
step
    .zone Stormwind City >> Nehmt die Straßenbahn nach Sturmwind
step
    #completewith FlyAndy
    .goto StormwindClassic,55.21,7.04
    .vendor >> Kauft eine Bronzeröhre, falls ihr sie noch nicht habt
    >>Dies ist ein Gegenstand mit begrenztem Bestand, überspringt diesen Schritt, falls der NPC ihn nicht hat
    .bronzetube
step << Human
    #label FlyAndy
    .goto Elwynn Forest,32.45,50.16
    .zone Elwynn Forest >> Reist in den Wald von Elwynn
step << Gnome
    .goto Elwynn Forest,26.29,38.50
    .zone Stormwind City >> Lauf nach Sturmwind
step << Gnome
    #label FlyAndy
    >>Lauft nach Sturmwind und erlernt die Flugroute
    .goto StormwindClassic,57.62,59.48,50,0
    .goto StormwindClassic,66.27,62.13
    .fp Stormwind City >> Holt euch den Flugpunkt in Sturmwind
step << Gnome
    .goto StormwindClassic,66.05,65.64,12,0
    .goto StormwindClassic,64.97,67.69,18 >> Lass dich auf den kleinen Vorsprung fallen, indem du gegen die weiße Wand läufst. Seid vorsichtig. Lauft entlang davon zum Ausgang von Sturmwind
step
    >> Lauft nach oben in das Gasthaus von Goldhain
    .goto Elwynn Forest,42.97,65.65,15,0
    .goto Elwynn Forest,43.81,66.46,15,0
    .goto Elwynn Forest,43.25,66.19
    .trainer >> Trainiere deine Klassenfähigkeiten
step
    .goto Elwynn Forest,91.42,73.59,125,0
    .zone Redridge Mountains >> Lauft nach Osten bis zum Rotkammgebirge. Sortiert die Tastenbelegung auf eurem Weg, und achtet darauf, dass die Zauber angenehm in der Aktionsleisten von Euch sind
]])

RXPGuides.RegisterGuide([[
#classic
#tbc
<< Alliance Mage
#name 18-21 Rotkamm Magier AoE
#version 1
#group RestedXP Allianz Magier
#defaultfor Alliance Mage
#next 21-22 Dämmerwald Mage AoE

step
    #sticky
    #completewith Gnolls
    +Fangt an, auf erforderliche Quest-Mobs, die ihr seht, in Gruppen von 3 oder mehr AoE-Zauber zu wirken
    >>Haltet dieses Tutorial in einem anderen Tab offen für den Redridge AoE-Bereich, falls erforderlich:
    .link https://youtu.be/SxMc2GoP33c?t=56 >> KLICKT HIER
step
    >>Sprecht mit Wachhe Parker. Er patrouilliert ein wenig um die Kreuzung
    .goto Elwynn Forest,99.05,72.15
.target Guard Parker
>>Sprecht mit |cRXP_FRIENDLY_Wache Parker|r
    .accept 244 >>Akzeptiert die Quest Eindringende Gnolle
step
    #sticky
    #label Gnolls
    .goto Redridge Mountains,30.74,59.99
>>Sprecht mit |cRXP_FRIENDLY_Deputy Feldon|r
    .turnin 244 >>Gebt die Quest Eindringende Gnolle ab
.target Deputy Feldon
    .accept 246 >>Akzeptiert die Quest Einschätzung der Gefahr
step
    .goto Redridge Mountains,30.59,59.40
    .fp Redridge Mountains >> Erlernt die Flugroute zum Rotkammgebirge
step
    #requires Gnolls
    .goto Redridge Mountains,33.51,48.96
.target Marshal Marris
>>Sprecht mit |cRXP_FRIENDLY_Marshal Marris|r
    .accept 20 >>Akzeptiert die Quest Bedrohung durch die Blackrock
step
    .goto Redridge Mountains,32.14,48.64
.target Foreman Oslow
>>Sprich mit |cRXP_FRIENDLY_Großknecht Oslow|r
    .accept 125 >>Akzeptiert die Quest Die verlorenen Werkzeuge
step
    .goto Redridge Mountains,30.94,47.24
.target Verner Osgood
>>Sprich mit |cRXP_FRIENDLY_Verner Gutmark|r
    .accept 118 >>Akzeptiert die Quest Der Preis für Hufeisen
step
    >>Geht in das Rathaus
    .goto Redridge Mountains,29.72,44.26
.target Bailiff Conacher
>>Sprich mit |cRXP_FRIENDLY_Büttel Conacher|r
    .accept 91 >>Das Gesetz des Solomon annehmen
step
    .goto Redridge Mountains,29.99,44.45
    >>Geht ins Gebäude
.target Magistrate Solomon
>>Sprich mit |cRXP_FRIENDLY_Magistrat Solomon|r
    .accept 120 >>Akzeptiert die Quest Botschaft nach Sturmwind
step
    .goto Redridge Mountains,27.72,47.38
.target Dockmaster Baren
>>Sprecht mit |cRXP_FRIENDLY_Dockmaster Baren|r
    .accept 127 >>Fischhandel annehmen
step
    .goto Redridge Mountains,26.75,46.42
    .accept 180 >>GESUCHT: Leutnant Fangor annehmen
step
    >>Betretet Das Gasthaus
    .goto Redridge Mountains,27.09,45.65
.target Darcy
>>Sprecht mit |cRXP_FRIENDLY_Darcy|r
    .accept 129 >>Akzeptiert die Quest Ein geschenktes Mittagessen
step
    .goto Redridge Mountains,27.01,44.82
    .home >> Setzt euren Ruhestein in Seenhain
step
    .goto Redridge Mountains,29.32,53.64
.target Shawn
>>Sprecht mit |cRXP_FRIENDLY_Shawn|r
    .accept 3741 >>Akzeptiert die Quest Hilarys Halskette
step
    >>Schaut nach Hilarys Halskette unter Wasser. Sie befindet sich in einem braunen Stück Erde
    .goto Redridge Mountains,27.80,56.05,90,0
    .goto Redridge Mountains,26.56,50.63,90,0
    .goto Redridge Mountains,23.96,55.17,90,0
    .goto Redridge Mountains,19.16,51.75,90,0
    .goto Redridge Mountains,31.12,54.21,90,0
    .goto Redridge Mountains,34.03,55.34,90,0
    .goto Redridge Mountains,38.09,54.49,90,0
    .complete 3741,1 --Hilary's Necklace (1)
step
    #completewith next
    .goto Redridge Mountains,15.47,62.40,0
    +AoEt die Gnolle in den Lagern
step
    .goto Redridge Mountains,15.28,71.47
>>Sprecht mit |cRXP_FRIENDLY_Wache Parker|r
    .turnin 129 >>Gebt die Quest Ein geschenktes Mittagessen ab
.target Guard Parker
    .accept 130 >>Akzeptiert die Quest Besuch im Kräuterladen
step
    .goto Redridge Mountains,30.59,59.41
    .fly Stormwind >> Fliege nach Sturmwind
step
    >>Geht nach Sturmwind. Geht zum Waffenausbilder
   .goto StormwindClassic,57.13,57.71
   .trainer >> Erlernen 1h Schwerter und Dolche
step
    #softcore
    .goto StormwindClassic,53.62,59.76,30,0
    .goto StormwindClassic,55.25,7.08
    +Geht zum Auktionshaus. Kauft eine Bronzeröhre, falls sie bezahlbar ist
    >>Falls es hier keine gibt oder sie zu teuer ist, könnt ihr auch potentiell eine von Billibub im Zwergendistrikt kaufen
    >>Falls ihr keine finden könnt, überspringt diesen Schritt
    .bronzetube
step
    #hardcore
    .goto StormwindClassic,53.62,59.76,30,0
    .goto StormwindClassic,55.25,7.08
    .vendor >> Überprüft Billibub im Zwergendistrikt nach einer Bronzeröhre. Kauft eine, falls sie verfügbar ist
    .bronzetube
step
    .goto StormwindClassic,63.99,75.34
>>Sprecht mit |cRXP_FRIENDLY_General Marcus Jonathan|r
    .turnin 120 >>Gebt die Quest Botschaft nach Sturmwind ab
.target General Marcus Jonathan
    .accept 121 >>Akzeptiert die Quest Botschaft nach Sturmwind
step
    >>Lauft nach Goldhain
    .goto Elwynn Forest,41.71,65.55
>>Sprecht mit |cRXP_FRIENDLY_Schmied Argus|r
    .turnin 118 >>Gebt die Quest Der Preis für Hufeisen ab
.target Smith Argus
    .accept 119 >>Akzeptiert die Quest Zurück zu Verner
step
    >>Lauft zur Späherkuppe
    .goto Westfall,56.33,47.52
.target Gryan Stoutmantle
>>Sprich mit |cRXP_FRIENDLY_Gryan Starkmantel|r
    .accept 65 >>Die Bruderschaft der Defias annehmen
step
    #completewith next
    #label hsLakeshire
    .hs Lakeshire >> Benutzt euren Ruhestein nach Seenhain, falls er verfügbar ist
step
    #completewith hsLakeshire
    #label WFFP
    .goto Westfall,56.55,52.65
    .fp Westfall >> Erlernt die Flugroute nach Westfall << Gnome
    .fly Redridge >> Fliegt ins Rotkammgebirge
step
    #requires WFFP
    .goto Redridge Mountains,30.97,47.27
>>Sprich mit |cRXP_FRIENDLY_Verner Gutmark|r
    .turnin 119 >>Gebt die Quest Zurück zu Verner ab
.target Verner Osgood
    .accept 122 >>Akzeptiert die Quest Bauchschuppen
    .accept 124 >>Akzeptiert die Quest Das Bellen der Gnolle
step
    >>Geht in die Burg
    .goto Redridge Mountains,29.93,44.46
>>Sprich mit |cRXP_FRIENDLY_Magistrat Solomon|r
    .turnin 121 >>Gebt die Quest Botschaft nach Sturmwind ab
.target Magistrate Solomon
    .accept 143 >>Botschaft nach Westfall annehmen
.target Bailiff Conacher
>>Sprich mit |cRXP_FRIENDLY_Büttel Conacher|r
    .accept 91 >>Das Gesetz des Solomon annehmen
step
    >>Geht in den obersten Stock des Gasthauses
    .goto Redridge Mountains,26.47,45.35
>>Sprecht mit |cRXP_FRIENDLY_Wiley der Schwarze|r
    .turnin 65 >>Gebt die Quest Die Bruderschaft der Defias ab
.target Wiley the Black
    .accept 132 >>Die Bruderschaft der Defias annehmen
step
    .goto Redridge Mountains,29.24,53.63
.target Hilary
>>Sprecht mit |cRXP_FRIENDLY_Hilary|r
    .turnin 3741 >>Gebt die Quest Hilarys Halskette ab
step
    #era/som
    #completewith Murlocs
    >>Farmt die ersten 3 Gegenstände für Rotkammgulasch, während ihr andere Quests macht. Sammelt auch genug Brocken Eberfleisch, um beim Kochen auf 50 zu kommen
    >>Konzentriert euch stark auf die Geiferzähne und kümmert euch noch nicht um Knuspriges Spinnenfleisch
    .collect 2296,5,92,1 --Great Goretusk Snout (5)
    .collect 1080,5,92,1 --Tough Condor Meat (5)
    .collect 1081,5,92,1 --Crisp Spider Meat (5)
step
    #completewith Murlocs
    >>Tötet Schwarzer Großdrachenwelpen. Plündert sie für ihre Welpenbauchschuppe
    .complete 122,1 --Underbelly Whelp Scale (6)
step
    >>AoEt die Gnolle in der Gegend. Schaut euch das AoE-Video an, falls nötig
    >>Verwandelt die Wilderer während des AoE-Pulls, damit ihr nicht beschossen werdet
    .goto Redridge Mountains,29.51,84.17,50,0
    .goto Redridge Mountains,34.60,82.99,50,0
    .goto Redridge Mountains,43.44,71.11,50,0
    .goto Redridge Mountains,29.51,84.17,50,0
    .goto Redridge Mountains,34.60,82.99,50,0
    .goto Redridge Mountains,43.44,71.11,50,0
    .complete 246,1 --Redridge Mongrel (10)
    .complete 246,2 --Redridge Poacher (6)
step
    #label Murlocs
    >>AoEt die Murlocs in der Gegend. Ihr müsst die Murlocgezeitenrufer einzeln angreifen (Blitzschlag + Welle der Heilung)
    >>Ihr könnt die Murlocküstenschläger (Ansturm) und Murlocfleischfresser AoEn (25 Schaden sofortiger Lebensraub auf Treffer-Chance). Gestaltet eure Pulls kreativ
    >>Behaltet 8 Flossen für später
    .goto Redridge Mountains,48.82,69.49
    .complete 127,1 --Spotted Sunfish (10)
    .collect 1468,8,150,1 --Murloc Fin (8)
step
    #era/som
    >>Sammelt Zähes Kondorfleisch und Bauchschuppen in dieser Gegend. Falls ihr auf Respawns wartet, geht nach Osten, um ein paar Äxte zu holen, und kommt dann hier zurück
    .goto Redridge Mountains,61.04,77.55
    .collect 1080,5,92,1 --Tough Condor Meat (5)
    .complete 122,1 --Underbelly Whelp Scale (6)
step
    #som
    #phase 3-6
    >>Sammelt Bauchschuppen in dieser Gegend. Falls ihr auf Respawns wartet, geht nach Osten, um ein paar Äxte zu holen, und kommt dann hier zurück
    .goto Redridge Mountains,61.04,77.55
    .complete 122,1 --Underbelly Whelp Scale (6)
step
    >>AoEt die Orcs in der Gegend. Sammelt ihre Beute. Seid vorsichtig, da die Kundschafter der Blackrock euch netzen und die Renegat der Blackrock Schildschlag anwenden können
    >>Versucht, die Renegat der Blackrock zu vermeiden, da sie ein hohes Level haben. Zieht maximal 3 gleichzeitig. AoEn hier ist sehr hohes Risiko, mittlerer Lohn
    >>Sammelt noch nicht alle Äxte. Ihr habt eine bessere Gelegenheit, sie später zu beenden.
    .goto Redridge Mountains,76.28,83.88,50,0
    .goto Redridge Mountains,75.53,73.36,50,0
    .goto Redridge Mountains,76.28,83.88,50,0
    .goto Redridge Mountains,75.53,73.36,50,0
    .collect 3014,8 --Battleworn Axe (8)
step
    >>Geht unter Wasser. Sammelt Beute aus der grauen Kiste
    .goto Redridge Mountains,41.52,54.68
    .complete 125,1 --Oslow's Toolbox (1)
step
    #era/som
    >>Beendet das sammeln der Geiferzahnschnauzen hier
    .goto Redridge Mountains,32.07,70.54
    .collect 2296,5,92,1 --Great Goretusk Snout (5)
step
    .goto Redridge Mountains,30.74,60.00
.target Deputy Feldon
>>Sprecht mit |cRXP_FRIENDLY_Deputy Feldon|r
    .turnin 246 >>Gebt die Quest Einschätzung der Gefahr ab
step
    .isQuestComplete 20
    .goto Redridge Mountains,33.50,48.96
.target Marshal Marris
>>Sprecht mit |cRXP_FRIENDLY_Marshal Marris|r
    .turnin 20 >>Gebt die Quest Bedrohung durch die Blackrock ab
step
    .goto Redridge Mountains,32.14,48.63
>>Sprich mit |cRXP_FRIENDLY_Großknecht Oslow|r
    .turnin 125 >>Gebt die Quest Die verlorenen Werkzeuge ab
.target Foreman Oslow
    .accept 89 >>Akzeptiert die Quest Die Immerruhbrücke
step
    .goto Redridge Mountains,30.98,47.27
.target Verner Osgood
>>Sprich mit |cRXP_FRIENDLY_Verner Gutmark|r
    .turnin 122 >>Gebt die Quest Bauchschuppen ab
step
    #level 20
    .goto Redridge Mountains,27.72,47.38
>>Sprecht mit |cRXP_FRIENDLY_Dockmaster Baren|r
    .turnin 127 >>Gebt die Quest Fischhandel ab
.target Dockmaster Baren
    .accept 150 >>Murlocwilderer annehmen
    .turnin 150 >>Gebt die Quest Murlocwilderer ab
step
    .goto Redridge Mountains,27.72,47.38
.target Dockmaster Baren
>>Sprecht mit |cRXP_FRIENDLY_Dockmaster Baren|r
    .turnin 127 >>Gebt die Quest Fischhandel ab
step
    .goto Redridge Mountains,21.86,46.33
>>Sprecht mit |cRXP_FRIENDLY_Martie Jainrose|r
    .turnin 130 >>Gebt die Quest Besuch im Kräuterladen ab
.target Martie Jainrose
    .accept 131 >>Akzeptiert die Quest Narzissen für eine Dame
    .accept 34 >>Akzeptiert die Quest Ein ungebetener Gast
step
    >>Tötet Stopfwanst. Lockt ihn zurück zu Wache Adams bis ganz in die Stadt
    >>Vorsicht, wenn sie bebt (verursacht sie sofort 80 Flächenschaden) und stürmt auf euch zu (halte sie nach Möglichkeit verlangsamt und mit Frostnova belegt).
    >>Stellt sicher, dass ihr mindestens 51% des Schadens verursacht
    >>Diese Quest ist SEHR schwierig
    .goto Redridge Mountains,15.66,49.31
    .complete 34,1 --Bellygrub's Tusk (1)
--N Add link
step
    .goto Redridge Mountains,21.85,46.32
.target Martie Jainrose
>>Sprecht mit |cRXP_FRIENDLY_Martie Jainrose|r
    .turnin 34 >>Gebt die Quest Ein ungebetener Gast ab
step
    .goto Redridge Mountains,21.23,36.17,60,0
    .goto Redridge Mountains,34.20,39.70,60,0
    .goto Redridge Mountains,39.61,31.46,60,0
    .goto Redridge Mountains,34.20,39.70,60,0
    .goto Redridge Mountains,21.23,36.17,60,0
    .goto Redridge Mountains,34.20,39.70,60,0
    .goto Redridge Mountains,39.61,31.46,60,0
    >>Tötet Gnolle. Plündert sie für Eisenspitze und Eisenniete
    .complete 89,1 --Iron Pike (5)
    .complete 89,2 --Iron Rivet (5)
    .complete 124,1 --Redridge Brute (10)
    .complete 124,2 --Redridge Mystic (8)
step
    #completewith next
    >>Tötet die schön zusammenstehenden Gruppen von Orks. Plündert sie, um die Äxtequest zu beenden
    >>Falls ihr nach dem töten der nahegelegenen Gruppen Pech habt, habt ihr später noch eine Gelegenheit
    .goto Redridge Mountains,37.05,45.15,50,0
    .goto Redridge Mountains,38.28,41.85,50,0
    .goto Redridge Mountains,40.46,40.52,50,0
    .complete 20,1 --Blackrock Axe (10)
step
    #era/som
    #completewith next
    .goto Redridge Mountains,49.25,39.66,150 >> Lauft zu den Spinnen
step
    #era/som
    >>Tötet Spinnen. Plündert sie für das Fleisch
    >>Seid vorsichtig, da das Gift ziemlichen Schaden verursachen kann
    >>Seid vorsichtig vor Chatter (Selten), da dieser eine 8-sekündige Betäubung hat
    .goto Redridge Mountains,57.23,45.24
    .collect 1081,5,92,1 --Crisp Spider Meat (5)
step
    >>Beendet das Töten von Orks für die Äxte
    .goto Redridge Mountains,61.74,42.82
    .complete 20,1 --Blackrock Axe (10)
step
    .goto Redridge Mountains,33.50,48.96
.target Marshal Marris
>>Sprecht mit |cRXP_FRIENDLY_Marshal Marris|r
    .turnin 20 >>Gebt die Quest Bedrohung durch die Blackrock ab
step
    .goto Redridge Mountains,32.15,48.64
.target Foreman Oslow
>>Sprich mit |cRXP_FRIENDLY_Großknecht Oslow|r
    .turnin 89 >>Gebt die Quest Die Immerruhbrücke ab
step
    .goto Redridge Mountains,30.98,47.28
>>Sprich mit |cRXP_FRIENDLY_Verner Gutmark|r
    .turnin 124 >>Gebt die Quest Das Bellen der Gnolle ab
.target Verner Osgood
    .accept 126 >>Geheul in den Hügeln annehmen
step
    .goto Redridge Mountains,27.09,45.65
.target Darcy
>>Sprecht mit |cRXP_FRIENDLY_Darcy|r
    .turnin 131 >>Gebt die Quest Narzissen für eine Dame ab
step
    .goto Redridge Mountains,27.01,44.81
    .vendor >> Kauft level 15 trinken
step
    #era/som
    .goto Redridge Mountains,22.70,44.00
    >>Verlasst das Gasthaus. Geht nach Westen und dann ins Gebäude
.target Chef Breanna
>>Sprecht mit |cRXP_FRIENDLY_Küchenchefin Breanna|r
    .accept 92 >> Akzeptiert die Quest Rotkammgulasch
    .turnin 92 >> Gebt die Quest Rotkammgulasch ab
step
    #era/som
    #completewith next
    .goto Redridge Mountains,26.54,44.90
    +Kocht das ganze Eberfleisch, bis ihr 50 Kochkunst habt
    >>Falls ihr nicht genug Fleisch habt, farmt auf dem Weg nach Dunkelhain einige Eber
step
    .goto Redridge Mountains,6.50,91.18,90,0
    .zone Duskwood >> Lauf zum Teufelswald
]])
