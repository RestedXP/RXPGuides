if GetLocale() == "zhCN" then return end
RXPGuides.RegisterGuide([[
#version 1
#group +RestedXP Northrend Daily Quests
#subgroup Faction Daily Quests
#wotlk
#cata
#name Ebon Blade Daily Quests Route

step
	+To unlock the Knights of the Ebon Blade daily quests you must first complete their quest chain in Icecrown. Please use the Ebon Blade Unlock Daily Quests guide to unlock the daily quests
	.isQuestAvailable 12814

-- 3 Quests from The Shadow Vault
step
	>>From The Shadow Vault accept the 3 daily quests
    >>Talk to Silver
	.daily 12995 >>Accept Leave Our Mark
	.goto Icecrown,42.84,24.92
	>>Talk to The Leaper. He walks around the tent
	.daily 13069 >>Accept Shoot'Em Up
	.goto IcecrownGlacier,43.5,25.0
	>>Talk to Vile, he is an abomination that patrols the path between the entrance and the main building
    .daily 13071 >>Accept Vile Like Fire!
    .goto IcecrownGlacier,42.7,26.8,60,0
    .goto IcecrownGlacier,43.6,24.1
step
    .goto IcecrownGlacier,29.5,43.4,50,0
    .goto IcecrownGlacier,29.6,45.7,50,0
    .goto IcecrownGlacier,27.9,45.8,50,0
    .goto IcecrownGlacier,27.8,40.2,50,0
    .goto IcecrownGlacier,28.3,38.0,50,0
    .goto IcecrownGlacier,29.0,35.1,50,0
    .goto IcecrownGlacier,34.1,28.7,50,0
    .goto IcecrownGlacier,29.5,43.4
	.use 42480 >>Kill Vrykul in the area. Use the Ebon Blade Banner in your bags on their corpses
    .complete 12995,1--Ebon Blade Banner planted near Vrykul corpse (15)
	.isOnQuest 12995
step
    .goto IcecrownGlacier,27.9,33.2
	>>Whilst inside the Harpoon, spam use "Rapid-Fire Harpoon" (3) to shoot down the Dragons
	.complete 13069,1 --Jotunheim Proto-Drakes & their riders shot down
	.isOnQuest 13069
step
	#completewith next
    .goto IcecrownGlacier,28.0,37.7
    .vehicle 30564 >> Right click a Njorndar Proto-Drake to mount it
	.isOnQuest 13071
step
    .goto IcecrownGlacier,27.7,41.1,70,0
    .goto IcecrownGlacier,29.2,41.0,70,0
    .goto IcecrownGlacier,29.6,39.7,70,0
    .goto IcecrownGlacier,31.5,36.9,70,0
    .goto IcecrownGlacier,32.0,39.1,70,0
    .goto IcecrownGlacier,30.8,40.2,70,0
    .goto IcecrownGlacier,32.4,40.7,70,0
    .goto IcecrownGlacier,31.5,43.9,70,0
    .goto IcecrownGlacier,30.1,43.1,70,0
    .goto IcecrownGlacier,27.7,41.1
	>>Use "Burst of Speed" (1) on cooldown to move faster. Use "Strafe Jotunheim Building" (3) to set the buildings ablaze
    .complete 13071,1 --Vrykul buildings set ablaze (8)
	.isOnQuest 13071
step
    >>Return to The Shadow Vault. Talk to Silver, The Leaper and Vile
	.turnin 12995 >>Turn in Leave Our Mark
	.goto Icecrown,42.84,24.92
    .turnin 13069 >>Turn in Shoot'Em Up
	.goto IcecrownGlacier,43.5,25.0
    .turnin 13071 >>Turn in Vile Like Fire!
    .goto IcecrownGlacier,43.6,24.1,60,0
    .goto IcecrownGlacier,42.7,26.8

-- 3 Quests from Death's Rise
step
	>>From Death's Rise accept the 3 daily quests
	>>Talk to Setaal
	.daily 12813 >>Accept From Their Corpses, Rise!
	.goto Icecrown,19.67,48.39
	>>Talk to Aurochs. He patrols around the middle fire
    .daily 12838 >>Accept Intelligence Gathering
    .goto IcecrownGlacier,20.1,47.5,20,0
    .goto IcecrownGlacier,20.4,47.9,20,0
    .goto IcecrownGlacier,20.1,48.4,20,0
    .goto IcecrownGlacier,19.7,47.9
	>>Talk to Uzo
    .daily 12815 >>Accept No Fly Zone
	.goto Icecrown,19.64,47.80
step
	#sticky
	#label Gryphon
	.goto IcecrownGlacier,10.5,44.1,70,0
    .goto IcecrownGlacier,5.0,43.4,70,0
    .goto IcecrownGlacier,10.5,39.0,70,0
    .goto IcecrownGlacier,12.7,41.2,70,0
    .goto IcecrownGlacier,10.5,44.1
	>>Kill the Gryphon Riders in the area. Shoot them down with ranged abilities or group multiple ones of them up in the air and then fly down and kill them
    .complete 12815,1 --Onslaught Gryphon Rider (10)
	.isOnQuest 12815
step
    #completewith next
	.goto IcecrownGlacier,9.5,44.8,50,0
    .goto IcecrownGlacier,9.5,44.8,0,0
	.use 40587 >> Kill the Onslaught mobs in the area. Use Darkmender's Tincture in your bags on their corpses
    .complete 12813,1 --Scarlet Onslaught corpse transformed (10)
	.isOnQuest 12813
step
	>>Kill Onslaught mobs, then loot them for their keys. Use them to open chests all around the Onslaught Harbor for the Documents
	>>The chests do not have a 100% droprate for the documents
    .goto IcecrownGlacier,10.7,45.6,40,0
    .goto IcecrownGlacier,10.3,46.4,40,0
    .goto IcecrownGlacier,8.8,46.7,40,0
    .goto IcecrownGlacier,8.8,42.2,40,0
    .goto IcecrownGlacier,10.6,42.9,40,0
    .goto IcecrownGlacier,9.6,40.6,40,0
    .goto IcecrownGlacier,9.3,37.5,40,0
    .goto IcecrownGlacier,10.1,36.2,40,0
    .goto IcecrownGlacier,9.1,36.3,40,0
    .goto IcecrownGlacier,8.5,36.4,40,0
    .goto IcecrownGlacier,10.7,45.6,40,0
    .goto IcecrownGlacier,10.3,46.4,40,0
    .goto IcecrownGlacier,8.8,46.7,40,0
    .goto IcecrownGlacier,8.8,42.2,40,0
    .goto IcecrownGlacier,10.6,42.9,40,0
    .goto IcecrownGlacier,9.6,40.6,40,0
    .goto IcecrownGlacier,9.3,37.5,40,0
    .goto IcecrownGlacier,10.1,36.2,40,0
    .goto IcecrownGlacier,9.1,36.3,40,0
    .goto IcecrownGlacier,8.5,36.4
	.collect 40652,6,12838,-1
    .complete 12838,1 --Onslaught Intel Documents (5)
	.isOnQuest 12838
step
	.goto IcecrownGlacier,9.5,44.8,50,0
    .goto IcecrownGlacier,9.5,44.8,0,0
	.use 40587 >> Kill the Onslaught mobs in the area. Use Darkmender's Tincture in your bags on their corpses
    .complete 12813,1 --Scarlet Onslaught corpse transformed (10)
	.isOnQuest 12813
step
	#requires Gryphon
	>>Return to Death's Rise. Talk to Uzo, Setaal and Aurochs
    .turnin 12815 >>Turn in No Fly Zone
    .goto Icecrown,19.64,47.80
    .turnin 12813 >>Turn in From Their Corpses, Rise!
    .goto Icecrown,19.67,48.39
    .turnin 12838 >>Turn in Intelligence Gathering
    .goto IcecrownGlacier,20.1,47.5,20,0
    .goto IcecrownGlacier,20.4,47.9,20,0
    .goto IcecrownGlacier,20.1,48.4,20,0
    .goto IcecrownGlacier,19.7,47.9
step
	+You have completed all Knights of the Ebon Blade Daily Quests for today :) Remember you can wear their Tabard while doing WotLK dungeons for extra rep!
]])
