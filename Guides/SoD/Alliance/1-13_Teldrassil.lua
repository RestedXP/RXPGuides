local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#classic
<< Alliance
#season 2
#name 1-7 Shadowglen SoD
#displayname 1-7 Shadowglen
#version 1
#group RestedXP Alliance 1-20
#defaultfor NightElf
#next 7-13 Teldrassil SoD
step << !NightElf
    #sticky
    #completewith next
    +You have selected a guide meant for Night Elves. You should choose the same starter zone that you start in
step
    .goto Teldrassil,58.695,44.266
    .target Conservator Ilthalaine
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Conservator Ilthalaine|r
    .accept 456 >> Accept The Balance of Nature
step << Druid/Warrior/Rogue
    .goto Teldrassil,58.88,43.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Rune Broker|r
    .vendor >>|cRXP_BUY_Vendor one of your |T133975:0|t|cRXP_LOOT_[Shiny Red Apples]|r and buy the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Stars|r] << Druid
    .collect 210500,1 << Druid --Rune of the Stars (1)
    .vendor >>|cRXP_BUY_Vendor one of your |T133972:0|t|cRXP_LOOT_[Tough Jerky]|r and buy the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Victory Rush|r] << Warrior
    .collect 204806,1 << Warrior --Rune of Victory Rush (1)
    .vendor >>|cRXP_BUY_Vendor one of your |T133964:0|t|cRXP_LOOT_[Tough Hunks of Bread]|r and buy the |T134419:0|t[|cRXP_FRIENDLY_Rune of Shadowstrike|r] << Rogue
    >>You will get the rest of your runes very soon
    .target Rune Broker
    .skipgossip
step << Warrior/Rogue
    .train 400105 >> Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of Shadowstrike|r] to train |T132323:0|t[Shadowstrike], you will engrave it soon << Rogue
    .train 403470 >> Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of Victory Rush|r] to train |T132342:0|t[Victory Rush], you will engrave it soon << Warrior
step << Druid
    #optional
    #completewith next
    .train 424718 >> Use the |T134419:0|t[Rune of the Stars] to train |T135730:0|t[Starsurge]
    .engrave 7 >> Engrave |T135730:0|t[Starsurge] on your pants
step
    #sticky
    #label balance1
    #completewith GoodProtector
    >>Kill |cRXP_ENEMY_Young Nightsabers|r and |cRXP_ENEMY_Young Thistle Boars|r
    .goto Teldrassil,62.0,42.6,0,0
    .complete 456,1 --Kill Young Nightsaber (x7)
    .complete 456,2 --Kill Young Thistle Boar (x4)
    .mob Young Nightsaber
    .mob Young Thistle Boar
step
    >>Loot the mobs you kill, make sure you have at least 10 copper worth of vendor trash, you will need it to train |T132333:0|t[Battle Shout]<< Warrior
    .xp 2 >> Grind to level 2
step << !Warrior !Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dirania Silvershine|r and |cRXP_FRIENDLY_Melithar Staghelm|r
    #label GoodProtector
    .accept 4495 >> Accept A Good Friend
    .goto Teldrassil,60.899,41.961
    .accept 458 >> Accept The Woodland Protector
	.goto Teldrassil,59.924,42.474
    .target Dirania Silvershine
    .target Melithar Staghelm
step << Warrior
    #season 2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Melithar Staghelm|r
    #label GoodProtector
    .accept 458 >> Accept The Woodland Protector
	.goto Teldrassil,59.924,42.474
    .target Melithar Staghelm
step << Warrior/Rogue
    #season 2
    .goto Teldrassil,59.306,41.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keina|r
	.vendor >> |cRXP_WARN_Vendor trash|r
    .target Keina
step << Rogue
    .goto Teldrassil,59.63,38.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Frahun Shadewhisper|r
    .accept 77573 >> Accept Second-Story Work
    .turnin 77573 >> Turn in Second-Story Work
    .target Frahun Shadewhisper
step << Warrior
    #season 2
    .goto Teldrassil,59.637,38.442
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alyissia|r
    .accept 77575 >> Accept Amidst the Shadowed Webs
    .turnin 77575 >> Turn in Amidst the Shadowed Webs
    .trainer >> Train |T132333:0|t[Battle Shout]
    .target Alyissia
step << Warrior/Rogue
    .equip 10 >> Equip the |T132938:0|t[Tarnished Chain Gloves] << Warrior
    .engrave 10 >> Engrave |T132342:0|t[Victory Rush] on your gloves << Warrior
    .use 2385 << Warrior -- Tarnished Chain Gloves
    .equip 10 >> Equip the |T132952:0|t[Cracked Leather Gloves] << Rogue
    .engrave 10 >> Engrave |T132323:0|t[Shadowstrike] on your gloves << Rogue
    .use 2125 << Rogue --Cracked Leather Gloves
step << Warrior/Rogue
    #season 2
    .goto Teldrassil,60.8,42.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dirania Silvershine|r
    .accept 4495 >> Accept A Good Friend
    .target Dirania Silvershine
step
    >>|cRXP_WARN_Make sure to equip all pieces of gear that you can if they drop. You will need them to engrave|r |T134419:0|t|[Runes] |cRXP_WARN_on|r
    >>Kill |cRXP_ENEMY_Young Nightsabers|r and |cRXP_ENEMY_Young Thistle Boars|r
    .goto Teldrassil,62.0,42.6,0,0
    .complete 456,1 --Kill Young Nightsaber (x7)
    .complete 456,2 --Kill Young Thistle Boar (x4)
    .mob Young Nightsaber
    .mob Young Thistle Boar
step
    #requires balance1
	.goto Teldrassil,58.695,44.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Conservator Ilthalaine|r
    >>Take the |T132939:0|t[Gloves] as a reward to engrave a rune on them << Druid/Hunter
    .turnin 456 >> Turn in The Balance of Nature
    .target Conservator Ilthalaine
    .accept 457 >> Accept The Balance of Nature
step
    .goto Teldrassil,58.88,43.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Rune Broker|r
    >>|cRXP_WARN_MAKE SURE NOT TO VENDOR GEAR THAT CAN BE EQUIPPED|r
    .vendor >> |cRXP_BUY_Vendor trash and buy all the |T134419:0|t|cRXP_WARN_[Runes]|r that you need from him|r
    >>Make sure you bought the |T134419:0|t[|cRXP_FRIENDLY_Rune of the Chimera|r] << Hunter
    >>Make sure you bought the |T136222:0|t[Memories of a [|cRXP_FRIENDLY_Troubled Acolyte|r] and [|cRXP_FRIENDLY_Dark Purpouse|r] << Priest
    >>Make sure you bought the |T134903:0|t[|cRXP_FRIENDLY_Lunar Idol|r] << Druid
    .target Rune Broker
    .skipgossip
step << Hunter
    #optional
    #completewith balancetwocomplete
    >>Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of the Chimera|r] to train |T236176:0|t[Chimera Shot]
    .equip 10 >> Equip the |T132939:0|t[Archery Training Gloves]
    .engrave 10 >> Engrave |T236176:0|t[Chimera Shot] on your gloves
    .use 5394
    .use 206168
step << NightElf Priest
    #season 2
    .goto Teldrassil,59.6,41.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Janna Brightmoon|r upstairs
    .vendor >>|cRXP_BUY_Vendor Trash|r
    .collect 2117,1 >>Buy a pair of |T132543:0|t|cRXP_LOOT_Thin Cloth Shoes|r to engrave |T237514:0|t[Void Plague] on
    .target
step << NightElf Priest
    #season 2
    .goto Teldrassil,59.174,40.442
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shanda|r upstairs
    .accept 77574 >> Accept Meditation on Elune
    .turnin 77574 >> Turn in Meditation on Elune
    .target Shanda
step << Priest
    #optional
    #completewith next
    .equip 10 >> Equip the |T132961:0|t[Tattered Cloth Gloves] to engrave |T237545:0|t[Penance] on them
    .use 711
step << Priest
    #optional
    #completewith next
    .engrave 10 >> Engrave |T237545:0|t[Penance] on your gloves
    .engrave 8 >> Engrave |T237514:0|t[Void Plague] on your feet
step << NightElf Priest
    #season 2
    .goto Teldrassil,59.6,40.8
    >>|cRXP_WARN_Jump down|r and talk to|Tinterface/worldmap/chatbubble_64grey.blp:20|t |cRXP_FRIENDLY_Dellylah|r
    .vendor >>|cRXP_BUY_Buy 10 of|r |T132794:0|t|cRXP_LOOT_Refreshing Spring Water|r
    .target Dellylah
step
    #label balancetwocomplete
    .goto Teldrassil,59.8,34.1
    >>Kill |cRXP_ENEMY_Mangy Nightsabers|r and |cRXP_ENEMY_Thistle Boars|r
    .complete 457,1 --Kill Mangy Nightsaber (x7)
    .complete 457,2 --Kill Thistle Boar (x7)
    .mob Mangy Nightsaber
    .mob Thistle Boar
step
    .goto Teldrassil,54.593,32.992
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Iverron|r
    .turnin 4495 >> Turn in A Good Friend
    .target Iverron
    .accept 3519 >> Accept A Friend in Need
step
    #season 2
    .goto Teldrassil,59.8,34.1
    .xp 3-400 >> Grind until you are 400xp away from level 3 (500/900)
step
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
    .turnin 457 >> Turn in The Balance of Nature
    .target Conservator Ilthalaine
	.accept 3116 >> Accept Simple Sigil << Warrior
	.accept 3117 >> Accept Etched Sigil << Hunter
	.accept 3120 >> Accept Verdant Sigil << Druid
    .accept 3119 >> Accept Hallowed Sigil << Priest
step << Druid
    #optional
    #completewith next
    +Make sure you bought the |T134903:0|t[|cRXP_FRIENDLY_Lunar Idol|r] from the |cRXP_ENEMY_Rune Broker|r
    .equip 18 >> Equip the |T134903:0|t[|cRXP_FRIENDLY_Lunar Idol|r]
step
    .goto Teldrassil,60.899,41.961
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dirania Silvershine|r
    .turnin 3519 >> Turn in A Friend in Need
    .target Dirania Silvershine
    .accept 3521 >> Accept Iverron's Antidote
step << Hunter
    #season 2
    #completewith htraining
    .goto Teldrassil,59.306,41.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keina|r
    >>|cRXP_WARN_Make sure that you have 1 silver leftover after leaving the vendor to be able to afford|r |T132204:0|t[|cRXP_FRIENDLY_Serpent Sting|r]. |cRXP_WARN_Don't buy the bow if you won't be able to afford training later|r
	.vendor >> |cRXP_BUY_Buy a stack of|r |T132382:0|t[Rough Arrows]
    .vendor >> |cRXP_BUY_Buy a|r |T135499:0|t[Hornwood Recurve Bow]
    .target Keina
step << Hunter
    #season 2
    #completewith next
    +|cRXP_WARN_Equip the|r |T135499:0|t[Hornwood Recurve Bow]
    .use 2506
    .itemcount 2506,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.37
step << !Hunter !Druid !Priest
    #season 2
    .goto Teldrassil,59.306,41.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keina|r
	.vendor >> |cRXP_WARN_Vendor trash|r
    .target Keina
 step << NightElf Warrior
    #season 2
    .goto Teldrassil,59.637,38.442
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alyissia|r
    .turnin 3116 >> Turn in Simple Sigil
    .train 772 >> Train |T132155:0|t[Rend]
    .train 100 >> Train |T132337:0|t[Charge]
    .target Alyissia
step << Druid/Priest
    #season 2
    #label DTrain4
    .goto Teldrassil,59.602,40.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dellylah|r
    .vendor >> |cRXP_WARN_Vendor trash|r
    >>|cRXP_BUY_Buy 10|r |T132794:0|t[Refreshing Spring Water]
    >>|cRXP_WARN_Make sure you have 1 silver left so you can train|r |T136096:0|t[Moonfire] << Druid
    .collect 159,10 --Collect Refreshing Spring Water (x10)
    .target Dellylah
step
    .goto Teldrassil,57.807,41.653
    .target Gilshalan Windwalker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gilshalan Windwalker|r
    .accept 916 >> Accept Webwood Venom
    .target Gilshalan Windwalker
step << Druid
    #season 2
    .xp 4
step << Druid
    #season 2
    .goto Teldrassil,57.80,40.97,25,0
    .goto Teldrassil,58.626,40.287
    >>Ascend the Aldrassil Tree
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mardant Strongoak|r
	.turnin 3120 >> Turn in Verdant Sigil
    .accept 77571 >> Accept Relics of the Kaldorei
    .trainer >> Train your class spells. Ensure you learn |T136096:0|t[Moonfire]
    .target Mardant Strongoak
step << Hunter
    .xp 4-40
step << Hunter
    .goto Teldrassil,57.80,40.97,25,0
    .goto Teldrassil,58.659,40.449
    >>Ascend the Aldrassil Tree
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ayanna Everstride|r
    .turnin 3117 >> Turn in Etched Sigil
    .accept 77568 >> Accept A Hunter's Strength
    .turnin 77568 >> Turn in A Hunter's Strength
    .train 1978 >>Train Serpent Sting
    .target Ayanna Everstride
step << Druid
    #sticky
    #label LunarIdol
    .train 410061 >> Try to |cRXP_WARN_kill mobs while they're under the effect of your|r |T136096:0|t[Moonfire]
    >>After 6 kills you will be able to use the |T134903:0|t[|cRXP_FRIENDLY_Lunar Idol|r] to train |T237472:0|t[Fury of Stormrage]
step << Druid
    #sticky
    #optional
    #requires LunarIdol
    .engrave 5 >> Engrave |T237472:0|t[Fury of Stormrage] on your chest
step
    .goto Teldrassil,57.95,38.20,10,0
    .goto Teldrassil,57.76,37.27,10,0
    .goto Teldrassil,58.21,36.40,10,0
    .goto Teldrassil,58.81,37.83,10,0
    .goto Teldrassil,57.95,38.20
    >>Loot the |cRXP_LOOT_Moonpetal Lilies|r on the ground
    .complete 3521,2 --Collect Moonpetal Lily (x4)
step
    #label IchorVenomSac
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
    >>TIP: |cRXP_WARN_Take the leggings as the reward and keep them. You will use them to engrave a rune on later on|r << sod Hunter/sod Rogue/sod Warrior/sod Druid
    .turnin 459 >> Turn in The Woodland Protector
