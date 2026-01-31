if GetLocale() == "zhCN" then return end
RXPGuides.RegisterGuide([[
#version 1
#group +RestedXP Northrend Daily Quests
#subgroup Profession Daily Quests
#wotlk
#cata
#name Cooking

step << Alliance
	.goto Dalaran,40.43,65.66
	.daily 13100,13101,13102,13103,13107 >> Talk to Katherine Lee inside the inn. She has 1 out of 5 daily Cooking quests. Accept whichever is available
	>>Infused Mushroom Meatloaf
	>>Sewer Stew
	>>Mustard Dogs
	>>Convention at the Legerdemain
	>>Cheese for Glowergold
step << Horde
	.goto Dalaran,69.96,39.05
	.daily 13112,13113,13114,13115,13116 >> Talk to Awilo Lon'gomba inside the inn. He has 1 out of 5 daily cooking quests. Accept whichever is available
	>>Infused Mushroom Meatloaf
	>>Sewer Stew
	>>Mustard Dogs
	>>Convention at the Legerdemain
	>>Cheese for Glowergold

-- Quest: Mustard Dogs!
step << Alliance
	>>Loot Wild Mustard in grassy areas of Dalaran
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
	>>Loot Wild Mustard in grassy areas of Dalaran
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
	>> Kill Rhinos in The Storm Peaks for Rhino Meat. Alternatively you can buy the Rhino Meat or Rhino Dogs straight from the Auction House in Dalaran
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
	>> Kill Rhinos in The Storm Peaks for Rhino Meat. Alternatively you can buy the Rhino Meat or Rhino Dogs straight from the Auction House in Stormwind City or Ironforge
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
	>> Kill Rhinos in The Storm Peaks for Rhino Meat. Alternatively you can buy the Rhino Meat or Rhino Dogs straight from the Auction House in Orgrimmar
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
	>>Use your Cooking proffession to cook 4 Rhino Meat into 4 Rhino Dogs
	.collect 34752,4 -- Rhino Dogs (4)
	.isOnQuest 13107
step << Horde
	.goto Dalaran,70.44,39.80
	>>Use your Cooking proffession to cook 4 Rhino Meat into 4 Rhino Dogs
	.collect 34752,4 -- Rhino Dogs (4)
	.isOnQuest 13116
step << Alliance
	.use 43142 >>Use the Empty Picnic Basket in your bags to combine 4 Rhino Dogs and 4 Wild Mustard to create a Mustard Dog Picnic Basket
	.complete 13107,1 --Mustard Dog Basket! (1)
	.isOnQuest 13107
step << Horde
	.use 43142 >>Use the Empty Picnic Basket in your bags to combine 4 Rhino Dogs and 4 Wild Mustard to create a Mustard Dog Picnic Basket
	.complete 13116,1 --Mustard Dog Basket! (1)
	.isOnQuest 13116
step
	>>Talk to Archmage Pentarus on the landing pad
	.goto Dalaran,68.53,42.04
	.turnin 13107 >>Turn in Mustard Dogs << Alliance
	.isQuestComplete 13107 << Alliance
	.turnin 13116 >>Turn in Mustard Dogs << Horde
	.isQuestComplete 13116 << Horde

-- Quest: Infused Mushroom Meatloaf
step << Alliance
	>>Go down into the Dalaran Sewers. Loot the blue Infused Mushrooms scattered around on the ground
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
	>>Drop down the well into the Dalaran Sewers. Loot the blue Infused Mushrooms scattered around on the ground
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
	>> Kill Rhinos in The Storm Peaks for Chilled Meat. Alternatively you can buy the Chilled Meat straight from the Auction House in Dalaran
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
	>> Kill Rhinos in The Storm Peaks for Chilled Meat. Alternatively you can buy the Chilled Meat straight from the Auction House in Stormwind City or Ironforge
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
	>> Kill Rhinos in The Storm Peaks for Chilled Meat. Alternatively you can buy the Chilled Meat straight from the Auction House in Orgrimmar
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
	.use 43101 >>Use the Meatloaf Pan in your bags to combine 4 Infused Mushrooms and 2 Chilled Meats over a fire
	.goto Dalaran,40.20,66.98
	.complete 13100,1 --Infused Mushroom Meatloaf (1)
	.isOnQuest 13100
step << Horde
	.use 43101 >>Use the Meatloaf Pan in your bags to combine 4 Infused Mushrooms and 2 Chilled Meats over a fire
	.goto Dalaran,59.46,31.33,60,0
	.goto Dalaran,70.44,39.80
	.complete 13112,1 --Infused Mushroom Meatloaf (1)
	.isOnQuest 13112
step
	>>Talk to Orton Bennet upstairs in the Curiosities & Moore building.
	.goto Dalaran,49.01,56.96,6,0
	.goto Dalaran,48.79,54.94,6,0
	.goto Dalaran,50.11,53.10,6,0
	.goto Dalaran,52.31,55.59
	.turnin 13100 >>Turn in Infused Mushroom Meatloaf << Alliance
	.isQuestComplete 13100 << Alliance
	.turnin 13112 >>Turn in Infused Mushroom Meatloaf << Horde
	.isQuestComplete 13112 << Horde

-- Quest: Sewer Stew
step
	.zone CrystalsongForest >>In Dalaran go into the Violet Gate building and click the Violet Strand Crystal to teleport below to Crystalsong Forest
	.goto Dalaran,57.32,46.55,6,0
	.goto Dalaran,55.91,46.77
	.isOnQuest 13102 << Alliance
	.isOnQuest 13114 << Horde
step
	>>Loot Crystalsong Carrots
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
	>> Kill Rhinos in The Storm Peaks for Chilled Meat. Alternatively you can buy the Chilled Meat straight from the Auction House in Dalaran
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
	>> Kill Rhinos in The Storm Peaks for Chilled Meat. Alternatively you can buy the Chilled Meat straight from the Auction House in Stormwind City or Ironforge
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
	>> Kill Rhinos in The Storm Peaks for Chilled Meat. Alternatively you can buy the Chilled Meat straight from the Auction House in Orgrimmar
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
	.use 43147 >>Use the Stew Cookpot in your bags to combine 4 Crystalsong Carrots and 4 Chilled Meats over a fire
	.goto Dalaran,40.20,66.98
	.complete 13102,1 --Vegetable Stew (1)
	.isOnQuest 13102
step << Horde
	.use 43101 >>Use the Stew Cookpot in your bags to combine 4 Crystalsong Carrots and 4 Chilled Meats over a fire
	.goto Dalaran,59.46,31.33,57,0
	.goto Dalaran,70.44,39.80
	.complete 13114,1 --Vegetable Stew (1)
	.isOnQuest 13114
step << Alliance
	>>Talk to Ajay Green in the Dalaran Sewers
	.goto Dalaran,35.31,45.28,10,0
	.goto 126,22.66,41.71,10,0
	.goto 126,36.30,43.97,10,0
	.goto 126,35.47,57.55
	.turnin 13102 >>Turn in Sewer Stew
	.isQuestComplete 13102
step << Horde
	>>Drop down the well into the Dalaran Sewers. Talk to Ajay Green
	.goto Dalaran,48.25,32.33,5,0
	.goto 126,35.47,57.55
	.turnin 13114 >>Turn in Sewer Stew
	.isQuestComplete 13114

-- Quest: Cheese for Glowergold
step << Alliance
	#completewith Cheese
	>>Start looking for Half Full Dalaran Wine Glasses. These are scattered throughout Dalaran buildings. Check inside of the inn as well as upstairs
	.goto Dalaran,43.75,63.27
	.collect 43138,6 --Half Full Dalaran Wine Glass (6)
	.isOnQuest 13103
step << Horde
	#completewith Cheese
	>>Start looking for Half Full Dalaran Wine Glasses. These are scattered throughout Dalaran buildings. Check inside of the inn as well as upstairs
	.goto Dalaran,69.42,31.39
	.collect 43138,6 --Half Full Dalaran Wine Glass (6)
	.isOnQuest 13115
step
	#label Cheese
	>>In Dalaran go into the One More Glass building. Loot the Aged Dalaran Limburger. It can spawn randomly on a table inside or outside
	.goto Dalaran,54.70,31.57
	.collect 43137,1 --Aged Dalaran Limburger (1)
	.isOnQuest 13103 << Alliance
	.isOnQuest 13115 << Horde
step
	>>Start looking for Half Full Dalaran Wine Glasses. These are scattered throughout Dalaran buildings. Check inside of the inn as well as upstairs
	.goto Dalaran,54.70,31.57
	.collect 43138,6 --Half Full Dalaran Wine Glass (6)
    .isOnQuest 13103 << Alliance
	.isOnQuest 13115 << Horde
step << Alliance
	.use 43139 >>Use the Empty Cheese Serving Platter in your bags to combine 6 Half Full Dalaran Wine Glasses and the Aged Dalaran Limburger to create a Wine and Cheese Platter
	.complete 13103,1 --Wine and Cheese Platter (1)
	.isOnQuest 13103
step << Horde
	.use 43139 >>Use the Empty Cheese Serving Platter in your bags to combine 6 Half Full Dalaran Wine Glasses and the Aged Dalaran Limburger to create a Wine and Cheese Platter
	.complete 13115,1 --Wine and Cheese Platter (1)
	.isOnQuest 13115
step
	>>Talk to Ranid Glowergold in Dalaran
	.goto Dalaran,36.42,29.64,10,0
	.goto Dalaran,36.62,27.88
	.turnin 13103 >>Cheese for Glowergold << Alliance
	.isQuestComplete 13103 << Alliance
	.turnin 13115 >>Cheese for Glowergold << Horde
	.isQuestComplete 13115 << Horde

-- Quest: Convention at the Legerdemain
step << Alliance
	>>In Dalaran go to the One More Glass building. Loot the Jug of Wine. Note it spawns randomly and can also spawn outside aswell as upstairs
	.goto Dalaran,54.00,32.26
	.complete 13101,2 --Jug of Wine (1)
	.isOnQuest 13101
step << Horde
	>>In Dalaran go to the One More Glass building. Loot the Jug of Wine. Note it spawns randomly and can also spawn outside aswell as upstairs
	.goto Dalaran,54.00,32.26
	.complete 13113,2 --Jug of Wine (1)
	.isOnQuest 13113
step
	#sticky
    #completewith stew
	>> Kill Rhinos in The Storm Peaks for Chilled Meat. Alternatively you can buy the Chilled Meat or Northern Stew straight from the Auction House in Dalaran
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
	>> Kill Rhinos in The Storm Peaks for Chilled Meat. Alternatively you can buy the Chilled Meat or Northern Stew straight from the Auction House in Stormwind City or Ironforge
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
	>> Kill Rhinos in The Storm Peaks for Chilled Meat. Alternatively you can buy the Chilled Meat or Northern Stew straight from the Auction House in Orgrimmar
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
	>>To learn how to cook Northern Stew you must take 4 Chilled Meat to Brom Brewbaster in Howling Fjord. Alternatively you can buy the Northern Stew straight from the Auction House. If you are buying Northern Stew from the Auction House skip this step
	>>If you are completing this quest you will need a total of 8 Chilled Meat
	.collect 43013,4 -- Chilled Meat (4)
	.accept 13087 >> Accept Northern Cooking
	.turnin 13087 >> Turn in Northern Cooking
	.goto HowlingFjord,58.21,62.06
step << Horde
	#completewith next
	.isQuestAvailable 13089
	.isOnQuest 13113
	>>To learn how to cook Northern Stew you must take 4 Chilled Meat to Thomas Kolichio in Howling Fjord. Alternatively you can buy the Northern Stew straight from the Auction House. If you are buying Northern Stew from the Auction House skip this step
	>>If you are completing this quest you will need a total of 8 Chilled Meat
	.collect 43013,4 -- Chilled Meat (4)
	.accept 13089 >> Accept Northern Cooking
	.turnin 13089 >> Turn in Northern Cooking
	.goto HowlingFjord,78.61,29.48
step << Alliance
    #label stew
	.goto Dalaran,40.20,66.98
	>>Use your Cooking proffession to cook 4 Chilled Meat into 4 Northern Stew
	.complete 13101,1 --Northern Stew (4)
	.isOnQuest 13101
step << Horde
    #label stew
	.goto Dalaran,70.44,39.80
	>>Use your Cooking proffession to cook 4 Chilled Meat into 4 Northern Stew
	.complete 13113,1 --Northern Stew (4)
	.isOnQuest 13113
step
	>>Talk to Arille Azuregaze in Dalaran
	.goto Dalaran,48.37,37.47
	.turnin 13101 >>Convention at the Legerdemain << Alliance
	.isQuestComplete 13101 << Alliance
	.turnin 13113 >>Convention at the Legerdemain << Horde
	.isQuestComplete 13113 << Horde
step
	>>You have finished the Cooking Daily Quest for today
]])
