RXPGuides.RegisterGuide([[
#df
#version 1
#group RestedXP Starting Zones
#subgroup Night Elf Starting Zones
#displayname Chapter2-Night Elf_Teldrassil
#name 3Retail-Alliance-Night Elf_Teldrassil
#next RestedXP Alliance 10-60\1A_Elwynn Forest
#defaultfor NightElf

<<Alliance !DemonHunter !DK

step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Zenn Foulhoof
    .goto 57,59.56,49.09
    .accept 488 >>Accept Zenn's Bidding
	.target Zenn Foulhoof
step
    #completewith next
	>>Run to Dolanaar
    >>Kill Webwood Lurkers, Nightsabers and Strigid Owls along the way. Loot them for their Fangs, Feathers and Silk
	>>You will have to chance to finish this shortly
    .complete 488,1 --2/2 Nightsaber Fang
    .complete 488,2 --2/2 Strigid Owl Feather
    .complete 488,3 --2/2 Webwood Spider Silk
	.target Nightsaber Fang
	.target Strigid Owl Feather
	.target Webwood Spider Silk
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Tallonkai Swiftroot
    .goto 57,55.56,49.99
    .accept 2438 >>Accept The Emerald Dreamcatcher
	.target Tallonkai Swiftroot
step
    #completewith next
    .goto 57,55.48,50.43
    .fp >>Get the Dolanaar Flight Path
	.target Fidelio
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Athridas Bearmantle
    .goto 57,55.70,51.99
    .accept 475 >>Accept A Troubling Breeze
	.target Athridas Bearmantle
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Innkeeper Keldamyr
    .goto 57,55.37,52.23
    .turnin 2159,1 >>Turn in Dolanaar Delivery
	.target Innkeeper Keldamyr
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Innkeeper Keldamyr
    #completewith next
    .goto 57,55.36,52.23
    .home >>Set your Hearthstone to Dolanaar
	.target Innkeeper Keldamyr
step
	#completewith next
    .goto 57,56.00,52.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Iranis
    .train 2366 >> Train |T4620675:0|tHerbalism
	.skipgossip 47420,1,1,1
	.target Iranis
step
    .goto 57,56.00,52.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Iranis
    .train 2575 >> Train |T4620679:0|tMining
	.skipgossip 47420,2,3,2
	.target Iranis
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Corithras Moonrage
    .goto 57,55.82,53.91
    .turnin 28731 >>Turn in Teldrassil: Passing Awareness
    .accept 929 >>Accept Teldrassil: The Refusal of the Aspects
	.target Corithras Moonrage
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Nyoma
    .goto 57,56.74,53.51
    .accept 6344 >>Accept Reminders of Home
	.target Nyoma
step
    #completewith TeldrassilEmeraldDreamcatcher
    >>Kill Webwood Lurkers, Nightsabers and Strigid Owls. Loot them for their Fangs, Feathers and Silk
	>>You will have to chance to finish this later if you don't now
    .complete 488,1 --2/2 Nightsaber Fang
    .complete 488,2 --2/2 Strigid Owl Feather
    .complete 488,3 --2/2 Webwood Spider Silk
	.target Nightsaber Fang
	.target Strigid Owl Feather
	.target Webwood Spider Silk	
step
    #sticky
    #completewith QuestKeybindingsNightElf22
    +If you want to make the most of RXP; Press Escape -> Options -> Keybindings -> RestedXP Guides -> Select and Bind Active Button 1,2,3 and 4
    *This will allow you to press a Keybind to use a Quest Item rather than to manually have to Click it from the Bags or through a Click on the RXP Button
    *In Dragonflight they have added a new Quest Feature that sometimes a Click on he Quest Objective is enough to use your Quest Item!
step
    #label QuestKeybindingsNightElf22
    >>Use the Jade Phial in your bags next to the Moonwell
    .use 5619
    .goto 57,61.92,50.69
    .complete 929,1 --1/1 Filled Jade Phial
step
    #completewith next
    +Check for the Treasure Chest inside the House (it may not be there)
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Gaerolas Talvethren upstairs
    .goto 57,64.73,51.70,5,0
    .goto 57,64.90,51.61,5,0
    .goto 57,64.59,51.14
    .turnin 475 >>Turn in A Troubling Breeze
    .accept 476 >>Accept Gnarlpine Corruption
	.target Gaerolas Talvethren
step
    #completewith next
    +Check for Uruson (Rare) patrolling between the Houses
	.unitscan Uruson
step
    #label TeldrassilEmeraldDreamcatcher
    >>Collect the Emerald Dreamcatcher from Tailonkai's Dresser
    .goto 57,66.10,52.10
    .complete 2438,1 --1/1 Emerald Dreamcatcher
step
    #completewith next
    .goto 57,64.51,50.46,20,0
    .deathskip >> Die and respawn at the Spirit Healer
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Corithras
    .goto 57,55.82,53.90
    .turnin 929 >>Turn in Teldrassil: The Refusal of the Aspects
	.target Corithras
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Athridas
    .goto 57,55.69,52.00
    .turnin 476 >>Turn in Gnarlpine Corruption
	.target Athridas
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Tallonkai
    .goto 57,55.56,50.00
    .turnin 2438 >>Turn in The Emerald Dreamcatcher
    .accept 2459 >>Accept Ferocitas the Dream Eater
	.target Tallonkai
step
    .isQuestComplete 488
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Zenn Foulhoof
    .goto 57,59.52,49.18
    .turnin 488 >>Turn in Zenn's Bidding
	.target Zenn Foulhoof
step
    >>Kill Webwood Lurkers, Nightsabers and Strigid Owls. Loot them for their Fangs, Feathers and Silk
	.goto 57,57.48,48.54,40,0
	.goto 57,58.21,49.79,40,0
	.goto 57,58.23,52.16,40,0
	.goto 57,59.97,53.47,40,0
	.goto 57,61.28,51.69,40,0
	.goto 57,60.21,50.03,40,0
	.goto 57,57.48,48.54
    .complete 488,1 --2/2 Nightsaber Fang
    .complete 488,2 --2/2 Strigid Owl Feather
    .complete 488,3 --2/2 Webwood Spider Silk
	.target Nightsaber Fang
	.target Strigid Owl Feather
	.target Webwood Spider Silk		
step
    #completewith Ferocitas
    +Check for the Treasure Chest near Ferocitas (it may not be up)
	.unitscan Ferocitas
step
    >>Kill Gnarlpine Mystics
    #completewith next
    .complete 2459,1 --7/7 Gnarlpine Mystic slain
	.target Gnarlpine Mystic
step
    #label Ferocitas
    >>Kill Ferocitas the Dream Eater. Loot him for Tallonkai's Jewel
    .goto 57,67.26,46.83
    .complete 2459,2 --1/1 Tallonkai's Jewel
	.target Ferocitas the Dream Eater
step	
    >>Kill Gnarlpine Mystics. Get low health once almost complete. You will deathskip after
	.goto 57,66.88,46.87,40,0
	.goto 57,65.76,46.40,40,0
	.goto 57,65.75,44.83,40,0
	.goto 57,67.26,46.83
    .complete 2459,1 --7/7 Gnarlpine Mystic slain
	.target Gnarlpine Mystic
step
    #completewith next
    .goto 57,66.13,45.25,25,0
    .deathskip >> Die and respawn at the Spirit Healer
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Tallonkai Swiftroot
    .goto 57,55.55,49.99
    .turnin 2459 >>Turn in Ferocitas the Dream Eater
	.target Tallonkai Swiftroot
step
    .goto 57,55.72,50.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Syral Bladeleaf
    .accept 489 >>Accept Seek Redemption!
	.target Syral Bladeleaf
step
    >>Loot the Fel Cones on the ground
    .goto 57,55.94,55.82,20,0
    .goto 57,55.30,56.98,20,0
    .goto 57,55.32,57.04,20,0
    .goto 57,54.22,53.89,20,0
	.goto 57,56.51,55.80,20,0
	.goto 57,57.18,55.55,20,0
    .goto 57,55.94,55.82
    .complete 489,1 --3/3 Fel Cone
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Fidelio
    .goto 57,55.47,50.42
    .turnin 6344 >>Turn in Reminders of Home
    .accept 6341 >>Accept To Darnassus
	.target Fidelio
step
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Fidelio
    .goto 57,55.47,50.42
    .fly Darnassus >>Fly to Darnassus
	.target Fidelio
step
    .goto 89,36.10,53.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sister Aquinne. Avoid walking into the Purple Zone
    .turnin 6341 >>Turn in To Darnassus
    .accept 6342 >>Accept An Unexpected Gift
	.target Sister Aquinne
step
    .goto 89,36.59,47.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Leora
    .turnin 6342 >>Turn in An Unexpected Gift
    .accept 6343 >>Accept Return to Nyoma
step
    #completewith next
    >>Walk into the Purple Portal
    .goto 89,36.48,50.08,10,0
    .goto 57,55.42,88.39
    .fp >>Get the Rut'theran Village Flight Path
step
	#completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Vesprystus
    .goto 57,55.42,88.40
    .fly Lor'danel >>Fly to Lor'danel
	.target Vesprystus
step
    .goto 62,51.78,18.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Dentaria Silverglade
    .accept 13518 >>Accept The Last Wave of Survivors
	.target Dentaria Silverglade
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Nyrisse
	.goto 62,50.92,18.88
    .vendor 43439 >> Vendor and Repair
	.target Nyrisse
step
    .goto 62,50.22,19.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ranger Glynda Nal'Shea
    .accept 13522 >>Accept Threat from the Water
	.target Ranger Glynda Nal'Shea
step
    #completewith finalrescue
    >>Kill the Vile Spray
    .complete 13522,1 --8/8 Vile Spray slain
	.target Vile Spray
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Volcor
    .goto 62,45.02,18.17
    .complete 13518,4 --1/1 Volcor rescued
	.target Volcor
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Gershala
    .goto 62,44.11,17.79
    .complete 13518,2 --1/1 Gershala Nightwhisper rescued
	.target Gershala Nightwhisper
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Whiteclaw
    .goto 62,44.58,19.89
    .complete 13518,1 --1/1 Cerellean Whiteclaw rescued
	.target Cerellean Whiteclaw
step
	#label finalrescue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Shaldyn
    .goto 62,42.91,21.51
    .complete 13518,3 --1/1 Shaldyn rescued
	.target Shaldyn
step
    >>Kill the Vile Spray
	.goto 62,46.22,17.15,40,0
	.goto 62,44.85,17.07
	.goto 62,44.06,20.31
	.goto 62,42.91,21.51
	.goto 62,46.22,17.15
    .complete 13522,1 --8/8 Vile Spray slain
	.target Vile Spray
step
    .goto 62,50.21,19.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ranger Glynda Nal'Shea
    .turnin 13522 >>Turn in Threat from the Water
	.target Ranger Glynda Nal'Shea
step
    .goto 62,51.78,17.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Dentaria Silverglade
    .turnin 13518 >>Turn in The Last Wave of Survivors
	.target Dentaria Silverglade
step
    .goto 62,51.8,18.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Serendia
    .accept 13520 >>Accept The Boon of the Seas
	.target Serendia
step
    .goto 62,51.14,19.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wizbang Cranktoggle
    .accept 13521 >>Accept Buzzbox 413
	.target Wizbang Cranktoggle
step
    #completewith next
    >>Kill Corrupted Tide Crawlers. Loot them for their Flesh
    .complete 13521,1 --4/4 Corrupted Tide Crawler Flesh
	.target Corrupted Tide Crawler
step
    >>Loot the Clams on the ground underwater
    .goto 62,52.41,19.60,20,0
	.goto 62,52.50,16.62,20,0
	.goto 62,52.57,17.53,20,0
	.goto 62,53.18,18.53,20,0
	.goto 62,52.41,19.60
    .complete 13520,1 --16/16 Encrusted Clam Muscle
step
    >>Kill Corrupted Tide Crawlers. Loot them for their Flesh
    .goto 62,52.41,19.60,20,0
	.goto 62,52.50,16.62,20,0
	.goto 62,52.57,17.53,20,0
	.goto 62,53.18,18.53,20,0
	.goto 62,52.41,19.60
    .complete 13521,1 --4/4 Corrupted Tide Crawler Flesh
	.target Corrupted Tide Crawler
step
    .goto 62,53.24,19.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Buzzbox 413
    .turnin 13521 >>Turn in Buzzbox 413
    .accept 13527 >>Accept No Accounting for Taste
step
    >>Loot the Decomposing Thistle Bear
    .goto 62,55.1,21.0
    .complete 13527,1 --1/1 Foul Bear Carcass Sample
	.target Decomposing Thistle Bear
step
    .goto 62,51.17,19.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wizbang Cranktoggle
    .turnin 13527 >>Turn in No Accounting for Taste
    .accept 13528 >>Accept Buzzbox 723
	.target Wizbang Cranktoggle
step
    >>Kill Corrupted Thistle Bears. Loot them for their Guts
	>>Kill Thistle Bear Cubs also as they also award full experience
	.goto 62,52.96,25.46,40,0
	.goto 62,54.02,25.28,40,0
	.goto 62,55.73,23.95,40,0
	.goto 62,54.87,27.67,40,0
	.goto 62,52.96,25.46
    .complete 13528,1 --6/6 Corrupted Thistle Bear Guts
	.target Corrupted Thistle Bear
	.target Corrupted Thistle Bear Matriarch
	.target Thistle Bear Cub
step
    .goto 62,54.17,29.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Buzzbox 723
    .turnin 13528 >>Turn in Buzzbox 723
    .accept 13554 >>Accept A Cure In The Dark
step
    #label itall
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Tharnariun
    .goto 62,56.26,27.41,40,0
    .goto 62,56.78,30.1
    .accept 13529 >>Accept The Corruption's Source
	.target Tharnariun
step
    #completewith next
	>>Kill Vile Grell and Vile Corrupter's. Loot them for their Ichor and Corruptor's Master Key
	>>Check for Licillin (Rare) as you quest
    .complete 13554,1 --6/6 Foul Ichor
    .complete 13529,2 --8/8 Vile Grell slain	
	.collect 44927,1,13557	
	.use 44927 >>Right click on Corruptor's Master Key in your bags 
   .accept 13557 >>Accept Bearer of Good Fortune	
	.target Vile Grell
	.target Vile Corruptor
	.unitscan Licillin
step
    >>Open the Cages throughout the Cave
    .goto 62,57.51,32.31,15,0
    .goto 62,58.58,32.24,15,0
    .goto 62,58.13,32.84,15,0
    .goto 62,57.34,33.00,15,0
    .goto 62,57.17,32.12,15,0
    .goto 62,56.97,32.66,15,0
    .goto 62,56.58,33.64,15,0
    .goto 62,57.10,34.18
	.complete 13557,1
step
    >>Kill Zenn inside the Cave. Check for a chest next to him. It may not be there.
    .goto 62,58.41,33.08
    .complete 13529,1 --1/1 Zenn Foulhoof slain
	.target Zenn Foulhoof
step
	>>Kill Vile Grell and Vile Corrupter's. Loot them for their Ichor and Corruptor's Master Key
	>>Check for Licillin (Rare) as you quest
    .goto 62,57.51,32.31,30,0
    .goto 62,58.58,32.24,30,0
    .goto 62,58.13,32.84,30,0
    .goto 62,57.34,33.0,30,0
    .goto 62,57.17,32.12,30,0
    .goto 62,56.97,32.66,30,0
    .goto 62,56.58,33.64,30,0
    .goto 62,57.10,34.18
    .complete 13554,1 --6/6 Foul Ichor
    .complete 13529,2 --8/8 Vile Grell slain	
	.collect 44927,1,13557	
	.use 44927 >>Right click on Corruptor's Master Key in your bags 
   .accept 13557 >>Accept Bearer of Good Fortune	
	.target Vile Grell
	.target Vile Corruptor
	.unitscan Licillin	
step
    .goto 62,56.79,33.52,20,0
    .goto 62,57.43,33.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tClick the Disgusting Workbench in the back of the cave
    .accept 13831 >>Accept A Troubling Prescription  
step
    #completewith next
    .deathskip >> Die and respawn at the Spirit Healer
step
    #completewith next
    #requires itall
    .goto 62,51.13,19.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Tharnariun Treetender
    .turnin 13557 >>Turn in A Troubling Prescription
    .turnin 13831 >>Turn in A Troubling Prescription
    .turnin 13529 >>Turn in The Corruption's Source
	.target Tharnariun Treetender
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wizbang
    .goto 62,51.14,19.66
    .turnin 13554 >>Turn in A Cure In The Dark
	.target Wizbang
step
    .goto 62,50.90,18.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Serendia Oakwhisper patrolling up and down the Stairs in the Inn
    .turnin 13520 >>Turn in The Boon of the Seas
	.target Serendia Oakwhisper
step
    #completewith next
    .hs >>Hearth to Dolanaar
step
    .goto 57,56.73,53.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Nyoma
    .turnin 6343 >>Turn in Return to Nyoma
	.target Nyoma
step
    .goto 57,59.51,49.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Zenn Foulhoof
    .turnin 489 >>Turn in Seek Redemption!
	.target Zenn Foulhoof
step
	#completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Fidelio
    .goto 57,55.49,50.46
    .fly Darnassus >>Fly to Darnassus
	.target Fidelio
step
    .goto 89,42.78,32.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Jartsam
    .turnin 32664 >>Turn in Learn To Ride
	.target Jartsam
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Jartsam
    .goto 89,42.78,32.92
    .train 33388 >>Train Apprentice Riding
	.skill riding,75
	.target Jartsam
step << NightElf
    #fresh
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lelanai. Vendor all trash. Buy a Mount
    .goto 27,56.24,46.25
    .xp <10,1
    .vendor
	.target Lelanai
step 
    .dmf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Darkmoon Faire Mystic Mage
    .goto 89,38.58,49.38
    .accept 7905 >>Accept The Darkmoon Faire
	.target Darkmoon Faire Mystic Mage
step 
    .dmf
    +Talk to Darkmoon Faire Mystic Mage and press accept
    .skipgossip
    .zoneskip 37
    .goto 89,38.58,49.38
	.target Darkmoon Faire Mystic Mage
step 
    .nodmf
    #completewith next
    .goto 89,36.58,49.23,20 >>Walk into the Purple Zone to get teleported
    .zoneskip 97
step 
    .nodmf
    .goto 57,52.28,89.47,5 >>Click the Exodar Portal
    .zoneskip 97
step 
    .nodmf
    .goto 103,41.87,72.93,10 >>Enter the Exodar City and go down the Spiral Staircase
    .goto 103,48.33,62.94,10 >> Click the Stormwind Portal
    .zoneskip 84
step 
    .nodmf
	.goto 84,62.81,71.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Hero's Herald
    .accept 46727 >>Accept Tides of War
	.target Hero's Herald
step 
    #veteran
    .nodmf
	.goto 84,63.76,73.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Renato
    .accept 332 >>Accept Wine Shop Advert
	.target Renato
step 
    .nodmf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Bartlett in Goldshire
    .goto 37,41.71,64.64
    .fp >>Get the Goldshire Flight Path
	.target Bartlett
]])
