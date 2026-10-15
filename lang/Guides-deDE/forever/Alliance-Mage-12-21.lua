if GetLocale() ~= "deDE" then return end
local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#forever
<< Alliance Mage
#name 12-18 Dunkelküste Magier AoE
#version 1
#group RestedXP Forever Dungeonführer (A)
#subgroup Speedrun Guide Magier
#defaultfor Alliance Mage
#next 18-21 Rotkamm Magier AoE

step
    #completewith next
    .goto 1439/1,533.23,6399.77
    .vendor >> Ihr könnt extrem günstig Stufe-5-Nahrung von Laird (Fischverkäufer) kaufen
step
    >>Geht nach oben zum obersten Geschoss
    .goto 1439/1,519.48,6405.89
.target Wizbang Cranktoggle
>>Sprecht mit |cRXP_FRIENDLY_Wizbang Cranktoggle|r
    .accept 983 >>Akzeptiert die Quest Dröhnkiste 827
step
    >>Springt hinunter in den 1.Stock
    .goto 1439/1,515.55,6406.32
    .home >> Setzt den Ruhestein von Euch in Auberdine
step
    .goto 1439/1,497.21,6427.72
.target Barithras Moonshade
>>Sprecht mit |cRXP_FRIENDLY_Barithras Moonshade|r
    .accept 947 >>Akzeptiert die Quest Höhlenpilze
step
    .goto 1439/1,473.63,6439.07
.target Sentinel Glynda Nal'Shea
>>Sprecht mit |cRXP_FRIENDLY_Schildwache Glynda Nal'Shea|r
    .accept 4811 >>Akzeptiert die Quest Der rote Kristall
step
    .goto 1439/1,397.65,6437.76
.target Tharnariun Treetender
>>Sprecht mit |cRXP_FRIENDLY_Tharnariun Treetender|r
    .accept 2118 >>Akzeptiert die Quest Verseuchtes Land
step
    .goto 1439/1,362.93,6434.27
.target Terenthis
>>Sprecht mit |cRXP_FRIENDLY_Terenthis|r
    .accept 984 >>Akzeptiert die Quest Wie groß ist die Bedrohung?
step
    .goto 1439/1,543.06,6342.57
.target Gwennyth Bly'Leggonde
>>Sprecht mit |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .accept 3524 >>Akzeptiert die Quest An Land gespült
step
    .goto 1439/1,561.40,6343.01
    .fp Auberdine >> Erlernt die Flugroute nach Auberdine
step
    #completewith Bear
     >> Tötet Kriecher entlang der Küste
    .complete 983,1 --Crawler Leg (6)
step
    .goto 1439/1,558.78,6111.57
     >> Plündert die Meereskreatur
    .complete 3524,1 --Sea Creature Bones (1)
step
    #sticky
    #completewith next
    >> Findet einen Tollwütigen Distelbär.Pullt ihn und benutzt Tharnariuns Hoffnung in eurer Taschen (die violette Kugel)
    .complete 2118,1 --Rabid Thistle Bear Captured (1)
step
    .goto 1439/1,386.51,5988.430
     >> Geht zum nahegelegenen Furbolg-Lager
    .complete 984,1 --Find a corrupt furbolg camp (1)
step
    #label Bear
    >> Findet einen Tollwütigen Distelbär.Pullt ihn und benutzt Tharnariuns Hoffnung in eurer Taschen (die violette Kugel)
    .goto 1439/1,421.88,5804.16
    .complete 2118,1 --Rabid Thistle Bear Captured (1)
step
    .goto 1439/1,543.71,5962.67,150,0
    .goto 1439/1,577.12,6393.66
    >> Tötet Kriecher entlang der Küste
    .complete 983,1 --Crawler Leg (6)
step
    #sticky
    #completewith ReadAndy
     >> Lagert 5x Schreiterfleisch für später
    .collect 5469,5,2178,1
step
    .goto 1439/1,540.44,6313.31
    .turnin 983 >>Gebt die Quest Dröhnkiste 827 ab
    .accept 1001 >>Akzeptiert die Quest Dröhnkiste 411
step
    .goto 1439/1,543.06,6342.57
>>Sprecht mit |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 3524 >>Gebt die Quest An Land gespült ab
.target Gwennyth Bly'Leggonde
    .accept 4681 >>Akzeptiert die Quest An Land gespült
step
    .goto 1439/1,535.85,6409.38,40,0
    >>Lauft zu den Docks
    .goto 1439/1,600.70,6425.100
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
    .goto 1439/1,734.32,6479.68,60 >> Lauft zu den Docks hinauf und springt dann an der Kreuzung ins Wasser
step
    .goto 1439/1,854.84,6310.26
    >>Klickt auf den Kopf der Meerschildkröte unter Wasser
    .complete 4681,1 --Sea Turtle Remains (1)
step
    .goto 1439/1,543.06,6342.57
    >>Tötet Drescher auf dem Rückweg zum Ufer
.target Gwennyth Bly'Leggonde
>>Sprecht mit |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4681 >> Gebt die Quest An Land gespült ab
step
    .goto 1439/1,397.65,6437.76
>>Sprecht mit |cRXP_FRIENDLY_Tharnariun Treetender|r
    .turnin 2118 >> Gebt die Quest Verseuchtes Land ab
.target Tharnariun Treetender
    .accept 2138 >> Akzeptiert die Quest Ausrottung der Infizierten
step
    .goto 1439/1,362.93,6434.27
>>Sprecht mit |cRXP_FRIENDLY_Terenthis|r
    .turnin 984 >> Gebt die Quest Wie groß ist die Bedrohung? ab
.target Terenthis
    .accept 985 >> Akzeptiert die Quest Wie groß ist die Bedrohung?
    .accept 4761 >> Akzeptiert die Quest Thundris Windwirker
step
    >> Tötet Furbolgs
    .goto 1439/1,332.80,5883.20
    .goto 1439/1,338.70,5985.81,0
    .complete 985,1 --Blackwood Pathfinder (8)
    .complete 985,2 --Blackwood Windtalker (5)
step
    .goto 1439/1,362.93,6434.71
>>Sprecht mit |cRXP_FRIENDLY_Terenthis|r
    .turnin 985 >>Gebt die Quest Wie groß ist die Bedrohung? ab
.target Terenthis
    .accept 986 >>Akzeptiert die Quest Ein verirrter Meister
step
    >>Geht nach oben
    .goto 1439/1,384.55,6431.65
.target Sentinel Elissa Starbreeze
>>Sprecht mit |cRXP_FRIENDLY_Schildwache Elissa Starbreeze|r
    .accept 965 >>Der Turm von Althalaxx annehmen
step
    .goto 1439/1,445.46,6536.01
