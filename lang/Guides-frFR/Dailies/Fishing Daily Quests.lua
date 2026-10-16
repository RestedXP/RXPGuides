if GetLocale() ~= "frFR" then return end
RXPGuides.RegisterGuide([[
#version 1
#group RestedXP Northrend Quêtes journalières
#subgroup Quêtes quotidiennes du Métier
#wotlk
#cata
#name Pêche

step
	.goto Dalaran,53.04,64.95
	.daily 13830,13832,13833,13834,13836, >> Parlez à |cRXP_FRIENDLY_Marcia Poursuite|r à Dalaran. Elle a 1 quête de pêche quotidienne sur 5. Acceptez celle qui est disponible.
	>>The Ghostfish -- 13830
	>>Le joyau des égouts -- 13832
	>>de Sang is Thicker -- 13833
	>>Dangereusement délicieux... -- 13834
	>>Les bras lui en tombent -- 13836
	.target Marcia Chase

-- Quest: Dangerously Delicious -- 13834
step << Alliance
	#completewith next
	>>N'oubliez pas d'acheter des bibelots à utiliser sur votre canne à pêche
	.fly Valiance Landing Camp >>Parlez à Aludane pour vous envoler vers Joug-d'Hiver -- autofly not working from dala to valiance landing camp (wg)
	.goto Dalaran,72.18,45.78,20,0
	.isOnQuest 13834
	.target Aludane
step << Horde
	#completewith next
	>>N'oubliez pas d'acheter des bibelots à utiliser sur votre canne à pêche
	.fly Warsong Camp, Wintergrasp>>Parlez à Aludane pour vous envoler vers Joug-d'Hiver -- autofly not working from dala to warsong camp (wg)
	.goto Dalaran,72.18,45.78,20,0
	.isOnQuest 13834
	.target Aludane
step
	.goto Wintergrasp,79.57,46.92,-1
	.goto Wintergrasp,79.88,41.38,-1
	.zone Wintergrasp >> Rendez-vous à Joug-d'Hiver
	.isOnQuest 13834
step << Alliance
	>>Pêchez n'importe où à Joug-d'Hiver pour obtenir |cRXP_LOOT_Terrorfish|r
	.goto Wintergrasp,71.05,36.85,-1
	.goto Wintergrasp,79.57,46.92,-1
	.goto Wintergrasp,79.88,41.38,-1
	.complete 13834,1 --Terrorfish (10)
	.isOnQuest 13834
step << Horde
	>>Pêchez n'importe où à Joug-d'Hiver pour obtenir |cRXP_LOOT_Terrorfish|r
	.goto Wintergrasp,22.62,37.33,-1
	.goto Wintergrasp,79.57,46.92,-1
	.goto Wintergrasp,79.88,41.38,-1
	.complete 13834,1 --Terrorfish (10)
	.isOnQuest 13834
step << Alliance
	#completewith next
	.fly Dalaran >>Envolez-vous vers Dalaran
	.goto Wintergrasp,71.98,30.95
	.isOnQuest 13834
step << Horde
	#completewith next
	.fly Dalaran >>Envolez-vous vers Dalaran
	.goto Wintergrasp,21.62,34.96
	.isOnQuest 13834
step
	>>Parlez à |cRXP_FRIENDLY_Marcia Poursuite|r à Dalaran
	.goto Dalaran,53.04,64.95
	.turnin 13834 >>Rendre la quête Dangereusement délicieux...
	.isQuestComplete 13834

-- Quest: The Ghostfish -- 13830
step
	#completewith next
	>>N'oubliez pas d'acheter des bibelots à utiliser sur votre canne à pêche
	.fly River's Heart >>Parlez à |cRXP_FRIENDLY_Aludane|r pour vous envoler vers Bassin de Sholazar
	.goto Dalaran,72.18,45.78,15,0
	.isOnQuest 13830
	.target Aludane
step
	.goto SholazarBasin,49.40,62.13
	.zone SholazarBasin >> Rendez-vous à Bassin de Sholazar
	.isOnQuest 13830
step
	#completewith next
	>>Pêchez le |cRXP_LOOT_Poisson-fantôme spectral|r à Le Cœur du fleuve
	.goto SholazarBasin,49.40,62.13
	.collect 45902,1 --Phantom Ghostfish (1)
	.isOnQuest 13830
step
	.use 45902 >>Mangez le |cRXP_LOOT_Poisson-fantôme spectral|r dans vos sacs
	.complete 13830,1 --Discover the Ghostfish mystery (1)
	.isOnQuest 13830
step
	#completewith next
	.fly Dalaran >>Envolez-vous vers Dalaran
	.goto SholazarBasin,50.13,61.36
	.isOnQuest 13830
step
	>>Parlez à |cRXP_FRIENDLY_Marcia Poursuite|r à Dalaran
	.goto Dalaran,53.04,64.95
	.turnin 13834 >>Rendre la quête The Ghostfish
	.isQuestComplete 13830
	.target Marcia Chase

-- Quest: Jewel Of The Sewers -- 13832
step
	>>N'oubliez pas d'acheter des bibelots à utiliser sur votre canne à pêche
	>>Descendez dans les Égouts de Dalaran. Pêchez le |cRXP_LOOT_Corroded Jewelry|r
	.goto Dalaran,35.31,45.28,10,0
	.goto 126,22.66,41.71,10,0
	.goto 126,37.06,48.02
	.complete 13832,1 --Corroded Jewelry (1)
	.isOnQuest 13832
step
	>>Parlez à |cRXP_FRIENDLY_Marcia Poursuite|r à Dalaran
	.goto 126,22.66,41.71,10,0
	.goto Dalaran,35.31,45.28,10,0
	.goto Dalaran,53.04,64.95
	.turnin 13832 >>Rendre la quête Le joyau des égouts
	.isQuestComplete 13832
	.target Marcia Chase
-- Quest: Disarmed! -- 13836
step
	>>N'oubliez pas d'acheter des bibelots à utiliser sur votre canne à pêche
	>>Pêchez le |cRXP_LOOT_Bloated Glissant Eel|r en dehors du Fort Pourpre à Dalaran
	.goto Dalaran,62.16,67.18
	.collect 45328,1 -- Bloated Slippery Eel (1)
	.isOnQuest 13836
step
	.use 45328 >>Ouvrez le |cRXP_LOOT_Bloated Glissant Eel|r dans vos sacs et ramassez le |cRXP_LOOT_Severed Armer|r
	.complete 13836,1 --Severed Arm (1)
	.isOnQuest 13836
step
	>>Parlez à |cRXP_FRIENDLY_Olisarra the Kind|r à Dalaran
	.goto Dalaran,36.58,37.33
	.turnin 13836 >>Rendre la quête Les bras lui en tombent
	.isQuestComplete 13836
	.target Olisarra the Kind

-- Quest: Blood Is Thicker -- 13833
step << Alliance
	#completewith next
	>>N'oubliez pas d'acheter des bibelots à utiliser sur votre canne à pêche
	.fly Une'pe >>Parlez à |cRXP_FRIENDLY_Aludane|r pour vous envoler vers Une'pe, Toundra Boréenne
	.goto Dalaran,72.18,45.78,20,0
	.isOnQuest 13833
	.target Aludane
step << Horde
	#completewith next
	>>N'oubliez pas d'acheter des bibelots à utiliser sur votre canne à pêche
	.fly Taunka'le >>Parlez à |cRXP_FRIENDLY_Aludane|r pour vous envoler vers Taunka'le, Toundra Boréenne
	.goto Dalaran,72.18,45.78,20,0
	.isOnQuest 13833
	.target Aludane
step
	.goto BoreanTundra,75.56,42.01
	.zone BoreanTundra >>Rendez-vous à Toundra Boréenne
	.isOnQuest 13833
step -- WIP. Currently no check for debuff. If they get debuff @ first WP then it will point to the next 2 WP's before pointing to the sea to start fishing
	>>Tuez n'importe quel |cRXP_ENEMY_animal|r à Toundra Boréenne pour recevoir le débuff [Sang d'animal]
	>>Sautez dans l'eau pour enlever le débuff, ce qui créera un |cRXP_PICK_Flaque de Sang|r
	.goto BoreanTundra,75.56,42.01,60,0
	>>Pêchez les |cRXP_LOOT_Bloodtooth Frenzys|r dans cette |cRXP_PICK_Flaque de Sang|r
	.complete 13833,1 --Bloodtooth Frenzy (5)
	.goto BoreanTundra,82.28,49.62,-1
	.goto BoreanTundra,79.22,51.61,-1
	.isOnQuest 13833
step
	#completewith next
	.fly Dalaran >>Envolez-vous vers Dalaran
	.goto BoreanTundra,78.54,51.53
	.isOnQuest 13833
step
	>>Parlez à |cRXP_FRIENDLY_Marcia Poursuite|r à Dalaran
	.goto Dalaran,53.04,64.95
	.turnin 13834 >>Rendre la quête de Sang is Thicker
	.isQuestComplete 13833
	.target Marcia Chase
step
	+Vous avez terminé les quêtes de pêche quotidiennes pour aujourd'hui
]])
