local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

if GetLocale() == "zhCN" then return end
RXPGuides.RegisterGuide([[
#hardcore
#classic
#tbc
<< Alliance
#name 1-6 Shadowglen
#version 1
#group RestedXP Survival Guide (A)
#subgroup RXP Survival Guide 1-20
#defaultfor NightElf
#next 6-11 Teldrassil
step << !NightElf
    #sticky
    #completewith next
    +You have selected a guide meant for Night Elves. You should choose the same starter zone that you start in
step
    .goto Teldrassil,58.695,44.266
    .target Conservator Ilthalaine
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Conservator Ilthalaine|r
    .accept 456 >> Accept The Balance of Nature
step
    #sticky
    #label balance1
    >>Kill |cRXP_ENEMY_Young Nightsabers|r and |cRXP_ENEMY_Young Thistle Boars|r
    .goto Teldrassil,62.0,42.6
    .complete 456,1 --Kill Young Nightsaber (x7)
    .mob +Young Nightsaber
    .complete 456,2 --Kill Young Thistle Boar (x4)
    .mob +Young Thistle Boar
step
    .xp 2
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dirania Silvershine|r and |cRXP_FRIENDLY_Melithar Staghelm|r
    .accept 4495 >> Accept A Good Friend
    .target +Dirania Silvershine
    .goto Teldrassil,60.899,41.961
    .accept 458 >> Accept The Woodland Protector
	.goto Teldrassil,59.924,42.474
    .target +Melithar Staghelm
step << Hunter
    #era
    .goto Teldrassil,59.8,34.1
    .xp 4-610 >> Grind until you are 610xp away from level 4 (790/1400)
step << Hunter
    #som--xpgate
    .goto Teldrassil,59.8,34.1
    .xp 4-755 >> Grind until you are 755xp away from level 4 (645/1400)
step << Hunter
    .goto Teldrassil,54.593,32.992
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Iverron|r
    .turnin 4495 >> Turn in A Good Friend
    .target Iverron
    .accept 3519 >> Accept A Friend in Need
step << Hunter
    #completewith next
    .hs >> Hearth to Shadowglen
step << Hunter
    .goto Teldrassil,57.9,45.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tarindrella|r
    .turnin 458 >> Turn in The Woodland Protector
    .target Tarindrella
    .accept 459 >> Accept The Woodland Protector
step
    #requires balance1
	.goto Teldrassil,58.695,44.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Conservator Ilthalaine|r
    .turnin 456,1 >> Turn in The Balance of Nature << Hunter
    .turnin 456 >> Turn in The Balance of Nature << !Hunter
    .target Conservator Ilthalaine
    .accept 457 >> Accept The Balance of Nature
	.accept 3116 >> Accept Simple Sigil << Warrior
	.accept 3117 >> Accept Etched Sigil << Hunter
--	.accept 3118 >> Accept Encrypted Sigil << Rogue
	.accept 3119 >> Accept Hallowed Sigil << Priest
	.accept 3120 >> Accept Verdant Sigil << Druid
step << Warrior
    .goto Teldrassil,59.306,41.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keina|r
	.vendor >> |cRXP_WARN_Vendor trash|r
    .target Keina
step << Warrior
	.goto Teldrassil,59.637,38.442
    .target Alyissia
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alyissia|r
	.turnin 3116 >> Turn in Simple Sigil
    .trainer >> Train your class spells
step << !Hunter
    .goto Teldrassil,59.8,34.1
    >>Kill |cRXP_ENEMY_Mangy Nightsabers|r and |cRXP_ENEMY_Thistle Boars|r
    .complete 457,1 --Kill Mangy Nightsaber (x7)
    .mob +Mangy Nightsaber
    .complete 457,2 --Kill Thistle Boar (x7)
    .mob +Thistle Boar
step << !Hunter
    .goto Teldrassil,54.593,32.992
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Iverron|r
    .turnin 4495 >> Turn in A Good Friend
    .target Iverron
    .accept 3519 >> Accept A Friend in Need
step << !Hunter
    #completewith next
    .hs >> Hearth to Shadowglen
step << !Hunter
    .goto Teldrassil,57.9,45.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tarindrella|r
    .turnin 458 >> Turn in The Woodland Protector
    .target Tarindrella
    .accept 459 >> Accept The Woodland Protector
step << !Hunter
    .goto Teldrassil,58.6,44.3
    .target Conservator Ilthalaine
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Conservator Ilthalaine|r
    .turnin 457 >> Turn in The Balance of Nature
step
    .goto Teldrassil,60.899,41.961
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dirania Silvershine|r
    .turnin 3519 >> Turn in A Friend in Need
    .target Dirania Silvershine
    .accept 3521 >> Accept Iverron's Antidote
step << Hunter
    #completewith htraining
    .goto Teldrassil,59.306,41.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keina|r
	.vendor >> |cRXP_BUY_Buy 3 stacks of|r |T132382:0|t[Rough Arrows]
    .target Keina
step
    .goto Teldrassil,57.807,41.653
    .target Gilshalan Windwalker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gilshalan Windwalker|r
    .accept 916 >> Accept Webwood Venom
step << Hunter
    #era
    .xp 4-40
step << Hunter
    #som--xpgate
    .xp 4-50
step << Hunter
    .goto Teldrassil,57.80,40.97,25,0
    .goto Teldrassil,58.659,40.449
    >>Ascend the Aldrassil Tree
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ayanna Everstride|r
    .turnin 3117 >> Turn in Etched Sigil
    .train 1978 >>Train Serpent Sting
    .target Ayanna Everstride
step
    .goto Teldrassil,57.95,38.20,10,0
    .goto Teldrassil,57.76,37.27,10,0
    .goto Teldrassil,58.21,36.40,10,0
    .goto Teldrassil,58.81,37.83,10,0
    .goto Teldrassil,57.95,38.20
    >>Loot the |cRXP_LOOT_Moonpetal Lilies|r on the ground
    .complete 3521,2 --Collect Moonpetal Lily (x4)
step
    .goto Teldrassil,56.8,31.7
    >>Kill |cRXP_ENEMY_Webwood Spiders|r. Loot them for their |cRXP_LOOT_Ichor|r and |cRXP_LOOT_Venom Sacs|r
    .complete 3521,3 --Collect Webwood Ichor (x1)
    .complete 916,1 --Collect Webwood Venom Sac (x10)
    .mob Webwood Spider
step
    .goto Teldrassil,55.0,43.7
    >>Kill |cRXP_ENEMY_Grell|r and |cRXP_ENEMY_Grellkin|r. Loot them for their |cRXP_LOOT_Mushrooms|r and |cRXP_LOOT_Fel Moss|r
    .complete 3521,1 --Collect Hyacinth Mushroom (x7)
    .complete 459,1 --Collect Fel Moss (x8)
    .mob Grell
    .mob Grellkin
step
    .goto Teldrassil,57.8,45.1
    .target Tarindrella
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tarindrella|r
    .turnin 459 >> Turn in The Woodland Protector
step
    .goto Teldrassil,60.899,41.961
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dirania Silvershine|r
    .turnin 3521 >> Turn in Iverron's Antidote
    .target Dirania Silvershine
    .accept 3522 >> Accept Iverron's Antidote
step << !Priest
    #completewith next
    .goto Teldrassil,59.306,41.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keina|r
	.vendor >> |cRXP_WARN_Vendor trash|r << !Hunter
	.vendor >> |cRXP_BUY_Buy 3 or 4 stacks of|r |T132382:0|t[Rough Arrows] << Hunter
    .target Keina
step << Warrior
    .goto Teldrassil,59.637,38.442
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alyissia|r
	.trainer >> Train your class spells
    .target Alyissia
step << Priest
    #completewith next
    .goto Teldrassil,59.456,41.050
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Janna Brightmoon|r up stairs
	.vendor >> |cRXP_WARN_Vendor trash|r
    .target Janna Brightmoon
step << Priest
	.goto Teldrassil,59.174,40.442
    .target Shanda
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shanda|r up stairs
	.turnin 3119 >> Turn in Hallowed Sigil
	.trainer >> Train your class spells
step
    .goto Teldrassil,57.807,41.653
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gilshalan Windwalker|r
    .turnin 916 >> Turn in Webwood Venom
    .target Gilshalan Windwalker
    .accept 917 >> Accept Webwood Egg
step << Druid
    .goto Teldrassil,57.80,40.97,25,0
    .goto Teldrassil,58.626,40.287
    >>Ascend the Aldrassil Tree
    .target Mardant Strongoak
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mardant Strongoak|r
	.turnin 3120 >> Turn in Verdant Sigil
	.train 8921 >>Train Moonfire
step
    .goto Teldrassil,54.593,32.992
    .target Iverron
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Iverron|r
    .turnin 3522 >> Turn in Iverron's Antidote
step
    #completewith next
    .goto Teldrassil,56.73,31.17,25 >> Enter the Shadowthread Cave
step
    .goto Teldrassil,57.0,26.4
    >>Loot a |cRXP_LOOT_Webwood Egg|r on the ground at the back of the Cave
    .complete 917,1 --Collect Webwood Egg (x1)
step
	#softcore
	#completewith next
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
step << skip --logout skip
	#hardcore
	#completewith next
	+|cRXP_WARN_Logout skip on the ledge behind the |cRXP_LOOT_Webwood Eggs|r. Move your character until it looks like they're floating, then log out, and back in|r
	>>|cRXP_WARN_If you fall down, just run out the cave normally to the quest turn in|r
	.link https://www.youtube.com/watch?v=TTZZT3jpv1s >>|cRXP_WARN_Click here for a video guide|r
step
	.goto Teldrassil,57.807,41.653
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gilshalan Windwalker|r
    .turnin 917 >> Turn in Webwood Egg
    .target Gilshalan Windwalker
    .accept 920 >> Accept Tenaron's Summons
step
    .goto Teldrassil,57.80,40.97,25,0
    .goto Teldrassil,59.062,39.448
    >>Ascend the Aldrassil Tree
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tenaron Stormgrip|r
    .turnin 920 >> Turn in Tenaron's Summons
    .target Tenaron Stormgrip
    .accept 921 >> Accept Crown of the Earth
step
    #sticky
    #label vial1
    .goto Teldrassil,59.9,33.0
	.use 5185 >> |cRXP_WARN_Use the|r |T134776:0|t[Crystal Phial] |cRXP_WARN_at the Moonwell|r
    .complete 921,1 --Collect Filled Crystal Phial (x1)
step << Hunter
    .goto Teldrassil,59.8,34.1
    >>Kill |cRXP_ENEMY_Mangy Nightsabers|r and |cRXP_ENEMY_Thistle Boars|r
    .complete 457,1 --Kill Mangy Nightsaber (x7)
    .mob +Mangy Nightsaber
    .complete 457,2 --Kill Thistle Boar (x7)
    .mob +Thistle Boar
step
    #requires vial1
    #completewith next
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
step << Hunter
    #requires vial1
    .goto Teldrassil,58.6,44.3
    .target Conservator Ilthalaine
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Conservator Ilthalaine|r
    .turnin 457,2 >> Turn in The Balance of Nature
step << Priest
    #requires vial1
    .goto Teldrassil,59.2,40.5
    .target Shanda
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shanda|r
    .accept 5622 >> Accept In Favor of Elune
step
    #requires vial1
    .goto Teldrassil,57.80,40.97,25,0
    .goto Teldrassil,59.062,39.448
    >>Ascend the Aldrassil Tree
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tenaron Stormgrip|r
    .turnin 921 >> Turn in Crown of the Earth
    .target Tenaron Stormgrip
    .accept 928 >> Accept Crown of the Earth
step
    .goto Teldrassil,61.159,47.644
    .target Porthannius
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Porthannius|r
    .accept 2159 >> Accept Dolanaar Delivery
]])