.target Gorbold Steelhand
>>Sprecht mit |cRXP_FRIENDLY_Gorbold Steelhand|r
    .accept 982 >> Akzeptiert die Quest Tiefer Ozean, weites Meer
step
    #label Thundris
    .goto 1439/1,492.62,6580.99
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
    .goto 1439/1,391.75,7052.59,40,0
    .goto 1439/1,437.60,7076.17
     >> BETRETET das erste Schiff durch das Loch im Rumpf. Geht dann zum Heck des untersten Decks
    .complete 982,1 --Silver Dawning's Lockbox (1)
step
    #requires Threshers
    .goto 1439/1,302.02,7124.2,40,0
    .goto 1439/1,345.90,7134.68
     >> BETRETET das zweite Schiff durch das Loch im Rumpf. Geht dann zum Heck des untersten Decks
    .complete 982,2 --Mist Veil's Lockbox (1)
step
    .goto 1439/1,193.29,7082.72
    .turnin 1001 >> Gebt die Quest Dröhnkiste 411 ab
    .accept 1002 >> Akzeptiert die Quest Dröhnkiste 323
step
    .goto 1439/1,194.60,6959.14
    .accept 4723 >> Akzeptiert die Quest Gestrandete Meereskreatur
step
    .goto 1448/1,48.92,6748.85
>>Sprecht mit |cRXP_FRIENDLY_Asterion|r
    .turnin 954 >> Gebt die Quest Bashal'Aran ab
.target Asterion
    .accept 955 >> Akzeptiert die Quest Bashal'Aran
step
    .goto 1448/1,-33.31,6660.30
     >> Tötet Grellkins. Plündert sie für ihre Ohrringe
    .complete 955,1 --Grell Earring (8)
step
    .goto 1448/1,48.92,6748.85
>>Sprecht mit |cRXP_FRIENDLY_Asterion|r
    .turnin 955 >> Gebt die Quest Bashal'Aran ab
.target Asterion
    .accept 956 >> Akzeptiert die Quest Bashal'Aran
step
    .goto 1448/1,-60.33,6653.40
     >> Tötet Satyre. Plündert sie für das Altes Mondstein-Siegel
    .complete 956,1 --Ancient Moonstone Seal (1)
step
    .goto 1448/1,48.92,6748.85
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
    .goto 1439/1,-383.77,7222.89
    >>Benutzt die Leere Probenröhre in euren Taschen
    .complete 4762,1 --Cliffspring River Sample (1)
step
    #sticky
    #completewith ReadAndy
    +Bewahrt die kleinen Eier auf, die ihr als Beute bekommt, um später eure Kochkunst zu steigern. Bewahrt ALLE leichten Federn für später auf.
step
    .goto 1439/1,-144.04,6209.82
     >> Lauft hoch zum Roten Kristall in den Bergen
    .complete 4811,1 --Locate the large, red crystal on Darkshore's eastern mountain range (1)
step
    #label ReadAndy
    .goto 1439/1,302.02,5726.433
.target Sentinel Tysha Moonblade
>>Sprecht mit |cRXP_FRIENDLY_Schildwache Tysha Moonblade|r
    .accept 953 >>Akzeptiert die Quest Der Untergang von Ameth'Aran
step
    #sticky
    #label anaya
    .goto 1439/1,171.67,5693.25,0
     >> Tötet Anaya Dawnrunner. Sie patrouilliert in der Mitte von Ameth'Aran
    .complete 963,1
    .unitscan ANAYA DAWNRUNNER
step
    #label ghosts
    #sticky
    .goto 1439/1,147.44,5630.370,0
     >> Tötet Geister. Plündert sie für die Relikte
    .complete 958,1 --Highborne Relic (7)
step
    .goto 1448/1,147.82,5576.23
     >> Klickt auf die Tafel auf dem Boden
    .complete 953,2 --Read the Fall of Ameth'Aran (1)
step
    .goto 1448/1,166.22,5634.12
     >> Klickt auf die grüne Fackel beim Pavillon
    .complete 957,1 --Destroy the seal at the ancient flame (1)
step
    .goto 1448/1,105.84,5771.35
     >> Klickt auf die Tafel auf dem Boden
    .complete 953,1 --Read the Lay of Ameth'Aran (1)
step
#hidewindow
    #requires ghosts
step
    #requires anaya
    .goto 1439/1,302.02,5726.433
.target Sentinel Tysha Moonblade
>>Sprecht mit |cRXP_FRIENDLY_Schildwache Tysha Moonblade|r
    .turnin 953 >> Gebt die Quest Der Untergang von Ameth'Aran ab
step
    .goto 1439/1,398.30,5677.53
    >>Schließe das Töten der Tollwütigen Distelbären und das Sammeln von Schreiterfleisch ab
    .complete 2138,1 --Rabid Thistle Bear (20)
    .collect 5469,5,2178,1
step
    >>Sammelt die Beute von der Meeresschildkröte
    .goto 1439/1,509.00,5620.76
    .accept 4722 >>Akzeptiert die Quest Gestrandete Meeresschildkröte
step
    >>Sammelt die Beute von der Meeresschildkröte
    .goto 1439/1,582.36,5242.17
    .accept 4728 >>Akzeptiert die Quest Gestrandete Meereskreatur
step
    .hs >> Ruhestein nach Auberdine
step
    .goto 1439/1,397.65,6437.33
>>Sprecht mit |cRXP_FRIENDLY_Tharnariun Treetender|r
    .turnin 2138 >>Gebt die Quest Ausrottung der Infizierten ab
.target Tharnariun Treetender
    .accept 2139 >>Akzeptiert die Quest Tharnariuns Hoffnung
step
    .goto 1439/1,445.46,6535.58
.target Gorbold Steelhand
>>Sprecht mit |cRXP_FRIENDLY_Gorbold Steelhand|r
    .turnin 982 >>Gebt die Quest Tiefer Ozean, weites Meer ab
    .vendor >> Kauft Milde Gewürze von Gorbold, bis ihr genug habt, um alle eure Eier zu kochen
step
    .goto 1439/1,472.97,6557.85
    >>Ihr solltet 10 Punkte im Kochen haben, sonst könnt ihr die Quest nicht akzeptieren oder abgeben
.target Alanndarian Nightsong
>>Sprecht mit |cRXP_FRIENDLY_Alanndarian Nightsong|r
    .accept 2178 >>Akzeptiert die Quest Schreitereintopf
    .turnin 2178 >>Gebt die Quest Schreitereintopf ab
step
    .goto 1439/1,491.97,6582.303
>>Sprecht mit |cRXP_FRIENDLY_Thundris Windwirker|r
    .turnin 958 >>Gebt die Quest Werkzeuge der Hochgeborenen ab
    .turnin 4762 >>Gebt die Quest Der Cliffspring ab
