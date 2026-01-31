if GetLocale() == "zhCN" then return end
RXPGuides.RegisterGuide([[
#version 1
#group +RestedXP Northrend Daily Quests
#subgroup Faction Daily Quests
#wotlk
#cata
#name The Kalu'ak Daily Quests

step
	>>Travel to Moa'ki Harbor in Dragonblight. Talk to Mau'i
    .daily 11960 >>Accept Planning for the Future
    .goto Dragonblight,48.25,74.35
step
    .goto Dragonblight,47.4,64.3,40,0
    .goto Dragonblight,47.2,61.5,40,0
    .goto Dragonblight,45.2,61.6
	>>Right click the small Wolvar Pups located near the huts
    .complete 11960,1 --Snowfall Glade Pup (12)
	.isOnQuest 11960
step
	>>Return to Moa'ki Harbor. Talk to Mau'i
    .turnin 11960 >>Turn in Planning for the Future
    .goto Dragonblight,48.25,74.35
	.isQuestComplete 11960
step
	>>Travel to Kaskala in Borean Tundra. Talk to Utaik
    .daily 11945 >>Accept Preparing for the Worst
    .goto BoreanTundra,63.95,45.72
step
    .goto BoreanTundra,66.2,45.9,60,0
    .goto BoreanTundra,63.7,52.2
	>>Loot the small baskets all around the village
	.complete 11945,1 --Kaskala Supplies (8)
    .isOnQuest 11945
step
	>>Return to Utaik
    .turnin 11945 >>Turn in Preparing for the Worst
    .goto BoreanTundra,63.95,45.72
    .isQuestComplete 11945
step
	>>Travel to Kamagua in Howling Fjord. Talk to Anunia
    .daily 11472 >>Accept The Way to His Heart...
	.goto HowlingFjord,24.59,58.87
step
    .goto HowlingFjord,31.2,74.8,30,0
    .goto HowlingFjord,30.96,71.85
	.use 40946 >>Use Anuniaq's Net in your bags on Schools of Tasty Reef Fish in the area to catch roughly 7-8 Tasty Reef Fish. You should have this in about 2 casts of the net
	.use 34127 >>Throw the Tasty Reef fish at max range at a Reef Bull, it'll now go to where you stand
	>>Lead it on top of a Reef Cow on the other side of the coastline
	>>If you run out of fish get 7-8 more and try again
    .complete 11472,1 --Reef Bull led to a Reef Cow (1)
	.isOnQuest 11472
step
    .goto HowlingFjord,24.59,58.87
	>>Talk to Anuniaq
    .turnin 11472 >>Turn in The Way to His Heart...
	.isQuestComplete 11472
]])
