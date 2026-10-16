if GetLocale() ~= "deDE" then return end
RXPGuides.RegisterGuide([[
#version 1
#group RestedXP Northrend Täglich Quests
#subgroup Beruf Täglich Quests
#wotlk
#cata
#name Angeln

step
	.goto Dalaran,53.04,64.95
	.daily 13830,13832,13833,13834,13836, >> Sprecht mit |cRXP_FRIENDLY_Marcia Jagd|r in Dalaran. Sie hat 1 von 5 täglichen Angelquests. Akzeptiert die jeweils verfügbare
	>>The Ghostfish -- 13830
	>>Perle der Kanalisation -- 13832
	>>Blut Is Thicker -- 13833
	>>Dangerously Köstlich -- 13834
	>>Entwaffnet! -- 13836
	.target Marcia Chase

-- Quest: Dangerously Delicious -- 13834
step << Alliance
	#completewith next
	>>Erinnert euch, Nippes zu kaufen, um sie auf der Angelrute von Euch zu verwenden
	.fly Valiance Landing Camp >>Sprecht mit Aludane, um nach Tausendwinter zu fliegen -- autofly not working from dala to valiance landing camp (wg)
	.goto Dalaran,72.18,45.78,20,0
	.isOnQuest 13834
	.target Aludane
step << Horde
	#completewith next
	>>Erinnert euch, Nippes zu kaufen, um sie auf der Angelrute von Euch zu verwenden
	.fly Warsong Camp, Wintergrasp>>Sprecht mit Aludane, um nach Tausendwinter zu fliegen -- autofly not working from dala to warsong camp (wg)
	.goto Dalaran,72.18,45.78,20,0
	.isOnQuest 13834
	.target Aludane
step
	.goto Wintergrasp,79.57,46.92,-1
	.goto Wintergrasp,79.88,41.38,-1
	.zone Wintergrasp >> Reist nach Tausendwinter
	.isOnQuest 13834
step << Alliance
	>>Fischt überall in Tausendwinter nach |cRXP_LOOT_Terrorfish|r
	.goto Wintergrasp,71.05,36.85,-1
	.goto Wintergrasp,79.57,46.92,-1
	.goto Wintergrasp,79.88,41.38,-1
	.complete 13834,1 --Terrorfish (10)
	.isOnQuest 13834
step << Horde
	>>Fischt überall in Tausendwinter nach |cRXP_LOOT_Terrorfish|r
	.goto Wintergrasp,22.62,37.33,-1
	.goto Wintergrasp,79.57,46.92,-1
	.goto Wintergrasp,79.88,41.38,-1
	.complete 13834,1 --Terrorfish (10)
	.isOnQuest 13834
step << Alliance
	#completewith next
	.fly Dalaran >>Fliegt nach Dalaran
	.goto Wintergrasp,71.98,30.95
	.isOnQuest 13834
step << Horde
	#completewith next
	.fly Dalaran >>Fliegt nach Dalaran
	.goto Wintergrasp,21.62,34.96
	.isOnQuest 13834
step
	>>Sprecht mit |cRXP_FRIENDLY_Marcia Jagd|r in Dalaran
	.goto Dalaran,53.04,64.95
	.turnin 13834 >>Gebt die Quest Gefährlich köstlich ab
	.isQuestComplete 13834

-- Quest: The Ghostfish -- 13830
step
	#completewith next
	>>Erinnert euch, Nippes zu kaufen, um sie auf der Angelrute von Euch zu verwenden
	.fly River's Heart >>Sprecht mit |cRXP_FRIENDLY_Aludane|r, um nach Sholazarbecken zu fliegen
	.goto Dalaran,72.18,45.78,15,0
	.isOnQuest 13830
	.target Aludane
step
	.goto SholazarBasin,49.40,62.13
	.zone SholazarBasin >> Reist nach Sholazarbecken
	.isOnQuest 13830
step
	#completewith next
	>>Fischt den |cRXP_LOOT_Phantomgeisterfisch|r im Herz des Flusses
	.goto SholazarBasin,49.40,62.13
	.collect 45902,1 --Phantom Ghostfish (1)
	.isOnQuest 13830
step
	.use 45902 >>Esst den |cRXP_LOOT_Phantomgeisterfisch|r aus euren Taschen
	.complete 13830,1 --Discover the Ghostfish mystery (1)
	.isOnQuest 13830
step
	#completewith next
	.fly Dalaran >>Fliegt nach Dalaran
	.goto SholazarBasin,50.13,61.36
	.isOnQuest 13830
step
	>>Sprecht mit |cRXP_FRIENDLY_Marcia Jagd|r in Dalaran
	.goto Dalaran,53.04,64.95
	.turnin 13834 >>Gebt die Quest The Ghostfish ab
	.isQuestComplete 13830
	.target Marcia Chase

-- Quest: Jewel Of The Sewers -- 13832
step
	>>Erinnert euch, Nippes zu kaufen, um sie auf der Angelrute von Euch zu verwenden
	>>Geht hinunter in die Kanalisation von Dalaran. Fischt den |cRXP_LOOT_Korrodierter Schmuck|r
	.goto Dalaran,35.31,45.28,10,0
	.goto 126,22.66,41.71,10,0
	.goto 126,37.06,48.02
	.complete 13832,1 --Corroded Jewelry (1)
	.isOnQuest 13832
step
	>>Sprecht mit |cRXP_FRIENDLY_Marcia Jagd|r in Dalaran
	.goto 126,22.66,41.71,10,0
	.goto Dalaran,35.31,45.28,10,0
	.goto Dalaran,53.04,64.95
	.turnin 13832 >>Gebt die Quest Perle der Kanalisation ab
	.isQuestComplete 13832
	.target Marcia Chase
-- Quest: Disarmed! -- 13836
step
	>>Erinnert euch, Nippes zu kaufen, um sie auf der Angelrute von Euch zu verwenden
	>>Fischt den |cRXP_LOOT_Aufgeblähter-Schlüpfriger Aal|r außerhalb der Violetten Festung in Dalaran
	.goto Dalaran,62.16,67.18
	.collect 45328,1 -- Bloated Slippery Eel (1)
	.isOnQuest 13836
step
	.use 45328 >>Öffnet den |cRXP_LOOT_Aufgeblähter-Schlüpfriger Aal|r in Taschen von Euch und plündert den |cRXP_LOOT_Abgetrennter Bewaffnen|r
	.complete 13836,1 --Severed Arm (1)
	.isOnQuest 13836
step
	>>Sprecht mit |cRXP_FRIENDLY_Olisarra the Kind|r in Dalaran
	.goto Dalaran,36.58,37.33
	.turnin 13836 >>Gebt die Quest Arm dran, Arm ab! ab
	.isQuestComplete 13836
	.target Olisarra the Kind

-- Quest: Blood Is Thicker -- 13833
step << Alliance
	#completewith next
	>>Erinnert euch, Nippes zu kaufen, um sie auf der Angelrute von Euch zu verwenden
	.fly Une'pe >>Sprecht mit |cRXP_FRIENDLY_Aludane|r, um nach Une'pe, Boreanische Tundra zu fliegen
	.goto Dalaran,72.18,45.78,20,0
	.isOnQuest 13833
	.target Aludane
step << Horde
	#completewith next
	>>Erinnert euch, Nippes zu kaufen, um sie auf der Angelrute von Euch zu verwenden
	.fly Taunka'le >>Sprecht mit |cRXP_FRIENDLY_Aludane|r, um nach Taunka'le, Boreanische Tundra zu fliegen
	.goto Dalaran,72.18,45.78,20,0
	.isOnQuest 13833
	.target Aludane
step
	.goto BoreanTundra,75.56,42.01
	.zone BoreanTundra >>Reist zur Boreanischen Tundra
	.isOnQuest 13833
step -- WIP. Currently no check for debuff. If they get debuff @ first WP then it will point to the next 2 WP's before pointing to the sea to start fishing
	>>Tötet jeden |cRXP_ENEMY_Tier|r in der Boreanischen Tundra, um den [Tierblut]-Debuff zu erhalten
	>>Springt ins Wasser, um den Debuff zu entfernen, was einen |cRXP_PICK_Blutpool|r erzeugt
	.goto BoreanTundra,75.56,42.01,60,0
	>>Fischt |cRXP_LOOT_Bloodtooth Frenzys|r aus diesem |cRXP_PICK_Blutpool|r
	.complete 13833,1 --Bloodtooth Frenzy (5)
	.goto BoreanTundra,82.28,49.62,-1
	.goto BoreanTundra,79.22,51.61,-1
	.isOnQuest 13833
step
	#completewith next
	.fly Dalaran >>Fliegt nach Dalaran
	.goto BoreanTundra,78.54,51.53
	.isOnQuest 13833
step
	>>Sprecht mit |cRXP_FRIENDLY_Marcia Jagd|r in Dalaran
	.goto Dalaran,53.04,64.95
	.turnin 13834 >>Gebt die Quest Blut ist dicker als Wasser ab
	.isQuestComplete 13833
	.target Marcia Chase
step
	+Ihr habt die tägliche Angelquest für heute abgeschlossen
]])