.target Thundris Windweaver
    .accept 4763 >>Akzeptiert die Quest Die verderbten Schwarzfelle
step
    .goto 1439/1,489.35,6506.32
.target Archaeologist Hollee
>>Sprecht mit |cRXP_FRIENDLY_Archäologin Hollee|r
    .accept 729 >>Der geistesabwesende Ausgrabungsleiter annehmen
step
    .goto 1439/1,471.66,6439.95
>>Sprecht mit |cRXP_FRIENDLY_Schildwache Glynda Nal'Shea|r
    .turnin 4811 >> Gebt die Quest Der rote Kristall ab
.target Sentinel Glynda Nal'Shea
    .accept 4812 >> Akzeptiert die Quest Wenn das Wasser fließt
step
    .goto 1439/1,467.08,6409.38
     >> Füllt die Leere Wasserröhre am Mondbrunnen
    .complete 4812,1
     >> Füllt die Leere Säuberungsschale am Mondbrunnen
    .collect 12347,1,4763,1
step
    #completewith next
    .goto 1439/1,529.30,6415.93
    .vendor >> Kauft Wasser der Stufe 15 von Taldan
step
    >>Geht zurück zum Dock
    .goto 1448/1,600.92,6424.93
.target Cerellean Whiteclaw
>>Sprecht mit |cRXP_FRIENDLY_Cerellean Whiteclaw|r
    .turnin 963 >> Gebt die Quest In ewiger Liebe ab
step
    .goto 1439/1,577.77,6371.39
.target Gubber Blump
>>Sprecht mit |cRXP_FRIENDLY_Gubber Blump|r
    .accept 1138 >> Akzeptiert die Quest Meeresfrüchte
step
    .goto 1439/1,543.06,6342.57
.target Gwennyth Bly'Leggonde
>>Sprecht mit |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4722 >>Gebt die Quest Gestrandete Meeresschildkröte ab
    .turnin 4723 >>Gebt die Quest Gestrandete Meereskreatur ab
    .turnin 4728 >>Gebt die Quest Gestrandete Meereskreatur ab << Gnome
step
    .goto 1439/1,-157.79,6206.770
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
    .goto 1439/1,47.88,6748.67
.target Asterion
>>Sprecht mit |cRXP_FRIENDLY_Asterion|r
    .turnin 957 >>Gebt die Quest Bashal'Aran ab
step
    .goto 1439/1,-376.56,6805.87
    >>Rüstet euren neuen Zauberstab aus
    >>Sammelt die Beute (Getreideprobe der Schwarzfelle) vom Fass, dann lauft südöstlich zur Höhlenmutter (bekämpft die Mobs nicht)
    .collect 12342,1 --Blackwood Grain Sample (1)
step
    .goto 1439/1,-503.63,6732.95,45,0
    >>Tötet Höhlenmutter. Seid vorsichtig, da ihre Jungen euch für 2 Sek. zu Boden werfen können
    >>Farmt bis Stufe 16 und versucht es erneut, falls ihr Schwierigkeiten habt
    .goto 1439/1,-430.27,6662.65
    .complete 2139,1 --Den Mother (1)
step
    >>Sammelt die Beute Nussprobe der Schwarzfelle vom Fass
    .goto 1439/1,-451.23,6870.06
    .collect 12343,1 --Blackwood Nut Sample (1)
step
    >>Plündert die Obstprobe der Schwarzfelle aus dem Fass. Ein Mob wird vor euch spawnen, und zwischen den Hütten im Westen - ihr müsst möglicherweise laufen
    .goto 1439/1,-520.01,6873.99
    .collect 12341,1 --Blackwood Fruit Sample (1)
step
    >>Benutzt die Gefüllte Säuberungsschale in eurem Inventar in der Nähe des Lagerfeuers. Dies macht alle nahe gelegenen Furbolgs freundlich.
    >>Tötet den Satyr, der zwischen den Lagern spawnt und dann um das Feuer herumläuft. Startet mit maximaler Reichweite, da er schwierig sein kann. Plündert den Korb, der nach dem Töten von ihm auf dem Boden fällt
    .goto 1439/1,-489.22,6879.67
    .complete 4763,1 --Talisman of Corruption (1)
step
    #completewith next
    .goto 1439/1,-659.52,6901.50,35 >> Geht zur Höhle über dem Wasserfall
step
    .goto 1439/1,-704.06,6809.80
     >> Bleibt auf dem oberen Teil der Höhle. Falls dort keine Todeskappe am Ende der oberen Seite ist, springt hinab und sammelt eine von unten
     >> Der erste blaue sollte bei der Mündung der Höhle respawnt sein, wenn ihr die Todeskappe geplündert habt
    .complete 947,1 --Scaber Stalk (5)
    .complete 947,2 --Death Cap (1)
step
    .goto 1439/1,-658.87,7246.47
>>Sprecht mit |cRXP_FRIENDLY_Balthule Shadowstrike|r
    .turnin 965 >>Gebt die Quest Der Turm von Althalaxx ab
.target Balthule Shadowstrike
    .accept 966 >>Der Turm von Althalaxx annehmen
step
    >>Tötet Fanatikerin des dunklen Strangs. Plündert sie für Abgenutztes Pergament
    .goto 1439/1,-684.41,7161.32
    .complete 966,1 --Worn Parchment (4)
step
    .goto 1439/1,-658.87,7246.47
>>Sprecht mit |cRXP_FRIENDLY_Balthule Shadowstrike|r
    .turnin 966 >>Gebt die Quest Der Turm von Althalaxx ab
.target Balthule Shadowstrike
    .accept 967 >>Der Turm von Althalaxx annehmen
step
    #requires MoonstalkersF
    .goto 1439/1,-537.04,7540.35
    .accept 4727 >>Akzeptiert die Quest Gestrandete Meeresschildkröte
step
    #sticky
    #completewith Turtles
     >> Tötet Riffkriecher an der Küste, macht keine Umwege für diese Quest - Tötet keine Mobs die 4 Stufen oder höher sind
    .complete 1138,1 --Fine Crab Chunks (6)
step
    .goto 1439/1,-423.72,7277.04,25,0
    .goto 1439/1,-417.83,7262.19
    .turnin 1002 >> Gebt die Quest Dröhnkiste 323 ab
    .accept 1003 >> Akzeptiert die Quest Dröhnkiste 525
step
    #softcore
    #label Turtles
    >>Lasst einige der nahe gelegenen Murlocs am Leben, ihr werdet an ihnen sterben, nachdem ihr diese Quest akzeptiert habt.
    .goto 1439/1,47.88,7433.800
    .accept 4725 >> Akzeptiert die Quest Gestrandete Meeresschildkröte
