RXPGuides.RegisterGuide([[
#df
#version 1
#group RestedXP Starting Zones
#subgroup Night Elf Starting Zones
#name 2Retail-Alliance-Night Elf_Shadowglen
#displayname Chapter1-Night Elf_Shadowglen
#next 3Retail-Alliance-Night Elf_Teldrassil
#defaultfor NightElf

<<Alliance !DemonHunter !DK 

step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ilthalaine
    .goto 460,45.61,74.52
    .accept 28713 >>Accept The Balance of Nature
	.target Ilthalaine
step
    >>Kill Young Nightsabers
    .goto 460,42.44,76.29,20,0
	.goto 460,46.63,79.57,20,0
	.goto 460,50.63,76.87,20,0
	.goto 460,42.44,76.29
    .complete 28713,1 --6/6 Young Nightsaber slain
	.target Young Nightsaber
step
    .goto 460,45.62,74.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ilthalaine
    .turnin 28713 >>Turn in The Balance of Nature
    .accept 28714 >>Accept Fel Moss Corruption
	.target Ilthalaine
step
    .goto 460,45.94,72.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Melithar Staghelm
    .accept 28715 >>Accept Demonic Thieves
	.target Melithar Staghelm
step
    #completewith next
    >>Kill Grell and Grellkin. Loot them for their Fel Moss
    .complete 28714,1 --6/6 Fel Moss
	.target Grell
	.target Grellkin
step
    >>Loot Melithar's Stolen Bags off the ground
	.goto 460,36.66,79.84,15,0
	.goto 460,34.82,80.53,15,0
	.goto 460,31.70,74.85,15,0
	.goto 460,30.66,70.55,20,0
	.goto 460,36.66,79.84
    .complete 28715,1 --5/5 Melithar's Stolen Bags
step
    >>Kill Grell and Grellkin. Loot them for their Fel Moss
	.goto 460,36.66,79.84,15,0
	.goto 460,34.82,80.53,15,0
	.goto 460,31.70,74.85,15,0
	.goto 460,30.66,70.55,20,0
	.goto 460,36.66,79.84
    .complete 28714,1 --6/6 Fel Moss
	.target Grell
	.target Grellkin
step
    .goto 460,45.93,72.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Melithar Staghelm
    .turnin 28715 >>Turn in Demonic Thieves
	.target Melithar Staghelm
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ilthalaine
    .goto 460,46.28,73.48
    .turnin 28714 >>Turn in Fel Moss Corruption
    .accept 28723 >>Accept Priestess of the Moon
	.target Ilthalaine
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Dentaria Silverglade
    .goto 460,42.49,50.51
    .turnin 28723 >>Turn in Priestess of the Moon
    .accept 28724 >>Accept Iverron's Antidote
	.target Dentaria Silverglade
step
    >>Loot the Moonpetal Lilies off the ground 
    .complete 28724,1 -- 7/7 Moonpetal Lily
	.goto 460,41.87,49.37,5,0
	.goto 460,40.77,47.27,5,0
	.goto 460,39.54,52.27,5,0
	.goto 460,40.18,52.64,5,0
	.goto 460,40.80,53.32,5,0
	.goto 460,42.28,52.68,5,0
	.goto 460,43.60,51.83,5,0
	.goto 460,41.87,49.37
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Dentaria Silverglade
    .goto 460,42.49,50.47
    .turnin 28724 >>Turn in Iverron's Antidote
    .accept 28725 >>Accept The Woodland Protector
	.target Dentaria Silverglade
step
	#completewith next
	.goto 58,44.87,88.5,5 >> Enter the Shadowthread Cave then wait for Tarindrella to appear
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Tarindrella at the arrow location. She will appear after a couple seconds
    .goto 58,44.87,88.5
    .turnin 28725 >>Turn in The Woodland Protector
    .accept 28726 >>Accept Webwood Corruption
	.target Tarindrella
step
    >>Kill Spiders within the Cave
    >>By using Disengage across the Gap at the Waypoint Location you can save some Time <<Hunter
    >>Make sure that if you do it you don't kill Githyiss the Vile because you need him shortly after << Hunter
    .goto 58,39.44,34.72 <<Hunter
    .goto 58,41.27,33.22,10,0 <<!Hunter
    .goto 58,34.81,15.50,15,0 <<!Hunter
    .waypoint 58,46.33,41.34,-30,0
    .complete 28726,1 --12/12 Webwood Spider slain
	.target Webwood Spider
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Tarindrella next to you
    .turnin 28726 >>Turn in Webwood Corruption
    .accept 28727 >>Accept Vile Touch
	.target Tarindrella
step
    >>Kill Githyiss the Vile
    .goto 58,34.56,23.87,0 << !Hunter
    .goto 58,42.81,19.50,10,0 << !Hunter
    .goto 58,45.02,31.37
    .complete 28727,1 --1/1 Githyiss the Vile slain
	.target Githyiss the Vile
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Tarindrella next to you
    .turnin 28727,1 >>Turn in Vile Touch
    .accept 28728 >>Accept Signs of Things to Come
	.target Tarindrella
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Dentaria Silverglade
    .goto 460,42.50,50.50
    .turnin 28728 >>Turn in Signs of Things to Come
    .accept 28729 >>Accept Teldrassil: Crown of Azeroth
	.target Dentaria Silverglade
step
    #sticky
    #completewith QuestKeybindingsNightelf2
    +If you want to make the most of RXP; Press Escape -> Options -> Keybindings -> RestedXP Guides -> Select and Bind Active Button 1,2,3 and 4
    *This will allow you to press a keybind to use a Quest Item rather than manually clicking it	
step << Hunter
	#completewith next
	>>Drag |T132161:0|tCall Pet and |T132179:0|tPet Utility onto your Action Bars
	.goto 460,46.36,41.86,30,0
	.goto 460,51.93,37.12,60 >>Cast |T132164:0|tTame Beast on a Mangy Nightsaber to tame it
	.target Mangy Nightsaber
step
    #label QuestKeybindingsNightelf2
    >>Use the Crystal Phial in your bags near the Moonwell
    .use 5185
    .goto 460,50.13,34.49
    .complete 28729,1 --1/1 Filled Crystal Phial
step
    .goto 460,42.49,50.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Dentaria Silverglade
    .turnin 28729 >>Turn in Teldrassil: Crown of Azeroth
    .accept 28730 >>Accept Precious Waters
	.target Dentaria Silverglade
step
    >>Walk up the ramp of the Tree
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Tenaron Stormgrip
    .goto 460,41.85,63.54,15,0
    .goto 460,46.45,53.43,15,0
    .goto 460,44.44,56.47,15,0
    .goto 460,45.20,60.69,15,0
    .goto 460,48.01,58.75,15,0
    .goto 460,48.14,54.36,15,0
    .goto 460,47.16,55.95
    .turnin 28730 >>Turn in Precious Waters
    .accept 28731 >>Accept Teldrassil: Passing Awareness
	.target Tenaron Stormgrip
step
	>>Jump off the Tree. You have a slowfall buff so you won't die
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Porthannius
    .goto 460,54.57,84.78
    .accept 2159 >>Accept Dolanaar Delivery
	.target Porthannius
]])