step
    .goto Teldrassil,60.899,41.961
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dirania Silvershine|r
    .turnin 3521 >> Turn in Iverron's Antidote
    .target Dirania Silvershine
step << !Hunter
    .goto Teldrassil,59.306,41.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keina|r
	.vendor >> |cRXP_WARN_Vendor trash|r << !Hunter
    .target Keina
step << Hunter
    #season 2
    .goto Teldrassil,59.306,41.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keina|r
	.vendor >> |cRXP_WARN_Vendor trash|r << !Hunter
	.vendor >> |cRXP_BUY_Buy 3 or 4 stacks of|r |T132382:0|t[Rough Arrows] << Hunter
    .vendor >> |cRXP_BUY_Buy a|r |T135499:0|t[Hornwood Recurve Bow] |cRXP_BUY_Buy if you haven't already got it|r << Hunter
    .target Keina
step << Hunter
    #completewith next
    +|cRXP_WARN_Equip the|r |T135499:0|t[Hornwood Recurve Bow]
    .use 2506
    .itemcount 2506,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.37
step
    .goto Teldrassil,57.807,41.653
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gilshalan Windwalker|r
    .turnin 916 >> Turn in Webwood Venom
    .target Gilshalan Windwalker
    .accept 917 >> Accept Webwood Egg
step << Hunter/Rogue
    #completewith next
    +|cRXP_WARN_Equip the|r |T135641:0|t[Thistlewood Dagger]
    .use 5392
    .itemcount 5392,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.05
step << Druid
    #season 2
    .goto Teldrassil,57.80,40.97,25,0
    .goto Teldrassil,58.626,40.287
    >>Ascend the Aldrassil Tree
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mardant Strongoak|r
	.turnin 3120 >> Turn in Verdant Sigil
    .train 5177 >>Train |T136006:0|t[|cRXP_FRIENDLY_Wrath|r] rank 2
    .target Mardant Strongoak
step
    .goto Teldrassil,54.593,32.992
    .target Iverron
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Iverron|r
    >>TIP: |cRXP_WARN_Take the pants as reward from him. You will use them to engrave a rune on later|r << Priest sod
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
    .deathskip >> Die and respawn at the Spirit Healer
    .target Spirit Healer
step
	.goto Teldrassil,57.807,41.653
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gilshalan Windwalker|r
    >>TIP: |cRXP_WARN_Take the Tunic as a reward from this quest and equip it. You will use it to engrave a rune on later|r << Hunter/Rogue/Druid
    >>TIP: |cRXP_WARN_Take the Robes as a reward from this quest and equip it. You will use it to engrave a rune on later|r << Priest
    .turnin 917 >> Turn in Webwood Egg
    .target Gilshalan Windwalker
step << Priest
    #requires vial1
    .goto Teldrassil,59.2,40.5
    .target Shanda
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shanda|r
    .accept 5622 >> Accept In Favor of Elune
    .turnin 3119 >> Turn in Hallowed Sigil
step
    .goto Teldrassil,61.159,47.644
    .target Porthannius
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Porthannius|r
    .accept 2159 >> Accept Dolanaar Delivery
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance
#season 2
#name 7-13 Teldrassil SoD
#displayname 7-13 Teldrassil
#version 1
#group RestedXP Alliance 1-20
#defaultfor NightElf
#next 13-20 Darkshore SoD


step
    .goto Teldrassil,60.5,56.3
    .target Zenn Foulhoof
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zenn Foulhoof|r
    .accept 488 >> Accept Zenn's Bidding
step << Hunter
    #season 2
    #completewith FlankingStrike
    #sticky
    >>While questing kill |cRXP_ENEMY_Strigid Owls|r or |cRXP_ENEMY_Strigid Screechers|r. Loot them for |T134025:0|t|cRXP_LOOT_Teldrassil Bird Meat|r
    .collect 208608,1 -- Teldrassil Bird Meat 1/1
step << Warrior
    #season 2
    #completewith zenn
    >>Kill |cRXP_ENEMY_Nightsabers|r or |cRXP_ENEMY_Nightsaber Stalkers|r. Loot them for their |cRXP_LOOT_Severed Tiger Head|r
    >>Kill |cRXP_ENEMY_Strigid Owls|r or |cRXP_ENEMY_Strigid Screechers|r. Loot them for their |cRXP_LOOT_Severed Owl Head|r
    >>Kill |cRXP_ENEMY_Webwood Lurkers|r or |cRXP_ENEMY_Webwood Venomfangs|r. Loot them for their |cRXP_LOOT_Severed Spider Head|r
    .collect 208611,1 -- Severed Tiger Head (1)
    .collect 208610,1 -- Severed Owl Head (1)
    .collect 208612,1 -- Severed Spider Head (1)
    .mob Nightsaber
    .mob Nightsaber Stalker
    .mob Strigid Owl
    .mob Strigid Screecher
    .mob Webwood Lurker
    .mob Webwood Venomfang
    .train 403475,1
step
    #sticky
    #completewith zenn
    >>Kill |cRXP_ENEMY_Nightsabers|r. Loot them for their |cRXP_LOOT_Fangs|r
    >>Kill |cRXP_ENEMY_Strigid Owls|r. Loot them for their |cRXP_LOOT_Feathers|r
    >>Kill |cRXP_ENEMY_Webwood Lurkers|r. Loot them for their |cRXP_LOOT_Silk|r
    .complete 488,1 --Collect Nightsaber Fang (x3)
    .complete 488,2 --Collect Strigid Owl Feather (x3)
    .complete 488,3 --Collect Webwood Spider Silk (x3)
    .mob Nightsaber
    .mob Strigid Owl
    .mob Webwood Lurker
step
    #sticky
	#completewith SoDSpiderLegs
    >>Kill |cRXP_ENEMY_Webwood Lurkers|r and |cRXP_ENEMY_Webwood Venomfangs|r. Loot them for their |cRXP_LOOT_Small Spider Legs|r
    >>|cRXP_WARN_You need these for a later quest|r
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob Webwood Lurker
    .mob Webwood Venomfang
step
    .goto Teldrassil,56.08,57.72
    .target Syral Bladeleaf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Syral Bladeleaf|r
    >>|cRXP_WARN_Make sure you have 1 empty bagspace slot before accepting this quest|r
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
#xprate <1.99 << Hunter/Warrior/Druid
    .goto Teldrassil,55.574,56.948
    .target Tallonkai Swiftroot
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tallonkai Swiftroot|r atop the Tree
    .accept 932 >> Accept Twisted Hatred
    .accept 2438 >> Accept The Emerald Dreamcatcher
step << Hunter/Warrior/Druid
#xprate >1.99
    .goto Teldrassil,55.574,56.948
    .target Tallonkai Swiftroot
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tallonkai Swiftroot|r atop the Tree
    .accept 2438 >> Accept The Emerald Dreamcatcher
step << Hunter
    .goto Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jeena Featherbow|r
    >>|cRXP_BUY_Buy and equip a|r |T135499:0|t[Hornwood Recurve Bow]
    >>|cRXP_BUY_Buy|r |T132382:0|t[Rough Arrows] |cRXP_BUY_until your Quiver is full|r
    .collect 2506,1 --Collect Hornwood Recurve Bow
    .target Jeena Featherbow
    .money <0.0285
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.38
step << Hunter
    #season 0
    .goto Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jeena Featherbow|r
    .vendor >>|cRXP_BUY_Buy|r |T132382:0|t[Rough Arrows] |cRXP_BUY_until your Quiver is full|r
    .target Jeena Featherbow
step << Hunter
    #season 2
    .goto Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jeena Featherbow|r
    .vendor >>|cRXP_BUY_Buy|r |T132382:0|t[Rough Arrows] |cRXP_BUY_until you have 2 silver left or you have 3 stacks|r
    .target Jeena Featherbow
step << Hunter
    #completewith next
    +|cRXP_WARN_Equip the|r |T135499:0|t[Hornwood Recurve Bow]
    .use 2506
    .itemcount 2506,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.37
step << Warrior
    .goto Teldrassil,56.308,59.488
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shalomon|r
    >>|cRXP_BUY_Buy and equip a|r |T135321:0|t[Gladius] |cRXP_BUY_if you can afford it (5s 36c), if not skip this step|r
    .collect 2488,1 --Collect Gladius
    .target Shalomon
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.80
step << Warrior
    #completewith next
    +|cRXP_WARN_Equip the|r |T135321:0|t[Gladius]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.79
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
step << Rogue
    .goto Teldrassil,56.308,59.488
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shalomon|r
    >>|cRXP_BUY_Buy and equip a|r |T135641:0|t[Stiletto] |cRXP_BUY_if you can afford it (4s 1c), if not skip this step|r
    .collect 2494,1 --Stiletto (1)
    .target Shalomon
    .money <0.0401
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #completewith next
    +|cRXP_WARN_Equip the|r |T135641:0|t[Stiletto]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.29
step << Druid
    .goto Teldrassil,56.308,59.488
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shalomon|r
    >>|cRXP_BUY_Buy and equip a|r |T135145:0|t[Walking Stick] |cRXP_BUY_if you can afford it (5s 4c), if not skip this step|r
    .collect 2495,1 --Walking Stick (1)
    .target Shalomon
    .money <0.0504
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.20
step << Druid
    #completewith next
    +|cRXP_WARN_Equip the|r |T135145:0|t[Walking Stick]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.19
step
    .goto Teldrassil,55.619,59.788
    .target Innkeeper Keldamyr
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Keldamyr|r
    .turnin 2159,2 >> Turn in Dolanaar Delivery << Hunter
    .turnin 2159 >> Turn in Dolanaar Delivery << !Hunter
    .vendor >>|cRXP_BUY_Buy 10 |T132815:0|t|cRXP_LOOT_Ice Cold Milk|r or as much as you can afford << Priest
    .home >> Set your Hearthstone to Dolanaar
step << Warrior
    #season 2
    .goto Teldrassil,54.8,66.0,25 >>Head to the marked spot. Check if |cRXP_FRIENDLY_Wandering Swordsman|r is there. If you find him you can challenge him to a duel which will award you with the rune of |T132334:0|t[|cRXP_FRIENDLY_Blood Frenzy|r]
    >>|cRXP_WARN_He has multiple spawn points and can only be present in one of them at the time. Skip this step if he's not there|r
    >>|cRXP_WARN_You will most likely be unable to solo him at this level, skip this step if there's no one around to help you, you can come back after you get your hamstring + thrown at lvl 10 and check if he's still there|r
    .unitscan Wandering Swordsman
    .train 412507,1
step << Hunter
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dazalar|r
	.train 3044 >> Train Arcane Shot << era
    .train 5116 >> Train Concussive Shot << sod
    .target Dazalar
step << Druid
    #season 0
    .goto Teldrassil,55.945,61.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kal|r
	.trainer >> Train your class spells
    .target Kal
step
#xprate <1.99
    .goto Teldrassil,56.142,61.714
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corithras Moonrage|r
    .turnin 928 >> Turn in Crown of the Earth
    .target Corithras Moonrage
    .accept 929 >> Accept Crown of the Earth
step << Druid
    #ah
    #season 0
    .goto Teldrassil,57.721,60.641
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Malorne Bladeleaf|r
    >>|T136065:0|t[Herbalism] |cRXP_WARN_is required to gather 5|r |T134187:0|t[Earthroot] |cRXP_WARN_for an important class quest soon. You can unlearn it afterwards|r
    >>|cRXP_WARN_If you would rather purchase 5|r |T134187:0|t[Earthroot] |cRXP_WARN_from the Auction House later, skip this step|r
    .train 2366 >> Train |T136065:0|t[Herbalism]
    .target Malorne Bladeleaf
    .itemcount 2449,<5 --Earthroot (<5)
step << Druid
    #ssf
    #season 0
    .goto Teldrassil,57.721,60.641
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Malorne Bladeleaf|r
    >>|T136065:0|t[Herbalism] |cRXP_WARN_is required to gather 5|r |T134187:0|t[Earthroot] |cRXP_WARN_for an important class quest soon. You can unlearn it afterwards|r
    .train 2366 >> Train |T136065:0|t[Herbalism]
    .target Malorne Bladeleaf
    .itemcount 2449,<5 --Earthroot (<5)
step << Druid
    #ssf
    #optional
    #completewith end
    #label GatheringQ
    #season 0
    .skill herbalism,15 >>|cRXP_WARN_Level your|r |T136065:0|t[Herbalism] |cRXP_WARN_to 15 to be able to gather 5|r |T134187:0|t[Earthroot] |cRXP_WARN_for an important class quest soon. You can unlearn it afterwards|r
    .collect 2449,5,6123,1 --Earthroot (5)
    .disablecheckbox
step << Druid
    #optional
    #completewith end
    #requires GatheringQ
    #season 0
    >>|cRXP_WARN_Collect 5 |T134187:0|t[Earthroot] via |T136065:0|t[Herbalism] and rarely |cRXP_PICK_Battered Chests|r for a future class quest|r
    .collect 2449,5,6123,1 --Earthroot (5)
    .skill herbalism,<15,1
step << Priest
    .goto Teldrassil,57.242,63.511
    >>Target |cRXP_FRIENDLY_Sentinel Shaya|r
    >>|cRXP_WARN_Cast|r |T135929:0|t[Lesser Heal (Rank 2)] |cRXP_WARN_and|r |T135987:0|t[Power Word: Fortitude] |cRXP_WARN_on|r |cRXP_FRIENDLY_Sentinel Shaya|r
    .complete 5621,1 --Heal and fortify Sentinel Shaya
    .target Sentinel Shaya
step
    .goto Teldrassil,60.900,68.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Denalan|r
    >>|cRXP_WARN_Don't take the sprouts quest|r << !sod/Warrior/Rogue
    .turnin 997 >> Turn in Denalan's Earth
    .target Denalan
    .accept 918 >> Accept Timberling Seeds
    .accept 919 >> Accept Timberling Sprouts << !sod/Warrior/Rogue
step << Rogue
    #season 2
    #completewith next
    >>Kill |cRXP_ENEMY_Timberlings|r. Loot them for the |T134327:0|t[|cRXP_LOOT_Top-Right Map Piece]|r
    .collect 208601,1 -- Top-Right Map Piece (1)
    .mob Timberling
    .mob Timberling Bark Ripper
    .mob Timberling Trampler
    .train 398196,1