step
    #hardcore
    #label Turtles
    .goto 1439/1,47.88,7433.800
    .accept 4725 >> Akzeptiert die Quest Gestrandete Meeresschildkröte
step
    #softcore
    .deathskip >> Sterbt und belebt euch in Auberdine wieder.
step
    .goto 1439/1,491.97,6582.303
    >>Rüstet euren neuen Zauberstab aus
.target Thundris Windweaver
>>Sprecht mit |cRXP_FRIENDLY_Thundris Windwirker|r
    .turnin 4763 >> Gebt die Quest Die verderbten Schwarzfelle ab
step
    .goto 1439/1,397.65,6437.33
.target Tharnariun Treetender
>>Sprecht mit |cRXP_FRIENDLY_Tharnariun Treetender|r
    .turnin 2139 >>Gebt die Quest Tharnariuns Hoffnung ab
step
    .goto 1439/1,471.66,6439.95
.target Sentinel Glynda Nal'Shea
>>Sprecht mit |cRXP_FRIENDLY_Schildwache Glynda Nal'Shea|r
    .turnin 4813 >>Gebt die Quest Die Fragmente im Inneren ab
step
    .goto 1439/1,497.21,6427.72
>>Sprecht mit |cRXP_FRIENDLY_Barithras Moonshade|r
    .turnin 947 >> Gebt die Quest Höhlenpilze ab
.target Barithras Moonshade
    .accept 948 >> Akzeptiert die Quest Onu
step
    .goto 1439/1,503.10,6401.96
     >> Klickt auf das Gesuchtsplakat außerhalb vom Gasthaus
    .accept 4740 >> Akzeptiert die Quest GESUCHT: Gurgelbacke!
step
    .isQuestComplete 1138
    .goto 1439/1,577.77,6371.39
.target Gubber Blump
>>Sprecht mit |cRXP_FRIENDLY_Gubber Blump|r
    .turnin 1138 >>Gebt die Quest Meeresfrüchte ab
step
    #label end
    #requires bowl
    .goto 1448/1,543.42,6342.52
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
    .goto 1439/1,413.37,4818.17,0
     >> Tötet Ergrauter Distelbärs. Plündert sie für Ergrauter Skalp
    .complete 1003,1 --Grizzled Scalp (4)
step
    .goto 1439/1,89.14,5002.00
>>Sprecht mit |cRXP_FRIENDLY_Onu|r
    .turnin 948 >> Gebt die Quest Onu ab
.target Onu
    .accept 944 >> Akzeptiert die Quest Die Meistergleve
step
    #completewith next
    .goto 1439/1,79.97,4986.72
    .vendor >> Kauft Wasser der Stufe 15 von Tiyani.
step << Human
    >>Sammelt die Überreste auf.
    .goto 1439/1,585.63,5237.370
    .accept 4728 >>Akzeptiert die Quest Gestrandete Meereskreatur
step
    #label Murkdeep
    .goto 1439/1,549.61,4990.65
    >> Tötet alle Murlocs im Lager, bleibt weg vom Lagerfeuer in der Mitte.
    >> Sobald ihr alles getötet habt, geht zur Mitte des Lagers, um Gurgelbacke zu beschwören.
    >> Wenn ihr Glück habt, könnte Gurgelbacke bereits etwa 30 Meter westlich der Küste verfügbar sein (falls jemand zuvor an ihm gestorben ist)
    .complete 4740,1 --Murkdeep (1)
step
     >> Tötet Krebse an der Küste für Feine Krebsbrocken
    .complete 1138,1 --Fine Crab Chunks (6)
step
    >>Sammelt die Überreste auf.
    .goto 1439/1,799.82,4808.12
    .accept 4730 >>Akzeptiert die Quest Gestrandete Meereskreatur
step
    >>Sammelt die Überreste auf. Seid vorsichtig, da die Orakels Blitzschlag machen welcher 90 Schaden verursacht und sie sich vollheilen können, wenn ihr HP <55% HP ist.Ihr könnt den Schildkrötenkopf hier nutzen, um außer Sichtlinie zu kommen
    >>Lasst immer einen Fluchtweg offen. Gezeitenjäger der Grauflossen sind nicht so übel, aber seid euch ihrer Giftfähigkeit mit geringem Schaden bewusst.
    >>Versucht, eure Heiltränke für später zu sparen, besonders die großen.
    .goto 1439/1,865.32,4678.432
    .accept 4731 >>Akzeptiert die Quest Gestrandete Meeresschildkröte
step
    >>Der Schildkrötenpanzer auf der Insel kann hier genutzt werden, um außer Sichtlinie zu kommen
    .goto 1439/1,896.76,4597.21
    .accept 4732 >>Akzeptiert die Quest Gestrandete Meeresschildkröte
step
    >>Sammelt es am Hals auf, passt auf die 2 Mobs auf, die vom Gelände versteckt sind (ihr solltet nur 3 Mobs töten müssen, um diesen Gegenstand zu plündern).
    .goto 1439/1,892.83,4517.30
    .accept 4733 >>Akzeptiert die Quest Gestrandete Meereskreatur
step
    .goto 1439/1,602.01,4678.87
.target Prospector Remtravel
>>Sprecht mit |cRXP_FRIENDLY_Ausgrabungsleiter Remtravel|r
    .turnin 729 >> Gebt die Quest Der geistesabwesende Ausgrabungsleiter ab
step
    .goto 1439/1,602.01,4678.87
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
    .goto 1439/1,413.37,4818.17,0
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
    .goto 1439/1,433.02,4529.09
     >> BETRETET Die Meistergleve und tötet die Mobs um den Altar in der Mitte
    .complete 944,1
step
    #sticky
    #label TheryluneE
    .goto 1439/1,410.09,4519.49
.target Therylune
>>Sprecht mit |cRXP_FRIENDLY_Therylune|r
    .accept 945 >> Akzeptiert die Quest Therylunes Flucht
step
     >> Lasst die Wahrsageschale aus eurem Inventar auf den Boden fallen
    .turnin 944 >> Gebt die Quest Die Meistergleve ab
    .accept 949 >> Akzeptiert die Quest Das Twilight-Lager
step
    .goto 1439/1,416.64,4576.69
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
    .goto 1439/1,493.28,4321.68,100,0
    .goto 1439/1,389.79,4836.94,100,0
    .goto 1439/1,71.46,4749.17,100,0
    .goto 1439/1,389.79,4836.94,0
     >> Tötet jede Mondpirscherpatriarch, die ihr findet, und Mondpirschermatriarchin, wenn ihr euch wohlfühlt. Plündert sie für Feiner Mondpirscherpelz. Sie teilen Spawns mit Ergrauter Distelbär.
     >> Falls ihr extrem Pech mit Spawns und Droprates habt, könnt ihr diese Quest einfach überspringen
    .complete 986,1 --Fine Moonstalker Pelt (5)
    .unitscan Moonstalker Sire;Moonstalker Matriarch
