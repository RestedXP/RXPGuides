RXPGuides.RegisterGuide([[
#df
#version 2
#group RestedXP Starting Zones
#subgroup Night Elf Starting Zones
#name 2Retail-Alliance-Night Elf_Shadowglen
#displayname Chapter 1 - Shadowglen
#next 3Retail-Alliance-Night Elf_Teldrassil
#defaultfor NightElf

<<Alliance !DemonHunter !DK 

step
    .goto 460,45.61,74.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ilthalaine|r
    .accept 28713 >>Accept The Balance of Nature
	.target Ilthalaine
step
    .goto 460,42.44,76.29,20,0
    .goto 460,46.63,79.57,20,0
    .goto 460,50.63,76.87,20,0
    .goto 460,42.44,76.29
    >>Kill |cRXP_ENEMY_Young Nightsabers.|r
    .complete 28713,1 --6/6 Young Nightsaber slain
	.mob Young Nightsaber
step
    .goto 460,45.62,74.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ilthalaine|r
    .turnin 28713 >>Turn in The Balance of Nature
    .accept 28714 >>Accept Fel Moss Corruption
	.target Ilthalaine
step
    .goto 460,45.94,72.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Melithar Staghelm|r
    .accept 28715 >>Accept Demonic Thieves
	.target Melithar Staghelm
step
    #completewith next
    >>Kill |cRXP_ENEMY_Grell|r, |cRXP_ENEMY_Grellkin|r and loot them for their |cRXP_LOOT_Fel Moss.|r
    .complete 28714,1 --6/6 Fel Moss
	.mob Grell
	.mob Grellkin
step
    .goto 460,36.66,79.84,15,0
    .goto 460,34.82,80.53,15,0
    .goto 460,31.70,74.85,15,0
    .goto 460,30.66,70.55,20,0
    .goto 460,36.66,79.84
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick |cRXP_PICK_Melithar's Stolen Bags|r
    .complete 28715,1 --5/5 Melithar's Stolen Bags
step
    .goto 460,36.66,79.84,15,0
    .goto 460,34.82,80.53,15,0
    .goto 460,31.70,74.85,15,0
    .goto 460,30.66,70.55,20,0
    .goto 460,36.66,79.84
    >>Kill |cRXP_ENEMY_Grell|r, |cRXP_ENEMY_Grellkin|r and loot them for their |cRXP_LOOT_Fel Moss.|r
    .complete 28714,1 --6/6 Fel Moss
	.mob Grell
	.mob Grellkin
step
    .goto 460,45.93,72.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Melithar Staghelm|r
    .turnin 28715 >>Turn in Demonic Thieves
	.target Melithar Staghelm
step
    .goto 460,46.28,73.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ilthalaine|r
    .turnin 28714 >>Turn in Fel Moss Corruption
    .accept 28723 >>Accept Priestess of the Moon
	.target Ilthalaine
step
    .goto 460,42.49,50.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dentaria Silverglade|r
    .turnin 28723 >>Turn in Priestess of the Moon
    .accept 28724 >>Accept Iverron's Antidote
	.target Dentaria Silverglade
step
    .goto 460,41.87,49.37,5,0
    .goto 460,40.77,47.27,5,0
    .goto 460,39.54,52.27,5,0
    .goto 460,40.18,52.64,5,0
    .goto 460,40.80,53.32,5,0
    .goto 460,42.28,52.68,5,0
    .goto 460,43.60,51.83,5,0
    .goto 460,41.87,49.37
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Moonpetal Lilies|r
    .complete 28724,1 -- 7/7 Moonpetal Lily
step
    .goto 460,42.49,50.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dentaria Silverglade|r
    .turnin 28724 >>Turn in Iverron's Antidote
    .accept 28725 >>Accept The Woodland Protector
	.target Dentaria Silverglade
step
	#completewith next
	.goto 58,44.87,88.5,5 >> Enter the |cFFfa9602Cave|r  then wait for |cRXP_FRIENDLY_Tarindrella|r to appear
step
    .goto 58,44.87,88.5
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tarindrella|r at the arrow location. She will appear after a couple seconds.
    .turnin 28725 >>Turn in The Woodland Protector
    .accept 28726 >>Accept Webwood Corruption
	.target Tarindrella
step
    .goto 58,39.44,34.72 <<Hunter
    .goto 58,41.27,33.22,10,0 <<!Hunter
    .goto 58,34.81,15.50,15,0 <<!Hunter
    .waypoint 58,46.33,41.34,-30,0
    >>Kill |cRXP_ENEMY_Spiders|r |cFFfa9602within the Cave.|r
    >>By using Disengage across the Gap at the Waypoint Location you can save some Time <<Hunter
    >>Make sure that if you do it you don't kill |cRXP_ENEMY_Githyiss the Vile|r because you need him shortly after << Hunter
    .complete 28726,1 --12/12 Webwood Spider slain
	.mob Webwood Spider
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tarindrella|r next to you.
    .turnin 28726 >>Turn in Webwood Corruption
    .accept 28727 >>Accept Vile Touch
	.target Tarindrella
step
    .goto 58,34.56,23.87,0 << !Hunter
    .goto 58,42.81,19.50,10,0 << !Hunter
    .goto 58,45.02,31.37
    >>Kill |cRXP_ENEMY_Githyiss the Vile.|r
    .complete 28727,1 --1/1 Githyiss the Vile slain
	.mob Githyiss the Vile
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tarindrella|r next to you
    .turnin 28727,1 >>Turn in Vile Touch
    .accept 28728 >>Accept Signs of Things to Come
	.target Tarindrella
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dentaria Silverglade|r
    .goto 460,42.50,50.50
    .turnin 28728 >>Turn in Signs of Things to Come
    .accept 28729 >>Accept Teldrassil: Crown of Azeroth
	.target Dentaria Silverglade
step
    #completewith next
    +|cRXP_WARN_To enable keybinding for quest items, follow these steps:|r
    *[1] Press the |cRXP_WARN_Escape key.|r 
    *[2] Select |cRXP_WARN_Options.|r
    *[3] Navigate to |cRXP_WARN_Keybindings.|r
    *[4] Within |cRXP_WARN_Keybindings|r, find |cRXP_WARN_RestedXP Guides.|r
    *[5] Select and bind the |cRXP_WARN_Active Buttons.|r
step << Hunter
	#completewith next
    .goto 460,46.36,41.86,30,0
	.goto 460,51.93,37.12,60 >>Cast |T132164:0|tTame Beast on a Mangy Nightsaber to tame it
	>>Drag |T132161:0|tCall Pet and |T132179:0|tPet Utility onto your Action Bars
	.target Mangy Nightsaber
step
    .goto 460,50.13,34.49
    >>Use the |T967530:0|t[Crystal Phial] |cFFfa9602near the Moonwell.|
    .use 5185
    .complete 28729,1 --1/1 Filled Crystal Phial
step
    .goto 460,42.49,50.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dentaria Silverglade|r
    .turnin 28729 >>Turn in Teldrassil: Crown of Azeroth
    .accept 28730 >>Accept Precious Waters
	.target Dentaria Silverglade
step
    .goto 460,41.85,63.54,15,0
    .goto 460,46.45,53.43,15,0
    .goto 460,44.44,56.47,15,0
    .goto 460,45.20,60.69,15,0
    .goto 460,48.01,58.75,15,0
    .goto 460,48.14,54.36,15,0
    .goto 460,47.16,55.95
    >>Walk up the ramp of the Tree
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tenaron Stormgrip|r
    .turnin 28730 >>Turn in Precious Waters
    .accept 28731 >>Accept Teldrassil: Passing Awareness
	.target Tenaron Stormgrip
step
    .goto 460,54.57,84.78
	>>Jump off the Tree. You have a slowfall buff so you won't die
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Porthannius|r
    .accept 2159 >>Accept Dolanaar Delivery
	.target Porthannius
]])