step << Druid
    #season 2
    #completewith next
    >>Kill |cRXP_ENEMY_Timberlings|r. Loot them for their |cRXP_LOOT_Seeds|r
    >>Loot the |cRXP_LOOT_Timberling Sprouts|r on the ground
    .complete 918,1 --Collect Timberling Seed (x8)
    .complete 919,1 << !sod --Collect Timberling Sprout (x12)
    .mob Timberling
step << Druid
    #season 2
    #completewith next
    .goto Teldrassil,52.831,78.731,100 >> Travel to the giant tree branch
step << Druid
    #season 2
    .goto Teldrassil,52.831,78.731,20,0
    .goto Teldrassil,52.988,80.086,15,0
    .goto Teldrassil,52.831,78.731
    >>|cRXP_WARN_On the massive tree branch you will see 3|r |cRXP_ENEMY_Lunar Stones|r
    >>|cRXP_WARN_Cast|r |T136096:0|t[Moonfire] |cRXP_WARN_on all 3|r |cRXP_ENEMY_Lunar Stones|r |cRXP_WARN_on the branch, then loot the chest at the arrow location which spawns after|r
    .collect 206989,1 -- Rune of the Sun (1)
    .mob Lunar Stone
    .train 416044,1
step << Druid
    #season 2
    .train 416044 >> |cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Sun|r] |cRXP_WARN_to train|r |T236216:0|t[Sunfire]
    .use 206989
    .itemcount 206989,1
step << Druid
    #completewith next
    #season 2
    #softcore
    .deathskip >>Die and respawn at Dolanaar
step << Druid
    #season 2
    #softcore
    .goto Teldrassil,56.2,60.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brannol Eaglemoon|r
    .vendor >> |cRXP_BUY_Vendor and repair if necessary|r
    .target Brannol Eaglemoon
step
    .goto Teldrassil,61.63,68.89,55,0
    .goto Teldrassil,60.52,70.47,55,0
    .goto Teldrassil,59.04,72.52,55,0
    .goto Teldrassil,57.69,69.92,55,0
    .goto Teldrassil,55.33,67.22,55,0
    .goto Teldrassil,57.89,64.84,55,0
    .goto Teldrassil,61.21,66.28
    >>Kill |cRXP_ENEMY_Timberlings|r. Loot them for their |cRXP_LOOT_Seeds|r
    >>Loot the |cRXP_LOOT_Timberling Sprouts|r on the ground << !sod
    .complete 918,1 --Collect Timberling Seed (x8)
    .complete 919,1 << !sod/Warrior/Rogue --Collect Timberling Sprout (x12)
    .mob Timberling
step << Rogue
    #season 2
    .goto Teldrassil,61.2,67.0
    >>Kill |cRXP_ENEMY_Timberlings|r. Loot them for the |T134327:0|t[|cRXP_LOOT_Top-Right Map Piece]|r
    .collect 208601,1 -- Top-Right Map Piece (1)
    .mob Timberling
    .mob Timberling Bark Ripper
    .mob Timberling Trampler
    .train 398196,1
step
    .goto Teldrassil,60.900,68.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Denalan|r
    .turnin 918 >> Turn in Timberling Seeds
    .target Denalan
    .accept 922 >> Accept Rellian Greenspyre
    .turnin 919 >> Turn in Timberling Sprouts << !sod/Warrior/Rogue
step
    #season 2 << Hunter/Druid/Priest
    #season 1 << Warrior/Rogue
	.abandon 919 >> Abandon The Timberling Sprouts quest, it's not worth doing
step << Warrior
    #season 2
    .goto Teldrassil,62.6,71.8,25 >>Head to the marked spot. Check if |cRXP_FRIENDLY_Wandering Swordsman|r is there. If you find him you can challenge him to a duel which will award you with the rune of |T132334:0|t[|cRXP_FRIENDLY_Blood Frenzy|r]
    >>|cRXP_WARN_He has multiple spawn points and can only be present in one of them at the time. Skip this step if he's not there|r
    >>|cRXP_WARN_You will most likely be unable to solo him at this level, skip this step if there's no one around to help you, you can come back after you get your hamstring + thrown at lvl 10 and check if he's still there|r
    .unitscan Wandering Swordsman
    .train 412507,1
step
    #completewith next
    .goto Teldrassil,68.02,59.66,120 >> Travel to Starbreeze Village
step
    .goto Teldrassil,68.02,59.66
    >>Open |cRXP_PICK_Tallonkai's Dresser|r. Loot it for the |cRXP_LOOT_Emerald Dreamcatcher|r
    .complete 2438,1 --Collect Emerald Dreamcatcher (x1)
step
    #label zenn
    .goto Teldrassil,66.26,58.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gaerolas Talvethren|r up stairs
    .turnin 475 >> Turn in A Troubling Breeze
    .target Gaerolas Talvethren
    .accept 476 >> Accept Gnarlpine Corruption
step
    #xprate <1.99
    .goto Teldrassil,63.38,58.10
    >>|cRXP_WARN_Use the|r |T134721:0|t[Jade Phial] |cRXP_WARN_at the Starbreeze Village Moonwell|r
    .complete 929,1 --Collect Filled Jade Phial (x1)
step << Warrior
    #season 2
    #completewith TeldrassilEnd
    #sticky
    >>Kill |cRXP_ENEMY_Nightsabers|r or |cRXP_ENEMY_Nightsaber Stalkers|r. Loot them for their |cRXP_LOOT_Severed Tiger Head|r
    >>Kill |cRXP_ENEMY_Strigid Owls|r or |cRXP_ENEMY_Strigid Screechers|r. Loot them for their |cRXP_LOOT_Severed Owl Head|r
    >>Kill |cRXP_ENEMY_Webwood Lurkers|r or |cRXP_ENEMY_Webwood Venomfangs|r. Loot them for their |cRXP_LOOT_Severed Spider Head|r
    .collect 208611,1 -- Severed Tiger Head (1)
    .collect 208610,1 -- Severed Owl Head (1)
    .collect 208612,1 -- Severed Spider Head (1)
    .mob Nightsaber
    .mob Nightsaber Stalker
    .mob Strigid Owl
    .mob Strigid Screecher
    .mob Webwood Lurker
    .mob Webwood Venomfang
    .train 403475,1
step
    >>Kill |cRXP_ENEMY_Nightsabers|r. Loot them for their |cRXP_LOOT_Fangs|r
    >>Kill |cRXP_ENEMY_Strigid Owls|r. Loot them for their |cRXP_LOOT_Feathers|r
    >>Kill |cRXP_ENEMY_Webwood Lurkers|r. Loot them for their |cRXP_LOOT_Silk|r
    >>|cRXP_WARN_Save any|r |T132832:0|t[Small Eggs] |cRXP_WARN_and|r |T134321:0|t[Small Spider Legs] |cRXP_WARN_to use for leveling |T133971:0|t[Cooking] |cRXP_WARN_later|r
    .complete 488,1 --Collect Nightsaber Fang (x3)
    .goto Teldrassil,66.10,52.43,60,0
    .goto Teldrassil,61.95,61.07,50,0
    .goto Teldrassil,59.14,60.91
    .complete 488,2 --Collect Strigid Owl Feather (x3)
    .goto Teldrassil,66.10,52.43,60,0
    .goto Teldrassil,63.39,64.22,50,0
    .goto Teldrassil,59.14,60.91
    .complete 488,3 --Collect Webwood Spider Silk (x3)
    .goto Teldrassil,61.06,54.66,50,0
    .goto Teldrassil,60.17,59.62,50,0
    .goto Teldrassil,58.22,56.32
    .mob Nightsaber
    .mob Strigid Owl
    .mob Webwood Lurker
step
    .goto Teldrassil,60.5,56.3
    .target Zenn Foulhoof
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zenn Foulhoof|r
    .turnin 488 >> Turn in Zenn's Bidding
step
    #xprate < 1.5
    .goto Teldrassil,60.7,54.4
	.xp 7+3520 >> Grind to level 7 +3520xp
step
    #xprate >1.49
    .xp 7+2350 >> Grind to level 7 +2350xp
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
    #season 1 << Priest/Rogue
    #season 2 << Hunter/Warrior/Druid
    .goto Teldrassil,55.574,56.948
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tallonkai Swiftroot|r atop the Tree
    .turnin 2438 >> Turn in The Emerald Dreamcatcher
    .target Tallonkai Swiftroot
    .accept 2459 >> Accept Ferocitas the Dream Eater << !sod/Warrior
step << Hunter
    .goto Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jeena Featherbow|r
    >>|cRXP_BUY_Buy and equip a|r |T135499:0|t[Hornwood Recurve Bow] |cRXP_BUY_if you can afford it (2s 85c), if not skip this step|r
    .collect 2506,1 --Collect Hornwood Recurve Bow
    .target Jeena Featherbow
    .money <0.0285
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.38
step << Hunter
    #season 0
    .goto Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jeena Featherbow|r
	.vendor >>|cRXP_BUY_Buy up to 800|r |T132382:0|t[Rough Arrows]
    .target Jeena Featherbow
step << Hunter
    #completewith next
    #season 0
    +|cRXP_WARN_Equip the|r |T135499:0|t[Hornwood Recurve Bow]
    .use 2506
    .itemcount 2506,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.37
step << Hunter
    #season 0
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dazalar|r
	.trainer >> Train your class spells
    .target Dazalar
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
    .money <0.0536
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.80
step << Warrior
    #completewith next
    +|cRXP_WARN_Equip the|r |T135321:0|t[Gladius]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.79
    step << Warrior
    .goto Teldrassil,56.221,59.198
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kyra Windblade|r
	.trainer >> Train your class spells
    .target Kyra Windblade
step << Rogue
    .goto Teldrassil,56.308,59.488
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shalomon|r
    >>|cRXP_BUY_Buy and equip a|r |T135641:0|t[Stiletto] |cRXP_BUY_if you can afford it (4s 1c), if not skip this step|r
    .collect 2494,1 --Stiletto (1)
    .target Shalomon
    .money <0.0401
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #completewith next
    +|cRXP_WARN_Equip the|r |T135641:0|t[Stiletto]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.29
step << Druid
    .goto Teldrassil,56.308,59.488
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shalomon|r
    >>|cRXP_BUY_Buy and equip a|r |T135145:0|t[Walking Stick] |cRXP_BUY_if you can afford it (5s 4c), if not skip this step|r
    .collect 2495,1 --Walking Stick (1)
    .target Shalomon
    .money <0.0504
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.20
step << Druid
    #completewith next
    +|cRXP_WARN_Equip the|r |T135145:0|t[Walking Stick]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.19
step << Druid
#xprate 1.49-1.99
    .goto Teldrassil,56.142,61.714
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corithras Moonrage|r
    .turnin 929 >> Turn in Crown of the Earth
    .target Corithras Moonrage
step << Druid
#xprate <1.50
    .goto Teldrassil,56.142,61.714
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corithras Moonrage|r
    .turnin 929 >> Turn in Crown of the Earth
    .target Corithras Moonrage
    .accept 933 >> Accept Crown of the Earth
step << Druid
    #season 0
    .goto Teldrassil,55.945,61.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kal|r
	.trainer >> Train your class spells
    .target Kal
step
    #loop
    .goto 1438/1,854.400,9952.500,6 >>Next to a small tree
    .goto 1438/1,822.200,9948.500,6 >>On the small hill
    .goto 1438/1,809.800,9926.400,6 >>Next to the massive tree
    >>Loot the 3 felcones from the locations marked on your map. 
    >>|cRXP_WARN_Skip this step if any of them is not there and you're unable to complete the objective|r
    .complete 489,1 --Fel Cone 3/3
    .isOnQuest 489
step
    #label SoDSpiderLegs
    .goto Teldrassil,60.4,56.4
    .target Zenn Foulhoof
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zenn Foulhoof|r
    .turnin 489 >> Turn in Seek Redemption!
    .itemcount 3418,3
    .isOnQuest 489
    .target Zenn Foulhoof
step
    #season 0 << Priest/Hunter/Druid/Rogue
    #season 2 << Warrior
	#completewith jewel
    >>Loot the |cRXP_LOOT_Fel Cones|r on the ground
    >>|cRXP_WARN_They are usually located next to tree trunks|r
    .complete 489,1 --Collect Fel Cone (x3)
    .isOnQuest 489
step
    #season 0 << Priest/Hunter/Druid/Rogue
    #season 2 << Warrior
    #completewith next
    >>Kill |cRXP_ENEMY_Gnarlpine Mystics|r
    >>|cRXP_WARN_If there aren't many |cRXP_ENEMY_Gnarlpine Mystics|r you may have to kill |cRXP_ENEMY_Gnarlpine Warriors|r to make them spawn|r
    .complete 2459,1 --Kill Gnarlpine Mystic (x7)
    .mob Gnarlpine Mystic
step
    #season 0 << Priest/Hunter/Druid/Rogue
    #season 2 << Warrior
	.goto Teldrassil,69.37,53.41
	>>Kill |cRXP_ENEMY_Ferocitas the Dream Eater|r. Loot him for the |T133288:0|t[|cRXP_LOOT_Gnarlpine Necklace|r]
    .use 8049 >>|cRXP_WARN_Use the |T133288:0|t[|cRXP_LOOT_Gnarlpine Necklace|r] to loot|r |cRXP_LOOT_Tallonkai's Jewel|r
    .complete 2459,2 --Collect Tallonkai's Jewel (x1)
    .mob Ferocitas the Dream Eater
step
    #season 0 << Priest/Hunter/Druid/Rogue
    #season 2 << Warrior
    #label jewel
    .goto Teldrassil,68.38,52.06,30,0
    .goto Teldrassil,69.37,53.41
    >>Kill |cRXP_ENEMY_Gnarlpine Mystics|r
    >>|cRXP_WARN_If there aren't many |cRXP_ENEMY_Gnarlpine Mystics|r you may have to kill |cRXP_ENEMY_Gnarlpine Warriors|r to make them spawn|r
    .complete 2459,1 --Kill Gnarlpine Mystic (x7)
    .mob Gnarlpine Mystic
step
    #season 0 << Priest/Hunter/Druid/Rogue
    #season 2 << Warrior
    #softcore
    #completewith next
    .deathskip >> Die and respawn at the Spirit Healer
    .target Spirit Healer
    .isQuestTurnedIn 489
step
    #season 0 << Priest/Hunter/Druid/Rogue
    #season 2 << Warrior
    #softcore
    .goto Teldrassil,56.2,60.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brannol Eaglemoon|r
    .vendor >> |cRXP_BUY_Vendor and repair if necessary|r
    .target Brannol Eaglemoon
    .isQuestTurnedIn 489