step
    .goto 1439/1,413.37,4818.170
     >> Tötet alle Ergrauter Distelbär um die südliche Dunkelküste. Plündert sie für Ergrauter Skalp
    .complete 1003,1 --Grizzled Scalp (4)
step
    .goto 1439/1,229.97,4815.55
    .turnin 1003 >> Gebt die Quest Dröhnkiste 525 ab
step
    #requires MoonstalkerP
    .goto 1439/1,89.14,5002.00
.target Onu
>>Sprecht mit |cRXP_FRIENDLY_Onu|r
    .turnin 950 >> Gebt die Quest Rückkehr zu Onu ab
step
    #completewith next
    .goto 1439/1,79.97,4987.16
    .vendor >> Kauft Essen/trinken von Tiyani, falls nötig
step
    >>Akzeptiert die Escortquest von Kerlonian. Falls er nicht da ist, überspringt diesen Schritt
    .goto 1439/1,33.47,4996.33
.target Kerlonian Evershade
>>Sprecht mit |cRXP_FRIENDLY_Kerlonian Evershade|r
    .accept 5321 >>Akzeptiert die Quest Der Schläfer ist erwacht
step
    .isOnQuest 5321
    >>Plündert die kleine graue Kiste neben Kerlonian
    .goto 1439/1,33.47,4996.33
    .complete 5321,2 --Horn of Awakening (1)
step
    .isOnQuest 5321
    .goto 1440/1,152.23,3260.72
    >>Lauft nach Süden ins Eschental. Bindet das Horn der Erweckung in euren Aktionsleisten und benutzt es bei Kerlonian, wenn er anfängt auf der Stelle zu gehen und einschläft
    .complete 5321,1 --Escort Kerlonian Evershade to Maestra's Post (1)
step
    .isOnQuest 5321
    .goto 1440/1,128.01,3305.31
.target Liladris Moonriver
>>Sprecht mit |cRXP_FRIENDLY_Liladris Moonriver|r
    .turnin 5321 >>Gebt die Quest Der Schläfer ist erwacht ab
step
    .goto 1440/1,189.71,3185.390
.target Delgren the Purifier
>>Sprich mit |cRXP_FRIENDLY_Delgren der Läuterer|r
    .turnin 967 >>Gebt die Quest Der Turm von Althalaxx ab
step
    #softcore
    >>Lauft die Straße nach Süden hinauf. Lauft zum Schrein von Aessina
    -->>Whilst you're doing this, start opening the Website Unstuck tool, and select your character. Do NOT confirm it yet though
    .goto 1440/1,394.43,2677.63
.target Therysil
>>Sprecht mit |cRXP_FRIENDLY_Therysil|r
    .turnin 945 >>Gebt die Quest Therylunes Flucht ab
step
    #hardcore
    >>Lauft die Straße nach Süden hinauf. Lauft zum Schrein von Aessina
    .goto 1440/1,394.43,2677.63
.target Therysil
>>Sprecht mit |cRXP_FRIENDLY_Therysil|r
    .turnin 945 >>Gebt die Quest Therylunes Flucht ab
step
    .hs >> Ruhestein nach Auberdine
step
    .goto 1439/1,577.77,6371.39
.target Gubber Blump
>>Sprecht mit |cRXP_FRIENDLY_Gubber Blump|r
    .turnin 1138 >>Gebt die Quest Meeresfrüchte ab
step
    .goto 1439/1,543.06,6342.130
.target Gwennyth Bly'Leggonde
>>Sprecht mit |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4730 >>Gebt die Quest Gestrandete Meereskreatur ab
    .turnin 4731 >>Gebt die Quest Gestrandete Meeresschildkröte ab
    .turnin 4732 >>Gebt die Quest Gestrandete Meeresschildkröte ab
    .turnin 4733 >>Gebt die Quest Gestrandete Meereskreatur ab
step
    .goto 1439/1,470.35,6439.07
.target Sentinel Glynda Nal'Shea
>>Sprecht mit |cRXP_FRIENDLY_Schildwache Glynda Nal'Shea|r
    .turnin 4740 >>Gebt die Quest GESUCHT: Gurgelbacke! ab
step
    .isQuestComplete 986
    >>Behaltet den nächsten Teil der Quest in eurem Questlog für den +3-Ausdauer-Umhang. Brecht die Quest ab, wenn ihr den Umhang nicht mehr braucht
    .goto 1439/1,362.93,6434.71
>>Sprecht mit |cRXP_FRIENDLY_Terenthis|r
    .turnin 986 >>Gebt die Quest Ein verirrter Meister ab
.target Terenthis
    .accept 993 >>Akzeptiert die Quest Ein verirrter Meister
step
    .goto 1439/1,489.35,6506.32
.target Archaeologist Hollee
>>Sprecht mit |cRXP_FRIENDLY_Archäologin Hollee|r
    .turnin 731 >> Gebt die Quest Der geistesabwesende Ausgrabungsleiter ab
    .isQuestComplete 731
step
    .goto 1439/1,489.35,6506.32
.target Archaeologist Hollee
>>Sprecht mit |cRXP_FRIENDLY_Archäologin Hollee|r
    .accept 741 >> Der geistesabwesende Ausgrabungsleiter annehmen
    .isQuestTurnedIn 731
step
    #completewith next
    .isOnQuest 741
    >>Lauft zum Dock zurück. Wartet auf das Boot nach Darnassus
    .goto 1439/1,555.50,6418.99,30,0
    .goto 1439/1,769.03,6579.24,40
step
    .isOnQuest 741
    .zone Teldrassil >> Nehmt das Boot nach Darnassus
step
    .isOnQuest 741
    .goto 1438/1,965.80,8781.63,30 >> Geht durch das violette Portal
step
    .isOnQuest 741
    .goto 1457/1,2607.74,9642.04
>>Sprecht mit |cRXP_FRIENDLY_Chefarchäologe Greywhisker|r
    .turnin 741 >>Gebt die Quest Der geistesabwesende Ausgrabungsleiter ab
.target Chief Archaeologist Greywhisker
    .accept 942 >>Der geistesabwesende Ausgrabungsleiter annehmen
step
    .goto 1438/1,841.05,8641.122
    .fp Teldrassil >> Erlernt die Flugroute nach Teldrassil
    .fly Auberdine >> Fliege nach Auberdine
step
    .goto 1439/1,818.16,6422.92,50,0
    .zone Wetlands >> Nehmt das Boot nach Menethil
