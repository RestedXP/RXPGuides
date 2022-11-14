RXPGuides.RegisterGuide([[
#df
#version 1
#group RestedXP Starting Zones
#subgroup Night Elf Starting Zones
#displayname Night Elf_Teldrassil
#name 3Retail-Alliance-Night Elf_Teldrassil
#next RestedXP Alliance 10-60\1Retail-Alliance_Darkmoon Faire
#defaultfor NightElf

<<Alliance
<<!DemonHunter !DK

step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Zenn Foulhoof
    *Don't kill any spiders, owls, or cats on the way to Zenn
    .goto 57,59.56,49.09
    .accept 488 >>Accept Zenn's Bidding
step
    #completewith TeldrassilAcceptRemindersofHome
    >>Kill and loot Webwood Lurker, Nightsabers and Strigid Owls in the Area
    .complete 488,1 --2/2 Nightsaber Fang
    .complete 488,2 --2/2 Strigid Owl Feather
    .complete 488,3 --2/2 Webwood Spider Silk
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Tallonkai Swiftroot
    .goto 57,55.56,49.99
    .accept 2438 >>Accept The Emerald Dreamcatcher
step
    #completewith next
    .goto 57,55.48,50.43
    .fp >>Get the Dolanaar Flight Path
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Athridas Bearmantle
    .goto 57,55.70,51.99
    .accept 475 >>Accept A Troubling Breeze
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Innkeeper Keldamyr
    .goto 57,55.37,52.23
    .turnin 2159,1 >>Turn in Dolanaar Delivery
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Innkeeper Keldamyr
    #completewith next
    .goto 57,55.36,52.23
    .home >>Set your Hearthstone to Dolanaar
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Iranis
    #completewith next
    .goto 37,56.00,52.21
    .train 2366 >> Train Herbalism
    .train 2575 >> Train Mining 
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Corithras Moonrage
    .goto 57,55.82,53.91
    .turnin 28731 >>Turn in Teldrassil: Passing Awareness
    .accept 929 >>Accept Teldrassil: The Refusal of the Aspects
step
    #label TeldrassilAcceptRemindersofHome
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Nyoma
    .goto 57,56.74,53.51
    .accept 6344 >>Accept Reminders of Home
step
    #completewith TeldrassilEmeraldDreamcatcher
    >>Kill and LOOT Webwood Lurker, Nightsabers and Strigid Owls
    .complete 488,1 --2/2 Nightsaber Fang
    .complete 488,2 --2/2 Strigid Owl Feather
    .complete 488,3 --2/2 Webwood Spider Silk
step
    #sticky
    #completewith QuestKeybindingsNightElf22
    +If you want to make the most of RXP; Press Escape -> Options -> Keybindings -> RestedXP Guides -> Select and Bind Active Button 1,2,3 and 4
    *This will allow you to press a Keybind to use a Quest Item rather than to manually have to Click it from the Bags or through a Click on the RXP Button
    *In Dragonflight they have added a new Quest Feature that sometimes a Click on he Quest Objective is enough to use your Quest Item!
step
    #label QuestKeybindingsNightElf22
    >>Use the Jade Phial next to the Moonwell
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
step
    #completewith next
    +Check for Uruson (rare) patrolling between the houses
step
    #label TeldrassilEmeraldDreamcatcher
    >>Click Tailonkai's Dresser and loot the Dreamcatcher
    .goto 57,66.10,52.10
    .complete 2438,1 --1/1 Emerald Dreamcatcher
step
    #completewith next
    >>RXP Guides often use Deathskips to quickly go to a desired Location
    >>You can Unequip your Gear or repeately spam /sit to die faster
    .goto 57,64.51,50.46,20,0
    .deathskip >>Pull as much as you can, Die, Release and Ressurect with the Spirit Healer
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Corithras
    .goto 57,55.82,53.90
    .turnin 929 >>Turn in Teldrassil: The Refusal of the Aspects
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Athridas
    .goto 57,55.69,52.00
    .turnin 476 >>Turn in Gnarlpine Corruption
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Tallonkai
    .goto 57,55.56,50.00
    .turnin 2438 >>Turn in The Emerald Dreamcatcher
    .accept 2459 >>Accept Ferocitas the Dream Eater
step
    .isQuestComplete 488
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Zenn Foulhoof
    .goto 57,59.52,49.18
    .turnin 488 >>Turn in Zenn's Bidding
step
    #sticky
    #label TeldrassilFangFeatherSilk
    #title Kill and LOOT spiders, owls and cats
    >>Kill and LOOT Webwood Lurker, Nightsabers and Strigid Owls
    .goto 57,58.22,50.92,15,0
    .goto 57,64.16,47.30,15,0
    .complete 488,1 --2/2 Nightsaber Fang
    .complete 488,2 --2/2 Strigid Owl Feather
    .complete 488,3 --2/2 Webwood Spider Silk
step << Hunter
    #completewith next
    +Tame a Pet if you don't have one
step
    #completewith Ferocitas
    +Check for the Treasure Chest near Ferocitas (it may not be up)
step
    >>Kill Gnarlpine Mystics
    #completewith next
    .complete 2459,1 --7/7 Gnarlpine Mystic slain
step
    #label Ferocitas
    >>Kill and loot Ferocitas the Dream Eater
    .goto 57,67.26,46.83
    .complete 2459,2 --1/1 Tallonkai's Jewel
step
    >>Kill Gnarlpine Mystics. Get low health, we're deathskipping after
    .waypoint 57,67.28,46.66
    .complete 2459,1 --7/7 Gnarlpine Mystic slain
step
    .isQuestTurnedIn 488
    #completewith next
    .goto 57,66.13,45.25,25,0
    .deathskip >>Pull as much as you can, die, release and ressurect at the Spirit Healer
step
    .isOnQuest 488
    #requires TeldrassilFangFeatherSilk
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Zenn Foulhoof
    .goto 57,59.52,49.18
    .turnin 488 >>Turn in Zenn's Bidding
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Tallonkai Swiftroot
    .goto 57,55.55,49.99
    .turnin 2459 >>Turn in Ferocitas the Dream Eater
step
    .goto 57,55.72,50.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Syral Bladeleaf
    .accept 489 >>Accept Seek Redemption!
step
    >>Click Fel Cones in the Area
    .goto 57,55.94,55.82,20,0
    .goto 57,55.30,56.98,20,0
    .goto 57,55.32,57.04,20,0
    .goto 57,54.22,53.89,20,0
    .goto 57,55.94,55.82
    .complete 489,1 --3/3 Fel Cone
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Fidelio
    .goto 57,55.47,50.42
    .turnin 6344 >>Turn in Reminders of Home
    .accept 6341 >>Accept To Darnassus
step
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Fidelio
    .goto 57,55.47,50.42
    .fly Darnassus >>Fly to Darnassus
step
    .goto 89,36.10,53.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sister Aquinne. Don't accidentally walk into the purple portal.
    .turnin 6341 >>Turn in To Darnassus
step
    .goto 89,36.31,53.33
    .accept 6342 >>Accept An Unexpected Gift
step
    .goto 89,36.59,47.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Leora
    .turnin 6342 >>Turn in An Unexpected Gift
step
    .goto 89,36.73,48.68
    .accept 6343 >>Accept Return to Nyoma
step
    #completewith next
    >>Walk into the Purple Portal
    .goto 89,36.48,50.08,10,0
    .goto 57,55.42,88.39
    .fp >>Get the Rut'theran Village Flight Path
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Vesprystus
    .goto 57,55.42,88.40
    .fly Lor'danel >>Fly to Lor'danel. We will come back to Teldrassil later.
step
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Nyrisse
    .vendor 43439 >> sell as much as you can and repair
step
    .goto 62,51.78,18.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Dentaria Silverglade
    .accept 13518 >>Accept The Last Wave of Survivors
step
    .goto 62,50.22,19.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ranger Glynda Nal'Shea
    .accept 13522 >>Accept Threat from the Water
step
    #sticky
    #label Area99
    >>Kill the small Elementals
    .complete 13522,1 --8/8 Vile Spray slain
step
    >>Click Volcor
    .goto 62,44.93,18.27
    .complete 13518,4 --1/1 Volcor rescued
step
    >>Click Gershala
    .goto 62,44.11,17.79
    .complete 13518,2 --1/1 Gershala Nightwhisper rescued
step
    >>Click Whiteclaw
    .goto 62,44.58,19.89
    .complete 13518,1 --1/1 Cerellean Whiteclaw rescued
step
    >>Click Shaldyn
    .goto 62,42.91,21.51
    .complete 13518,3 --1/1 Shaldyn rescued
step
    #requires Area99
    .goto 62,50.21,19.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ranger Glynda Nal'Shea
    .turnin 13522 >>Turn in Threat from the Water
step
    .goto 62,51.78,17.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Dentaria Silverglade at the Flightpath
    .turnin 13518 >>Turn in The Last Wave of Survivors
step
    .goto 62,51.8,18.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Serendia
    .accept 13520 >>Accept The Boon of the Seas
step
    .goto 62,51.14,19.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wizbang Cranktoggle
    .accept 13521 >>Accept Buzzbox 413
step
    #completewith next
    >>Kill and loot Crawlers
    .complete 13521,1 --4/4 Corrupted Tide Crawler Flesh
step
    >>Click the Clams on the ground underwater
    .goto 62,53.18,18.53
    .complete 13520,1 --16/16 Encrusted Clam Muscle
step
    #label Area98
    >>Kill and loot Crawlers
    .goto 62,53.31,19.65
    .complete 13521,1 --4/4 Corrupted Tide Crawler Flesh
step
    #requires Area98
    .goto 62,53.14,19.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Buzzbox 413
    .turnin 13521 >>Turn in Buzzbox 413
    .accept 13527 >>Accept No Accounting for Taste
step
    >>Click the Decomposing Thistle Bear
    .goto 62,55.1,21.0
    .complete 13527,1 --1/1 Foul Bear Carcass Sample
step
    .goto 62,51.17,19.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wizbang Cranktoggle
    .turnin 13527 >>Turn in No Accounting for Taste
    .accept 13528 >>Accept Buzzbox 723
step
    >>Kill and LOOT Corrupted Thistle Bears. Sadly, the Thistle Bear Cubs are one-shottable yet give normal exp. Kill them all as you quest :(
    .goto 62,54.87,27.67
    .complete 13528,1 --6/6 Corrupted Thistle Bear Guts
step
    .goto 62,54.17,29.24
    >>Click Buzzbox 723
    .turnin 13528 >>Turn in Buzzbox 723
    .accept 13554 >>Accept A Cure In The Dark
step
    #label itall
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Tharnariun
    .goto 62,56.26,27.41,40,0
    .goto 62,56.78,30.1
    .accept 13529 >>Accept The Corruption's Source
step
    #completewith endofcages
    >>Kill and LOOT Vile Grell/Corrupter's. Check for Licillin (rare) as you quest.
    .complete 13554,1 --6/6 Foul Ichor
    .complete 13529,2 --8/8 Vile Grell slain
    .accept 13557 >>Accept Bearer of Good Fortune
step
    >>Click The Cage
    .goto 62,57.51,32.31
    .complete 13557,1,1 --8/8 Uncorrupted animals freed
step
    >>Click The Cage
    .goto 62,58.58,32.24
    .complete 13557,1,2 --8/8 Uncorrupted animals freed
step
    >>Kill Zenn inside the Cave. Check for a chest next to him. It may not be there.
    .goto 62,58.41,33.08
    .complete 13529,1 --1/1 Zenn Foulhoof slain
step
    >>Click The Cage
    .goto 62,58.13,32.84
    .complete 13557,1,3 --8/8 Uncorrupted animals freed
step
    >>Click The Cage
    .goto 62,57.34,33.0
    .complete 13557,1,4 --8/8 Uncorrupted animals freed
step
    >>Click The Cage
    .goto 62,57.17,32.12
    .complete 13557,1,5 --8/8 Uncorrupted animals freed
step
    >>Click The Cage
    .goto 62,56.97,32.66
    .complete 13557,1,6 --8/8 Uncorrupted animals freed
step
    >>Click The Cage
    .goto 62,56.58,33.64
    .complete 13557,1,7 --8/8 Uncorrupted animals freed
step
    #label endofcages
    >>Click The Cage
    .goto 62,57.10,34.18
    .complete 13557,1,8 --8/8 Uncorrupted animals freed
step
    .goto 62,56.79,33.52,20,0
    .goto 62,57.43,33.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tClick the Disgusting Workbench in the back of the cave
    .accept 13831 >>Accept A Troubling Prescription  
step
    >>Finish killing and looting Vile Grell/Corrupter's. Get low health as you start to finish, we're deathskipping after.
    .goto 62,57.51,32.31
    .complete 13554,1 --6/6 Foul Ichor
    .complete 13529,2 --8/8 Vile Grell slain
step
    #completewith next
    >>You can Unequip your Gear or repeately spam /sit to die faster
    .deathskip >>Pull as much as you can, Die, release and resurrect with the Spirit Healer
step
    #completewith next
    #requires itall
    .goto 62,51.13,19.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Tharnariun Treetender
    .turnin 13557 >>Turn in A Troubling Prescription
    .turnin 13831 >>Turn in A Troubling Prescription
    .turnin 13529 >>Turn in The Corruption's Source
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wizbang
    .goto 62,51.14,19.66
    .turnin 13554 >>Turn in A Cure In The Dark
step
    .goto 62,50.90,18.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Serendia Oakwhisper patrolling up and down the Stairs in the Inn
    .turnin 13520 >>Turn in The Boon of the Seas
step
    #completewith next
    .hs >>Hearth to Dolanaar
step
    .goto 57,56.73,53.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Nyoma
    .turnin 6343 >>Turn in Return to Nyoma
step
    .goto 57,59.51,49.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Zenn Foulhoof
    .turnin 489 >>Turn in Seek Redemption!
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Fidelio
    .goto 57,55.49,50.46
    .fly Darnassus >>Fly to Darnassus
step
    .goto 89,42.78,32.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Jartsam
    .turnin 32664 >>Turn in Learn To Ride
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Jartsam again
    .goto 89,42.78,32.92
    .skill riding,75 >>Train Apprentice Riding
step 
    .dmf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Darkmoon Faire Mystic Mage
    .goto 89,38.58,49.38
    .accept 7905 >>Accept The Darkmoon Faire
step 
    .dmf
    +Talk to Darkmoon Faire Mystic Mage and press accept
    .skipgossip
    .zoneskip 37
    .goto 89,38.58,49.38
step 
    .nodmf
    #completewith next
    >>Walk into the Purple Zone to get teleported
    .goto 89,36.58,49.23
    .zoneskip 97
step 
    .nodmf
    #completewith next
    >>Click the Exodar Portal
    .goto 57,52.28,89.47
    .zoneskip 97
step 
    .nodmf
    >>Enter the Exodar City and go down the Spiral Staircase 
    >>Click the Stormwind Portal
    .goto 103,41.87,72.93,10,0
    .goto 103,48.33,62.94
    .zoneskip 84
step 
    #completewith next
    .nodmf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Hero's Herald
    .accept 46727 >>Accept Tides of War
step 
    #veteran
    .nodmf
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Renato
    .accept 332 >>Accept Wine Shop Advert
step 
    .nodmf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Bartlett in Goldshire
    .goto 37,41.71,64.64
    .fp >>Get the Goldshire Flight Path
]])