step
    #season 0 << Priest/Hunter/Druid/Rogue
    #season 2 << Warrior
    .goto Teldrassil,59.0,56.1,50,0
    .goto Teldrassil,56.5,65.5,50,0
    .goto Teldrassil,53.0,59.5,50,0
    .goto Teldrassil,63.6,62.3,50,0
    .goto Teldrassil,58.7,55.7
    >>Loot the |cRXP_LOOT_Fel Cones|r on the ground
    >>|cRXP_WARN_They are usually located next to tree trunks|r
    .complete 489,1 --Collect Fel Cone (x3)
    .isOnQuest 489
step
    #season 0 << Priest/Hunter/Druid/Rogue
    #season 2 << Warrior
    .goto Teldrassil,60.4,56.4
    .target Zenn Foulhoof
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zenn Foulhoof|r
    .turnin 489 >> Turn in Seek Redemption!
    .isOnQuest 489
step
    #season 1 << Warrior
    #season 2 << Hunter/Druid/Priest/Rogue
    .goto Teldrassil,44.69,70.52,40,0
    .goto Teldrassil,44.88,73.83
    >>Try to finish off the |cRXP_LOOT_Small Spider Legs|r quest
    >>|cRXP_WARN_Skip this step if there's no spiders near Zenn|r
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob Webwood Lurker
    .mob Webwood Venomfang
step
    #season 0
    #sticky
	#completewith spiderLegs
    >>Kill |cRXP_ENEMY_Webwood Lurkers|r and |cRXP_ENEMY_Webwood Venomfangs|r. Loot them for their |cRXP_LOOT_Small Spider Legs|r
    >>|cRXP_WARN_You need these for a later quest|r
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob Webwood Lurker
    .mob Webwood Venomfang
step
    #season 2
    .abandon 489 >> Abandon Seek Redemption. It's not worth going out of your way to turn it in later
step << !sod/Priest/Rogue
    #completewith next
    .goto Teldrassil,54.68,52.84,20,0
    .goto Teldrassil,54.42,51.19,15 >> Travel to Fel Rock
step << Rogue
    #season 2
    #completewith MutiRune
    >>Kill |cRXP_ENEMY_Vicious Grell|r, |cRXP_ENEMY_Rascal Sprites|r and |cRXP_ENEMY_Shadow Sprites|r. Loot them for the |T134327:0|t[|cRXP_LOOT_Bottom-Left Map Piece]|r
    .collect 208604,1 -- Bottom-Left Map Piece (1)
    .mob Vicious Grell
    .mob Rascal Sprite
    .mob Shadow Sprite
    .train 398196,1
step << Rogue
    #season 2
    #completewith next
    >>Kill |cRXP_ENEMY_Lord Melenas|r. Loot him for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Mutilation|r]
    .collect 203990,1
    .unitscan Lord Melenas
    .train 400094,1
step << Priest
    #season 2
    #completewith next
    >>Kill |cRXP_ENEMY_Vicious Grells|r, |cRXP_ENEMY_Rascal Sprites|r and |cRXP_ENEMY_Shadow Sprites|r. Loot them for the |T135975:0|t[|cRXP_FRIENDLY_Prophecy of a Desecrated Citadel|r]
    .collect 205947,1 -- Prophecy of a Desecrated Citadel (1)
    .mob Vicious Grell
    .mob Rascal Sprite
    .mob Shadow Sprite
    .train 402852,1
step << !sod/Priest/Rogue
    .goto Teldrassil,51.2,50.6
    >>Kill |cRXP_ENEMY_Lord Melenas|r. Loot him for his |cRXP_LOOT_Head|r
    >>|cRXP_ENEMY_Lord Melenas|r may be located in many different spawn locations throughout Fel Rock
    .complete 932,1 --Collect Melenas' Head (x1)
    .unitscan Lord Melenas
step << Priest
    #season 2
    .goto Teldrassil,77.86,61.66
    >>Kill |cRXP_ENEMY_Vicious Grells|r, |cRXP_ENEMY_Rascal Sprites|r and |cRXP_ENEMY_Shadow Sprites|r. Loot them for the |T135975:0|t[|cRXP_FRIENDLY_Prophecy of a Desecrated Citadel|r]
    .collect 205947,1 -- Prophecy of a Desecrated Citadel (1)
    .mob Vicious Grell
    .mob Rascal Sprite
    .mob Shadow Sprite
    .train 402852,1
step << Priest
    #season 2
    .train 402852 >> |cRXP_WARN_Use the|r |T135975:0|t[|cRXP_FRIENDLY_Prophecy of a Desecrated Citadel|r] |cRXP_WARN_to train|r |T237570:0|t[Homunculi]
    >>|cRXP_WARN_You must have 2|r |T135934:0|t|T136057:0|t[Meditation] |cRXP_WARN_buffs by typing /kneel in a holy area such as, a moonwell, Northshire Abbey, Stormwind Cathedral, the Altars of Light in Anvilmar, Loch Modan or the Mystic Ward in Ironforge|r
    .use 205947
    .itemcount 205947,1
step << Rogue
    #season 2
    .goto Teldrassil,51.2,50.6
    >>Kill |cRXP_ENEMY_Lord Melenas|r. Loot him for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Mutilation|r]
    .collect 203990,1
    .unitscan Lord Melenas
    .train 400094,1
step << Rogue
    #season 2
    #label MutiRune
    .train 400094 >> |cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Mutilation|r] |cRXP_WARN_to train|r |T132304:0|t[Mutilate]
    .use 203990
    .itemcount 203990,1
step << Rogue
    #season 2
    .goto Teldrassil,77.86,61.66
    >>Kill |cRXP_ENEMY_Vicious Grell|r, |cRXP_ENEMY_Rascal Sprites|r and |cRXP_ENEMY_Shadow Sprites|r. Loot them for the |T134327:0|t[|cRXP_LOOT_Bottom-Left Map Piece]|r
    .collect 208604,1 -- Bottom-Left Map Piece (1)
    .mob Vicious Grell
    .mob Rascal Sprite
    .mob Shadow Sprite
    .train 398196,1
step << !sod/Priest/Rogue
    #softcore
    #completewith next
    .deathskip >> Die and respawn at the Spirit Healer
    .target Spirit Healer
step << !Druid
#xprate <1.99
    .goto Teldrassil,56.142,61.714
    .target Corithras Moonrage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corithras Moonrage|r
    .turnin 929 >> Turn in Crown of the Earth
step
	#xprate <1.5
    .goto Teldrassil,56.142,61.714
    .target Corithras Moonrage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corithras Moonrage|r
    .accept 933 >> Accept Crown of the Earth
step
	#xprate <1.5
    #completewith next
    .goto Teldrassil,42.61,76.18,50 >> Travel to southwestern Teldrassil
step
	#xprate <1.5
	.goto Teldrassil,42.61,76.18
	>>Click the |cRXP_PICK_Strange Fruited Plant|r
	.accept 930 >> Accept The Glowing Fruit
step
	#xprate <1.5
    #completewith next
    .goto Teldrassil,42.41,67.07,50 >> Travel to the Pools of Arlithrien
step
	#xprate <1.5
	#label spiderLegs
	.goto Teldrassil,42.41,67.07
    .use 5621 >>|cRXP_WARN_Use the|r |T134765:0|t[Tourmaline Phial] |cRXP_WARN_at the Pools of Arlithrien moonwell|r
	.complete 933,1
step
	#xprate <1.5
    .goto Teldrassil,44.69,70.52,40,0
    .goto Teldrassil,44.88,73.83
    >>Kill |cRXP_ENEMY_Webwood Lurkers|r and |cRXP_ENEMY_Webwood Venomfangs|r. Loot them for their |cRXP_LOOT_Small Spider Legs|r
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob Webwood Lurker
    .mob Webwood Venomfang
step
	#xprate <1.5
    #hardcore
    #completewith next
    .goto Teldrassil,56.142,61.714,90 >> Travel to Dolanaar
step
	#xprate <1.5
    #softcore
	#completewith next
    .goto Teldrassil,43.50,68.42
    .deathskip >> Die and respawn at the Dolanaar graveyard, make sure to die east of the moonwell, otherwise you might end up in Darnassus
step
	#xprate <1.5
    .goto Teldrassil,56.142,61.714
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corithras Moonrage|r
    .turnin 933 >> Turn in Crown of the Earth
    .target Corithras Moonrage
    .accept 7383 >> Accept Crown of the Earth
step
	#xprate <1.5
    .goto Teldrassil,57.121,61.296
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zarrin|r
    .train 2550 >>Train Cooking
    .accept 4161 >> Accept Recipe of the Kaldorei
    .turnin 4161 >> Turn in Recipe of the Kaldorei
    .target Zarrin
step << Warrior/Rogue
    #season 0
    .goto Teldrassil,55.29,56.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Byancie|r
    .train 3273 >> Train |T135966:0|t[First Aid]
    .target Byancie
step
    #season 1 << Warrior
    #season 2 << Hunter/Druid/Priest/Rogue
    .goto Teldrassil,57.121,61.296
    .train 2550 >>Train Cooking
    .target Zarrin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zarrin|r
    .accept 4161 >> Accept Recipe of the Kaldorei
    .turnin 4161 >> Turn in Recipe of the Kaldorei
    >>|cRXP_WARN_If you're already level 10 and you don't have the spider legs yet feel free to skip this quest. Do still train cooking regardless|r
step << Rogue
    #season 2
    .goto Teldrassil,55.29,56.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Byancie|r
    .train 3273 >> Train |T135966:0|t[First Aid]
    .target Byancie
step << !sod/Priest/Rogue
    .goto Teldrassil,55.574,56.948
    .target Tallonkai Swiftroot
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tallonkai Swiftroot|r atop the Tree
    .turnin 2438 >> Turn in The Emerald Dreamcatcher << sod Priest/sod Rogue
    .turnin 932 >> Turn in Twisted Hatred
    .turnin 2459 >> Turn in Ferocitas the Dream Eater << !sod
step << Warrior
    #season 2
    .goto Teldrassil,55.574,56.948
    .target Tallonkai Swiftroot
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tallonkai Swiftroot|r atop the Tree
    .turnin 2459 >> Turn in Ferocitas the Dream Eater
    .accept 932 >> Accept Twisted Hatred
step
#xprate >1.99
    .xp 10
   >>|cRXP_WARN_If you're not even close do the Lord Melenas quest|r
step << Druid
    #season 2
    .goto Teldrassil,55.945,61.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kal|r
	.trainer >> Train your class spells
    .accept 5925 >> Accept Heeding the Call
    .target Kal
step << Priest
#xprate >1.99
    .goto Teldrassil,55.564,56.746
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Laurna Morninglight|r
	.trainer >> Train your class spells
    .accept 5629 >>Accept Returning Home << sod
    .target Laurna Morninglight
step << Warrior
#xprate >1.99
    .goto Teldrassil,56.221,59.198
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kyra Windblade|r
	.trainer >> Train your class spells
    .target Kyra Windblade
step << Rogue
#xprate >1.99
    .goto Teldrassil,56.381,60.139
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jannok Breezesong|r
	.trainer >> Train your class spells
    .train 5171 >> Train |T132306:0|t[Slice and Dice] << !sod
    .train 921 >> Train |T133644:0|t[Pick Pocket] as well which is needed for your level 10 Rogue quest
    .target Jannok Breezesong
step << Hunter
#xprate >1.99
    .goto Teldrassil,56.676,59.489
    .target Dazalar
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dazalar|r
    .accept 6063 >> Accept Taming the Beast
	.trainer >> Train your class spells
step << Hunter
#xprate >1.99
    .goto Teldrassil,59.9,58.8
    .use 15921 >>|cRXP_WARN_Use the|r |T132164:0|t[Taming Rod] |cRXP_WARN_on a|r |cRXP_ENEMY_Webwood Lurker|r
    .complete 6063,1 --Tame a Webwood Lurker
    .mob Webwood Lurker
step << Hunter
#xprate >1.99
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dazalar|r
    .turnin 6063 >> Turn in Taming the Beast
    .target Dazalar
    .accept 6101 >> Accept Taming the Beast
step << Hunter
#xprate >1.99
    .goto Teldrassil,62.6,72.2
    .use 15922 >>|cRXP_WARN_Use the|r |T132164:0|t[Taming Rod] |cRXP_WARN_on a|r |cRXP_ENEMY_Nightsaber Stalker|r
    >>|cRXP_WARN_You must right click your Pet Frame and Dismiss your pet before you can tame another one|r
    .complete 6101,1 --Tame a Nightsaber Stalker
    .mob Nightsaber Stalker
step << Hunter
#xprate >1.99
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dazalar|r
    .turnin 6101 >> Turn in Taming the Beast
    .target Dazalar
    .accept 6102 >> Accept Taming the Beast
step << Hunter
#xprate >1.99
    .goto Teldrassil,64.7,66.7
    .use 15923 >>|cRXP_WARN_Use the|r |T132164:0|t[Taming Rod] |cRXP_WARN_on a|r |cRXP_ENEMY_Strigid Screecher|r
    >>|cRXP_WARN_You must right click your Pet Frame and Dismiss your pet before you can tame another one|r
    .complete 6102,1 --Tame a Strigid Screecher
    .mob Strigid Screecher
step << Hunter
#xprate >1.99
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dazalar|r
    .turnin 6102 >> Turn in Taming the Beast
    .target Dazalar
    .accept 6103 >> Accept Training the Beast
    .train 1130 >> |cRXP_WARN_Make sure you have trained Hunter's Mark. You will need it to get a rune soon|r
step << Warrior
#xprate >1.99
    .goto Teldrassil,55.83,58.31,40,0
    .goto Teldrassil,50.22,53.83
    .goto Teldrassil,55.83,58.31,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moon Priestess Amara|r
    >>|cRXP_FRIENDLY_Moon Priestess Amara|r |cRXP_WARN_patrols the road west of Dolanaar|r
    .accept 1684 >> Accept Elanaria
    .accept 487 >> Accept The Road to Darnassus
    .target Moon Priestess Amara
step << Rogue
#xprate >1.99
    .goto Teldrassil,56.381,60.139
    .target Jannok Breezesong
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jannok Breezesong|r
    .accept 2241 >> Accept The Apple Falls