step
    #completewith next
    .money <0.08
    .goto 1437/0,-819.67,-3691.42,15,0
    .goto 1437/0,-807.26,-3716.22,15,0
    .goto 1437/0,-827.94,-3724.49,15,0
    .goto 1437,10.760,56.721
    >> Falls ihr 8s habt, überprüft ob Neal Allen eine Bronzeröhre hat und kauft sie, falls sie vorhanden ist. Anderenfalls überspringt diesen Schritt
    .collect 4371,1,175,1
step
    .goto 1437/0,-782.03,-3793.12
    .fly Ironforge >> Fliege nach Eisenschmiede
step << skip --logout skip
    #completewith next
    .goto 1455/0,-1158.16,-4816.32,0
    +Führt einen Logout-Skip durch, indem ihr auf einen der Greif-Köpfe springt, euch abmeldet und dann wieder anmeldet
    .link https://www.youtube.com/watch?v=PWMJhodh6Bw >> KLICKT HIER
step
    .zone Stormwind City >> Nehmt die Straßenbahn nach Sturmwind
step
    #completewith FlyAndy
    .goto 1453/0,638.8,-8341.95
    .vendor >> Kauft eine Bronzeröhre, falls ihr sie noch nicht habt
    >>Dies ist ein Gegenstand mit begrenztem Bestand, überspringt diesen Schritt, falls der NPC ihn nicht hat
    .bronzetube
step << Human
    #label FlyAndy
    .goto 1429/0,409.13,-9100.58
    .zone Elwynn Forest >> Reist in den Wald von Elwynn
step << Gnome
    .goto 1429/0,622.93,-8830.700
    .zone Stormwind City >> Lauf nach Sturmwind
step << Gnome
    #label FlyAndy
    >>Lauft nach Sturmwind und erlernt die Flugroute
    .goto 1453/0,606.4,-8812.0,50,0
    .goto 1453/0,490.12,-8835.76
    .fp Stormwind City >> Holt euch den Flugpunkt in Sturmwind
step << Gnome
    .goto 1453/0,493.08,-8867.22,12,0
    .goto 1453/0,507.6,-8885.59,18 >> Lass dich auf den kleinen Vorsprung fallen, indem du gegen die weiße Wand läufst. Seid vorsichtig. Lauft entlang davon zum Ausgang von Sturmwind
step
    >> Lauft nach oben in das Gasthaus von Goldhain
    .goto 1429/0,44.00,-9459.11,15,0
    .goto 1429/0,14.84,-9477.86,15,0
    .goto 1429/0,34.28,-9471.61
    .trainer >> Trainiere deine Klassenfähigkeiten
step
    .goto 1429/0,-1637.62,-9642.89,125,0
    .zone Redridge Mountains >> Lauft nach Osten bis zum Rotkammgebirge. Sortiert die Tastenbelegung auf eurem Weg, und achtet darauf, dass die Zauber angenehm in der Aktionsleisten von Euch sind
]])

