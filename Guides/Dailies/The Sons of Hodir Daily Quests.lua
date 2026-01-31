if GetLocale() == "zhCN" then return end
RXPGuides.RegisterGuide([[
#version 1
#group +RestedXP Northrend Daily Quests
#subgroup Faction Daily Quests
#wotlk
#cata
#name The Sons of Hodir Daily Quests Route

step
	+To unlock The Sons of Hodir daily quests you must first complete their quest chain in The Storm Peaks. Please use The Sons of Hodir Unlock Daily Quests guide to unlock the daily quests
	.isQuestAvailable 13047
step
	>>Talk to Fjorn's Anvil, Hodir's Horn, Hodir's Helm, Frostworg Denmother, Hodir's Spear and Arngrim the Insatiable
    .daily 12981 >>Accept Hot and Cold
    .goto TheStormPeaks,63.13,62.94
    .daily 12977 >>Accept Hodir's Call
    .goto TheStormPeaks,64.17,65.01
	.daily 13006 >> Accept A Viscous Cleaning
	.goto TheStormPeaks,64.24,59.23
	.daily 12994 >> Accept Spy Hunter
	.goto TheStormPeaks,63.49,59.73
	.daily 13003 >> Accept How To Slay Your Dragon
	.goto TheStormPeaks,65.00,60.95
	.daily 13046 >> Accept Feeding Arngrim
	.goto TheStormPeaks,67.61,59.95
	.reputation 1119,revered,<0,1 -- if you're 0 into revered it will display this step
step
	>>Talk to Fjorn's Anvil, Hodir's Horn, Hodir's Helm, Frostworg Denmother and Hodir's Spear
    .daily 12981 >>Accept Hot and Cold
    .goto TheStormPeaks,63.13,62.94
    .daily 12977 >>Accept Hodir's Call
    .goto TheStormPeaks,64.17,65.01
	.daily 13006 >> Accept A Viscous Cleaning
	.goto TheStormPeaks,64.24,59.23
	.daily 12994 >> Accept Spy Hunter
	.goto TheStormPeaks,63.49,59.73
	.daily 13003 >> Accept How To Slay Your Dragon
	.goto TheStormPeaks,65.00,60.95
	.reputation 1119,honored,<0,1 -- if you're 0 into honored it will display this step
step
	>>Talk to Fjorn's Anvil, Hodir's Horn and Hodir's Helm
    .daily 12981 >>Accept Hot and Cold
    .goto TheStormPeaks,63.13,62.94
    .daily 12977 >>Accept Hodir's Call
    .goto TheStormPeaks,64.17,65.01
	.daily 13006 >> Accept A Viscous Cleaning
	.goto TheStormPeaks,64.24,59.23
	.reputation 1119,friendly,<0,1 -- if you're 0 into friendly it will display this step
step
	.goto TheStormPeaks,70.00,58.00,60,0
    .goto TheStormPeaks,70.14,61.16
	>>Kill Brittle Revenants. Loot them for Essences of Ice
	.collect 42246,6 --Essence of Ice (6)
	.isOnQuest 12981
step
	.goto TheStormPeaks,73.5,62.9,70,0
    .goto TheStormPeaks,76.2,63.4
	.use 42246 >> Use the Essences of Ice next to the Smoldering Scrap around Fjorn's Anvil. Loot the Frozen Iron Scrap
    .complete 12981,1 --Frozen Iron Scrap (6)
	.isOnQuest 12981
step
    .goto TheStormPeaks,70.73,50.96,65,0
	.goto TheStormPeaks,73.00,49.05,65,0
    .goto TheStormPeaks,71.45,47.76
	.use 42164 >> Kill Niffelem Forefathers and Restless Frostborn in the area. Use Hodir's Horn in your bags on their corpses to free them
    .complete 12977,1 --Niffelem Forefather freed (5)
    .complete 12977,2 --Restless Frostborn freed (5)
	.isOnQuest 12977
step
	#completewith next
    .goto TheStormPeaks,57.23,64.02
	.use 42479 >> Use the Ethereal Worg's Fang in your bags on the Corpse of the Fallen Worg. Follow the Ethereal Frostworg until it tracks a Stormforged Infiltrator then kill it.
	.complete 12994,1 --Stormforged Infiltrators Slain (3)
	.isOnQuest 12994
step
	.goto TheStormPeaks,57.92,61.07,60,0
	.goto TheStormPeaks,57.83,63.59,60,0
	.goto TheStormPeaks,56.51,65.00
	.use 42774 >> Use Arngrim's Tooth in your bags on Roaming Jormungar. Damage it to 30% or less health but do not kill it
	.complete 13046,1 --Arngrim's spirit fed (5)
	.isOnQuest 13046
step
    .goto TheStormPeaks,57.23,64.02
	.use 42479 >> Use the Ethereal Worg's Fang in your bags on the Corpse of the Fallen Worg. Follow the Ethereal Frostworg until it tracks a Stormforged Infiltrator then kill it.
	.complete 12994,1 --Stormforged Infiltrators Slain (3)
	.isOnQuest 12994
step
	.goto TheStormPeaks,55.84,63.94,50,0
    .goto TheStormPeaks,54.4,63.2
	>>Kill Viscous Oils in the Hibernal Cavern. Loot them for their Oil
    .complete 13006,1 --Viscous Oil (5)
	.isOnQuest 13006
step
	.goto TheStormPeaks,58.67,60.64,60,0
	.goto TheStormPeaks,57.23,64.02,60,0
	.goto TheStormPeaks,55.94,65.69,60,0
	.goto TheStormPeaks,59.25,59.94
	.use 42769 >> Use the Spear of Hodir in your bags to hook onto a Wild Wyrm. Make sure you are full health before doing this
	>>Use Grab On (1) repeatedly to incrase your Grip. When the wyrm swipes at you use Dodge Claws (2). Use Thrust Spear (3) and Vengeful Spear Thrust (4) on cooldown
	>>Remember to continously Grab On (1) otherwise you will fall off if you only spam your attacks using (3) and (4)!
	>>Once the Wild Wyrm is below 30% your attack bar will change. Use Pry Jaws Open (1) five times then use Fatal Strike (3). If the Fatal Strike fails continue using Pry Jaws Open (1) until the cooldown is ready for Fatal Strike (3)
	.complete 13003,1 --Stormforged Infiltrators Slain (3)
	.isOnQuest 13003
step
	>>Return to Dun Niffelem
	>>Talk to Fjorn's Anvil, Hodir's Horn, Hodir's Helm, Frostworg Denmother, Hodir's Spear and Arngrim the Insatiable
    .turnin 12981 >>Turn in Hot and Cold
    .goto TheStormPeaks,63.13,62.94
    .turnin 12977 >>Turn in Hodir's Call
    .goto TheStormPeaks,64.17,65.01
	.turnin 13006 >> Turn in A Viscous Cleaning
	.goto TheStormPeaks,64.24,59.23
	.turnin 12994 >> Turn in Spy Hunter
	.goto TheStormPeaks,63.49,59.73
	.turnin 13003 >> Turn in How To Slay Your Dragon
	.goto TheStormPeaks,65.00,60.95
	.turnin 13046 >> Turn in Feeding Arngrim
	.goto TheStormPeaks,67.61,59.95
	.isQuestComplete 12994
	.isQuestComplete 13003
	.isQuestComplete 13046
step
	>>Return to Dun Niffelem
	>>Talk to Fjorn's Anvil, Hodir's Horn, Hodir's Helm, Hodir's Spear and Arngrim the Insatiable
    .turnin 12981 >>Turn in Hot and Cold
    .goto TheStormPeaks,63.13,62.94
    .turnin 12977 >>Turn in Hodir's Call
    .goto TheStormPeaks,64.17,65.01
	.turnin 13006 >> Turn in A Viscous Cleaning
	.goto TheStormPeaks,64.24,59.23
	.turnin 13003 >> Turn in How To Slay Your Dragon
	.goto TheStormPeaks,65.00,60.95
	.turnin 13046 >> Turn in Feeding Arngrim
	.goto TheStormPeaks,67.61,59.95
	.isQuestComplete 13003
	.isQuestComplete 13046
step
	>>Return to Dun Niffelem
	>>Talk to Fjorn's Anvil, Hodir's Horn, Hodir's Helm, Frostworg Denmother and Hodir's Spear
    .turnin 12981 >>Turn in Hot and Cold
    .goto TheStormPeaks,63.13,62.94
    .turnin 12977 >>Turn in Hodir's Call
    .goto TheStormPeaks,64.17,65.01
	.turnin 13006 >> Turn in A Viscous Cleaning
	.goto TheStormPeaks,64.24,59.23
	.turnin 12994 >> Turn in Spy Hunter
	.goto TheStormPeaks,63.49,59.73
	.turnin 13003 >> Turn in How To Slay Your Dragon
	.goto TheStormPeaks,65.00,60.95
	.isQuestComplete 12994
	.isQuestComplete 13003
step
	>>Return to Dun Niffelem
	>>Talk to Fjorn's Anvil, Hodir's Horn, Hodir's Helm, Frostworg Denmother and Arngrim the Insatiable
    .turnin 12981 >>Turn in Hot and Cold
    .goto TheStormPeaks,63.13,62.94
    .turnin 12977 >>Turn in Hodir's Call
    .goto TheStormPeaks,64.17,65.01
	.turnin 13006 >> Turn in A Viscous Cleaning
	.goto TheStormPeaks,64.24,59.23
	.turnin 12994 >> Turn in Spy Hunter
	.goto TheStormPeaks,63.49,59.73
	.turnin 13046 >> Turn in Feeding Arngrim
	.goto TheStormPeaks,67.61,59.95
	.isQuestComplete 12994
	.isQuestComplete 13046
step
	>>Return to Dun Niffelem
	>>Talk to Fjorn's Anvil, Hodir's Horn, Hodir's Helm and Arngrim the Insatiable
    .turnin 12981 >>Turn in Hot and Cold
    .goto TheStormPeaks,63.13,62.94
    .turnin 12977 >>Turn in Hodir's Call
    .goto TheStormPeaks,64.17,65.01
	.turnin 13006 >> Turn in A Viscous Cleaning
	.goto TheStormPeaks,65.00,60.95
	.turnin 13046 >> Turn in Feeding Arngrim
	.goto TheStormPeaks,67.61,59.95
	.isQuestComplete 13046
step
	>>Return to Dun Niffelem
	>>Talk to Fjorn's Anvil, Hodir's Horn, Hodir's Helm and Hodir's Spear
    .turnin 12981 >>Turn in Hot and Cold
    .goto TheStormPeaks,63.13,62.94
    .turnin 12977 >>Turn in Hodir's Call
    .goto TheStormPeaks,64.17,65.01
	.turnin 13006 >> Turn in A Viscous Cleaning
	.goto TheStormPeaks,64.24,59.23
	.turnin 13003 >> Turn in How To Slay Your Dragon
	.goto TheStormPeaks,65.00,60.95
	.isQuestComplete 13003
step
	>>Return to Dun Niffelem
	>>Talk to Fjorn's Anvil, Hodir's Horn, Hodir's Helm and Frostworg Denmother
    .turnin 12981 >>Turn in Hot and Cold
    .goto TheStormPeaks,63.13,62.94
    .turnin 12977 >>Turn in Hodir's Call
    .goto TheStormPeaks,64.17,65.01
	.turnin 13006 >> Turn in A Viscous Cleaning
	.goto TheStormPeaks,64.24,59.23
	.turnin 12994 >> Turn in Spy Hunter
	.goto TheStormPeaks,63.49,59.73
	.isQuestComplete 12994
step
	>>Return to Dun Niffelem
	>>Talk to Fjorn's Anvil, Hodir's Horn and Hodir's Helm
    .turnin -12981 >>Turn in Hot and Cold
    .goto TheStormPeaks,63.13,62.94
    .turnin -12977 >>Turn in Hodir's Call
    .goto TheStormPeaks,64.17,65.01
	.turnin -13006 >> Turn in A Viscous Cleaning
	.goto TheStormPeaks,64.24,59.23
step
	+You have completed all of The Sons of Hodir Daily Quests for today :) Remember you can turn in Everfrost Chips found on the ground in the area for extra rep as well as Relic of Ulduar turn ins!
]])
