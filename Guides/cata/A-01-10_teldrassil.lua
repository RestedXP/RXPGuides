local _,addon = ...
if addon.game ~= "CATA" or addon.player.faction ~= 'Alliance' then return end
RXPGuides.RegisterGuide([[
#version 1
#group RXP Cataclysm 1-80 (A)
#cata
#name 1-6 Shadowglen
#next 6-10 Teldrassil
#defaultfor NightElf
<<Alliance
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ilthalaine|r and |cRXP_FRIENDLY_Melithar Staghelm|r
    .turnin 28714 >>Turn in Fel Moss Corruption
    .target +Ilthalaine
    .goto 460,46.28,73.48
    .turnin 28715 >>Turn in Demonic Thieves
	.target +Melithar Staghelm
    .goto 460,45.93,72.86
    .accept 3116 >> Accept Simple Sigil << Warrior
    .accept 3117 >> Accept Etched Sigil << Hunter
    .accept 3118 >> Accept Encrypted Sigil << Rogue
    .accept 3119 >> Accept Hallowed Sigil << Priest
    .accept 3120 >> Accept Verdant Sigil << Druid
    .accept 26841 >> Accept Forbidden Sigil << Mage
    --class quests are auto from either npc
step << Priest/Mage
    #completewith next
    .goto 1438/1,761.79999,10415.60059,10 >> Travel up the ramp towards |cRXP_FRIENDLY_Shanda|r << Priest
    .goto 1438/1,761.79999,10415.60059,10 >> Travel up the ramp towards |cRXP_FRIENDLY_Rhyanda|r << Mage
step << Priest
    .goto 1438/1,801.60004,10458.79980
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shanda|r
    .turnin 3119 >> Turn in Hallowed Sigil
    .accept 26949 >> Accept Healing for the Wounded
    .train 2061 >> Train |T135907:0|t[Flash Heal]
    .target Shanda
step << Priest
    .goto 1438/1,797.70001,10464.60059
    >>|cRXP_WARN_Cast|r |T135907:0|t[Flash Heal] |cRXP_WARN_5 times on a |cRXP_FRIENDLY_Wounded Sentinel|r beside you|r
    .complete 26949,1 -- Heal Wounded Sentinel
    .target Wounded Sentinel
step << Priest
    .goto 1438/1,801.60004,10458.79980
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shanda|r
    .turnin 26949 >> Turn in Healing for the Wounded
    .accept 28723 >> Accept Priestess of the Moon
    .target Shanda
step << Mage
    .goto 1438/1,804.79999,10456.29980
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rhyanda|r
    .turnin 26841 >> Turn in Forbidden Sigil
    .accept 26940 >> Accept Arcane Missiles
    .train 5143 >> Train |T136096:0|t[Arcane Missiles]
    .target Rhyanda
step << Mage
    .goto 1438/1,813.50000,10417.29980,-1
    .goto 1438/1,808.29999,10412.70020,-1
    .goto 1438/1,803.90002,10407.60059,-1
    .goto 1438/1,798.60004,10402.70020,-1
    .goto 1438/1,793.29999,10397.10059,-1
    .goto 1438/1,787.40002,10393.00000,-1
    .goto 1438/1,781.90002,10389.90039,-1
    >>|cRXP_WARN_Cast|r |T135812:0|t[Fireball] |cRXP_WARN_on the |cRXP_ENEMY_Training Dummy|r until you get a|r |T135731:0|t[Arcane Missles!] |cRXP_WARN_proc, then cast|r |T136096:0|t[Arcane Missiles]|cRXP_WARN_. Repeat this twice|r
    .complete 26940,1 -- Practice Arcane Missles (1)
    .mob Training Dummy
step << Mage
    #completewith next
    .goto 1438/1,761.79999,10415.60059,10 >> Travel up the ramp towards |cRXP_FRIENDLY_Rhyanda|r
step << Mage
    .goto 1438/1,804.79999,10456.29980
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rhyanda|r
    .turnin 26940 >> Turn in Arcane Missiles
    .accept 28723 >> Accept Priestess of the Moon
    .target Rhyanda
step << Warrior/Rogue
    #completewith next
    .goto 1438/1,797.20001,10458.90039,15,0
    .goto 1438/1,794.60004,10506.90039,10 >> Travel toward |cRXP_FRIENDLY_Alyissia|r inside << Warrior
    .goto 1438/1,794.60004,10506.90039,10 >> Travel toward |cRXP_FRIENDLY_Frahun Shadewhisper|r inside << Rogue
step << Warrior
    .goto 1438/1,778.10004,10526.60059
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alyissia|r
    .turnin 3116 >> Turn in Simple Sigil
    .accept 26945 >> Accept Learning New Techniques
	.train 100 >> Train |T132337:0|t[Charge]
    .target Alyissia
step << Warrior
    .goto 1438/1,808.79999,10460.79980
    >>|cRXP_WARN_Cast|r |T132337:0|t[Charge] |cRXP_WARN_on the|r |cRXP_ENEMY_Training Dummy|r
    .complete 26945,1 -- Practice Charge (1)
    .mob Training Dummy
step << Warrior
    .goto 1438/1,778.10004,10526.60059
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alyissia|r
    .turnin 26945 >> Turn in Learning New Techniques
    .accept 28723 >> Accept Priestess of the Moon
    .target Alyissia
step << Rogue
    .goto 1438/1,778.00000,10519.20020
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Frahun Shadewhisper|r
    .turnin 3118 >> Turn in Encrypted Sigil
    .accept 26946 >> Accept A Rogue's Advantage
	.train 2098 >> Train |T132292:0|t[Eviscerate]
    .target Frahun Shadewhisper
step << Rogue
    .goto 1438/1,808.79999,10486.00000,-1
    .goto 1438/1,805.60004,10481.79980,-1
    >>|cRXP_WARN_Cast|r |T136189:0|t[Sinister Strike] |cRXP_WARN_followed by|r |T132292:0|t[Eviscerate] |cRXP_WARN_3 times on the|r |cRXP_ENEMY_Training Dummy|r
    .complete 26946,1 -- Practice Eviscerate (1)
    .mob Training Dummy
step << Rogue
    .goto 1438/1,778.00000,10519.20020
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Frahun Shadewhisper|r
    .turnin 26946 >> Turn in A Rogue's Advantage
    .accept 28723 >> Accept Priestess of the Moon
    .target Frahun Shadewhisper
step << Hunter
    .goto 1438/1,778.00000,10448.10059
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ayanna Everstride|r
    .turnin 3117 >> Turn in Etched Sigil
    .accept 26947 >> Accept A Woodsman's Training
	.train 56641 >> Train |T132213:0|t[Steady Shot]
    .target Ayanna Everstride
step << Hunter
    .goto 1438/1,801.20001,10454.90039
    >>|cRXP_WARN_Cast|r |T132213:0|t[Steady Shot] |cRXP_WARN_on the |cRXP_ENEMY_Training Dummy|r 5 times|r
    .complete 26947,1 -- Practice Steady Shot (1)
    .mob Training Dummy
step << Hunter
    .goto 1438/1,778.00000,10448.10059
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ayanna Everstride|r
    .turnin 26947 >> Turn in A Woodsman's Training
    .accept 28723 >> Accept Priestess of the Moon
    .target Ayanna Everstride
step << Druid
    #completewith next
    .goto 1438/1,797.20001,10458.90039,15 >> Travel toward |cRXP_FRIENDLY_Mardant Strongoak|r inside
step << Druid
    .goto 1438/1,816.00000,10485.90039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mardant Strongoak|r
    .turnin 3120 >> Turn in Verdant Sigil
    .accept 26948 >> Accept Rejuvenating Touch
	.train 774 >> Train |T136081:0|t[Rejuvenation]
    .target Mardant Strongoak
step << Druid
    .goto 1438/1,769.79999,10436.29980,-1
    .goto 1438/1,788.29999,10417.90039,-1
    >>|cRXP_WARN_Cast|r |T136081:0|t[Rejuvenation] |cRXP_WARN_on a|r |cRXP_FRIENDLY_Wounded Sentinel|r
    .complete 26948,1 -- Heal Wounded Sentinel
    .target Wounded Sentinel
step << Druid
    .goto 1438/1,816.00000,10485.90039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mardant Strongoak|r
    .turnin 26948 >> Turn in Rejuvenating Touch
    .accept 28723 >> Accept Priestess of the Moon
    .target Mardant Strongoak
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

#version 1
#group RXP Cataclysm 1-80 (A)
#cata
#name 6-10 Teldrassil
#next 10-18 Darkshore
#defaultfor NightElf

<<Alliance

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
	.mob Nightsaber
	.mob Strigid Owl
	.mob Webwood Lurker
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
    #loop
    .goto 57,57.48,48.54,40,0
    .goto 57,58.21,49.79,40,0
    .goto 57,58.23,52.16,40,0
    .goto 57,59.97,53.47,40,0
    .goto 57,61.28,51.69,40,0
    .goto 57,60.21,50.03,40,0
    .goto 57,57.48,48.54,40,0
    .goto 57,57.48,48.54,0
    >>Kill |cRXP_ENEMY_Webwood Lurkers|r, |cRXP_ENEMY_Nightsabers|r and |cRXP_ENEMY_Strigid Owls|r and loot them for their |cRXP_LOOT_Nightsaber Fangs,|r, |cRXP_LOOT_Strigid Owl Feathers|r and |cRXP_LOOT_ Webwood Spider Silks.|r
    .complete 488,1 --2/2 Nightsaber Fang
    .complete 488,2 --2/2 Strigid Owl Feather
    .complete 488,3 --2/2 Webwood Spider Silk
	.mob Nightsaber Fang
	.mob Strigid Owl Feather
	.mob Webwood Spider Silk
step
    .isQuestComplete 488
    .goto 57,59.52,49.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zenn Foulhoof.|r
    .turnin 488 >>Turn in Zenn's Bidding
	.target Zenn Foulhoof
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
#loop
    .goto 57,55.94,55.82,20,0
    .goto 57,55.30,56.98,20,0
    .goto 57,55.32,57.04,20,0
    .goto 57,54.22,53.89,20,0
    .goto 57,56.51,55.80,20,0
    .goto 57,57.18,55.55,20,0
    .goto 57,55.94,55.82,20,0
    .goto 57,55.94,55.82,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Fel Cones.|r
    .complete 489,1 --3/3 Fel Cone

step
    .goto 57,59.51,49.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zenn Foulhoof.|r
    .turnin 489 >>Turn in Seek Redemption!
	.target Zenn Foulhoof
step
    .goto Teldrassil,55.77,50.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Syral Bladeleaf.|r
    .target Syral Bladeleaf
    .accept 13946 >>Accept Nature's Reprisal
step
    .goto 57,55.55,49.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tallonkai Swiftroot.|r
    .accept 932 >>Accept Twisted Hatred
	.target Tallonkai Swiftroot
step
#completewith melenas
    .goto 57,54.45,45.43,40 >> Head towards the cave north
    .subzoneskip 258--Fel Rock
step
    #label ireroot
    #sticky
    .goto 57,51.82,43.85
    --|
    >>Use the Ireroot Seeds in your bags to kill grellkin inside the cave
    .complete 13946,1 --12/12 Fel Rock grellkin killed with Ireroot Seeds
    .use 46716
step
#label melenas
    .goto 57,51.82,43.85
    >>Kill |cRXP_ENEMY_Lord Melenas|r. Loot him for his |cRXP_LOOT_Head|r
    .complete 932,1 --Collect Melenas' Head (x1)
    .unitscan Lord Melenas

step
#requires ireroot
    .goto 57,55.77,50.47
    >>Talk to |cRXP_FRIENDLY_Syral Bladeleaf|r
    .target Syral Bladeleaf
    .turnin 13946 >>Turn in Nature's Reprisal
step
    .goto 57,55.70,51.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Kyra Starsong|r 
    .target Sentinel Kyra Starsong
    .accept 13945 >>Accept Resident Danger
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Athridas Bearmantle|r 
    .target Athridas Bearmantle
    .accept 483 >>Accept The Relics of Wakening
step
    #completewith sleepingd
    >>Kill any type of |cRXP_ENEMY_Furbolg|r on your way to the next objective
    .complete 13945,1
    .mob Gnarlpine Shaman
	.mob Gnarlpine Defender
	.mob Gnarlpine Augur
step
    #completewith next
    .goto 57,45.488,50.760,25 >> Enter the tunnel inside the tree house
    .subzoneskip 262
step
    #label sleepingd
    .goto 57,45.038,53.480
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oben Rageclaw|r 
    .target Oben Rageclaw
    .accept 2541 >>Accept The Sleeping Druid
step
    #label shamans
    #sticky
    >>Kill and loot |cRXP_ENEMY_Gnarlpine Shamans|r
    .complete 2541,1 --|1/1 Shaman Voodoo Charm
    .mob Gnarlpine Shaman
step
    #sticky
    #requires shamans
    #label furbolgs
    >>Kill |cRXP_ENEMY_Furbolgs|r
    .complete 13945,1
    .mob Gnarlpine Shaman
	.mob Gnarlpine Defender
	.mob Gnarlpine Augur
--Gossip Ids:
--exit 37751
--raven claw 37753
--black feather quill 37754
--Sapphire of the sky 37755
--Rune of nesting 37756
--TODO: check on beta if gossip id match
step
    .goto 61,54.999,75.209
    >>Run across the bridge at the upper floor and click the chest and loot the rune inside
    >>You can also talk to the |cRXP_FRIENDLY_Sentinel Huntress|r companion and she will show you the way to the rune
    .complete 483,4 --|1/1 Rune of Nesting
    .target Sentinel Huntress
    .skipgossipid 37756
step
    .goto 61,51.956,86.565
    >>Go down into the bottom level and loot the chest inside a small room
    >>You can also talk to the |cRXP_FRIENDLY_Sentinel Huntress|r companion and she will show you the way to the rune
    .complete 483,2 --|1/1 Black Feather Quill
step
    .goto 61,49.887,36.749
    >>Click the chest at the bottom level of the big central room
    >>You can also talk to the |cRXP_FRIENDLY_Sentinel Huntress|r companion and she will show you the way to the rune
    .complete 483,3 --|1/1 Sapphire of Sky
step
    .goto 61,64.380,19.281
    >>Go up into the central platform, run across the bridge east and click the chest on top of the balcony
    >>You can also talk to the |cRXP_FRIENDLY_Sentinel Huntress|r companion and she will show you the way to the rune
    .complete 483,1 --|1/1 Raven Claw Talisman
step
    .goto 57,45.053,53.464
    >>Head towards the exit of the tunnel
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oben Rageclaw|r
    .target Oben Rageclaw
    .turnin 2541 >>Turn in The Sleeping Druid
    .accept 2561 >>Accept Druid of the Claw
    .skipgossipid 37751
step
    .goto 57,45.581,52.704
    >>Run across the bridge on the other side and wait until the locked door opens itself
    .use 8149 >>|cRXP_WARN_Use the|r |T132502:0|t[Voodoo Charm] |cRXP_WARN_on Rageclaw's corpse|r
    .complete 2561,1 --|
    .mob Rageclaw
step
    .goto 57,45.053,53.464
    >>Head towards the exit of the tunnel
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oben Rageclaw|r
    .target Oben Rageclaw
    .turnin 2561 >>Turn in Druid of the Claw
--NOTE: Deathskip or HS, have to test graveyard spawn locations
step
    .goto 57,55.668,51.981
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Athridas Bearmantle|r
    .target Athridas Bearmantle
    .turnin 483 >>Turn in The Relics of Wakening
    .accept 486 >>Accept Ursal the Mauler
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Kyra Starsong|r
    .target Sentinel Kyra Starsong
    .turnin 13945 >>Turn in Resident Danger
step
    .goto 57,49.351,44.672
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moon Priestess Amara|r 
    .target Moon Priestess Amara
    .accept 487 >>Accept The Road to Darnassus
step
    #sticky
    #label ambushers
    .goto 57,50.578,36.548,0,0
    >>Kill |cRXP_ENEMY_Gnarlpine Ambushers|r as you travel through the mountain path
    .complete 487,1 --|8/8 Gnarlpine Ambusher slain
    .mob Gnarlpine Ambusher
step
    .goto 57,51.693,39.805
    >>Follow the path and up the ramp to the cave at the top of the mountain
    .complete 486,1 --|1/1 Ursal the Mauler slain
    .mob Ursal the Mauler
step
    .goto 57,49.359,44.663
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moon Priestess Amara|r
    .target Moon Priestess Amara
    .turnin 487 >>Turn in The Road to Darnassus
step
    #completewith next
    #requires ambushers
    .deathskip >> Die and respawn at Dolanaar
step
    #requires ambushers
    .goto 57,55.715,51.981
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Athridas Bearmantle|r
    .target Athridas Bearmantle
    .turnin 486 >>Turn in Ursal the Mauler
step
    .goto 57,55.759,50.467
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Syral Bladeleaf|r 
    .target Syral Bladeleaf
    .accept 997 >>Accept Denalan's Earth

step
    .goto 57,59.929,59.738
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Denalan|r
    .target Denalan
    .turnin 997 >>Turn in Denalan's Earth
    .accept 918 >>Accept Timberling Seeds
    .accept 919 >>Accept Timberling Sprouts
step
    #sticky
    #label fruit1
    .goto 57,57.689,63.063
	>>Click the |cRXP_PICK_Strange Fruited Plant|r
    .accept 930 >>Accept The Glowing Fruit
step
    #loop
    .goto 57,57.689,63.063,55,0
    .goto 57,57.249,56.903,55,0
    .goto 57,60.263,58.219,55,0
    .goto 57,57.249,56.903,0
    .goto 57,60.263,58.219,0
    .goto 57,57.689,63.063,0
    >>Kill |cRXP_ENEMY_Timberlings|r. Loot them for their |cRXP_LOOT_Seeds|r
    >>Loot the |cRXP_LOOT_Timberling Sprouts|r on the ground
    .complete 918,1 --Collect Timberling Seed (x8)
    .complete 919,1 --Collect Timberling Sprout (x12)
    .mob Timberling


step
    #requires fruit1
    .goto 57,59.929,59.738
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Denalan|r
    .target Denalan
    .turnin 918 >>Turn in Timberling Seeds
    .turnin 919 >>Turn in Timberling Sprouts
    .accept 922 >>Accept Rellian Greenspyre
step
    .goto 57,59.929,59.738
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Denalan|r
    .target Denalan
    .turnin 930 >>Turn in The Glowing Fruit
step
    .goto 57,56.74,53.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nyoma.|r
    .accept 6344 >>Accept Reminders of Home
	.target Nyoma
step
    .goto 57,55.871,53.901
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corithras Moonrage|r 
    .target Corithras Moonrage
    .accept 7383 >>Accept Teldrassil: The Burden of the Kaldorei
step
    .goto 57,55.47,50.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fidelio.|r
    .turnin 6344 >>Turn in Reminders of Home
    .accept 6341 >>Accept To Darnassus
    >>|cRXP_WARN_Be careful to not fly to Darnassus on accident|r 
	.target Fidelio
--TODO: should be level 10 here, skip the rest of teldrassil?
step
    .goto 57,43.956,44.178
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rellian Greenspyre|r
    .target Rellian Greenspyre
    .turnin 922 >>Turn in Rellian Greenspyre
    .accept 923 >>Accept Mossy Tumors
step
    .goto 57,39.482,29.844
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Arynia Cloudsbreak|r 
    .target Sentinel Arynia Cloudsbreak
    .accept 937 >>Accept The Enchanted Glade
step
    .goto 57,39.222,29.729
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess A'moora|r 
    .target Priestess A'moora
    .accept 2518 >>Accept Tears of the Moon

step
    #loop
    .goto 57,45.297,23.695,40,0
    .goto 57,44.446,30.394,40,0
    .goto 57,45.297,23.695,0
    .goto 57,44.446,30.394,0
    >>Kill |cRXP_ENEMY_Timberling Tramplers|r, |cRXP_ENEMY_Timberling Mire Beasts|r and |cRXP_ENEMY_Elder Timberlings|r. Loot them for their |cRXP_LOOT_Tumors|r
    .complete 923,1 --|5/5 Mossy Tumor
    .mob Timberling Mire Beast
    .mob Timberling Bark Ripper
    .mob Timberling Trampler
step
--NOTE: Seems to be fixed spawn now
>>Kill |cRXP_ENEMY_Lady Sathrah|r. Loot it for its |cRXP_LOOT_Spinnerets|r
    .goto 57,40.754,22.233
    .complete 2518,1 --|1/1 Silvery Spinnerets
    .mob Lady Sathrah
step
    #label frond2
    #sticky
    .goto 57,37.131,25.434
    >>Click the |cRXP_PICK_Strange Fronded Plant|r
    .accept 931 >>Accept The Shimmering Frond
step
    #loop
    >>Kill |cRXP_ENEMY_Bloodfeather Harpies|r. Loot them for their |cRXP_LOOT_Belts|r
    .goto 57,36.775,24.398,30,0
    .goto 57,35.843,26.095,30,0
    .goto 57,35.063,28.517,30,0
    .goto 57,35.793,26.151,30,0
    .goto 57,35.793,26.151,0
    .mob Bloodfeather Harpy
    .mob Bloodfeather Rogue
    .mob Bloodfeather Sorceress
    .mob Bloodfeather Fury
    .mob Bloodfeather Wind Witch
    .mob Bloodfeather Matriarch
step
#requires frond2
    .goto 57,34.487,27.811
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mist|r
    >>|cRXP_WARN_This will start an escort quest|r
    .target Mist
    .accept 938 >>Accept Mist
step
    .goto 57,39.199,29.871
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess A'moora|r
    .target Priestess A'moora
    .turnin 2518 >>Turn in Tears of the Moon
step
    .goto 57,39.448,29.823
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Arynia Cloudsbreak|r
    .target Sentinel Arynia Cloudsbreak
    .turnin 937 >>Turn in The Enchanted Glade
    .turnin -938 >>Turn in Mist
step
    .goto 57,40.471,29.942
    .use 18152 >>|cRXP_WARN_Use the|r |T134798:0|t[Amethyst Phial] |cRXP_WARN_at The Oracle Glade moonwell|r
    .complete 7383,1 --|1/1 Filled Amethyst Phial
step
    .goto 57,43.947,44.186
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rellian Greenspyre|r
    .target Rellian Greenspyre
    .turnin 923 >>Turn in Mossy Tumors
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Denalan|r
    .target Denalan
    .accept 2499 >>Accept Oakenscowl
    .turnin 931 >>Turn in The Shimmering Frond
step
    .goto 57,47.403,35.829
    >>Kill and loot |cRXP_ENEMY_Oakenscowl|r
    .complete 2499,1 --|1/1 Gargantuan Tumor
    .unitscan Oakenscowl
step
    .goto 57,43.949,44.222
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Denalan|r
    .target Denalan
    .turnin 2499 >>Turn in Oakenscowl
step
    .goto 57,40.999,45.531
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corithras Moonrage|r
    .target Corithras Moonrage
    .turnin 7383 >>Turn in Teldrassil: The Burden of the Kaldorei
    .accept 933 >>Accept Teldrassil: The Coming Dawn
step
    .goto 57,43.939,58.534
    .use 5621 >>|cRXP_WARN_Use the|r |T134765:0|t[Tourmaline Phial] |cRXP_WARN_at the Pools of Arlithrien moonwell|r
	.complete 933,1
step
    .goto 57,42.525,58.213
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tarindrella|r
    .target Tarindrella
    .turnin 933 >>Turn in Teldrassil: The Coming Dawn
    .accept 14005 >>Accept The Vengeance of Elune
step
--TODO: Big RP quest, might be a huge waste of time, test on beta
    .goto 57,40.909,69.647
    .complete 14005,1 --|1/1 Bough of Corruption slain
step
    .goto 57,42.507,58.184
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tarindrella|r
    .target Tarindrella
    .turnin 14005 >>Turn in The Vengeance of Elune
    .accept 935 >>Accept The Waters of Teldrassil
step
    .goto 57,41.007,45.528
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corithras Moonrage|r
    .target Corithras Moonrage
    .turnin 935 >>Turn in The Waters of Teldrassil
    .accept 14039 >>Accept Home of the Kaldorei
step
    .goto 89,43.832,76.529
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Cordressa Briarbow|r 
    .target Sentinel Cordressa Briarbow
    .accept 26383 >>Accept Breaking Waves of Change
step
    .goto 89,43.062,77.971
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tyrande Whisperwind|r
    .target Tyrande Whisperwind
    .turnin 14039 >>Turn in Home of the Kaldorei
step
    .goto 89,36.090,53.496
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sister Aquinne|r
    .target Sister Aquinne
    .turnin 6341 >>Turn in To Darnassus
    .accept 6342 >>Accept An Unexpected Gift
step
    .goto 89,36.641,48.036
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Leora|r
    .target Leora
    .turnin 6342 >>Turn in An Unexpected Gift
step
    .goto 89,35.993,50.342
    .subzone 702 >>Step into the purple portal next to the flight master
    .zoneskip Darkshore
step
    .goto 57,55.406,88.415
    .fly Lor'danel >>Fly to Lor'danel
    .zoneskip Darkshore

--TELDRASSIL END


]])
