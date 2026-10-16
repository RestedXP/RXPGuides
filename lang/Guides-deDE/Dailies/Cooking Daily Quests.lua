if GetLocale() ~= "deDE" then return end
RXPGuides.RegisterGuide([[
#version 1
#group RestedXP Northrend Täglich Quests
#subgroup Beruf Täglich Quests
#wotlk
#cata
#name Kochkunst

step << Alliance
	.goto Dalaran,40.43,65.66
	.daily 13100,13101,13102,13103,13107 >> Sprecht mit |cRXP_FRIENDLY_Katherine Lee|r in der Taverne. Sie hat 1 von 5 täglichen Koch-Quests. Akzeptiert eine, die verfügbar ist.
	>>Energieerfüllter Pilzhackbraten
	>>Kanaleintopf
	>>Mustard Dogs
	>>Versammlung im Zauberkasten
	>>Käse für Leuchtegold
	.target Katherine Lee
step << Horde
	.goto Dalaran,69.96,39.05
	.daily 13112,13113,13114,13115,13116 >> Sprecht mit |cRXP_FRIENDLY_Awilo Lon'gomba|r in der Taverne. Er hat 1 von 5 täglichen Koch-Quests. Akzeptiert eine, die verfügbar ist.
	>>Energieerfüllter Pilzhackbraten
	>>Kanaleintopf
	>>Mustard Dogs
	>>Versammlung im Zauberkasten
	>>Käse für Leuchtegold
	.target Awilo Lon'gomba
-- Quest: Mustard Dogs!
step << Alliance
	>>Sammelt die |cRXP_PICK_Wild Mustard|r in Grasbereichen von Dalaran
	.goto Dalaran,35.78,51.51,15,0
	.goto Dalaran,33.94,58.63,15,0
	.goto Dalaran,37.05,47.56,15,0
	.goto Dalaran,31.88,32.70,15,0
	.goto Dalaran,49.95,43.88,15,0
	.goto Dalaran,52.04,46.39,15,0
	.goto Dalaran,67.71,39.70,15,0
	.goto Dalaran,68.90,48.77
	.collect 43143,4 --Wild Mustard (4)
	.isOnQuest 13107
step << Horde
	>>Sammelt die |cRXP_PICK_Wild Mustard|r in Grasbereichen von Dalaran
	.goto Dalaran,55.17,38.59,25,0
	.goto Dalaran,67.71,39.70,15,0
	.goto Dalaran,68.90,48.77,15,0
	.goto Dalaran,51.70,47.34,15,0
	.goto Dalaran,49.38,44.26,15,0
	.goto Dalaran,47.58,47.52,15,0
	.goto Dalaran,50.19,50.54,15,0
	.goto Dalaran,35.78,51.51,15,0
	.goto Dalaran,33.94,58.63,15,0
	.goto Dalaran,37.05,47.56,15,0
	.goto Dalaran,31.88,32.70
	.collect 43143,4 --Wild Mustard (4)
	.isOnQuest 13116
step
	#sticky
	>> Tötet die |cRXP_ENEMY_Rhinos|r in Sturmgipfel für das |cRXP_LOOT_Rhino Fleisch|r. Alternativ könnt ihr das |cRXP_LOOT_Rhino Fleisch|r oder die |cRXP_LOOT_Rhinowürstchen|r direkt aus dem Auktionshaus in Dalaran kaufen.
	.goto TheStormPeaks,43.26,59.11,70,0
	.goto TheStormPeaks,44.93,61.45,70,0
	.goto TheStormPeaks,45.77,57.91,70,0
	.goto TheStormPeaks,43.82,55.42,70,0
	.goto TheStormPeaks,41.79,53.43,70,0
	.goto TheStormPeaks,38.81,54.06,70,0
	.goto TheStormPeaks,38.58,59.45
	.collect 43012,4,-1 -- Rhino Meat (4)
	.skill engineering,<350,1
	.goto Dalaran,38.65,25.13,0
	.isOnQuest 13107 << Alliance
	.isOnQuest 13116 << Horde
step << Alliance
	#sticky
	>> Tötet die |cRXP_ENEMY_Rhinos|r in Sturmgipfel für das |cRXP_LOOT_Rhino Fleisch|r. Alternativ könnt ihr das |cRXP_LOOT_Rhino Fleisch|r oder die |cRXP_LOOT_Rhinowürstchen|r direkt aus dem Auktionshaus in Sturmwind oder Eisenschmiede kaufen.
	.goto TheStormPeaks,43.26,59.11,70,0
	.goto TheStormPeaks,44.93,61.45,70,0
	.goto TheStormPeaks,45.77,57.91,70,0
	.goto TheStormPeaks,43.82,55.42,70,0
	.goto TheStormPeaks,41.79,53.43,70,0
	.goto TheStormPeaks,38.81,54.06,70,0
	.goto TheStormPeaks,38.58,59.45
	.collect 43012,4,-1 -- Rhino Meat (4)
	.goto Ironforge,24.83,73.83,0
	.goto Stormwind City,60.88,70.92,0
	.skill engineering,350,1
	.isOnQuest 13107
step << Horde
	#sticky
	>> Tötet die |cRXP_ENEMY_Rhinos|r in Sturmgipfel für das |cRXP_LOOT_Rhino Fleisch|r. Alternativ könnt ihr das |cRXP_LOOT_Rhino Fleisch|r oder die |cRXP_LOOT_Rhinowürstchen|r direkt aus dem Auktionshaus in Orgrimmar kaufen.
	.goto TheStormPeaks,43.26,59.11,70,0
	.goto TheStormPeaks,44.93,61.45,70,0
	.goto TheStormPeaks,45.77,57.91,70,0
	.goto TheStormPeaks,43.82,55.42,70,0
	.goto TheStormPeaks,41.79,53.43,70,0
	.goto TheStormPeaks,38.81,54.06,70,0
	.goto TheStormPeaks,38.58,59.45
	.collect 43012,4,-1 -- Rhino Meat (4)
	.goto Orgrimmar,54.57,63.68,0
	.skill engineering,350,1
	.isOnQuest 13116
step << Alliance
	.goto Dalaran,40.20,66.98
	>>Benutzt eure Kochkunst-Fertigkeit, um 4 |cRXP_LOOT_Rhino Fleisch|r in 4 |cRXP_LOOT_Rhinowürstchen|r zu kochen.
	.collect 34752,4 -- Rhino Dogs (4)
	.isOnQuest 13107
step << Horde
	.goto Dalaran,70.44,39.80
	>>Benutzt eure Kochkunst-Fertigkeit, um 4 |cRXP_LOOT_Rhino Fleisch|r in 4 |cRXP_LOOT_Rhinowürstchen|r zu kochen.
	.collect 34752,4 -- Rhino Dogs (4)
	.isOnQuest 13116
step << Alliance
	.use 43142 >>Benutzt den |cRXP_LOOT_Empty Picknick Basket|r in euren Taschen, um 4 |cRXP_LOOT_Rhinowürstchen|r und 4 |cRXP_LOOT_Wild Mustard|r zu einem |cRXP_LOOT_Mustard Hund Picknick Basket|r zu kombinieren.
	.complete 13107,1 --Mustard Dog Basket! (1)
	.isOnQuest 13107
step << Horde
	.use 43142 >>Benutzt den |cRXP_LOOT_Empty Picknick Basket|r in euren Taschen, um 4 |cRXP_LOOT_Rhinowürstchen|r und 4 |cRXP_LOOT_Wild Mustard|r zu einem |cRXP_LOOT_Mustard Hund Picknick Basket|r zu kombinieren.
	.complete 13116,1 --Mustard Dog Basket! (1)
	.isOnQuest 13116
step
	>>Sprecht mit |cRXP_FRIENDLY_Erzmagier Pentarus|r auf der Landebrücke
	.goto Dalaran,68.53,42.04
	.turnin 13107 >>Gebt die Quest Mustard Dogs ab << Alliance
	.isQuestComplete 13107 << Alliance
	.turnin 13116 >>Gebt die Quest Mustard Dogs ab << Horde
	.isQuestComplete 13116 << Horde
	.target Archmage Pentarus
-- Quest: Infused Mushroom Meatloaf
step << Alliance
	>>Geht in die Kanalisation von Dalaran. Sammelt die blauen |cRXP_PICK_Infused Mushrooms|r, die überall auf dem Boden verstreut sind.
	.goto Dalaran,35.31,45.28,10,0
	.goto 126,22.66,41.71,10,0
	.goto 126,36.30,43.97,10,0
	.goto 126,54.12,64.98,10,0
	.goto 126,57.12,49.90,10,0
	.goto 126,45.46,47.06,10,0
	.goto 126,47.29,33.14,10,0
	.goto 126,53.79,29.20,10,0
	.goto 126,59.73,44.33
	.collect 43100,4 --Infused Mushrooms
	.isOnQuest 13100
step << Horde
	>>Springt hinab in die Kanalisation von Dalaran. Sammelt die blauen |cRXP_PICK_Infused Mushrooms|r, die überall auf dem Boden verstreut sind.
	.goto Dalaran,48.25,32.33,5,0
	.goto 126,36.30,43.97,10,0
	.goto 126,54.12,64.98,10,0
	.goto 126,57.12,49.90,10,0
	.goto 126,45.46,47.06,10,0
	.goto 126,47.29,33.14,10,0
	.goto 126,53.79,29.20,10,0
	.goto 126,59.73,44.33
	.collect 43100,4 --Infused Mushrooms (4)
	.isOnQuest 13112
step
	#sticky
	>> Tötet die |cRXP_ENEMY_Rhinos|r in Sturmgipfel für das |cRXP_LOOT_Chilled Fleisch|r. Alternativ könnt ihr das |cRXP_LOOT_Chilled Fleisch|r direkt aus dem Auktionshaus in Dalaran kaufen.
	.goto TheStormPeaks,43.26,59.11,70,0
	.goto TheStormPeaks,44.93,61.45,70,0
	.goto TheStormPeaks,45.77,57.91,70,0
	.goto TheStormPeaks,43.82,55.42,70,0
	.goto TheStormPeaks,41.79,53.43,70,0
	.goto TheStormPeaks,38.81,54.06,70,0
	.goto TheStormPeaks,38.58,59.45
	.collect 43013,2 -- Chilled Meat (2)
	.skill engineering,<350,1
	.goto Dalaran,38.65,25.13,0
	.isOnQuest 13100 << Alliance
	.isOnQuest 13112 << Horde
step << Alliance
	#sticky
	>> Tötet die |cRXP_ENEMY_Rhinos|r in Sturmgipfel für das |cRXP_LOOT_Chilled Fleisch|r. Alternativ könnt ihr das |cRXP_LOOT_Chilled Fleisch|r direkt aus dem Auktionshaus in Sturmwind oder Eisenschmiede kaufen.
	.goto TheStormPeaks,43.26,59.11,70,0
	.goto TheStormPeaks,44.93,61.45,70,0
	.goto TheStormPeaks,45.77,57.91,70,0
	.goto TheStormPeaks,43.82,55.42,70,0
	.goto TheStormPeaks,41.79,53.43,70,0
	.goto TheStormPeaks,38.81,54.06,70,0
	.goto TheStormPeaks,38.58,59.45
	.collect 43013,2 -- Chilled Meat (2)
	.goto Ironforge,24.83,73.83,0
	.goto Stormwind City,60.88,70.92,0
	.skill engineering,350,1
	.isOnQuest 13100
step << Horde
	#sticky
	>> Tötet die |cRXP_ENEMY_Rhinos|r in Sturmgipfel für das |cRXP_LOOT_Chilled Fleisch|r. Alternativ könnt ihr das |cRXP_LOOT_Chilled Fleisch|r direkt aus dem Auktionshaus in Orgrimmar kaufen.
	.goto TheStormPeaks,43.26,59.11,70,0
	.goto TheStormPeaks,44.93,61.45,70,0
	.goto TheStormPeaks,45.77,57.91,70,0
	.goto TheStormPeaks,43.82,55.42,70,0
	.goto TheStormPeaks,41.79,53.43,70,0
	.goto TheStormPeaks,38.81,54.06,70,0
	.goto TheStormPeaks,38.58,59.45
	.collect 43013,2 -- Chilled Meat (2)
	.goto Orgrimmar,54.57,63.68,0
	.skill engineering,350,1
	.isOnQuest 13112
step << Alliance
	.use 43101 >>Benutzt die |cRXP_LOOT_Meatloaf Pan|r in euren Taschen, um 4 |cRXP_PICK_Infused Mushrooms|r und 2 |cRXP_LOOT_Chilled Meats|r über einem Feuer zu kombinieren.
	.goto Dalaran,40.20,66.98
	.complete 13100,1 --Infused Mushroom Meatloaf (1)
	.isOnQuest 13100
step << Horde
	.use 43101 >>Benutzt die |cRXP_LOOT_Meatloaf Pan|r in euren Taschen, um 4 |cRXP_PICK_Infused Mushrooms|r und 2 |cRXP_LOOT_Chilled Meats|r über einem Feuer zu kombinieren.
	.goto Dalaran,59.46,31.33,60,0
	.goto Dalaran,70.44,39.80
	.complete 13112,1 --Infused Mushroom Meatloaf (1)
	.isOnQuest 13112
step
	>>Sprecht mit |cRXP_FRIENDLY_Orton Bennet|r oben im Gebäude Curiosities & Moore.
	.goto Dalaran,49.01,56.96,6,0
	.goto Dalaran,48.79,54.94,6,0
	.goto Dalaran,50.11,53.10,6,0
	.goto Dalaran,52.31,55.59
	.turnin 13100 >>Gebt die Quest Energieerfüllter Pilzhackbraten ab << Alliance
	.isQuestComplete 13100 << Alliance
	.turnin 13112 >>Gebt die Quest Energieerfüllter Pilzhackbraten ab << Horde
	.isQuestComplete 13112 << Horde
	.target Orton Bennet
-- Quest: Sewer Stew
step
	.zone CrystalsongForest >>Geht in Dalaran in das Violet Tor Gebäude und klickt den Violet Strand Kristall um euch unterhalb zu Kristallsangwald zu teleportieren
	.goto Dalaran,57.32,46.55,6,0
	.goto Dalaran,55.91,46.77
	.isOnQuest 13102 << Alliance
	.isOnQuest 13114 << Horde
step
	>>Beute |cRXP_PICK_Crystalsong Carrots|r auf dem Boden
	.goto CrystalsongForest,25.83,39.27,40,0
	.goto CrystalsongForest,28.74,42.89,40,0
	.goto CrystalsongForest,31.87,43.25,40,0
	.goto CrystalsongForest,30.69,37.48,40,0
	.goto CrystalsongForest,26.96,47.00
	.collect 43148,4 --Crystalsong Carrot (4)
	.isOnQuest 13102 << Alliance
	.isOnQuest 13114 << Horde
step
	#sticky
	>> Tötet die |cRXP_ENEMY_Rhinos|r in Sturmgipfel für das |cRXP_LOOT_Chilled Fleisch|r. Alternativ könnt ihr das |cRXP_LOOT_Chilled Fleisch|r direkt aus dem Auktionshaus in Dalaran kaufen.
	.goto TheStormPeaks,43.26,59.11,70,0
	.goto TheStormPeaks,44.93,61.45,70,0
	.goto TheStormPeaks,45.77,57.91,70,0
	.goto TheStormPeaks,43.82,55.42,70,0
	.goto TheStormPeaks,41.79,53.43,70,0
	.goto TheStormPeaks,38.81,54.06,70,0
	.goto TheStormPeaks,38.58,59.45
	.collect 43013,4 -- Chilled Meat (4)
	.skill engineering,<350,1
	.goto Dalaran,38.65,25.13,0
	.isOnQuest 13102 << Alliance
	.isOnQuest 13114 << Horde
step << Alliance
	#sticky
	>> Tötet die |cRXP_ENEMY_Rhinos|r in Sturmgipfel für das |cRXP_LOOT_Chilled Fleisch|r. Alternativ könnt ihr das |cRXP_LOOT_Chilled Fleisch|r direkt aus dem Auktionshaus in Sturmwind oder Eisenschmiede kaufen.
	.goto TheStormPeaks,43.26,59.11,70,0
	.goto TheStormPeaks,44.93,61.45,70,0
	.goto TheStormPeaks,45.77,57.91,70,0
	.goto TheStormPeaks,43.82,55.42,70,0
	.goto TheStormPeaks,41.79,53.43,70,0
	.goto TheStormPeaks,38.81,54.06,70,0
	.goto TheStormPeaks,38.58,59.45
	.collect 43013,4 -- Chilled Meat (4)
	.goto Ironforge,24.83,73.83,0
	.goto Stormwind City,60.88,70.92,0
	.skill engineering,350,1
	.isOnQuest 13102
step << Horde
	#sticky
	>> Tötet die |cRXP_ENEMY_Rhinos|r in Sturmgipfel für das |cRXP_LOOT_Chilled Fleisch|r. Alternativ könnt ihr das |cRXP_LOOT_Chilled Fleisch|r direkt aus dem Auktionshaus in Orgrimmar kaufen.
	.goto TheStormPeaks,43.26,59.11,70,0
	.goto TheStormPeaks,44.93,61.45,70,0
	.goto TheStormPeaks,45.77,57.91,70,0
	.goto TheStormPeaks,43.82,55.42,70,0
	.goto TheStormPeaks,41.79,53.43,70,0
	.goto TheStormPeaks,38.81,54.06,70,0
	.goto TheStormPeaks,38.58,59.45
	.collect 43013,4 -- Chilled Meat (4)
	.goto Orgrimmar,54.57,63.68,0
	.skill engineering,350,1
	.isOnQuest 13114
step << Alliance
	.use 43147 >>Benutzt den |cRXP_LOOT_Stew Cookpot|r in euren Taschen, um 4 |cRXP_PICK_Crystalsong Carrots|r und 4 |cRXP_LOOT_Chilled Meats|r über einem Feuer zu kombinieren.
	.goto Dalaran,40.20,66.98
	.complete 13102,1 --Vegetable Stew (1)
	.isOnQuest 13102
step << Horde
	.use 43101 >>Benutzt den |cRXP_LOOT_Stew Cookpot|r in euren Taschen, um 4 |cRXP_PICK_Crystalsong Carrots|r und 4 |cRXP_LOOT_Chilled Meats|r über einem Feuer zu kombinieren.
	.goto Dalaran,59.46,31.33,57,0
	.goto Dalaran,70.44,39.80
	.complete 13114,1 --Vegetable Stew (1)
	.isOnQuest 13114
step << Alliance
	>>Sprecht mit Ajay Grün in der Kanalisation von Dalaran
	.goto Dalaran,35.31,45.28,10,0
	.goto 126,22.66,41.71,10,0
	.goto 126,36.30,43.97,10,0
	.goto 126,35.47,57.55
	.turnin 13102 >>Gebt die Quest Kanaleintopf ab
	.isQuestComplete 13102
step << Horde
	>>Springt hinab in die Kanalisation von Dalaran. Sprecht mit |cRXP_FRIENDLY_Ajay Grün|r
	.goto Dalaran,48.25,32.33,5,0
	.goto 126,35.47,57.55
	.turnin 13114 >>Gebt die Quest Kanaleintopf ab
	.isQuestComplete 13114
	.target Ajay Green
-- Quest: Cheese for Glowergold
step << Alliance
	#completewith Cheese
	>>Sucht nach den |cRXP_PICK_Half Voll Dalaran Wine Glasses|r. Diese sind überall in den Gebäuden von Dalaran verstreut. Überprüft auch die Taverne sowie das obere Stockwerk.
	.goto Dalaran,43.75,63.27
	.collect 43138,6 --Half Full Dalaran Wine Glass (6)
	.isOnQuest 13103
step << Horde
	#completewith Cheese
	>>Sucht nach den |cRXP_PICK_Half Voll Dalaran Wine Glasses|r. Diese sind überall in den Gebäuden von Dalaran verstreut. Überprüft auch die Taverne sowie das obere Stockwerk.
	.goto Dalaran,69.42,31.39
	.collect 43138,6 --Half Full Dalaran Wine Glass (6)
	.isOnQuest 13115
step
	#label Cheese
	>>Geht in Dalaran ins Gebäude 'Noch ein Gläschen'. Sammelt den |cRXP_PICK_Aged Dalaran Limburger|r. Er kann zufällig auf einem Tisch drinnen oder draußen spawnen.
	.goto Dalaran,54.70,31.57
	.collect 43137,1 --Aged Dalaran Limburger (1)
	.isOnQuest 13103 << Alliance
	.isOnQuest 13115 << Horde
step
	>>Sucht nach den |cRXP_PICK_Half Voll Dalaran Wine Glasses|r. Diese sind überall in den Gebäuden von Dalaran verstreut. Überprüft auch die Taverne sowie das obere Stockwerk.
	.goto Dalaran,54.70,31.57
	.collect 43138,6 --Half Full Dalaran Wine Glass (6)
    .isOnQuest 13103 << Alliance
	.isOnQuest 13115 << Horde
step << Alliance
	.use 43139 >>Benutzt den Leeren Käse-Servierteller in euren Taschen, um 6 |cRXP_PICK_Half Voll Dalaran Wine Glasses|r und den |cRXP_PICK_Aged Dalaran Limburger|r zu einer |cRXP_LOOT_Wine and Käse Platter|r zu kombinieren.
	.complete 13103,1 --Wine and Cheese Platter (1)
	.isOnQuest 13103
step << Horde
	.use 43139 >>Benutzt den Leeren Käse-Servierteller in euren Taschen, um 6 |cRXP_PICK_Half Voll Dalaran Wine Glasses|r und den |cRXP_PICK_Aged Dalaran Limburger|r zu einer |cRXP_LOOT_Wine and Käse Platter|r zu kombinieren.
	.complete 13115,1 --Wine and Cheese Platter (1)
	.isOnQuest 13115
step
	>>Sprecht mit |cRXP_FRIENDLY_Ranid Glowergold|r in Dalaran
	.goto Dalaran,36.42,29.64,10,0
	.goto Dalaran,36.62,27.88
	.turnin 13103 >>Käse für Leuchtegold << Alliance
	.isQuestComplete 13103 << Alliance
	.turnin 13115 >>Käse für Leuchtegold << Horde
	.isQuestComplete 13115 << Horde
	.target Ranid Glowergold
-- Quest: Convention at the Legerdemain
step << Alliance
	>>Geht in Dalaran ins Gebäude 'Noch ein Gläschen'. Sammelt den |cRXP_PICK_Jug of Wine|r. Hinweis: Er spawnt zufällig und kann auch draußen sowie im oberen Stockwerk spawnen.
	.goto Dalaran,54.00,32.26
	.complete 13101,2 --Jug of Wine (1)
	.isOnQuest 13101
step << Horde
	>>Geht in Dalaran ins Gebäude 'Noch ein Gläschen'. Sammelt den |cRXP_PICK_Jug of Wine|r. Hinweis: Er spawnt zufällig und kann auch draußen sowie im oberen Stockwerk spawnen.
	.goto Dalaran,54.00,32.26
	.complete 13113,2 --Jug of Wine (1)
	.isOnQuest 13113
step
	#sticky
    #completewith stew
	>> Tötet die |cRXP_ENEMY_Rhinos|r in Sturmgipfel für das |cRXP_LOOT_Chilled Fleisch|r. Alternativ könnt ihr das |cRXP_LOOT_Chilled Fleisch|r oder den |cRXP_LOOT_Nordischer Eintopf|r direkt aus dem Auktionshaus in Dalaran kaufen.
	.goto TheStormPeaks,43.26,59.11,70,0
	.goto TheStormPeaks,44.93,61.45,70,0
	.goto TheStormPeaks,45.77,57.91,70,0
	.goto TheStormPeaks,43.82,55.42,70,0
	.goto TheStormPeaks,41.79,53.43,70,0
	.goto TheStormPeaks,38.81,54.06,70,0
	.goto TheStormPeaks,38.58,59.45
	.collect 43013,4,-1 -- Chilled Meat (4)
	.skill engineering,<350,1
	.goto Dalaran,38.65,25.13,0
	.isOnQuest 13101 << Alliance
	.isOnQuest 13113 << Horde
step << Alliance
	#sticky
    #completewith stew
	>> Tötet die |cRXP_ENEMY_Rhinos|r in Sturmgipfel für das |cRXP_LOOT_Chilled Fleisch|r. Alternativ könnt ihr das |cRXP_LOOT_Chilled Fleisch|r oder den |cRXP_LOOT_Nordischer Eintopf|r direkt aus dem Auktionshaus in Sturmwind oder Eisenschmiede kaufen.
	.goto TheStormPeaks,43.26,59.11,70,0
	.goto TheStormPeaks,44.93,61.45,70,0
	.goto TheStormPeaks,45.77,57.91,70,0
	.goto TheStormPeaks,43.82,55.42,70,0
	.goto TheStormPeaks,41.79,53.43,70,0
	.goto TheStormPeaks,38.81,54.06,70,0
	.goto TheStormPeaks,38.58,59.45
	.collect 43013,4,-1 -- Chilled Meat (4)
	.goto Ironforge,24.83,73.83,0
	.goto Stormwind City,60.88,70.92,0
	.skill engineering,350,1
	.isOnQuest 13101
step << Horde
	#sticky
    #completewith stew
	>> Tötet die |cRXP_ENEMY_Rhinos|r in Sturmgipfel für das |cRXP_LOOT_Chilled Fleisch|r. Alternativ könnt ihr das |cRXP_LOOT_Chilled Fleisch|r oder den |cRXP_LOOT_Nordischer Eintopf|r direkt aus dem Auktionshaus in Orgrimmar kaufen.
	.goto TheStormPeaks,43.26,59.11,70,0
	.goto TheStormPeaks,44.93,61.45,70,0
	.goto TheStormPeaks,45.77,57.91,70,0
	.goto TheStormPeaks,43.82,55.42,70,0
	.goto TheStormPeaks,41.79,53.43,70,0
	.goto TheStormPeaks,38.81,54.06,70,0
	.goto TheStormPeaks,38.58,59.45
	.collect 43013,4,-1 -- Chilled Meat (4)
	.goto Orgrimmar,54.57,63.68,0
	.skill engineering,350,1
	.isOnQuest 13113
step << Alliance
	#completewith next
	.isQuestAvailable 13087
	.isOnQuest 13101
	>>Um zu lernen, wie man |cRXP_LOOT_Nordischer Eintopf|r kocht, müsst ihr 4 |cRXP_LOOT_Chilled Fleisch|r zu |cRXP_FRIENDLY_Brom Brewbaster|r in Heulender Fjord bringen. Alternativ könnt ihr |cRXP_LOOT_Nordischer Eintopf|r direkt aus dem Auktionshaus kaufen. Falls ihr |cRXP_LOOT_Nordischer Eintopf|r aus dem Auktionshaus kauft, überspringt diesen Schritt.
	>>Wenn ihr diese Quest erledigt, benötigt ihr insgesamt 8 Gekühltes Fleisch.
	.collect 43013,4 -- Chilled Meat (4)
	.accept 13087 >> Akzeptiert die Quest Kochkunst des Nordens.
	.turnin 13087 >> Gebt die Quest Kochkunst des Nordens ab.
	.goto HowlingFjord,58.21,62.06
	.target Brom Brewbaster
step << Horde
	#completewith next
	.isQuestAvailable 13089
	.isOnQuest 13113
	>>Um zu lernen, wie man |cRXP_LOOT_Nordischer Eintopf|r kocht, müsst ihr 4 |cRXP_LOOT_Chilled Fleisch|r zu |cRXP_FRIENDLY_Thomas Kolichio|r in Heulender Fjord bringen. Alternativ könnt ihr |cRXP_LOOT_Nordischer Eintopf|r direkt aus dem Auktionshaus kaufen. Falls ihr |cRXP_LOOT_Nordischer Eintopf|r aus dem Auktionshaus kauft, überspringt diesen Schritt.
	>>Wenn ihr diese Quest erledigt, benötigt ihr insgesamt 8 Gekühltes Fleisch.
	.collect 43013,4 -- Chilled Meat (4)
	.accept 13089 >> Akzeptiert die Quest Kochkunst des Nordens.
	.turnin 13089 >> Gebt die Quest Kochkunst des Nordens ab.
	.goto HowlingFjord,78.61,29.48
	.target Thomas Kolichio
step << Alliance
    #label stew
	.goto Dalaran,40.20,66.98
	>>Benutzt eure Kochkunst-Fertigkeit, um 4 |cRXP_LOOT_Chilled Fleisch|r in 4 |cRXP_LOOT_Nordischer Eintopf|r zu kochen.
	.complete 13101,1 --Northern Stew (4)
	.isOnQuest 13101
step << Horde
    #label stew
	.goto Dalaran,70.44,39.80
	>>Benutzt eure Kochkunst-Fertigkeit, um 4 |cRXP_LOOT_Chilled Fleisch|r in 4 |cRXP_LOOT_Nordischer Eintopf|r zu kochen.
	.complete 13113,1 --Northern Stew (4)
	.isOnQuest 13113
step
	>>Sprecht mit |cRXP_FRIENDLY_Arille Azuregaze|r in Dalaran
	.goto Dalaran,48.37,37.47
	.turnin 13101 >>Versammlung im Zauberkasten << Alliance
	.isQuestComplete 13101 << Alliance
	.turnin 13113 >>Versammlung im Zauberkasten << Horde
	.isQuestComplete 13113 << Horde
	.target Arille Azuregaze
step
	+Ihr habt die heutige tägliche Kochkunst-Quest abgeschlossen.
]])