RXPGuides.RegisterGuide([[
#forever
<< Alliance Mage
#name 18-21 Rotkamm Magier AoE
#version 1
#group RestedXP Forever Dungeonführer (A)
#subgroup Speedrun Guide Magier
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
    .goto 1429/0,-1902.44,-9609.56
.target Guard Parker
>>Sprecht mit |cRXP_FRIENDLY_Wache Parker|r
    .accept 244 >>Akzeptiert die Quest Eindringende Gnolle
step
    #sticky
    #label Gnolls
    .goto 1433/0,-2238.15,-9443.60
>>Sprecht mit |cRXP_FRIENDLY_Deputy Feldon|r
    .turnin 244 >>Gebt die Quest Eindringende Gnolle ab
.target Deputy Feldon
    .accept 246 >>Akzeptiert die Quest Einschätzung der Gefahr
step
    .goto 1433/0,-2234.89,-9435.060
    .fp Redridge Mountains >> Erlernt die Flugroute zum Rotkammgebirge
step
    #requires Gnolls
    .goto 1433/0,-2298.28,-9283.90
.target Marshal Marris
>>Sprecht mit |cRXP_FRIENDLY_Marshal Marris|r
    .accept 20 >>Akzeptiert die Quest Bedrohung durch die Blackrock
step
    .goto 1433/0,-2268.54,-9279.27
.target Foreman Oslow
>>Sprich mit |cRXP_FRIENDLY_Großknecht Oslow|r
    .accept 125 >>Akzeptiert die Quest Die verlorenen Werkzeuge
step
    .goto 1433/0,-2242.49,-9259.00
.target Verner Osgood
>>Sprich mit |cRXP_FRIENDLY_Verner Gutmark|r
    .accept 118 >>Akzeptiert die Quest Der Preis für Hufeisen
step
    >>Geht in das Rathaus
    .goto 1433/0,-2216.00,-9215.85
.target Bailiff Conacher
>>Sprich mit |cRXP_FRIENDLY_Büttel Conacher|r
    .accept 91 >>Das Gesetz des Solomon annehmen
step
    .goto 1433/0,-2221.87,-9218.60
    >>Geht ins Gebäude
.target Magistrate Solomon
>>Sprich mit |cRXP_FRIENDLY_Magistrat Solomon|r
    .accept 120 >>Akzeptiert die Quest Botschaft nach Sturmwind
step
    .goto 1433/0,-2172.59,-9261.02
.target Dockmaster Baren
>>Sprecht mit |cRXP_FRIENDLY_Dockmaster Baren|r
    .accept 127 >>Fischhandel annehmen
step
    .goto 1433/0,-2151.53,-9247.12
    .accept 180 >>GESUCHT: Leutnant Fangor annehmen
step
    >>Betretet Das Gasthaus
    .goto 1433/0,-2158.91,-9235.97
.target Darcy
>>Sprecht mit |cRXP_FRIENDLY_Darcy|r
    .accept 129 >>Akzeptiert die Quest Ein geschenktes Mittagessen
step
    .goto 1433/0,-2157.18,-9223.96
    .home >> Setzt euren Ruhestein in Seenhain
step
    .goto 1433/0,-2207.32,-9351.66
.target Shawn
>>Sprecht mit |cRXP_FRIENDLY_Shawn|r
    .accept 3741 >>Akzeptiert die Quest Hilarys Halskette
step
    >>Schaut nach Hilarys Halskette unter Wasser. Sie befindet sich in einem braunen Stück Erde
    .goto 1433/0,-2174.32,-9386.56,90,0
    .goto 1433/0,-2147.41,-9308.08,90,0
    .goto 1433/0,-2090.96,-9373.82,90,0
    .goto 1433/0,-1986.76,-9324.30,90,0
    .goto 1433/0,-2246.40,-9359.92,90,0
    .goto 1433/0,-2309.57,-9376.28,90,0
    .goto 1433/0,-2397.70,-9363.97,90,0
    .complete 3741,1 --Hilary's Necklace (1)
step
    #completewith next
    .goto 1433/0,-1906.66,-9478.500,0
    +AoEt die Gnolle in den Lagern
step
    .goto 1433/0,-1902.54,-9609.83
>>Sprecht mit |cRXP_FRIENDLY_Wache Parker|r
    .turnin 129 >>Gebt die Quest Ein geschenktes Mittagessen ab
.target Guard Parker
    .accept 130 >>Akzeptiert die Quest Besuch im Kräuterladen
step
    .goto 1433/0,-2234.89,-9435.21
    .fly Stormwind >> Fliege nach Sturmwind
step
    >>Geht nach Sturmwind. Geht zum Waffenausbilder
   .goto 1453/0,612.99,-8796.14
   .trainer >> Erlernen 1h Schwerter und Dolche
step
    #softcore
    .goto 1453/0,660.17,-8814.51,30,0
    .goto 1453/0,638.26,-8342.31
    +Geht zum Auktionshaus. Kauft eine Bronzeröhre, falls sie bezahlbar ist
    >>Falls es hier keine gibt oder sie zu teuer ist, könnt ihr auch potentiell eine von Billibub im Zwergendistrikt kaufen
    >>Falls ihr keine finden könnt, überspringt diesen Schritt
    .bronzetube
step
    #hardcore
    .goto 1453/0,660.17,-8814.51,30,0
    .goto 1453/0,638.26,-8342.31
    .vendor >> Überprüft Billibub im Zwergendistrikt nach einer Bronzeröhre. Kauft eine, falls sie verfügbar ist
    .bronzetube
step
    .goto 1453/0,520.77,-8954.16
>>Sprecht mit |cRXP_FRIENDLY_General Marcus Jonathan|r
    .turnin 120 >>Gebt die Quest Botschaft nach Sturmwind ab
.target General Marcus Jonathan
    .accept 121 >>Akzeptiert die Quest Botschaft nach Sturmwind
step
    >>Lauft nach Goldhain
    .goto 1429/0,87.73,-9456.79
>>Sprecht mit |cRXP_FRIENDLY_Schmied Argus|r
    .turnin 118 >>Gebt die Quest Der Preis für Hufeisen ab
.target Smith Argus
    .accept 119 >>Akzeptiert die Quest Zurück zu Verner
step
    >>Lauft zur Späherkuppe
    .goto 1436/0,1045.12,-10508.80
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
    .goto 1436/0,1037.42,-10628.50
    .fp Westfall >> Erlernt die Flugroute nach Westfall << Gnome
    .fly Redridge >> Fliegt ins Rotkammgebirge
step
    #requires WFFP
    .goto 1433/0,-2243.14,-9259.43
>>Sprich mit |cRXP_FRIENDLY_Verner Gutmark|r
    .turnin 119 >>Gebt die Quest Zurück zu Verner ab
.target Verner Osgood
    .accept 122 >>Akzeptiert die Quest Bauchschuppen
    .accept 124 >>Akzeptiert die Quest Das Bellen der Gnolle
step
    >>Geht in die Burg
    .goto 1433/0,-2220.56,-9218.74
>>Sprich mit |cRXP_FRIENDLY_Magistrat Solomon|r
    .turnin 121 >>Gebt die Quest Botschaft nach Sturmwind ab
.target Magistrate Solomon
    .accept 143 >>Botschaft nach Westfall annehmen
.target Bailiff Conacher
>>Sprich mit |cRXP_FRIENDLY_Büttel Conacher|r
    .accept 91 >>Das Gesetz des Solomon annehmen
step
    >>Geht in den obersten Stock des Gasthauses
    .goto 1433/0,-2145.45,-9231.63
>>Sprecht mit |cRXP_FRIENDLY_Wiley der Schwarze|r
    .turnin 65 >>Gebt die Quest Die Bruderschaft der Defias ab
.target Wiley the Black
    .accept 132 >>Die Bruderschaft der Defias annehmen
step
    .goto 1433/0,-2205.58,-9351.52
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
    .goto 1433/0,-2211.45,-9793.71,50,0
    .goto 1433/0,-2321.94,-9776.63,50,0
    .goto 1433/0,-2513.84,-9604.61,50,0
    .goto 1433/0,-2211.45,-9793.71,50,0
    .goto 1433/0,-2321.94,-9776.63,50,0
    .goto 1433/0,-2513.84,-9604.61,50,0
    .complete 246,1 --Redridge Mongrel (10)
    .complete 246,2 --Redridge Poacher (6)
step
    #label Murlocs
    >>AoEt die Murlocs in der Gegend. Ihr müsst die Murlocgezeitenrufer einzeln angreifen (Blitzschlag + Welle der Heilung)
    >>Ihr könnt die Murlocküstenschläger (Ansturm) und Murlocfleischfresser AoEn (25 Schaden sofortiger Lebensraub auf Treffer-Chance). Gestaltet eure Pulls kreativ
    >>Behaltet 8 Flossen für später
    .goto 1433/0,-2630.63,-9581.16
    .complete 127,1 --Spotted Sunfish (10)
    .collect 1468,8,150,1 --Murloc Fin (8)
step
    #era/som
    >>Sammelt Zähes Kondorfleisch und Bauchschuppen in dieser Gegend. Falls ihr auf Respawns wartet, geht nach Osten, um ein paar Äxte zu holen, und kommt dann hier zurück
    .goto 1433/0,-2895.91,-9697.86
    .collect 1080,5,92,1 --Tough Condor Meat (5)
    .complete 122,1 --Underbelly Whelp Scale (6)
step
    #som
    #phase 3-6
    >>Sammelt Bauchschuppen in dieser Gegend. Falls ihr auf Respawns wartet, geht nach Osten, um ein paar Äxte zu holen, und kommt dann hier zurück
    .goto 1433/0,-2895.91,-9697.86
    .complete 122,1 --Underbelly Whelp Scale (6)
step
    >>AoEt die Orcs in der Gegend. Sammelt ihre Beute. Seid vorsichtig, da die Kundschafter der Blackrock euch netzen und die Renegat der Blackrock Schildschlag anwenden können
    >>Versucht, die Renegat der Blackrock zu vermeiden, da sie ein hohes Level haben. Zieht maximal 3 gleichzeitig. AoEn hier ist sehr hohes Risiko, mittlerer Lohn
    >>Sammelt noch nicht alle Äxte. Ihr habt eine bessere Gelegenheit, sie später zu beenden.
    .goto 1433/0,-3226.75,-9789.51,50,0
    .goto 1433/0,-3210.46,-9637.19,50,0
    .goto 1433/0,-3226.75,-9789.51,50,0
    .goto 1433/0,-3210.46,-9637.19,50,0
    .collect 3014,8 --Battleworn Axe (8)
step
    >>Geht unter Wasser. Sammelt Beute aus der grauen Kiste
    .goto 1433/0,-2472.16,-9366.72
    .complete 125,1 --Oslow's Toolbox (1)
step
    #era/som
    >>Beendet das sammeln der Geiferzahnschnauzen hier
    .goto 1433/0,-2267.02,-9596.36
    .collect 2296,5,92,1 --Great Goretusk Snout (5)
step
    .goto 1433/0,-2238.15,-9443.75
.target Deputy Feldon
>>Sprecht mit |cRXP_FRIENDLY_Deputy Feldon|r
    .turnin 246 >>Gebt die Quest Einschätzung der Gefahr ab
step
    .isQuestComplete 20
    .goto 1433/0,-2298.06,-9283.90
.target Marshal Marris
>>Sprecht mit |cRXP_FRIENDLY_Marshal Marris|r
    .turnin 20 >>Gebt die Quest Bedrohung durch die Blackrock ab
step
    .goto 1433/0,-2268.54,-9279.12
>>Sprich mit |cRXP_FRIENDLY_Großknecht Oslow|r
    .turnin 125 >>Gebt die Quest Die verlorenen Werkzeuge ab
.target Foreman Oslow
    .accept 89 >>Akzeptiert die Quest Die Immerruhbrücke
step
    .goto 1433/0,-2243.36,-9259.43
.target Verner Osgood
>>Sprich mit |cRXP_FRIENDLY_Verner Gutmark|r
    .turnin 122 >>Gebt die Quest Bauchschuppen ab
step
    #level 20
    .goto 1433/0,-2172.59,-9261.02
>>Sprecht mit |cRXP_FRIENDLY_Dockmaster Baren|r
    .turnin 127 >>Gebt die Quest Fischhandel ab
.target Dockmaster Baren
    .accept 150 >>Murlocwilderer annehmen
    .turnin 150 >>Gebt die Quest Murlocwilderer ab
step
    .goto 1433/0,-2172.59,-9261.02
.target Dockmaster Baren
>>Sprecht mit |cRXP_FRIENDLY_Dockmaster Baren|r
    .turnin 127 >>Gebt die Quest Fischhandel ab
step
    .goto 1433/0,-2045.38,-9245.82
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
    .goto 1433/0,-1910.79,-9288.97
    .complete 34,1 --Bellygrub's Tusk (1)
--N Add link
step
    .goto 1433/0,-2045.16,-9245.67
.target Martie Jainrose
>>Sprecht mit |cRXP_FRIENDLY_Martie Jainrose|r
    .turnin 34 >>Gebt die Quest Ein ungebetener Gast ab
step
    .goto 1433/0,-2031.70,-9098.71,60,0
    .goto 1433/0,-2313.26,-9149.82,60,0
    .goto 1433/0,-2430.70,-9030.51,60,0
    .goto 1433/0,-2313.26,-9149.82,60,0
    .goto 1433/0,-2031.70,-9098.71,60,0
    .goto 1433/0,-2313.26,-9149.82,60,0
    .goto 1433/0,-2430.70,-9030.51,60,0
    >>Tötet Gnolle. Plündert sie für Eisenspitze und Eisenniete
    .complete 89,1 --Iron Pike (5)
    .complete 89,2 --Iron Rivet (5)
    .complete 124,1 --Redridge Brute (10)
    .complete 124,2 --Redridge Mystic (8)
step
    #completewith next
    >>Tötet die schön zusammenstehenden Gruppen von Orks. Plündert sie, um die Äxtequest zu beenden
    >>Falls ihr nach dem töten der nahegelegenen Gruppen Pech habt, habt ihr später noch eine Gelegenheit
    .goto 1433/0,-2375.13,-9228.73,50,0
    .goto 1433/0,-2401.83,-9180.95,50,0
    .goto 1433/0,-2449.15,-9161.70,50,0
    .complete 20,1 --Blackrock Axe (10)
step
    #era/som
    #completewith next
    .goto 1433/0,-2639.97,-9149.24,150 >> Lauft zu den Spinnen
step
    #era/som
    >>Tötet Spinnen. Plündert sie für das Fleisch
    >>Seid vorsichtig, da das Gift ziemlichen Schaden verursachen kann
    >>Seid vorsichtig vor Chatter (Selten), da dieser eine 8-sekündige Betäubung hat
    .goto 1433/0,-2813.20,-9230.04
    .collect 1081,5,92,1 --Crisp Spider Meat (5)
step
    >>Beendet das Töten von Orks für die Äxte
    .goto 1433/0,-2911.11,-9195.00
    .complete 20,1 --Blackrock Axe (10)
step
    .goto 1433/0,-2298.06,-9283.90
.target Marshal Marris
>>Sprecht mit |cRXP_FRIENDLY_Marshal Marris|r
    .turnin 20 >>Gebt die Quest Bedrohung durch die Blackrock ab
step
    .goto 1433/0,-2268.76,-9279.27
.target Foreman Oslow
>>Sprich mit |cRXP_FRIENDLY_Großknecht Oslow|r
    .turnin 89 >>Gebt die Quest Die Immerruhbrücke ab
step
    .goto 1433/0,-2243.36,-9259.57
>>Sprich mit |cRXP_FRIENDLY_Verner Gutmark|r
    .turnin 124 >>Gebt die Quest Das Bellen der Gnolle ab
.target Verner Osgood
    .accept 126 >>Geheul in den Hügeln annehmen
step
    .goto 1433/0,-2158.91,-9235.97
.target Darcy
>>Sprecht mit |cRXP_FRIENDLY_Darcy|r
    .turnin 131 >>Gebt die Quest Narzissen für eine Dame ab
step
    .goto 1433/0,-2157.18,-9223.81
    .vendor >> Kauft level 15 trinken
step
    #era/som
    .goto 1433/0,-2063.61,-9212.080
    >>Verlasst das Gasthaus. Geht nach Westen und dann ins Gebäude
.target Chef Breanna
>>Sprecht mit |cRXP_FRIENDLY_Küchenchefin Breanna|r
    .accept 92 >> Akzeptiert die Quest Rotkammgulasch
    .turnin 92 >> Gebt die Quest Rotkammgulasch ab
step
    #era/som
    #completewith next
    .goto 1433/0,-2146.97,-9225.110
    +Kocht das ganze Eberfleisch, bis ihr 50 Kochkunst habt
    >>Falls ihr nicht genug Fleisch habt, farmt auf dem Weg nach Dunkelhain einige Eber
step
    .goto 1433/0,-1711.94,-9895.21,90,0
    .zone Duskwood >> Lauf zum Teufelswald
]])