step
    #season 0
    .goto Teldrassil,55.83,58.31,40,0
    .goto Teldrassil,50.22,53.83
    .goto Teldrassil,55.83,58.31,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moon Priestess Amara|r
    >>|cRXP_FRIENDLY_Moon Priestess Amara|r |cRXP_WARN_patrols the road west of Dolanaar|r
    .accept 487 >> Accept The Road to Darnassus
    .target Moon Priestess Amara
step << Rogue
    #season 2
    #completewith runeOfPrecision
    #optional
    #label topleft
    >>Kill or |T133644:0|t[Pick Pocket] |cRXP_ENEMY_Gnarlpine Furbolgs|r. Loot them for the |T134327:0|t[|cRXP_LOOT_Top-Left Map Piece]|r
    >>|cRXP_WARN_You must be in|r |T132320:0|t[Stealth] |cRXP_WARN_to use|r |T133644:0|t[Pick Pocket]
    .collect 208602,1 -- Top-Left Map Piece (1)
    .mob Gnarlpine Ambusher
    .mob Gnarlpine Shaman
    .mob Gnarlpine Defender
    .mob Gnarlpine Augur
    .train 398196,1
step
    #season 0
    .goto Teldrassil,46.6,53.0
    >>Kill |cRXP_ENEMY_Gnarlpine Ambushers|r
    .complete 487,1 --Kill Gnarlpine Ambusher (x6)
    .mob Gnarlpine Ambusher
step << Warrior
    #season 2
    .goto Teldrassil,46.6,53.0
    >>Kill |cRXP_ENEMY_Gnarlpine Ambushers|r
    .complete 487,1 --Kill Gnarlpine Ambusher (x6)
    .mob Gnarlpine Ambusher
step
    #season 0
    .goto Teldrassil,55.83,58.31,40,0
    .goto Teldrassil,50.22,53.83
    .goto Teldrassil,55.83,58.31,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moon Priestess Amara|r
    >>|cRXP_FRIENDLY_Moon Priestess Amara|r |cRXP_WARN_patrols the road west of Dolanaar|r
    .turnin 487 >> Turn in The Road to Darnassus
    .target Moon Priestess Amara
step << Priest
    #season 2
    #completewith next
    .goto Teldrassil,44.18,58.19
    .subzone 262 >> Enter the Ban'ethil Barrow Den. This can be difficult without a group. You can also do this a little later to obtain your |T237514:0|t[Void Plague] rune
    .train 425216,1 << Priest
step << Priest
    #season 2
    .goto Teldrassil,44.401,60.655
    >>Open the |cRXP_PICK_Gnarlpine Cache|r. Loot it for a |T136222:0|t[|cRXP_FRIENDLY_Memory of a Dark Purpose|r]
    >>|cRXP_WARN_Note: The |cRXP_PICK_Gnarlpine Cache|r can have multiple spawn locations within the Ban'ethil Barrows|r
    .collect 205940,1 -- Memory of a Dark Purpose (1)
    .train 425216 >>|cRXP_WARN_Use the|r |T136222:0|t[|cRXP_FRIENDLY_Memory of a Dark Purpose|r] |cRXP_WARN_to train|r |T237514:0|t[Void Plague]
    >>|cRXP_WARN_You must have a|r |T135934:0|t|T136057:0|t[Meditation] |cRXP_WARN_buff by typing /kneel in a holy area such as, a moonwell, Northshire Abbey, Stormwind Cathedral, the Altars of Light in Anvilmar, Loch Modan or the Mystic Ward in Ironforge|r
    .use 205940
step << Rogue
    #season 2
    .goto Teldrassil,38.92,79.93
    >>Kill or |T133644:0|t[Pick Pocket] |cRXP_ENEMY_Gnarlpine Pathfinders|r and |cRXP_ENEMY_Gnarlpine Avengers|r. Loot them for a |T134241:0|t[|cRXP_LOOT_Gnarlpine Stash Key]|r
    .collect 208749,1 -- Gnarlpine Stash Key (1)
    .mob Gnarlpine Pathfinder
    .mob Gnarlpine Avenger
    .train 400081,1
step << Rogue
    #season 2
    #label runeOfPrecision
    .goto Teldrassil,37.836,82.588
    >>Open the |cRXP_PICK_Gnarlpine Stash|r. Loot it for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Precision|r]
    .collect 204174 -- Rune of Precision (1)
    .itemcount 208749,1
    .train 400081,1
step << Rogue
    #season 2
    .train 400081 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Precision|r] |cRXP_WARN_to train|r |T135610:0|t[Between the Eyes]
    .use 204174
    .itemcount 204174,1
step << Rogue
    #season 2
    .goto Teldrassil,38.92,79.93
    >>Kill or |T133644:0|t[Pick Pocket] |cRXP_ENEMY_Gnarlpine Furbolgs|r. Loot them for the |T134327:0|t[|cRXP_LOOT_Top-Left Map Piece]|r
    >>|cRXP_WARN_You must be in|r |T132320:0|t[Stealth] |cRXP_WARN_to use|r |T133644:0|t[Pick Pocket]
    .collect 208602,1 -- Top-Left Map Piece (1)
    .mob Gnarlpine Ambusher
    .mob Gnarlpine Shaman
    .mob Gnarlpine Defender
    .mob Gnarlpine Augur
    .train 398196,1
step << Rogue
    #season 2
    #softcore
    #completewith next
    .deathskip >> Die and respawn at the Spirit Healer in Darnassus
    .target Spirit Healer
step << Hunter
    #season 2
    .goto Teldrassil,55.890,59.205
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jeena Featherbow|r
    >>|cRXP_BUY_Buy and equip a|r |T135489:0|t[Laminated Recurve Bow]
    .collect 2507,1
    .target Ariyell Skyshadow
    .money <0.1751
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.77 
step << Hunter
    #season 2
    #completewith next
    +|cRXP_WARN_Equip the|r |T135489:0|t[Laminated Recurve Bow]
    .use 2507
    .itemcount 2507,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.76
step << Hunter
    #season 2
    .goto Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jeena Featherbow|r
    >>|cRXP_BUY_Buy and equip 400|r |T132382:0|t[Sharp Arrows]
    .target Jeena Featherbow
step << Hunter
    #season 2
    .goto Teldrassil,46.6,46.3
    >>|cRXP_WARN_Cast|r |T132212:0|t[Hunter's Mark] |cRXP_WARN_on the|r |cRXP_ENEMY_Rustling Bush|r
    >>Kill the |cRXP_ENEMY_Fallenroot Poacher|r that spawns. Loot him for |T134419:0|t[|cRXP_FRIENDLY_Rune of Marksmanship|r]
    .collect 206155,1 --Rune of Marksmanship (1)
    .mob Rustling Bush
    .mob Fallenroot Poacher
    .train 410113,1 --Master Marksman
step
	#xprate < 1.5
    #completewith next
    .goto Teldrassil,38.32,34.36,50 >> Travel to The Oracle Glade
step
	#xprate < 1.5
    .goto Teldrassil,38.32,34.36
    .target Sentinel Arynia Cloudsbreak
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Arynia Cloudsbreak|r
    .accept 937 >> Accept The Enchanted Glade
step
	#xprate < 1.5
    .goto Teldrassil,38.43,34.03
    .use 18152 >>|cRXP_WARN_Use the|r |T134798:0|t[Amethyst Phial] |cRXP_WARN_at The Oracle Glade moonwell|r
    .complete 7383,1 --Collect Filled Amethyst Phial (x1)
step << Rogue
	#xprate < 1.5
    #season 2
    #completewith xp10
    >>Kill or |T133644:0|t[Pick Pocket] |cRXP_ENEMY_Bloodfeather Harpies|r. Loot them for the |T134327:0|t[|cRXP_LOOT_Bottom-Right Map Piece]|r
    >>|cRXP_WARN_You must be in|r |T132320:0|t[Stealth] |cRXP_WARN_to use|r |T133644:0|t[Pick Pocket]
    .collect 208603,1 -- Bottom-Right Map Piece (1)
    .mob Bloodfeather Harpy
    .mob Bloodfeather Rogue
    .mob Bloodfeather Sorceress
    .mob Bloodfeather Fury
    .mob Bloodfeather Wind Witch
    .mob Bloodfeather Matriarch
    .train 398196,1
step
	#xprate < 1.5
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
	#xprate < 1.5
    .goto Teldrassil,34.61,28.79
    >>Click the |cRXP_PICK_Strange Fronded Plant|r
    .accept 931 >> Accept The Shimmering Frond

step << Hunter
	#xprate <1.5
    #completewith xp10
    #label mist1
    .goto Teldrassil,31.54,31.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mist|r
    >>|cRXP_WARN_This will start an escort quest|r
    .accept 938 >> Accept Mist
    .target Mist
step << Hunter
	#xprate <1.5
    #sticky
    #label xp10
    .xp 10-2670 >> Grind until you are 2670 xp off level 10 (3830/6500)
    >>|cRXP_WARN_Once you reach this xp breakpoint, skip the harpy/escort quest and go straight to Darnassus. You will have another opportunity to finish those quests later|r
step << Hunter
	#xprate <1.5
    #completewith xp10
    #requires mist1
    .goto Teldrassil,38.32,34.36
    .target Sentinel Arynia Cloudsbreak
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Arynia Cloudsbreak|r
    .turnin 938 >> Turn in Mist
step << Hunter
	#xprate <1.5
    #completewith xp10
	#requires harpies
    .goto Teldrassil,38.32,34.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Arynia Cloudsbreak|r
    .turnin 937 >> Turn in The Enchanted Glade
    .target Sentinel Arynia Cloudsbreak
    .accept 940 >> Accept Teldrassil
step << !Hunter
	#xprate <1.5
    #label mist1
    .goto Teldrassil,31.54,31.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mist|r
    >>|cRXP_WARN_This will start an escort quest|r
    .accept 938 >> Accept Mist
    .target Mist
step << !Hunter
	#xprate <1.5
    .goto Teldrassil,38.32,34.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Arynia Cloudsbreak|r
    .turnin 937 >> Turn in The Enchanted Glade
    .target Sentinel Arynia Cloudsbreak
    .accept 940 >> Accept Teldrassil
    .turnin 938 >> Turn in Mist
step << Druid
    #xprate <1.5
    #label xp10
    #season 2
    .xp 10
step << Druid
    #xprate <1.5
    #season 0,1
    #label xp10
    .xp 10-750
step << !Hunter !Druid
	#xprate <1.5
    #label xp10
    .xp 10-3110
step << Rogue
	#xprate <1.5
    #season 2
    .goto Teldrassil,37.8,43.0,60,0
    .goto Teldrassil,36.0,34.4,60,0
    .goto Teldrassil,34.6,28.8,60,0
    .goto Teldrassil,37.8,43.0
    >>Kill or |T133644:0|t[Pick Pocket] |cRXP_ENEMY_Bloodfeather Harpies|r. Loot them for the |T134327:0|t[|cRXP_LOOT_Bottom-Right Map Piece]|r
    >>|cRXP_WARN_You must be in|r |T132320:0|t[Stealth] |cRXP_WARN_to use|r |T133644:0|t[Pick Pocket]
    .collect 208603,1 -- Bottom-Right Map Piece (1)
    .mob Bloodfeather Harpy
    .mob Bloodfeather Rogue
    .mob Bloodfeather Sorceress
    .mob Bloodfeather Fury
    .mob Bloodfeather Wind Witch
    .mob Bloodfeather Matriarch
    .train 398196,1
step << Rogue
	#xprate < 1.5
    #season 2
    .cast 418600 >>|cRXP_WARN_Use any of the|r |T134327:0|t[|cRXP_LOOT_Map Pieces]|r |cRXP_WARN_to combine them into the|r |T134269:0|t[|cRXP_LOOT_Teldrassil Treasure Map|r]
    .collect 208605,1
    .itemcount 208604,1
    .itemcount 208601,1
    .itemcount 208602,1
    .itemcount 208603,1
    .use 208604
    .use 208601
    .use 208602
    .use 208603
    .train 398196,1
step
	#xprate 1.49-1.99
   .goto Teldrassil,38.6,58.0
   >>Finish off collecting 7 Small Spider Legs
   .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
step << Druid
   #xprate 1.49-1.99
   #label xp10
   .xp 10-850
   .goto Teldrassil,38.3,34.4
   >>If you're still behind on xp do the harpy quest north
step << !Druid
    #xprate 1.49-1.99
	#label xp10
	.xp 10-4415
step << !Rogue
    #softcore
    #requires xp10
    #completewith next
    .deathskip >> Die and respawn at the Spirit Healer in Darnassus
    >>|cRXP_WARN_Make sure you're closer to the Darnassus graveyard than to the Dolnaar one or you might end up going the wrong way. Run all the way out of the den and then die if you're not sure about it|r << sod Priest
    >>|cRXP_WARN_Make sure you're closer to the Darnassus graveyard than to the Dolnaar one or you might end up going the wrong way. Run to the west side of the river if you're not sure about it|r << sod Hunter/sod Warrior/sod Druid
    .target Spirit Healer
step << Hunter
    #season 2
    .cast 402265 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Marksmanship|r] |cRXP_WARN_to train|r |T132177:0|t[Master Marksman]
    .use 206155
    .train 410113,1
step << Hunter
    #season 2
    #optional
    #completewith next
    .engrave 5 >> Open your character sheet and engrave your chest with |T132177:0|t[Master Marksman]
step << !Rogue
    #hardcore
    #requires xp10
    #completewith next
    .goto Darnassus,82.01,36.70,100 >> Travel to Darnassus
step << Druid
    #optional
    #season 2
    .xp <10,1
    .goto Darnassus,70.679,45.379
    .target Mydrannul
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mydrannul|r
    .accept 6344 >> Accept Nessa Shadowsong
 step << Warrior
    #season 2
    .goto Darnassus,57.56,46.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ilyenia Moonfire|r
    .train 227 >>Train Staves << Warrior
    .train 2567 >> Train Thrown << Warrior
    .target Ilyenia Moonfire
step << Warrior
    #season 2
    .goto Darnassus,58.76,44.48
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ariyell Skyshadow|r
    >>|cRXP_BUY_Buy and equip a stack of |r |T135425:0|t[Keen Throwing Knives]
    .collect 3107,200
    .target Ariyell Skyshadow
