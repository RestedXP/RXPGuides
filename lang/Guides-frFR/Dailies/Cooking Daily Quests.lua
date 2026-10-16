if GetLocale() ~= "frFR" then return end
RXPGuides.RegisterGuide([[
#version 1
#group RestedXP Northrend Quêtes journalières
#subgroup Quêtes quotidiennes du Métier
#wotlk
#cata
#name Cuisine

step << Alliance
	.goto Dalaran,40.43,65.66
	.daily 13100,13101,13102,13103,13107 >> Parlez à |cRXP_FRIENDLY_Katherine Lee|r à l'intérieur de l'auberge. Elle a 1 sur 5 quêtes de cuisine quotidiennes. Acceptez celle qui est disponible
	>>Pain de viande aux champignons infusés
	>>Le ragoût des égouts
	>>Mustard Dogs
	>>Convention à l'Abracadabar
	>>Du fromage pour Froncelor
	.target Katherine Lee
step << Horde
	.goto Dalaran,69.96,39.05
	.daily 13112,13113,13114,13115,13116 >> Parlez à |cRXP_FRIENDLY_Awilo Lon'gomba|r à l'intérieur de l'auberge. Il a 1 sur 5 quêtes de cuisine quotidiennes. Acceptez celle qui est disponible
	>>Pain de viande aux champignons infusés
	>>Le ragoût des égouts
	>>Mustard Dogs
	>>Convention à l'Abracadabar
	>>Du fromage pour Froncelor
	.target Awilo Lon'gomba
-- Quest: Mustard Dogs!
step << Alliance
	>>Ramassez |cRXP_PICK_Wild Mustard|r dans les zones herbeuses de Dalaran
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
	>>Ramassez |cRXP_PICK_Wild Mustard|r dans les zones herbeuses de Dalaran
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
	>> Tuez les |cRXP_ENEMY_Rhinos|r dans Les pics Foudroyés pour obtenir du |cRXP_LOOT_Rhino Viande|r. Alternativement, vous pouvez acheter le |cRXP_LOOT_Rhino Viande|r ou les |cRXP_LOOT_Saucisses de rhinocéros|r directement depuis l'Hôtel des ventes à Dalaran
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
	>> Tuez les |cRXP_ENEMY_Rhinos|r dans Les pics Foudroyés pour obtenir du |cRXP_LOOT_Rhino Viande|r. Alternativement, vous pouvez acheter le |cRXP_LOOT_Rhino Viande|r ou les |cRXP_LOOT_Saucisses de rhinocéros|r directement depuis l'Hôtel des ventes à Hurlevent ou à Forgefer
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
	>> Tuez les |cRXP_ENEMY_Rhinos|r dans Les pics Foudroyés pour obtenir du |cRXP_LOOT_Rhino Viande|r. Alternativement, vous pouvez acheter le |cRXP_LOOT_Rhino Viande|r ou les |cRXP_LOOT_Saucisses de rhinocéros|r directement depuis l'Hôtel des ventes à Orgrimmar
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
	>>Utilisez votre profession de cuisine pour cuisiner 4 |cRXP_LOOT_Rhino Viande|r en 4 |cRXP_LOOT_Saucisses de rhinocéros|r
	.collect 34752,4 -- Rhino Dogs (4)
	.isOnQuest 13107
step << Horde
	.goto Dalaran,70.44,39.80
	>>Utilisez votre profession de cuisine pour cuisiner 4 |cRXP_LOOT_Rhino Viande|r en 4 |cRXP_LOOT_Saucisses de rhinocéros|r
	.collect 34752,4 -- Rhino Dogs (4)
	.isOnQuest 13116
step << Alliance
	.use 43142 >>Utilisez l'|cRXP_LOOT_Empty Pique-nique Basket|r dans vos sacs pour combiner 4 |cRXP_LOOT_Saucisses de rhinocéros|r et 4 |cRXP_LOOT_Wild Mustard|r afin de créer un |cRXP_LOOT_Mustard Chien Pique-nique Basket|r
	.complete 13107,1 --Mustard Dog Basket! (1)
	.isOnQuest 13107
step << Horde
	.use 43142 >>Utilisez l'|cRXP_LOOT_Empty Pique-nique Basket|r dans vos sacs pour combiner 4 |cRXP_LOOT_Saucisses de rhinocéros|r et 4 |cRXP_LOOT_Wild Mustard|r afin de créer un |cRXP_LOOT_Mustard Chien Pique-nique Basket|r
	.complete 13116,1 --Mustard Dog Basket! (1)
	.isOnQuest 13116
step
	>>Parlez à |cRXP_FRIENDLY_Archimage Pentarus|r sur la plateforme d'atterrissage
	.goto Dalaran,68.53,42.04
	.turnin 13107 >>Rendez la quête Mustard Dogs << Alliance
	.isQuestComplete 13107 << Alliance
	.turnin 13116 >>Rendez la quête Mustard Dogs << Horde
	.isQuestComplete 13116 << Horde
	.target Archmage Pentarus
-- Quest: Infused Mushroom Meatloaf
step << Alliance
	>>Descendez dans les Égouts de Dalaran. Ramassez les |cRXP_PICK_Infused Mushrooms|r bleus éparpillés sur le sol
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
	>>Descendez par le puits dans les Égouts de Dalaran. Ramassez les |cRXP_PICK_Infused Mushrooms|r bleus éparpillés sur le sol
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
	>> Tuez les |cRXP_ENEMY_Rhinos|r dans Les pics Foudroyés pour obtenir du |cRXP_LOOT_Chilled Viande|r. Alternativement, vous pouvez acheter du |cRXP_LOOT_Chilled Viande|r directement depuis l'Hôtel des ventes à Dalaran
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
	>> Tuez les |cRXP_ENEMY_Rhinos|r dans Les pics Foudroyés pour obtenir du |cRXP_LOOT_Chilled Viande|r. Alternativement, vous pouvez acheter du |cRXP_LOOT_Chilled Viande|r directement depuis l'Hôtel des ventes à Hurlevent ou à Forgefer
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
	>> Tuez les |cRXP_ENEMY_Rhinos|r dans Les pics Foudroyés pour obtenir du |cRXP_LOOT_Chilled Viande|r. Alternativement, vous pouvez acheter du |cRXP_LOOT_Chilled Viande|r directement depuis l'Hôtel des ventes à Orgrimmar
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
	.use 43101 >>Utilisez le |cRXP_LOOT_Meatloaf Pan|r dans vos sacs pour combiner 4 |cRXP_PICK_Infused Mushrooms|r et 2 |cRXP_LOOT_Chilled Meats|r sur un feu
	.goto Dalaran,40.20,66.98
	.complete 13100,1 --Infused Mushroom Meatloaf (1)
	.isOnQuest 13100
step << Horde
	.use 43101 >>Utilisez le |cRXP_LOOT_Meatloaf Pan|r dans vos sacs pour combiner 4 |cRXP_PICK_Infused Mushrooms|r et 2 |cRXP_LOOT_Chilled Meats|r sur un feu
	.goto Dalaran,59.46,31.33,60,0
	.goto Dalaran,70.44,39.80
	.complete 13112,1 --Infused Mushroom Meatloaf (1)
	.isOnQuest 13112
step
	>>Parlez à |cRXP_FRIENDLY_Orton Bennet|r à l'étage dans le bâtiment Curiosités & Moore
	.goto Dalaran,49.01,56.96,6,0
	.goto Dalaran,48.79,54.94,6,0
	.goto Dalaran,50.11,53.10,6,0
	.goto Dalaran,52.31,55.59
	.turnin 13100 >>Rendez la quête Pain de viande aux champignons infusés << Alliance
	.isQuestComplete 13100 << Alliance
	.turnin 13112 >>Rendez la quête Pain de viande aux champignons infusés << Horde
	.isQuestComplete 13112 << Horde
	.target Orton Bennet
-- Quest: Sewer Stew
step
	.zone CrystalsongForest >>À Dalaran, entrez dans le bâtiment de la Porte violette et cliquez sur le Cristal de la Rive violette pour vous téléporter en bas, dans la forêt du Chantecristal
	.goto Dalaran,57.32,46.55,6,0
	.goto Dalaran,55.91,46.77
	.isOnQuest 13102 << Alliance
	.isOnQuest 13114 << Horde
step
	>>Ramassez |cRXP_PICK_Crystalsong Carrots|r sur le sol
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
	>> Tuez les |cRXP_ENEMY_Rhinos|r dans Les pics Foudroyés pour obtenir du |cRXP_LOOT_Chilled Viande|r. Alternativement, vous pouvez acheter du |cRXP_LOOT_Chilled Viande|r directement depuis l'Hôtel des ventes à Dalaran
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
	>> Tuez les |cRXP_ENEMY_Rhinos|r dans Les pics Foudroyés pour obtenir du |cRXP_LOOT_Chilled Viande|r. Alternativement, vous pouvez acheter du |cRXP_LOOT_Chilled Viande|r directement depuis l'Hôtel des ventes à Hurlevent ou à Forgefer
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
	>> Tuez les |cRXP_ENEMY_Rhinos|r dans Les pics Foudroyés pour obtenir du |cRXP_LOOT_Chilled Viande|r. Alternativement, vous pouvez acheter du |cRXP_LOOT_Chilled Viande|r directement depuis l'Hôtel des ventes à Orgrimmar
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
	.use 43147 >>Utilisez le |cRXP_LOOT_Stew Cookpot|r dans vos sacs pour combiner 4 |cRXP_PICK_Crystalsong Carrots|r et 4 |cRXP_LOOT_Chilled Meats|r sur un feu
	.goto Dalaran,40.20,66.98
	.complete 13102,1 --Vegetable Stew (1)
	.isOnQuest 13102
step << Horde
	.use 43101 >>Utilisez le |cRXP_LOOT_Stew Cookpot|r dans vos sacs pour combiner 4 |cRXP_PICK_Crystalsong Carrots|r et 4 |cRXP_LOOT_Chilled Meats|r sur un feu
	.goto Dalaran,59.46,31.33,57,0
	.goto Dalaran,70.44,39.80
	.complete 13114,1 --Vegetable Stew (1)
	.isOnQuest 13114
step << Alliance
	>>Parlez à Ajay Vert dans les Égouts de Dalaran
	.goto Dalaran,35.31,45.28,10,0
	.goto 126,22.66,41.71,10,0
	.goto 126,36.30,43.97,10,0
	.goto 126,35.47,57.55
	.turnin 13102 >>Rendez la quête Le ragoût des égouts
	.isQuestComplete 13102
step << Horde
	>>Descendez par le puits dans les Égouts de Dalaran. Parlez à |cRXP_FRIENDLY_Ajay Vert|r
	.goto Dalaran,48.25,32.33,5,0
	.goto 126,35.47,57.55
	.turnin 13114 >>Rendez la quête Le ragoût des égouts
	.isQuestComplete 13114
	.target Ajay Green
-- Quest: Cheese for Glowergold
step << Alliance
	#completewith Cheese
	>>Cherchez les |cRXP_PICK_Half Complet Dalaran Wine Glasses|r. Elles sont éparpillées dans les bâtiments de Dalaran. Vérifiez à l'intérieur de l'auberge ainsi qu'à l'étage
	.goto Dalaran,43.75,63.27
	.collect 43138,6 --Half Full Dalaran Wine Glass (6)
	.isOnQuest 13103
step << Horde
	#completewith Cheese
	>>Cherchez les |cRXP_PICK_Half Complet Dalaran Wine Glasses|r. Elles sont éparpillées dans les bâtiments de Dalaran. Vérifiez à l'intérieur de l'auberge ainsi qu'à l'étage
	.goto Dalaran,69.42,31.39
	.collect 43138,6 --Half Full Dalaran Wine Glass (6)
	.isOnQuest 13115
step
	#label Cheese
	>>À Dalaran, entrez dans le bâtiment Un dernier pour la route. Butin le |cRXP_PICK_Aged Dalaran Limburger|r. Il peut apparaître aléatoirement sur une table à l'intérieur ou à l'extérieur
	.goto Dalaran,54.70,31.57
	.collect 43137,1 --Aged Dalaran Limburger (1)
	.isOnQuest 13103 << Alliance
	.isOnQuest 13115 << Horde
step
	>>Cherchez les |cRXP_PICK_Half Complet Dalaran Wine Glasses|r. Elles sont éparpillées dans les bâtiments de Dalaran. Vérifiez à l'intérieur de l'auberge ainsi qu'à l'étage
	.goto Dalaran,54.70,31.57
	.collect 43138,6 --Half Full Dalaran Wine Glass (6)
    .isOnQuest 13103 << Alliance
	.isOnQuest 13115 << Horde
step << Alliance
	.use 43139 >>Utilisez l'Vide Fromage Plateau dans vos sacs pour combiner 6 |cRXP_PICK_Half Complet Dalaran Wine Glasses|r et le |cRXP_PICK_Aged Dalaran Limburger|r afin de créer un |cRXP_LOOT_Plateau de vin et de fromages|r
	.complete 13103,1 --Wine and Cheese Platter (1)
	.isOnQuest 13103
step << Horde
	.use 43139 >>Utilisez l'Vide Fromage Plateau dans vos sacs pour combiner 6 |cRXP_PICK_Half Complet Dalaran Wine Glasses|r et le |cRXP_PICK_Aged Dalaran Limburger|r afin de créer un |cRXP_LOOT_Plateau de vin et de fromages|r
	.complete 13115,1 --Wine and Cheese Platter (1)
	.isOnQuest 13115
step
	>>Parlez à |cRXP_FRIENDLY_Ranid Glowergold|r à Dalaran
	.goto Dalaran,36.42,29.64,10,0
	.goto Dalaran,36.62,27.88
	.turnin 13103 >>Du fromage pour Froncelor << Alliance
	.isQuestComplete 13103 << Alliance
	.turnin 13115 >>Du fromage pour Froncelor << Horde
	.isQuestComplete 13115 << Horde
	.target Ranid Glowergold
-- Quest: Convention at the Legerdemain
step << Alliance
	>>À Dalaran, allez au bâtiment Un dernier pour la route. Butin le |cRXP_PICK_Jug of Wine|r. Remarquez qu'il apparaît aléatoirement et peut également apparaître à l'extérieur ainsi qu'à l'étage
	.goto Dalaran,54.00,32.26
	.complete 13101,2 --Jug of Wine (1)
	.isOnQuest 13101
step << Horde
	>>À Dalaran, allez au bâtiment Un dernier pour la route. Butin le |cRXP_PICK_Jug of Wine|r. Remarquez qu'il apparaît aléatoirement et peut également apparaître à l'extérieur ainsi qu'à l'étage
	.goto Dalaran,54.00,32.26
	.complete 13113,2 --Jug of Wine (1)
	.isOnQuest 13113
step
	#sticky
    #completewith stew
	>> Tuez les |cRXP_ENEMY_Rhinos|r dans Les pics Foudroyés pour obtenir du |cRXP_LOOT_Chilled Viande|r. Alternativement, vous pouvez acheter du |cRXP_LOOT_Chilled Viande|r ou du |cRXP_LOOT_Ragoût nordique|r directement depuis l'Hôtel des ventes à Dalaran
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
	>> Tuez les |cRXP_ENEMY_Rhinos|r dans Les pics Foudroyés pour obtenir du |cRXP_LOOT_Chilled Viande|r. Alternativement, vous pouvez acheter du |cRXP_LOOT_Chilled Viande|r ou du |cRXP_LOOT_Ragoût nordique|r directement depuis l'Hôtel des ventes à Hurlevent ou à Forgefer
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
	>> Tuez les |cRXP_ENEMY_Rhinos|r dans Les pics Foudroyés pour obtenir du |cRXP_LOOT_Chilled Viande|r. Alternativement, vous pouvez acheter du |cRXP_LOOT_Chilled Viande|r ou du |cRXP_LOOT_Ragoût nordique|r directement depuis l'Hôtel des ventes à Orgrimmar
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
	>>Pour apprendre à cuisiner le |cRXP_LOOT_Ragoût nordique|r, vous devez apporter 4 |cRXP_LOOT_Chilled Viande|r à |cRXP_FRIENDLY_Brom Brewbaster|r dans le Fjord Hurlant. Alternativement, vous pouvez acheter le |cRXP_LOOT_Ragoût nordique|r directement depuis l'Hôtel des ventes. Si vous achetez le |cRXP_LOOT_Ragoût nordique|r depuis l'Hôtel des ventes, passez cette étape
	>>Si vous terminez cette quête, vous aurez besoin d'un total de 8 Viande réfrigérée
	.collect 43013,4 -- Chilled Meat (4)
	.accept 13087 >> Acceptez la quête La cuisine du Grand Nord
	.turnin 13087 >> Rendez la quête La cuisine du Grand Nord
	.goto HowlingFjord,58.21,62.06
	.target Brom Brewbaster
step << Horde
	#completewith next
	.isQuestAvailable 13089
	.isOnQuest 13113
	>>Pour apprendre à cuisiner le |cRXP_LOOT_Ragoût nordique|r, vous devez apporter 4 |cRXP_LOOT_Chilled Viande|r à |cRXP_FRIENDLY_Thomas Kolichio|r dans le Fjord Hurlant. Alternativement, vous pouvez acheter le |cRXP_LOOT_Ragoût nordique|r directement depuis l'Hôtel des ventes. Si vous achetez le |cRXP_LOOT_Ragoût nordique|r depuis l'Hôtel des ventes, passez cette étape
	>>Si vous terminez cette quête, vous aurez besoin d'un total de 8 Viande réfrigérée
	.collect 43013,4 -- Chilled Meat (4)
	.accept 13089 >> Acceptez la quête La cuisine du Grand Nord
	.turnin 13089 >> Rendez la quête La cuisine du Grand Nord
	.goto HowlingFjord,78.61,29.48
	.target Thomas Kolichio
step << Alliance
    #label stew
	.goto Dalaran,40.20,66.98
	>>Utilisez votre profession de cuisine pour cuisiner 4 |cRXP_LOOT_Chilled Viande|r en 4 |cRXP_LOOT_Ragoût nordique|r
	.complete 13101,1 --Northern Stew (4)
	.isOnQuest 13101
step << Horde
    #label stew
	.goto Dalaran,70.44,39.80
	>>Utilisez votre profession de cuisine pour cuisiner 4 |cRXP_LOOT_Chilled Viande|r en 4 |cRXP_LOOT_Ragoût nordique|r
	.complete 13113,1 --Northern Stew (4)
	.isOnQuest 13113
step
	>>Parlez à |cRXP_FRIENDLY_Arille Azuregaze|r à Dalaran
	.goto Dalaran,48.37,37.47
	.turnin 13101 >>Convention à l'Abracadabar << Alliance
	.isQuestComplete 13101 << Alliance
	.turnin 13113 >>Convention à l'Abracadabar << Horde
	.isQuestComplete 13113 << Horde
	.target Arille Azuregaze
step
	+Vous avez terminé la quête journalière de cuisine pour aujourd'hui
]])