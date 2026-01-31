if GetLocale() == "zhCN" then return end
RXPGuides.RegisterGuide([[
#version 1
#group +RestedXP Northrend Daily Quests
#subgroup Faction Daily Quests
#wotlk
#cata
#name Ebon Blade Unlock Daily Quests

step
    +You have completed the Knights of the Ebon Blade Pre Quest chain. Please use the Ebon Blade Daily Quests Route guide to complete the daily quests.
	.isQuestTurnedIn 12814

step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
	>>Fly to The Skybreaker, the big Alliance ship that's flying around high up in the air
	>>Talk to Thassarian at the back left corner of the ship
    .accept 12887 >>Accept It's All Fun and Games
step << Horde
	.goto Icecrown,62.58,45.04
	>>Fly to Orgrim's Hammer, the big Horde ship that's flying around high up in the air
	>>Talk to Koltira Deathweaver in the front room of the ship
    .accept 12892 >>Accept It's All Fun and Games
step
    .goto IcecrownGlacier,44.5,21.6
	.use 41265 >> Fly to the top of the tower. Use the Eyesore Blaster in your bags on the Ocular until it dies
    .complete 12887,1 << Alliance --The Ocular has been destroyed (1)
    .complete 12892,1 << Horde --The Ocular has been destroyed (1)
step
    .goto IcecrownGlacier,44.1,24.7
	>>Fly all the way down to Baron Silver on the ground. Talk to him
    .turnin 12887 >>Turn in It's All Fun and Games << Alliance
    .turnin 12892 >>Turn in It's All Fun and Games << Horde
    .accept 12891 >>Accept I Have an Idea, But First...
step
	>>Kill Geists and loot them for their Rope, kill Abominations and loot them for their Hook, kill Cultists and loot them for their Rod, and kill Undead mobs and loot them for their Essence
    .complete 12891,1 --Cultist Rod (1)
    .goto IcecrownGlacier,43.8,24.2,40,0
    .goto IcecrownGlacier,43.6,25.1,40,0
    .goto IcecrownGlacier,43.7,25.4,40,0
    .goto IcecrownGlacier,42.5,25.1,40,0
    .goto IcecrownGlacier,42.3,26.1
    .complete 12891,3 --Geist Rope (1)
    .goto IcecrownGlacier,43.4,25.6,40,0
    .goto IcecrownGlacier,43.3,26.6,40,0
    .goto IcecrownGlacier,42.5,26.4,40,0
    .goto IcecrownGlacier,42.9,24.5
    .complete 12891,2 --Abomination Hook (1)
    .goto IcecrownGlacier,43.3,24.1,40,0
    .goto IcecrownGlacier,43.5,26.2,40,0
    .goto IcecrownGlacier,42.5,28.1,40,0
    .goto IcecrownGlacier,42.7,25.7
   .complete 12891,4 --Scourge Essence (5)
    .goto IcecrownGlacier,43.6,24.1,40,0
    .goto IcecrownGlacier,42.6,27.2,40,0
    .goto IcecrownGlacier,42.3,26.1
step
    .goto IcecrownGlacier,44.2,24.6
	>>Return to Silver
    .turnin 12891 >>Turn in I Have an Idea, But First...
    .accept 12893 >>Accept Free Your Mind
step
    .goto IcecrownGlacier,44.4,27.0
	.use 41366 >> Kill Vile. Use the Sovereign Rod on his corpse
    .complete 12893,1 --Vile turned (1)
step
    .goto IcecrownGlacier,41.8,24.5
	.use 41366 >> Kill Lady Nightswood. Use the Sovereign Rod on her corpse
    .complete 12893,2 --Lady Nightswood turned (1)
step
    .goto IcecrownGlacier,43.0,23.5,70,0
    .goto IcecrownGlacier,44.8,24.3,70,0
    .goto IcecrownGlacier,46.2,21.9,70,0
    .goto IcecrownGlacier,45.7,19.7,70,0
    .goto IcecrownGlacier,43.7,19.0,70,0
    .goto IcecrownGlacier,42.6,21.1
	.use 41366 >> Kill The Leaper. Use the Sovereign Rod on his corpse. He walks around OUTSIDE the main building on the upper floor.
    .complete 12893,3 --The Leaper turned (1)
	.unitscan The Leaper
step
	#label Freemind
    .goto IcecrownGlacier,44.2,24.7
	>>Return to Silver
    .turnin 12893 >>Turn in Free Your Mind
    .accept 12896 >>Accept If He Cannot Be Turned << Alliance
    .accept 12897 >>Accept If He Cannot Be Turned << Horde
step
    .goto IcecrownGlacier,44.7,19.8
	>> Go into the building and click the General's Weapon Rack. Be careful as this spawns an elite. Kill General Lightsbane
    .complete 12896,1 << Alliance --General Lightsbane (1)
    .complete 12897,1 << Horde --General Lightsbane (1)
step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
	>>Fly back to The Skybreaker. Talk to Thassarian at the back left corner of the ship
    .turnin 12896 >>Return to the Turn in If He Cannot Be Turned
    .accept 12898 >>Accept The Shadow Vault
step << Horde
	>>Fly back to Orgrim's Hammer. Talk to Koltira Deathweaver in the front room of the ship
    .turnin 12897 >>Turn in If He Cannot Be Turned
    .accept 12899 >>Accept The Shadow Vault
step
    .goto IcecrownGlacier,42.8,24.9
	>>Return to Baron Silver
	.turnin 12898 >>Turn in The Shadow Vault << Alliance
    .turnin 12899 >>Turn in The Shadow Vault << Horde
    .accept 12938 >>Accept The Duke
step
	#completewith next
    .goto IcecrownGlacier,43.7,24.4
    .fp The Shadow Vault >> Get the The Shadow Vault flight path
step
    .goto IcecrownGlacier,44.7,20.3
	>>Go inside the building. Talk to Lankral
    .turnin 12938 >>Turn in The Duke
    .accept 12939 >>Accept Honor Challenge
step
    .goto Icecrown,43.60,25.13
	>>Speak with The Leaper, he walks around the tent
    .accept 12955 >>Accept Eliminate the Competition
step
    .goto IcecrownGlacier,37.5,24.7,0,0
	#sticky
	#label mjordincombat
	.use 41372 >> Use the Challenge Flag on the Mjordin Combatant from far away. You can challenge multiple Combatants at once as long as you stay out of combat (but only 1 mob per duo of 2)
    .complete 12939,1 --Mjordin Combatants challenged and defeated (6)
step
	>>Fly to the Savage Ledge
	>>Talk to Tinky, Sigrid, Onu'zun and Efrem at the Savage Ledge. Defeat them
    .complete 12955,4 --Tinky Wickwhistle defeated (1)
    .goto IcecrownGlacier,36.1,23.6
    .complete 12955,1 --Sigrid Iceborn defeated (1)
    .goto IcecrownGlacier,37.1,22.4
    .complete 12955,3 --Onu'zun defeated (1)
    .goto IcecrownGlacier,37.9,22.9
    .complete 12955,2 --Efrem the Faithful defeated (1)
    .goto IcecrownGlacier,37.9,25.1
	.skipgossip
step
    .goto IcecrownGlacier,43.5,25.0
	>>Return to The Leaper
    .turnin 12955 >>Turn in Eliminate the Competition
step
    .goto IcecrownGlacier,44.7,20.3
	>>Go inside the building. Talk to Lankral
    .turnin 12939 >>Turn in Honor Challenge
    .accept 12943 >>Accept Shadow Vault Decree
step
	#completewith next
    .goto IcecrownGlacier,39.01,23.99,25 >> The Path to Ufrang's Hall start here
step
    .goto IcecrownGlacier,41.0,23.9
	>> Go back to the Savage Ledge and then go inside Ufrang's Hall. Talk to Vaelen who is chained up inside
    .accept 12949 >>Accept Get the Key
step
    .goto IcecrownGlacier,40.3,23.9
	.use 41776 >> Use the Shadow Vault Decree in your bags in front of Thane. Kill him.
    .complete 12943,1 --Thane Ufrang the Mighty (1)
step
    .goto IcecrownGlacier,37.7,23.9,70,0
    .goto IcecrownGlacier,36.7,23.7
	>>Go back outside to the Savage Ledge. Kill Instructor Hroegar who is patrolling around. Loot him for his key
    .complete 12949,1 --Key to Vaelen's Chains (1)
	.unitscan Instructor Hroegar
step
    .goto IcecrownGlacier,41.0,23.9
	>>Go back inside Ufrang's hall. Return to Vaelen
    .turnin 12949 >>Turn in Get the Key
    .accept 12951 >>Accept Let the Baron Know
step
    .goto IcecrownGlacier,39.01,23.99,25,0
    .goto IcecrownGlacier,42.9,24.9
	>>Exit the Hall. Return to Baron Silver
    .turnin 12951 >>Turn in Let the Baron Know
    .daily 12995 >>Accept Leave Our Mark
    .accept 13085 >>Accept Vaelen Has Returned
step
    .goto IcecrownGlacier,43.6,24.1,60,0
    .goto IcecrownGlacier,42.7,26.8
	>>Talk to Vile patrolling along the main road
    .accept 12992 >>Accept Crush Dem Vrykuls!
step
    .goto IcecrownGlacier,43.8,23.3,30,0
    .goto IcecrownGlacier,43.1,21.1
	>> Go inside the building. Talk to Vaelen inside on the left
    .turnin 13085 >>Turn in Vaelen Has Returned
    .accept 12982 >>Accept Ebon Blade Prisoners
step
    .goto IcecrownGlacier,44.7,20.4
	>>Talk to Lankral
    .turnin 12943 >>Turn in Shadow Vault Decreestep
    .accept 13084 >>Accept Vandalizing Jotunheim
step
    .goto IcecrownGlacier,29.5,43.4,50,0
    .goto IcecrownGlacier,29.6,45.7,50,0
    .goto IcecrownGlacier,27.9,45.8,50,0
    .goto IcecrownGlacier,27.8,40.2,50,0
    .goto IcecrownGlacier,28.3,38.0,50,0
    .goto IcecrownGlacier,29.0,35.1,50,0
    .goto IcecrownGlacier,34.1,28.7,50,0
    .goto IcecrownGlacier,29.5,43.4
	.use 42480 >>Kill Vrykul in the area and loot them for their cage keys. Use the Ebon Blade Banner in your bags on their corpses. Click any Keys looted on the cages found throughout Jotenheim
	>>Burn the Banners found throughout Jotenheim
	.collect 42422,8,12982,1,-1 --Jotunheim Cage Key (8)
    .complete 12982,1 --Ebon Blade Prisoners set free (8)
    .complete -12995,1 --Ebon Blade Banner planted near Vrykul corpse (0/15)
    .complete 12992,1 --Jotunheim Vrykul slain (0/15)
    .complete 13084,1 --Vrykul banners burned (10)
step
    .goto IcecrownGlacier,42.7,26.8,60,0
    .goto IcecrownGlacier,43.6,24.1
	>>Return to The Shadow Vault. Talk to Vile patrolling along the main road
    .turnin 12992 >>Turn in Crush Dem Vrykuls!
    .daily 13071 >>Accept Vile Like Fire!
step
    .goto IcecrownGlacier,43.8,23.3,30,0
    .goto IcecrownGlacier,43.1,21.1
	>> Go inside the building. Talk to Vaelen inside on the left
    .turnin 12982 >>Turn in Ebon Blade Prisoners
step
    .goto IcecrownGlacier,44.7,20.4
	>>Talk to Lankral
    .turnin 13084 >>Turn in Vandalizing Jotunheim
step
    .goto IcecrownGlacier,42.9,24.9
    >>Return to Silver
	.turnin 12995 >>Turn in Leave Our Mark
	.isQuestComplete 12995
step
    .goto IcecrownGlacier,42.9,24.9
	>>Talk to Silver
    .accept 12806 >>Accept To the Rise with all Due Haste!
step
    .goto IcecrownGlacier,43.5,25.0
	>>Speak with The Leaper, he walks around the tent
    .daily 13069 >>Accept Shoot 'Em Up
step
    .goto IcecrownGlacier,27.9,33.2
	>> Get inside one of the centrally-located Jotunheim Rapid-Fire Harpoons.
	>> Whilst inside the Harpoon, spam use "Rapid-Fire Harpoon" (3) to shoot down the Dragons
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
    .goto IcecrownGlacier,19.5,48.1
	>>Dismount the drake, then head to Death's Rise. It's a small platform located halfway between the sea level and the top of the mountain. Talk to Arete
    .turnin 12806 >>Turn in To the Rise with all Due Haste!
    .accept 12807 >>Accept The Story Thus Far...
step
    .goto IcecrownGlacier,19.5,48.1
	>>Speak to Lord-Commander Arete again
    .complete 12807,1 --Lord-Commander Arete's tale listened to. (1)
    .turnin 12807 >>Turn in The Story Thus Far...
    .accept 12810 >>Accept Blood in the Water
	.skipgossip
step
	#sticky
	#label DeathRise
    .goto IcecrownGlacier,19.3,47.8
    .fp Death's Rise >> Get the Death's Rise flight path
step
	>>Talk to Setaal
    .daily 12813 >>Accept From Their Corpses, Rise!
    .goto Icecrown,19.67,48.39
	>>Talk to Aurochs. He patrols around the middle fire
    .daily 12838 >>Accept Intelligence Gathering
    .goto IcecrownGlacier,20.1,47.5,20,0
    .goto IcecrownGlacier,20.4,47.9,20,0
    .goto IcecrownGlacier,20.1,48.4,20,0
    .goto IcecrownGlacier,19.7,47.9
	>>Optional. You can skip or complete these 2 Daily quests
step
	#requires DeathRise
    #sticky
	#label transformedcorpse
    .goto IcecrownGlacier,9.5,44.8,50,0
    .goto IcecrownGlacier,9.5,44.8,0,0
	.use 40587 >> Kill the Onslaught mobs in the area. Use Darkmender's Tincture in your bags on their corpses
    .complete 12813,1 --Scarlet Onslaught corpse transformed (10)
	.isOnQuest 12813
step
	#requires DeathRise
	>>Kill Onslaught mobs, then loot them for their keys. Use them to open chests all around the Onslaught Harbor for the Documents
	>>The chests do not have a 100% droprate for the Documents
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
	#requires transformedcorpse
	.use 40551 >> Go out in the sea about 30-90 yards from the shore, and kill Ravenous Jaws. Use the Gore Bladder in your bags on top of their corpses
    .goto IcecrownGlacier,4.8,41.5,90,0
    .goto IcecrownGlacier,4.3,35.9,90,0
    .goto IcecrownGlacier,11.7,35.6,90,0
    .goto IcecrownGlacier,13.7,42.0,90,0
    .goto IcecrownGlacier,10.3,41.5,90,0
    .goto IcecrownGlacier,4.8,41.5,90,0
    .goto IcecrownGlacier,4.3,35.9,90,0
    .goto IcecrownGlacier,11.7,35.6,90,0
    .goto IcecrownGlacier,13.7,42.0,90,0
    .goto IcecrownGlacier,10.3,41.5
    .complete 12810,1 --Blood collected from Ravenous Jaws (10)
step
	>>Return to Death's Rise. Talk to Arete
    .turnin 12810 >>Turn in Blood in the Water
    .accept 12814 >>Accept You'll Need a Gryphon
    .goto IcecrownGlacier,19.6,48.1
step
	>>Talk to Aurochs. He patrols around the middle fire
    .turnin -12838 >>Turn in Intelligence Gathering
    .goto IcecrownGlacier,20.1,47.5,20,0
    .goto IcecrownGlacier,20.4,47.9,20,0
    .goto IcecrownGlacier,20.1,48.4,20,0
    .goto IcecrownGlacier,19.7,47.9
	>>Talk to Setaal
    .turnin -12813 >>Turn in From Their Corpses, Rise!
    .goto IcecrownGlacier,19.7,48.4
step
    .goto IcecrownGlacier,10.4,44.1
	>> Kill Onslaught Gryphon Riders in the area. Loot them for their Onslaught Gryphon Reins
	.collect 40970,1,12814,1 --Onslaught Grpyhon Reins (1)
step
    .goto IcecrownGlacier,19.6,47.8
	>>Return to Death's Rise on your normal mount. When you get to the quest giver, use the Gryphon Reins and use "Deliver Gryphon" (1) to deliver it.
    .complete 12814,1 --Onslaught Gryphon delivered to Uzo Deathcaller (1)
	.use 40970
step
    .goto Icecrown,19.64,47.80
	>>Talk to Uzo Deathcaller
    .turnin 12814 >>Turn in You'll Need a Gryphon
    .daily 12815 >>Accept No Fly Zone
step
    .goto IcecrownGlacier,10.5,44.1,70,0
    .goto IcecrownGlacier,5.0,43.4,70,0
    .goto IcecrownGlacier,10.5,39.0,70,0
    .goto IcecrownGlacier,12.7,41.2,70,0
    .goto IcecrownGlacier,10.5,44.1
	>> Kill the Gryphon Riders in the area. Shoot them down with ranged abilities or group multiple ones of them up in the air and then fly down and kill them. If you group up many, don't let them hit you in the back or you will be dismounted.
    .complete 12815,1 --Onslaught Gryphon Rider (10)
step
	.goto Icecrown,19.64,47.80
	>>Return to Death's Rise. Talk to Uzo
    .turnin 12815 >>Turn in No Fly Zone
step
    >>Return to The Shadow Vault. Talk to The Leaper and Vile
    .turnin -13069 >>Turn in Shoot 'Em Up
	.goto IcecrownGlacier,43.5,25.0
    .turnin -13071 >>Turn in Vile Like Fire!
    .goto IcecrownGlacier,43.6,24.1,60,0
    .goto IcecrownGlacier,42.7,26.8
step
    +You have completed the Knights of the Ebon Blade Pre Quest chain. Please use the Ebon Blade Daily Quests Route guide to complete the daily quests. Note some may not be available today due to already being completed earlier
	.isQuestTurnedIn 12814
]])
