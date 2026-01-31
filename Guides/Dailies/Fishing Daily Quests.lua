if GetLocale() == "zhCN" then return end
RXPGuides.RegisterGuide([[
#version 1
#group +RestedXP Northrend Daily Quests
#subgroup Profession Daily Quests
#wotlk
#cata
#name Fishing

step
	.goto Dalaran,53.04,64.95
	.daily 13830,13832,13833,13834,13836, >> Talk to Marcia Chase in Dalaran. She has 1 out of 5 daily Fishing quests. Accept whichever is available
	>>The Ghostfish -- 13830
	>>Jewel Of The Sewers -- 13832
	>>Blood Is Thicker -- 13833
	>>Dangerously Delicious -- 13834
	>>Disarmed! -- 13836

-- Quest: Dangerously Delicious -- 13834
step << Alliance
	#completewith next
	>>Remember to buy baubles to use on your fishing rod
	.fly Valiance Landing Camp >>Talk to Aludane to fly to Wintergrasp -- autofly not working from dala to valiance landing camp (wg)
	.goto Dalaran,72.18,45.78,20,0
	.isOnQuest 13834
step << Horde
	#completewith next
	>>Remember to buy baubles to use on your fishing rod
	.fly Warsong Camp, Wintergrasp>>Talk to Aludane to fly to Wintergrasp -- autofly not working from dala to warsong camp (wg)
	.goto Dalaran,72.18,45.78,20,0
	.isOnQuest 13834
step
	.goto Wintergrasp,79.57,46.92,-1
	.goto Wintergrasp,79.88,41.38,-1
	.zone Wintergrasp >> Travel to Wintergrasp
	.isOnQuest 13834
step << Alliance
	>>Fish anywhere in Wintergrasp for Terrorfish
	.goto Wintergrasp,71.05,36.85,-1
	.goto Wintergrasp,79.57,46.92,-1
	.goto Wintergrasp,79.88,41.38,-1
	.complete 13834,1 --Terrorfish (10)
	.isOnQuest 13834
step << Horde
	>>Fish anywhere in Wintergrasp for Terrorfish
	.goto Wintergrasp,22.62,37.33,-1
	.goto Wintergrasp,79.57,46.92,-1
	.goto Wintergrasp,79.88,41.38,-1
	.complete 13834,1 --Terrorfish (10)
	.isOnQuest 13834
step << Alliance
	#completewith next
	.fly Dalaran >>Fly to Dalaran
	.goto Wintergrasp,71.98,30.95
	.isOnQuest 13834
step << Horde
	#completewith next
	.fly Dalaran >>Fly to Dalaran
	.goto Wintergrasp,21.62,34.96
	.isOnQuest 13834
step
	>>Talk to Marcia Chase in Dalaran
	.goto Dalaran,53.04,64.95
	.turnin 13834 >>Turn in Dangerously Delicious
	.isQuestComplete 13834

-- Quest: The Ghostfish -- 13830
step
	#completewith next
	>>Remember to buy baubles to use on your fishing rod
	.fly River's Heart >>Talk to Aludane to fly to Sholazar Basin
	.goto Dalaran,72.18,45.78,15,0
	.isOnQuest 13830
step
	.goto SholazarBasin,49.40,62.13
	.zone SholazarBasin >> Travel to Sholazar Basin
	.isOnQuest 13830
step
	#completewith next
	>>Fish for the Phantom Ghostfish in River's Heart
	.goto SholazarBasin,49.40,62.13
	.collect 45902,1 --Phantom Ghostfish (1)
	.isOnQuest 13830
step
	.use 45902 >>Eat the Phantom Ghostfish in your bags
	.complete 13830,1 --Discover the Ghostfish mystery (1)
	.isOnQuest 13830
step
	#completewith next
	.fly Dalaran >>Fly to Dalaran
	.goto SholazarBasin,50.13,61.36
	.isOnQuest 13830
step
	>>Talk to Marcia Chase in Dalaran
	.goto Dalaran,53.04,64.95
	.turnin 13834 >>Turn in The Ghostfish
	.isQuestComplete 13830

-- Quest: Jewel Of The Sewers -- 13832
step
	>>Remember to buy baubles to use on your fishing rod
	>>Go down into the Dalaran Sewers. Fish for the Corroded Jewelry
	.goto Dalaran,35.31,45.28,10,0
	.goto 126,22.66,41.71,10,0
	.goto 126,37.06,48.02
	.complete 13832,1 --Corroded Jewelry (1)
	.isOnQuest 13832
step
	>>Talk to Marcia Chase in Dalaran
	.goto 126,22.66,41.71,10,0
	.goto Dalaran,35.31,45.28,10,0
	.goto Dalaran,53.04,64.95
	.turnin 13832 >>Turn in Jewel Of The Sewers
	.isQuestComplete 13832

-- Quest: Disarmed! -- 13836
step
	>>Remember to buy baubles to use on your fishing rod
	>>Fish for the Bloated Slippery Eel outside of The Violet Hold in Dalaran
	.goto Dalaran,62.16,67.18
	.collect 45328,1 -- Bloated Slippery Eel (1)
	.isOnQuest 13836
step
	.use 45328 >>Open the Bloated Slippery Eel in your bags and loot the Severed Arm
	.complete 13836,1 --Severed Arm (1)
	.isOnQuest 13836
step
	>>Talk to Olisarra the Kind in Dalaran
	.goto Dalaran,36.58,37.33
	.turnin 13836 >>Turn in Disarmed!
	.isQuestComplete 13836

-- Quest: Blood Is Thicker -- 13833
step << Alliance
	#completewith next
	>>Remember to buy baubles to use on your fishing rod
	.fly Une'pe >>Talk to Aludane to fly to Une'pe, Borean Tundra
	.goto Dalaran,72.18,45.78,20,0
	.isOnQuest 13833
step << Horde
	#completewith next
	>>Remember to buy baubles to use on your fishing rod
	.fly Taunka'le >>Talk to Aludane to fly to Taunka'le, Borean Tundra
	.goto Dalaran,72.18,45.78,20,0
	.isOnQuest 13833
step
	.goto BoreanTundra,75.56,42.01
	.zone BoreanTundra >>Travel to Borean Tundra
	.isOnQuest 13833
step -- WIP. Currently no check for debuff. If they get debuff @ first WP then it will point to the next 2 WP's before pointing to the sea to start fishing
	>>Kill any animal in Borean Tundra to receive the Animal Blood debuff on you
	>>Jump into water to remove the debuff, which will create a Pool of Blood
	.goto BoreanTundra,75.56,42.01,60,0
	>>Fish Bloodtooth Frenzys from this Pool of Blood
	.complete 13833,1 --Bloodtooth Frenzy (5)
	.goto BoreanTundra,82.28,49.62,-1
	.goto BoreanTundra,79.22,51.61,-1
	.isOnQuest 13833
step
	#completewith next
	.fly Dalaran >>Fly to Dalaran
	.goto BoreanTundra,78.54,51.53
	.isOnQuest 13833
step
	>>Talk to Marcia Chase in Dalaran
	.goto Dalaran,53.04,64.95
	.turnin 13834 >>Turn in Blood Is Thicker
	.isQuestComplete 13833
step
	+You have finished the Fishing Daily Quest for today
]])