step << Warrior
    #season 2
    #ah
    .goto Darnassus,56.245,54.039,-1
    .goto Darnassus,56.374,51.820,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to a |cRXP_FRIENDLY_Darnassus Auctioneer|r
    >>Buy one |T134830:0|t[|cRXP_LOOT_Lesser Healing Potion|r]. It will help you get rune of |T236317:0|t[Frenzied Assault] from Dolnaar
    .collect 929,1 --Lesser Healing Potion (1)
    .target Auctioneer Tolon
    .target Auctioneer Golothas
    .train 425412,1 --Skips if you already have Frenzied Assault
step << Warrior
#xprate >1.99
    .goto Darnassus,57.305,34.606
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elanaria|r
    .turnin 1684 >> Turn in Elanaria
    .target Elanaria
    .accept 1683 >> Accept Vorlus Vilehoof
step << Warrior
    #season 2
    #requires xp10
    .goto Darnassus,63.108,21.858
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Delwynna|r upstairs
    >>|cRXP_WARN_Turn in the three |cRXP_LOOT_Severed Heads|r to receive|r |T134455:0|t[|cRXP_FRIENDLY_Monster Hunter's Rune Fragments|r]
    .collect 204689,1
    .collect 204690,1
    .collect 204688,1
    .use 204703
    .skipgossip
    .target Delwynna
    .itemcount 208612,1 --Severed Spider Head (1)
    .itemcount 208611,1 --Severed Tiger Head (1)
    .itemcount 208610,1 --Severed Owl Head
    .train 403475,1 --Rune not known
step << Warrior
    #season 2
    >>Use any of the |T134455:0|t[|cRXP_FRIENDLY_Monster Hunter's Rune Fragments|r] to combine them into |T134419:0|t[|cRXP_FRIENDLY_Rune of Devastate|r]
    .train 403475 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Devastate|r] |cRXP_WARN_to train|r |T135291:0|t[Devastate]
    .use 204689
    .itemcount 204689,1
    .itemcount 204690,1
    .itemcount 204688,1
step << !Rogue !Hunter !Warrior
#xprate >1.99
    .goto Darnassus,67.427,15.655
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Saelienne|r
    .home >> Set your Hearthstone to Darnassus << !Warrior
    .vendor >>|cRXP_BUY_Buy some more|r |T132815:0|t|cRXP_LOOT_Ice Cold Milk|r << Priest
    .target Innkeeper Saelienne
step << !Rogue
    #requires xp10
    .goto Darnassus,38.18,21.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rellian Greenspyre|r
    .turnin 922 >> Turn in Rellian Greenspyre
    .target Rellian Greenspyre
    .accept 923 >> Accept Tumors
step << !Hunter !Rogue
	#xprate <1.5
    .goto Darnassus,34.96,9.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arch Druid Fandral Staghelm|r atop the Tree
    .turnin 940 >> Turn in Teldrassil
	.isOnQuest 940
    .target Arch Druid Fandral Staghelm
step << Druid
    .goto Darnassus,35.38,8.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mathrengyl Bearwalker|r on the middle level
    .turnin 5925 >>  Turn in Heeding the Call << sod
    .accept 5921 >> Accept Moonglade
	.trainer >> Train your class spells
    .target Mathrengyl Bearwalker
step << Hunter
#xprate >1.99
    .goto Darnassus,40.377,8.545
    .target Jocaste
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jocaste|r
    .turnin 6103 >> Turn in Training the Beast
step << !Rogue
    .goto Darnassus,39.72,92.68,10,0
    .goto Darnassus,36.65,85.93
    .target Priestess A'moora
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess A'moora|r
    .accept 2518 >> Accept Tears of the Moon
step << Warrior
    #season 2
    .hs >> Hearthstone to Dolnaar
    .vendor >> |cRXP_BUY_Vendor and buy 5-10 |T133968:0|t[|cRXP_LOOT_Freshly Baked Bread|r] from the innkeeper
step << Warrior
    #season 2
    #sticky
    #completewith FrenziedAssault
    >>Turn in the quest from |cRXP_FRIENDLY_Moon Priestess Amara|r if you happen to see her as you're completing the other steps
    >>|cRXP_WARN_Don't go out of your way to look for her yet|r
    .turnin 487 >> Turn in The Road to Darnassus
    .target Moon Priestess Amara
step << Warrior
	#season 2
    .goto Teldrassil,56.308,59.488
    .money <0.0504
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shalomon|r
    >>|cRXP_BUY_Buy a|r |T135145:0|t[Walking Stick], equip it.
    .collect 2495,1 -- Walking Stick (1)
    .target Shalomon
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.20
step << Warrior
    #season 2
    #completewith melenas
    .goto Teldrassil,54.68,52.84,20,0
    .goto Teldrassil,54.42,51.19,15 >> Travel to Fel Rock
step << Warrior
    #season 2
    #label melenas
    .goto Teldrassil,51.2,50.6
    >>Kill |cRXP_ENEMY_Lord Melenas|r. Loot him for his |cRXP_LOOT_Head|r
    >>|cRXP_ENEMY_Lord Melenas|r may be located in many different spawn locations throughout Fel Rock
    .complete 932,1 --Collect Melenas' Head (x1)
    .unitscan Lord Melenas
step << Warrior
	#season 2
    #softcore
    .deathskip >> Die and respawn at the Spirit Healer
    .target Spirit Healer
step << Warrior
    #season 2
    .goto Teldrassil,57.121,61.296
    .train 2550 >>Train Cooking
    .target Zarrin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zarrin|r
    .accept 4161 >> Accept Recipe of the Kaldorei
    .turnin 4161 >> Turn in Recipe of the Kaldorei
    >>|cRXP_WARN_Skip the quest if you don't have 7 small spider legs. Train cooking anyway, you'll need it later|r
step << Warrior
    #season 2
    #label FrenziedAssault
    .goto Teldrassil,55.619,59.787
    >>Talk to |cRXP_FRIENDLY_Innkeeper Keldamyr|r at Dolanaar
    >>Talk to |cRXP_ENEMY_Syllart|r upstairs, then beat him up. He will pass out at 0%
    >>If |cRXP_ENEMY_Syllart|r is not there wait for him to respawn
    >>Talk to |cRXP_FRIENDLY_Innkeeper Keldamyr|r again after knocking out |cRXP_ENEMY_Syllart|r to receive the |T134419:0|t[|cRXP_FRIENDLY_Rune of Frenzied Assault|r]
    .train 425447 >> |cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Frenzied Assault|r] |cRXP_WARN_to train|r |T236317:0|t[Frenzied Assault]
    >>|cRXP_WARN_Note: This can be quite difficult solo depending on your level. Look for some help if needed|r
    >>|cRXP_WARN_You can solo him with thrown kiting. Try slowing him using|r |T132316:0|t[Hamstring] |cRXP_WARN_then run and|r |r |T132324:0|t[Throw] |cRXP_WARN_at him from range.|r |cRXP_WARN_Use a|r |T134830:0|t[Healing Potion] |cRXP_WARN_and|r |T133685:0|t[Bandages] |cRXP_WARN_to heal yourself if necessary|r
    --Might wanna add a guide video
    .use 204716
    .target Innkeeper Keldamyr
    .mob Syllart
step << Warrior
    #season 2
    .goto Teldrassil,55.574,56.948
    .target Tallonkai Swiftroot
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tallonkai Swiftroot|r atop the Tree
    .turnin 932 >> Turn in Twisted Hatred
step << Warrior
    #season 2
    .goto Teldrassil,55.83,58.31,40,0
    .goto Teldrassil,50.22,53.83
    .goto Teldrassil,55.83,58.31,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moon Priestess Amara|r
    >>|cRXP_FRIENDLY_Moon Priestess Amara|r |cRXP_WARN_patrols the road west of Dolanaar|r
    .turnin 487 >> Turn in The Road to Darnassus
    .target Moon Priestess Amara
    .target Laird 
step
#xprate <1.99
    #requires xp10 << Rogue
    .hs >> Hearth to Dolanaar
    .subzoneskip 186
step << Hunter
#xprate <1.99
    .goto Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jeena Featherbow|r
	.vendor >> |cRXP_BUY_Buy 4 stacks of|r |T132382:0|t[Sharp Arrows]|cRXP_BUY_. Equip them as soon as you reach level 10|r
    .target Jeena Featherbow
step
	#xprate 1.49-1.99
    .goto Teldrassil,57.121,61.296
    .train 2550 >>Train Cooking
    .target Zarrin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zarrin|r
    .accept 4161 >> Accept Recipe of the Kaldorei
    .turnin 4161 >> Turn in Recipe of the Kaldorei
step
	#xprate 1.49-1.99
    .goto Teldrassil,51.9,56.4
    >>Find Moon Priestess Amara, she patrols the road west of Dolanaar
    .target Moon Priestess Amara
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moon Priestess Amara|r
    .turnin 487 >> Turn in The Road to Darnassus
	.maxlevel 9
step << Hunter
#xprate <1.99
    #optional
    #completewith L10
    #level 10
    #label beast1
    .goto Teldrassil,56.676,59.489
    .target Dazalar
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dazalar|r
    .accept 6063 >> Accept Taming the Beast
	.train 13165 >> Train your level 10 spells
step << Hunter
#xprate <1.99
    #optional
    #completewith L10
    #level 10
    #requires beast1
    #label beast2
    .goto Teldrassil,59.9,58.8
    .use 15921 >>|cRXP_WARN_Use the|r |T132164:0|t[Taming Rod] |cRXP_WARN_on a|r |cRXP_ENEMY_Webwood Lurker|r
    .complete 6063,1 --Tame a Webwood Lurker
    .mob Webwood Lurker
step << Hunter
#xprate <1.99
    #optional
    #completewith L10
    #level 10
    #requires beast2
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dazalar|r
    .turnin 6063 >> Turn in Taming the Beast
    .target Dazalar
    .accept 6101 >> Accept Taming the Beast
step
	#xprate <1.5
    .goto Teldrassil,56.142,61.714
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corithras Moonrage|r
    .turnin 7383 >> Turn in Crown of the Earth
    .target Corithras Moonrage
    .accept 935 >> Accept Crown of the Earth
step
	#xprate <1.5
	.goto Teldrassil,60.900,68.489
    .target Denalan
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Denalan|r
    .turnin 931 >> Turn in The Shimmering Frond
    .turnin 930 >> Turn in The Glowing Fruit
step
	#xprate <1.5
	.goto Teldrassil,60.900,68.489
    .target Denalan
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Denalan|r
	.turnin 927 >> Turn in The Moss-twined Heart
    .isOnQuest 927
step
	#xprate <1.5
	.goto Teldrassil,60.78,68.59
	>>Click on |cRXP_LOOT_Denalans Planter|r
	.turnin 941 >> Turn in Planting the Heart
	.isQuestTurnedIn 927
step << Hunter
	#xprate <1.5
    .goto Teldrassil,62.6,72.2
    .use 15922 >>|cRXP_WARN_Use the|r |T132164:0|t[Taming Rod] |cRXP_WARN_on a|r |cRXP_ENEMY_Nightsaber Stalker|r
    >>|cRXP_WARN_You must right click your Pet Frame and Dismiss your pet before you can tame another one|r
    .complete 6101,1 --Tame a Nightsaber Stalker
	.isOnQuest 6101
    .mob Nightsaber Stalker
step
#xprate <1.99
    #label L10
    .xp 10
step
	#xprate <1.5
    #softcore
	#sticky
    #completewith next
    .deathskip >> Die and respawn at the Spirit Healer
    .target Spirit Healer
step << Priest
#xprate <1.99
    .goto Teldrassil,55.564,56.746
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Laurna Morninglight|r
	.trainer >> Train your class spells
    .target Laurna Morninglight
step << Warrior
#xprate <1.99
    .goto Teldrassil,56.221,59.198
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kyra Windblade|r
	.trainer >> Train your class spells
    .target Kyra Windblade
step << Rogue
#xprate <1.99
    .goto Teldrassil,56.381,60.139
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jannok Breezesong|r
	.trainer >> Train your class spells
    .train 5171 >> Train |T132306:0|t[Slice and Dice]
    .train 921 >> Train |T133644:0|t[Pick Pocket] as well which is needed for your level 10 Rogue quest
    .target Jannok Breezesong
step << Hunter
#xprate <1.99
    .goto Teldrassil,56.676,59.489
    .target Dazalar
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dazalar|r
    .accept 6063 >> Accept Taming the Beast
	.trainer >> Train your class spells
step << Hunter
#xprate <1.99
    .goto Teldrassil,59.9,58.8
    .use 15921 >>|cRXP_WARN_Use the|r |T132164:0|t[Taming Rod] |cRXP_WARN_on a|r |cRXP_ENEMY_Webwood Lurker|r
    .complete 6063,1 --Tame a Webwood Lurker
    .mob Webwood Lurker
step << Hunter
#xprate <1.99
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dazalar|r
    .turnin 6063 >> Turn in Taming the Beast
    .target Dazalar
    .accept 6101 >> Accept Taming the Beast
step << Hunter
#xprate <1.99
    .goto Teldrassil,62.6,72.2
    .use 15922 >>|cRXP_WARN_Use the|r |T132164:0|t[Taming Rod] |cRXP_WARN_on a|r |cRXP_ENEMY_Nightsaber Stalker|r
    >>|cRXP_WARN_You must right click your Pet Frame and Dismiss your pet before you can tame another one|r
    .complete 6101,1 --Tame a Nightsaber Stalker
    .mob Nightsaber Stalker
step << Hunter
#xprate <1.99
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dazalar|r
    .turnin 6101 >> Turn in Taming the Beast
    .target Dazalar
    .accept 6102 >> Accept Taming the Beast
step << Hunter
#xprate <1.99
    .goto Teldrassil,64.7,66.7
    .use 15923 >>|cRXP_WARN_Use the|r |T132164:0|t[Taming Rod] |cRXP_WARN_on a|r |cRXP_ENEMY_Strigid Screecher|r
    >>|cRXP_WARN_You must right click your Pet Frame and Dismiss your pet before you can tame another one|r
    .complete 6102,1 --Tame a Strigid Screecher
    .mob Strigid Screecher
step << Hunter
#xprate <1.99
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dazalar|r
    .turnin 6102 >> Turn in Taming the Beast
    .target Dazalar
    .accept 6103 >> Accept Training the Beast
step << Warrior
#xprate <1.99
    .goto Teldrassil,55.83,58.31,40,0
    .goto Teldrassil,50.22,53.83
    .goto Teldrassil,55.83,58.31,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moon Priestess Amara|r
    >>|cRXP_FRIENDLY_Moon Priestess Amara|r |cRXP_WARN_patrols the road west of Dolanaar|r
    .accept 1684 >> Accept Elanaria
    .target Moon Priestess Amara
