RXPGuides.RegisterGuide([[
#classic
#version 1
#name 1-10 Zephras Isle
#displayname 1-10 Skyborne
#group RXP Forever (A)
#subgroup Speedrun Guide 1-20
#internal

step
    .goto Zephras Isle,42.07,23.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rorian the Dayseeker|r.
    .turnin 92460 >>Turn in Coming of Age
    .target Rorian the Dayseeker
step
    .goto Zephras Isle,42.07,23.49
    .accept 92461 >>Accept Harmony in Balance
step
    .goto Zephras Isle,43.44,24.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elatrell Featherlight|r.
    .accept 92462 >>Accept Infestation Investigation
    .target Elatrell Featherlight
step
    .goto Zephras Isle,44.64,22.11
    >>Kill |cRXP_ENEMY_Juvenile Vuldren|r.
    .complete 92461,1 --8/8 Juvenile Vuldren slain
    .mob Juvenile Vuldren
step
    .goto Zephras Isle,46.87,29.14
    >>Kill |cRXP_ENEMY_Pesky Cirrusfly|r.
    .complete 92462,1 --8/8 Pesky Cirrusfly slain
    .mob Pesky Cirrusfly
step
    .goto Zephras Isle,43.44,24.79
    .turnin 92462 >>Turn in Infestation Investigation
step
    .goto Zephras Isle,43.44,24.79
    .accept 92463 >>Accept The Cirrusfly Queen
step
    .goto Zephras Isle,43.78,24.04
    .accept 94414 >>Accept The Anchors of Zephras
step
    .complete 94414,1 --View the Anchor Pylon
    .skipgossipid 13720,1
step
    .goto Zephras Isle,43.80,24.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halaan Hawk-Eye|r.
    .turnin 94414 >>Turn in The Anchors of Zephras
    .target Halaan Hawk-Eye
step
    .goto Zephras Isle,43.64,24.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Myriaal Mistwake|r.
    .accept 92474 >>Accept Falling With Style
    .target Myriaal Mistwake
step
    .goto Zephras Isle,43.52,24.09
    .complete 92474,1 --Use Walk on Air
step
    .goto Zephras Isle,42.06,23.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rorian the Dayseeker|r.
    .turnin 92461 >>Turn in Harmony in Balance
    .target Rorian the Dayseeker
step
    .goto Zephras Isle,42.06,23.48
    .turnin 92474 >>Turn in Falling With Style
step
    .goto Zephras Isle,42.06,23.48
    .accept 92464 >>Accept Elemental Unrest
step << Mage
    .goto Zephras Isle,42.06,23.48
    .accept 92481 >>Accept A Student of the Arcane
step >> Mage
    .goto Zephras Isle,41.55,23.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dorii Brightwhisper|r.
    .turnin 92481 >>Turn in A Student of the Arcane
    .target Dorii Brightwhisper
step
    .goto Zephras Isle,43.37,23.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dalia the Collector|r.
    .accept 93552 >>Accept Harvesting Windstones
    .target Dalia the Collector
step
    .goto Zephras Isle,43.33,24.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falorne Fallwind|r.
    .accept 92597 >>Accept Reading the Ley Lines
    .target Falorne Fallwind
step
    .goto Zephras Isle,48.00,28.23
    >>Kill |cRXP_ENEMY_Cirrusfly Queen|r.
    .complete 92463,1 --1/1 Cirrusfly Queen slain
    .mob Cirrusfly Queen
step
    .goto Zephras Isle,41.95,23.79
    .complete 93552,1 --15/15 Windstone Cluster

step
    .goto Zephras Isle,47.29,21.89
    .turnin 92464 >>Turn in Elemental Unrest
step
    .goto Zephras Isle,47.29,21.89
    .accept 92465 >>Accept Agitators
        .accept 92465 >>Accept Agitators
step
    .goto Zephras Isle,46.34,17.91
    .complete 92597,1 --Use your Read Ley Line ability near the Thendal Grove Ley Line
    step
    .goto Zephras Isle,46.94,19.13
    >>Kill |cRXP_ENEMY_Al'Aketh Convert|r.
    .complete 92465,1 --7/7 Al'Aketh Convert slain
    .mob Al'Aketh Convert
step
    .goto Zephras Isle,47.59,20.44
    
    .complete 92465,2 --6/6 Roiling Winds destroyed
    step
    .goto Zephras Isle,47.29,21.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yala Windwatcher|r.
    .turnin 92465 >>Turn in Agitators
    .target Yala Windwatcher
step
    .goto Zephras Isle,47.29,21.90
    .accept 92469 >>Accept Return to Rorian
step
    .goto Zephras Isle,43.37,23.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dalia the Collector|r.
    .turnin 93552 >>Turn in Harvesting Windstones
    .target Dalia the Collector
step
    .goto Zephras Isle,43.44,24.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elatrell Featherlight|r.
    .turnin 92463 >>Turn in The Cirrusfly Queen
    .target Elatrell Featherlight
step
    .goto Zephras Isle,43.33,24.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falorne Fallwind|r.
    .turnin 92597 >>Turn in Reading the Ley Lines
    .target Falorne Fallwind
step
    .goto Zephras Isle,42.07,23.48
    .turnin 92469 >>Turn in Return to Rorian
step
    .goto Zephras Isle,42.07,23.48
    .accept 92471 >>Accept Aetheen of the Gales
step
    .goto Zephras Isle,42.76,23.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aetheen of the Gales|r.
    .turnin 92471 >>Turn in Aetheen of the Gales
    .target Aetheen of the Gales
step
    .goto Zephras Isle,42.76,23.65
    .accept 92470 >>Accept Foul Matriarch
step
    .goto Zephras Isle,42.41,25.15
    .accept 92473 >>Accept Aggressive Encroachment

step
    .goto Zephras Isle,42.41,25.15
    .accept 92473 >>Accept Aggressive Encroachment
step
    .goto Zephras Isle,38.33,28.15
    .complete 92473,1 --6/6 Scrawny Ursera Claw
step
    .goto Zephras Isle,35.82,25.57
    .complete 92470,2 --1/1 Head of Urs'anah
step
    .goto Zephras Isle,36.53,24.09
    >>Kill |cRXP_ENEMY_Ursera Scavenger|r.
    .complete 92470,1 --8/8 Ursera Scavenger slain
    .mob Ursera Scavenger
step
    .goto Zephras Isle,38.31,30.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hanaa Nightwind|r.
    .accept 92544 >>Accept Al'Aketh Thugs
    .target Hanaa Nightwind



step
    .goto Zephras Isle,42.76,23.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aetheen of the Gales|r.
    .turnin 92470 >>Turn in Foul Matriarch
    .target Aetheen of the Gales
step
    .goto Zephras Isle,42.76,23.65
    .accept 92472 >>Accept The Next Step
step
    .goto Zephras Isle,42.76,23.65
    .accept 96638 >>Accept The Adventurer
    step
    .goto Zephras Isle,42.41,25.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valreaa Valewind|r.
    .turnin 92473 >>Turn in Aggressive Encroachment
    .target Valreaa Valewind

step
    .goto Zephras Isle,36.49,33.30
    >>Kill |cRXP_ENEMY_Malduko Cloudcrush|r.
    .complete 92544,3 --1/1 Malduko Cloudcrush slain
    .mob Malduko Cloudcrush
step
    .goto Zephras Isle,37.42,33.95
    >>Kill |cRXP_ENEMY_Al'Aketh Neophyte|r.
    .complete 92544,2 --4/4 Al'Aketh Neophyte slain
    .mob Al'Aketh Neophyte
step
    .goto Zephras Isle,38.32,30.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hanaa Nightwind|r.
    .turnin 92544 >>Turn in Al'Aketh Thugs
    .target Hanaa Nightwind
step
    .goto Zephras Isle,41.67,44.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raan Wildwind|r.
    .turnin 96638 >>Turn in The Adventurer
    .target Raan Wildwind
step
    .goto Zephras Isle,41.67,44.79
    .accept 96101 >>Accept The Great Outdoors
    .complete 96101,1 --1/1 Use the /sit emote near the campfire

    .complete 96101,2 --Gain the Boosted Rest buff
step
    .goto Zephras Isle,41.67,44.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raan Wildwind|r.
    .turnin 96101 >>Turn in The Great Outdoors
    .target Raan Wildwind
step
    .goto Zephras Isle,41.67,44.79
    .accept 97970 >>Accept Camping 101: Mining
step
    .goto Zephras Isle,41.67,44.79
    .accept 96646 >>Accept Camping 101: Cooking
step
    .goto Zephras Isle,45.67,45.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Constable Aonda|r.
    .turnin 92472 >>Turn in The Next Step
    .target Constable Aonda
step
    .goto Zephras Isle,45.67,45.51
    .accept 93461 >>Accept Welcome to Shen'dar Village
step
    .goto Zephras Isle,45.04,46.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rathiril Sunlance|r.
    .complete 93461,1 --1/1 Speak with Rathiril Sunlance
    .target Rathiril Sunlance
    
step << Mage
    --mage training
step
    .complete 92596,1 --1/1 Listen to Rathiril Sunlance
step
    .goto Zephras Isle,45.04,46.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rathiril Sunlance|r.
    .accept 92596 >>Accept The High Order
    .target Rathiril Sunlance

step
    .goto Zephras Isle,44.98,46.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rathiril Sunlance|r.
    .turnin 92596 >>Turn in The High Order
    .target Rathiril Sunlance
step
    .goto Zephras Isle,44.98,46.35
    .accept 94413 >>Accept A Magical Affront

step
    .goto Zephras Isle,43.02,43.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_the Innkeeper|r.
    .complete 93461,2 --1/1 Speak with the Innkeeper
    .target the Innkeeper
step
    .goto Zephras Isle,43.02,43.24
    .home >>Set your Hearthstone to Shen'dar Village

step
    .goto Zephras Isle,45.67,45.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Constable Aonda|r.
    .turnin 93461 >>Turn in Welcome to Shen'dar Village
    .target Constable Aonda
step
    .goto Zephras Isle,45.67,45.50
    .accept 92517 >>Accept The Criminal Element
step
    .goto Zephras Isle,44.47,44.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Teeri Wellwind|r.
    .accept 93319 >>Accept Pilfered Windstones
    .target Teeri Wellwind
step
    .goto Zephras Isle,44.46,44.93
    .accept 92516 >>Accept Hippogryph Harrassment
step
    .goto Zephras Isle,44.68,44.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Indari Sunseam|r.
    .accept 92515 >>Accept The Problem With Prideclaws
    .target Indari Sunseam
step
    .goto Zephras Isle,44.88,44.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taleen Shimmerthread|r.
    .accept 93951 >>Accept A Little Beauty
    .target Taleen Shimmerthread
step
    .goto Zephras Isle,43.85,43.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zerril Softbreeze|r.
    .accept 92553 >>Accept Restocking the Larders
    .target Zerril Softbreeze
step
--cooking


step
    .goto Zephras Isle,43.37,45.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bounty Available: Vulgara the Insatiable!|r.
    .accept 93318 >>Accept WANTED: Vulgara the Insatiable
    .target Bounty Available: Vulgara the Insatiable!
step
    .goto Zephras Isle,44.45,39.44
    .complete 92515,1 --10/10 Prideclaw Pelt
step
    .goto Zephras Isle,38.20,44.47
    .complete 92553,2 --8/8 Strider Meat
step
    .goto Zephras Isle,39.15,47.74
    .complete 94413,1 --6/6 Windshaper Novice Seer defeated
step
    .goto Zephras Isle,38.36,57.04
    >>Kill |cRXP_ENEMY_Hippogryph Youth|r.
    .complete 92516,1 --8/8 Hippogryph Youth slain
    .mob Hippogryph Youth
step
    .goto Zephras Isle,33.95,55.34
    .complete 92553,1 --3/3 Small Egg


step
    .goto Zephras Isle,50.76,33.98
    >>Kill |cRXP_ENEMY_Highlands Bandit|r.
    .complete 92517,1 --10/10 Highlands Bandit slain
    .mob Highlands Bandit
step
    .goto Zephras Isle,50.64,34.26
    >>Kill |cRXP_ENEMY_"Badwind" Bennic|r.
    .complete 92517,2 --1/1 "Badwind" Bennic slain
    .mob "Badwind" Bennic
step
    .goto Zephras Isle,49.16,38.24
    .complete 93319,1 --10/10 Pilfered Windstone
step
    .goto Zephras Isle,42.75,52.68
    .complete 93318,1 --1/1 Vulgara's Head


step
    .goto Zephras Isle,43.85,43.86
    .complete 96646,1 --Learn cooking from Zerril Softbreeze in Shen'dar Village
step
    .goto Zephras Isle,43.85,43.85
    .turnin 96646 >>Turn in Camping 101: Cooking

step
    .goto Zephras Isle,43.85,43.85
    .turnin 92553 >>Turn in Restocking the Larders

step
    .goto Zephras Isle,44.87,44.19
    .turnin 93951 >>Turn in A Little Beauty

step
    .goto Zephras Isle,44.68,44.51
    .turnin 92515 >>Turn in The Problem With Prideclaws

step
    .goto Zephras Isle,44.46,44.97
    .turnin 92516 >>Turn in Hippogryph Harrassment
step
    .goto Zephras Isle,44.46,44.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Teeri Wellwind|r.
    .turnin 93319 >>Turn in Pilfered Windstones
    .target Teeri Wellwind
step
    .goto Zephras Isle,45.24,45.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Danarii Bellowveil|r.
    .turnin 93318 >>Turn in WANTED: Vulgara the Insatiable
    .target Danarii Bellowveil
step
    .goto Zephras Isle,45.67,45.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Constable Aonda|r.
    .turnin 92517 >>Turn in The Criminal Element
    .target Constable Aonda
step
    .goto Zephras Isle,45.67,45.50
    .accept 93036 >>Accept Infiltrating the Cult
step
    .goto Zephras Isle,44.82,45.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sania Silverstream|r.
    .turnin 93036 >>Turn in Infiltrating the Cult
    .target Sania Silverstream
step
    .goto Zephras Isle,44.82,45.50
    .accept 92529 >>Accept Falaath Village
step
    .goto Zephras Isle,46.89,56.24
    .turnin 92529 >>Turn in Falaath Village
step
    .goto Zephras Isle,46.89,56.24
    .accept 92528 >>Accept Among the Faithful
step
    .goto Zephras Isle,48.87,53.88
    .complete 92528,1 --1/1 Learn about the cultists' plans
    .skipgossipid 136768

step
    .goto Zephras Isle,45.67,45.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Constable Aonda|r.
    .turnin 92528 >>Turn in Among the Faithful
    .target Constable Aonda
step
    .goto Zephras Isle,45.67,45.50
    .accept 92550 >>Accept Havoc in the Highlands
step
    .goto Zephras Isle,45.67,45.50
    .accept 93926 >>Accept The Western Watch

step
    .goto Zephras Isle,45.25,45.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Danarii Bellowveil|r.
    .accept 92551 >>Accept Stolen Supplies
    .target Danarii Bellowveil


step
    .goto Zephras Isle,44.79,44.46
    .complete 97970,1 --Raise your mining skill to 20
step
    .goto Zephras Isle,44.77,44.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Messana Crestwind|r.
    .turnin 97970 >>Turn in Camping 101: Mining
    .target Messana Crestwind
    step
    .goto Zephras Isle,48.12,56.27
    >>Kill |cRXP_ENEMY_Al'Aketh Stormcaller|r.
    .complete 92550,1 --6/6 Al'Aketh Stormcaller slain
    .mob Al'Aketh Stormcaller
step
    .goto Zephras Isle,49.24,57.58
    >>Kill |cRXP_ENEMY_Living Lightning|r.
    .complete 92550,2 --4/4 Living Lightning slain
    .mob Living Lightning
step
    .goto Zephras Isle,50.29,56.95
    .complete 92550,3 --1/1 Commander Cyclas's Head
step
    .goto Zephras Isle,49.55,54.23
    .complete 92551,1 --10/10 Stolen Shen'dar Supplies
    step
    .goto Zephras Isle,42.32,62.03
    
    .complete 93926,1 --1/1 Check in on the Western Watchtower in the Shen'dar Highlands
step
    .goto Zephras Isle,42.33,62.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Peacekeeper Vaaniel|r.
    .turnin 93926 >>Turn in The Western Watch
    .target Peacekeeper Vaaniel
step
    .goto Zephras Isle,42.33,62.01
    .accept 93927 >>Accept A Last Request
step
    .goto Zephras Isle,42.38,62.07
    .complete 93927,1 --1/1 Collect and read the note


step
    .goto Zephras Isle,41.12,64.09
    .complete 93927,3 --1/1 Raani's Favorite Feather
step
    .goto Zephras Isle,40.99,64.09
    .complete 93927,4 --1/1 Shadowsong Family Signet
    >>Kill |cRXP_ENEMY_Skypriest Aanders|r.
    .complete 93927,2 --1/1 Skypriest Aanders slain
    .mob Skypriest Aanders


step
    .goto Zephras Isle,45.24,45.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Danarii Bellowveil|r.
    .turnin 92551 >>Turn in Stolen Supplies
    .target Danarii Bellowveil
step
    .goto Zephras Isle,45.67,45.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Constable Aonda|r.
    .turnin 92550 >>Turn in Havoc in the Highlands
    .target Constable Aonda
step
    .goto Zephras Isle,45.67,45.50
    .turnin 93927 >>Turn in A Last Request

step
    .goto Zephras Isle,45.67,45.50
    .accept 92701 >>Accept To Valanaar
step
    .goto Zephras Isle,45.67,45.50
    .accept 93948 >>Accept Deliver the Signet
step
    .goto Zephras Isle,41.66,44.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raan Wildwind|r.
    .accept 97971 >>Accept Camping 101: Skinning
    .target Raan Wildwind
step
    .goto Zephras Isle,41.67,44.79
    .accept 98286 >>Accept Camping 101: Enchanting
step
    .goto Zephras Isle,41.67,44.79
    .accept 97968 >>Accept Camping 101: Herbalism
step
    .goto Zephras Isle,41.67,44.79
    .accept 97963 >>Accept Camping 101: Alchemy
step
    .goto Zephras Isle,41.67,44.80
    .accept 97973 >>Accept Camping 101: Tailoring
step
    .goto Zephras Isle,41.69,44.82
    .accept 97964 >>Accept Camping 101: Blacksmithing
step
    .goto Zephras Isle,41.67,44.80
    .accept 97965 >>Accept Camping 101: First Aid
step
    .goto Zephras Isle,43.07,46.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Naleeia Tattermend|r.
    .turnin 97965 >>Turn in Camping 101: First Aid
    .target Naleeia Tattermend
step
    .goto Zephras Isle,41.66,44.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raan Wildwind|r.
    .accept 97967 >>Accept Camping 101: Fishing
    .target Raan Wildwind

    step
    .goto Zephras Isle,66.18,76.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valennia Stormfist|r.
    .turnin 92701 >>Turn in To Valanaar
    .target Valennia Stormfist
    step
        .goto Zephras Isle,66.17,76.66
        >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valennia Stormfist|r.
        .accept 93949 >>Accept Bugged
        .target Valennia Stormfist
step
    .goto Zephras Isle,66.18,76.65
    .accept 92699 >>Accept The Supreme Magister
step
    .goto Zephras Isle,66.17,76.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talaanis Shadowsong|r.
    .turnin 93948 >>Turn in Deliver the Signet
    .target Talaanis Shadowsong
    step
    .goto Zephras Isle,66.63,79.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elaadrin Evengale|r.
    .turnin 92699 >>Turn in The Supreme Magister
    .target Elaadrin Evengale
step
    .goto Zephras Isle,66.63,79.94
    .accept 92709 >>Accept A Grand Adventure
step
    .goto Zephras Isle,66.26,79.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dondallion Whisperwind|r.
    .accept 92727 >>Accept The Missing Scholar
    .target Dondallion Whisperwind
step
    .goto Zephras Isle,66.35,79.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Iaadaria Bitterwind|r.
    .accept 92741 >>Accept Unwelcome Visitors
    .target Iaadaria Bitterwind

step
    .goto Zephras Isle,64.17,79.43
    
    .complete 92709,1 --1/1 Listen to Elaadrin
step
    .goto Zephras Isle,66.63,79.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elaadrin Evengale|r.
    .turnin 92709 >>Turn in A Grand Adventure
    .target Elaadrin Evengale

step
    .goto Zephras Isle,65.96,74.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ealaane Nimbuswalker|r.
    .accept 94896 >>Accept Aid For The Refugees
    .target Ealaane Nimbuswalker
step
    .goto Zephras Isle,65.96,74.30
    .accept 94897 >>Accept The Fate of a Loved One
step
    .goto Zephras Isle,63.98,75.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lotheluum Starbreeze|r.
    .accept 94484 >>Accept Unnerving Silence
    .target Lotheluum Starbreeze

step
    .goto Zephras Isle,59.65,74.68
    
    .complete 93949,1 --8/8 Enchanted Skyhopper Exterminated
step
    .goto Zephras Isle,60.64,72.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nyalah Brightfire|r.
    .accept 93317 >>Accept Crab Season
    .target Nyalah Brightfire
step
    .goto Zephras Isle,62.10,73.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alvarion Windfield|r.
    .accept 92679 >>Accept Blood Tithe
    .target Alvarion Windfield

step
    .goto Zephras Isle,66.18,76.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valennia Stormfist|r.
    .turnin 93949 >>Turn in Bugged
    .target Valennia Stormfist
    step
    .goto Zephras Isle,53.33,72.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bloodstained Satchel|r.
    .turnin 92727 >>Turn in The Missing Scholar
    .target Bloodstained Satchel
step
    .goto Zephras Isle,53.33,72.15
    .accept 92849 >>Accept The Missing Scholar
step
    .goto Zephras Isle,50.67,65.38
    
    .complete 92849,1 --1/1 Find Fillion Flamebreeze


    .skipgossipid 136430 



step
    .goto Zephras Isle,52.05,69.40
    
    .complete 92849,2 --1/1 Carry Fillion Flamebreeze to safety while avoiding enemies
step
    .goto Zephras Isle,52.07,69.40
    .turnin 92849 >>Turn in The Missing Scholar

step
    .goto Zephras Isle,52.07,69.40
    .accept 92850 >>Accept The Missing Scholar
step
    .goto Zephras Isle,52.02,65.51
    .complete 92850,1 --1/1 Shriekling Matriarch's Head
step
    .goto Zephras Isle,46.71,81.95
    
    .complete 92679,1 --1/1 Find Aamelia Windfield
step
    .goto Zephras Isle,46.71,81.94
    .turnin 92679 >>Turn in Blood Tithe

step
    .goto Zephras Isle,46.71,81.94
    .accept 92682 >>Accept Make Yourself Useful
step
    .goto Zephras Isle,46.71,81.94
    .accept 92684 >>Accept Ornery Ornery Galestriders
step
    .goto Zephras Isle,46.71,81.94
    .accept 92683 >>Accept Flutterfly Dust


step
    .goto Zephras Isle,46.71,78.42
    >>Kill |cRXP_ENEMY_Hungry Bandit|r.
    .complete 92682,2 --5/5 Hungry Bandit slain
    .mob Hungry Bandit
step
    .goto Zephras Isle,46.31,79.63
    .complete 92682,1 --10/10 Ripe Stormapple
step
    .goto Zephras Isle,48.56,78.74
    .accept 92698 >>Accept What Is My Purpose?
step
    .goto Zephras Isle,51.74,82.68
    .complete 92683,1 --5/5 Flutterfly Dust
step
    .goto Zephras Isle,50.31,83.18
    .complete 92684,1 --7/7 Lowlands Galestrider Tenderloin


step
    .goto Zephras Isle,46.71,81.94
    .turnin 92682 >>Turn in Make Yourself Useful

step
    .goto Zephras Isle,46.71,81.94
    .turnin 92684 >>Turn in Ornery Ornery Galestriders

step
    .goto Zephras Isle,46.70,81.94
    .turnin 92698 >>Turn in What Is My Purpose?

step
    .goto Zephras Isle,46.70,81.94
    .turnin 92683 >>Turn in Flutterfly Dust

step
    .goto Zephras Isle,46.70,81.94
    .accept 92685 >>Accept The Hills Have Eyes

step
    .goto Zephras Isle,44.84,75.09
    .complete 92685,1 --7/7 Blood-Stained Bandit Mask
step
    .goto Zephras Isle,46.70,81.94
    .turnin 92685 >>Turn in The Hills Have Eyes

step
    .goto Zephras Isle,46.70,81.94
    .accept 92693 >>Accept Standing Our Ground
step

    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aamelia Windfield|r.
    .complete 92693,1 --1/1 Speak with Aamelia Windfield
    .target Aamelia Windfield
    .skipgossipid 136302


step
    .goto Zephras Isle,47.51,78.44
    
    .complete 92693,2 --1/1 Follow Aamelia and make your final stand
step
    .goto Zephras Isle,47.51,78.49
    .turnin 92693 >>Turn in Standing Our Ground

step
    .goto Zephras Isle,47.51,78.49
    .accept 92703 >>Accept Deliver the News

step
    .goto Zephras Isle,62.11,73.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alvarion Windfield|r.
    .turnin 92703 >>Turn in Deliver the News
    .target Alvarion Windfield
step
    .goto Zephras Isle,62.90,77.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Belann Windwood|r.
    .accept 93791 >>Accept Speak with Belann
    .target Belann Windwood
step
    .goto Zephras Isle,62.90,77.45
    .turnin 93791 >>Turn in *undefined*

step << Mage
    .goto Zephras Isle,62.90,77.45
    .accept 93797 >>Accept Boughs in the Wind


step
    .goto Zephras Isle,66.26,79.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dondallion Whisperwind|r.
    .turnin 92850 >>Turn in The Missing Scholar
    .target Dondallion Whisperwind
step
    .goto Zephras Isle,66.63,79.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elaadrin Evengale|r.
    .accept 92840 >>Accept Catching Wind
    .target Elaadrin Evengale
step
    .goto Zephras Isle,47.93,69.05
    
    .complete 92840,1 --1/1 Protect the Index
step << Magic
    .goto Zephras Isle,48.49,67.81
    .complete 93797,1 --1/1 Wind-Infused Bough
step
    .goto Zephras Isle,52.58,60.50
    .complete 93317,1 --6/6 Windsong Crawler Meat
step
    .goto Zephras Isle,60.64,72.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nyalah Brightfire|r.
    .turnin 93317 >>Turn in Crab Season
    .target Nyalah Brightfire
step << Magic
    .goto Zephras Isle,62.89,77.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Belann Windwood|r.
    .turnin 93797 >>Turn in Boughs in the Wind
    .target Belann Windwood


step
    .goto Zephras Isle,66.63,79.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elaadrin Evengale|r.
    .turnin 92840 >>Turn in Catching Wind
    .target Elaadrin Evengale
step
    .goto Zephras Isle,66.63,79.93
    .accept 92834 >>Accept Avenged Tenfold
step
    .goto Zephras Isle,66.63,79.93
    .accept 92860 >>Accept In Service of Zephras
step
    .goto Zephras Isle,66.18,76.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valennia Stormfist|r.
    .turnin 92860 >>Turn in In Service of Zephras
    .target Valennia Stormfist
step
    .goto Zephras Isle,66.18,76.66
    .accept 93320 >>Accept Tower Defense


step
    .goto Zephras Isle,69.64,67.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yorana Windyreed|r.
    .turnin 93320 >>Turn in Tower Defense
    .target Yorana Windyreed
step
    .goto Zephras Isle,69.64,67.07
    .accept 92642 >>Accept Disrupting Logistics
step
    .goto Zephras Isle,69.64,67.07
    .accept 92645 >>Accept Breaking the Breaker
step
    .goto Zephras Isle,65.67,65.58
    >>Kill |cRXP_ENEMY_Commander Belguilos|r.
    .complete 92645,1 --1/1 Commander Belguilos slain
    .mob Commander Belguilos
step
    .goto Zephras Isle,66.09,67.72
    >>Kill |cRXP_ENEMY_Al'Aketh Healer|r.
    .complete 92642,1 --4/4 Al'Aketh Healer slain
    .mob Al'Aketh Healer
step
    .goto Zephras Isle,65.42,67.27
    >>Kill |cRXP_ENEMY_Al'Aketh Brawler|r.
    .complete 92642,2 --8/8 Al'Aketh Brawler slain
    .mob Al'Aketh Brawler
step
    .goto Zephras Isle,65.43,67.44
    .complete 92834,1 --10/10 Al'Aketh Windstone Charm
step
    .goto Zephras Isle,69.61,67.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yorana Windyreed|r.
    .turnin 92645 >>Turn in Breaking the Breaker
    .target Yorana Windyreed
step
    .goto Zephras Isle,69.61,67.10
    .turnin 92642 >>Turn in Disrupting Logistics

step
    .goto Zephras Isle,69.64,67.07
    .accept 92880 >>Accept Return to Valanaar
step
    .goto Zephras Isle,66.20,76.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valennia Stormfist|r.
    .turnin 92880 >>Turn in Return to Valanaar
    .target Valennia Stormfist
step
    .goto Zephras Isle,66.23,76.66
    .accept 92881 >>Accept The High Elder's Request
step
    .goto Zephras Isle,66.17,76.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talaanis Shadowsong|r.
    .turnin 92881 >>Turn in The High Elder's Request
    .target Talaanis Shadowsong
step
    .goto Zephras Isle,66.17,76.50
    .accept 92643 >>Accept The Turncoat


step
    .goto Zephras Isle,66.63,79.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elaadrin Evengale|r.
    .turnin 92834 >>Turn in Avenged Tenfold
    .target Elaadrin Evengale
step
    .goto Zephras Isle,56.81,61.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fendaal Windstone|r.
    .accept 98512 >>Accept Al'Aketh Assassins
    .target Fendaal Windstone
step
    .goto Zephras Isle,56.06,60.85
    
    .complete 92643,1 --1/1 Find the secluded house in Shen'dar Highlands
step
    .goto Zephras Isle,55.66,59.87
    >>Kill |cRXP_ENEMY_Al'Aketh Assassin|r.
    .complete 98512,1 --10/10 Al'Aketh Assassin slain
    .mob Al'Aketh Assassin
step
    .goto Zephras Isle,56.80,61.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fendaal Windstone|r.
    .turnin 98512 >>Turn in Al'Aketh Assassins
    .target Fendaal Windstone
step
    .goto Zephras Isle,56.49,60.86
    
    .complete 92643,2 --1/1 Find the Al'Aketh Turncoat
step
    .goto Zephras Isle,56.03,58.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dead Cultist|r.
    .turnin 92643 >>Turn in The Turncoat
    .target Dead Cultist
step
    .goto Zephras Isle,56.03,58.80
    .accept 92644 >>Accept Unfortunate News
step
    .goto Zephras Isle,66.17,76.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talaanis Shadowsong|r.
    .turnin 92644 >>Turn in Unfortunate News
    .target Talaanis Shadowsong
step
    .goto Zephras Isle,66.17,76.52
    .accept 94568 >>Accept The Cult's True Plans
step
    .skipgossipid 140111


    
    .complete 94568,1 --1/1 Learn what you can from the crystal
step
    .goto Zephras Isle,66.17,76.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talaanis Shadowsong|r.
    .turnin 94568 >>Turn in The Cult's True Plans
    .target Talaanis Shadowsong
step
    .goto Zephras Isle,66.17,76.51
    .accept 92640 >>Accept Desperate Times
step
    .goto Zephras Isle,66.18,76.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valennia Stormfist|r.
    .complete 92640,1 --1/1 Speak with Valennia Stormfist
    .target Valennia Stormfist
    .skipgossipid 137096
    .skipgossipid 137095
step
    .goto Zephras Isle,59.15,79.79
    
    .complete 92640,2 --1/1 Recruit the Windshapers
    .skipgossipid 136542 
    .skipgossipid 136541

step
    .goto Zephras Isle,66.54,79.89
    
    .complete 92640,3 --1/1 Recruit the High Order
    .skipgossipid 136547 
    .skipgossipid 136546 

step
    .goto Zephras Isle,66.18,76.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valennia Stormfist|r.
    .turnin 92640 >>Turn in Desperate Times
    .target Valennia Stormfist
step
    .goto Zephras Isle,66.18,76.65
    .accept 93065 >>Accept Prepare for Battle


step
    .goto Zephras Isle,61.15,70.91
    
    .complete 93065,1 --1/1 Find Valennia on the Road
step
    .goto Zephras Isle,61.15,70.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valennia Stormfist|r.
    .turnin 93065 >>Turn in Prepare for Battle
    .target Valennia Stormfist
step
    .goto Zephras Isle,61.15,70.93
    .accept 92947 >>Accept Making Our Move


step
    .goto Zephras Isle,61.29,49.50
    >>Kill |cRXP_ENEMY_Al'Aketh Guardian|r.
    .complete 92947,1 --8/8 Al'Aketh Guardian slain
    .complete 92947,2 --8/8 Al'Aketh Spiritcaller slain
    .complete 92947,3 --8/8 Al'Aketh Blademaster slain
    .mob Al'Aketh Guardian

step
    .goto Zephras Isle,61.29,49.50
    >>Kill |cRXP_ENEMY_Al'Aketh Guardian|r.
    .complete 92947,1 --8/8 Al'Aketh Guardian slain
    .mob Al'Aketh Guardian
step
    .goto Zephras Isle,63.79,50.55
    
    .complete 92947,4 --1/1 Report to Hyusaa Quickbreeze
step
    .goto Zephras Isle,63.79,50.55
    .turnin 92947 >>Turn in Making Our Move

step
    .goto Zephras Isle,63.79,50.55
    .accept 93958 >>Accept The Inner Sanctum
step
    .goto Zephras Isle,65.19,50.37
    .turnin 93958 >>Turn in The Inner Sanctum

step
    .goto Zephras Isle,65.19,50.37
    .accept 93835 >>Accept Confront Lorthuna
step

    .goto Zephras Isle,75.34,53.32
    
    .complete 93835,1 --1/1 Confront Lorthuna
.skipgossipid 137230


step
    .goto Zephras Isle,66.63,79.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elaadrin Evengale|r.
    .turnin 93835 >>Turn in Confront Lorthuna
    .target Elaadrin Evengale
step
    .goto Zephras Isle,66.63,79.93
    .accept 94369 >>Accept The Fate of Zephras
step
    .goto Zephras Isle,66.17,76.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talaanis Shadowsong|r.
    .complete 94369,1 --1/1 Speak with Talaanis Shadowsong
    .target Talaanis Shadowsong
step
    .goto Zephras Isle,66.18,76.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talaanis Shadowsong|r.
    .turnin 94369 >>Turn in The Fate of Zephras
    .target Talaanis Shadowsong
step
    .goto Zephras Isle,66.18,76.51
    .accept 93089 >>Accept What Comes Next


step
    .goto Zephras Isle,66.63,79.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elaadrin Evengale|r.
    .turnin 93089 >>Turn in What Comes Next
    .target Elaadrin Evengale
step
    .goto Zephras Isle,66.63,79.95
    .accept 94946 >>Accept The Magical City of Dalaran
step
    .goto Zephras Isle,53.95,38.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Strange Hermit|r.
    .accept 93159 >>Accept The Strange Hermit
    .target Strange Hermit
    
    .complete 93159,1 --1/1 Learn more about the Strange Hermit
    .skipgossipid 135787
    .skipgossipid 135786
    .skipgossipid 135785 -- engineering
    .skipgossipid 135784 -- no


step
    .goto Zephras Isle,53.96,38.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Strange Hermit|r.
    .turnin 93159 >>Turn in The Strange Hermit
    .target Strange Hermit
step
    .goto Zephras Isle,53.96,38.90
    .accept 93160 >>Accept The Forest's Bounty
step
    .goto Zephras Isle,53.96,38.90
    .accept 98285 >>Accept Camping 101: Engineering
step
    .goto Zephras Isle,53.96,38.90
    .accept 93172 >>Accept Free the Hollows


    .complete 98285,1 --Raise your engineering skill to 20
step
    .goto Zephras Isle,53.97,38.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Strange Hermit|r.
    .turnin 98285 >>Turn in Camping 101: Engineering
    .target Strange Hermit
]])

RXPGuides.RegisterGuide([[
#classic
#version 1
#name 1-10 Zephras Isle
#displayname 1-10 Skyborne222223
#group RestedXP Alliance 1-20
#internal

--Leyline
    .goto 2521,63.99,46.19

    .goto 2521,63.91,74.17
]])
RXPGuides.RegisterGuide([[
#classic
#version 1
#name 1-10 Zephras Isle
#displayname 1-10 Skyborne22222
#group RestedXP Alliance 1-20
#internal

--Windstone
    .goto 2521,62.99,45.74
]])
RXPGuides.RegisterGuide([[
#classic
#version 1
#name 1-10 Zephras Isle
#displayname 1-10 Skyborne2224334
#group RestedXP Alliance 1-20
#internal

--Tornado
    .goto 2521,64.58,46.38
]])
RXPGuides.RegisterGuide([[
#classic
#version 1
#name 1-10 Zephras Isle
#displayname 1-10 Skyborne22223423
#group RestedXP Alliance 1-20
#internal

--Trainers
        .goto 2521,53.97,38.9 -- engineering
]])
