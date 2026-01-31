if GetLocale() == "zhCN" then return end
RXPGuides.RegisterGuide([[
#version 1
#group +RestedXP Northrend Daily Quests
#subgroup Faction Daily Quests
#wotlk
#cata
#name The Sons of Hodir Unlock Daily Quests

step
    +You have completed The Sons of Hodir Pre Quest chain. Please use The Sons of Hodir Daily Quests Route guide to complete the daily quests
	.isQuestTurnedIn 13047
step
	.goto TheStormPeaks,41.15,86.14
	>>Fly over to K3
    >>Go inside the Inn. Talk to Gretchen
    .accept 12843 >>Accept They Took Our Men!
step
    .goto TheStormPeaks,40.1,73.8,70,0
    .goto TheStormPeaks,40.3,69.8,70,0
    .goto TheStormPeaks,42.2,71.0,70,0
    .goto TheStormPeaks,41.6,73.7,60,0
    .goto TheStormPeaks,40.7,72.7
	>>Fly up to Sifreldar Village
	>>Kill the Sifreldar for Cold Iron Keys. Use the keys on the Goblin Prisoner cages in the area
    .collect 40641,5,12843,1,-1
    .complete 12843,1 --Goblin Prisoner freed (5)
step
    .goto TheStormPeaks,41.15,86.14
	>>Return to K3. Talk to Gretchen inside the Inn
    .turnin 12843 >>Turn in They Took Our Men!
    .accept 12846 >>Accept Leave No Goblin Behind
step << !Human
	#completewith tribute
	>>Loot Relics of Ulduar dropped from the mobs all over The Storm Peaks. Alternatively you can buy them from the Auction House
    .collect 42780,10 --Relic of Ulduar (10)
    .reputation 1119,friendly,>0,1 -- Step only shows if rep is below friendly
step
    .goto TheStormPeaks,42.1,69.5,60,0
    .goto TheStormPeaks,42.80,68.90
	>>Enter The Forlon Mine. Talk to Lok'lira
    .turnin 12846 >>Turn in Leave No Goblin Behind
    .accept 12841 >>Accept The Crone's Bargain
step
    .goto TheStormPeaks,44.3,67.1,30,0
    .goto TheStormPeaks,44.1,70.2,30,0
    .goto TheStormPeaks,45.1,71.0
	>>Kill Overseer Syra inside The Forlon Mine. Loot her for the Runes of Yrkvinn
    .complete 12841,1 --Runes of the Yrkvinn (1)
	.unitscan Overseer Syra
step
    .goto TheStormPeaks,42.80,68.90
	>>Return to Lok'lira
    .turnin 12841 >>Turn in The Crone's Bargain
    .accept 12905 >>Accept Mildred the Cruel
step
    .goto TheStormPeaks,44.39,68.93
	>>Go up the stairs. Talk to Mildred
    .turnin 12905 >>Turn in Mildred the Cruel
    .accept 12906 >>Accept Discipline
step
    .goto TheStormPeaks,44.8,67.2,40,0
    .goto TheStormPeaks,44.6,70.6,40,0
    .goto TheStormPeaks,44.1,69.9,40,0
    .goto TheStormPeaks,44.8,71.3,40,0
    .goto TheStormPeaks,44.3,66.8,40,0
    .goto TheStormPeaks,43.0,68.0,40,0
    .goto TheStormPeaks,43.4,70.5
	.use 42837 >> Use the Disciplining Rod in your bags on Exhausted Vrykul in the shafts of the mine
    .complete 12906,1 --Exhausted Vrykul Disciplined (6)
step
    .goto TheStormPeaks,44.39,68.93
	>>Talk to Mildred
    .turnin 12906 >>Turn in Discipline
    .accept 12907 >>Accept Examples to be Made
step
    .goto TheStormPeaks,45.40,69.10
	>>Kill Garhal just east of Mildred in the cave
    .complete 12907,1 --Garhal (1)
step
    .goto TheStormPeaks,44.39,68.93
	>>Talk to Mildred
    .turnin 12907 >>Turn in Examples to be Made
    .accept 12908 >>Accept A Certain Prisoner
step
    .goto TheStormPeaks,42.80,68.90
	>>Talk to Lok'lira
    .turnin 12908 >>Turn in A Certain Prisoner
    .accept 12921 >>Accept A Change of Scenery
step
    .goto TheStormPeaks,41.8,69.6,30,0
    .goto TheStormPeaks,47.47,69.09
	>>Exit The Forlon Mine. Fly to Brunnhildar Village
    .turnin 12921 >>Turn in A Change of Scenery
    .accept 12969 >>Accept Is That Your Goblin?
step
    .goto TheStormPeaks,48.25,69.77
	>>Talk to Agnetta. Kill her to free Zeev
    .complete 12969,1 --Agnetta Tyrsdottar (1)
	.skipgossip
step
    .goto TheStormPeaks,47.47,69.09
	>>Talk to Lok'lira
    .turnin 12969 >>Turn in Is That Your Goblin?
    .accept 12970 >>Accept The Hyldsmeet
	>>Talk to Lok'lira the Crone about her proposal
    .complete 12970,1 --Listen to Lok'lira's proposal (1)
	.skipgossip 29975,1
    .turnin 12970 >>Turn in The Hyldsmeet
    .accept 12971 >>Accept Taking on All Challengers
step
    .goto TheStormPeaks,50.5,68.1,30,0
    .goto TheStormPeaks,51.5,66.2
	>>Talk to the Victorious Challengers in the area to attack them. Kill them
    .complete 12971,1 --Victorious Challenger (6)
	.skipgossip
step
    .goto TheStormPeaks,47.47,69.09
	>>Talk to Lok'lira
    .turnin 12971 >>Turn in Taking on All Challengers
    .accept 12972 >>Accept You'll Need a Bear
step
    .goto TheStormPeaks,53.14,65.72
	>>Talk to Brijana
    .turnin 12972 >>Turn in You'll Need a Bear
    .accept 12851 >>Accept Bearly Hanging On
step
   	#completewith next
    .goto The Storm Peaks,53.12,65.61
	.vehicle >>Mount Icefang right next to Brijana
step
    .goto TheStormPeaks,53.1,65.6,0
    .goto TheStormPeaks,57.4,63.0
	>>Use Flaming Arrow (1) to burn Frostworgs and Frost Giants. DON'T use Burst of Speed (2), just focus on hitting all the targets
    .complete 12851,1 --Frostworgs Burned (7)
    .complete 12851,2 --Frost Giants Burned (15)
step
    .goto TheStormPeaks,53.14,65.72
	>>Use "Burst of Speed" (2) to get back to Brijana faster. Talk to her
    .turnin 12851 >>Turn in Bearly Hanging On
    .accept 12856 >>Accept Cold Hearted
step
    #completewith next
    .goto TheStormPeaks,63.20,62.88
	.vehicle >>Fly to Dun Niffelem. Mount a Captive Proto-Drake, they are chained to the big ice spikes around the outer walls of Dun Niffelem
step
    .waypoint TheStormPeaks,53.1,65.7,0,niffelen,VEHICLE_PASSENGERS_CHANGED,VEHICLE_UPDATE
    .goto The Storm Peaks,66.75,60.63
	>>Use your drake's first ability on one of the Brunnhildar Prisoners frozen in the Ice Block when you're close to them.
    >> Return to Brunnhildar when you have 3 prisoners on your Proto-Drake. Do this 3 times
    .complete 12856,1 --Rescued Brunnhildar Prisoners (9)
    .complete 12856,2 --Freed Proto-Drakes (3)
step
    .goto TheStormPeaks,53.14,65.72
	>>Talk to Brijana
    .turnin 12856 >>Turn in Cold Hearted
    .accept 13063 >>Accept Deemed Worthy
step
    .goto TheStormPeaks,49.75,71.81
	>>Return to Brunnhildar. Talk to Astrid
    .turnin 13063 >>Turn in Deemed Worthy
    .accept 12900 >>Accept Making a Harness
step
    .goto TheStormPeaks,48.3,74.7,70,0
    .goto TheStormPeaks,48.3,77.1,70,0
    .goto TheStormPeaks,44.8,74.1
	>>Kill Icemane Yetis. Loot them for their Hides
    .complete 12900,1 --Icemane Yeti Hide (3)
step
    .goto TheStormPeaks,49.75,71.81
	>>Talk to Astrid
    .turnin 12900 >>Turn in Making a Harness
    .accept 12983 >>Accept The Last of Her Kind
    .accept 12989 >>Accept The Slithering Darkness
step
    #completewith next
    .goto TheStormPeaks,55.8,63.9,30 >>Enter the Hibernal Cavern
step
    .goto TheStormPeaks,54.8,60.4
	>>Kill the Jormungar in the cave
 	>>DO NOT ride the injured bear in the middle of the cave yet
    .complete 12989,1 --Ravenous Jormungar (8)
step
	#completewith next
    .goto TheStormPeaks,54.79,60.37
	.vehicle >>Right click the Iceclaw Matriarch to ride it out of the Hibernal Cavern
step
    .goto TheStormPeaks,49.82,71.12
	>>Ride the Bear back to Brunnhildar. This takes 1m 8s, so you can take a break during this time
    .complete 12983,1 --Icemaw Matriarch Rescued (1)
step
    .goto TheStormPeaks,49.75,71.81
	>>Talk to Astrid
    .turnin 12983 >>Turn in The Last of Her Kind
    .accept 12996 >>Accept The Warm-Up
    .turnin 12989 >>Turn in The Slithering Darkness
step
	#completewith next
    .goto TheStormPeaks,50.79,67.68
	.vehicle >> Fly to Kirgaraak. Use the Reins of the Warbear Matriarch in your bags to mount it.
	.use 42481
step
    .goto TheStormPeaks,50.79,67.68
	.use 42481 >>Kill Kirgaraak. Use Maul (1) to deal damage. Use Smash (2) into Charge (3) to deal additional damage.
    .complete 12996,1 --Kirgaraak Defeated (1)
step
	.goto TheStormPeaks,49.75,71.81
	>>Dismount the Bear. Talk to Astrid
    .turnin 12996 >>Turn in The Warm-Up
    .accept 12997 >>Accept Into the Pit
step
	#completewith next
    .goto TheStormPeaks,49.24,68.46
	.vehicle >> Fly to The Pit of the Fang. Use the Reins of the Warbear Matriarch in your bags to mount it.
	.use 42499
step
    .goto TheStormPeaks,49.24,68.46
	.use 42499 >>Kill the Warbears in the pit. Use Maul (1) to deal damage. Use Smash (2) into Charge (3) to deal additional damage.
    .complete 12997,1 --Hyldsmeet Warbear (6)
step
    .goto TheStormPeaks,49.75,71.81
	>>Dismount the Bear. Talk to Astrid
    .turnin 12997 >>Turn in Into the Pit
    .accept 13061 >>Accept Prepare for Glory
step
    .goto TheStormPeaks,47.47,69.09
	>>Talk to Lok'lira
    .turnin 13061 >>Turn in Prepare for Glory
    .accept 13062 >>Accept Lok'lira's Parting Gift
step
    .goto TheStormPeaks,50.88,65.58
	>>Talk to Gretta
    .turnin 13062 >>Turn in Lok'lira's Parting Gift
    .accept 12886 >>Accept The Drakkensryd
step
    .goto TheStormPeaks,35.4,57.8
	.use 41058 >>Fly on the drake to the Temple of Storms (this takes 1m 10s, so you can take a break during this time). Use the Hyldnir Harpoon in your bags to jump onto drakes that have Drakeriders. Kill them
    .complete 12886,1 --Hyldsmeet Drakerider Defeated (10)
step
    .goto TheStormPeaks,33.42,57.95
	>>Use the Hyldnir Harpoon on a Column Ornament (smaller orbs) on the columns of the Temple of Storms to jump onto it.
	>>Talk to Thorim
    .turnin 12886 >>Turn in The Drakkensryd
    .accept 13064 >>Accept Sibling Rivalry
	>>Talk to Thorim
    .complete 13064,1 --Thorim's History Heard (1)
	.skipgossip 29445,1
    .turnin 13064 >>Turn in Sibling Rivalry
    .accept 12915 >>Accept Mending Fences
	.use 41058
step
	#completewith Giants
	#label Slag
    .goto TheStormPeaks,71.8,61.1,0
	>>Kill Stormforged Iron Giants. Loot them for their Slag Covered Metal. Start the quest
	.collect 41556,1,12922,1 --Slag Covered Metal (1)
    .accept 12922 >>Accept The Refiner's Fire
step
	#completewith next
	#requires Slag
    .goto TheStormPeaks,70.7,56.7,70,0
    .goto TheStormPeaks,69.6,62.0,70,0
    .goto TheStormPeaks,76.8,62.9
	>>Kill all the Seething Revenants you see. Loot them for their Sparks
    .complete 12922,1 --Furious Spark (10)
step
	#label Giants
    .goto TheStormPeaks,75.0,63.6,70,0
    .goto TheStormPeaks,71.8,61.1
	>>Loot the Granite Boulders found on the ground at Frostfield Lake and Fjorns Anvil (you may only carry one at a time)
	.use 41505 >> Use the Thorim's Charm of Earth in your bags when you have a Boulder at Stormforged Iron Giants to help kill them
	.collect 41506,1,12915,1,-1
    .complete 12915,2 --Stormforged Iron Giants (5)
step
    .goto TheStormPeaks,71.8,61.1
	>>Kill Stormforged Iron Giants. Loot them for their Slag Covered Metal. Start the quest
	.collect 41505,1,12922,1 --Slag Covered Metal (1)
    .accept 12922 >>Accept The Refiner's Fire
step
    .goto TheStormPeaks,70.7,56.7,70,0
    .goto TheStormPeaks,69.6,62.0,70,0
    .goto TheStormPeaks,76.8,62.9
	>>Kill Seething Revenants. Loot them for their Sparks
    .complete 12922,1 --Furious Spark (10)
step
	#completewith end
	#label FjornAnvil
    .goto TheStormPeaks,77.17,62.84
	>>Click the Anvil by Fjorn
    .turnin 12922 >>Turn in The Refiner's Fire
    .accept 12956 >>Accept A Spark of Hope
step
    .goto TheStormPeaks,77.34,62.87
	>>Loot the Granite Boulders found on the ground at Frostfield Lake and Fjorns Anvil (you may only carry one at a time)
	.use 41505 >> Use the Thorim's Charm of Earth in your bags when you have a Boulder on Fjorn to help kill him
    .complete 12915,1 --Fjorn (1)
step
	#label Thorim1
    .goto TheStormPeaks,33.4,57.9
	>>Fly up to Thorim
    .turnin 12915 >>Turn in Mending Fences
    .turnin 12956 >>Turn in A Spark of Hope
    .accept 12924 >>Accept Forging an Alliance
step
	.goto TheStormPeaks,65.45,60.16
	>>Talk to King Jokkum
    .accept 12966 >>Accept You Can't Miss Him
step
	.goto TheStormPeaks,75.37,63.57
	>>Talk to Njormeld
    .turnin 12966 >>Turn in You Can't Miss Him
    .accept 12967 >>Accept Battling the Elements
step
    #completewith next
    .goto TheStormPeaks,75.71,63.91
    .vehicle >>Right click on Snorri to mount him :3
step
    .goto TheStormPeaks,77.2,62.7
	>>Use "Gather Snow" (1) to get snow from the Snowdrifts nearby. Use "Throw Snowball" (2) at Seething Revenants to kill them.
    .complete 12967,1 --Seething Revenants (10)
step
    .goto TheStormPeaks,75.37,63.57
	>>Talk to Njormeld
    .turnin 12967 >>Turn in Battling the Elements
    .complete 12924,1 --Fjorn's Anvil Brought to Dun Niffelem (1)
step << Human
	>>Return to Dun Niffelem. Talk to Njormeld and the Anvil
    .turnin 12924 >>Turn in Forging an Alliance
    .accept 13009 >>Accept A New Beginning
    .accept 12985 >>Accept Forging a Head
    .goto TheStormPeaks,63.20,63.27
	.daily 12981 >>Accept Hot and Cold
    .goto TheStormPeaks,63.13,62.94
	.isQuestAvailable 13047
step << !Human
	>>Return to Dun Niffelem. Talk to Njormeld and the Anvil
    .turnin 12924 >>Turn in Forging an Alliance
    .accept 13009 >>Accept A New Beginning
    .goto TheStormPeaks,63.20,63.27
	.daily 12981 >>Accept Hot and Cold
    .goto TheStormPeaks,63.13,62.94
	.isQuestAvailable 13047
step << Human
    .goto TheStormPeaks,65.45,60.16
	>>Talk to King Jokkum
    .accept 13011 >>Accept Culling Jorcuttar
    .accept 12975 >>Accept In Memoriam
step << !Human
    .goto TheStormPeaks,65.45,60.16
	>>Talk to King Jokkum
    .accept 12975 >>Accept In Memoriam
step << Human
	#completewith HornF
	>>Keep an eye out for the Everfrost Chips objects in the area. If you see one, loot it and start the quest
	.accept 13420 >> Accept Everfrost
step << Human
    .goto TheStormPeaks,69.6,58.8,70,0
    .goto TheStormPeaks,70.3,62.2
	>>Kill Brittle Revenants. Loot them for Essences of Ice
	.use 42424 >> Use the Diamond Tipped Pick on the Dead Iron Giants. Sometimes mobs may spawn which you need to kill, then loot them for their Stormforged Eyes
	.collect 42246,6 --Essence of Ice (6)
	.complete 12985,1 --Stormforged Eye (8)
	.isQuestAvailable 13047
step << !Human
    .goto TheStormPeaks,69.6,58.8,70,0
    .goto TheStormPeaks,70.3,62.2
	>>Kill Brittle Revenants. Loot them for Essences of Ice
	.collect 42246,6 --Essence of Ice (6)
	.isOnQuest 12981
	.isQuestAvailable 13047
step
    .goto TheStormPeaks,73.5,62.9,70,0
    .goto TheStormPeaks,76.2,63.4
	.use 42246 >> Use the Essences of Ice next to the Smoldering Scrap around Fjorn's Anvil. Loot the Frozen Iron Scrap
    .complete 12981,1 --Frozen Iron Scrap (6)
	.isQuestAvailable 13047
step
	#label HornF
    .goto TheStormPeaks,71.7,47.6
	>>Loot the small flat stones on the ground in the area
    .complete 12975,1 --Horn Fragment (8)
step << Human
	>>Return to Dun Niffelem. Talk to Calder, King Jokkum, then Njormeld, Fjorn's Anvil, and Hodir's Horn
	.turnin 13420 >> Turn in Everfrost
    .goto TheStormPeaks,67.11,60.97
    .turnin 12975 >>Turn in In Memoriam
    .accept 12976 >>Accept A Monument to the Fallen
    .goto TheStormPeaks,65.45,60.16
    .turnin 12976 >>Turn in A Monument to the Fallen
    .turnin 12985 >>Turn in Forging a Head
    .accept 12987 >>Accept Placing Hodir's Helm
    .goto TheStormPeaks,63.20,63.27
    .turnin 12981 >>Turn in Hot and Cold
    .goto TheStormPeaks,63.13,62.94
    .daily 12977 >>Accept Hodir's Call
    .goto TheStormPeaks,64.17,65.01
	.isOnQuest 13420
	.isQuestAvailable 13047
step << Human
	>>Return to Dun Niffelem. Talk to King Jokkum, Njormeld, and Fjorn's Anvil
    .turnin 12975 >>Turn in In Memoriam
    .accept 12976 >>Accept A Monument to the Fallen
    .goto TheStormPeaks,65.45,60.16
    .turnin 12976 >>Turn in A Monument to the Fallen
    .turnin 12985 >>Turn in Forging a Head
    .accept 12987 >>Accept Placing Hodir's Helm
    .goto TheStormPeaks,63.20,63.27
    .turnin 12981 >>Turn in Hot and Cold
    .goto TheStormPeaks,63.13,62.94
	.isQuestAvailable 13047
step << !Human
	>>Return to Dun Niffelem. Talk to King Jokkum, Fjorn's Anvil and Njormeld
    .turnin 12975 >>Turn in In Memoriam
    .accept 12976 >>Accept A Monument to the Fallen
    .goto TheStormPeaks,65.45,60.16
    .turnin 12981 >>Turn in Hot and Cold
    .goto TheStormPeaks,63.13,62.94
    .turnin 12976 >>Turn in A Monument to the Fallen
    .goto TheStormPeaks,63.20,63.27
 step << !Human
	#label tribute
	.goto TheStormPeaks,66.16,61.44
    >>You may need to do a single turn in of Relics of Ulduar to get Friendly with The Sons of Hodir. Skip this if you are already Friendly
    >>Relics of Ulduar can be found from killing all mobs around Storm Peaks or can be bought from the Auction House
	>>Talk to Lillehoff
    .collect 42780,10 --Relic of Ulduar (10)
	.turnin 13559 >>Turn in Hodir's Tribute
    .reputation 1119,friendly,>0,1 -- Step only shows if rep is below friendly
step << !Human
    >>Talk to Njormeld
    .accept 12985 >>Accept Forging a Head
    .goto TheStormPeaks,63.20,63.27
step << !Human
    .goto TheStormPeaks,69.6,58.8,70,0
    .goto TheStormPeaks,70.3,62.2
	.use 42424 >> Use the Diamond Tipped Pick on the Dead Iron Giants. Sometimes mobs may spawn which you need to kill, then loot them for their Stormforged Eyes
	.complete 12985,1 --Stormforged Eye (8)
step << !Human
	>>Return to Dun Niffelem. Talk to Njormeld and Hodir's Horn
    .turnin 12985 >>Turn in Forging a Head
    .accept 12987 >>Accept Placing Hodir's Helm
    .goto TheStormPeaks,63.20,63.27
    .daily 12977 >>Accept Hodir's Call
    .goto TheStormPeaks,64.17,65.01
	.isQuestAvailable 13047
step
    .goto TheStormPeaks,64.24,59.23
	.use 42442 >> Fly up to the sparkling ice pike in Dun Niffelem. Use the Tablets of Pronouncement in your bags when on your flying mount
    .complete 12987,1 --Hodir's Helm Mounted (1)
step
    .goto TheStormPeaks,63.20,63.27
	>>Talk to Njormeld
    .turnin 12987 >>Turn in Placing Hodir's Helm
step
    .goto TheStormPeaks,64.22,59.39
	>>Talk to the Helm you just placed
    .daily 13006 >>Accept Viscous Cleaning
	.isQuestAvailable 13047
step << !Human
    .goto TheStormPeaks,65.45,60.16
	>>Talk to King Jokkum
    .accept 13011 >>Accept Culling Jorcutta
step
	#completewith Jorcuttar
    .goto TheStormPeaks,54.4,63.2,0
	>>Kill Viscous Oils in the Hibernal Cavern. Loot them for their Oil
    .complete 13006,1 --Viscous Oil (5)
	.isQuestAvailable 13047
step
    .goto TheStormPeaks,55.8,63.9,30,0
    .goto TheStormPeaks,54.7,60.6
	.use 42732 >> Enter the Hibernal Cavern and hug the right side of it. Use the Everfrost Razor on Dead Icemaw Bears until you get an Icemaw Bear Flank
	.collect 42733,1 --Icemaw Bear Flank (1)
	.isQuestAvailable 13047
step
	#label Jorcuttar
    .goto TheStormPeaks,54.8,60.8
	.use 42733 >>Keep hugging the right side of the cavern until you get to the main room. Use the Icemaw Bear Flank in the middle of the frozen, spikey lake - Kill Jorcuttar
    .complete 13011,1 --Jorcuttar (1)
step
    .goto TheStormPeaks,54.4,63.2
	>>Kill Viscous Oils in the Hibernal Cavern. Loot them for their Oil
    .complete 13006,1 --Viscous Oil (5)
	.isQuestAvailable 13047
step
    .goto TheStormPeaks,33.42,57.95
	>>Fly to Thorim atop the Temple of Storms. Talk to him
    .turnin 13009 >>Turn in A New Beginning
    .accept 13050 >>Accept Veranus
step
    .goto TheStormPeaks,45.4,66.9,40,0
    .goto TheStormPeaks,43.7,67.5
	>>Loot the Eggs in the nests atop the mountain
    .complete 13050,1 --Small Proto-Drake Egg (5)
step
    .goto TheStormPeaks,33.42,57.95
	>>Fly to Thorim atop the Temple of Storms. Talk to him
    .turnin 13050 >>Turn in Veranus
    .accept 13051 >>Accept Territorial Trespass
step
    .goto TheStormPeaks,38.73,65.54
	.cast 56788 >> Use the Stolen Proto-Dragon Eggs in your bags atop The Broodmother's nest to lure Veranus
	.timer 42,Veranus RP (CONTINUE QUESTING)
	.use 42797
	.isQuestAvailable 13047
step
    .goto TheStormPeaks,33.42,57.95
	>>Fly to Thorim atop the Temple of Storms. Talk to him. Wait at Thorim for the RP from the previous quest to finish. It takes about 1 minute
    .turnin 13051 >>Turn in Territorial Trespass
    .accept 13010 >>Accept Krolmir, Hammer of Storms
step
	#completewith DunNif2
    .goto TheStormPeaks,29.5,74.3
	>>Fly to Dun Niffelem
	.isQuestAvailable 13047
step
	>>Talk to Hodir's Horn
    .daily 12977 >>Accept Hodir's Call
    .goto TheStormPeaks,64.17,65.01
	.isQuestAvailable 13047
step
	#label DunNif2
	>>Talk to Hodir's Helmet and King Jokkum in Dun Niffelem
    .turnin 13006 >>Turn in A Viscous Cleaning
    .goto TheStormPeaks,64.22,59.39
    .turnin 13011 >>Turn in Culling Jorcuttar
	.vehicle >> Talk to King Jokkum. Ride him to Thunderfall
	.timer 118,Krolmir, Hammer of Storms RP
	.skipgossip
	.isQuestAvailable 13047
step
	#completewith TerraceM
	>>Keep an eye out for the Everfrost Chips objects in the area. If you see one, loot it and start the quest
	.accept 13420 >> Accept Everfrost
	.isQuestAvailable 13047
step
	#completewith ThorimRP
    .goto TheStormPeaks,70.7,47.3,0
    .goto TheStormPeaks,70.1,52.5,0
    .goto TheStormPeaks,72.7,52.1,0
    .goto TheStormPeaks,74.7,48.3,0
	.use 42164 >> Kill Niffelem Forefathers and Restless Frostborn in the area. Use Hodir's Horn in your bags on their corpses to free them
	>>You can do this while the RP event is happening
    .complete 12977,1 --Niffelem Forefather freed (5)
    .complete 12977,2 --Restless Frostborn freed (5)
	.isQuestAvailable 13047
step
    .goto TheStormPeaks,71.37,48.78
	>>Wait for the RP to complete
    .complete 13010,1 --Krolmir's Fate Discovered (1)
	.isQuestAvailable 13047
step
	#label ThorimRP
    .goto TheStormPeaks,71.37,48.78
	>>Talk to Thorim before he disappears
    .turnin 13010 >>Turn in Krolmir, Hammer of Storms
    .accept 13057 >>Accept The Terrace of the Makers
	.isQuestAvailable 13047
step
    .goto TheStormPeaks,70.7,47.3,60,0
    .goto TheStormPeaks,70.1,52.5,60,0
    .goto TheStormPeaks,72.7,52.1,60,0
    .goto TheStormPeaks,74.7,48.3
	.use 42164 >> Kill Niffelem Forefathers and Restless Frostborn in the area. Use Hodir's Horn in your bags on their corpses to free them
    .complete 12977,1 --Niffelem Forefather freed (5)
    .complete 12977,2 --Restless Frostborn freed (5)
	.isQuestAvailable 13047
step
	#label TerraceM
    .goto TheStormPeaks,56.26,51.36
	>>Talk to Thorim at the Terrace of the Makers
    .turnin 13057 >>Turn in The Terrace of the Makers
    .accept 13005 >>Accept The Earthen Oath
    .accept 13035 >>Accept Loken's Lackeys
	.isQuestAvailable 13047
step
	#completewith Duronn
    .goto TheStormPeaks,52.0,50.4,0
	.use 42840 >> Use the Horn of the Peaks in your bags to help you kill the Iron Dwarfs and Iron Sentinels en route to the named mobs
    .complete 13005,1 --Iron Sentinel (7)
    .complete 13005,2 --Iron Dwarf Assailant (20)
	.isQuestAvailable 13047
step
    .goto TheStormPeaks,48.72,45.65
	.use 42840 >> Use the Horn of the Peaks in your bags to summon a small army. Use it to kill Halefnir
    .complete 13035,2 --Halefnir the Windborn (1)
step
	#label Duronn
    .goto TheStormPeaks,44.94,38.03
	.use 42840 >> Use the Horn of the Peaks in your bags to summon a small army. Use it to kill Duronn
    .complete 13035,3 --Duronn the Runewrought (1)
step
	#completewith next
    .goto TheStormPeaks,57.7,44.5,50,0
    .goto TheStormPeaks,57.7,44.5,0
	.use 42840 >> Use the Horn of the Peaks to help you kill the Iron Sentinels outside of Eisenfaust's cave
    .complete 13005,1 --Iron Sentinel (7)
step
    .goto TheStormPeaks,56.9,44.1,30,0
    .goto TheStormPeaks,55.30,43.32
	>>Enter the Hall of the Shaper at the bottom of the mountain on the East side
	.use 42840 >> Use the Horn of the Peaks to summon a small army. Use it to kill Eisenfaust
    .complete 13035,1 --Eisenfaust (1)
step
    .goto TheStormPeaks,58.48,45.21
	.use 42840 >> Use the Horn of the Peaks in your bags to help you kill the Iron Dwarfs and Iron Sentinels in the area
    .complete 13005,1 --Iron Sentinel (7)
    .complete 13005,2 --Iron Dwarf Assailant (20)
step
    .goto TheStormPeaks,56.26,51.36
	>>Talk to Thorim at the Terrace of the Makers
    .turnin 13005 >>Turn in The Earthen Oath
    .turnin 13035 >>Turn in Loken's Lackeys
    .accept 13047 >>Accept The Reckoning
step
    #completewith next
	.goto TheStormPeaks,44.49,28.19
	>>Fly to the outside of Ulduar
    .fp Ulduar >> Get the Ulduar flight path
    .skill riding,<300,1
step
    .goto TheStormPeaks,35.93,31.52
	>>Fly to Thorim outside Ulduar. Talk to him and wait out the RP event
    .complete 13047,1 --Witness the Reckoning (1)
	.skipgossip
	.timer 91,The Reckoning RP
step
	#completewith end
    .goto TheStormPeaks,44.49,28.19
	>>Fly to the outside of Ulduar
    .fp Ulduar >> Get the Ulduar flight path
	.fly Dun Niffelem >> Fly to Dun Niffelem. This takes 1m 44s, so you can take a break during this time
    .skill riding,300,1
step
	#completewith next
    .goto TheStormPeaks,36.2,49.3,200 >> Fly to Dun Niffelem on your flying mount
    .skill riding,<300,1
step
	>>Return to Dun Niffelem. Talk to Jokkum, Calder and Hodir's Horn
    .turnin 13047 >>Turn in The Reckoning
--  .accept 13108 >>Accept Whatever it Takes!
    .goto TheStormPeaks,65.45,60.16
	.turnin 13420 >> Turn in Everfrost
    .goto TheStormPeaks,67.11,60.97
    .turnin 12977 >>Turn in Hodir's Call
    .goto TheStormPeaks,64.17,65.01
	.isOnQuest 13420
step
	#label end
	>>Return to Dun Niffelem. Talk to Jokkum and Hodir's Horn
    .turnin 13047 >>Turn in The Reckoning
--  .accept 13108 >>Accept Whatever it Takes!
    .goto TheStormPeaks,65.45,60.16
    .turnin 12977 >>Turn in Hodir's Call
    .goto TheStormPeaks,64.17,65.01
step -- checking that player has honored with hodir to get this quest. will only be humans and any other that turned in rep items
	>>Talk to Lorekeeper Randvir in Dun Niffelem
	.goto TheStormPeaks,64.84,59.05
	.accept 13001 >>Accept Forging Hodir's Spear
	.reputation 1119,honored,<0,1
step
	>>Kill Stoic Mammoths. Loot them for their Hides
	.goto TheStormPeaks,58.68,60.94,60,0
	>>Loot Everfrost Shards in the Hibernal Cavern
	.complete 13001,2 --Stoic Mammoth Hide (3)
	.complete 13001,1 --Everfrost Shard (3)
	.goto TheStormPeaks,55.84,63.94,50,0
   	.goto TheStormPeaks,54.72,60.82
	.isOnQuest 13001
step
	>>Talk to Lorekeeper Randvir in Dun Niffelem
	.goto TheStormPeaks,64.84,59.05
	.turnin 13001 >>Turn in Forging Hodir's Spear
	.isQuestComplete 13001
step
    +You have completed The Sons of Hodir Pre Quest chain. Please use The Sons of Hodir Daily Quests Route guide to complete the daily quests. Note some may not be available today due to already being completed earlier
	.isQuestTurnedIn 13047
]])