step << Rogue
#xprate <1.99
    .goto Teldrassil,56.381,60.139
    .target Jannok Breezesong
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jannok Breezesong|r
    .accept 2241 >> Accept The Apple Falls
step << Hunter
	#xprate <1.5--money issues 1.5x
    .goto Teldrassil,56.308,59.488
    .money <0.0504
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shalomon|r
    >>|cRXP_BUY_Buy a|r |T135145:0|t[Walking Stick]
    >>|cRXP_WARN_You will equip this later. Skip this step if you happened to find a different staff|r
    .collect 2495,1 -- Walking Stick (1)
    .target Shalomon
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.20
step << !Druid
#xprate <1.99
    .goto Teldrassil,55.83,58.31,40,0
    .goto Teldrassil,50.22,53.83
    .goto Teldrassil,55.83,58.31,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moon Priestess Amara|r
    >>|cRXP_FRIENDLY_Moon Priestess Amara|r |cRXP_WARN_patrols the road west of Dolanaar|r
    .turnin 487 >> Turn in The Road to Darnassus
    .target Moon Priestess Amara
step << Rogue
#xprate <1.99
    #softcore
    #completewith next
    .goto Teldrassil,44.0,54.6
    .deathskip >>Once you get past the furbolg area, die on purpose and respawn at the Darnassus graveyard
    .target Spirit Healer
step << Rogue
    #hardcore
    #completewith next
    .goto Darnassus,82.01,36.70,100 >> Travel to Darnassus
step << Rogue
    .goto Darnassus,38.18,21.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rellian Greenspyre|r
    .turnin 922 >> Turn in Rellian Greenspyre
    .target Rellian Greenspyre
    .accept 923 >> Accept Tumors
step << Rogue
    #season 0
    .goto Darnassus,34.96,9.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arch Druid Fandral Staghelm|r atop the Tree
    .turnin -935 >> Turn in Crown of the Earth
    .turnin -940 >> Turn in Teldrassil
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
step << Warrior
#xprate >1.99
    #sticky
    #completewith next
    .goto Teldrassil,48.7,62.2,18 >> Travel toward |cRXP_ENEMY_Vorlus Vilehoof|r
step << Warrior
#xprate >1.99
    .goto Teldrassil,47.2,63.7
    >>Kill |cRXP_ENEMY_Vorlus Vilehoof|r. Loot him for his |cRXP_LOOT_Horn|r
    .complete 1683,1 --Collect Horn of Vorlus (x1)
    .mob Vorlus Vilehoof
step << Hunter
    #season 2
    .goto Darnassus,64.2,63.0
    .line Darnassus,60.65,66.47,61.68,63.73,62.36,58.91,62.32,55.22,65.77,55.75,67.88,57.48,68.35,59.98,65.14,68.14,64.34,71.36,62.28,68.79,60.65,66.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tLook for |cRXP_FRIENDLY_Jaeana|r, she patrols around the Tradesmen's Terrace
    >>|cRXP_BUY_Buy a stack of|r |T133972:0|t[Tough Jerky] |cRXP_BUY_from her. 
    >>|cRXP_WARN_You will need it to feed your owl, they only eat meat and there's no meat vendor in Darkshore|r
    .collect 117,15
    .target Jaeana
step << !Warrior
    #season 2
    .goto Darnassus,70.679,45.379
    .target Mydrannul
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mydrannul|r
    .accept 6344 >> Accept Nessa Shadowsong
step << Hunter
    #season 2
    .goto Darnassus,58.76,44.48
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ariyell Skyshadow|r
    >>|cRXP_BUY_Buy and equip a|r |T135489:0|t[Laminated Recurve Bow]
    .collect 2507,1
    .target Ariyell Skyshadow
    .money <0.1751
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.77 
step << Hunter
    #season 2
    #completewith next
    +|cRXP_WARN_Equip the|r |T135489:0|t[Laminated Recurve Bow]
    .use 2507
    .itemcount 2507,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.76
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
    #season 0 << Rogue/Druid
    .goto Teldrassil,43.2,42.8,55,0
    .goto Teldrassil,43.2,32.8,55,0
    .goto Teldrassil,43.6,26.0,55,0
    .goto Teldrassil,43.2,42.8
	>>Kill |cRXP_ENEMY_Timberling Tramplers|r, |cRXP_ENEMY_Timberling Mire Beasts|r and |cRXP_ENEMY_Elder Timberlings|r. Loot them for their |cRXP_LOOT_Tumors|r
    .complete 923,1 --Collect Mossy Tumor (x5)
    .mob Elder Timberling
    .mob Timberling Trampler
    .mob Timberling Mire Beast
step << Hunter
    #season 2
    .train 425762,1
    .goto Teldrassil,48.3,31.4
    >>Use |T134025:0|t[Teldrassil Bird Meat] near the corpse to summon |cRXP_ENEMY_Mowgh|r
    >>Kill |cRXP_ENEMY_Mowgh|r and loot him for |T134419:0|t|cRXP_LOOT_[Rune of Flanking]|r
    .collect 205979,1
    .use 208608
    .mob Mowgh
step << Hunter
    #season 2
    .train 425762 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Flanking|r] |cRXP_WARN_to train|r |T132175:0|t[Flanking Strike]
    .use 205979
    .itemcount 205979,1
step << Hunter
    #season 2
    #optional
    #completewith next
    .engrave 7 >> Open your character sheet and engrave your legs with |T132175:0|t[Flanking Strike]
step
    #season 0 << Rogue/Druid
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
step << !sod/Warrior/Rogue/Druid
    .goto Teldrassil,38.3,34.3
    .target Sentinel Arynia Cloudsbreak
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Arynia Cloudsbreak|r
    .accept 937 >> Accept The Enchanted Glade
step << Rogue
    #season 2
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
step << Rogue
    #season 2
    #sticky
    #completewith MistStart
    #label BottomRightMapPiece
    >>Kill or |T133644:0|t[Pick Pocket] |cRXP_ENEMY_Bloodfeather Harpies|r. Loot them for the |T134327:0|t[|cRXP_LOOT_Bottom-Right Map Piece]|r
    >>|cRXP_WARN_You must be in|r |T132320:0|t[Stealth] |cRXP_WARN_to use|r |T133644:0|t[Pick Pocket]
    .collect 208603,1 -- Bottom-Right Map Piece (1)
    .mob Bloodfeather Harpy
    .mob Bloodfeather Rogue
    .mob Bloodfeather Sorceress
    .mob Bloodfeather Fury
    .mob Bloodfeather Wind Witch
    .mob Bloodfeather Matriarch
    .train 398196,1
step << !sod/Warrior/Rogue/Druid
    #sticky
	#label harpies2
    .goto Teldrassil,33.619,29.819,0,0
    >>Kill |cRXP_ENEMY_Bloodfeather Harpies|r. Loot them for their |cRXP_LOOT_Belts|r
    >>|cRXP_ENEMY_Bloodfeather Matriarchs|r |cRXP_WARN_cast|r |T136052:0|t[Healing Wave] |cRXP_WARN_and|r |T136048:0|t[Lightning Bolt] |cRXP_WARN_which does a lot of damage. Try to burst them fast|r
    .complete 937,1 --Collect Bloodfeather Belt (x6)
    .mob Bloodfeather Harpy
    .mob Bloodfeather Rogue
    .mob Bloodfeather Sorceress
    .mob Bloodfeather Fury
    .mob Bloodfeather Wind Witch
    .mob Bloodfeather Matriarch
step << Rogue
    #season 2
    #sticky
    #completewith next
    #requires BottomRightMapPiece
    .cast 418600 >>|cRXP_WARN_Use any of the|r |T134327:0|t[|cRXP_LOOT_Map Pieces]|r |cRXP_WARN_to combine them into the|r |T134269:0|t[|cRXP_LOOT_Teldrassil Treasure Map|r]
    .collect 208605,1
    .itemcount 208604,1
    .itemcount 208601,1
    .itemcount 208602,1
    .itemcount 208603,1
    .use 208604
    .use 208601
    .use 208602
    .use 208603
    .train 398196,1
step << !sod/Warrior/Rogue/Druid
    .goto Teldrassil,31.54,31.62
    .target Mist
    #label MistStart
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mist|r
    >>|cRXP_WARN_This will start an escort quest|r
    >>|cRXP_WARN_Skip this quest if the NPC is not there|r
    .accept 938 >> Accept Mist
step << Rogue
    #season 2
    .goto Teldrassil,37.8,43.0,60,0
    .goto Teldrassil,36.0,34.4,60,0
    .goto Teldrassil,34.6,28.8,60,0
    >>Kill or |T133644:0|t[Pick Pocket] |cRXP_ENEMY_Bloodfeather Harpies|r. Loot them for the |T134327:0|t[|cRXP_LOOT_Bottom-Right Map Piece]|r
    >>|cRXP_WARN_You must be in|r |T132320:0|t[Stealth] |cRXP_WARN_to use|r |T133644:0|t[Pick Pocket]
    .collect 208603,1 -- Bottom-Right Map Piece (1)
    .mob Bloodfeather Harpy
    .mob Bloodfeather Rogue
    .mob Bloodfeather Sorceress
    .mob Bloodfeather Fury
    .mob Bloodfeather Wind Witch
    .mob Bloodfeather Matriarch
    .train 398196,1
step << Rogue
    #season 2
    .cast 418600 >>|cRXP_WARN_Use any of the|r |T134327:0|t[|cRXP_LOOT_Map Pieces]|r |cRXP_WARN_to combine them into the|r |T134269:0|t[|cRXP_LOOT_Teldrassil Treasure Map|r]
    .collect 208605,1
    .itemcount 208604,1
    .itemcount 208601,1
    .itemcount 208602,1
    .itemcount 208603,1
    .use 208604
    .use 208601
    .use 208602
    .use 208603
    .train 398196,1
step << !sod/Warrior/Rogue/Druid
    .goto Teldrassil,38.3,34.4
    .target Sentinel Arynia Cloudsbreak
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Arynia Cloudsbreak|r
    .turnin 938 >> Turn in Mist
    .isOnQuest 938
step << !sod/Warrior/Rogue/Druid
    #requires harpies2
    #label TeldrassilEnd
    .goto Teldrassil,38.3,34.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Arynia Cloudsbreak|r
    .turnin 937 >> Turn in The Enchanted Glade
    .target Sentinel Arynia Cloudsbreak
    .accept 940 >> Accept Teldrassil
step << Druid
    #season 2
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
step << Druid
    #season 2
    .goto Teldrassil,43.2,42.8,55,0
    .goto Teldrassil,43.2,32.8,55,0
    .goto Teldrassil,43.6,26.0,55,0
    .goto Teldrassil,43.2,42.8
	>>Kill |cRXP_ENEMY_Timberling Tramplers|r, |cRXP_ENEMY_Timberling Mire Beasts|r and |cRXP_ENEMY_Elder Timberlings|r. Loot them for their |cRXP_LOOT_Tumors|r
    .complete 923,1 --Collect Mossy Tumor (x5)
    .mob Elder Timberling
    .mob Timberling Trampler
    .mob Timberling Mire Beast
step << Warrior
    #season 2
    .goto Teldrassil,39.8,37.4,25 >>Head to the marked spot. Check if |cRXP_FRIENDLY_Wandering Swordsman|r is there. If you find him you can challenge him to a duel which will award you with the rune of |T132334:0|t[|cRXP_FRIENDLY_Blood Frenzy|r]
    >>|cRXP_WARN_He has multiple spawn points and can only be present in one of them at the time. Skip this step if he's not there|r
    .unitscan Wandering Swordsman
    .train 412507,1
step
    #softcore
	#completewith darn << era
    #completewith darnSoD << sod
    .deathskip >>Die and respawn at the Darnassus graveyard
    >>|cRXP_WARN_Make sure you're on the west side of the river or you might end up going the wrong way|r << sod
    .target Spirit Healer
step
    #hardcore
    #completewith next
    .goto Darnassus,82.01,36.70
    .zone Darnassus >> Travel to Darnassus
step << Warrior
    #season 2
    .goto Teldrassil,39.8,69.6,25 >>Head to the marked spot. Check if |cRXP_FRIENDLY_Wandering Swordsman|r is there if you still haven't found him. If you find him you can challenge him to a duel which will award you with the rune of |T132334:0|t[|cRXP_FRIENDLY_Blood Frenzy|r]
    >>|cRXP_WARN_He has multiple spawn points and can only be present in one of them at the time. Skip this step if he's not there|r
    .unitscan Wandering Swordsman
    .train 412507,1
step << Warrior
    #season 2
    .goto Teldrassil,43.8,77.0,25 >>Head to the marked spot. Check if |cRXP_FRIENDLY_Wandering Swordsman|r is there if you still haven't found him. If you find him you can challenge him to a duel which will award you with the rune of |T132334:0|t[|cRXP_FRIENDLY_Blood Frenzy|r]
    >>|cRXP_WARN_He has multiple spawn points and can only be present in one of them at the time. Skip this step if he's not there|r
    .unitscan Wandering Swordsman
    .train 412507,1
step << Warrior
    #softcore
    #completewith next
    #sesaon 2
    .goto Teldrassil,40.8,75.6
    .deathskip >>Die and respawn at the Darnassus graveyard
    >>|cRXP_WARN_Make sure you're closer to Darnassus graveyard than Dolnaar one or you might end up going the wrong way. If you're uncertain die east of the spot marked on your map|r
    .target Spirit Healer
step
    #hardcore
    #completewith next
    #season 2
    .goto Darnassus,82.01,36.70
    .zone Darnassus >> Travel to Darnassus
step
    .goto Darnassus,70.679,45.379
    .target Mydrannul
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mydrannul|r
    .accept 6344 >> Accept Nessa Shadowsong
step
    #softcore
    #label darn
    #optional
    .goto Darnassus,82.01,36.70
    .zone Darnassus >> Travel to Darnassus
step
	.abandon 927 >> Abandon The Moss-twined Heart. You never have an opportunity to turn it in
step << Warrior
#xprate <1.99
    .goto Darnassus,57.305,34.606
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elanaria|r
    .turnin 1684 >> Turn in Elanaria
    .target Elanaria
    .accept 1683 >> Accept Vorlus Vilehoof
