local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

local L = GetLocale() if L and RXP.enabledLocale[L] then return end
RXPGuides.RegisterGuide([[
#forever
#season 0,1
<< Alliance
#name 1-6 Shadowglen
#displayname 1-7 Shadowglen << sod
#version 1
#group RestedXP Forever Guide (A)
#subgroup Speedrun Guide 1-20
--#groupid RXP-SRGCE-A1
#defaultfor NightElf
#next 6-11 Teldrassil
step << !NightElf
    #sticky
    #completewith next
    +You have selected a guide meant for Night Elves. You should choose the same starter zone that you start in
step
    .goto 1438/1,826.03,10328.97
    .target Conservator Ilthalaine
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Conservator Ilthalaine|r
    .accept 456 >> Accept The Balance of Nature
step
    #sticky
    #label balance1
    #completewith GoodProtector
    >>Kill |cRXP_ENEMY_Young Nightsabers|r and |cRXP_ENEMY_Young Thistle Boars|r
    .goto 1438/1,657.75,10385.51,0,0
    .complete 456,1 --Kill Young Nightsaber (x7)
    .mob +Young Nightsaber
    .complete 456,2 --Kill Young Thistle Boar (x4)
    .mob +Young Thistle Boar
step
    >>Loot the mobs you kill, make sure you have at least 10 copper worth of vendor trash, you will need it to train |T132333:0|t[Battle Shout]<< Warrior
    .xp 2 >> Grind to level 2
step << !sod/Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dirania Silvershine|r and |cRXP_FRIENDLY_Melithar Staghelm|r
    #label GoodProtector
    .accept 4495 >> Accept A Good Friend
    .target +Dirania Silvershine
    .goto 1438/1,713.81,10407.20
    .accept 458 >> Accept The Woodland Protector
	.goto 1438/1,763.45,10389.79
    .target +Melithar Staghelm
step
    >>Kill |cRXP_ENEMY_Young Nightsabers|r and |cRXP_ENEMY_Young Thistle Boars|r
    .goto 1438/1,657.75,10385.51,0,0
    .complete 456,1 --Kill Young Nightsaber (x7)
    .mob +Young Nightsaber
    .complete 456,2 --Kill Young Thistle Boar (x4)
    .mob +Young Thistle Boar
step << Hunter
#xprate >1.99
    #requires balance1
	.goto 1438/1,826.03,10328.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Conservator Ilthalaine|r
    .turnin 456,1 >> Turn in The Balance of Nature << Hunter
    .target Conservator Ilthalaine
    .accept 457 >> Accept The Balance of Nature
step << Hunter
#xprate >1.99
    .goto 1438/1,769.77,10673.98
    >>Kill |cRXP_ENEMY_Mangy Nightsabers|r and |cRXP_ENEMY_Thistle Boars|r
    .complete 457,1 --Kill Mangy Nightsaber (x7)
    .mob +Mangy Nightsaber
    .complete 457,2 --Kill Thistle Boar (x7)
    .mob +Thistle Boar
step << Hunter
    #season 0,1
    .goto 1438/1,769.77,10673.98
    .xp 4-610 >> Grind until you are 610xp away from level 4 (790/1400)
step << Hunter
    .goto 1438/1,1034.89,10711.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Iverron|r
    .turnin 4495 >> Turn in A Good Friend
    .target Iverron
    .accept 3519 >> Accept A Friend in Need
step << Hunter
    #completewith next
    .hs >> Hearth to Shadowglen
step << Hunter
    .goto 1438/1,866.51,10300.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tarindrella|r
    .turnin 458 >> Turn in The Woodland Protector
    .target Tarindrella
    .accept 459 >> Accept The Woodland Protector
    .accept 97977 >>Accept Nature's Call
step << Hunter
#xprate >1.99
    #requires balance1
	.goto 1438/1,826.03,10328.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Conservator Ilthalaine|r
    .turnin 457 >> Turn in The Balance of Nature
    .target Conservator Ilthalaine
	.accept 3117 >> Accept Etched Sigil
step << Druid
    .goto 1438/1,779.85,10450.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dellylah|r
    .vendor >> |cRXP_WARN_Vendor trash|r
    >>|cRXP_BUY_Buy 15|r |T132794:0|t[Refreshing Spring Water]
    .collect 159,15 --Collect Refreshing Spring Water (x15)
    .target Dellylah
step
#xprate <1.99 << Hunter/Warrior
    #requires balance1
	.goto 1438/1,826.03,10328.97
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
    #season 0
    .goto 1438/1,794.92,10436.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keina|r
	.vendor >> |cRXP_WARN_Vendor trash|r
    .target Keina
step << Warrior
    #season 0
	.goto 1438/1,778.07,10526.62
    .target Alyissia
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alyissia|r
	.turnin 3116 >> Turn in Simple Sigil
    .trainer >> Train your class spells
step << !Hunter
    #season 0 << Druid
    .goto 1438/1,769.77,10673.98
    >>Kill |cRXP_ENEMY_Mangy Nightsabers|r and |cRXP_ENEMY_Thistle Boars|r
    .complete 457,1 --Kill Mangy Nightsaber (x7)
    .mob +Mangy Nightsaber
    .complete 457,2 --Kill Thistle Boar (x7)
    .mob +Thistle Boar
step << !Hunter
    #season 0 << Warrior
    .goto 1438/1,1034.89,10711.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Iverron|r
    .turnin 4495 >> Turn in A Good Friend
    .target Iverron
    .accept 3519 >> Accept A Friend in Need
step << !Hunter !Warrior
    #season 2
    #completewith next
    .hs >> Hearth to Shadowglen
step << !Hunter
    #season 0
    #completewith next
    .hs >> Hearth to Shadowglen
step << !Hunter
    #season 0 << Druid/Warrior
    .goto 1438/1,866.51,10300.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tarindrella|r
    .turnin 458 >> Turn in The Woodland Protector
    .target Tarindrella
    .accept 459 >> Accept The Woodland Protector
    .accept 97977 >>Accept Nature's Call
step << !Hunter
    #season 0 << Druid
    .goto 1438/1,826.03,10328.97
    .target Conservator Ilthalaine
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Conservator Ilthalaine|r
    .turnin 457 >> Turn in The Balance of Nature
step
    .goto 1438/1,713.81,10407.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dirania Silvershine|r
    .turnin 3519 >> Turn in A Friend in Need
    .target Dirania Silvershine
    .accept 3521 >> Accept Iverron's Antidote
step << Hunter
    #season 0
    #completewith htraining
    .goto 1438/1,794.92,10436.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keina|r
    >>|cRXP_WARN_Make sure that you have 1 silver leftover after leaving the vendor to be able to afford|r |T132204:0|t[|cRXP_FRIENDLY_Serpent Sting|r]
	.vendor >> |cRXP_BUY_Buy 2 stacks of|r |T132382:0|t[Rough Arrows]
    .target Keina
step << Druid
    #season 0,1
    .goto 1438/1,779.85,10450.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dellylah|r
    .vendor >> |cRXP_WARN_Vendor trash|r
    >>|cRXP_BUY_Buy 20|r |T132794:0|t[Refreshing Spring Water]
    .collect 159,20 --Collect Refreshing Spring Water (x20)
    .target Dellylah
step
    .goto 1438/1,871.24,10417.65
    .target Gilshalan Windwalker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gilshalan Windwalker|r
    .accept 916 >> Accept Webwood Venom
step << Hunter
    .xp 4-40
step << Hunter
    .goto 1438/1,871.6,10440.83,25,0
    .goto 1438/1,827.86,10458.51
    >>Ascend the Aldrassil Tree
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ayanna Everstride|r
    .turnin 3117 >> Turn in Etched Sigil
    .train 1978 >>Train Serpent Sting
    .target Ayanna Everstride
step
    .goto 1438/1,863.96,10534.840,10,0
    .goto 1438/1,873.64,10566.40,10,0
    .goto 1438/1,850.72,10595.920,10,0
    .goto 1438/1,820.17,10547.39,10,0
    .goto 1438/1,863.96,10534.840
    >>Loot the |cRXP_LOOT_Moonpetal Lilies|r on the ground
    .complete 3521,2 --Collect Moonpetal Lily (x4)
step
    #season 0 << Warrior
    #label IchorVenomSac
    .goto 1438/1,922.52,10755.43
    >>Kill |cRXP_ENEMY_Webwood Spiders|r. Loot them for their |cRXP_LOOT_Ichor|r and |cRXP_LOOT_Venom Sacs|r
    .complete 3521,3 --Collect Webwood Ichor (x1)
    .complete 916,1 --Collect Webwood Venom Sac (x10)
    .mob Webwood Spider
step << skip --logout skip Warrior
	#hardcore
	#completewith next
    #season 2
	+Logout skip on the ledge behind the eggs. Move your character until it looks like they're floating, then log out, and back in.
	>>If you fall down, just run out the cave normally to the quest turn in
	.link https://www.youtube.com/watch?v=TTZZT3jpv1s >> CLICK HERE for reference
step << skip --logout skip Hunter
	#hardcore
    #season 2
	#completewith next
	+Logout skip on the ledge behind the eggs. Move your character until it looks like they're floating, then log out, and back in.
	>>If you fall down, just run out the cave normally to the quest turn in
	.link https://www.youtube.com/watch?v=TTZZT3jpv1s >> CLICK HERE for reference
step
    .goto 1438/1,1014.17,10348.18
    >>Kill |cRXP_ENEMY_Grell|r and |cRXP_ENEMY_Grellkin|r. Loot them for their |cRXP_LOOT_Mushrooms|r and |cRXP_LOOT_Fel Moss|r
    >>Loot |T134460:0|t[|cRXP_LOOT_Gnarlpine Totems|r] from the Grell Camps
    .complete 3521,1 --Collect Hyacinth Mushroom (x7)
    .complete 459,1 --Collect Fel Moss (x8)
    .complete 97977,1 --Gnarlpine Totem (x4)
    .mob Grell
    .mob Grellkin
step
    .goto 1438/1,871.60,10300.67
    .target Tarindrella
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tarindrella|r
    >>TIP: |cRXP_WARN_Take the leggings as the reward and keep them. You will use them to engrave a rune on later on|r << sod Hunter/sod Rogue/sod Warrior/sod Druid
    .turnin 459 >> Turn in The Woodland Protector
    .turnin 97977 >>Turn in Nature's Call
step
    .goto 1438/1,713.81,10407.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dirania Silvershine|r
    .turnin 3521 >> Turn in Iverron's Antidote
    .target Dirania Silvershine
    .accept 3522 >> Accept Iverron's Antidote
step << !Priest !Warrior
    #season 0 << Hunter
    .goto 1438/1,794.92,10436.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keina|r
	.vendor >> |cRXP_WARN_Vendor trash|r << !Hunter
	.vendor >> |cRXP_BUY_Buy 3 or 4 stacks of|r |T132382:0|t[Rough Arrows] << Hunter
    .target Keina
step << Warrior
    #season 0
    .goto 1438/1,778.07,10526.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alyissia|r
	.trainer >> Train your class spells
    .target Alyissia
step << Priest
    #completewith next
    .goto 1438/1,787.28,10438.120
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Janna Brightmoon|r up stairs
	.vendor >> |cRXP_WARN_Vendor trash|r
    .target Janna Brightmoon
step << Priest
    #season 0,1,2
	.goto 1438/1,801.64,10458.75
    .target Shanda
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shanda|r up stairs
	.turnin 3119 >> Turn in Hallowed Sigil << !sod
    .turnin 77574 >> Turn in Meditation of Elune << sod
	.trainer >> Train your class spells
step
    #season 0 << Warrior
    .goto 1438/1,871.24,10417.65
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
    #season 0,1
    .goto 1438/1,871.6,10440.83,25,0
    .goto 1438/1,829.54,10464.01
    >>Ascend the Aldrassil Tree
    .target Mardant Strongoak
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mardant Strongoak|r
	.turnin 3120 >> Turn in Verdant Sigil
	.train 8921 >>Train |T136096:0|t[Moonfire]
step
    #season 0 << Warrior
    .goto 1438/1,1034.89,10711.58
    .target Iverron
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Iverron|r
    >>TIP: |cRXP_WARN_Take the pants as reward from him. You will use them to engrave a rune on later|r << Priest sod
    .turnin 3522 >> Turn in Iverron's Antidote
step
    #season 0 << Warrior
    #completewith next
    .goto 1438/1,926.08,10773.42,25 >> Enter the Shadowthread Cave
step
    .goto 1438/1,912.33,10935.30
    #season 0 << Warrior
    >>Kill |cRXP_ENEMY_Githyiss the Vile|r loot it for it's |T134298:0|t[|cRXP_LOOT_Fang|r]
    >>Loot a |cRXP_LOOT_Webwood Egg|r on the ground at the back of the Cave
    .collect 277190,1 --Fang of Githyiss (x1)
    .complete 917,1 --Collect Webwood Egg (x1)
    .mob Githyiss the Vile
step
	#softcore
	#completewith next
    #season 0 << Warrior
    .deathskip >> Die and respawn at the Spirit Healer
    .target Spirit Healer
step << skip --logout skip
	#hardcore
	#completewith next
    #season 0 << Warrior
	+Logout skip on the ledge behind the eggs. Move your character until it looks like they're floating, then log out, and back in.
	>>If you fall down, just run out the cave normally to the quest turn in
	.link https://www.youtube.com/watch?v=TTZZT3jpv1s >> CLICK HERE for reference
step
#xprate <1.99
	.goto 1438/1,871.24,10417.65
    >>Use the |T134298:0|t[|cRXP_LOOT_Fang of Githyiss|r] to accept the quest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gilshalan Windwalker|r
    .accept 97236 >> Accept Fang of Githyiss
    .turnin 97236 >> Turn in Fang of Githyiss
    .turnin 917 >> Turn in Webwood Egg
    .target Gilshalan Windwalker
    .accept 920 >> Accept Tenaron's Summons
    .use 277190
step
#xprate <1.99
    .goto 1438/1,871.6,10440.83,25,0
    .goto 1438/1,807.34,10492.48
    >>Ascend the Aldrassil Tree
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tenaron Stormgrip|r
    .turnin 920 >> Turn in Tenaron's Summons
    .target Tenaron Stormgrip
    .accept 921 >> Accept Crown of the Earth
step
#xprate <1.99
    #sticky
    #label vial1
    .goto 1438/1,764.68,10711.31
	.use 5185 >> |cRXP_WARN_Use the|r |T134776:0|t[Crystal Phial] |cRXP_WARN_at the Moonwell|r
    .complete 921,1 --Collect Filled Crystal Phial (x1)
step << Hunter
#xprate <1.99
    .goto 1438/1,769.77,10673.98
    >>Kill |cRXP_ENEMY_Mangy Nightsabers|r and |cRXP_ENEMY_Thistle Boars|r
    .complete 457,1 --Kill Mangy Nightsaber (x7)
    .mob +Mangy Nightsaber
    .complete 457,2 --Kill Thistle Boar (x7)
    .mob +Thistle Boar
step
#xprate <1.99
    #requires vial1
    #completewith next
    .deathskip >> Die and respawn at the Spirit Healer
    .target Spirit Healer
step << Hunter
#xprate <1.99
    #requires vial1
    .goto 1438/1,826.03,10328.97
    .target Conservator Ilthalaine
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Conservator Ilthalaine|r
    .turnin 457,2 >> Turn in The Balance of Nature
step << Priest
    #requires vial1
    .goto 1438/1,800.32,10456.78
    .target Shanda
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shanda|r
    .accept 5622 >> Accept In Favor of Elune
step
#xprate <1.99
    #requires vial1
    .goto 1438/1,871.6,10440.83,25,0
    .goto 1438/1,807.34,10492.48
    >>Ascend the Aldrassil Tree
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tenaron Stormgrip|r
    .turnin 921 >> Turn in Crown of the Earth
    .target Tenaron Stormgrip
    .accept 928 >> Accept Crown of the Earth
step
    .goto 1438/1,805.500,10491.800
    >>Click on the [|cRXP_PICK_Book|r] to the left of |cRXP_FRIENDLY_Tenaron|r
    .accept 96630 >>Accept The Adventurer
step
    .goto 1438/1,700.57,10214.33
    .target Porthannius
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Porthannius|r
    .accept 2159 >> Accept Dolanaar Delivery
]])