RXPGuides.RegisterGuide([[
#df
#version 2
#group RestedXP Starting Zones
#subgroup Night Elf Starting Zones
#displayname Chapter 2 - Teldrassil
#name 3Retail-Alliance-Night Elf_Teldrassil
#next Alliance 10-60\1A_Elwynn Forest
#defaultfor NightElf

<<Alliance !DemonHunter !DK

step
    .goto 57,59.56,49.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zenn Foulhoof.|r
    .accept 488 >>Accept Zenn's Bidding
	.target Zenn Foulhoof
step
    #completewith next
    >>Kill |cRXP_ENEMY_Webwood Lurkers|r, |cRXP_ENEMY_Nightsabers|r and |cRXP_ENEMY_Strigid Owls|r and loot them for their |cRXP_LOOT_Nightsaber Fangs,|r, |cRXP_LOOT_Strigid Owl Feathers|r and |cRXP_LOOT_ Webwood Spider Silks.|r
	>>|cRXP_WARN_You will get another opportunity to complete this task soon.|r
    .complete 488,1 --2/2 Nightsaber Fang
    .complete 488,2 --2/2 Strigid Owl Feather
    .complete 488,3 --2/2 Webwood Spider Silk
	.mob Nightsaber Fang
	.mob Strigid Owl Feather
	.mob Webwood Spider Silk
step
    .goto 57,55.56,49.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tallonkai Swiftroot.|r
    .accept 2438 >>Accept The Emerald Dreamcatcher
	.target Tallonkai Swiftroot
step
    #completewith next
    .goto 57,55.48,50.43
    .fp >>Get |cFFfa9602the Dolanaar Flight Path.|r
	.target Fidelio
step
    .goto 57,55.70,51.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Athridas Bearmantle.|r
    .accept 475 >>Accept A Troubling Breeze
	.target Athridas Bearmantle
step
    .goto 57,55.37,52.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Keldamyr.|r
    .turnin 2159,1 >>Turn in Dolanaar Delivery
	.target Innkeeper Keldamyr
step
    #completewith next
    .goto 57,55.36,52.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Keldamyr.|r
    .home >>Set your Hearthstone to Dolanaar
	.target Innkeeper Keldamyr
step
	#completewith next
    .goto 57,56.00,52.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Iranis Shadebloom.|r
    .train 2366 >> Train |T4620675:0|tHerbalism
	.skipgossip 47420,1,1,1
	.target Iranis Shadebloom
step
    .goto 57,56.00,52.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Iranis Shadebloom.|r
    .train 2575 >> Train |T4620679:0|tMining
	.skipgossip 47420,2,3,2
	.target Iranis Shadebloom
step
    .goto 57,55.82,53.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corithras Moonrage.|r
    .turnin 28731 >>Turn in Teldrassil: Passing Awareness
    .accept 929 >>Accept Teldrassil: The Refusal of the Aspects
	.target Corithras Moonrage
step
    .goto 57,56.74,53.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nyoma.|r
    .accept 6344 >>Accept Reminders of Home
	.target Nyoma
step
    #completewith TeldrassilEmeraldDreamcatcher
    >>Kill |cRXP_ENEMY_Webwood Lurkers|r, |cRXP_ENEMY_Nightsabers|r and |cRXP_ENEMY_Strigid Owls|r and loot them for their |cRXP_LOOT_Nightsaber Fangs,|r, |cRXP_LOOT_Strigid Owl Feathers|r and |cRXP_LOOT_ Webwood Spider Silks.|r
    .complete 488,1 --2/2 Nightsaber Fang
    .complete 488,2 --2/2 Strigid Owl Feather
    .complete 488,3 --2/2 Webwood Spider Silk
	.mob Nightsaber Fang
	.mob Strigid Owl Feather
	.mob Webwood Spider Silk	
step
    #completewith next
    +|cRXP_WARN_To enable keybinding for quest items, follow these steps:|r
    *[1] Press the |cRXP_WARN_Escape key.|r 
    *[2] Select |cRXP_WARN_Options.|r
    *[3] Navigate to |cRXP_WARN_Keybindings.|r
    *[4] Within |cRXP_WARN_Keybindings|r, find |cRXP_WARN_RestedXP Guides.|r
    *[5] Select and bind the |cRXP_WARN_Active Buttons.|r
step
    .goto 57,61.92,50.69
    >>Use the |T967530:0|t[Jade Phial] |cFFfa9602next to the Moonwell.|r
    .complete 929,1 --1/1 Filled Jade Phial
    .use 5619
step
    #completewith next
    +Check for the Treasure Chest |cFFfa9602inside the House.|r
step
    .goto 57,64.73,51.70,5,0
    .goto 57,64.90,51.61,5,0
    .goto 57,64.59,51.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gaerolas Talvethren.|r
    .turnin 475 >>Turn in A Troubling Breeze
    .accept 476 >>Accept Gnarlpine Corruption
	.target Gaerolas Talvethren
step
    #completewith next
    +Check for |cRXP_ENEMY_Uruson(Rare)|r patrolling |cFFfa9602between the Houses.|r
	.unitscan Uruson
step
    #label TeldrassilEmeraldDreamcatcher
    .goto 57,66.10,52.10
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Tailonkai's Dresser.|r
    .complete 2438,1 --1/1 Emerald Dreamcatcher
step
    #completewith next
    .goto 57,64.51,50.46,20,0
    .deathskip >> Die and respawn |cFFfa9602at the Spirit Healer.|r
step
    .goto 57,55.82,53.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corithras.|r
    .turnin 929 >>Turn in Teldrassil: The Refusal of the Aspects
	.target Corithras
step
    .goto 57,55.69,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Athridas.|r
    .turnin 476 >>Turn in Gnarlpine Corruption
	.target Athridas
step
    .goto 57,55.56,50.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tallonkai.|r
    .turnin 2438 >>Turn in The Emerald Dreamcatcher
    .accept 2459 >>Accept Ferocitas the Dream Eater
	.target Tallonkai
step
    .isQuestComplete 488
    .goto 57,59.52,49.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zenn Foulhoof.|r
    .turnin 488 >>Turn in Zenn's Bidding
	.target Zenn Foulhoof
step
    .goto 57,57.48,48.54,40,0
    .goto 57,58.21,49.79,40,0
    .goto 57,58.23,52.16,40,0
    .goto 57,59.97,53.47,40,0
    .goto 57,61.28,51.69,40,0
    .goto 57,60.21,50.03,40,0
    .goto 57,57.48,48.54
    >>Kill |cRXP_ENEMY_Webwood Lurkers|r, |cRXP_ENEMY_Nightsabers|r and |cRXP_ENEMY_Strigid Owls|r and loot them for their |cRXP_LOOT_Nightsaber Fangs,|r, |cRXP_LOOT_Strigid Owl Feathers|r and |cRXP_LOOT_ Webwood Spider Silks.|r
    .complete 488,1 --2/2 Nightsaber Fang
    .complete 488,2 --2/2 Strigid Owl Feather
    .complete 488,3 --2/2 Webwood Spider Silk
	.mob Nightsaber Fang
	.mob Strigid Owl Feather
	.mob Webwood Spider Silk
step
    #completewith Ferocitas
    +Check for the Treasure Chest |TInterface/cursor/crosshair/interact.blp:20|t |cFFfa9602near Ferocitas.|r
	.unitscan Ferocitas
step
    #completewith next
    >>Kill |cRXP_ENEMY_Gnarlpine Mystics.|r
    .complete 2459,1 --7/7 Gnarlpine Mystic slain
	.mob Gnarlpine Mystic
step
    #label Ferocitas
    .goto 57,67.26,46.83
    >>Kill |cRXP_ENEMY_Ferocitas the Dream Eater|r and loot him for |cRXP_LOOT_Tallonkai's Jewel.|r
    .complete 2459,2 --1/1 Tallonkai's Jewel
	.mob Ferocitas the Dream Eater
step	
    .goto 57,66.88,46.87,40,0
    .goto 57,65.76,46.40,40,0
    .goto 57,65.75,44.83,40,0
    .goto 57,67.26,46.83
    >>Kill |cRXP_ENEMY_Gnarlpine Mystics|r 
    >>|cRXP_WARN_Get low health once almost complete. You will deathskip after.|r
    .complete 2459,1 --7/7 Gnarlpine Mystic slain
	.mob Gnarlpine Mystic
step
    #completewith next
    .goto 57,66.13,45.25,25,0
    .deathskip >> Die and respawn |cFFfa9602at the Spirit Healer.|r
step
    .goto 57,55.55,49.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tallonkai Swiftroot.|r
    .turnin 2459 >>Turn in Ferocitas the Dream Eater
	.target Tallonkai Swiftroot
step
    .goto 57,55.72,50.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Syral Bladeleaf.|r
    .accept 489 >>Accept Seek Redemption!
	.target Syral Bladeleaf
step
    .goto 57,55.94,55.82,20,0
    .goto 57,55.30,56.98,20,0
    .goto 57,55.32,57.04,20,0
    .goto 57,54.22,53.89,20,0
    .goto 57,56.51,55.80,20,0
    .goto 57,57.18,55.55,20,0
    .goto 57,55.94,55.82
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Fel Cones.|r
    .complete 489,1 --3/3 Fel Cone
step
    .goto 57,55.47,50.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fidelio.|r
    .turnin 6344 >>Turn in Reminders of Home
    .accept 6341 >>Accept To Darnassus
	.target Fidelio
step
    #completewith next
    .goto 57,55.47,50.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fidelio.|r
    .fly Darnassus >>Fly to Darnassus
	.target Fidelio
step
    .goto 89,36.10,53.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sister Aquinne.|r
    >>|cRXP_WARN_Avoid walking into the Purple Zone.|r
    .turnin 6341 >>Turn in To Darnassus
    .accept 6342 >>Accept An Unexpected Gift
	.target Sister Aquinne
step
    .goto 89,36.59,47.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Leora.|r
    .turnin 6342 >>Turn in An Unexpected Gift
    .accept 6343 >>Accept Return to Nyoma
    .target Leora
step
    #completewith next
    .goto 89,36.48,50.08,10,0
    .goto 57,55.42,88.39
    >>Walk into the |cFFfa9602Purple Portal.|r
    .fp >>Get the Rut'theran Village Flight Path
step
	#completewith next
    .goto 57,55.42,88.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vesprystus.|r
    .fly Lor'danel >>Fly to Lor'danel
	.target Vesprystus
step
    .goto 62,51.78,18.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dentaria Silverglade.|r
    .accept 13518 >>Accept The Last Wave of Survivors
	.target Dentaria Silverglade
step
    .goto 62,50.92,18.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nyrisse.|r 
    .vendor 43439 >> |cRXP_WARN_Vendor and Repair.|r
	.target Nyrisse
step
    .goto 62,50.22,19.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ranger Glynda Nal'Shea.|r
    .accept 13522 >>Accept Threat from the Water
	.target Ranger Glynda Nal'Shea
step
    #completewith finalrescue
    >>Kill |cRXP_ENEMY_Vile Spray.|r
    .complete 13522,1 --8/8 Vile Spray slain
	.mob Vile Spray
step
    .goto 62,45.02,18.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Volcor.|r
    .complete 13518,4 --1/1 Volcor rescued
	.target Volcor
step
    .goto 62,44.11,17.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gershala.|r
    .complete 13518,2 --1/1 Gershala Nightwhisper rescued
	.target Gershala Nightwhisper
step
    .goto 62,44.58,19.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Whiteclaw.|r
    .complete 13518,1 --1/1 Cerellean Whiteclaw rescued
	.target Cerellean Whiteclaw
step
	#label finalrescue
    .goto 62,42.91,21.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shaldyn.|r
    .complete 13518,3 --1/1 Shaldyn rescued
	.target Shaldyn
step
    .goto 62,46.22,17.15,40,0
    .goto 62,44.85,17.07
    .goto 62,44.06,20.31
    .goto 62,42.91,21.51
    .goto 62,46.22,17.15
    >>Kill |cRXP_ENEMY_Vile Spray.|r
    .complete 13522,1 --8/8 Vile Spray slain
	.target Vile Spray
step
    .goto 62,50.21,19.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ranger Glynda Nal'Shea.|r
    .turnin 13522 >>Turn in Threat from the Water
	.target Ranger Glynda Nal'Shea
step
    .goto 62,51.78,17.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dentaria Silverglade.|r
    .turnin 13518 >>Turn in The Last Wave of Survivors
	.target Dentaria Silverglade
step
    .goto 62,51.8,18.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Serendia.|r
    .accept 13520 >>Accept The Boon of the Seas
	.target Serendia
step
    .goto 62,51.14,19.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wizbang Cranktoggle.|r
    .accept 13521 >>Accept Buzzbox 413
	.target Wizbang Cranktoggle
step
    #completewith next
    >>Kill |cRXP_ENEMY_Corrupted Tide Crawlers|r and loot them for their |cRXP_LOOT_Corrupted Tide Crawler Flesh.|r
    .complete 13521,1 --4/4 Corrupted Tide Crawler Flesh
	.mob Corrupted Tide Crawler
step
    .goto 62,52.41,19.60,20,0
    .goto 62,52.50,16.62,20,0
    .goto 62,52.57,17.53,20,0
    .goto 62,53.18,18.53,20,0
    .goto 62,52.41,19.60
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Encrusted Clam Muscle.|r
    .complete 13520,1 --16/16 Encrusted Clam Muscle
step
    .goto 62,52.41,19.60,20,0
    .goto 62,52.50,16.62,20,0
    .goto 62,52.57,17.53,20,0
    .goto 62,53.18,18.53,20,0
    .goto 62,52.41,19.60
    >>Kill |cRXP_ENEMY_Corrupted Tide Crawlers|r and loot them for their |cRXP_LOOT_Corrupted Tide Crawler Flesh.|r
    .complete 13521,1 --4/4 Corrupted Tide Crawler Flesh
	.mob Corrupted Tide Crawler
step
    .goto 62,53.24,19.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Buzzbox 413.|r
    .turnin 13521 >>Turn in Buzzbox 413
    .accept 13527 >>Accept No Accounting for Taste
step
    .goto 62,55.1,21.0
    >>|TInterface/cursor/crosshair/interact.blp:20|tInteract with the |cRXP_ENEMY_Decomposing Thistle Bear.|r
    .complete 13527,1 --1/1 Foul Bear Carcass Sample
	.target Decomposing Thistle Bear
step
    .goto 62,51.17,19.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wizbang Cranktoggle.|r
    .turnin 13527 >>Turn in No Accounting for Taste
    .accept 13528 >>Accept Buzzbox 723
	.target Wizbang Cranktoggle
step
    .goto 62,52.96,25.46,40,0
    .goto 62,54.02,25.28,40,0
    .goto 62,55.73,23.95,40,0
    .goto 62,54.87,27.67,40,0
    .goto 62,52.96,25.46
    >>Kill |cRXP_ENEMY_Bears|r and loot them for their |cRXP_LOOT_Corrupted Thistle Bear Guts.|r
    .complete 13528,1 --6/6 Corrupted Thistle Bear Guts
	.mob Corrupted Thistle Bear
	.mob Corrupted Thistle Bear Matriarch
	.mob Thistle Bear Cub
step
    .goto 62,54.17,29.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Buzzbox 723.|r
    .turnin 13528 >>Turn in Buzzbox 723
    .accept 13554 >>Accept A Cure In The Dark
step
    #label itall
    .goto 62,56.26,27.41,40,0
    .goto 62,56.78,30.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tharnariun.|r
    .accept 13529 >>Accept The Corruption's Source
	.target Tharnariun
step
    #completewith next
	>>Kill |cRXP_ENEMY_Vile Grells|r and |cRXP_ENEMY_Vile Corrupters|r and loot them for |cRXP_LOOT_Foul Ichor|r and the |cRXP_LOOT_Corruptor's Master Key.|r
	>>|cRXP_WARN_Check for |cRXP_ENEMY_Licillin(Rare|r) as you quest.|r
    .complete 13554,1 --6/6 Foul Ichor
    .complete 13529,2 --8/8 Vile Grell slain	
	.collect 44927,1,13557	
	>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Corruptor's Master Key.|r
    .accept 13557 >>Accept Bearer of Good Fortune
    .use 44927 
	.mob Vile Grell
	.mob Vile Corruptor
	.unitscan Licillin
step
    .goto 62,57.51,32.31,15,0
    .goto 62,58.58,32.24,15,0
    .goto 62,58.13,32.84,15,0
    .goto 62,57.34,33.00,15,0
    .goto 62,57.17,32.12,15,0
    .goto 62,56.97,32.66,15,0
    .goto 62,56.58,33.64,15,0
    .goto 62,57.10,34.18
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Cages|r |cFFfa9602throughout the Cave.|r
	.complete 13557,1
step
    .goto 62,58.41,33.08
    >>Kill |cRXP_ENEMY_Zenn|r |cFFfa9602inside the Cave.|r
    >>|cRXP_WARN_Check for a chest next to him. It may not be there.|r
    .complete 13529,1 --1/1 Zenn Foulhoof slain
	.mob Zenn Foulhoof
step
    .goto 62,57.51,32.31,30,0
    .goto 62,58.58,32.24,30,0
    .goto 62,58.13,32.84,30,0
    .goto 62,57.34,33.0,30,0
    .goto 62,57.17,32.12,30,0
    .goto 62,56.97,32.66,30,0
    .goto 62,56.58,33.64,30,0
    .goto 62,57.10,34.18
    >>Kill |cRXP_ENEMY_Vile Grells|r and |cRXP_ENEMY_Vile Corrupters|r and loot them for |cRXP_LOOT_Foul Ichor|r and the |cRXP_LOOT_Corruptor's Master Key.|r
    >>|cRXP_WARN_Check for |cRXP_ENEMY_Licillin(Rare|r) as you quest.|r
    .complete 13554,1 --6/6 Foul Ichor
    .complete 13529,2 --8/8 Vile Grell slain	
	.collect 44927,1,13557	
	>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Corruptor's Master Key.|r
    .accept 13557 >>Accept Bearer of Good Fortune	
	.mob Vile Grell
	.mob Vile Corrup
	.unitscan Licillin	
    .use 44927 
step
    .goto 62,56.79,33.52,20,0
    .goto 62,57.43,33.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tClick on the |cRXP_PICK_Disgusting Workbench|r |cFFfa9602in the back of the cave.|r
    .accept 13831 >>Accept A Troubling Prescription  
step
    #completewith next
    .deathskip >> Die and respawn |cFFfa9602rat the Spirit Healer.|
step
    #completewith next
    #requires itall
    .goto 62,51.13,19.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tharnariun Treetender.|r
    .turnin 13557 >>Turn in A Troubling Prescription
    .turnin 13831 >>Turn in A Troubling Prescription
    .turnin 13529 >>Turn in The Corruption's Source
	.target Tharnariun Treetender
step
    .goto 62,51.14,19.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wizbang.|r
    .turnin 13554 >>Turn in A Cure In The Dark
	.target Wizbang
step
    .goto 62,50.90,18.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Serendia Oakwhisper|r |cFFfa9602patrolling up and down the stairs in the Inn.|r
    .turnin 13520 >>Turn in The Boon of the Seas
	.target Serendia Oakwhisper
step
    #completewith next
    .hs >>Hearth |cFFfa9602to Dolanaar.|r
step
    .goto 57,56.73,53.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nyoma.|r
    .turnin 6343 >>Turn in Return to Nyoma
	.target Nyoma
step
    .goto 57,59.51,49.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zenn Foulhoof.|r
    .turnin 489 >>Turn in Seek Redemption!
	.target Zenn Foulhoof
step
	#completewith next
    .goto 57,55.49,50.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fidelio.|r
    .fly Darnassus >>Fly |cFFfa9602to Darnassus|r
	.target Fidelio
step
    #veteran
    .goto 89,56.58,60.73,10,0
    .goto 89,54.82,59.18
    +The Darkmoon Faire event is now active, |cRXP_WARN_which guarantees you to gain an additional level for free and a temporary 10% experience boost.|r You'll need to purchase |cRXP_WARN_certain items from the auction house to take full advantage of this.|r If necessary,|cRXP_WARN_you can transfer gold from your other characters to make these purchases.|r However, if you find that you can't afford everything, |cRXP_WARN_It's still worthwhile to visit the Darkmoon Faire for the temporary experience buff and to buy only some of the items.|r
    >>|cRXP_WARN_It is recommended to log in with a different character possessing at least 10,000 gold. Use this character to purchase the items and then send them over.|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Auctioneer.|r
    .collect 71715,1
    .collect 71638,1
    .collect 71637,1
    .collect 71636,1
    .collect 71635,1
    .collect 71952,1
    .collect 71951,1
    .collect 71953,1
    .collect 71716,1
    .target Auctioneer Tolon
    .target Auctioneer Golothas
    .target Auctioneer Cazarez
    .target Auctioneer Golothas
step
    #fresh
    #completewith DarkMoonFaire
    +The Darkmoon Faire event is now active, |cRXP_WARN_which guarantees you to gain an additional level for free and a temporary 10% experience boost.|r
step
    #completewith next
    .link /run AbandonSkill(186); AbandonSkill(182);>> |cRXP_WARN_Click this text to receive a macro that will unlearn your professions.|r
    .dmf
step
    #label DarkMoonFaire
    .goto 89,38.58,49.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darkmoon Faire Mystic Mage.|r
    .accept 7905 >>Accept The Darkmoon Faire
	.target Darkmoon Faire Mystic Mage
    .dmf
step 
    .goto 89,38.58,49.38
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darkmoon Faire Mystic Mage.|r
    .skipgossip
    .zoneskip 37
    .dmf
	.target Darkmoon Faire Mystic Mage
step 
    #completewith next
    .goto 89,36.58,49.23,20 >>Walk |cFFfa9602into the Purple Zone|r to get teleported.
    .zoneskip 97
    .nodmf
step 
    .goto 57,52.28,89.47,5 >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Exodar Portal.|r
    .zoneskip 97
    .nodmf
step 
    .goto 103,41.87,72.93,10 >>Enter |cFFfa9602Exodar City|r and |cFFfa9602go down the Spiral Staircase.|r
    .goto 103,48.33,62.94,10 >>Click the |cRXP_PICK_Stormwind Portal|r
    .zoneskip 84
    .nodmf
step 
	.goto 84,62.81,71.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hero's Herald.|r
    .accept 46727 >>Accept Tides of War
	.target Hero's Herald
    .nodmf
step 
    .nodmf
	.goto 84,63.76,73.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Renato Gallina.|r
    .accept 332 >>Accept Wine Shop Advert
	.target Renato Gallina
step 
    .nodmf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bartlett the Brave|r |cFFfa9602in Goldshire.|r
    .goto 37,41.71,64.64
    .fp >>Get the Goldshire Flight Path
	.target Bartlett the Brave
]])
