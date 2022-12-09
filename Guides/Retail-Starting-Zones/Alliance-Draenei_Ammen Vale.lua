RXPGuides.RegisterGuide([[
#df
#version 1
#group RestedXP Starting Zones
#subgroup Draenei Starting Zones
#name 2Retail-Alliance-Draenei_Ammen Vale
#displayname Chapter1-Draenei_Ammen Vale
#next 3Retail-Alliance-Draenei_Azuremyst Isle
#defaultfor Draenei

<<Alliance !DK

step
    #sticky
    #completewith DraeneiExileCheck
    +Welcome to the Draenei Starting Zone Guide of RestedXP.
    *Without consumables/heirlooms this route is roughly 5 minutes slower than Exiles Reach. For faster leveling recreate your character and choose Exiles Reach instead.
    *With consumables/heirlooms this route is just as fast
step
    #label DraeneiExileCheck
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Megelon
    .goto 468,61.21,29.48
    .accept 9279 >>Accept You Survived!
	.target Megelon
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Proenitus
    .goto 468,52.75,35.88
    .turnin 9279 >>Turn in You Survived!
    .accept 9280 >>Accept Replenishing the Healing Crystals
	.target Proenitus
step
    >>Kill Vale Moths. Loot them for their Blood
    .goto 468,52.47,31.08,25,0
	.goto 468,50.96,26.54,25,0
	.goto 468,49.20,26.20,25,0
	.goto 468,44.84,30.01,25,0
	.goto 468,52.47,31.08
    .complete 9280,1 --6/6 Vial of Moth Blood
	.target Vale Moth
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Proenitus
    .goto 468,52.7,35.9
    .turnin 9280 >>Turn in Replenishing the Healing Crystals
    .accept 9409 >>Accept Urgent Delivery!
	.target Proenitus
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Zalduun
    .goto 468,52.2,43.6
    .turnin 9409 >>Turn in Urgent Delivery!
    .accept 9283 >>Accept Rescue the Survivors!
	.target Zalduun
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Proenitus
    .goto 468,52.7,35.9
    .accept 9371 >>Accept Botanist Taerix
	.target Proenitus
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Botanist Taerix
    .goto 468,49.87,37.34
    .turnin 9371 >>Turn in Botanist Taerix
    .accept 10302 >>Accept Volatile Mutations
	.target Botanist Taerix
step
    #completewith next
    >>Kill Volatile Mutations in the Area
    .complete 10302,1 --8/8 Volatile Mutation slain
	.target Volatile Mutation
step
    #label Area1
    >>Target Draenei Survivor in the Area and then use your racial ability Gift of the Naaru on them from range
    .goto 468,47.05,25.98,20,0
    .goto 468,56.00,29.87
    .complete 9283,1 --1/1 Draenei Survivors Saved
    .unitscan Draenei Survivor
step
    .goto 468,52.47,31.08,25,0
	.goto 468,50.96,26.54,25,0
	.goto 468,49.20,26.20,25,0
	.goto 468,44.84,30.01,25,0
	.goto 468,52.47,31.08
    >>Kill Volatile Mutations in the Area
    .complete 10302,1 --8/8 Volatile Mutation slain
	.target Volatile Mutation
step
    #requires Area1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Botanist Taerix
    .goto 468,49.87,37.34
    .turnin 10302 >>Turn in Volatile Mutations
    .accept 9293 >>Accept What Must Be Done...
	.target Botanist Taerix
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Apprentice Vishael
    .goto 468,49.72,37.51
    .accept 9799 >>Accept Botanical Legwork
	.target Apprentice Vishael
step
    >>Kill Mutated Root Lashers. Loot them for their Lasher Samples
	>>Loot Corrupted Flowers in the Area
    .goto 468,39.29,41.01,25,0
	.goto 468,35.80,40.46,25,0
	.goto 468,34.41,48.05,25,0
	.goto 468,38.09,49.51,25,0
    .goto 468,39.29,41.01
    .complete 9293,1 --10/10 Lasher Sample
    .complete 9799,1 --3/3 Corrupted Flower
	.target Root Lasher
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Apprentice Vishael
    .goto 468,49.72,37.54
    .turnin 9799 >>Turn in Botanical Legwork
	.target Apprentice Vishael
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Botanist Taerix
    .goto 468,49.87,37.34
    .turnin 9293 >>Turn in What Must Be Done...
    .accept 9294 >>Accept Healing the Lake
	.target Botanist Taerix
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Zalduun
    .goto 468,52.33,36.76,15,0
    .goto 468,51.97,42.21
    .turnin 9283 >>Turn in Rescue the Survivors!
	.target Zalduun
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Technician Zhanaa
    .goto 468,50.52,47.93
    .accept 37445 >>Accept Spare Parts
	.target Technician Zhanaa
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Vindicator Aldar
    .goto 468,50.65,48.76
    .accept 37444 >>Accept Inoculation
	.target Vindicator Aldar
step
    #sticky
    #completewith QuestKeybindingsDraenei
    +If you want to make the most of RXP; Press Escape -> Options -> Keybindings -> RestedXP Guides -> Select and Bind Active Button 1,2,3 and 4
    *This will allow you to press a keybind to use a Quest Item rather than manually clicking it
step
    #label QuestKeybindingsDraenei
    >>Use the Neutralizing Agent in your Bags in the Water near the Irradiated Power Crystal
    .use 22955
    .goto 468,46.36,63.99
    .complete 9294,1 --1/1 Disperse the Neutralizing Agent
step
    #completewith next
    >>Use the Inoculating Crystal in your bags on Nestlewood Owlkins
    .use 22962 
    .complete 37444,1 --6/6 Nestlewood Owlkin inoculated
	.target Nestlewood Owlkin
step
    >>Loot the Violet Crystals in the Area
    .goto 468,55.91,66.37,10,0
    .goto 468,58.26,70.67,10,0
    .goto 468,61.21,78.37
    .complete 37445,1 --4/4 Emitter Spare Part
step
    >>Use the Inoculating Crystal in your bags on Nestlewood Owlkins
    .use 22962
    .goto 468,55.91,66.37,10,0
    .goto 468,58.26,70.67,10,0
	.goto 468,62.13,85.75,15,0
	.goto 468,65.01,84.99,15,0
	.goto 468,65.63,77.91,15,0
	.goto 468,71.23,71.71,15,0
    .goto 468,61.21,78.37
    .complete 37444,1 --6/6 Nestlewood Owlkin inoculated
	.target Nestlewood Owlkin
step
    #completewith next
    >>RXP Guides often use Deathskips to quickly go to a desired Location
    .deathskip >> Die and respawn at the Crash Site
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Botanist Taerix
    .goto 468,49.86,37.36
    .turnin 9294 >>Turn in Healing the Lake
	.target Botanist Taerix
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Technician Zhanaa
    .goto 468,50.5,47.9
    .turnin 37445 >>Turn in Spare Parts
	.target Technician Zhanaa
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Vindicator Aldar
    .goto 468,50.6,48.7
    .turnin 10304 >>Turn in Vindicator Aldar
    .turnin 37444 >>Turn in Inoculation
    .accept 9309 >>Accept The Missing Scout
	.target Vindicator Aldar
step << Hunter
    #completewith next
	>>Drag |T132161:0|tCall Pet and |T132179:0|tPet Utility onto your Action Bars
	.goto 468,46.38,53.38,25,0
	.goto 468,40.09,58.16,50 >>Cast |T132164:0|tTame Beast on a Vale Moth to tame it
	.target Vale Moth
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Tolaan
    .goto 468,33.91,69.36
    .turnin 9309 >>Turn in The Missing Scout
    .accept 10303 >>Accept The Blood Elves
	.target Tolaan
step
    >>Kill the Blood Elf Scouts in the Area
    .goto 468,33.0,73.9
    .complete 10303,1 --10/10 Blood Elf Scout slain
	.target Blood Elf Scout
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Tolaan
    .goto 468,33.91,69.36
    .turnin 10303 >>Turn in The Blood Elves
    .accept 9311 >>Accept Blood Elf Spy
	.target Tolaan
step
    >>Kill Surveyor Candress. Loot her for her Blood Elf Plans
    .goto 468,27.8,80.41
    .complete 9311,1 --1/1 Surveyor Candress slain
	.use 24414 >>Right click on Blood Elf Plans in your bags
    .accept 9798 >>Accept Blood Elf Plans
	.target Surveyor Candress
step
    #completewith next
    .deathskip >> Die and respawn at the Crash Site
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Vindicator Aldar
    .goto 468,50.66,48.75
    .turnin 9311 >>Turn in Blood Elf Spy 
    .turnin 9798 >>Turn in Blood Elf Plans
    .accept 9312 >>Accept The Emitter
	.target Vindicator Aldar
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Technician Zhanaa
    .goto 468,50.69,47.51
    .turnin 9312 >>Turn in The Emitter
    .accept 9313 >>Accept Travel to Azure Watch
	.target Technician Zhanaa
]])