step << Warrior
#xprate <1.99
    #sticky
    #completewith next
    .goto Teldrassil,48.7,62.2,18 >> Travel toward |cRXP_ENEMY_Vorlus Vilehoof|r
step << Warrior
#xprate <1.99
    .goto Teldrassil,47.2,63.7
    >>Kill |cRXP_ENEMY_Vorlus Vilehoof|r. Loot him for his |cRXP_LOOT_Horn|r
    .complete 1683,1 --Collect Horn of Vorlus (x1)
    .mob Vorlus Vilehoof
step << Warrior
#xprate <1.99
    #softcore
	#sticky
    #completewith next
    .goto Teldrassil,43.6,54.3
    .deathskip >>Die on purpose after you get past the furbolg area and respawn at Darnassus
step << Warrior
#xprate <1.99
    #hardcore
    #completewith next
    .goto Darnassus,82.01,36.70,100 >> Travel to Darnassus
step << Warrior
    .goto Darnassus,57.305,34.606
    .target Elanaria
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elanaria|r
    .turnin 1683 >> Turn in Vorlus Vilehoof
--	.accept 1686 >> Accept The Shade of Elura
step << Warrior
    #season 2
    #requires xp10
    .goto Darnassus,63.108,21.858
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Delwynna|r upstairs
    >>|cRXP_WARN_Turn in the three |cRXP_LOOT_Severed Heads|r to receive|r |T134455:0|t[|cRXP_FRIENDLY_Monster Hunter's Rune Fragments|r]
    .collect 204689,1
    .collect 204690,1
    .collect 204688,1
    .use 204703
    .skipgossip
    .target Delwynna
    .itemcount 208612,1 --Severed Spider Head (1)
    .itemcount 208611,1 --Severed Tiger Head (1)
    .itemcount 208610,1 --Severed Owl Head
    .train 403475,1 --Rune not known
step << Warrior
    #season 2
    >>Use any of the |T134455:0|t[|cRXP_FRIENDLY_Monster Hunter's Rune Fragments|r] to combine them into |T134419:0|t[|cRXP_FRIENDLY_Rune of Devastate|r]
    .train 403475 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Devastate|r] |cRXP_WARN_to train|r |T135291:0|t[Devastate]
    .use 204689
    .itemcount 204689,1
    .itemcount 204690,1
    .itemcount 204688,1
step << Hunter
#xprate <1.99
    .goto Darnassus,40.377,8.545
    .target Jocaste
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jocaste|r
    .turnin 6103 >> Turn in Training the Beast
step << Druid
    #season 0
    .goto Darnassus,35.38,8.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mathrengyl Bearwalker|r on the middle level
    .turnin 5931 >> Turn in Back to Darnassus
    .target Mathrengyl Bearwalker
    .accept 6001 >> Accept Body and Heart
step
    #season 0
    .goto Darnassus,34.814,9.255
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arch Druid Fandral Staghelm|r
    .turnin -935 >> Turn in Crown of the Earth
    .turnin -940 >> Turn in Teldrassil
    .target Arch Druid Fandral Staghelm
    .accept 952 >> Accept Grove of the Ancients
step << !Rogue
    #season 2
    #label darnSoD
    .goto Darnassus,38.184,21.639
    .target Rellian Greenspyre
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rellian Greenspyre|r
    .turnin 923 >> Turn in Tumors
step << Rogue
    #season 2
    .goto Darnassus,39.72,92.68,10,0
    .goto Darnassus,36.65,85.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess A'moora|r
    .turnin 2518 >> Turn in Tears of the Moon
    .target Priestess A'moora
    .accept 2520 >> Accept Sathrah's Sacrifice
step << Rogue
    #season 2
    .goto Darnassus,39.7,85.8
	.use 8155 >>|cRXP_WARN_Use|r |T135652:0|t[Sathrah's Sacrifice] |cRXP_WARN_at the fountain|r
    .complete 2520,1 --Offer the sacrifice at the fountain
step << Rogue
    #season 2
    #label end
    .goto Darnassus,39.72,92.68,10,0
    .goto Darnassus,36.65,85.93
    .target Priestess A'moora
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess A'moora|r
    .turnin 2520 >> Turn in Sathrah's Sacrifice
step << Warrior/Rogue/Druid
    #season 2
    .goto Darnassus,34.814,9.255
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arch Druid Fandral Staghelm|r
    .turnin 940 >> Turn in Teldrassil
    .target Arch Druid Fandral Staghelm
    .accept 952 >> Accept Grove of the Ancients
step
    #season 0
    .goto Darnassus,38.184,21.639
    .target Rellian Greenspyre
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rellian Greenspyre|r
    .turnin 923 >> Turn in Tumors
step << Hunter
    .goto Darnassus,40.2,9.8
    .trainer >>Train lvl 12 spells << sod
    >>|cRXP_WARN_Skip this step and come back after turning in Tears of the Moon if you don't have enough money or aren't level 12 yet|r << sod
    .target Jocaste
step << Hunter
    .goto Darnassus,42.2,8.8
    .trainer >>Train pet spells
    .target Silvaria
step << Rogue
    #season 2
    .goto Darnassus,38.6,15.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lelanai|r
    .vendor >> |cRXP_BUY_Vendor trash|r
    .target Lelanai
step << Rogue
    .goto Darnassus,31.21,17.72,8,0
    .goto Darnassus,36.99,21.91
    .target Syurna
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Syurna|r
    .turnin 2242 >> Turn in Destiny Calls
step << Rogue
    #season 2
    >>|cRXP_WARN_Make sure you have at least 29 silver leftover after training. You will need it to get a bow|r
    .trainer >> Train level 12 spells
step << !sod/!Rogue
    .goto Darnassus,39.72,92.68,10,0
    .goto Darnassus,36.65,85.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess A'moora|r
    .turnin 2518 >> Turn in Tears of the Moon
    .target Priestess A'moora
    .accept 2520 >> Accept Sathrah's Sacrifice
step << !sod/!Rogue
    .goto Darnassus,39.7,85.8
	.use 8155 >>|cRXP_WARN_Use|r |T135652:0|t[Sathrah's Sacrifice] |cRXP_WARN_at the fountain|r
    .complete 2520,1 --Offer the sacrifice at the fountain
step << !sod/!Rogue
    #label end
    .goto Darnassus,39.72,92.68,10,0
    .goto Darnassus,36.65,85.93
    .target Priestess A'moora
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess A'moora|r
    .turnin 2520 >> Turn in Sathrah's Sacrifice
step << Priest
    #season 2
    .goto Darnassus,40.0,80.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Alathea|r
    .turnin 5629 >> Turn in Returning Home
    .target Priestess Alathea
step << Priest
    #season 2
    .goto Darnassus,38.6,82.0
    .trainer >> Train lvl 12 Spells
step << Druid
#ssf
    #season 0
    .goto Darnassus,47.95,68.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Firodren Mooncaller|r
    .train 2366 >> Train |T136065:0|t[Herbalism]
    >>|T136065:0|t[Herbalism] |cRXP_WARN_is required to gather 5|r |T134187:0|t[Earthroot] |cRXP_WARN_for an important class quest soon. You can unlearn it afterwards|r
    .target Firodren Mooncaller
step
    #ah
    .goto Darnassus,56.245,54.039,-1
    .goto Darnassus,56.374,51.820,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to a |cRXP_FRIENDLY_Darnassus Auctioneer|r
    >>Buy the following items for instant turn ins at Darkshore later:
    >>|T134187:0|t[Earthroot] << Druid era
    >>|T133912:0|t[Darkshore Grouper]
    >>|T133972:0|t[Strider Meat]
    *Skip this step if you wish to not buy any
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .collect 2449,5,6123,1 << Druid
    .target Auctioneer Tolon
    .target Auctioneer Golothas
step << Hunter
    .goto Darnassus,64.2,63.0
    .line Darnassus,60.65,66.47,61.68,63.73,62.36,58.91,62.32,55.22,65.77,55.75,67.88,57.48,68.35,59.98,65.14,68.14,64.34,71.36,62.28,68.79,60.65,66.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tLook for |cRXP_FRIENDLY_Jaeana|r, she patrols around the Tradesmen's Terrace
    >>|cRXP_BUY_Buy a stack of|r |T133972:0|t[Tough Jerky] |cRXP_BUY_from her. 
    >>|cRXP_WARN_You will need it to feed your owl, they only eat meat and there's no meat vendor in Darkshore|r
    .collect 117,15
    .target Jaeana
step << Hunter
    #season 2
    .goto Darnassus,64.2,59.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kieran|r. He's on the upper level of the hut
    >>|cRXP_BUY_Buy a|r |T135145:0|t[Walking Stick]
    >>|cRXP_WARN_Skip this step if you have a different staff ready in your bags|r
    .collect 2495,1
    .target Kieran
    .money <0.1539
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.19
step << Hunter/Warrior/Priest/Sod Rogue
    .goto Darnassus,57.56,46.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ilyenia Moonfire|r
    .train 227 >>Train Staves << Hunter/Warrior/Priest
    .train 265 >>Train Bows << Sod Rogue
    >>If you have a Staff in your bags, equip it << Hunter
    >>If you have a Bow in your bags, equip it << Rogue
    .target Ilyenia Moonfire
step << Hunter
    #optional
    #completewith end
    +|cRXP_WARN_Equip the|r |T135145:0|t[Walking Stick]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.19
step << Hunter/Sod Rogue
    .goto Darnassus,58.76,44.48
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ariyell Skyshadow|r
    >>|cRXP_BUY_Buy and equip a|r |T135489:0|t[Laminated Recurve Bow]
    .collect 2507,1
    .target Ariyell Skyshadow
    .money <0.1751
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.77
step << Hunter
    #season 0
    .goto Darnassus,58.76,44.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ariyell Skyshadow|r
	.vendor >>|cRXP_BUY_Buy|r |T132382:0|t[Sharp Arrows]
    .target Ariyell Skyshadow
step << Hunter/Sod Rogue
    #season 2
    .goto Darnassus,58.76,44.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ariyell Skyshadow|r
	.vendor >>|cRXP_BUY_Buy|r |T132382:0|t[Sharp Arrows]
    .vendor >>|cRXP_BUY_Buy a|r |T134410:0|t[Medium Quiver] |cRXP_BUY_if you have spare money|r << Hunter
    .target Ariyell Skyshadow
step << Hunter
    #completewith next
    +|cRXP_WARN_Equip the|r |T135489:0|t[Laminated Recurve Bow]
    .use 2507
    .itemcount 2507,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.76
step << Warrior
    .goto Darnassus,58.76,44.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ariyell Skyshadow|r
    >>|cRXP_BUY_Buy a|r |T135147:0|t[Gnarled Staff]|cRXP_BUY_. Equip it at level 15|r
	.collect 2030,1
    .target Ariyell Skyshadow
    .money <0.5022
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Warrior
    .goto Darnassus,58.76,44.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ariyell Skyshadow|r
    >>|cRXP_BUY_Buy a|r |T135154:0|t[Quarter Staff]|cRXP_BUY_. Equip it at level 11|r << era
    >>|cRXP_BUY_Buy and equip a|r |T135154:0|t[Quarter Staff] |cRXP_BUY_if you can't afford a|r |T135147:0|t[Gnarled Staff] << sod
	.collect 854,1
    .target Ariyell Skyshadow
    .money <0.3022
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.44
step << Warrior
    .goto Darnassus,58.76,44.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ariyell Skyshadow|r
	>>|cRXP_BUY_Buy and equip a|r |T135346:0|t[Cutlass] |cRXP_BUY_if you can't afford a|r |T135154:0|t[Quarter Staff]
	.collect 851,1
    .target Ariyell Skyshadow
    .money <0.2023
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.82
step << Warrior
    #completewith next
    +|cRXP_WARN_Equip the|r |T135346:0|t[Cutlass]
    .use 851
    .itemcount 851,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.81
step << Warrior
    #completewith next
    +|cRXP_WARN_Equip the|r |T135154:0|t[Quarter Staff]
    .use 854
    .itemcount 854,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.43
step << Warrior
    #season 2
	.goto Darnassus,58.6,35.6
    .target Arias'ta Bladesinger
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arias'ta Bladesinger|r
    .trainer >> Train your class spells
step << Rogue
    #season 0
    .goto Darnassus,62.68,65.58
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rellian Greenspyre|r on the second floor
    >>|cRXP_BUY_Buy a|r |T135641:0|t[Balanced Throwing Dagger]
    .collect 2946,1 -- Balanced Throwing Dagger
    .target Turian
step
    #completewith NessaShadowsong
    .goto Darnassus,28.52,39.89
    .zone Teldrassil >> Travel through the purple portal to Rut'theran Village
    .zoneskip Darkshore
    .subzoneskip 702
step << Rogue
    #season 2
    #completewith next
    .goto Teldrassil,55.339,90.818
    .cast 421424 >>|cRXP_WARN_Use the|r |T134269:0|t[|cRXP_LOOT_Teldrassil Treasure Map|r] |cRXP_WARN_inside the tree trunk at Rut'theran Village. This will cause a |cRXP_PICK_Buried Treasure|r to pop up|r
    .use 208605
    .itemcount 208605,1
    .train 398196,1
step << Rogue
    #season 2
    >>Open the |cRXP_PICK_Buried Treasure|r. Loot it for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Quick Draw|r]
    .collect 203991,1 -- Rune of Quick Draw (1)
    .train 398196,1
step << Rogue
    #season 2
    .train 400095 >> |cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Quick Draw|r] |cRXP_WARN_to train|r |T134536:0|t[Quick Draw]
    .use 203991
    .itemcount 203991,1
step
    .goto Teldrassil,56.25,92.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nessa Shadowsong|r
    .turnin 6344 >> Turn in Nessa Shadowsong
    .target Nessa Shadowsong
    .accept 6341 >> Accept The Bounty of Teldrassil
step
    #label NessaShadowsong
    #optional
    .goto Teldrassil,56.25,92.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nessa Shadowsong|r
    .turnin 6343 >> Turn in Return to Nessa
    .isOnQuest 6343
    .target Nessa Shadowsong
step
    .goto Teldrassil,58.399,94.016
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vesprystus|r
    .turnin 6341 >> Turn in The Bounty of Teldrassil
    .target Vesprystus
    .accept 6342 >> Accept Flight to Auberdine
step
    .goto Teldrassil,58.399,94.016
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vesprystus|r
    .fly Darkshore >> Fly to Darkshore
    .target Vesprystus
]])