RXPGuides.RegisterGuide([[
#forever
#season 0,1
<< Alliance
#name 6-11 Teldrassil
#displayname 7-13 Teldrassil << SoD
#version 1
#group RestedXP Forever Guide (A)
#subgroup Speedrun Guide 1-20
--#groupid RXP-SRGCE-A1
#defaultfor NightElf
#next 14-16 Darkshore

step
    .goto 1438/1,734.13,9920.57
    .target Zenn Foulhoof
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zenn Foulhoof|r
    .accept 488 >> Accept Zenn's Bidding
step
    #sticky
    #completewith DenlansEarth
    >>Kill |cRXP_ENEMY_Nightsabers|r. Loot them for their |cRXP_LOOT_Fangs|r
    >>Kill |cRXP_ENEMY_Strigid Owls|r. Loot them for their |cRXP_LOOT_Feathers|r
    >>Kill |cRXP_ENEMY_Webwood Lurkers|r. Loot them for their |cRXP_LOOT_Silk|r
    >>|cRXP_WARN_Be careful as the|r |cRXP_ENEMY_Nightsabers|r |cRXP_WARN_and|r |cRXP_ENEMY_Strigid Owls|r |cRXP_WARN_move very fast!|r |cRXP_ENEMY_Strigid Owls|r |cRXP_WARN_will also social aggro other|r |cRXP_ENEMY_Owls|r |cRXP_WARN_if you run past them while in combat with one|r
    .complete 488,1 --Collect Nightsaber Fang (x3)
    .mob +Nightsaber
    .complete 488,2 --Collect Strigid Owl Feather (x3)
    .mob +Strigid Owl
    .complete 488,3 --Collect Webwood Spider Silk (x3)
    .mob +Webwood Lurker
step
    #sticky
	#completewith DenlansEarth
    >>Kill |cRXP_ENEMY_Webwood Lurkers|r and |cRXP_ENEMY_Webwood Venomfangs|r. Loot them for their |cRXP_LOOT_Small Spider Legs|r
    >>|cRXP_WARN_You need these for a later quest|r
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob Webwood Lurker
    .mob Webwood Venomfang
step
   .goto 1438/1,879.700,9907.601
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lyreena Duskblade|r
    .turnin 96630 >> Turn in The Adventurer
    .accept 96606 >> Accept The Great Outdoors
    .target Lyreena Duskblade
step
    .goto 1438/1,882.300,9909.101
    >>Use the |cRXP_WARN_/sit|r emote next to the campfire and |cRXP_WARN_sit still for 1 minute|r to complete the objective
    .complete 96606,2 --Gain the Boosted Rest buff
step
    .goto 1438/1,879.700,9907.601
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lyreena Duskblade|r
    .turnin 96606 >> Turn in The Great Outdoors
    .accept 96634 >> Accept Camping 101: Cooking
    .target Lyreena Duskblade
step
    #label DenlansEarth
    .goto 1438/1,959.18,9872.38
    .target Syral Bladeleaf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Syral Bladeleaf|r
    >>|cRXP_WARN_Make sure you have 1 empty bagspace slot before accepting this quest|r
    .accept 997 >> Accept Denalan's Earth
step
    .goto 1438/1,965.59,9887.58
    .target Athridas Bearmantle
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Athridas Bearmantle|r
    .accept 475 >> Accept A Troubling Breeze
step << Priest
    .goto 1438/1,985.45,9905.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Laurna Morninglight|r
    .turnin 5622 >> Turn in In Favor of Elune
    .target Laurna Morninglight
    .accept 5621 >> Accept Garments of the Moon
	.trainer >> Train your class spells
step << Rogue
    .goto 1438/1,988.30,9891.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aldia|r up stairs
    .accept 87288 >> Accept Soft Saber Pelts
    .vendor >> |cRXP_BUY_Buy and equip a|r |T135426:0|t[Small Throwing Knife]
    .target Aldia
step << !Rogue
    .goto 1438/1,988.30,9891.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aldia|r up stairs
    .accept 87288 >> Accept Soft Saber Pelts
    .target Aldia
step
#xprate <1.99 << Hunter/Warrior/Druid
    .goto 1438/1,984.94,9898.58
    .target Tallonkai Swiftroot
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tallonkai Swiftroot|r atop the Tree
    .accept 932 >> Accept Twisted Hatred
    .accept 2438 >> Accept The Emerald Dreamcatcher
step << Hunter/Warrior/Druid
#xprate >1.99
    .goto 1438/1,984.94,9898.58
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
    #completewith next
    +|cRXP_WARN_Equip the|r |T135499:0|t[Hornwood Recurve Bow]
    .use 2506
    .itemcount 2506,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.37
step
    .goto 1438/1,963.000,9811.601
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Kyra Starsong::2081|r
    .target Sentinel Kyra Starsong::2081
    .accept 99046 >>Accept The Lost Runner
step << Warrior
    .goto 1438/1,947.57,9812.38
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
    .goto 1438/1,952.00,9822.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kyra Windblade|r
	.trainer >> Train your class spells
    .target Kyra Windblade
step << Rogue
    .goto 1438/1,943.85,9790.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jannok Breezesong|r
	.trainer >> Train your class spells
    .target Jannok Breezesong
step << Rogue
    .goto 1438/1,947.57,9812.38
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
    .goto 1438/1,947.57,9812.38
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
    .goto 1438/1,982.65,9802.19
    .target Innkeeper Keldamyr
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Keldamyr|r
    .turnin 2159,2 >> Turn in Dolanaar Delivery << Hunter
    .turnin 2159 >> Turn in Dolanaar Delivery << !Hunter
    .vendor >>|cRXP_BUY_Buy 10 |T132815:0|t|cRXP_LOOT_Ice Cold Milk|r or as much as you can afford << Priest
    .home >> Set your Hearthstone to Dolanaar
step << Hunter
    .goto 1438/1,928.83,9812.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dazalar|r
	.train 3044 >> Train Arcane Shot << era
    .train 5116 >> Train Concussive Shot << sod
    .target Dazalar
step << Druid
    #season 0
    .goto 1438/1,966.05,9741.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kal|r
	.trainer >> Train your class spells
    .target Kal
step
#xprate <1.99
    .goto 1438/1,956.02,9736.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corithras Moonrage|r
    .turnin 928 >> Turn in Crown of the Earth
    .target Corithras Moonrage
    .accept 929 >> Accept Crown of the Earth
step
    .goto 1438/1,906.17,9751.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zarrin|r
    .train 2550 >>Train Cooking
    .accept 4161 >> Accept Recipe of the Kaldorei
    .turnin 96634 >> Turn in Camping 101: Cooking
    .target Zarrin
step
--@Todo ADD coords for this npc
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nyoma|r
    +Buy 5 |T134059:0|t[Mild Spices] from her, use |T133971:0|t[|cRXP_FRIENDLY_Cooking|r] to cook |T132834:0|t[|cRXP_LOOT_Herb Baked Eggs|r] until you run out of |T132832:0|t[|cRXP_LOOT_Small Eggs|r]
    .collect 2678,5 --Mild Spices
    .disablecheckbox
    .itemcount 6889,1 --Small Egg
    .target Nyoma
step
    #completewith DenlanStart
    +Eat the |T132834:0|t[|cRXP_LOOT_Herb Baked Eggs|r] for 10 seconds to receive a |cRXP_WARN_5% mob kill experience buff for 15 minutes|r.
    >>|cRXP_WARN_Remember to reapply this food buff when it expires|r
step
    #sticky
    #completewith DenlanStart
    >>Kill |cRXP_ENEMY_Nightsabers|r. Loot them for their |cRXP_LOOT_Fangs|r and |cRXP_LOOT_Pelts|r
    >>Kill |cRXP_ENEMY_Strigid Owls|r. Loot them for their |cRXP_LOOT_Feathers|r
    >>Kill |cRXP_ENEMY_Webwood Lurkers|r. Loot them for their |cRXP_LOOT_Silk|r
    >>|cRXP_WARN_Be careful as the|r |cRXP_ENEMY_Nightsabers|r |cRXP_WARN_and|r |cRXP_ENEMY_Strigid Owls|r |cRXP_WARN_move very fast!|r |cRXP_ENEMY_Strigid Owls|r |cRXP_WARN_will also social aggro other|r |cRXP_ENEMY_Owls|r |cRXP_WARN_if you run past them while in combat with one|r
    .complete 488,1 --Collect Nightsaber Fang (x3)
    .complete 87288,1 --Soft Nightsaber Pelt (x6)
    .mob +Nightsaber
    .complete 488,2 --Collect Strigid Owl Feather (x3)
    .mob +Strigid Owl
    .complete 488,3 --Collect Webwood Spider Silk (x3)
    .mob +Webwood Lurker
step
    #sticky
	#completewith DenlanStart
    >>Kill |cRXP_ENEMY_Webwood Lurkers|r and |cRXP_ENEMY_Webwood Venomfangs|r. Loot them for their |cRXP_LOOT_Small Spider Legs|r
    >>|cRXP_WARN_You need these for a later quest|r
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob Webwood Lurker
    .mob Webwood Venomfang
step << Druid
    #ah
    #season 0
    .goto 1438/1,875.62,9773.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Malorne Bladeleaf|r
    >>|T136065:0|t[Herbalism] |cRXP_WARN_is required to gather 5|r |T134187:0|t[Earthroot] |cRXP_WARN_for an important class quest soon. You can unlearn it afterwards|r
    >>|cRXP_WARN_If you would rather purchase 5|r |T134187:0|t[Earthroot] |cRXP_WARN_from the Auction House later, skip this step|r
    .train 2366 >> Train |T136065:0|t[Herbalism]
    .target Malorne Bladeleaf
    .itemcount 2449,<5 --Earthroot (<5)
step << Druid
    #ssf
    #season 0
    .goto 1438/1,875.62,9773.25
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
    .goto 1438/1,900.01,9675.85
    >>Target |cRXP_FRIENDLY_Sentinel Shaya|r
    >>|cRXP_WARN_Cast|r |T135929:0|t[Lesser Heal (Rank 2)] |cRXP_WARN_and|r |T135987:0|t[Power Word: Fortitude] |cRXP_WARN_on|r |cRXP_FRIENDLY_Sentinel Shaya|r
    .complete 5621,1 --Heal and fortify Sentinel Shaya
    .target Sentinel Shaya
step
    #label DenlanStart
    .goto Teldrassil,60.900,68.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Denalan|r
    .turnin 997 >> Turn in Denalan's Earth
    .target Denalan
    .accept 918 >> Accept Timberling Seeds
    .accept 919 >> Accept Timberling Sprouts
step
    .goto 1438/1,676.59,9493.30,55,0
    .goto 1438/1,733.11,9439.67,55,0
    .goto 1438/1,808.46,9370.10,55,0
    .goto 1438/1,877.20,9458.34,55,0
    .goto 1438/1,997.36,9549.97,55,0
    .goto 1438/1,867.02,9630.74,55,0
    .goto 1438/1,697.97,9581.87
    >>Kill |cRXP_ENEMY_Timberlings|r. Loot them for their |cRXP_LOOT_Seeds|r
    >>Loot the |cRXP_LOOT_Timberling Sprouts|r on the ground << !sod
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
    #sticky
    #completewith Starbreeze
    >>Kill |cRXP_ENEMY_Nightsabers|r. Loot them for their |cRXP_LOOT_Fangs|r
    >>Kill |cRXP_ENEMY_Strigid Owls|r. Loot them for their |cRXP_LOOT_Feathers|r
    >>Kill |cRXP_ENEMY_Webwood Lurkers|r. Loot them for their |cRXP_LOOT_Silk|r
    >>|cRXP_WARN_Be careful as the|r |cRXP_ENEMY_Nightsabers|r |cRXP_WARN_and|r |cRXP_ENEMY_Strigid Owls|r |cRXP_WARN_move very fast!|r |cRXP_ENEMY_Strigid Owls|r |cRXP_WARN_will also social aggro other|r |cRXP_ENEMY_Owls|r |cRXP_WARN_if you run past them while in combat with one|r
    .complete 488,1 --Collect Nightsaber Fang (x3)
    .mob +Nightsaber
    .complete 488,2 --Collect Strigid Owl Feather (x3)
    .mob +Strigid Owl
    .complete 488,3 --Collect Webwood Spider Silk (x3)
    .mob +Webwood Lurkerr
step
    #sticky
	#completewith Starbreeze
    >>Kill |cRXP_ENEMY_Webwood Lurkers|r and |cRXP_ENEMY_Webwood Venomfangs|r. Loot them for their |cRXP_LOOT_Small Spider Legs|r
    >>|cRXP_WARN_You need these for a later quest|r
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob Webwood Lurker
    .mob Webwood Venomfang
step
    #label Starbreeze
    #completewith next
    .goto 1438/1,351.23,9806.54,120 >> Travel to Starbreeze Village
step
    .goto 1438/1,351.23,9806.54
    >>Open |cRXP_PICK_Tallonkai's Dresser|r. Loot it for the |cRXP_LOOT_Emerald Dreamcatcher|r
    .complete 2438,1 --Collect Emerald Dreamcatcher (x1)
step
    #label zenn
    .goto 1438/1,440.85,9845.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gaerolas Talvethren|r up stairs
    .turnin 475 >> Turn in A Troubling Breeze
    .target Gaerolas Talvethren
    .accept 476 >> Accept Gnarlpine Corruption
step
    #xprate <1.99
    .goto 1438/1,587.49,9859.480
    >>|cRXP_WARN_Use the|r |T134721:0|t[Jade Phial] |cRXP_WARN_at the Starbreeze Village Moonwell|r
    .complete 929,1 --Collect Filled Jade Phial (x1)
step
    #sticky
	#completewith SeekRedemption
    >>Kill |cRXP_ENEMY_Webwood Lurkers|r and |cRXP_ENEMY_Webwood Venomfangs|r. Loot them for their |cRXP_LOOT_Small Spider Legs|r
    >>|cRXP_WARN_You need these for a later quest|r
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob Webwood Lurker
    .mob Webwood Venomfang
step
    >>Kill |cRXP_ENEMY_Nightsabers|r. Loot them for their |cRXP_LOOT_Fangs|r
    >>Kill |cRXP_ENEMY_Strigid Owls|r. Loot them for their |cRXP_LOOT_Feathers|r
    >>Kill |cRXP_ENEMY_Webwood Lurkers|r. Loot them for their |cRXP_LOOT_Silk|r
    >>|cRXP_WARN_Save any|r |T132832:0|t[Small Eggs] |cRXP_WARN_and|r |T134321:0|t[Small Spider Legs] |cRXP_WARN_to use for leveling|r |T133971:0|t[Cooking] |cRXP_WARN_later|r
    .complete 488,1 --Collect Nightsaber Fang (x3)
    .mob +Nightsaber
    .goto 1438/1,448.99,10051.91,60,0
    .goto 1438/1,660.30,9758.69,50,0
    .goto 1438/1,803.37,9764.12
    .complete 488,2 --Collect Strigid Owl Feather (x3)
    .mob +Strigid Owl
    .goto 1438/1,448.99,10051.91,60,0
    .goto 1438/1,586.98,9651.78,50,0
    .goto 1438/1,803.37,9764.12
    .complete 488,3 --Collect Webwood Spider Silk (x3)
    .mob +Webwood Lurker
    .goto 1438/1,705.61,9976.23,50,0
    .goto 1438/1,750.93,9807.90,50,0
    .goto 1438/1,850.22,9919.89
step
    .goto 1438/1,734.13,9920.57
    .target Zenn Foulhoof
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zenn Foulhoof|r
    .turnin 488 >> Turn in Zenn's Bidding
step
    #label HCHunterEnd --hidden step for #include
step
    #xprate < 1.5
    .goto 1438/1,723.94,9985.05
	.xp 7+3520 >> Grind to level 7 +3520xp
step
    #xprate >1.49
    .xp 7+2350 >> Grind to level 7 +2350xp
step
    #label SeekRedemption
	.goto 1438/1,959.28,9872.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Syral Bladeleaf|r
    .accept 489 >> Accept Seek Redemption!
    .target Syral Bladeleaf
step
    .goto 1438/1,965.59,9887.58
    .target Athridas Bearmantle
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Athridas Bearmantle|r
    .turnin 476 >> Turn in Gnarlpine Corruption
step << Priest
    .goto 1438/1,985.45,9905.43
    .target Laurna Morninglight
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Laurna Morninglight|r
    .turnin 5621 >> Turn in Garments of the Moon
	.trainer >> Train your class spells
step
    .goto 1438/1,984.94,9898.58
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
    .goto 1438/1,928.83,9812.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dazalar|r
	.trainer >> Train your class spells
    .target Dazalar
step << Rogue
    .goto 1438/1,943.85,9790.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jannok Breezesong|r
	.trainer >> Train your class spells
    .target Jannok Breezesong
step << Warrior
    .goto 1438/1,947.57,9812.38
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
    .goto 1438/1,952.00,9822.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kyra Windblade|r
	.trainer >> Train your class spells
    .target Kyra Windblade
step << Rogue
    .goto 1438/1,947.57,9812.38
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
    .goto 1438/1,947.57,9812.38
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
    .goto 1438/1,956.02,9736.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corithras Moonrage|r
    .turnin 929 >> Turn in Crown of the Earth
    .target Corithras Moonrage
step << Druid
#xprate <1.50
    .goto 1438/1,956.02,9736.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corithras Moonrage|r
    .turnin 929 >> Turn in Crown of the Earth
    .target Corithras Moonrage
    .accept 933 >> Accept Crown of the Earth
step << Druid
    #season 0
    .goto 1438/1,966.05,9741.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kal|r
	.trainer >> Train your class spells
    .target Kal
step
    #sticky
	#completewith jewel
    >>Kill |cRXP_ENEMY_Webwood Lurkers|r and |cRXP_ENEMY_Webwood Venomfangs|r. Loot them for their |cRXP_LOOT_Small Spider Legs|r
    >>|cRXP_WARN_You need these for a later quest|r
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob Webwood Lurker
    .mob Webwood Venomfang
step
    #loop
    .goto 1438/1,854.400,9952.500,6 >>Next to a small tree
    .goto 1438/1,822.200,9948.500,6 >>On the small hill
    .goto 1438/1,809.800,9926.400,6 >>Next to the massive tree
    >>Loot the 3 |cRXP_LOOT_Fel Cones|r from the locations marked on your map.
    >>|cRXP_WARN_Skip this step if any of them is not there and you're unable to complete the objective|r
    .complete 489,1 --Fel Cone 3/3
    .isOnQuest 489
step
    #label SoDSpiderLegs
    .goto 1438/1,739.22,9917.17
    .target Zenn Foulhoof
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zenn Foulhoof|r
    .turnin 489 >> Turn in Seek Redemption!
    .itemcount 3418,3
    .isOnQuest 489
step
	#completewith jewel
    >>Loot the |cRXP_LOOT_Fel Cones|r on the ground
    >>|cRXP_WARN_They are usually located next to tree trunks|r
    .complete 489,1 --Collect Fel Cone (x3)
    .isOnQuest 489
step
    #completewith next
    >>Kill |cRXP_ENEMY_Gnarlpine Mystics|r
    >>|cRXP_WARN_If there aren't many |cRXP_ENEMY_Gnarlpine Mystics|r you may have to kill |cRXP_ENEMY_Gnarlpine Warriors|r to make them spawn|r
    .complete 2459,1 --Kill Gnarlpine Mystic (x7)
    .mob Gnarlpine Mystic
step
	.goto 1438/1,282.49,10018.65
	>>Kill |cRXP_ENEMY_Ferocitas the Dream Eater|r. Loot him for the |T133288:0|t[|cRXP_LOOT_Gnarlpine Necklace|r]. |cRXP_WARN_Be careful as he can|r |T132152:0|t[Thrash] |cRXP_WARN_hitting you up to three times at once|r
    .use 8049 >>|cRXP_WARN_Use the |T133288:0|t[|cRXP_LOOT_Gnarlpine Necklace|r] to loot|r |cRXP_LOOT_Tallonkai's Jewel|r
    .complete 2459,2 --Collect Tallonkai's Jewel (x1)
    .mob Ferocitas the Dream Eater
step
    #label jewel
    .goto 1438/1,332.90,10064.46,30,0
    .goto 1438/1,282.49,10018.65
    >>Kill |cRXP_ENEMY_Gnarlpine Mystics|r
    >>|cRXP_WARN_If there aren't many |cRXP_ENEMY_Gnarlpine Mystics|r you may have to kill |cRXP_ENEMY_Gnarlpine Warriors|r to make them spawn|r
    .complete 2459,1 --Kill Gnarlpine Mystic (x7)
    .mob Gnarlpine Mystic
step
    #softcore
    #completewith next
    .deathskip >> Die and respawn at the Spirit Healer
    .target Spirit Healer
    .isQuestTurnedIn 489
step
    #softcore
    .goto 1438/1,953.07,9788.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brannol Eaglemoon|r
    .vendor >> |cRXP_BUY_Vendor and repair if necessary|r
    .target Brannol Eaglemoon
    .isQuestTurnedIn 489
step
    .goto 1438/1,810.5,9927.36,50,0
    .goto 1438/1,937.79,9608.34,50,0
    .goto 1438/1,1116.0,9811.97,50,0
    .goto 1438/1,576.28,9716.94,50,0
    .goto 1438/1,825.78,9940.93
    >>Loot the |cRXP_LOOT_Fel Cones|r on the ground
    >>|cRXP_WARN_They are usually located next to tree trunks|r
    .complete 489,1 --Collect Fel Cone (x3)
    .isOnQuest 489
step
    .goto 1438/1,739.22,9917.17
    .target Zenn Foulhoof
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zenn Foulhoof|r
    .turnin 489 >> Turn in Seek Redemption!
    .isOnQuest 489
step
    #sticky
	#completewith next
    >>Kill |cRXP_ENEMY_Webwood Lurkers|r and |cRXP_ENEMY_Webwood Venomfangs|r. Loot them for their |cRXP_LOOT_Small Spider Legs|r
    >>|cRXP_WARN_You need these for a later quest|r
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob Webwood Lurker
    .mob Webwood Venomfang
step
    #completewith next
    .goto 1438/1,1030.46,10037.99,20,0
    .goto 1438/1,1043.70,10093.99,15 >> Travel to Fel Rock
step
    .goto 1438/1,1207.65,10114.01
    >>Kill |cRXP_ENEMY_Lord Melenas|r. Loot him for his |cRXP_LOOT_Head|r
    >>|cRXP_ENEMY_Lord Melenas|r may be located in many different spawn locations throughout Fel Rock
    .complete 932,1 --Collect Melenas' Head (x1)
    .unitscan Lord Melenas
step
    #softcore
    #completewith next
    .deathskip >> Die and respawn at the Spirit Healer
    .target Spirit Healer
step << !Druid
#xprate <1.99
    .goto 1438/1,956.02,9736.83
    .target Corithras Moonrage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corithras Moonrage|r
    .turnin 929 >> Turn in Crown of the Earth
step
	#xprate <1.5
    .goto 1438/1,956.02,9736.83
    .target Corithras Moonrage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corithras Moonrage|r
    .accept 933 >> Accept Crown of the Earth
step
    #sticky
	#completewith spiderLegs
    >>Kill |cRXP_ENEMY_Webwood Lurkers|r and |cRXP_ENEMY_Webwood Venomfangs|r. Loot them for their |cRXP_LOOT_Small Spider Legs|r
    >>|cRXP_WARN_You need these for a later quest|r
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob Webwood Lurker
    .mob Webwood Venomfang
step
	#xprate <1.5
    #completewith next
    .goto 1438/1,1645.02,9245.89,50 >> Travel to southwestern Teldrassil
step
	#xprate <1.5
	.goto 1438/1,1645.02,9245.89
	>>Click the |cRXP_PICK_Strange Fruited Plant|r
	.accept 930 >> Accept The Glowing Fruit
step
	#xprate <1.5
    #completewith next
    .goto 1438/1,1655.21,9555.06,50 >> Travel to the Pools of Arlithrien
step
	#xprate <1.5
	#label spiderLegs
	.goto 1438/1,1655.21,9555.06
    .use 5621 >>|cRXP_WARN_Use the|r |T134765:0|t[Tourmaline Phial] |cRXP_WARN_at the Pools of Arlithrien moonwell|r
	.complete 933,1
step
	#xprate <1.5
    .goto 1438/1,1539.12,9437.98,40,0
    .goto 1438/1,1529.44,9325.64
    >>Kill |cRXP_ENEMY_Webwood Lurkers|r and |cRXP_ENEMY_Webwood Venomfangs|r. Loot them for their |cRXP_LOOT_Small Spider Legs|r
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob Webwood Lurker
    .mob Webwood Venomfang
step
	#xprate <1.5
    #hardcore
    #completewith next
    .goto 1438/1,956.02,9736.83,90 >> Travel to Dolanaar
step
	#xprate <1.5
    #softcore
	#completewith next
    .goto 1438/1,1599.71,9509.25
    .deathskip >> Die and respawn at the Dolanaar graveyard, make sure to die east of the moonwell, otherwise you might end up in Darnassus
step
	#xprate <1.5
    .goto 1438/1,956.02,9736.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corithras Moonrage|r
    .turnin 933 >> Turn in Crown of the Earth
    .target Corithras Moonrage
    .accept 7383 >> Accept Crown of the Earth
step
	#xprate <1.5
    #label SpiderLegsEnd
    .goto 1438/1,906.17,9751.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zarrin|r
    .train 2550 >>Train Cooking
    .accept 4161 >> Accept Recipe of the Kaldorei
    .turnin 4161 >> Turn in Recipe of the Kaldorei
    .target Zarrin
step << Warrior/Rogue
    .goto 1438/1,999.40,9902.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Byancie|r
    .train 3273 >> Train |T135966:0|t[First Aid]
    .target Byancie
step
    .goto 1438/1,984.94,9898.58
    .target Tallonkai Swiftroot
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tallonkai Swiftroot|r atop the Tree
    .turnin 932 >> Turn in Twisted Hatred
    .turnin 2459 >> Turn in Ferocitas the Dream Eater
step
#xprate >1.99
    .xp 10
   >>|cRXP_WARN_If you're not even close do the Lord Melenas quest|r
step << Priest
#xprate >1.99
    .goto 1438/1,985.45,9905.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Laurna Morninglight|r
	.trainer >> Train your class spells
    .accept 5629 >>Accept Returning Home << sod
    .target Laurna Morninglight
step << Warrior
#xprate >1.99
    .goto 1438/1,952.00,9822.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kyra Windblade|r
	.trainer >> Train your class spells
    .target Kyra Windblade
step << Rogue
#xprate >1.99
    .goto 1438/1,943.85,9790.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jannok Breezesong|r
	.trainer >> Train your class spells
    .train 5171 >> Train |T132306:0|t[Slice and Dice] << !sod
    .train 921 >> Train |T133644:0|t[Pick Pocket] as well which is needed for your level 10 Rogue quest
    .target Jannok Breezesong
step << Hunter
#xprate >1.99
    .goto 1438/1,928.83,9812.34
    .target Dazalar
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dazalar|r
    .accept 6063 >> Accept Taming the Beast
	.trainer >> Train your class spells
step << Hunter
#xprate >1.99
    .goto 1438/1,764.68,9835.73
    .use 15921 >>|cRXP_WARN_Use the|r |T132164:0|t[Taming Rod] |cRXP_WARN_on a|r |cRXP_ENEMY_Webwood Lurker|r
    .complete 6063,1 --Tame a Webwood Lurker
    .mob Webwood Lurker
step << Hunter
#xprate >1.99
    .goto 1438/1,928.83,9812.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dazalar|r
    .turnin 6063 >> Turn in Taming the Beast
    .target Dazalar
    .accept 6101 >> Accept Taming the Beast
step << Hunter
#xprate >1.99
    .goto 1438/1,627.20,9380.96
    .use 15922 >>|cRXP_WARN_Use the|r |T132164:0|t[Taming Rod] |cRXP_WARN_on a|r |cRXP_ENEMY_Nightsaber Stalker|r
    >>|cRXP_WARN_You must right click your Pet Frame and Dismiss your pet before you can tame another one|r
    .complete 6101,1 --Tame a Nightsaber Stalker
    .mob Nightsaber Stalker
step << Hunter
#xprate >1.99
    .goto 1438/1,928.83,9812.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dazalar|r
    .turnin 6101 >> Turn in Taming the Beast
    .target Dazalar
    .accept 6102 >> Accept Taming the Beast
step << Hunter
#xprate >1.99
    .goto 1438/1,520.28,9567.62
    .use 15923 >>|cRXP_WARN_Use the|r |T132164:0|t[Taming Rod] |cRXP_WARN_on a|r |cRXP_ENEMY_Strigid Screecher|r
    >>|cRXP_WARN_You must right click your Pet Frame and Dismiss your pet before you can tame another one|r
    .complete 6102,1 --Tame a Strigid Screecher
    .mob Strigid Screecher
step << Hunter
#xprate >1.99
    .goto 1438/1,928.83,9812.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dazalar|r
    .turnin 6102 >> Turn in Taming the Beast
    .target Dazalar
    .accept 6103 >> Accept Training the Beast
    .train 1130 >> |cRXP_WARN_Make sure you have trained Hunter's Mark. You will need it to get a rune soon|r
step << Warrior
#xprate >1.99
    .goto 1438/1,971.91,9852.35,40,0
    .goto 1438/1,1257.55,10004.39
    .goto 1438/1,971.91,9852.35,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moon Priestess Amara|r
    >>|cRXP_FRIENDLY_Moon Priestess Amara|r |cRXP_WARN_patrols the road west of Dolanaar. She can also be busy fighting a furlbog ambush in which case you will have to wait for her to finish|r
    .line Teldrassil,50.4,54.2,50.4,55.4,50.4,55.6,50.6,56.2,51.2,56.6,52.2,56.4,52.4,56.6,52.8,57.0,53.4,57.6,54.4,58.4,55.2,58.6,55.4,58.4,55.6,58.4,55.8,58.6
    .accept 1684 >> Accept Elanaria
    .accept 487 >> Accept The Road to Darnassus
    .target Moon Priestess Amara
step << Rogue
#xprate >1.99
    .goto 1438/1,943.85,9790.28
    .target Jannok Breezesong
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jannok Breezesong|r
    .accept 2241 >> Accept The Apple Falls
step
    #season 0
    .goto 1438/1,971.91,9852.35,40,0
    .goto 1438/1,1257.55,10004.39
    .goto 1438/1,971.91,9852.35,0
    .line Teldrassil,50.4,54.2,50.4,55.4,50.4,55.6,50.6,56.2,51.2,56.6,52.2,56.4,52.4,56.6,52.8,57.0,53.4,57.6,54.4,58.4,55.2,58.6,55.4,58.4,55.6,58.4,55.8,58.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moon Priestess Amara|r
    >>|cRXP_FRIENDLY_Moon Priestess Amara|r |cRXP_WARN_patrols the road west of Dolanaar. She can also be busy fighting a furlbog ambush in which case you will have to wait for her to finish|r
    .accept 487 >> Accept The Road to Darnassus
    .target Moon Priestess Amara
step
    #season 0
    .goto 1438/1,1441.87,10032.56
    >>Kill |cRXP_ENEMY_Gnarlpine Ambushers|r
    .complete 487,1 --Kill Gnarlpine Ambusher (x6)
    .mob Gnarlpine Ambusher
step
	#xprate < 1.5
    #completewith next
    .goto 1438/1,1863.46,10665.16,50 >> Travel to The Oracle Glade
step
	#xprate < 1.5
    .goto 1438/1,1863.46,10665.16
    .target Sentinel Arynia Cloudsbreak
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Arynia Cloudsbreak|r
    .accept 937 >> Accept The Enchanted Glade
step
	#xprate < 1.5
    .goto 1438/1,1857.86,10676.36
    .use 18152 >>|cRXP_WARN_Use the|r |T134798:0|t[Amethyst Phial] |cRXP_WARN_at The Oracle Glade moonwell|r
    .complete 7383,1 --Collect Filled Amethyst Phial (x1)
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
    .goto 1438/1,2052.36,10854.19
    >>Click the |cRXP_PICK_Strange Fronded Plant|r
    .accept 931 >> Accept The Shimmering Frond
step << Hunter
	#xprate <1.5
    #completewith xp10
    #label mist1
    .goto 1438/1,2208.67,10758.15
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
    .goto 1438/1,1863.46,10665.16
    .target Sentinel Arynia Cloudsbreak
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Arynia Cloudsbreak|r
    >>|cRXP_WARN_Keep in mind this is a timed quest, you need to turn it in within 10 minutes of accepting|r
    .turnin 938 >> Turn in Mist
step << Hunter
	#xprate <1.5
    #completewith xp10
	#requires harpies
    .goto 1438/1,1863.46,10665.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Arynia Cloudsbreak|r
    .turnin 937 >> Turn in The Enchanted Glade
    .target Sentinel Arynia Cloudsbreak
    .accept 940 >> Accept Teldrassil
step << !Hunter
	#xprate <1.5
    #label mist1
    .goto 1438/1,2208.67,10758.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mist|r
    >>|cRXP_WARN_This will start an escort quest|r
    .accept 938 >> Accept Mist
    .target Mist
step << !Hunter
	#xprate <1.5
    .goto 1438/1,1863.46,10665.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Arynia Cloudsbreak|r
    >>|cRXP_WARN_Keep in mind Mist is a timed quest, you need to turn it in within 10 minutes of accepting|r
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
step
	#xprate 1.49-1.99
   .goto 1438/1,1849.20,9862.88
   >>Finish off collecting 7 Small Spider Legs
   .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
step << Druid
   #xprate 1.49-1.99
   #label xp10
   .xp 10-850
   .goto 1438/1,1864.47,10663.80
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
    >>|cRXP_WARN_Make sure you're closer to the Darnassus graveyard than to the Dolanaar one or you might end up going the wrong way. Run all the way out of the den and then die if you're not sure about it|r << sod Priest
    >>|cRXP_WARN_Make sure you're closer to the Darnassus graveyard than to the Dolanaar one or you might end up going the wrong way. Run to the west side of the river if you're not sure about it|r << sod Hunter/sod Warrior/sod Druid
    .target Spirit Healer
step << !Rogue
    #hardcore
	#xprate < 1.5
    #completewith next
    >>Kill |cRXP_ENEMY_Bloodfeather Harpies|r on the way to Darnassus. Loot them for their |cRXP_LOOT_Belts|r. |cRXP_WARN_You don't have to complete this objective now|r
    .complete 937,1 --Collect Bloodfeather Belt (x6)
    .mob Bloodfeather Harpy
    .mob Bloodfeather Rogue
    .mob Bloodfeather Sorceress
    .mob Bloodfeather Fury
    .mob Bloodfeather Wind Witch
    .mob Bloodfeather Matriarch
step << !Rogue
    #hardcore
    #requires xp10
    #completewith next
    .goto 1457/1,2070.42,9979.310,100 >> Travel to Darnassus
step << Warrior
#xprate >1.99
    .goto 1457/1,2331.89,9994.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elanaria|r
    .turnin 1684 >> Turn in Elanaria
    .target Elanaria
    .accept 1683 >> Accept Vorlus Vilehoof
step << !Rogue !Hunter !Warrior
#xprate >1.99
    .goto 1457/1,2224.76,10127.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Saelienne|r
    .home >> Set your Hearthstone to Darnassus << !Warrior
    .vendor >>|cRXP_BUY_Buy some more|r |T132815:0|t|cRXP_LOOT_Ice Cold Milk|r << Priest
    .target Innkeeper Saelienne
step << !Rogue
    #requires xp10
    .goto 1457/1,2534.29,10085.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rellian Greenspyre|r
    .turnin 922 >> Turn in Rellian Greenspyre
    .target Rellian Greenspyre
    .accept 923 >> Accept Tumors
step << !Hunter !Rogue
	#xprate <1.5
    .goto 1457/1,2568.37,10174.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arch Druid Fandral Staghelm|r atop the Tree
    .turnin 940 >> Turn in Teldrassil
	.isOnQuest 940
    .target Arch Druid Fandral Staghelm
step << Druid
    .goto 1457/1,2563.92,10179.040
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mathrengyl Bearwalker|r on the middle level
    .turnin -5923 >> Turn in Heeding the Call
    .accept 5921 >> Accept Moonglade
	.trainer >> Train your class spells
    .target Mathrengyl Bearwalker
step << Hunter
#xprate >1.99
    .goto 1457/1,2511.04,10178.01
    .target Jocaste
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jocaste|r
    .turnin 6103 >> Turn in Training the Beast
step << !Rogue
    .goto 1457/1,2517.99,9584.25,10,0
    .goto 1457/1,2550.48,9631.88
    .target Priestess A'moora
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess A'moora|r
    .accept 2518 >> Accept Tears of the Moon
step << Druid
	#completewith next
	.cast 18960 >> Cast Teleport: Moonglade
    >>|cRXP_WARN_It will be in your spellbook|r
	.zoneskip Moonglade
step << Druid
    .goto 1450/1,-2678.76,8019.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dendrite Starblaze|r up stairs
    .turnin 5921 >> Turn in Moonglade
    .target Dendrite Starblaze
    .accept 5929 >> Accept Great Bear Spirit
step << Druid
    .goto 1450/1,-2422.77,8079.37,15,0
    .goto 1450/1,-2285.42,8069.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Great Bear Spirit|r
    .complete 5929,1 --Seek out the Great Bear Spirit and learn what it has to share with you about the nature of the bear.
    .skipgossip
    .target Great Bear Spirit
step << Druid
	#completewith next
	.cast 18960 >> Cast Teleport: Moonglade
    >>|cRXP_WARN_This will make you return faster|r
step << Druid
    .goto 1450/1,-2678.76,8019.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dendrite Starblaze|r up stairs
    .turnin 5929 >> Turn in Great Bear Spirit
    .target Dendrite Starblaze
    .accept 5931 >> Accept Back to Darnassus
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
    .goto 1438/1,906.17,9751.02
    .train 2550 >>Train Cooking
    .target Zarrin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zarrin|r
    .accept 4161 >> Accept Recipe of the Kaldorei
    .turnin 4161 >> Turn in Recipe of the Kaldorei
step
	#xprate 1.49-1.99
    .goto 1438/1,1172.01,9917.17
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
    .goto 1438/1,928.83,9812.34
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
    .goto 1438/1,764.68,9835.73
    .use 15921 >>|cRXP_WARN_Use the|r |T132164:0|t[Taming Rod] |cRXP_WARN_on a|r |cRXP_ENEMY_Webwood Lurker|r
    .complete 6063,1 --Tame a Webwood Lurker
    .mob Webwood Lurker
step << Hunter
#xprate <1.99
    #optional
    #completewith L10
    #level 10
    #requires beast2
    .goto 1438/1,928.83,9812.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dazalar|r
    .turnin 6063 >> Turn in Taming the Beast
    .target Dazalar
    .accept 6101 >> Accept Taming the Beast
step
	#xprate <1.5
    .goto 1438/1,956.02,9736.83
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
	.goto 1438/1,719.87,9503.48
	>>Click on |cRXP_LOOT_Denalans Planter|r
	.turnin 941 >> Turn in Planting the Heart
	.isQuestTurnedIn 927
step << Hunter
	#xprate <1.5
    .goto 1438/1,627.20,9380.96
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
    .goto 1438/1,985.45,9905.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Laurna Morninglight|r
	.trainer >> Train your class spells
    .target Laurna Morninglight
step << Warrior
#xprate <1.99
    .goto 1438/1,952.00,9822.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kyra Windblade|r
	.trainer >> Train your class spells
    .target Kyra Windblade
step << Rogue
#xprate <1.99
    .goto 1438/1,943.85,9790.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jannok Breezesong|r
	.trainer >> Train your class spells
    .train 5171 >> Train |T132306:0|t[Slice and Dice]
    .train 921 >> Train |T133644:0|t[Pick Pocket] as well which is needed for your level 10 Rogue quest
    .target Jannok Breezesong
step << Hunter
#xprate <1.99
    .goto 1438/1,928.83,9812.34
    .target Dazalar
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dazalar|r
    .accept 6063 >> Accept Taming the Beast
	.trainer >> Train your class spells
step << Hunter
#xprate <1.99
    .goto 1438/1,764.68,9835.73
    .use 15921 >>|cRXP_WARN_Use the|r |T132164:0|t[Taming Rod] |cRXP_WARN_on a|r |cRXP_ENEMY_Webwood Lurker|r
    .complete 6063,1 --Tame a Webwood Lurker
    .mob Webwood Lurker
step << Hunter
#xprate <1.99
    .goto 1438/1,928.83,9812.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dazalar|r
    .turnin 6063 >> Turn in Taming the Beast
    .target Dazalar
    .accept 6101 >> Accept Taming the Beast
step << Hunter
#xprate <1.99
    .goto 1438/1,627.20,9380.96
    .use 15922 >>|cRXP_WARN_Use the|r |T132164:0|t[Taming Rod] |cRXP_WARN_on a|r |cRXP_ENEMY_Nightsaber Stalker|r
    >>|cRXP_WARN_You must right click your Pet Frame and Dismiss your pet before you can tame another one|r
    .complete 6101,1 --Tame a Nightsaber Stalker
    .mob Nightsaber Stalker
step << Hunter
#xprate <1.99
    .goto 1438/1,928.83,9812.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dazalar|r
    .turnin 6101 >> Turn in Taming the Beast
    .target Dazalar
    .accept 6102 >> Accept Taming the Beast
step << Hunter
#xprate <1.99
    .goto 1438/1,520.28,9567.62
    .use 15923 >>|cRXP_WARN_Use the|r |T132164:0|t[Taming Rod] |cRXP_WARN_on a|r |cRXP_ENEMY_Strigid Screecher|r
    >>|cRXP_WARN_You must right click your Pet Frame and Dismiss your pet before you can tame another one|r
    .complete 6102,1 --Tame a Strigid Screecher
    .mob Strigid Screecher
step << Hunter
#xprate <1.99
    .goto 1438/1,928.83,9812.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dazalar|r
    .turnin 6102 >> Turn in Taming the Beast
    .target Dazalar
    .accept 6103 >> Accept Training the Beast
step << Warrior
#xprate <1.99
    .goto 1438/1,971.91,9852.35,40,0
    .goto 1438/1,1257.55,10004.39
    .goto 1438/1,971.91,9852.35,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moon Priestess Amara|r
    >>|cRXP_FRIENDLY_Moon Priestess Amara|r |cRXP_WARN_patrols the road west of Dolanaar|r
    .accept 1684 >> Accept Elanaria
    .target Moon Priestess Amara
step << Rogue
#xprate <1.99
    .goto 1438/1,943.85,9790.28
    .target Jannok Breezesong
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jannok Breezesong|r
    .accept 2241 >> Accept The Apple Falls
step << Hunter
	#xprate <1.5--money issues 1.5x
    .goto 1438/1,947.57,9812.38
    .money <0.0504
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shalomon|r
    >>|cRXP_BUY_Buy a|r |T135145:0|t[Walking Stick]
    >>|cRXP_WARN_You will equip this later. Skip this step if you happened to find a different staff|r
    .collect 2495,1 -- Walking Stick (1)
    .target Shalomon
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.20
step << !Druid
#xprate <1.99
    .goto 1438/1,971.91,9852.35,40,0
    .goto 1438/1,1257.55,10004.39
    .goto 1438/1,971.91,9852.35,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moon Priestess Amara|r
    >>|cRXP_FRIENDLY_Moon Priestess Amara|r |cRXP_WARN_patrols the road west of Dolanaar|r
    .turnin 487 >> Turn in The Road to Darnassus
    .target Moon Priestess Amara
step << Rogue
#xprate <1.99
    #softcore
    #completewith next
    .goto 1438/1,1574.25,9978.26
    .deathskip >>Once you get past the furbolg area, die on purpose and respawn at the Darnassus graveyard
    .target Spirit Healer
step << Rogue
    #hardcore
    #completewith next
    .goto 1457/1,2070.42,9979.310,100 >> Travel to Darnassus
step << Rogue
    .goto 1457/1,2534.29,10085.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rellian Greenspyre|r
    .turnin 922 >> Turn in Rellian Greenspyre
    .target Rellian Greenspyre
    .accept 923 >> Accept Tumors
step << Rogue
    #season 0
    .goto 1457/1,2568.37,10174.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arch Druid Fandral Staghelm|r atop the Tree
    .turnin -935 >> Turn in Crown of the Earth
    .turnin -940 >> Turn in Teldrassil
    .target Arch Druid Fandral Staghelm
    .accept 952 >> Accept Grove of the Ancients
step << Rogue
    .goto 1457/1,2608.06,10113.26,8,0
    .goto 1457/1,2546.89,10083.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Syurna|r
    .turnin 2241 >> Turn in The Apple Falls
    .target Syurna
    .accept 2242 >> Accept Destiny Calls
step << Rogue
    .goto 1457/1,2517.99,9584.25,10,0
    .goto 1457/1,2550.48,9631.88
    .target Priestess A'moora
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess A'moora|r
    .accept 2518 >> Accept Tears of the Moon
step << Warrior
#xprate >1.99
    #sticky
    #completewith next
    .goto 1438/1,1334.94,9720.34,18 >> Travel toward |cRXP_ENEMY_Vorlus Vilehoof|r
step << Warrior
#xprate >1.99
    .goto 1438/1,1411.32,9669.43
    >>Kill |cRXP_ENEMY_Vorlus Vilehoof|r. Loot him for his |cRXP_LOOT_Horn|r
    .complete 1683,1 --Collect Horn of Vorlus (x1)
    .mob Vorlus Vilehoof
step << Hunter
    #sticky
	.goto 1438/1,1716.82,10324.42,0
	.goto 1438/1,1564.07,10480.54,0
	.goto 1438/1,1492.78,10765.61,0
	.goto 1438/1,1900.12,10853.85,0
    >>|cRXP_WARN_Cast|r |T132164:0|t[Tame Beast] |cRXP_WARN_on a |cRXP_ENEMY_Strigid Hunter|r to tame it|r -- .tame 1997
    .train 2981 >> |cRXP_WARN_Attack mobs with it to learn|r |T132140:0|t[Claw (Rank 2)]
    .link https://www.wow-petopia.com/classic/training.php >> |cRXP_WARN_Click here for more info about pet training|r
	.unitscan Strigid Hunter
step
    #sticky
    #completewith Spinnerets
    .goto 1438/1,1691.36,10412.66,0
    .goto 1438/1,1584.43,10947.86,0
	>>Kill |cRXP_ENEMY_Timberling Tramplers|r, |cRXP_ENEMY_Timberling Mire Beasts|r and |cRXP_ENEMY_Elder Timberlings|r. Loot them for their |cRXP_LOOT_Tumors|r
    .complete 923,1 --Collect Mossy Tumor (x5)
    .mob Elder Timberling
    .mob Timberling Trampler
    .mob Timberling Mire Beast
step
    #label Spinnerets
    #loop
    .goto 1438/1,1691.36,10412.66,0
    .goto 1438/1,1370.58,10976.02,0
    .goto 1438/1,1676.08,10962.45,0
    .goto 1438/1,1798.28,10962.45,0
    .line Teldrassil,41.70,41.82,41.97,39.03,42.20,35.71,43.33,33.27,43.79,30.65,44.18,27.80,46.09,26.55,47.72,25.57,46.25,25.62,44.42,26.09,42.83,26.15,42.0,25.6,39.6,25.6
    >>Kill |cRXP_ENEMY_Lady Sathrah|r. Loot her for her |cRXP_LOOT_Spinnerets|r
    >>|cRXP_ENEMY_Lady Sathrah|r |cRXP_WARN_can spawn in 3 different locations, check your map for a recomended path to take|r
    >>|cRXP_WARN_Head north along the river and check the easternmost spawn point first. Work on the|r |T134339:0|t[Tumors] |cRXP_WARN_quest as you go|r
    >>|cRXP_WARN_If she's not east of the river complete the|r |T134339:0|t[Tumors] |cRXP_WARN_quest before heading west|r
    .complete 2518,1 --Collect Silvery Spinnerets (x1)
    .mob Lady Sathrah
step
    .goto 1438/1,1691.36,10412.66
	>>Kill |cRXP_ENEMY_Timberling Tramplers|r, |cRXP_ENEMY_Timberling Mire Beasts|r and |cRXP_ENEMY_Elder Timberlings|r. Loot them for their |cRXP_LOOT_Tumors|r
    .complete 923,1 --Collect Mossy Tumor (x5)
    .mob Elder Timberling
    .mob Timberling Trampler
    .mob Timberling Mire Beast
step
    .goto 1438/1,1864.47,10667.19
    .target Sentinel Arynia Cloudsbreak
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Arynia Cloudsbreak|r
    .accept 937 >> Accept The Enchanted Glade
step << Rogue
    .goto 1438/1,1879.75,10976.02
    >>|cRXP_WARN_Cast|r |T133644:0|t[Pick Pocket] on |cRXP_ENEMY_Sethir the Ancient|r
    >>|cRXP_WARN_You must be in|r |T132320:0|t[Stealth] |cRXP_WARN_to use|r |T133644:0|t[Pick Pocket]
    >>|cRXP_ENEMY_Sethir the Ancient|r |cRXP_WARN_walks along the big tree branch|r
    >>|cRXP_WARN_Avoid fighting |cRXP_ENEMY_Sethir the Ancient|r. Let him walk passed you, then|r |T132320:0|t[Stealth] |cRXP_WARN_and|r |T133644:0|t[Pick Pocket] |cRXP_WARN_when you're behind him|r
    .complete 2242,1
    .mob Sethir the Ancient
step
    #sticky
	#label harpies2
    .goto 1438/1,2102.82,10819.27,0,0
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
    .goto 1438/1,2208.67,10758.15
    .target Mist
    #label MistStart
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mist|r
    >>|cRXP_WARN_This will start an escort quest|r
    >>|cRXP_WARN_Skip this quest if the NPC is not there|r
    .accept 938 >> Accept Mist
step
    .goto 1438/1,1864.47,10663.80
    .target Sentinel Arynia Cloudsbreak
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Arynia Cloudsbreak|r
    >>|cRXP_WARN_Keep in mind this is a timed quest, you need to turn it in within 10 minutes of accepting|r
    .turnin 938 >> Turn in Mist
    .isOnQuest 938
step
    #requires harpies2
    #label TeldrassilEnd
    .goto 1438/1,1864.47,10663.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Arynia Cloudsbreak|r
    .turnin 937 >> Turn in The Enchanted Glade
    .target Sentinel Arynia Cloudsbreak
    .accept 940 >> Accept Teldrassil
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
    .goto 1457/1,2070.42,9979.310
    .zone Darnassus >> Travel to Darnassus
step
    #hardcore
    #completewith next
    #season 2
    .goto 1457/1,2070.42,9979.310
    .zone Darnassus >> Travel to Darnassus
step
    .goto 1457/1,2190.34,9918.06
    .target Mydrannul
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mydrannul|r
    .accept 6344 >> Accept Nessa Shadowsong
step
    #softcore
    #label darn
    #optional
    .goto 1457/1,2070.42,9979.310
    .zone Darnassus >> Travel to Darnassus
step
	.abandon 927 >> Abandon The Moss-twined Heart. You never have an opportunity to turn it in
step << Warrior
#xprate <1.99
    .goto 1457/1,2331.89,9994.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elanaria|r
    .turnin 1684 >> Turn in Elanaria
    .target Elanaria
    .accept 1683 >> Accept Vorlus Vilehoof
step << Warrior
#xprate <1.99
    #sticky
    #completewith next
    .goto 1438/1,1334.94,9720.34,18 >> Travel toward |cRXP_ENEMY_Vorlus Vilehoof|r
step << Warrior
#xprate <1.99
    .goto 1438/1,1411.32,9669.43
    >>Kill |cRXP_ENEMY_Vorlus Vilehoof|r. Loot him for his |cRXP_LOOT_Horn|r
    .complete 1683,1 --Collect Horn of Vorlus (x1)
    .mob Vorlus Vilehoof
step << Warrior
#xprate <1.99
    #softcore
	#sticky
    #completewith next
    .goto 1438/1,1594.62,9988.44
    .deathskip >>Die on purpose after you get past the furbolg area and respawn at Darnassus
step << Warrior
#xprate <1.99
    #hardcore
    #completewith next
    .goto 1457/1,2070.42,9979.310,100 >> Travel to Darnassus
step << Warrior
    .goto 1457/1,2331.89,9994.09
    .target Elanaria
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elanaria|r
    .turnin 1683 >> Turn in Vorlus Vilehoof
--	.accept 1686 >> Accept The Shade of Elura
step << Druid
    #season 0
    .goto 1457/1,2563.92,10179.040
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mathrengyl Bearwalker|r on the middle level
    .turnin 5931 >> Turn in Back to Darnassus
    .target Mathrengyl Bearwalker
    .accept 6001 >> Accept Body and Heart
step
    #season 0
    .goto 1457/1,2569.91,10173.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arch Druid Fandral Staghelm|r
    .turnin -935 >> Turn in Crown of the Earth
    .turnin -940 >> Turn in Teldrassil
    .target Arch Druid Fandral Staghelm
    .accept 952 >> Accept Grove of the Ancients
step << Hunter
#xprate <1.99
    .goto 1457/1,2511.04,10178.01
    .target Jocaste
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jocaste|r
    .turnin 6103 >> Turn in Training the Beast
step << Hunter
    >>|cRXP_WARN_Go up the ramp to the right of|r |cRXP_FRIENDLY_Jocaste|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Silvaria|r
    .goto 1457/1,2491.75,10176.21
    .trainer >>Train pet spells
    .target Silvaria
step
    #season 0
    .goto 1457/1,2534.25,10085.60
    .target Rellian Greenspyre
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rellian Greenspyre|r
    .turnin 923 >> Turn in Tumors
step << Rogue
    .goto 1457/1,2608.06,10113.26,8,0
    .goto 1457/1,2546.89,10083.69
    .target Syurna
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Syurna|r
    .turnin 2242 >> Turn in Destiny Calls
step
    .goto 1457/1,2517.99,9584.25,10,0
    .goto 1457/1,2550.48,9631.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess A'moora|r
    .turnin 2518 >> Turn in Tears of the Moon
    .target Priestess A'moora
    .accept 2520 >> Accept Sathrah's Sacrifice
step
    .goto 1457/1,2518.20,9632.80
	.use 8155 >>|cRXP_WARN_Use|r |T135652:0|t[Sathrah's Sacrifice] |cRXP_WARN_at the fountain|r
    .complete 2520,1 --Offer the sacrifice at the fountain
step
    #label end
    .goto 1457/1,2517.99,9584.25,10,0
    .goto 1457/1,2550.48,9631.88
    .target Priestess A'moora
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess A'moora|r
    .turnin 2520 >> Turn in Sathrah's Sacrifice
step << Druid
#ssf
    #season 0
    .goto 1457/1,2430.89,9758.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Firodren Mooncaller|r
    .train 2366 >> Train |T136065:0|t[Herbalism]
    >>|T136065:0|t[Herbalism] |cRXP_WARN_is required to gather 5|r |T134187:0|t[Earthroot] |cRXP_WARN_for an important class quest soon. You can unlearn it afterwards|r
    .target Firodren Mooncaller
step
    #ah
    .goto 1457/1,2343.10,9856.95,-1
    .goto 1457/1,2341.74,9872.610,-1
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
    .goto 1457/1,2258.91,9793.71
    .line Darnassus,60.65,66.47,61.68,63.73,62.36,58.91,62.32,55.22,65.77,55.75,67.88,57.48,68.35,59.98,65.14,68.14,64.34,71.36,62.28,68.79,60.65,66.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tLook for |cRXP_FRIENDLY_Jaeana|r, she patrols around the Tradesmen's Terrace
    >>|cRXP_BUY_Buy a stack of|r |T133972:0|t[Tough Jerky] |cRXP_BUY_from her.
    >>|cRXP_WARN_You will need it to feed your owl, they only eat meat and there's no meat vendor in Darkshore|r
    .collect 117,15
    .target Jaeana
step << Hunter/Warrior/Priest/Sod Rogue
    .goto 1457/1,2329.19,9908.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ilyenia Moonfire|r
    .skipgossip 11866,1
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
    .goto 1457/1,2316.49,9924.41
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ariyell Skyshadow|r
    >>|cRXP_BUY_Buy and equip a|r |T135489:0|t[Laminated Recurve Bow]
    .collect 2507,1
    .target Ariyell Skyshadow
    .money <0.1751
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.77
step << Hunter
    #season 0
    .goto 1457/1,2316.49,9924.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ariyell Skyshadow|r
	.vendor >>|cRXP_BUY_Buy|r |T132382:0|t[Sharp Arrows]
    .target Ariyell Skyshadow
step << Hunter
    #completewith next
    +|cRXP_WARN_Equip the|r |T135489:0|t[Laminated Recurve Bow]
    .use 2507
    .itemcount 2507,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.76
step << Warrior
    .goto 1457/1,2316.49,9924.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ariyell Skyshadow|r
    >>|cRXP_BUY_Buy a|r |T135147:0|t[Gnarled Staff]|cRXP_BUY_. Equip it at level 15|r
	.collect 2030,1
    .target Ariyell Skyshadow
    .money <0.5022
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Warrior
    .goto 1457/1,2316.49,9924.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ariyell Skyshadow|r
    >>|cRXP_BUY_Buy a|r |T135154:0|t[Quarter Staff]|cRXP_BUY_. Equip it at level 11|r << era
    >>|cRXP_BUY_Buy and equip a|r |T135154:0|t[Quarter Staff] |cRXP_BUY_if you can't afford a|r |T135147:0|t[Gnarled Staff] << sod
	.collect 854,1
    .target Ariyell Skyshadow
    .money <0.3022
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.44
step << Warrior
    .goto 1457/1,2316.49,9924.41
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
step << Rogue
    #season 0
    .goto 1457/1,2275.00,9775.50
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rellian Greenspyre|r on the second floor
    >>|cRXP_BUY_Buy a|r |T135641:0|t[Balanced Throwing Dagger]
    .collect 2946,1 -- Balanced Throwing Dagger
    .target Turian
step
    #completewith NessaShadowsong
    .goto 1457/1,2636.53,9956.80
    .zone Teldrassil >> Travel through the purple portal to Rut'theran Village
    .zoneskip Darkshore
    .subzoneskip 702
step
    .goto 1438/1,950.52,8694.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nessa Shadowsong|r
    .turnin 6344 >> Turn in Nessa Shadowsong
    .target Nessa Shadowsong
    .accept 6341 >> Accept The Bounty of Teldrassil
step
    #label NessaShadowsong
    #optional
    .goto 1438/1,950.52,8694.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nessa Shadowsong|r
    .turnin 6343 >> Turn in Return to Nessa
    .isOnQuest 6343
    .target Nessa Shadowsong
step
    .goto 1438/1,841.10,8640.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vesprystus|r
    .turnin 6341 >> Turn in The Bounty of Teldrassil
    .target Vesprystus
    .accept 6342 >> Accept Flight to Auberdine
step
    .goto 1438/1,841.10,8640.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vesprystus|r
    .fly Darkshore >> Fly to Darkshore
    .target Vesprystus
]])