RXPGuides.RegisterGuide([[
#hardcore
#classic
#tbc
<< Alliance
#name 6-11 Teldrassil
#version 1
#group RestedXP Survival Guide (A)
#subgroup RXP Survival Guide 1-20
#defaultfor NightElf
#next 11-13 Darkshore (Night Elf)
step
    .goto Teldrassil,60.5,56.3
    .target Zenn Foulhoof
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zenn Foulhoof|r
    .accept 488 >> Accept Zenn's Bidding
step
    #sticky
    #completewith zenn
    >>Kill |cRXP_ENEMY_Nightsabers|r. Loot them for their |cRXP_LOOT_Fangs|r
    >>Kill |cRXP_ENEMY_Strigid Owls|r. Loot them for their |cRXP_LOOT_Feathers|r
    >>Kill |cRXP_ENEMY_Webwood Lurkers|r. Loot them for their |cRXP_LOOT_Silk|r
    .complete 488,1 --Collect Nightsaber Fang (x3)
    .mob +Nightsaber
    .complete 488,2 --Collect Strigid Owl Feather (x3)
    .mob +Strigid Owl
    .complete 488,3 --Collect Webwood Spider Silk (x3)
    .mob +Webwood Lurker
step
    #sticky
	#completewith spiderLegs
    >>Kill |cRXP_ENEMY_Webwood Lurkers|r and |cRXP_ENEMY_Webwood Venomfangs|r. Loot them for their |cRXP_LOOT_Small Spider Legs|r
    >>|cRXP_WARN_You need these for a later quest|r
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob Webwood Lurker
    .mob Webwood Venomfang
step
    .goto Teldrassil,56.08,57.72
    .target Syral Bladeleaf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Syral Bladeleaf|r
    .accept 997 >> Accept Denalan's Earth
step
    .goto Teldrassil,55.954,57.272
    .target Athridas Bearmantle
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Athridas Bearmantle|r
    .accept 475 >> Accept A Troubling Breeze
step << Priest
    .goto Teldrassil,55.564,56.746
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Laurna Morninglight|r
    .turnin 5622 >> Turn in In Favor of Elune
    .target Laurna Morninglight
    .accept 5621 >> Accept Garments of the Moon
	.trainer >> Train your class spells
step << Rogue
    .goto Teldrassil,55.508,57.145
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aldia|r up stairs
    .vendor >> |cRXP_BUY_Buy and equip a|r |T135426:0|t[Small Throwing Knife]
    .target Aldia
step
    #era
    .goto Teldrassil,55.574,56.948
    .target Tallonkai Swiftroot
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tallonkai Swiftroot|r atop the Tree
    .accept 932 >> Accept Twisted Hatred
    .accept 2438 >> Accept The Emerald Dreamcatcher
step
    #som
    .goto Teldrassil,55.574,56.948
    .target Tallonkai Swiftroot
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tallonkai Swiftroot|r atop the Tree
    .accept 932 >> Accept Twisted Hatred << !Hunter
    .accept 2438 >> Accept The Emerald Dreamcatcher
step << Hunter
    .goto Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jeena Featherbow|r
    >>|cRXP_BUY_Buy and equip a|r |T135499:0|t[Hornwood Recurve Bow] |cRXP_BUY_if you can afford it (2s 85c), if not skip this step|r
    >>|cRXP_BUY_Buy|r |T132382:0|t[Rough Arrows] |cRXP_BUY_until your Quiver is full|r
    .collect 2506,1 --Collect Hornwood Recurve Bow
    .target Jeena Featherbow
step << Warrior
    .goto Teldrassil,56.221,59.198
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kyra Windblade|r
	.trainer >> Train your class spells
    .target Kyra Windblade
step << Rogue
    .goto Teldrassil,56.381,60.139
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jannok Breezesong|r
	.trainer >> Train your class spells
    .target Jannok Breezesong
step << Warrior
    .goto Teldrassil,56.308,59.488
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shalomon|r
    >>|cRXP_BUY_Buy and equip a|r |T135321:0|t[Gladius] |cRXP_BUY_if you can afford it (5s 36c), if not skip this step|r
    .collect 2488,1 --Collect Gladius
    .target Shalomon
step << Rogue
    .goto Teldrassil,56.308,59.488
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shalomon|r
    >>|cRXP_BUY_Buy and equip a|r |T135641:0|t[Stiletto] |cRXP_BUY_if you can afford it (4s 1c), if not skip this step|r
    .collect 2494,1 --Stiletto (1)
    .target Shalomon
step << Druid
    .goto Teldrassil,56.308,59.488
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shalomon|r
    >>|cRXP_BUY_Buy and equip a|r |T135145:0|t[Walking Stick] |cRXP_BUY_if you can afford it (5s 4c), if not skip this step|r
    .collect 2495,1 --Walking Stick (1)
    .target Shalomon
step
    .goto Teldrassil,55.619,59.788
    .target Innkeeper Keldamyr
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Keldamyr|r
    .turnin 2159,2 >> Turn in Dolanaar Delivery << Hunter
    .turnin 2159 >> Turn in Dolanaar Delivery << !Hunter
    .home >> Set your Hearthstone to Dolanaar
step << Hunter
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dazalar|r
	.train 3044>> Train Arcane Shot
    .target Dazalar
step << Druid
    .goto Teldrassil,55.945,61.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kal|r
	.trainer >> Train your class spells
    .target Kal
step
    .goto Teldrassil,56.142,61.714
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corithras Moonrage|r
    .turnin 928 >> Turn in Crown of the Earth
    .target Corithras Moonrage
    .accept 929 >> Accept Crown of the Earth
step << Druid
    .goto Teldrassil,57.721,60.641
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Malorne Bladeleaf|r
    .train 2366 >> Train |T136065:0|t[Herbalism]
    >>|T136065:0|t[Herbalism] |cRXP_WARN_is required to gather 5|r |T134187:0|t[Earthroot] |cRXP_WARN_for a level 15 quest later. You can unlearn it afterwards|r
    .target Malorne Bladeleaf
step << Druid
    #completewith end
    >>|cRXP_WARN_Level|r |T136065:0|t[Herbalism] |cRXP_WARN_to 15|r
    >>|cRXP_WARN_Pick 5 Earthroot off the ground for a level 15 quest later|r
    .collect 2449,5
step << Priest
    .goto Teldrassil,57.242,63.511
    >>Target |cRXP_FRIENDLY_Sentinel Shaya|r
    >>|cRXP_WARN_Cast|r |T135929:0|t[Lesser Heal (Rank 2)] |cRXP_WARN_and|r |T135987:0|t[Power Word: Fortitude] |cRXP_WARN_on|r |cRXP_FRIENDLY_Sentinel Shaya|r
    .complete 5621,1 --Heal and fortify Sentinel Shaya
    .target Sentinel Shaya
step
    .goto Teldrassil,60.900,68.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Denalan|r
    .turnin 997 >> Turn in Denalan's Earth
    .target Denalan
    .accept 918 >> Accept Timberling Seeds
    .accept 919 >> Accept Timberling Sprouts
step
    .goto Teldrassil,61.63,68.89,55,0
    .goto Teldrassil,60.52,70.47,55,0
    .goto Teldrassil,59.04,72.52,55,0
    .goto Teldrassil,57.69,69.92,55,0
    .goto Teldrassil,55.33,67.22,55,0
    .goto Teldrassil,57.89,64.84,55,0
    .goto Teldrassil,61.21,66.28
    >>Kill |cRXP_ENEMY_Timberlings|r. Loot them for their |cRXP_LOOT_Seeds|r
    >>Loot the |cRXP_LOOT_Timberling Sprouts|r on the ground
    .complete 918,1 --Collect Timberling Seed (x8)
    .complete 919,1 --Collect Timberling Sprout (x12)
    .mob Timberling
step
    .goto Teldrassil,60.900,68.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Denalan|r
    .turnin 918 >> Turn in Timberling Seeds
    .target Denalan
    .accept 922 >> Accept Rellian Greenspyre
    .turnin 919 >> Turn in Timberling Sprouts
step
    #completewith next
    .goto Teldrassil,68.02,59.66,120 >> Travel to Starbreeze Village
step
    .goto Teldrassil,68.02,59.66
    >>Open |cRXP_PICK_Tallonkai's Dresser|r. Loot it for the |cRXP_LOOT_Emerald Dreamcatcher|r
    .complete 2438,1 --Collect Emerald Dreamcatcher (x1)
step
    .goto Teldrassil,66.26,58.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gaerolas Talvethren|r up stairs
    .turnin 475 >> Turn in A Troubling Breeze
    .target Gaerolas Talvethren
    .accept 476 >> Accept Gnarlpine Corruption
step
    #label zenn
    .goto Teldrassil,63.38,58.10
    >>|cRXP_WARN_Use the|r |T134721:0|t[Jade Phial] |cRXP_WARN_at the Starbreeze Village Moonwell|r
    .complete 929,1 --Collect Filled Jade Phial (x1)
step
    >>Kill |cRXP_ENEMY_Nightsabers|r. Loot them for their |cRXP_LOOT_Fangs|r
    >>Kill |cRXP_ENEMY_Strigid Owls|r. Loot them for their |cRXP_LOOT_Feathers|r
    >>Kill |cRXP_ENEMY_Webwood Lurkers|r. Loot them for their |cRXP_LOOT_Silk|r
    >>|cRXP_WARN_Save any|r |T132832:0|t[Small Eggs] |cRXP_WARN_and|r |T134321:0|t[Small Spider Legs] |cRXP_WARN_to use for leveling |T133971:0|t[Cooking] |cRXP_WARN_later|r
    .complete 488,1 --Collect Nightsaber Fang (x3)
    .mob +Nightsaber
    .goto Teldrassil,66.10,52.43,60,0
    .goto Teldrassil,61.95,61.07,50,0
    .goto Teldrassil,59.14,60.91
    .complete 488,2 --Collect Strigid Owl Feather (x3)
    .mob +Strigid Owl
    .goto Teldrassil,66.10,52.43,60,0
    .goto Teldrassil,63.39,64.22,50,0
    .goto Teldrassil,59.14,60.91
    .complete 488,3 --Collect Webwood Spider Silk (x3)
    .goto Teldrassil,61.06,54.66,50,0
    .goto Teldrassil,60.17,59.62,50,0
    .goto Teldrassil,58.22,56.32
    .mob +Webwood Lurker
step
    #era
    .goto Teldrassil,60.7,54.4
	.xp 7+3500 >> Grind to level 7 +3500xp
step
    #som--xpgate
    .goto Teldrassil,60.7,54.4
	.xp 7+2900 >> Grind to level 7 +2900xp
step
    .goto Teldrassil,60.5,56.3
    .target Zenn Foulhoof
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zenn Foulhoof|r
    .turnin 488 >> Turn in Zenn's Bidding
step
	.goto Teldrassil,56.078,57.723
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Syral Bladeleaf|r
    .accept 489 >> Accept Seek Redemption!
    .target Syral Bladeleaf
step
    .goto Teldrassil,55.954,57.272
    .target Athridas Bearmantle
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Athridas Bearmantle|r
    .turnin 476 >> Turn in Gnarlpine Corruption
step << Priest
    .goto Teldrassil,55.564,56.746
    .target Laurna Morninglight
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Laurna Morninglight|r
    .turnin 5621 >> Turn in Garments of the Moon
	.trainer >> Train your class spells
step
    .goto Teldrassil,55.574,56.948
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tallonkai Swiftroot|r atop the Tree
    .turnin 2438 >> Turn in The Emerald Dreamcatcher
    .target Tallonkai Swiftroot
    .accept 2459 >> Accept Ferocitas the Dream Eater
step << Hunter
    .goto Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jeena Featherbow|r
    >>|cRXP_BUY_Buy and equip a|r |T135499:0|t[Hornwood Recurve Bow] |cRXP_BUY_if you can afford it (2s 85c), if not skip this step|r
    .collect 2506,1 --Collect Hornwood Recurve Bow
    .target Jeena Featherbow
step << Hunter
    .goto Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jeena Featherbow|r
	.vendor >>|cRXP_BUY_Buy up to 800|r |T132382:0|t[Rough Arrows]
    .target Jeena Featherbow
step << Hunter
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dazalar|r
	.trainer >> Train your class spells
    .target Dazalar
step << Warrior
    .goto Teldrassil,56.221,59.198
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kyra Windblade|r
	.trainer >> Train your class spells
    .target Kyra Windblade
step << Rogue
    .goto Teldrassil,56.381,60.139
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jannok Breezesong|r
	.trainer >> Train your class spells
    .target Jannok Breezesong
step << Warrior
    .goto Teldrassil,56.308,59.488
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shalomon|r
    >>|cRXP_BUY_Buy and equip a|r |T135321:0|t[Gladius] |cRXP_BUY_if you can afford it (5s 36c), if not skip this step|r
    .collect 2488,1 --Collect Gladius
    .target Shalomon
step << Rogue
    .goto Teldrassil,56.308,59.488
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shalomon|r
    >>|cRXP_BUY_Buy and equip a|r |T135641:0|t[Stiletto] |cRXP_BUY_if you can afford it (4s 1c), if not skip this step|r
    .collect 2494,1 --Stiletto (1)
    .target Shalomon
step << Druid
    .goto Teldrassil,56.308,59.488
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shalomon|r
    >>|cRXP_BUY_Buy and equip a|r |T135145:0|t[Walking Stick] |cRXP_BUY_if you can afford it (5s 4c), if not skip this step|r
    .collect 2495,1 --Walking Stick (1)
    .target Shalomon
step << Druid
    .goto Teldrassil,56.142,61.714
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corithras Moonrage|r
    .turnin 929 >> Turn in Crown of the Earth
    .target Corithras Moonrage
    .accept 933 >> Accept Crown of the Earth
step << Druid
    .goto Teldrassil,55.945,61.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kal|r
	.trainer >> Train your class spells
    .target Kal
step
	#completewith jewel
    >>Loot the |cRXP_LOOT_Fel Cones|r on the ground
    >>|cRXP_WARN_They are usually located next to tree trunks|r
    .complete 489,1 --Collect Fel Cone (x3)
step
    #completewith next
    >>Kill |cRXP_ENEMY_Gnarlpine Mystics|r
    >>|cRXP_WARN_If there aren't many |cRXP_ENEMY_Gnarlpine Mystics|r you may have to kill |cRXP_ENEMY_Gnarlpine Warriors|r to make them spawn|r
    .complete 2459,1 --Kill Gnarlpine Mystic (x7)
    .mob Gnarlpine Mystic
step
	.goto Teldrassil,69.37,53.41
	>>Kill |cRXP_ENEMY_Ferocitas the Dream Eater|r. Loot him for the |T133288:0|t[|cRXP_LOOT_Gnarlpine Necklace|r]
    .use 8049 >>|cRXP_WARN_Use the |T133288:0|t[|cRXP_LOOT_Gnarlpine Necklace|r] to loot|r |cRXP_LOOT_Tallonkai's Jewel|r
    .complete 2459,2 --Collect Tallonkai's Jewel (x1)
    .mob Ferocitas the Dream Eater
step
    #label jewel
    .goto Teldrassil,68.38,52.06,30,0
    .goto Teldrassil,69.37,53.41
    >>Kill |cRXP_ENEMY_Gnarlpine Mystics|r
    >>|cRXP_WARN_If there aren't many |cRXP_ENEMY_Gnarlpine Mystics|r you may have to kill |cRXP_ENEMY_Gnarlpine Warriors|r to make them spawn|r
    .complete 2459,1 --Kill Gnarlpine Mystic (x7)
    .mob Gnarlpine Mystic
step
    .goto Teldrassil,59.0,56.1,50,0
    .goto Teldrassil,56.5,65.5,50,0
    .goto Teldrassil,53.0,59.5,50,0
    .goto Teldrassil,63.6,62.3,50,0
    .goto Teldrassil,58.7,55.7
    >>Loot the |cRXP_LOOT_Fel Cones|r on the ground
    >>|cRXP_WARN_They are usually located next to tree trunks|r
    .complete 489,1 --Collect Fel Cone (x3)
step
    .goto Teldrassil,60.4,56.4
    .target Zenn Foulhoof
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zenn Foulhoof|r
    .turnin 489 >> Turn in Seek Redemption!
step
    #completewith next
    .goto Teldrassil,54.68,52.84,20,0
    .goto Teldrassil,54.42,51.19,15 >> Travel to Fel Rock
step << Hunter
    #era
    .goto Teldrassil,51.2,50.6
    >>Kill |cRXP_ENEMY_Lord Melenas|r. Loot him for his |cRXP_LOOT_Head|r
    >>|cRXP_ENEMY_Lord Melenas|r may be located in many different spawn locations throughout Fel Rock
    .complete 932,1 --Collect Melenas' Head (x1)
    .unitscan Lord Melenas
step << !Hunter
    .goto Teldrassil,51.2,50.6
    >>Kill |cRXP_ENEMY_Lord Melenas|r. Loot him for his |cRXP_LOOT_Head|r
    >>|cRXP_ENEMY_Lord Melenas|r may be located in many different spawn locations throughout Fel Rock
    .complete 932,1 --Collect Melenas' Head (x1)
    .unitscan Lord Melenas
step
    #softcore
    #completewith next
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
step << !Druid
    .goto Teldrassil,56.142,61.714
    .target Corithras Moonrage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corithras Moonrage|r
    .turnin 929 >> Turn in Crown of the Earth
step
	#era/som
    .goto Teldrassil,56.142,61.714
    .target Corithras Moonrage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corithras Moonrage|r
    .accept 933 >> Accept Crown of the Earth
step
    #completewith next
    .goto Teldrassil,42.61,76.18,50 >> Travel to southwestern Teldrassil
step
	#era/som
	.goto Teldrassil,42.61,76.18
	>>Click the |cRXP_PICK_Strange Fruited Plant|r
	.accept 930 >> Accept The Glowing Fruit
step
    #completewith next
    .goto Teldrassil,42.41,67.07,50 >> Travel to the Pools of Arlithrien
step
	#era/som
	#label spiderLegs
	.goto Teldrassil,42.41,67.07
    .use 5621 >>|cRXP_WARN_Use the|r |T134765:0|t[Tourmaline Phial] |cRXP_WARN_at the Pools of Arlithrien moonwell|r
	.complete 933,1
step
	#era/som
    .goto Teldrassil,44.69,70.52,40,0
    .goto Teldrassil,44.88,73.83
    >>Kill |cRXP_ENEMY_Webwood Lurkers|r and |cRXP_ENEMY_Webwood Venomfangs|r. Loot them for their |cRXP_LOOT_Small Spider Legs|r
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob Webwood Lurker
    .mob Webwood Venomfang
step
    #completewith next
    .goto Teldrassil,56.142,61.714,90 >> Travel to Dolanaar
step
	#era/som
    .goto Teldrassil,56.142,61.714
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corithras Moonrage|r
    .turnin 933 >> Turn in Crown of the Earth
    .target Corithras Moonrage
    .accept 7383 >> Accept Crown of the Earth
step
	#era/som
    .goto Teldrassil,57.121,61.296
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zarrin|r
    .train 2550 >>Train Cooking
    .accept 4161 >> Accept Recipe of the Kaldorei
    .turnin 4161 >> Turn in Recipe of the Kaldorei
    .target Zarrin
step
    .goto Teldrassil,55.29,56.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Byancie|r
    .train 3273 >> Train |T135966:0|t[First Aid]
    .target Byancie
step
    #som
    .goto Teldrassil,55.574,56.948
    .target Tallonkai Swiftroot
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tallonkai Swiftroot|r atop the Tree
    .turnin 932 >> Turn in Twisted Hatred << !Hunter
    .turnin 2459 >> Turn in Ferocitas the Dream Eater
step
    #era
    .goto Teldrassil,55.574,56.948
    .target Tallonkai Swiftroot
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tallonkai Swiftroot|r atop the Tree
    .turnin 932 >> Turn in Twisted Hatred
    .turnin 2459 >> Turn in Ferocitas the Dream Eater
step
    .goto Teldrassil,55.83,58.31,40,0
    .goto Teldrassil,50.22,53.83
    .goto Teldrassil,55.83,58.31,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moon Priestess Amara|r
    >>|cRXP_FRIENDLY_Moon Priestess Amara|r |cRXP_WARN_patrols the road west of Dolanaar|r
    .accept 487 >> Accept The Road to Darnassus
    .target Moon Priestess Amara
step
    .goto Teldrassil,46.6,53.0
    >>Kill |cRXP_ENEMY_Gnarlpine Ambushers|r
    .complete 487,1 --Kill Gnarlpine Ambusher (x6)
    .mob Gnarlpine Ambusher
step << Druid
    .goto Teldrassil,55.83,58.31,40,0
    .goto Teldrassil,50.22,53.83
    .goto Teldrassil,55.83,58.31,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moon Priestess Amara|r
    >>|cRXP_FRIENDLY_Moon Priestess Amara|r |cRXP_WARN_patrols the road west of Dolanaar|r
    .turnin 487 >> Turn in The Road to Darnassus
    .target Moon Priestess Amara
step
    #completewith next
    .goto Teldrassil,38.32,34.36,50 >> Travel to The Oracle Glade
step
	#era/som
    .goto Teldrassil,38.32,34.36
    .target Sentinel Arynia Cloudsbreak
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Arynia Cloudsbreak|r
    .accept 937 >> Accept The Enchanted Glade
step
	#era/som
    .goto Teldrassil,38.43,34.03
    .use 18152 >>|cRXP_WARN_Use the|r |T134798:0|t[Amethyst Phial] |cRXP_WARN_at The Oracle Glade moonwell|r
    .complete 7383,1 --Collect Filled Amethyst Phial (x1)
step
	#era/som
    #completewith xp10
	#label harpies
    >>Kill |cRXP_ENEMY_Bloodfeather Harpies|r. Loot them for their |cRXP_LOOT_Belts|r
    >>|cRXP_ENEMY_Bloodfeather Matriarchs|r |cRXP_WARN_cast|r |T136052:0|t[Healing Wave] |cRXP_WARN_and|r |T136048:0|t[Lightning Bolt] |cRXP_WARN_which does a lot of damage. Try to burst them fast|r
    .complete 937,1 --Collect Bloodfeather Belt (x6)
    .mob Bloodfeather Harpy
    .mob Bloodfeather Rogue
    .mob Bloodfeather Sorceress
    .mob Bloodfeather Fury
    .mob Bloodfeather Wind Witch
    .mob Bloodfeather Matriarch
step
	#era/som
    .goto Teldrassil,34.61,28.79
    >>Click the |cRXP_PICK_Strange Fronded Plant|r
    .accept 931 >> Accept The Shimmering Frond
step << Hunter
	#era/som
    #completewith xp10
    #label mist1
    .goto Teldrassil,31.54,31.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mist|r
    >>|cRXP_WARN_This will start an escort quest|r
    .accept 938 >> Accept Mist
    .target Mist
step << Hunter
    #era
    #sticky
    #label xp10
    .xp 10-2670 >> Grind until you are 2670 xp off level 10 (3830/6500)
    >>|cRXP_WARN_Once you reach this xp breakpoint, skip the harpy/escort quest and go straight to Darnassus. You will have another opportunity to finish those quests later|r
step << Hunter skip
    #era/som--xpgate
    #sticky
    #label xp10
    .xp 10-3330 >> Grind until you are 3330 xp off level 10 (3170/6500)
    >>|cRXP_WARN_Once you reach this xp breakpoint, skip the harpy/escort quest and go straight to Darnassus. You will have another opportunity to finish those quests later|r
step << Hunter
	#era/som
    #completewith xp10
    #requires mist1
    .goto Teldrassil,38.32,34.36
    .target Sentinel Arynia Cloudsbreak
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Arynia Cloudsbreak|r
    .turnin 938 >> Turn in Mist
step << Hunter
	#era/som
    #completewith xp10
	#requires harpies
    .goto Teldrassil,38.32,34.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Arynia Cloudsbreak|r
    .turnin 937 >> Turn in The Enchanted Glade
    .target Sentinel Arynia Cloudsbreak
    .accept 940 >> Accept Teldrassil
step << !Hunter
	#era/som
    #label mist1
    .goto Teldrassil,31.54,31.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mist|r
    >>|cRXP_WARN_This will start an escort quest|r
    .accept 938 >> Accept Mist
    .target Mist
step << !Hunter
	#era/som
    .goto Teldrassil,38.32,34.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Arynia Cloudsbreak|r
    .turnin 937 >> Turn in The Enchanted Glade
    .target Sentinel Arynia Cloudsbreak
    .accept 940 >> Accept Teldrassil
    .turnin 938 >> Turn in Mist
step << !Hunter
    #era
    #label xp10
    .xp 10-750 << Druid
    .xp 10-3110 << !Druid
step << !Hunter
	#som--xpgate
    #phase 1-2
	#label xp10
   .xp 10-930 << Druid
   .xp 10-3880 << !Druid
step
	#som--xpgate
    #phase 3-6
	.goto Teldrassil,38.6,58.0
	>>Finish off collecting 7 Small Spider Legs
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
step << Druid
	#som--xpgate
	#phase 3-6
	#label xp10
	.xp 10-640
    .goto Teldrassil,38.3,34.4
	>>If you're still behind on xp do the harpy quest north
step << !Druid
	#som--xpgate
	#phase 3-6
	#label xp10
	.xp 10-3300
step << !Rogue
    #requires xp10
    #completewith next
    .goto Darnassus,82.01,36.70,100 >> Travel to Darnassus
step << !Rogue
    #requires xp10
    .goto Darnassus,38.18,21.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rellian Greenspyre|r
    .turnin 922 >> Turn in Rellian Greenspyre
    .target Rellian Greenspyre
    .accept 923 >> Accept Tumors
step << !Hunter !Rogue
	#era/som
    .goto Darnassus,34.96,9.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arch Druid Fandral Staghelm|r atop the Tree
    .turnin 940 >> Turn in Teldrassil
	.isOnQuest 940
    .target Arch Druid Fandral Staghelm
step << Druid
    .goto Darnassus,35.38,8.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mathrengyl Bearwalker|r on the middle level
    .accept 5921 >> Accept Moonglade
	.trainer >> Train your class spells
    .target Mathrengyl Bearwalker
step << !Rogue
    .goto Darnassus,39.72,92.68,10,0
    .goto Darnassus,36.65,85.93
    .target Priestess A'moora
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess A'moora|r
    .accept 2518 >> Accept Tears of the Moon
step << Druid
	#completewith next
	.cast 18960 >> Cast Teleport: Moonglade
    >>|cRXP_WARN_It will be in your spellbook|r
	.zoneskip Moonglade
step << Druid
    .goto Moonglade,56.21,30.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dendrite Starblaze|r up stairs
    .turnin 5921 >> Turn in Moonglade
    .target Dendrite Starblaze
    .accept 5929 >> Accept Great Bear Spirit
step << Druid
    .goto Moonglade,45.12,26.78,15,0
    .goto Moonglade,39.17,27.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Great Bear Spirit|r
    .complete 5929,1 --Seek out the Great Bear Spirit and learn what it has to share with you about the nature of the bear.
    .skipgossip
    .target Great Bear Spirit
step << Druid
	#completewith next
	.cast 18960 >> Cast Teleport: Moonglade
    >>|cRXP_WARN_This will make you return faster|r
step << Druid
    .goto Moonglade,56.21,30.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dendrite Starblaze|r up stairs
    .turnin 5929 >> Turn in Great Bear Spirit
    .target Dendrite Starblaze
    .accept 5931 >> Accept Back to Darnassus
step
    #requires xp10 << Rogue
    #completewith next << !Rogue
    .hs >> Hearth to Dolanaar
step << Hunter
    .goto Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jeena Featherbow|r
	.vendor >> |cRXP_BUY_Buy 4 stacks of|r |T132382:0|t[Sharp Arrows]|cRXP_BUY_. Equip them as soon as you reach level 10|r
    .target Jeena Featherbow
step
	#som
	#phase 3-6
    .goto Teldrassil,57.121,61.296
    .train 2550 >>Train Cooking
    .target Zarrin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zarrin|r
    .accept 4161 >> Accept Recipe of the Kaldorei
    .turnin 4161 >> Turn in Recipe of the Kaldorei
step
	#som
	#phase 3-6
    .goto Teldrassil,51.9,56.4
    >>Find Moon Priestess Amara, she patrols the road west of Dolanaar
    .target Moon Priestess Amara
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moon Priestess Amara|r
    .turnin 487 >> Turn in The Road to Darnassus
	.maxlevel 9
step << Hunter
    #completewith L10
    #level 10
    #label beast1
    .goto Teldrassil,56.676,59.489
    .target Dazalar
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dazalar|r
    .accept 6063 >> Accept Taming the Beast
	.train 13165 >> Train your level 10 spells
step << Hunter
    #completewith L10
    #level 10
    #requires beast1
    #label beast2
    .goto Teldrassil,59.9,58.8
    .use 15921 >>|cRXP_WARN_Use the|r |T132164:0|t[Taming Rod] |cRXP_WARN_on a|r |cRXP_ENEMY_Webwood Lurker|r
    .complete 6063,1 --Tame a Webwood Lurker
    .mob Webwood Lurker
step << Hunter
    #completewith L10
    #level 10
    #requires beast2
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dazalar|r
    .turnin 6063 >> Turn in Taming the Beast
    .target Dazalar
    .accept 6101 >> Accept Taming the Beast
step
	#era/som
    .goto Teldrassil,56.142,61.714
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corithras Moonrage|r
    .turnin 7383 >> Turn in Crown of the Earth
    .target Corithras Moonrage
    .accept 935 >> Accept Crown of the Earth
step
	#era/som
	.goto Teldrassil,60.900,68.489
    .target Denalan
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Denalan|r
    .turnin 931 >> Turn in The Shimmering Frond
    .turnin 930 >> Turn in The Glowing Fruit
step
	#era/som
	.goto Teldrassil,60.900,68.489
    .target Denalan
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Denalan|r
	.turnin 927 >> Turn in The Moss-twined Heart
    .isOnQuest 927
step
	#era/som
	.goto Teldrassil,60.78,68.59
	>>Click on |cRXP_LOOT_Denalans Planter|r
	.turnin 941 >> Turn in Planting the Heart
	.isQuestTurnedIn 927
step << Hunter
	#era/som
    .goto Teldrassil,62.6,72.2
    .use 15922 >>|cRXP_WARN_Use the|r |T132164:0|t[Taming Rod] |cRXP_WARN_on a|r |cRXP_ENEMY_Nightsaber Stalker|r
    >>|cRXP_WARN_You must right click your Pet Frame and Dismiss your pet before you can tame another one|r
    .complete 6101,1 --Tame a Nightsaber Stalker
	.isOnQuest 6101
    .mob Nightsaber Stalker
step
    #label L10
    .xp 10
step << Priest
    .goto Teldrassil,55.564,56.746
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Laurna Morninglight|r
	.trainer >> Train your class spells
    .target Laurna Morninglight
step << Warrior
    .goto Teldrassil,56.221,59.198
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kyra Windblade|r
	.trainer >> Train your class spells
    .target Kyra Windblade
step << Rogue
    .goto Teldrassil,56.381,60.139
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jannok Breezesong|r
	.trainer >> Train your class spells
    .target Jannok Breezesong
step << Hunter
    .goto Teldrassil,56.676,59.489
    .target Dazalar
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dazalar|r
    .accept 6063 >> Accept Taming the Beast
	.trainer >> Train your class spells
step << Hunter
    .goto Teldrassil,59.9,58.8
    .use 15921 >>|cRXP_WARN_Use the|r |T132164:0|t[Taming Rod] |cRXP_WARN_on a|r |cRXP_ENEMY_Webwood Lurker|r
    .complete 6063,1 --Tame a Webwood Lurker
    .mob Webwood Lurker
step << Hunter
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dazalar|r
    .turnin 6063 >> Turn in Taming the Beast
    .target Dazalar
    .accept 6101 >> Accept Taming the Beast
step << Hunter
    .goto Teldrassil,62.6,72.2
    .use 15922 >>|cRXP_WARN_Use the|r |T132164:0|t[Taming Rod] |cRXP_WARN_on a|r |cRXP_ENEMY_Nightsaber Stalker|r
    >>|cRXP_WARN_You must right click your Pet Frame and Dismiss your pet before you can tame another one|r
    .complete 6101,1 --Tame a Nightsaber Stalker
    .mob Nightsaber Stalker
step << Hunter
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dazalar|r
    .turnin 6101 >> Turn in Taming the Beast
    .target Dazalar
    .accept 6102 >> Accept Taming the Beast
step << Hunter
    .goto Teldrassil,64.7,66.7
    .use 15923 >>|cRXP_WARN_Use the|r |T132164:0|t[Taming Rod] |cRXP_WARN_on a|r |cRXP_ENEMY_Strigid Screecher|r
    >>|cRXP_WARN_You must right click your Pet Frame and Dismiss your pet before you can tame another one|r
    .complete 6102,1 --Tame a Strigid Screecher
    .mob Strigid Screecher
step << Hunter
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dazalar|r
    .turnin 6102 >> Turn in Taming the Beast
    .target Dazalar
    .accept 6103 >> Accept Training the Beast
step << Warrior
    .goto Teldrassil,55.83,58.31,40,0
    .goto Teldrassil,50.22,53.83
    .goto Teldrassil,55.83,58.31,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moon Priestess Amara|r
    >>|cRXP_FRIENDLY_Moon Priestess Amara|r |cRXP_WARN_patrols the road west of Dolanaar|r
    .accept 1684 >> Accept Elanaria
    .target Moon Priestess Amara
step << Rogue
    .goto Teldrassil,56.381,60.139
    .target Jannok Breezesong
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jannok Breezesong|r
    .accept 2241 >> Accept The Apple Falls
step << Hunter
    .goto Teldrassil,56.308,59.488
    .money <0.0504
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shalomon|r
    >>|cRXP_BUY_Buy a|r |T135145:0|t[Walking Stick]
    >>|cRXP_WARN_You will equip this later. Skip this step if you happened to find a different staff|r
    .collect 2495,1 -- Walking Stick (1)
    .target Shalomon
step << !Druid
    .goto Teldrassil,55.83,58.31,40,0
    .goto Teldrassil,50.22,53.83
    .goto Teldrassil,55.83,58.31,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moon Priestess Amara|r
    >>|cRXP_FRIENDLY_Moon Priestess Amara|r |cRXP_WARN_patrols the road west of Dolanaar|r
    .turnin 487 >> Turn in The Road to Darnassus
    .target Moon Priestess Amara
step << Rogue
    #completewith next
    .goto Darnassus,82.01,36.70,100 >> Travel to Darnassus
step << Rogue
    .goto Darnassus,38.18,21.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rellian Greenspyre|r
    .turnin 922 >> Turn in Rellian Greenspyre
    .target Rellian Greenspyre
    .accept 923 >> Accept Tumors
step << Rogue
    .goto Darnassus,34.96,9.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arch Druid Fandral Staghelm|r atop the Tree
    .turnin 935 >> Turn in Crown of the Earth
    .turnin 940 >> Turn in Teldrassil
    .target Arch Druid Fandral Staghelm
    .accept 952 >> Accept Grove of the Ancients
step << Rogue
    .goto Darnassus,31.21,17.72,8,0
    .goto Darnassus,36.99,21.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Syurna|r
    .turnin 2241 >> Turn in The Apple Falls
    .target Syurna
    .accept 2242 >> Accept Destiny Calls
step << Rogue
    .goto Darnassus,39.72,92.68,10,0
    .goto Darnassus,36.65,85.93
    .target Priestess A'moora
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess A'moora|r
    .accept 2518 >> Accept Tears of the Moon
step << Hunter
    #sticky
	.goto Teldrassil,41.2,44.4,0
	.goto Teldrassil,44.2,39.8,0
	.goto Teldrassil,45.6,31.4,0
	.goto Teldrassil,37.6,28.8,0
    >>|cRXP_WARN_Cast|r |T132164:0|t[Tame Beast] |cRXP_WARN_on a |cRXP_ENEMY_Strigid Hunter|r to tame it|r -- .tame 1997
    .train 2981 >> |cRXP_WARN_Attack mobs with it to learn|r |T132140:0|t[Claw (Rank 2)]
    .link https://www.wow-petopia.com/classic/training.php >> |cRXP_WARN_Click here for more info about pet training|r
	.unitscan Strigid Hunter
step
    .goto Teldrassil,43.2,42.8,55,0
    .goto Teldrassil,43.2,32.8,55,0
    .goto Teldrassil,43.6,26.0,55,0
    .goto Teldrassil,43.2,42.8
	>>Kill |cRXP_ENEMY_Timberling Tramplers|r, |cRXP_ENEMY_Timberling Mire Beasts|r and |cRXP_ENEMY_Elder Timberlings|r. Loot them for their |cRXP_LOOT_Tumors|r
    .complete 923,1 --Collect Mossy Tumor (x5)
    .mob Elder Timberling
    .mob Timberling Trampler
    .mob Timberling Mire Beast
step
    #label Spinnerets
	.goto Teldrassil,47.3,26.0,0
    .goto Teldrassil,37.9,25.1,0
    .goto Teldrassil,47.3,26.0,30,0
    .goto Teldrassil,37.9,25.1,30,0
    .goto Teldrassil,40.7,25.4
    >>Kill |cRXP_ENEMY_Lady Sathrah|r. Loot it for its |cRXP_LOOT_Spinnerets|r
    >>|cRXP_ENEMY_Lady Sathrah|r |cRXP_WARN_can spawn in 3 different locations|r
    .complete 2518,1 --Collect Silvery Spinnerets (x1)
    .mob Lady Sathrah
step << Rogue
    .goto Teldrassil,38.0,25.2
    >>|cRXP_WARN_Cast|r |T133644:0|t[Pick Pocket] on |cRXP_ENEMY_Sethir the Ancient|r
    >>|cRXP_WARN_You must be in|r |T132320:0|t[Stealth] |cRXP_WARN_to use|r |T133644:0|t[Pick Pocket]
    >>|cRXP_ENEMY_Sethir the Ancient|r |cRXP_WARN_walks along the big tree branch|r
    >>|cRXP_WARN_Avoid fighting |cRXP_ENEMY_Sethir the Ancient|r. Let him walk passed you, then|r |T132320:0|t[Stealth] |cRXP_WARN_and|r |T133644:0|t[Pick Pocket] |cRXP_WARN_when you're behind him|r
    .complete 2242,1
    .mob Sethir the Ancient
step
	#som << !Hunter
	#phase 3-6 << !Hunter
    .goto Teldrassil,38.3,34.3
    .target Sentinel Arynia Cloudsbreak
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Arynia Cloudsbreak|r
    .accept 937 >> Accept The Enchanted Glade
step
	#som << !Hunter
	#phase 3-6 << !Hunter
    #sticky
	#label harpies2
    .goto Teldrassil,33.619,29.819
    >>Kill |cRXP_ENEMY_Bloodfeather Harpies|r. Loot them for their |cRXP_LOOT_Belts|r
    >>|cRXP_ENEMY_Bloodfeather Matriarchs|r |cRXP_WARN_cast|r |T136052:0|t[Healing Wave] |cRXP_WARN_and|r |T136048:0|t[Lightning Bolt] |cRXP_WARN_which does a lot of damage. Try to burst them fast|r
    .complete 937,1 --Collect Bloodfeather Belt (x6)
    .mob Bloodfeather Harpy
    .mob Bloodfeather Rogue
    .mob Bloodfeather Sorceress
    .mob Bloodfeather Fury
    .mob Bloodfeather Wind Witch
    .mob Bloodfeather Matriarch
step
	#som << !Hunter
	#phase 3-6 << !Hunter
    .goto Teldrassil,31.54,31.62
    .target Mist
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mist|r
    >>|cRXP_WARN_This will start an escort quest|r
    .accept 938 >> Accept Mist
step
	#som << !Hunter
	#phase 3-6 << !Hunter
    .goto Teldrassil,38.3,34.4
    .target Sentinel Arynia Cloudsbreak
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Arynia Cloudsbreak|r
    .turnin 938 >> Turn in Mist
step
	#som << !Hunter
	#phase 3-6 << !Hunter
    #requires harpies2
    .goto Teldrassil,38.3,34.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Arynia Cloudsbreak|r
    .turnin 937 >> Turn in The Enchanted Glade
    .target Sentinel Arynia Cloudsbreak
    .accept 940 >> Accept Teldrassil
step
    #completewith NessaShadowsong
    .goto Darnassus,82.01,36.70,100 >> Travel to Darnassus
step
    #ah
    .goto Darnassus,56.245,54.039,-1
    .goto Darnassus,56.374,51.820,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to a |cRXP_FRIENDLY_Darnassus Auctioneer|r
    >>Buy the following items for a instant turn ins at Darkshore shortly. Skip this step if you wish to not buy any
    >>|T133972:0|t[Strider Meat]
    >>|T133912:0|t[Darkshore Grouper]
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .target Auctioneer Tolon
    .target Auctioneer Golothas
step
    #label NessaShadowsong
    .goto Darnassus,70.679,45.379
    .target Mydrannul
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mydrannul|r
    .accept 6344 >> Accept Nessa Shadowsong
step
	.abandon 927 >> Abandon The Moss-twined Heart
step << Warrior
    .goto Darnassus,57.305,34.606
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elanaria|r
    .turnin 1684 >> Turn in Elanaria
    .target Elanaria
    .accept 1683 >> Accept Vorlus Vilehoof
step << Warrior
    #sticky
    #completewith next
    .goto Teldrassil,48.7,62.2,18 >> Travel toward |cRXP_ENEMY_Vorlus Vilehoof|r
step << Warrior
    .goto Teldrassil,47.2,63.7
    >>Kill |cRXP_ENEMY_Vorlus Vilehoof|r. Loot him for his |cRXP_LOOT_Horn|r
    .complete 1683,1 --Collect Horn of Vorlus (x1)
    .mob Vorlus Vilehoof
step << Warrior
    #completewith next
    .goto Darnassus,82.01,36.70,100 >> Travel to Darnassus
step << Warrior
    .goto Darnassus,57.305,34.606
    .target Elanaria
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elanaria|r
    .turnin 1683 >> Turn in Vorlus Vilehoof
--	.accept 1686 >> Accept The Shade of Elura
step << Druid
    .goto Darnassus,35.38,8.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mathrengyl Bearwalker|r on the middle level
    .turnin 5931 >> Turn in Back to Darnassus
    .target Mathrengyl Bearwalker
    .accept 6001 >> Accept Body and Heart
step
    .goto Darnassus,34.814,9.255
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arch Druid Fandral Staghelm|r
    .turnin 935 >> Turn in Crown of the Earth
    .turnin 940 >> Turn in Teldrassil << Hunter
    .target Arch Druid Fandral Staghelm
    .accept 952 >> Accept Grove of the Ancients
step << Hunter
    .goto Darnassus,40.377,8.545
    .target Jocaste
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jocaste|r
    .turnin 6103 >> Turn in Training the Beast
step << Rogue
    .goto Darnassus,31.21,17.72,8,0
    .goto Darnassus,36.99,21.91
    .target Syurna
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Syurna|r
    .turnin 2242 >> Turn in Destiny Calls
step
    .goto Darnassus,38.184,21.639
    .target Rellian Greenspyre
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rellian Greenspyre|r
    .turnin 923 >> Turn in Tumors
step << Rogue
    #completewith next
    .goto Darnassus,62.68,65.58,30 >> Travel toward |cRXP_FRIENDLY_Turian|r
step << Rogue
    .goto Darnassus,62.68,65.58
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rellian Greenspyre|r on the second floor
    >>|cRXP_BUY_Buy a|r |T135641:0|t[Balanced Throwing Dagger]
    .collect 2946,1 -- Balanced Throwing Dagger
    .target Turian
step
    .goto Darnassus,39.72,92.68,10,0
    .goto Darnassus,36.65,85.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess A'moora|r
    .turnin 2518 >> Turn in Tears of the Moon
    .target Priestess A'moora
    .accept 2520 >> Accept Sathrah's Sacrifice
step
    .goto Darnassus,39.7,85.8
	.use 8155 >>|cRXP_WARN_Use|r |T135652:0|t[Sathrah's Sacrifice] |cRXP_WARN_at the fountain|r
    .complete 2520,1 --Offer the sacrifice at the fountain
step
    #label end
    .goto Darnassus,39.72,92.68,10,0
    .goto Darnassus,36.65,85.93
    .target Priestess A'moora
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess A'moora|r
    .turnin 2520 >> Turn in Sathrah's Sacrifice
step << Druid
    .goto Darnassus,47.95,68.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Firodren Mooncaller|r
    .train 2366 >> Train |T136065:0|t[Herbalism]
    >>|T136065:0|t[Herbalism] |cRXP_WARN_is required to gather 5|r |T134187:0|t[Earthroot] |cRXP_WARN_for a level 15 quest later. You can unlearn it afterwards|r
    .target Firodren Mooncaller
step << Hunter/Warrior/Priest
    .goto Darnassus,57.56,46.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ilyenia Moonfire|r
    .train 227 >>Train Staves
    >>If you have a Staff in your bags, equip it << Hunter
    .target Ilyenia Moonfire
step << Hunter
    #completewith FlyDS
    +|cRXP_WARN_Equip the|r |T135145:0|t[Walking Stick]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.19
step << Hunter
    .goto Darnassus,58.76,44.48
	.money <0.1751
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ariyell Skyshadow|r
	>>|cRXP_BUY_Buy and equip a|r |T135489:0|t[Laminated Recurve Bow]
    >>|cRXP_BUY_Buy|r |T132382:0|t[Sharp Arrows]
	.collect 2507,1
    .target Ariyell Skyshadow
step << Warrior
    .goto Darnassus,58.76,44.48
    .money <0.3022
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ariyell Skyshadow|r
    >>|cRXP_BUY_Buy a|r |T135154:0|t[Quarter Staff]|cRXP_BUY_. Equip it at level 11|r
	.collect 854,1
    .target Ariyell Skyshadow
step << Warrior
    .goto Darnassus,58.76,44.48
    .money <0.2023
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ariyell Skyshadow|r
	>>|cRXP_BUY_Buy and equip a|r |T135346:0|t[Cutlass] |cRXP_BUY_if you can't afford a|r |T135154:0|t[Quarter Staff]
	.collect 851,1
    .target Ariyell Skyshadow
step
    #completewith next
    .goto Darnassus,30.00,41.43,10 >> Travel through the purple portal to Rut'theran Village
step
    .goto Teldrassil,56.25,92.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nessa Shadowsong|r
    .turnin 6344 >> Turn in Nessa Shadowsong
    .target Nessa Shadowsong
    .accept 6341 >> Accept The Bounty of Teldrassil
step
    .goto Teldrassil,58.399,94.016
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vesprystus|r
    .turnin 6341 >> Turn in The Bounty of Teldrassil
    .target Vesprystus
    .accept 6342 >> Accept Flight to Auberdine
step
    #label FlyDS
    .goto Teldrassil,58.399,94.016
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vesprystus|r
    .fly Darkshore >> Fly to Darkshore
    .target Vesprystus
]])
