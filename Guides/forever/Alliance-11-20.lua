local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

local L = GetLocale() if L and RXP.enabledLocale[L] then return end
RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#name 13-15 Westfall
#displayname 14-15 Westfall << Dwarf/Gnome
#group RestedXP Forever Guide (A)
#subgroup Speedrun Guide 1-20
--#groupid RXP-SRGCE-A1
#next 14-16 Darkshore
#defaultfor !NightElf !Hunter

--Going to Darkshore if already 15

step
    #optional
    .maxlevel 14,endOfTheGuide
step
    .goto 1453/0,673.58,-8867.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Allison|r
    .home >> Set your Hearthstone to Stormwind City
    .target Innkeeper Allison
    .bindlocation 16509

step
    #label NEWestfallStart --hidden step for #include

step
    #ah
    .goto 1453/0,660.28,-8814.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Auctioneer Jaxon|r
    >>|cRXP_BUY_Buy the following items for faster turn ins at Westfall shortly:|r
    >>|cRXP_WARN_If you don't want to or can't do this, skip this step|r
    >>|T133972:0|t[Stringy Vulture Meat]
    >>|T133884:0|t[Murloc Eye]
    >>|T135997:0|t[Goretusk Snout]
    >>|T134185:0|t[Okra]
    >>|T134341:0|t[Goretusk Liver]
    >>|T4548890:0|t[Golem Isospring]
    >>|T132995:0|t[Harvester Gyrostabilizer]
    .collect 729,3,38,1 -- Stringy Vulture Meat (3)
    .collect 730,3,38,1 -- Murloc Eye (3)
    .collect 731,3,38,1 -- Goretusk Snout (3)
    .collect 732,3,38,1 -- Okra (3)
    .collect 723,8,22,1 -- Goretusk Liver (8)
    .collect 255007,14,92909,1 -- Golem Isospring (14)
    .collect 255010,5,92909,1 -- Harvester Gyrostabilizer (5)
step << Human
    .goto 1453/0,489.99,-8835.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
    .turnin 6261 >> Turn in Dungar Longdrink
    .accept 6285 >> Accept Return to Lewis
    .target Dungar Longdrink

step << !Skyborne
    .goto 1453/0,490.03,-8835.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
    .fly Westfall >> Fly to Westfall << !NightElf
    .fp Stormwind >> Get the Stormwind Flight Path << NightElf
    .target Dungar Longdrink
step
    #completewith SaldeanVendor
    #optional
    .goto 1429/0,875.96,-9814.400
    .zone Westfall >> Travel to Westfall
step
    .goto 1436/0,918.42,-9851.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Furlbrow|r
    .accept 64 >> Accept The Forgotten Heirloom
    .target Farmer Furlbrow
step
    .goto 1436/0,919.47,-9853.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Verna Furlbrow|r
    .accept 36 >> Accept Westfall Stew
    .accept 151 >> Accept Poor Old Blanchy
    .target Verna Furlbrow
step
    #completewith SalmaS
    .goto 1436/0,1055.27,-10128.70,65 >> Travel to Saldean's Farm
step
    .goto 1436/0,1055.27,-10128.70
    .target Farmer Saldean
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Saldean|r
    .accept 9 >> Accept The Killing Fields
    .accept 109 >>Accept Report to Gryan Stoutmantle << NightElf
step
    #label SalmaS
    .goto 1436/0,1042.67,-10111.670
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Salma Saldean|r
    .turnin 36 >> Turn in Westfall Stew
    .target Salma Saldean
    .accept 38 >> Accept Westfall Stew
    .accept 22 >> Accept Goretusk Liver Pie
step << Human
    #label Lewis
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quartermaster Lewis|r
    .target Quartermaster Lewis
    .goto 1436/0,1021.67,-10500.63
    .turnin 6285 >> Turn in Return to Lewis
step << Gnome/Dwarf/NightElf
    #completewith next
    .goto 1436/0,1045.12,-10508.80
    .target Gryan Stoutmantle
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .turnin 109 >> Turn in Report to Gryan Stoutmantle
    .isOnQuest 109
step
    .goto 1436/0,1045.12,-10508.80
    .target Gryan Stoutmantle
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .accept 12 >> Accept The People's Militia
    .turnin 98021 >>Turn in Journey to Sentinel Hill << Skyborne
step
    .goto 1436/0,1041.97,-10511.13
    .target Captain Danuvin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Danuvin|r
    .accept 102 >> Accept Patrolling Westfall
step << Human
    #requires Lewis
    .goto 1436/0,1126.67,-10636.670
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Galiaan|r
    .target Scout Galiaan
    .accept 153 >> Accept Red Leather Bandanas
step << !Human
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Galiaan|r
    .target Scout Galiaan
    .goto 1436/0,1126.67,-10636.670
    .accept 153 >> Accept Red Leather Bandanas
step
    .goto 1436/0,1166.57,-10653.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Heather|r
    .vendor >>|cRXP_BUY_Buy food/water if needed|r
	.target Innkeeper Heather
step
    .goto 1436/0,1179.800,-10635.601
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alba Fairmoon::253092|r
    .target Alba Fairmoon::253092
    .accept 92742 >>Accept Testing the Wells
    .accept 92744 >>Accept Murloc Gills
step
	#completewith GnollPaws
    >>Open the |cRXP_PICK_Sacks of Oats|r on the ground. Loot them for the |cRXP_LOOT_Handful of Oats|r
    >>|cRXP_WARN_You can usually find them near Farm Fences or Buildings|r
    .complete 151,1 --Handful of Oats (8)
step
    #completewith TravelCompass
    >>Kill |cRXP_ENEMY_Young Goretusks|r and |cRXP_ENEMY_Young Fleshrippers|r. Loot them for their |cRXP_LOOT_Vulture Meat|r, |cRXP_LOOT_Snouts|r and |cRXP_LOOT_Livers|r
    .collect 729,3,38,1 --Stringy Vulture Meat (3)
    .mob +Young Fleshripper
    .mob +Fleshripper
    .collect 731,3,38,1 --Goretusk Snout (3)
    .mob +Young Goretusk
    .mob +Goretusk
    .collect 723,8,22,1 --Goretusk Liver (8)
    .mob +Young Goretusk
    .mob +Goretusk
step
    #completewith TravelCompass
    >>Kill |cRXP_ENEMY_Defias Trappers|r and |cRXP_ENEMY_Defias Smugglers|r. Loot them for their |T133694:0|t|cRXP_LOOT_Red Leather Bandanas|r
    .complete 12,1 -- Defias Trapper slain (15)
    .mob +Defias Trapper
    .complete 12,2 -- Defias Smuggler slain (15)
    .mob +Defias Smuggler
    .complete 153,1 -- Red Leather Bandana (15)
    .mob +Defias Trapper
    .mob +Defias Smuggler
step
    #label TravelCompass
    .isOnQuest 399
    .goto 1436/0,1602.67,-10629.67,75 >> Travel to the Alexston's Farmstead
    >>|cRXP_WARN_Work on completing the other quest objectives as you move there|r
step << skip -- quests drop rate is beyond dreadful. over 50 kills to complete
    .goto 1436/0,1213.400,-10153.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ozwin Ironsprocket::253395|r in the barn
    .target Ozwin Ironsprocket::253395
    .accept 92909 >>Accept Harvesting the Harvesters
step
    #sticky
    #completewith bennytime
    >>Kill |cRXP_ENEMY_Harvest Watchers|r located on any of the fields as you run by them
    >>Loot them for their |cRXP_LOOT_Okra|r and |cRXP_LOOT_Flasks of Oil|r
    .mob Harvest Watcher
    .complete 9,1 --Havest Watcher slain (20)
    .collect 732,3,38,1 --Okra (3)
    .collect 814,5,103,1 --Flask of Oil (5)
step
    .goto 1436/0,1748.27,-10672.13
    >>Open |cRXP_PICK_Alexston's Chest|r. Loot it for |cRXP_LOOT_A Simple Compass|r
    .complete 399,1 --A Simple Compass (1)
    .isOnQuest 399
step
    .goto 1436/0,1404.200,-10290.900
    .use 254545 >>|cRXP_WARN_Use the|r |T236996:0|t[Well Water Sample Kit] |cRXP_WARN_at the Molsen Farm well|r
    .complete 92742,2 --|1/1 Molsen Farm Water Sample
step
    #completewith bennytime
    >>Kill |cRXP_ENEMY_Young Goretusks|r and |cRXP_ENEMY_Young Fleshrippers|r. Loot them for their |cRXP_LOOT_Vulture Meat|r, |cRXP_LOOT_Snouts|r and |cRXP_LOOT_Livers|r
    .collect 729,3,38,1 --Stringy Vulture Meat (3)
    .mob +Young Fleshripper
    .mob +Fleshripper
    .collect 731,3,38,1 --Goretusk Snout (3)
    .mob +Young Goretusk
    .mob +Goretusk
    .collect 723,8,22,1 --Goretusk Liver (8)
    .mob +Young Goretusk
    .mob +Goretusk
step
    #completewith bennytime
    >>Kill |cRXP_ENEMY_Defias Trappers|r and |cRXP_ENEMY_Defias Smugglers|r. Loot them for their |T133694:0|t|cRXP_LOOT_Red Leather Bandanas|r
    .complete 12,1 -- Defias Trapper slain (15)
    .mob +Defias Trapper
    .complete 12,2 -- Defias Smuggler slain (15)
    .mob +Defias Smuggler
    .complete 153,1 -- Red Leather Bandana (15)
    .mob +Defias Trapper
    .mob +Defias Smuggler
step
    .goto 1436/0,1266.67,-9927.33,75 >> Travel to the Jansen Stead, |cRXP_WARN_work on the other quest objectives as you move there|r
step
	#label bennytime
    .goto 1436/0,1289.77,-9849.63
    >>Open |cRXP_PICK_Furlbrow's Wardrobe|r. Loot it for |cRXP_LOOT_Furlbrow's Pocket Watch|r
    >>|cRXP_WARN_You can loot |cRXP_PICK_Furlbrow's Wardrobe|r from outside if you angle your camera correctly|r
	>>|cRXP_WARN_Be aware of |cRXP_ENEMY_Benny Blanco|r. He hits hard|r
    .complete 64,1 --Furlbrow's Pocket Watch
step
    #label GnollPaws
    .goto 1436/0,1042.67,-9715.0,60,0
    .goto 1436/0,1517.97,-9743.000,60,0
    .goto 1436/0,1412.62,-9720.83,60,0
    .goto 1436/0,1184.07,-9745.80,60,0
    .goto 1436/0,1026.57,-9715.70,60,0
    .goto 1436/0,1026.57,-9715.70,60,0
    .goto 1436/0,1517.97,-9743.000,60,0
    .goto 1436/0,1184.07,-9745.80,60,0
    .goto 1436/0,1412.62,-9720.83
    .goto 1436/0,1517.97,-9743.000,0
    .goto 1436/0,1184.07,-9745.80,0
    .goto 1436/0,1028.32,-9710.330,0
    >>Kill |cRXP_ENEMY_Riverpaw Gnolls|r and |cRXP_ENEMY_Riverpaw Scouts|r. Loot them for their |T134297:0|t|cRXP_LOOT_Gnoll Paws|r
    .complete 102,1 --Gnoll Paw (8)
    .mob Riverpaw Gnoll
    .mob Riverpaw Scout
step
    .goto 1436/0,1192.12,-9641.73,60,0
    .goto 1436/0,1042.67,-9619.33,60,0
    .goto 1436/0,1192.12,-9641.73,60,0
    .goto 1436/0,1042.67,-9619.33,60,0
    .goto 1436/0,1192.12,-9641.73
    .goto 1436/0,1042.67,-9619.33,0
    >>Kill |cRXP_ENEMY_Murloc Raiders|r and |cRXP_ENEMY_Murloc Coastrunners|r. Loot them for their |cRXP_LOOT_Eyes|r and |cRXP_LOOT_Gills|r
    .collect 730,3,38,1 --Murloc Eye (3)
    .complete 92744,1 -- Longshore Murloc Gills 7/7
    .mob Murloc Raider
    .mob Murloc Coastrunner
step
    .goto 1436/0,1004.87,-9716.87,60,0
    .goto 1436/0,1013.62,-9861.53,60,0
    .goto 1436/0,1192.12,-10175.13,60,0
    .goto 1436/0,1019.57,-10204.30,60,0
    .goto 1436/0,1013.62,-9861.53
    >>Open the |cRXP_PICK_Sacks of Oats|r on the ground. Loot them for the |cRXP_LOOT_Handful of Oats|r
	>>|cRXP_WARN_You can usually find them near Farm Fences or Buildings|r
	.complete 151,1 --Handful of Oats (8)
step
    .goto 1436/0,1035.300,-9835.101
    .use 254545 >>|cRXP_WARN_Use the|r |T236996:0|t[Well Water Sample Kit] |cRXP_WARN_at the Jansen Stead well|r
    .complete 92742,1 --|1/1 Jansen Stead Water Sample
step << Human Warlock
    #label FurlbrowFarm
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Furlbrow|r and |cRXP_FRIENDLY_Verna Furlbrow|r
    .turnin 64 >> Turn in The Forgotten Heirloom
    .turnin 184 >> Turn in Furlbrow's Deed
    .target +Farmer Furlbrow
    .goto 1436/0,918.42,-9851.50
    .turnin 151 >> Turn in Poor Old Blanchy
    .goto 1436/0,919.47,-9853.13
	.target +Verna Furlbrow
    .isOnQuest 184
step
    #optional << Human Warlock
    #label FurlbrowFarm << !Human/!Warlock
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Furlbrow|r and |cRXP_FRIENDLY_Verna Furlbrow|r
    .turnin 64 >> Turn in The Forgotten Heirloom
    .target +Farmer Furlbrow
    .goto 1436/0,918.42,-9851.50
    .turnin 151 >> Turn in Poor Old Blanchy
    .target +Verna Furlbrow
    .goto 1436/0,919.47,-9853.13
step
    #completewith SaldeanVendor
	.goto 1436/0,1055.27,-10128.70
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Saldean|r
    .vendor >> |cRXP_BUY_Vendor trash|r
    >>|cRXP_WARN_Do NOT sell|r |T133884:0|t[Murloc Eyes], |T135997:0|t[Goretusk Snouts], |T134341:0|t[Goretusk Livers] |cRXP_WARN_or|r |T133972:0|t[Stringy Vulture Meat]
	.target Farmer Saldean
step
    #optional
    .isQuestComplete 9
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Saldean|r
	.target Farmer Saldean
    .goto 1436/0,1055.27,-10128.70
    .turnin 9 >> Turn in The Killing Fields
step
    #optional
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Salma Saldean|r
    .goto 1436/0,1042.67,-10111.670
    .turnin 22 >> Turn in Goretusk Liver Pie
    .turnin 38 >> Turn in Westfall Stew
    .isQuestComplete 22
    .isQuestComplete 38
    .target Salma Saldean
step
    #optional
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Salma Saldean|r
    .goto 1436/0,1042.67,-10111.670
    .turnin 22 >> Turn in Goretusk Liver Pie
    .isQuestComplete 22
    .target Salma Saldean
step
    #optional
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Salma Saldean|r
    .goto 1436/0,1042.67,-10111.670
    .turnin 38 >> Turn in Westfall Stew
    .isQuestComplete 38
    .target Salma Saldean
step
    #optional
    .goto 1436/0,1213.400,-10153.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ozwin Ironsprocket::253395|r
    .target Ozwin Ironsprocket::253395
    .accept 92909 >>Accept Harvesting the Harvesters
    .turnin 92909 >>Turn in Harvesting the Harvesters
    .itemcount 255007,14 -- Golem Isospring (14)
    .itemcount 255010,5 -- Harvester Gyrostabilizer (5)
step
    .isQuestAvailable 38
    .goto 1436/0,1132.27,-10146.67,60,0
    .goto 1436/0,1238.67,-9907.73,80,0
    .goto 1436/0,1460.22,-10224.83,80,0
    .goto 1436/0,1132.27,-10146.67,80,0
    .goto 1436/0,1238.67,-9907.73,80,0
    .goto 1436/0,1460.22,-10224.83,80,0
    .goto 1436/0,1132.27,-10146.67,60,0
    .goto 1436/0,1460.22,-10224.83,60,0
    .goto 1436/0,1238.67,-9907.73
    >>Kill |cRXP_ENEMY_Harvest Watchers|r. Loot them for their |cRXP_LOOT_Okra|r and |cRXP_LOOT_Flasks of Oil|r
    .complete 9,1 --Harvest Watcher (20)
    .collect 732,3,38,1 --Okra (3)
    .collect 814,5,103,1 --Flask of Oil (5)
step
    .isQuestTurnedIn 38
    #label HarvestW
    .goto 1436/0,1132.27,-10146.67,60,0
    .goto 1436/0,1238.67,-9907.73,80,0
    .goto 1436/0,1460.22,-10224.83,80,0
    .goto 1436/0,1132.27,-10146.67,80,0
    .goto 1436/0,1238.67,-9907.73,80,0
    .goto 1436/0,1460.22,-10224.83,80,0
    .goto 1436/0,1132.27,-10146.67,60,0
    .goto 1436/0,1460.22,-10224.83,60,0
    .goto 1436/0,1238.67,-9907.73
    >>Kill |cRXP_ENEMY_Harvest Watchers|r. Loot them for their |cRXP_LOOT_Flasks of Oil|r
    .complete 9,1 --Harvest Watcher (20)
    .collect 814,5,103,1 --Flask of Oil (5)
step
    #optional
    .isQuestComplete 9
    .subzoneskip 107,1 -- forces early turnin if already at same farm
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Saldean|r
	.target Farmer Saldean
    .goto 1436/0,1055.27,-10128.70
    .turnin 9 >> Turn in The Killing Fields
step
    #optional
    .goto 1436/0,1213.400,-10153.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ozwin Ironsprocket::253395|r
    .target Ozwin Ironsprocket::253395
    .accept 92909 >>Accept Harvesting the Harvesters
    .turnin 92909 >>Turn in Harvesting the Harvesters
    .itemcount 255007,14 -- Golem Isospring (14)
    .itemcount 255010,5 -- Harvester Gyrostabilizer (5)
step
    .goto 1436/0,1179.52,-10382.57,75,0
    .goto 1436/0,1138.22,-10474.97,75,0
    .goto 1436/0,860.67,-10462.83,75,0
    .goto 1436/0,904.07,-10038.87,75,0
    .goto 1436/0,1104.62,-9848.000,75,0
    .goto 1436/0,1298.52,-10028.13,75,0
    .goto 1436/0,1340.52,-10401.93,75,0
    .goto 1436/0,1111.97,-10342.20
    >>Kill |cRXP_ENEMY_Young Goretusks|r and |cRXP_ENEMY_Young Fleshrippers|r. Loot them for their |cRXP_LOOT_Vulture Meat|r, |cRXP_LOOT_Snouts|r and |cRXP_LOOT_Livers|r
    .collect 729,3,38,1 --Stringy Vulture Meat (3)
    .mob +Young Fleshripper
    .mob +Fleshripper
    .collect 731,3,38,1 --Goretusk Snout (3)
    .mob +Young Goretusk
    .mob +Goretusk
    .collect 723,8,22,1 --Goretusk Liver (8)
    .mob +Young Goretusk
    .mob +Goretusk
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Saldean|r
	.target Farmer Saldean
    .goto 1436/0,1055.27,-10128.70
    .turnin 9 >> Turn in The Killing Fields
step
    #label SaldeanVendor
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Salma Saldean|r
	.target Salma Saldean
    .goto 1436/0,1042.67,-10111.670
    .turnin 38 >> Turn in Westfall Stew
    .turnin 22 >> Turn in Goretusk Liver Pie
step
    #optional
    .goto 1436/0,1213.400,-10153.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ozwin Ironsprocket::253395|r
    .target Ozwin Ironsprocket::253395
    .accept 92909 >>Accept Harvesting the Harvesters
    .turnin 92909 >>Turn in Harvesting the Harvesters
    .itemcount 255007,14 -- Golem Isospring (14)
    .itemcount 255010,5 -- Harvester Gyrostabilizer (5)
step
    #completewith next
    >>Kill |cRXP_ENEMY_Defias Trappers|r and |cRXP_ENEMY_Defias Smugglers|r. Loot them for their |T133694:0|t|cRXP_LOOT_Red Leather Bandanas|r
    >>|cRXP_WARN_It is a dynamic respawn area meaning if you kill enough they will keep respawning|r
    .complete 12,1 -- Defias Trapper slain (15)
    .mob +Defias Trapper
    .complete 12,2 -- Defias Smuggler slain (15)
    .mob +Defias Smuggler
    .complete 153,1 -- Red Leather Bandana (15)
    .mob +Defias Trapper
    .mob +Defias Smuggler
step
    .goto 1436/0,1324.200,-10490.400
    >>Kill |cRXP_ENEMY_Defias Trappers|r and |cRXP_ENEMY_Defias Smugglers|r. Loot them for their |T133694:0|t|cRXP_LOOT_Red Leather Bandanas|r
    >>|cRXP_WARN_It is a dynamic respawn area meaning if you kill enough they will keep respawning|r
    .complete 12,1 -- Defias Trapper slain (15)
    .mob +Defias Trapper
    .complete 12,2 -- Defias Smuggler slain (15)
    .mob +Defias Smuggler
    .complete 153,1 -- Red Leather Bandana (15)
    .mob +Defias Trapper
    .mob +Defias Smuggler
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryan Stoutmantle|r
	.target Gryan Stoutmantle
    .goto 1436/0,1045.12,-10508.80
    .turnin 12 >> Turn in The People's Militia
step
	.xp <14,1
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryan Stoutmantle|r
	.target Gryan Stoutmantle
    .goto 1436/0,1045.12,-10508.80
    .accept 65 >> Accept The Defias Brotherhood
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Danuvin|r
	.target Captain Danuvin
    .goto 1436/0,1041.97,-10511.13
    .turnin 102 >> Turn in Patrolling Westfall
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Galiaan|r
	.target Scout Galiaan
    .goto 1436/0,1126.67,-10636.670
    .turnin 153 >> Turn in Red Leather Bandanas
step
    .goto 1436/0,1179.800,-10635.601
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alba Fairmoon::253092|r
    .target Alba Fairmoon::253092
    .turnin 92742 >>Turn in Testing the Wells
    .turnin 92744 >>Turn in Murloc Gills
step
    .hs >> Hearth to Stormwind
    .bindlocation 16509,1
    .cooldown item,6948,>2,1
    .zoneskip Stormwind City
    .zoneskip Darkshore
step
    #completewith DarkshoreBoat
    .goto 1436/0,1037.42,-10628.27
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Fly to Stormwind
    .target Thor
    .zoneskip Stormwind City
    .zoneskip Darkshore

step
    #optional
    #label endOfTheGuide

step << Human Rogue
    #ah
    .goto 1453/0,609.63,-8787.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marda Weller|r
    .vendor 1287 >>|cRXP_BUY_Buy a|r |T135343:0|t[Scimitar] |cRXP_BUY_from her or something better from the Auction House and equip it your off-hand|r
    .money <0.3815
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .target Marda Weller
step << Human Rogue
    #ssf
    .goto 1453/0,609.63,-8787.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marda Weller|r
    .vendor 1287 >>|cRXP_BUY_Buy a|r |T135343:0|t[Scimitar] |cRXP_BUY_from her|r
    .money <0.3815
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .target Marda Weller
step << !NightElf
    .goto 1453/0,596.400,-8831.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thurman Mullby|r
    >>|cRXP_BUY_Buy a|r |T135435:0|t[Simple Wood] |cRXP_BUY_and a|r |T135237:0|t[Flint and Tinder] |cRXP_BUY_from him|r
    >>|cRXP_WARN_This is used to make|r |T135805:0|t[Basic Campfires] |cRXP_WARN_on Boats to level your|r |T133971:0|t[Cooking] |cRXP_WARN_skill without losing time|r
    >>|cRXP_WARN_You need 50|r |T133971:0|t[Cooking] |cRXP_WARN_for a quest in Duskwood later|r
    .collect 4470,1 --Simple Wood (1)
    .collect 4471,1 --Flint and Tinder (1)
    .target Thurman Mullby
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step << !NightElf
    #ah
    .goto 1453/0,660.28,-8814.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Auctioneer Jaxon|r
    >>|cRXP_BUY_Buy|r |T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r |cRXP_BUY_and/or|r |T133970:0|t|cRXP_LOOT_[Stringy Wolf Meat]|r |cRXP_BUY_to level your|r |T133971:0|t[Cooking] |cRXP_BUY_with later|r
    >>|cRXP_WARN_You need 50|r |T133971:0|t[Cooking] |cRXP_WARN_for a quest in Darkshire later|r
    >>|cRXP_WARN_If you don't want to or can't do this, skip this step|r
    >>|cRXP_BUY_Buy the following items for faster turn ins at Westfall and Darkshore shortly:|r
    >>|T133972:0|t[Strider Meat]
    >>|T133912:0|t[Darkshore Grouper]
    >>|T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r
    >>|T133970:0|t|cRXP_LOOT_[Stringy Wolf Meat]|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (1-50)
    .disablecheckbox
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (1-50)
    .disablecheckbox
    .target Auctioneer Jaxon
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step << !NightElf
    #ah
    #optional
    .goto 1453/0,660.28,-8814.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Auctioneer Jaxon|r
    >>|cRXP_WARN_If you don't want to or can't do this, skip this step|r
    >>|cRXP_BUY_Buy the following items for faster turn ins at Westfall and Darkshore shortly:|r
    >>|T133972:0|t[Strider Meat]
    >>|T133912:0|t[Darkshore Grouper]
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .target Auctioneer Jaxon
    .skill cooking,<50,1 --XX Shows if cooking skill is 50+
step << NightElf Hunter
    .goto 1453/0,706.15,-8795.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Frederick Stover|r
    >>|cRXP_BUY_Buy a|r |T135489:0|t[Heavy Recurve Bow] |cRXP_BUY_from him|r. |cRXP_BUY_If you can afford to, buy a|r |T135490:0|t[Reinforced Bow] |cRXP_BUY_and a|r |T134410:0|t[Medium Quiver] |cRXP_BUY_as well|r 
    .collect 3027,1 -- Heavy Recurve Bow (1)
    .collect 11362,1 -- Medium Quiver (1)
    .collect 3026,1 --Reinforced Bow (1)
    .disablecheckbox
    .target Frederick Stover
    .money <0.7349
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.20
step << Rogue
    .goto 1453/0,377.47,-8752.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Osborne|r
    .train 1758,1
    .trainer >> Train your class spells
    .target Osborne the Night Man
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wu|r or |cRXP_FRIENDLY_Ilsa|r
    .goto 1453/0,358.25,-8728.28,15,0
    .goto 1453/0,302.6,-8685.53,15,0
	.goto 1453/0,323.3,-8689.29
    .train 1160,1
    .trainer >> Train your class spells
    .target Wu Shen
    .target Ilsa Corbin
step << Hunter
    .goto 1453/0,552.78,-8415.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Einris Brightspear|r inside
    >>|cRXP_WARN_If you just trained earlier, skip this step|r
    .trainer >> Train your class spells
    .target Einris Brightspear
step
    .goto 1453/0,719.67,-8550.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baros Alexston|r
    .turnin 399 >> Turn in Humble Beginnings
    .target Baros Alexston
    .isQuestComplete 399
step << NightElf Druid
    .goto 1453/0,1347.6192,-8591.2168
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Theridran|r
    .trainer >>Train your class spells
	.target Theridran
step << Warlock
    #optional
    #completewith next
    .goto 1453/0,988.44,-8942.15,20,0
    .goto 1453/0,1015.33,-8978.9,15 >> Travel to The Slaughtered Lamb and go downstairs
step << Warlock
    .goto 1453/0,1029.89,-8971.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >> Train your class spells
    .train 6222,1
    .target Ursula Deline
step << Mage
    #optional
    #completewith next
    .goto 1453/0,874.32,-9014.67,10 >> Travel to the Mage Tower
step << Mage
    .goto 1453/0,885.34,-9006.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elsharin|r
    .train 2137,1
    .trainer >> Train your class spells
    .target Elsharin
step << Priest/Paladin
    #optional
    #completewith next
    .goto 1453/0,809.52,-8579.22,20 >> Travel to the Stormwind Cathedral
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arthur the Faithful|r
    .goto 1453/0,859.13,-8559.14,10,0
    .goto 1453/0,861.14,-8573.03
    .trainer >> Train your class spells
    .train 19742,1
    .target Arthur the Faithful
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Joshua|r
    .goto 1453/0,862.89,-8519.61
    .trainer >> Train your class spells
    .train 8122,1
    .target Brother Joshua
step
    #label NEWestfallEnd --hidden step for #include
step
    .goto 1453/0,765.700,-8804.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Catherine Leland|r
    >>|cRXP_BUY_Buy one|r |T134335:0|t[Shiny Bauble] |cRXP_BUY_and three|r |T134324:0|t[Nightcrawlers] |cRXP_BUY_from her. This is for a 900xp quest|r
    .collect 6529,1,95065,1 --|1/1 Shiny Bauble
    .collect 6530,3,95065,1 --|3/3 Nightcrawlers
    .target Catherine Leland
step << Shaman -- Shaman accepts now isntead of later due to arriving back from tram, not boat like the rest
    .goto 1453/0,1193.100,-8328.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Manifest Clerk Philmor::268511|r 
    .target Manifest Clerk Philmor::268511
    .accept 97220 >>Accept Philmor's Favor
step
    .goto 1453/0,1269.100,-8540.601
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gilbert Gray::267118|r
    .target Gilbert Gray::267118
    .accept 95065 >>Accept Fishin' Time
    .turnin 95065 >>Turn in Fishin' Time
step
    #optional
    #requires DockTravel
    #label DarkshoreCook1
    #completewith DarkshoreBoat
    >>|cRXP_WARN_On the Boat if it just arrived or on the dock if the boat just left:|r
    .cast 818 >>|cRXP_WARN_Create a|r |T135805:0|t[Basic Campfire] |cRXP_WARN_(in your Profession Book)|r
    .usespell 818
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step
    #optional
    #requires DarkshoreCook1
    #label DarkshoreCook2
    #completewith DarkshoreBoat
    >>|cRXP_WARN_On the Boat if it just arrived or on the dock if the boat just left:|r
    .cast 818 >>|cRXP_WARN_Create a|r |T135805:0|t[Basic Campfire] |cRXP_WARN_(in your Profession Book)|r
    .usespell 818
    .zoneskip Darkshore
    .itemcount 769,<1 --Chunk of Boar Meat (<1)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step
    #optional
    #requires DarkshoreCook2
    #label DarkshoreCook3
    #completewith DarkshoreBoat
    >>|cRXP_WARN_On the Boat if it just arrived or on the dock if the boat just left:|r
    .cast 818 >>|cRXP_WARN_Create a|r |T135805:0|t[Basic Campfire] |cRXP_WARN_(in your Profession Book)|r
    .usespell 818
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,<1 --Stringy Wolf Meat (<1)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step
    #optional
    #requires DarkshoreCook3
    #label DarkshoreCook4
    #completewith DarkshoreBoat
    +|cRXP_WARN_You need 50|r |T133971:0|t[Cooking] |cRXP_WARN_for a quest in Duskwood later|r
    >>|T133971:0|t[Cook] |cRXP_WARN_the following items:|r
    >>|T133971:0|t[Cook] |cRXP_WARN_the|r |T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r |cRXP_WARN_into|r |T133974:0|t[Roasted Boar Meat]
    >>|T133971:0|t[Cook] |cRXP_WARN_the|r |T133970:0|t|cRXP_LOOT_[Stringy Wolf Meat]|r |cRXP_WARN_into|r |T133974:0|t[Charred Wolf Meat]
    .usespell 2550
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step
    #optional
    #requires DarkshoreCook4
    #label DarkshoreCook5
    #completewith DarkshoreBoat
    +|cRXP_WARN_You need 50|r |T133971:0|t[Cooking] |cRXP_WARN_for a quest in Duskwood later|r
    >>|T133971:0|t[Cook] |cRXP_WARN_the|r |T133970:0|t|cRXP_LOOT_[Stringy Wolf Meat]|r |cRXP_WARN_into|r |T133974:0|t[Charred Wolf Meat]
    .usespell 2550
    .zoneskip Darkshore
    .itemcount 769,<1 --Chunk of Boar Meat (<1)
    .itemcount 2672,1 --Stringy Wolf Meat (1)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step
    #optional
    #requires DarkshoreCook5
    #label DarkshoreCook6
    #completewith DarkshoreBoat
    +|cRXP_WARN_You need 50|r |T133971:0|t[Cooking] |cRXP_WARN_for a quest in Duskwood later|r
    >>|T133971:0|t[Cook] |cRXP_WARN_the|r |T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r |cRXP_WARN_into|r |T133974:0|t[Roasted Boar Meat]
    .usespell 2550
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1)
    .itemcount 2672,<1 --Stringy Wolf Meat (<1)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step
    #optional
    .goto 1453/0,1330.100,-8645.400
    >>|cRXP_WARN_Level your|r |T135966:0|t[First Aid] |cRXP_WARN_while waiting for the boat to Darkshore if needed|r
    .zone Darkshore >> Take the boat to Darkshore
    .skill firstaid,<1,1 -- shows if firstaid is >1
step
    #label DarkshoreBoat
    .goto 1453/0,1330.100,-8645.400
    .zone Darkshore >> Take the boat to Darkshore
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group RestedXP Forever Guide (A)
#subgroup Speedrun Guide 1-20
--#groupid RXP-SRGCE-A1
#name 14-16 Darkshore
#displayname 11-16 Darkshore/Westfall << NightElf
#displayname 13-16 Darkshore << Dwarf Hunter/Human Hunter
#displayname 15-16 Darkshore << !NightElf/!Dwarf/!Human Hunter
#next 16-19 Darkshore


-- #displayname 11-16 Darkshore << NightElf/Dwarf Hunter !SoD
-- #displayname 15-17 Darkshore << !NightElf !Dwarf/!Hunter !SoD
-- #displayname 13-18 Darkshore << Dwarf Hunter/!NightElf sod

step << NightElf
    #label WashedA
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .accept 3524 >> Accept Washed Ashore
    .target Gwennyth Bly'Leggonde
step << NightElf !Druid
    .goto 1439,36.767,44.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Laird|r
    .turnin 6342 >> Turn in Flight to Auberdine
    .target Laird
step << Druid NightElf
    .goto 1439,36.767,44.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Laird|r
    .turnin 6342 >> Turn in Flight to Auberdine
    .accept 6343 >> Accept Return to Nessa
    .target Laird
step << NightElf
    #optional
    #completewith next
    .goto 1439,36.826,44.150,5,0
    .goto 1439,36.688,43.952,8 >> Travel up the ramps toward |cRXP_FRIENDLY_Wizbang Cranktoggle|r
step << !NightElf
    .goto 1439,35.743,43.710
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cerellean Whiteclaw|r
    >>|cRXP_WARN_You may need to wait out his RP if someone else just turned in|r
    .accept 963 >> Accept For Love Eternal
    .target Cerellean Whiteclaw
    .xp <11,1
step << !NightElf
    #optional
    #completewith next
    .goto 1439/1,525.800,6414.800,8 >> Travel up the ramp toward |cRXP_FRIENDLY_Wizbang Cranktoggle|r
step
    .goto 1439,36.976,44.135
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wizbang Cranktoggle|r upstairs
    .accept 983 >> Accept Buzzbox 827
    .target Wizbang Cranktoggle
step
    .goto 1439/1,515.55,6406.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shaussiy|r downstairs
    .home >> Set your Hearthstone to Auberdine
    .target Innkeeper Shaussiy
    .bindlocation 442
step
    #optional << NightElf
    .goto 1439,37.322,43.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Barithras Moonshade|r
    .accept 947 >> Accept Cave Mushrooms
    .target Barithras Moonshade
    .xp <12,1
step
    #optional << NightElf
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Glynda Nal'Shea|r
    .accept 4811 >> Accept The Red Crystal
    .target Sentinel Glynda Nal'Shea
    .xp <12,1
step
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tharnariun Treetender|r
    .accept 2118 >> Accept Plagued Lands
    .target Tharnariun Treetender
step
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Terenthis|r
    .accept 984 >> Accept How Big a Threat?
    .target Terenthis
step
    .goto 1439/1,503.100,6402.100
    >>Click the |cRXP_PICK_Wanted Poster|r
    .accept 98025 >>Accept WANTED: Jai'vhanel
step
    #ah
    #optional
    .goto 1439/1,577.38,6371.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gubber Blump|r
    .accept 1138 >> Accept Fruit of the Sea << !sod/Hunter/Druid
    .accept 1141 >> Accept The Family and the Fishing Pole
    .turnin 1141 >> Turn in The Family and the Fishing Pole
    .itemcount 12238,6 -- Darkshore Grouper (6)
    .target Gubber Blump
    .xp <15,1
step
    #ah
    .goto 1439/1,577.38,6371.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gubber Blump|r
    .accept 1141 >> Accept The Family and the Fishing Pole
    .turnin 1141 >> Turn in The Family and the Fishing Pole
    .itemcount 12238,6 -- Darkshore Grouper (6)
    .target Gubber Blump
step
    #optional
    .goto 1439/1,577.38,6371.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gubber Blump|r
    .accept 1138 >> Accept Fruit of the Sea
    .target Gubber Blump
    .xp <15,1
step << !NightElf
    #label WashedA
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .accept 3524 >> Accept Washed Ashore
    .target Gwennyth Bly'Leggonde
step << !NightElf
    .goto 1439/1,561.66,6343.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caylais Moonfeather|r
    .fp Auberdine >> Get the Auberdine flight path
    .target Caylais Moonfeather



step << Dwarf Hunter/Human Hunter
    #optional
    #completewith RabidThistle
    #loop
    .goto 1439/1,272.54,5255.27,0
    .goto 1439/1,271.23,4902.88,0
    .goto 1439/1,438.91,5131.69,0
    .goto 1439/1,272.54,5255.27,40,0
    .goto 1439/1,271.23,4902.88,40,0
    .goto 1439/1,438.91,5131.69,40,0
    >>|cRXP_WARN_Send your pet to attack a |cRXP_ENEMY_Thistle Bear|r. Once your pet is stunned by the |cRXP_ENEMY_Thistle Bear|r, abandon your pet and start taming it|r
    .train 16828 >>|cRXP_WARN_Cast|r |T132164:0|t[Tame Beast] |cRXP_WARN_on a |cRXP_ENEMY_Thistle Bear|r to tame it|r
    .target Thistle Bear
    .train 17255,1 --skips if they also already know bite r2
step
    #optional
    #completewith FirstWashed
    .goto 1439,43.509,33.207,0
    >>Kill |cRXP_ENEMY_Foreststrider Fledglings|r. Loot them for their |cRXP_LOOT_Strider Meat|r
    >>|cRXP_WARN_Be careful as they|r |T132307:0|t[Flee] |cRXP_WARN_at <30% health|r
    .collect 5469,5,2178,1 --Strider Meat (5)
    .mob Foreststrider Fledgling
    .subzoneskip 442
step
    #sticky
    #label BuzzBox1
    #loop
    .goto 1439,36.051,44.757,0
    .goto 1439,36.280,50.071,0
    .goto 1439,35.275,53.464,0
    .waypoint 1439,36.091,51.501,60,0
    .waypoint 1439,37.115,52.368,60,0
    .waypoint 1439,37.130,53.663,60,0
    .waypoint 1439,36.740,55.221,60,0
    .waypoint 1439,35.655,55.872,60,0
    .waypoint 1439,35.088,55.085,60,0
    .waypoint 1439,35.275,53.464,60,0
    .waypoint 1439,36.091,51.501,60,0
    .waypoint 1439,36.280,50.071,60,0
    .waypoint 1439,36.523,48.554,60,0
    .waypoint 1439,35.977,48.408,60,0
    .waypoint 1439,35.902,47.145,60,0
    .waypoint 1439,35.759,45.455,60,0
    .waypoint 1439,36.051,44.757,60,0
    >>Kill |cRXP_ENEMY_Pygmy Tide Crawlers|r and |cRXP_ENEMY_Young Reef Crawlers|r. Loot them for their |cRXP_LOOT_Crawler Legs|r
    >>|cRXP_WARN_You may need to go in the water for them|r
    >>|cRXP_WARN_Even if some of these are gray, still complete the quest as it is part of a chain|r << !NightElf
    .complete 983,1 --Crawler Leg (6)
    .mob Pygmy Tide Crawler
    .mob Young Reef Crawler
    .isOnQuest 983
step
    .goto 1439,36.371,50.920
    >>Open the |cRXP_PICK_Beached Sea Creature|r. Loot it for the |cRXP_LOOT_Sea Creature Bones|r
    .complete 3524,1 --Sea Creature Bones (1)
step << Druid
    #ah
    #optional
    #completewith CliffspringEnd
    #label GatheringQ
    .skill herbalism,15 >>|cRXP_WARN_Level your|r |T136065:0|t[Herbalism] |cRXP_WARN_to 15 to be able to herb|r |T134187:0|t[Earthroot] |cRXP_WARN_for an important class quest soon. You can unlearn it afterwards|r
    >>|cRXP_WARN_If you would rather purchase 5|r |T134187:0|t[Earthroot] |cRXP_WARN_from the Auction House later, skip this step|r
    .collect 2449,5,6123,1 --Earthroot (5)
    .disablecheckbox
step << Druid
    #ssf
    #optional
    #completewith CliffspringEnd
    #label GatheringQ
    .skill herbalism,15 >>|cRXP_WARN_Level your|r |T136065:0|t[Herbalism] |cRXP_WARN_to 15 to be able to gather 5|r |T134187:0|t[Earthroot] |cRXP_WARN_for an important class quest soon. You can unlearn it afterwards|r
    .collect 2449,5,6123,1 --Earthroot (5)
    .disablecheckbox
step << Druid
    #optional
    #completewith CliffspringEnd
    #requires GatheringQ
    >>|cRXP_WARN_Collect 5 |T134187:0|t[Earthroot] via |T136065:0|t[Herbalism] and rarely |cRXP_PICK_Battered Chests|r for a future class quest|r
    .collect 2449,5,6123,1 --Earthroot (5)
    .skill herbalism,<15,1
step
    #completewith next
    >>|cRXP_WARN_Use|r |T134335:0|t[Tharnariun's Hope] |cRXP_WARN_on a|r |cRXP_ENEMY_Rabid Thistle Bear|r|cRXP_WARN_. It can be used from any range as long as you're targeting the|r |cRXP_ENEMY_Bear|r
    >>|cRXP_WARN_==DO NOT USE THE QUEST ITEM IF THERES NO |cRXP_ENEMY_BEAR|r NEARBY==|r
    >>|cRXP_WARN_You can waste the trap and make the quest impossible to complete! If it happens to you you need to return to the questgiver and ask for another trap|r
    .complete 2118,1 --Rabid Thistle Bear Captured (1)
    .unitscan Rabid Thistle Bear
    .use 7586
step
    #label FurlbogCamp
    .goto 1439/1,393.72,5993.24
    >>Run toward the edge of the Furbolg Camp
    .complete 984,1 -- Find a corrupt furbolg camp
step
    #sticky
    #label RabidThistle
    #loop
    .goto 1439,38.226,52.780,0
    .goto 1439,39.129,59.176,0
    .goto 1439,38.226,52.780,50,0
    .goto 1439,38.527,54.661,50,0
    .goto 1439,38.037,56.815,50,0
    .goto 1439,38.095,58.395,50,0
    .goto 1439,38.696,57.874,50,0
    .goto 1439,39.129,59.176,50,0
    >>|cRXP_WARN_Use|r |T134335:0|t[Tharnariun's Hope] |cRXP_WARN_on a|r |cRXP_ENEMY_Rabid Thistle Bear|r|cRXP_WARN_. It can be used from any range as long as you're targeting the bear|r
    >>|cRXP_WARN_==DO NOT USE THE QUEST ITEM IF THERES NO BEAR NEARBY==|r
    >>|cRXP_WARN_You can waste the trap and make the quest impossible to complete! If it happens to you you need to return to the questgiver and ask for another trap|r
    .complete 2118,1 --Rabid Thistle Bear Captured (1)
    .unitscan Rabid Thistle Bear
    .use 7586
step << NightElf
    #loop
    .goto 1439,36.051,44.757,0
    .goto 1439,36.280,50.071,0
    .goto 1439,35.275,53.464,0
    .goto 1439,36.051,44.757,60,0
    .goto 1439,35.759,45.455,60,0
    .goto 1439,35.902,47.145,60,0
    .goto 1439,35.977,48.408,60,0
    .goto 1439,36.523,48.554,60,0
    .goto 1439,36.280,50.071,60,0
    .goto 1439,36.091,51.501,60,0
    .goto 1439,37.115,52.368,60,0
    .goto 1439,37.130,53.663,60,0
    .goto 1439,36.740,55.221,60,0
    .goto 1439,35.655,55.872,60,0
    .goto 1439,35.088,55.085,60,0
    .goto 1439,35.275,53.464,60,0
    .goto 1439,36.091,51.501,60,0
    .xp 11+7300 >> Grind to 7300+/8800xp
step
    #label invisThistle
    #optional
    #requires RabidThistle
--XXREQ Placeholder invis step until multiple requires per step
step
    #requires BuzzBox1
    .goto 1439,36.634,46.250
    >>Click the |cRXP_PICK_Buzzbox 827|r on the ground
    .turnin 983 >> Turn in Buzzbox 827
    .accept 1001 >> Accept Buzzbox 411
step
    #label FirstWashed
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 3524 >> Turn in Washed Ashore
    .accept 4681 >> Accept Washed Ashore
    .target Gwennyth Bly'Leggonde

step << Druid NightElf
    #optional
    #completewith Lunaclaw
    .goto 1439,43.126,45.593,15 >> Enter the |cRXP_PICK_Moonkin Stone|r cave
step << Druid NightElf
    #optional
    #completewith Lunaclaw
    .goto 1439/1,92.42,6325.98
    .cast 18974 >>|cRXP_WARN_Use the|r |T132857:0|t[Cenarion Moondust] |cRXP_WARN_at the |cRXP_PICK_Moonkin Stone|r inside the cave to summon |cRXP_ENEMY_Lunaclaw|r at the entrance of the cave|r
    .timer 4,Body and Heart RP
    .use 15208
    .isOnQuest 6001
step << Druid NightElf
    #label Lunaclaw
    .goto 1439/1,119.27,6344.32
    >>Kill |cRXP_ENEMY_Lunaclaw|r
    .complete 6001,1 --Defeat Lunaclaw (x1)
    .use 15208
    .mob Lunaclaw
step << Druid NightElf
    #label RedCrystal
    .isOnQuest 4811
    .goto 1439,47.314,48.676
    >>Travel up to the |cRXP_PICK_Mysterious Red Crystal|r
    >>|cRXP_WARN_Be careful of the two group of 2 |cRXP_ENEMY_Raging Moonkins|r west of the |cRXP_PICK_Mysterious Red Crystal|r as the duos closest to each other are leashed together|r
    .complete 4811,1 --Locate the large, red crystal on Darkshore's eastern mountain range
step << Druid NightElf
    #optional
	#completewith next
	.cast 18960 >> Cast Teleport: Moonglade
	.zoneskip Moonglade
step << Druid NightElf
    #completewith next
    .goto 1450/1,-2400.33,7795.33--c:Moonglade,44.148,45.229
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Silva Fil'naveth|r
    .fly Teldrassil >> Fly to Darnassus
    .skipgossip
    .timer 153,Darnassus
    .target Silva Fil'naveth
    .zoneskip Darnassus
    .zoneskip Teldrassil
step << NightElf Druid
    .goto 1438/1,950.52,8694.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nessa Shadowsong|r
    .turnin 6343 >> Turn in Return to Nessa
    .target Nessa Shadowsong
step << NightElf Druid
    #optional
    #completewith next
    .goto 1438/1,965.80,8780.95
    .zone Darnassus >> Take the purple portal into Darnassus
step << Druid NightElf
    .goto 1457/1,2563.98,10179.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mathrengyl Bearwalker|r
    .turnin 6001 >> Turn in Body and Heart << NightElf
    .trainer >> Train your class spells
    .target Mathrengyl Bearwalker
    .isOnQuest 6001
step << Druid NightElf
    #completewith next
    .goto 1457/1,2636.53,9956.80
    .zone Teldrassil >> Travel through the purple portal to Rut'theran Village
    .zoneskip Darkshore
    .subzoneskip 702
step << Druid NightElf
    .goto 1438/1,841.10,8640.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vesprystus|r
    .fly Darkshore >> Fly to Darkshore
    .target Vesprystus
    .zoneskip Darkshore
step << Druid NightElf
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Glynda Nal'Shea|r
    .turnin 4811 >> Turn in The Red Crystal
    .accept 4812 >> Accept As Water Cascades
    .target Sentinel Glynda Nal'Shea
    .isOnQuest 4811
step << Druid NightElf
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Glynda Nal'Shea|r
    .accept 4812 >> Accept As Water Cascades
    .target Sentinel Glynda Nal'Shea
    .isQuestTurnedIn 4811
step << Druid NightElf
    .isOnQuest 4812
    .goto 1439,37.767,44.001
    >>|cRXP_WARN_Use the|r |T134865:0|t[Empty Water Tube] |cRXP_WARN_at the Auberdine moonwell|r
    .complete 4812,1 --Moonwell Water Tube (1)
    .use 14338
step
    #optional
    #completewith next
    .goto 1439,36.806,44.137,8,0
    .goto 1439,35.743,43.710,12 >> Travel toward |cRXP_FRIENDLY_Cerellean Whiteclaw|r on the dock
step
    .goto 1439,35.743,43.710
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cerellean Whiteclaw|r
    >>|cRXP_WARN_You may need to wait out his RP if someone else just turned in|r
    .accept 963 >> Accept For Love Eternal
    .target Cerellean Whiteclaw
step
    #optional
    #completewith SeaT1
    .goto 1439,32.432,43.744,15 >> Travel to the end of the dock, then jump into the water
step
    #optional
    #completewith washed1
    .goto 1439/1,741.52,6570.95,0
    .goto 1439/1,915.10,6333.84,0
    .goto 1439/1,778.20,6231.66,0
    >>Kill |cRXP_ENEMY_Darkshore Threshers|r. Loot them for their |cRXP_LOOT_Thresher Eyes|r
    .complete 1001,1 --Thresher Eye (3)
    .mob Darkshore Thresher
    .isOnQuest 1001
step
    #label SeaT1
    .goto 1439,31.841,46.304
    >>Open the |cRXP_PICK_Skeletal Sea Turtle|r. Loot it for the |cRXP_LOOT_Sea Turtle Remains|r
    .complete 4681,1 --Sea Turtle Remains (1)
step
    #optional
    .goto 1439/1,577.38,6371.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gubber Blump|r
    .accept 1138 >> Accept Fruit of the Sea
    .target Gubber Blump
    .xp <15,1
step
    #label washed1
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4681 >> Turn in Washed Ashore
    .target Gwennyth Bly'Leggonde
step
    .goto 1439,37.322,43.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Barithras Moonshade|r
    .accept 947 >> Accept Cave Mushrooms
    .target Barithras Moonshade
step
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Glynda Nal'Shea|r
    .accept 4811 >> Accept The Red Crystal
    .target Sentinel Glynda Nal'Shea
step
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tharnariun Treetender|r
    .turnin 2118 >> Turn in Plagued Lands
    .accept 2138 >> Accept Cleansing of the Infected
    .target Tharnariun Treetender
step
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Terenthis|r
    .turnin 984 >> Turn in How Big a Threat?
    .accept 985 >> Accept How Big a Threat?
    .accept 4761 >> Accept Thundris Windweaver
    .target Terenthis
step << NightElf Warrior/NightElf Rogue
    #sticky
    #label DeepOceanStart
    .goto 1439,38.107,41.165,0,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gorbold Steelhand|r
    .accept 982 >> Accept Deep Ocean, Vast Sea
    .target Gorbold Steelhand
    .xp <13,1
step << NightElf Warrior/NightElf Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kurdram Stonehammer|r and |cRXP_FRIENDLY_Delfrum Flintbeard|r
    .train 2575 >> Train |T134708:0|t[Mining]
    .target +Kurdram Stonehammer
    .goto 1439/1,436.36,6542.65
    .train 2018 >> Train |T136241:0|t[Blacksmithing]
    .target +Delfrum Flintbeard
    .goto 1439/1,440.16,6545.84
    >>|cRXP_WARN_This will allow you to make|r |T135248:0|t[Rough Sharpening Stones] |cRXP_WARN_which increase your melee damage by 2|r << Warrior/Rogue
    >>|cRXP_WARN_If you don't want to do this, skip this step|r
step << NightElf Warrior/NightElf Rogue
    #optional
    .goto 1439/1,443.37,6538.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elisa Steelhand|r
    >>|cRXP_BUY_Buy a|r |T134708:0|t[Mining Pick] |cRXP_BUY_from her|r
    .target Elisa Steelhand
    .collect 2901,1 -- Mining Pick (1)
    .train 2575,3 --Mining Trained
step << NightElf Warrior/NightElf Rogue
    #optional
    #completewith Bashal1
    .cast 2580 >> |cRXP_WARN_Cast|r |T136025:0|t[Find Minerals]
    .usespell 2580
    .train 2575,3 --Mining Trained
step << !NightElf/!Warrior !Rogue
    .goto 1439,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gorbold Steelhand|r
    .accept 982 >> Accept Deep Ocean, Vast Sea
    .target Gorbold Steelhand
    .xp <13,1
step
    #optional
    #requires DeepOceanStart << NightElf Warrior/NightElf Rogue
    .goto 1439/1,472.32,6556.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alanndarian Nightsong|r
    .accept 2178 >> Accept Easy Strider Living
    .turnin 2178 >> Turn in Easy Strider Living
    .target Alanndarian Nightsong
    .itemcount 5469,5 -- Strider Meat (5)
    .skill cooking,<10,1 -- step only displays if skill is 10 or higher
step << NightElf Rogue
    .goto 1439,37.575,40.348
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Naram Longclaw|r
    .vendor 4183 >>|cRXP_BUY_Buy a|r |T135640:0|t[Jambiya] |cRXP_BUY_from him if you can afford it|r
    .collect 2207,1 -- Jambiya (1)
    .disablecheckbox
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.10
--  .money <0.2390
    .target Naram Longclaw
step
    #optional
    #completewith next
    .goto 1439/1,488.69,6564.830
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dalmond|r inside
    .vendor 4182 >> |cRXP_BUY_Buy as many|r |T133634:0|t[Small Brown Pouches] |cRXP_BUY_or|r |T133634:0|t[Brown Leather Satchels] |cRXP_BUY_as you need from him|r
    >>|cRXP_BUY_Buy|r |T132382:0|t[Sharp Arrows] |cRXP_BUY_or|r |T132384:0|t[Heavy Shots] |cRXP_BUY_from him until your Quiver/Ammo Pouch is full|r << Hunter
    .target Dalmond
step
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thundris Windweaver|r
    .turnin 4761 >> Turn in Thundris Windweaver
    .accept 4762 >> Accept The Cliffspring River
    .accept 954 >> Accept Bashal'Aran
    .accept 958 >> Accept Tools of the Highborne << !sod
    .target Thundris Windweaver
    .xp >16,1
--XX if 16+, skip Tools
step
    #optional
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thundris Windweaver|r
    .turnin 4761 >> Turn in Thundris Windweaver
    .accept 4762 >> Accept The Cliffspring River
    .accept 954 >> Accept Bashal'Aran
    .target Thundris Windweaver
    .xp >18,1
--XX if 18+, skip Bashal
step
    #optional
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thundris Windweaver|r
    .turnin 4761 >> Turn in Thundris Windweaver
    .accept 4762 >> Accept The Cliffspring River

----Start of NE >1.49x catchup (everyone 1x) Early boat section----


step
    #completewith MistVeil
    .goto 1439/1,620.35,6768.76,0
    .goto 1439/1,602.66,6924.21,0
    .goto 1439/1,537.82,7023.33,0
    .goto 1439/1,404.85,7099.75,0
    .goto 1439/1,310.53,7077.48,0
    .goto 1439/1,620.35,6768.76,55,0
    .goto 1439/1,602.66,6924.21,55,0
    >>Kill |cRXP_ENEMY_Darkshore Threshers|r. Loot them for their |cRXP_LOOT_Thresher Eyes|r
    .complete 1001,1 --Thresher Eye (3)
    .mob Darkshore Thresher
    .isOnQuest 1001
    .isOnQuest 982
step
    #optional
    #completewith next
    +|cRXP_WARN_Press Escape, then go into -> Options -> Controls|r
    >>|cRXP_WARN_Check "Enable Interact Key" and bind the "Interact with Target" option to a key|r
step
    .goto 1439,38.213,28.754
--  .goto 1439,38.234,28.796
    >>|cRXP_WARN_==BE AWARE OF YOUR BREATH METER==|r
    >>|cRXP_WARN_Swim underwater to the outside of the back of the boat|r
    >>|cRXP_WARN_On the arrow location, press your "Interact with Target" keybind to loot the |cRXP_LOOT_Silver Dawning's Lockbox|r from outside the boat|r
    >>|cRXP_WARN_If you don't want to do this, swim underwater into the bottom floor of the boat then loot the |cRXP_LOOT_Silver Dawning's Lockbox|r inside|r
    .complete 982,1 --Silver Dawning's Lockbox (1)
    .isOnQuest 982
step
    #label MistVeil
    .goto 1439,39.581,27.487
--  .goto 1439,39.629,27.462
    >>|cRXP_WARN_==BE AWARE OF YOUR BREATH METER==|r
    >>|cRXP_WARN_Swim underwater to the outside of the back of the boat|r
    >>|cRXP_WARN_On the arrow location, press your "Interact with Target" keybind to loot the |cRXP_LOOT_Mist Veil's Lockbox|r from outside the boat|r
    >>|cRXP_WARN_If you don't want to do this, swim underwater into the bottom floor of the boat then loot the |cRXP_LOOT_Mist Veil's Lockbox|r inside|r
    .complete 982,2 --Mist Veil Lockbox (1)
    .isOnQuest 982
step
    #loop
    .goto 1439/1,310.53,7077.48,0
    .goto 1439/1,404.85,7099.75,0
    .goto 1439/1,537.82,7023.33,0
    .goto 1439/1,310.53,7077.48,55,0
    .goto 1439/1,404.85,7099.75,55,0
    .goto 1439/1,537.82,7023.33,55,0
    .goto 1439/1,602.66,6924.21,55,0
    .goto 1439/1,620.35,6768.76,55,0
    .goto 1439/1,602.66,6924.21,55,0
    .goto 1439/1,620.35,6768.76,55,0
    >>Kill |cRXP_ENEMY_Darkshore Threshers|r. Loot them for their |cRXP_LOOT_Thresher Eyes|r
    .complete 1001,1 --Thresher Eye (3)
    .mob Darkshore Thresher
    .isOnQuest 1001
step
    #optional
    .goto 1439,41.901,31.339
    >>Click the |cRXP_PICK_Beached Sea Creature|r
    .accept 4723 >> Accept Beached Sea Creature
    .isOnQuest 1001
step
    #optional
    .goto 1439,41.901,31.339
    >>Click the |cRXP_PICK_Beached Sea Creature|r
    .accept 4723 >> Accept Beached Sea Creature
    .isOnQuest 982
step
    .goto 1439,41.960,28.616
    >>Click the |cRXP_PICK_Buzzbox 411|r on the ground
    .turnin 1001 >> Turn in Buzzbox 411
    .accept 1002 >> Accept Buzzbox 323
    .isQuestComplete 1001
step
    #optional
    .goto 1439,41.960,28.616
    >>Click the |cRXP_PICK_Buzzbox 411|r on the ground
    .accept 1002 >> Accept Buzzbox 323
    .isQuestTurnedIn 1001
step
    #optional
    #completewith AsterionTravel
    .goto 1439,44.190,33.697,0
    >>Kill |cRXP_ENEMY_Moonstalker Runts|r. Loot them for their |cRXP_LOOT_Moonstalker Fangs|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .isQuestTurnedIn 1001


----End of NE >1.49x catchup (everyone 1x) Early boat section----


 step
    #optional
    #completewith AsterionTravel
    .goto 1439,43.509,33.207,0
    >>Kill |cRXP_ENEMY_Foreststrider Fledglings|r. Loot them for their |cRXP_LOOT_Strider Meat|r
    >>|cRXP_WARN_Be careful as they|r |T132307:0|t[Flee] |cRXP_WARN_at <30% health|r
    .collect 5469,5,2178,1 --Strider Meat (5)
    .mob Foreststrider Fledgling
step
    #optional
    #label AsterionTravel
    #completewith Bashal1
    .goto 1439,44.629,36.316,20,0
    .goto 1439,44.168,36.289,15 >> Travel toward |cRXP_FRIENDLY_Asterion|r
step
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Asterion|r
    >>|cRXP_WARN_Avoid killing |cRXP_ENEMY_Wild Grells|r and |cRXP_ENEMY_Vile Sprites|r en-route|r
    .turnin 954 >> Turn in Bashal'Aran
    .accept 955 >> Accept Bashal'Aran
    .target Asterion
    .isOnQuest 954
    .xp >16,1
--XX skip Bashal Aran qline if 16+
step
    #optional
    #label Bashal1
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Asterion|r
    >>|cRXP_WARN_Avoid killing |cRXP_ENEMY_Wild Grells|r and |cRXP_ENEMY_Vile Sprites|r en-route|r
    .turnin 954 >> Turn in Bashal'Aran
    .target Asterion
    .isOnQuest 954
--XX Turn in Breadcrumb if you picked it up earlier before 18
step
    #loop
    .goto 1439,44.528,36.587,0
    .goto 1439,45.334,39.393,0
    .goto 1439,46.096,36.541,0
    .goto 1439,44.528,36.587,50,0
    .goto 1439,44.435,37.404,50,0
    .goto 1439,44.443,38.202,50,0
    .goto 1439,44.493,39.008,50,0
    .goto 1439,44.821,39.711,50,0
    .goto 1439,45.334,39.393,50,0
    .goto 1439,45.167,38.652,50,0
    .goto 1439,45.091,37.865,50,0
    .goto 1439,45.495,37.019,50,0
    .goto 1439,45.831,36.790,50,0
    .goto 1439,46.096,36.541,50,0
    .goto 1439,46.906,36.171,50,0
    .goto 1439,47.431,36.151,50,0
    .goto 1439,47.022,37.083,50,0
    .goto 1439,47.166,37.580,50,0
    .goto 1439,45.827,36.812,50,0
    >>Kill |cRXP_ENEMY_Wild Grells|r and |cRXP_ENEMY_Vile Sprites|r. Loot them for their |cRXP_LOOT_Grell Earrings|r
    >>|cRXP_WARN_Avoid killing |cRXP_ENEMY_Deth'ryll Satyrs|r for now|r
    .complete 955,1 --Grell Earring (8)
    .mob Wild Grell
    .mob Vile Sprite
    .isOnQuest 955
step
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Asterion|r
    .turnin 955 >> Turn in Bashal'Aran
    .accept 956 >> Accept Bashal'Aran
    .target Asterion
    .isQuestComplete 955
step
    #optional
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Asterion|r
    .accept 956 >> Accept Bashal'Aran
    .target Asterion
    .isQuestTurnedIn 955
step
    #completewith MeatFangEgg1
    #optional
    .abandon 955 >> Abandon Bashal'Aran
    .isQuestAvailable 955
step
    #loop
    .goto 1439,45.393,36.472,0
    .goto 1439,45.429,39.773,0
    .goto 1439,47.368,36.774,0
    .goto 1439,45.393,36.472,45,0
    .goto 1439,45.938,37.800,45,0
    .goto 1439,45.938,38.040,45,0
    .goto 1439,46.531,39.134,45,0
    .goto 1439,45.429,39.773,45,0
    .goto 1439,47.262,37.674,45,0
    .goto 1439,47.920,37.228,45,0
    .goto 1439,47.368,36.774,45,0
    >>Kill |cRXP_ENEMY_Deth'ryll Satyrs|r. Loot them for the |cRXP_LOOT_Ancient Moonstone Seal|r
    >>|cRXP_WARN_Be aware that they do not have dynamic respawns|r
    .complete 956,1 --Ancient Moonstone Seal (1)
    .mob Deth'ryll Satyr
    .isQuestTurnedIn 955
step
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Asterion|r
    .turnin 956 >> Turn in Bashal'Aran
    .accept 957 >> Accept Bashal'Aran
    .target Asterion
    .isQuestComplete 956
step
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Asterion|r
    .accept 957 >> Accept Bashal'Aran
    .target Asterion
    .isQuestTurnedIn 956
step << NightElf/Dwarf/Human Hunter
    #optional
    .goto 1439,44.528,36.587,0
    .goto 1439,45.334,39.393,0
    .goto 1439,46.096,36.541,0
    .goto 1439,44.528,36.587,50,0
    .goto 1439,44.435,37.404,50,0
    .goto 1439,44.443,38.202,50,0
    .goto 1439,44.493,39.008,50,0
    .goto 1439,44.821,39.711,50,0
    .goto 1439,45.334,39.393,50,0
    .goto 1439,45.167,38.652,50,0
    .goto 1439,45.091,37.865,50,0
    .goto 1439,45.495,37.019,50,0
    .goto 1439,45.831,36.790,50,0
    .goto 1439,46.096,36.541,50,0
    .goto 1439,46.906,36.171,50,0
    .goto 1439,47.431,36.151,50,0
    .goto 1439,47.022,37.083,50,0
    .goto 1439,47.166,37.580,50,0
    .goto 1439,45.827,36.812,50,0
    .xp 13 >> Grind to level 13
step
    #optional
    #completewith AuberdineTurnin2 << NightElf/Hunter/Druid/Warrior
    #completewith AmethStart << !NightElf !Hunter !Druid !Warrior
    .goto 1439,43.509,33.207,0
    >>Kill |cRXP_ENEMY_Foreststrider Fledglings|r. Loot them for their |cRXP_LOOT_Strider Meat|r
    >>|cRXP_WARN_Be careful as they|r |T132307:0|t[Flee] |cRXP_WARN_at <30% health|r
    .collect 5469,5,2178,1 --Strider Meat (5)
    .mob Foreststrider Fledgling
    .subzoneskip 442
step
    #optional
    #completewith AuberdineTurnin2 << NightElf/Hunter/Druid/Warrior
    #completewith EndFirstMoonstalker << !NightElf !Hunter !Druid !Warrior
    >>Kill |cRXP_ENEMY_Moonstalker Runts|r. Loot them for their |cRXP_LOOT_Moonstalker Fangs|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .isQuestTurnedIn 1001
step
    #completewith RedCrystal
    >>Kill |cRXP_ENEMY_Moonkin|r. Loot them for their |T132832:0|t|cRXP_LOOT_[Small Eggs]|r
    >>|cRXP_WARN_This will be used to level your|r |T133971:0|t[Cooking] |cRXP_WARN_to 10 later|r
    .collect 6889,10,2178,1,0x20,cooking --Small Egg (1-9)
    .mob Young Moonkin
    .mob Raging Moonkin
    .mob Moonkin Oracle
    .mob Moonkin
    .skill cooking,10,1 -- shows if cooking is <10
    .skill cooking,<1,1 -- shows if cooking is >1
step
    #completewith AuberdineTurnin2 << NightElf/Hunter/Druid/Warrior
    >>Kill |cRXP_ENEMY_Moonkin|r. Loot them for their |T132832:0|t|cRXP_LOOT_[Small Eggs]|r
    >>|cRXP_WARN_This will be used to level your|r |T133971:0|t[Cooking] |cRXP_WARN_to 50 later|r
    >>|cRXP_WARN_Don't go out of your way to farm this now. Just remember to hold onto the eggs and start thinking how many skillups you still need to reach 50 cooking|r
    .collect 6889,50,90,1,0x20,cooking --Small Egg (10-49)
    .mob Young Moonkin
    .mob Raging Moonkin
    .mob Moonkin Oracle
    .mob Moonkin
    .skill cooking,<10,1 --XX Shows if cooking skill is 10-50
    .skill cooking,50,1
step
    #completewith LateTurtleStart
    >>Kill |cRXP_ENEMY_Moonkin|r. Loot them for their |T132832:0|t|cRXP_LOOT_[Small Eggs]|r
    >>|cRXP_WARN_This will be used to level your|r |T133971:0|t[Cooking] |cRXP_WARN_to 50 later|r
    >>|cRXP_WARN_Don't go out of your way to farm this now. Just remember to hold onto the eggs and start thinking how many skillups you still need to reach 50 cooking|r
    .collect 6889,50,90,1,0x20,cooking --Small Egg (10-49)
    .mob Young Moonkin
    .mob Raging Moonkin
    .mob Moonkin Oracle
    .mob Moonkin
    .skill cooking,<10,1 --XX Shows if cooking skill is 10-50
    .skill cooking,50,1
    .subzoneskip 442 --Auberdine
    .subzoneskip 447 --Ameth'Aran
step
    #label RedCrystal
    .goto 1439,47.314,48.676
    >>Travel up to the |cRXP_PICK_Mysterious Red Crystal|r
    >>|cRXP_WARN_Be careful of the two group of 2 |cRXP_ENEMY_Raging Moonkins|r west of the |cRXP_PICK_Mysterious Red Crystal|r as the duos closest to each other are leashed together|r
    .complete 4811,1 --Locate the large, red crystal on Darkshore's eastern mountain range

----Start of Early Red Crystal turnin Section (NE below 14 for xp, Hunters/Druids for staff wep upgrade)/Druid bear q final if not done earlier----


step << NightElf/Hunter/Warrior/Druid
    #optional
    #completewith Cascade
    .hs >> Hearth to Auberdine
    .cooldown item,6948,>0,1
    .subzoneskip 442
    .isQuestTurnedIn 6001 << Druid
step << NightElf/Hunter/Druid/Warrior
    #optional
    #label AuberdineTurnin2
    #completewith Cascade
    .goto 1439,37.703,43.393
    .subzone 442 >> Return to Auberdine
    .cooldown item,6948,<0,1 << !Druid
step << NightElf/Hunter/Druid/Warrior
    #optional
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Glynda Nal'Shea|r
    .turnin 4811 >> Turn in The Red Crystal
    .accept 4812 >> Accept As Water Cascades
    .target Sentinel Glynda Nal'Shea
    .xp >14,1 << Hunter/Druid
--XX If Night Elves, Hunters, or Druids are lower than level 14, do questline
step << Hunter/Druid/Warrior
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Glynda Nal'Shea|r
    .turnin 4811 >> Turn in The Red Crystal
    .accept 4812 >> Accept As Water Cascades
    .target Sentinel Glynda Nal'Shea
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.5 << Hunter/Druid
--XX If Hunters and Druids (in Era) have a worse weapon than the Oakthrush Staff, do the quest even if 14+
step << NightElf/Hunter/Druid/Warrior !Hunter
    #optional
    #label Cascade
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Glynda Nal'Shea|r
    .accept 4812 >> Accept As Water Cascades
    .target Sentinel Glynda Nal'Shea
    .isQuestTurnedIn 4811 --show step if Red Crystal turned in
step << NightElf/Hunter/Druid/Warrior
    #optional
    .goto 1439,37.767,44.001
    >>|cRXP_WARN_Use the|r |T134865:0|t[Empty Water Tube] |cRXP_WARN_at the Auberdine moonwell|r
    .complete 4812,1 --Moonwell Water Tube (1)
    .use 14338
    .isQuestTurnedIn 4811
step << NightElf/Hunter/Druid/Warrior
    #optional
    #completewith EndFirstMoonstalker
    >>Kill |cRXP_ENEMY_Foreststrider Fledglings|r. Loot them for their |cRXP_LOOT_Strider Meat|r
    >>|cRXP_WARN_Be careful as they|r |T132307:0|t[Flee] |cRXP_WARN_at <30% health|r
    .collect 5469,5,2178,1 --Strider Meat (5)
    .mob Foreststrider Fledgling
    .isQuestTurnedIn 4811
step << NightElf/Hunter/Druid/Warrior
    #optional
    #completewith EarlyCrystalEnd
    >>Kill |cRXP_ENEMY_Moonkin|r. Loot them for their |T132832:0|t|cRXP_LOOT_[Small Eggs]|r
    >>|cRXP_WARN_This will be used to level your|r |T133971:0|t[Cooking] |cRXP_WARN_to 10 later|r
    .collect 6889,10,2178,1,0x20,cooking --Small Egg (1-9)
    .mob Young Moonkin
    .mob Raging Moonkin
    .mob Moonkin Oracle
    .mob Moonkin
    .skill cooking,10,1 -- shows if cooking is <10
    .skill cooking,<1,1 -- shows if cooking is >1
    .isQuestTurnedIn 4811
step << NightElf/Hunter/Druid/Warrior
    #optional
    #completewith EarlyCrystalEnd
    >>Kill |cRXP_ENEMY_Moonkin|r. Loot them for their |T132832:0|t|cRXP_LOOT_[Small Eggs]|r
    >>|cRXP_WARN_This will be used to level your|r |T133971:0|t[Cooking] |cRXP_WARN_to 50 later|r
    >>|cRXP_WARN_Don't go out of your way to farm this now. Just remember to hold onto the eggs and start thinking how many skillups you still need to reach 50 cooking|r
    .collect 6889,50,90,1,0x20,cooking --Small Egg (10-49)
    .mob Young Moonkin
    .mob Raging Moonkin
    .mob Moonkin Oracle
    .mob Moonkin
    .skill cooking,<10,1 --XX Shows if cooking skill is 10-50
    .skill cooking,50,1
    .isQuestTurnedIn 4811
step << NightElf/Hunter/Druid/Warrior
    #optional
    #completewith EndFirstMoonstalker
    >>Kill |cRXP_ENEMY_Moonstalker Runts|r. Loot them for their |cRXP_LOOT_Moonstalker Fangs|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .isOnQuest 1002
    .isQuestTurnedIn 4811
step << NightElf/Hunter/Druid/Warrior
    .goto 1439,47.314,48.676
    #label EarlyCrystalEnd
    >>Click the |cRXP_PICK_Mysterious Red Crystal|r
    >>|cRXP_WARN_Be careful of the two group of 2 |cRXP_ENEMY_Raging Moonkins|r west of the |cRXP_PICK_Mysterious Red Crystal|r as the duos closest to each other are leashed together|r
    .turnin 4812 >> Turn in As Water Cascades
    .accept 4813 >> Accept The Fragments Within
    .isQuestTurnedIn 4811
step << NightElf/Hunter/Druid/Warrior
    #optional
    #loop
    .goto 1439,46.918,48.630,0
    .goto 1439,45.338,54.337,0
    .goto 1439,45.108,49.184,0
    .goto 1439,45.322,44.756,0
    .goto 1439,46.918,48.630,60,0
    .goto 1439,46.233,49.578,60,0
    .goto 1439,46.110,50.828,60,0
    .goto 1439,45.766,51.560,60,0
    .goto 1439,45.652,52.729,60,0
    .goto 1439,45.338,54.337,60,0
    .goto 1439,44.817,53.601,60,0
    .goto 1439,44.398,52.137,60,0
    .goto 1439,44.424,50.766,60,0
    .goto 1439,45.090,50.415,60,0
    .goto 1439,45.108,49.184,60,0
    .goto 1439,44.578,48.547,60,0
    .goto 1439,44.311,47.903,60,0
    .goto 1439,43.577,46.772,60,0
    .goto 1439,42.237,46.108,60,0
    .goto 1439,42.715,45.372,60,0
    .goto 1439,43.101,44.400,60,0
    .goto 1439,45.322,44.756,60,0
    >>Kill |cRXP_ENEMY_Moonkin|r. Loot them for their |T132832:0|t|cRXP_LOOT_[Small Eggs]|r
    >>|cRXP_WARN_This will be used to level your|r |T133971:0|t[Cooking] |cRXP_WARN_to 10 later|r
    .collect 6889,10,2178,1,0x20,cooking --Small Egg (1-9)
    .mob Young Moonkin
    .mob Raging Moonkin
    .mob Moonkin Oracle
    .mob Moonkin
    .skill cooking,10,1 -- shows if cooking is <10
    .skill cooking,<1,1 -- shows if cooking is >1
    .isQuestTurnedIn 4811
step << NightElf !Hunter/Warrior/Druid
    #optional
    #completewith EndFirstMoonstalker
    .hs >> Hearth to Auberdine
    .cooldown item,6948,>0,1
    .subzoneskip 442
    .isQuestTurnedIn 6001 << Druid
    .isQuestTurnedIn 4811
step << NightElf !Hunter/Druid/Warrior
    #optional
    #completewith next
    .goto 1439,37.703,43.393
    .subzone 442 >> Return to Auberdine
    .cooldown item,6948,<0,1 << !Druid
    .isQuestTurnedIn 4811
step << NightElf !Hunter/Druid/Warrior
    .goto 1439/1,472.32,6438.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Glynda Nal'Shea|r
    .turnin 4813,3 >> Turn in The Fragments Within
    .target Sentinel Glynda Nal'Shea
    .isQuestTurnedIn 4811
step << NightElf !Hunter/Druid/Warrior
    .goto 1439/1,472.32,6438.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Glynda Nal'Shea|r
    .turnin 4813,3 >> Turn in The Fragments Within
    .target Sentinel Glynda Nal'Shea
    .isQuestTurnedIn 4811
step << Druid/Warrior
    #optional
    #completewith AmethStart
    +|cRXP_WARN_Equip the|r |T135145:0|t[Oakthrush Staff]
    .use 15397
    .itemcount 15397,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.1
    .isQuestTurnedIn 4811
    --reduced DPS now on staff due to it becoming a caster weapon
step << NightElf !Hunter/Druid/Warrior
    #optional
    .goto 1439,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gorbold Steelhand|r
    .turnin 982 >> Turn in Deep Ocean, Vast Sea
    .target Gorbold Steelhand
    .isQuestComplete 982
----Start of forced Level 14 Druid Turnin/train----
--Removed in wowF

----End of forced Level 14 Druid Turnin/train----
----End of Early Red Crystal turnin Section (NE for xp, Hunters/Druids for staff)/Druid bear q final if not done earlier----


step << Druid
    #optional
    #completewith AmethStart
    >>Kill |cRXP_ENEMY_Foreststrider Fledglings|r. Loot them for their |cRXP_LOOT_Strider Meat|r
    >>|cRXP_WARN_Be careful as they|r |T132307:0|t[Flee] |cRXP_WARN_at <30% health|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .mob Foreststrider Fledgling
    .subzoneskip 447


----Start of alternate section if early Red Crystal turnin----

step << NightElf !Hunter/Druid/Warrior
    #optional
    #loop
    #label EarlyBlackwood
    .goto 1439,39.899,54.745,0
    .goto 1439,40.181,56.229,0
    .goto 1439,39.267,53.092,50,0
    .goto 1439,39.754,53.444,50,0
    .goto 1439,40.234,54.325,50,0
    .goto 1439,39.899,54.745,50,0
    .goto 1439,40.181,56.229,50,0
    .goto 1439,39.388,56.671,50,0
    .goto 1439,39.191,56.382,50,0
    .goto 1439,39.957,55.300,50,0
    .goto 1439,39.332,54.079,50,0
    >>Kill |cRXP_ENEMY_Blackwood Pathfinders|r and |cRXP_ENEMY_Blackwood Windtalkers|r
    .complete 985,1 -- Blackwood Pathfinder (8)
    .mob +Blackwood Pathfinder
    .complete 985,2 -- Blackwood Windtalker (5)
    .mob +Blackwood Windtalker
    .isQuestTurnedIn 4811
step << NightElf !Hunter/Druid/Warrior
    #optional
    #completewith Anaya
    >>Kill |cRXP_ENEMY_Rabid Thistle Bears|r
    >>|cRXP_WARN_Be careful as they cast|r |T135914:0|t[Rabies] |cRXP_WARN_if you dont kill them fast enough (Instant Melee: Reduces ALL health regen by 50% for 10 Minutes)|r
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
    .isQuestTurnedIn 4811
    .subzoneskip 447
step << NightElf !Hunter/Druid/Warrior
    #optional
    #label EarlyTurtleStart
    .goto 1439,37.105,62.167
    >>Click the |cRXP_PICK_Beached Sea Turtle|r
    .accept 4722 >> Accept Beached Sea Turtle
    .isQuestTurnedIn 4811
step
    #optional
    #label EarlyAmethStart
    .goto 1439,40.302,59.731
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Tysha Moonblade|r
    .accept 953 >> Accept The Fall of Ameth'Aran
    .target Sentinel Tysha Moonblade
    .isQuestTurnedIn 4811
    .xp >17,1


step
    #label EndFirstMoonstalker

----End of alternate section if early Red Crystal turnin----

----Start of small south loop for ERA and SoD Warrior/Rogue/Priest----

step
    #optional
    #completewith AmethStart
    >>Kill |cRXP_ENEMY_Moonstalker Runts|r and |cRXP_ENEMY_Moonstalkers|r. Loot them for their |cRXP_LOOT_Moonstalker Fangs|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .mob Moonstalker
    .isQuestTurnedIn 1001
    .isQuestAvailable 4811
step << !NightElf !Druid !Warrior
    #loop
    .goto 1439,46.918,48.630,0
    .goto 1439,45.338,54.337,0
    .goto 1439,45.108,49.184,0
    .goto 1439,45.322,44.756,0
    .goto 1439,46.918,48.630,60,0
    .goto 1439,46.233,49.578,60,0
    .goto 1439,46.110,50.828,60,0
    .goto 1439,45.766,51.560,60,0
    .goto 1439,45.652,52.729,60,0
    .goto 1439,45.338,54.337,60,0
    .goto 1439,44.817,53.601,60,0
    .goto 1439,44.398,52.137,60,0
    .goto 1439,44.424,50.766,60,0
    .goto 1439,45.090,50.415,60,0
    .goto 1439,45.108,49.184,60,0
    .goto 1439,44.578,48.547,60,0
    .goto 1439,44.311,47.903,60,0
    .goto 1439,43.577,46.772,60,0
    .goto 1439,42.237,46.108,60,0
    .goto 1439,42.715,45.372,60,0
    .goto 1439,43.101,44.400,60,0
    .goto 1439,45.322,44.756,60,0
    >>Kill |cRXP_ENEMY_Moonkin|r. Loot them for their |T132832:0|t|cRXP_LOOT_[Small Eggs]|r
    >>|cRXP_WARN_This will be used to level your|r |T133971:0|t[Cooking] |cRXP_WARN_to 10 later|r
    .collect 6889,10,2178,1,0x20,cooking --Small Egg (1-9)
    .mob Young Moonkin
    .mob Raging Moonkin
    .mob Moonkin Oracle
    .mob Moonkin
    .skill cooking,10,1 -- shows if cooking is <10
    .skill cooking,<1,1 -- shows if cooking is >1
step
    #sticky
    #label Anaya
    .goto 1439,42.017,58.866,0 --NE spawn
    .goto 1439,43.222,59.693,0 --NE spawn
    .goto 1439,43.069,62.448,0 --SE spawn
    .goto 1439,42.489,60.677,0 --Middle spawn
    .waypoint 1439,42.017,58.866,50,0 --NE spawn
    .waypoint 1439,42.311,58.645,50,0
    .waypoint 1439,42.448,58.236,50,0
    .waypoint 1439,43.222,59.693,50,0 --NE spawn
    .waypoint 1439,43.447,60.131,50,0
    .waypoint 1439,43.780,60.275,50,0
    .waypoint 1439,43.069,62.448,50,0 --SE spawn
    .waypoint 1439,43.104,62.563,50,0
    .waypoint 1439,42.794,62.166,50,0
    .waypoint 1439,42.489,60.677,50,0 --Middle spawn
    >>Kill |cRXP_ENEMY_Anaya Dawnrunner|r. Loot her for her |cRXP_LOOT_Pendant|r
    -->>|cRXP_WARN_Be aware that she has a 7-8 minute spawn time and 4 different spawnpoints across Ameth'Aran|r
    -->>|cRXP_WARN_You may want to group with others nearby if you can't find her. Ask in General Chat (/1) to group with anyone else that is also looking for her|r
    -->>|cRXP_WARN_If you can't find her and want to try again later at the cost of potentially grinding more mobs soon, skip this step|r
    --much faster spawn time now on forever
    .complete 963,1 --Anaya's Pendant (1)
    .unitscan Anaya Dawnrunner
step
    #sticky
    #label Relics
    .goto 1439,42.670,57.390,0
    .goto 1439,41.986,62.462,0
    .goto 1439,44.072,60.507,0
    .waypoint 1439,42.670,57.390,55,0
    .waypoint 1439,41.708,57.888,55,0
    .waypoint 1439,41.597,59.765,55,0
    .waypoint 1439,42.058,61.199,55,0
    .waypoint 1439,41.986,62.462,55,0
    .waypoint 1439,42.773,63.420,55,0
    .waypoint 1439,43.253,63.287,55,0
    .waypoint 1439,43.945,62.188,55,0
    .waypoint 1439,44.072,60.507,55,0
    .waypoint 1439,43.410,59.784,55,0
    .waypoint 1439,43.787,58.959,55,0
    >>Kill |cRXP_ENEMY_Cursed Highbornes|r, |cRXP_ENEMY_Writhing Highbornes|r and |cRXP_ENEMY_Wailing Highbornes|r. Loot them for their |cRXP_LOOT_Relics|r
    .complete 958,1 --Highborne Relic (7)
    .mob Cursed Highborne
    .mob Writhing Highborne
    .mob Wailing Highborne
    .isOnQuest 958
step
    #label AmethStart
    .goto 1439,40.302,59.731
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Tysha Moonblade|r
    .accept 953 >> Accept The Fall of Ameth'Aran
    .target Sentinel Tysha Moonblade
    .isQuestAvailable 4811
    .xp >17,1
step
    .goto 1439,42.652,63.145
    >>Click the |cRXP_PICK_The Fall of Ameth'Aran|r
    .complete 953,2 --Read The Fall of Ameth'Aran (1)
    .isOnQuest 953
step << !sod/Warrior/Rogue/Priest
    .goto 1439,42.373,61.815
    >>Click the |cRXP_PICK_Ancient Flame|r
    .complete 957,1 --Destroy the seal at the ancient flame (1)
    .isOnQuest 957
step
    #label TheLay
    .goto 1439/1,105.52,5770.100
    >>Click the |cRXP_PICK_The Lay of Ameth'Aran|r
    .complete 953,1 --Read The Lay of Ameth'Aran (1)
    .isOnQuest 953
step
    .isOnQuest 98025
    .waypoint 1439/1,-18.100,5779.800
    >>Kill |cRXP_ENEMY_Jai'vhanel|r. Loot it for the |cRXP_LOOT_Feather of Jai'vhanel|r
    .complete 98025,1 --|1/1 Feather of Jai'vhanel
    .mob Jai'vhanel
step
    #optional
    #requires Relics
--XXREQ Placeholder invis step until multiple requires per step
step
    #optional
    #requires Anaya
--XXREQ Placeholder invis step until multiple requires per step
step
    .isQuestComplete 953
    .goto 1439,40.302,59.731
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Tysha Moonblade|r
    .turnin 953 >> Turn in The Fall of Ameth'Aran
    .target Sentinel Tysha Moonblade
step << !sod/Warrior/Rogue
    #optional
    #completewith FurbolgGrind
    >>Kill |cRXP_ENEMY_Foreststrider Fledglings|r. Loot them for their |cRXP_LOOT_Strider Meat|r
    >>|cRXP_WARN_Be careful as they|r |T132307:0|t[Flee] |cRXP_WARN_at <30% health|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .mob Foreststrider Fledgling
step
    #optional
    #completewith FurbolgGrind
    >>Kill |cRXP_ENEMY_Moonstalker Runts|r and |cRXP_ENEMY_Moonstalkers|r. Loot them for their |cRXP_LOOT_Moonstalker Fangs|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .mob Moonstalker
    .isOnQuest 1002
step
    #optional
    #completewith FurbolgGrind
    >>Kill |cRXP_ENEMY_Rabid Thistle Bears|r
    >>|cRXP_WARN_Be careful as they cast|r |T135914:0|t[Rabies] |cRXP_WARN_if you dont kill them fast enough (Instant Melee: Reduces ALL health regen by 50% for 10 Minutes)|r
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step
    #label LateTurtleStart
    .goto 1439,37.105,62.167
    >>Click the |cRXP_PICK_Beached Sea Turtle|r
    .accept 4722 >> Accept Beached Sea Turtle
step
    #loop
    #label FurbolgGrind
    .goto 1439,39.899,54.745,0
    .goto 1439,40.181,56.229,0
    .goto 1439,39.267,53.092,50,0
    .goto 1439,39.754,53.444,50,0
    .goto 1439,40.234,54.325,50,0
    .goto 1439,39.899,54.745,50,0
    .goto 1439,40.181,56.229,50,0
    .goto 1439,39.388,56.671,50,0
    .goto 1439,39.191,56.382,50,0
    .goto 1439,39.957,55.300,50,0
    .goto 1439,39.332,54.079,50,0
    >>Kill |cRXP_ENEMY_Blackwood Pathfinders|r and |cRXP_ENEMY_Blackwood Windtalkers|r
    .complete 985,1 -- Blackwood Pathfinder (8)
    .mob +Blackwood Pathfinder
    .complete 985,2 -- Blackwood Windtalker (5)
    .mob +Blackwood Windtalker
step
    #optional
    #completewith FurbolgGrindEnd
    >>Kill |cRXP_ENEMY_Foreststrider Fledglings|r. Loot them for their |cRXP_LOOT_Strider Meat|r
    >>|cRXP_WARN_Be careful as they|r |T132307:0|t[Flee] |cRXP_WARN_at <30% health|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .mob Foreststrider Fledgling
    .isQuestAvailable 2178
step
    #optional
    #completewith FurbolgGrindEnd
    >>Kill |cRXP_ENEMY_Moonstalker Runts|r. Loot them for their |cRXP_LOOT_Moonstalker Fangs|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .isOnQuest 1002
step
    #label FurbolgGrindEnd
    #completewith TOTH
    #optional
    .goto 1439,36.701,45.122
    .subzone 442 >> Return to Auberdine
    .isOnQuest 4722
step
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4722 >> Turn in Beached Sea Turtle
    .turnin 4723 >> Turn in Beached Sea Creature
    .target Gwennyth Bly'Leggonde
    .isOnQuest 4723
step
    .goto 1439/1,577.38,6371.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gubber Blump|r
    .accept 1138 >> Accept Fruit of the Sea
    .target Gubber Blump
    .xp <15,1
step << !NightElf
    #optional
    #completewith next
    .goto 1439,36.806,44.137,8,0
    .goto 1439,35.743,43.710,12 >> Return to |cRXP_FRIENDLY_Cerellean Whiteclaw|r on the dock
step << !NightElf
    #optional
    .goto 1439,35.743,43.710
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cerellean Whiteclaw|r
    >>|cRXP_WARN_You may need to wait out his RP if someone else just turned in|r
    .turnin 963 >> Turn in For Love Eternal
    .target Cerellean Whiteclaw
    .isQuestComplete 963
step
    .isOnQuest 98025
    .goto 1439/1,472.900,6439.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Glynda Nal'Shea::2930|r
    .target Sentinel Glynda Nal'Shea::2930
    .turnin 98025 >>Turn in WANTED: Jai'vhanel
    .turnin 4813,3 >> Turn in The Fragments Within << NightElf Hunter
step << NightElf Hunter
    #optional
    .goto 1439/1,472.900,6439.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Glynda Nal'Shea::2930|r
    .target Sentinel Glynda Nal'Shea::2930
    .turnin 4813,3 >> Turn in The Fragments Within
step << NightElf Hunter
    #optional
    #completewith AmethStart
    +|cRXP_WARN_Equip the|r |T135145:0|t[Oakthrush Staff]
    .use 15397
    .itemcount 15397,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.1
    .isQuestTurnedIn 4811
    --reduced DPS now on staff due to it becoming a caster weapon
step
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Glynda Nal'Shea|r
    .turnin 4811 >> Turn in The Red Crystal
    .accept 4812 >> Accept As Water Cascades
    .target Sentinel Glynda Nal'Shea
    .isOnQuest 4811
step
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Glynda Nal'Shea|r
    .turnin 4812 >> Turn in As Water Cascades
    .target Sentinel Glynda Nal'Shea
    .isQuestComplete 4812
step
    .goto 1439,37.767,44.001
    >>|cRXP_WARN_Use the|r |T134865:0|t[Empty Water Tube] |cRXP_WARN_at the Auberdine moonwell|r
    .complete 4812,1 --Moonwell Water Tube (1)
    .use 14338
step
    #optional
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tharnariun Treetender|r
    .turnin 2138 >> Turn in Cleansing of the Infected
    .accept 2139 >> Accept Tharnariun's Hope
    .target Tharnariun Treetender
    .isQuestComplete 2138
step
    #optional
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tharnariun Treetender|r
    .accept 2139 >> Accept Tharnariun's Hope
    .target Tharnariun Treetender
    .isQuestTurnedIn 2138
step
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Terenthis|r
    .turnin 985 >> Turn in How Big a Threat?
    .accept 986 >> Accept A Lost Master << !sod
    .target Terenthis
step
    #optional
    #completewith next
    .goto 1439,39.280,43.121,6,0
    .goto 1439,39.162,43.194,6 >> Go upstairs
step
    .goto 1439,39.043,43.555
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Elissa Starbreeze|r upstairs
    .accept 965 >> Accept The Tower of Althalaxx
    .target Sentinel Elissa Starbreeze
step
    #optional
    #completewith Level10CookEnd
    .goto 1439,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gorbold Steelhand|r
    .vendor 6301 >>|cRXP_BUY_Buy|r |T134059:0|t[Mild Spices] |cRXP_BUY_from him until you have|r |T134059:0|t[Mild Spices] |cRXP_BUY_equal or more than the amount of|r |T132832:0|t[Small Eggs] |cRXP_BUY_that you currently have|r
    .collect 2678,50,90,1,0x20,cooking --Mild Spices (1-50)
    .disablecheckbox
    .collect 6889,50,90,1,0x20,cooking --Small Egg (1-50)
    .disablecheckbox
    .target Gorbold Steelhand
    .skill cooking,50,1 --XX Shows if cooking skill is <50
    .itemcount 6889,1 -- Small Egg (1+)
step << NightElf
    .goto 1439,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gorbold Steelhand|r
    .vendor >>|cRXP_BUY_Buy a|r [Shiny Bauble] |cRXP_BUY_and three|r |T134324:0|t[Nightcrawlers] |cRXP_BUY_from him. You will need them for a quest in Stormwind soon|r
    .collect 6529,1 --Shiny Bauble (1)
    .collect 6530,3 --Nightcrawlers (3)
    .target Gorbold Steelhand
step
    .goto 1439,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gorbold Steelhand|r
    .accept 982 >> Accept Deep Ocean, Vast Sea
    .target Gorbold Steelhand
step
    #optional
    .goto 1439,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gorbold Steelhand|r
    .turnin 982 >> Turn in Deep Ocean, Vast Sea
    .target Gorbold Steelhand
    .isQuestComplete 982
step
    #label Level10CookEnd
    .goto 1439,37.511,41.670
    >>|cRXP_WARN_Travel toward the |cRXP_PICK_Campfire|r on the ground|r
    +|cRXP_WARN_Start|r |T133971:0|t[Cooking] |T132834:0|t[Herb Baked Eggs]|cRXP_WARN_. Do this until your|r |T133971:0|t[Cooking] |cRXP_WARN_has reached at least level 10|r
    >>|cRXP_WARN_Continue leveling your|r |T133971:0|t[Cooking] |cRXP_WARN_until you run out of|r |T132832:0|t[Small Eggs] << !sod
    >>|cRXP_WARN_There is a quest in Duskwood later requiring your|r |T133971:0|t[Cooking] |cRXP_WARN_to be 50 or higher. You can also cook this when you get on the boat soon|r << !sod
    >>|cRXP_WARN_Skip this step once you've made all|r |T132834:0|t[Herb Baked Eggs]
    .skill cooking,50,1
    .itemcount 6889,1 -- Small Egg (1+)
step
    #optional
    .goto 1439/1,472.32,6556.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alanndarian Nightsong|r
    .accept 2178 >> Accept Easy Strider Living
    .turnin 2178 >> Turn in Easy Strider Living
    .target Alanndarian Nightsong
    .itemcount 5469,5 -- Strider Meat (5)
    .skill cooking,<10,1 -- step only displays if skill is 10 or higher
step
    #label TOTH
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thundris Windweaver|r
    .turnin 958 >> Turn in Tools of the Highborne
    .accept 97914 >>Accept Expanding Horizons << NightElf
    .target Thundris Windweaver
    .isQuestComplete 958

----End of small south loop for ERA and SoD Warrior/Rogue/Priest----


---Start of Night Elf Westfall section----
step << NightElf
    #optional
    #completewith next
    .goto 1439,36.806,44.137,8,0
    .goto 1439,35.743,43.710,12 >> Return to |cRXP_FRIENDLY_Cerellean Whiteclaw|r on the dock
step << NightElf
    #optional
    .goto 1439,35.743,43.710
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cerellean Whiteclaw|r
    >>|cRXP_WARN_You may need to wait out his RP if someone else just turned in|r
    .turnin 963 >> Turn in For Love Eternal
    .target Cerellean Whiteclaw
    .isQuestComplete 963
step << NightElf
    #label SWBoat
    .goto 1439/1,929.100,6543.600
    >>|cRXP_WARN_Level your|r |T135966:0|t[First Aid] |cRXP_WARN_while waiting for the boat|r << Rogue/Warrior
    .zone Stormwind City >> Take the boat to Stormwind City
    .zoneskip Loch Modan
    .zoneskip Dun Morogh
    .zoneskip Ironforge
    .zoneskip Wetlands
    .zoneskip Stormwind City
    .zoneskip Redridge Mountains
step << NightElf
    .goto 1453/0,1268.800,-8540.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gilbert Gray|r
    .accept 95065 >>Accept Fishin' Time
    .turnin 95065 >>Turn in Fishin' Time
    .target Gilbert Gray
step << NightElf
    .goto 1453/0,1194.500,-8332.101
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Manifest Clerk Philmor::268511|r
    .target Manifest Clerk Philmor::268511
    .accept 97220 >>Accept Philmor's Favor
step << NightElf
    #completewith next
    .goto 1453/0,1194.200,-8360.900,10,0
    .goto 1453/0,1076.300,-8408.500,15,0
    .goto 1453/0,1001.400,-8499.700,10,0
    .goto 1453/0,985.500,-8471.300,15,0
    .goto 1453/0,960.100,-8501.800,15,0
    .goto 1453/0,981.200,-8581.800,15,0
    .goto 1453/0,875.500,-8680.900,10 >> Exit the Stormwind Harbor
step << NightElf
    .goto 1453/0,719.67,-8550.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baros Alexston|r
    .turnin 97914 >> Turn in Expanding Horizons
    .accept 97926 >> Accept Making Do
    .accept 399 >> Accept Humble Beginnings
    .target Baros Alexston
step << NightElf Druid
    .goto 1453/0,1347.6192,-8591.2168
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Theridran|r
    .trainer >>Train your class spells
	.target Theridran
step << NightElf Hunter
    .goto 1453/0,552.78,-8415.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Einris Brightspear|r
    .trainer >> Train your class spells
    .target Einris Brightspear
step << NightElf Hunter
    .goto 1453/0,553.22,-8422.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karrina Mekenda|r
    .trainer >> Train your pet spells
    .target Karrina Mekenda
step << NightElf Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Joshua|r
    .goto 1453/0,862.89,-8519.61
    .trainer >> Train your class spells
    .target Brother Joshua
step << NightElf Rogue
    .goto 1453/0,377.47,-8752.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Osborne|r
    .trainer >> Train your class spells
    .target Osborne the Night Man
step << NightElf Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wu|r or |cRXP_FRIENDLY_Ilsa|r
    .goto 1453/0,358.25,-8728.28,15,0
    .goto 1453/0,302.6,-8685.53,15,0
	.goto 1453/0,323.3,-8689.29
    .trainer >> Train your class spells
    .target Wu Shen
    .target Ilsa Corbin
step << NightElf Rogue/NightElf Warrior
    .goto 1453/0,613.12,-8795.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Woo Ping|r
    .train 201 >> Train 1h Swords << Rogue
    .train 202 >> Train 2h Swords << Warrior
    .target Woo Ping
step << NightElf
    .goto 1453/0,568.700,-8848.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elaine Trias::483|r
    .target Elaine Trias::483
    .turnin 97220 >>Turn in Philmor's Favor
    .accept 97222 >>Accept Gatehouse Goods
step << NightElf
    .goto 1453/0,569.400,-8860.300
    >>Go |cRXP_WARN_UPSTAIRS|r and use the |T132762:0|t[|cRXP_LOOT_Shipment|r] in front of the |cRXP_PICK_Gatehouse Door|r
    .use 277198 --Gatehouse Shipment
    .complete 97222,1 --|1/1 Gatehouse Shipment delivered
step << NightElf
    #label Gatehouse
    .goto 1453/0,566.900,-8847.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elaine Trias::483|r
    .target Elaine Trias::483
    .turnin 97222 >>Turn in Gatehouse Goods
step << NightElf
    #include 13-15 Westfall@NEWestfallStart-NEWestfallEnd
step << NightElf
    .hs >>Hearthstone to Auberdine
    .zoneskip Darkshore
step << NightElf
    .goto 1439/1,577.38,6371.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gubber Blump|r
    .accept 1138 >> Accept Fruit of the Sea
    .target Gubber Blump
----End of Night Elf Westfall section
step
    #optional
    #completewith next
    +|cRXP_WARN_Press Escape, then go into -> Options -> Controls|r
    >>|cRXP_WARN_Check "Enable Interact Key" and bind the "Interact with Target" option to a key|r
step
    .goto 1439,38.213,28.754
--  .goto 1439,38.234,28.796
    >>|cRXP_WARN_==BE AWARE OF YOUR BREATH METER==|r
    >>|cRXP_WARN_Swim underwater to the outside of the back of the boat|r
    >>|cRXP_WARN_On the arrow location, press your "Interact with Target" keybind to loot the |cRXP_LOOT_Silver Dawning's Lockbox|r from outside the boat|r
    >>|cRXP_WARN_If you don't want to do this, swim underwater into the bottom floor of the boat then loot the |cRXP_LOOT_Silver Dawning's Lockbox|r inside|r
    .complete 982,1 --Silver Dawning's Lockbox (1)
    .isOnQuest 982
step
    #label MistVeil
    .goto 1439,39.581,27.487
--  .goto 1439,39.629,27.462
    >>|cRXP_WARN_==BE AWARE OF YOUR BREATH METER==|r
    >>|cRXP_WARN_Swim underwater to the outside of the back of the boat|r
    >>|cRXP_WARN_On the arrow location, press your "Interact with Target" keybind to loot the |cRXP_LOOT_Mist Veil's Lockbox|r from outside the boat|r
    >>|cRXP_WARN_If you don't want to do this, swim underwater into the bottom floor of the boat then loot the |cRXP_LOOT_Mist Veil's Lockbox|r inside|r
    .complete 982,2 --Mist Veil Lockbox (1)
    .isOnQuest 982
step
    #optional
    .goto 1439,41.901,31.339
    >>Click the |cRXP_PICK_Beached Sea Creature|r
    .accept 4723 >> Accept Beached Sea Creature
    .isOnQuest 982


----End of NE >1.49x catchup (everyone 1x) Final boat section----


step
    #optional
    #completewith BoatSeaCreature
    .goto 1439,44.190,33.697,0
    >>Kill |cRXP_ENEMY_Moonstalker Runts|r and |cRXP_ENEMY_Moonstalkers|r. Loot them for their |cRXP_LOOT_Moonstalker Fangs|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .mob Moonstalker
    .isOnQuest 1002
step
    #optional
    #completewith BoatSeaCreature
    .goto 1439,43.509,33.207,0
    >>Kill |cRXP_ENEMY_Foreststrider Fledglings|r. Loot them for their |cRXP_LOOT_Strider Meat|r
    >>|cRXP_WARN_Be careful as they|r |T132307:0|t[Flee] |cRXP_WARN_at <30% health|r
    .collect 5469,5,2178,1 --Strider Meat (5)
    .mob Foreststrider Fledgling
step
    #optional
    #completewith BoatSeaCreature
    >>Kill |cRXP_ENEMY_Moonkin|r. Loot them for their |T132832:0|t|cRXP_LOOT_[Small Eggs]|r
    >>|cRXP_WARN_This will be used to level your|r |T133971:0|t[Cooking] |cRXP_WARN_to 50 later|r
    >>|cRXP_WARN_Don't go out of your way to farm this now. Just remember to hold onto the eggs and start thinking how many skillups you still need to reach 50 cooking|r
    .collect 6889,50,90,1,0x20,cooking --Small Egg (10-49)
    .mob Young Moonkin
    .mob Raging Moonkin
    .mob Moonkin Oracle
    .mob Moonkin
    .subzoneskip 446 --BashalAran
    .subzoneskip 452 --Mists Edge
--   .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 10-50
step
    .goto 1439,47.314,48.676
    >>Click the |cRXP_PICK_Mysterious Red Crystal|r
    >>|cRXP_WARN_Be careful of the 2 groups of 2 |cRXP_ENEMY_Raging Moonkins|r west of the |cRXP_PICK_Mysterious Red Crystal|r as the duos closest to each other are leashed together|r
    .turnin 4812 >> Turn in As Water Cascades
    .accept 4813 >> Accept The Fragments Within
step
    #label BashalEnd
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Asterion|r
    .turnin 957 >> Turn in Bashal'Aran
    .isOnQuest 957
    .target Asterion
step
    #optional
    #completewith CrabTurtle
    >>Kill |cRXP_ENEMY_Rabid Thistle Bears|r
    >>|cRXP_WARN_Be careful as they cast|r |T135914:0|t[Rabies] |cRXP_WARN_if you dont kill them fast enough (Instant Melee: Reduces ALL health regen by 50% for 10 Minutes)|r
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step
    #label BoatSeaCreature
    .goto 1439,41.901,31.339
    >>Click the |cRXP_PICK_Beached Sea Creature|r
    .accept 4723 >> Accept Beached Sea Creature
step
    #optional
    #completewith CrabTurtle
    >>Kill |cRXP_ENEMY_Foreststrider Fledglings|r and |cRXP_ENEMY_Foreststriders|r. Loot them for their |cRXP_LOOT_Strider Meat|r
    >>|cRXP_WARN_Be careful|r |cRXP_ENEMY_Foreststrider Fledglings|r |T132307:0|t[Flee] |cRXP_WARN_at <30% health|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .mob Foreststrider Fledgling
    .mob Foreststrider
step
    #optional
    #completewith CrabTurtle
    >>Kill |cRXP_ENEMY_Moonstalker Runts|r and |cRXP_ENEMY_Moonstalkers|r. Loot them for their |cRXP_LOOT_Moonstalker Fangs|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .mob Moonstalker
    .isOnQuest 1002
step
    #label CrabTurtle
    .goto 1439/1,47.88,7433.800
    >>Click the |cRXP_PICK_Beached Sea Turtle|r
    .accept 4725 >> Accept Beached Sea Turtle
step
    #optional
    #completewith next
    .goto 1439,45.004,21.344,0
    .goto 1439,48.013,21.409,0
    .goto 1439,49.680,22.468,0
    .goto 1439,45.004,21.344,70,0
    .goto 1439,45.468,20.336,70,0
    .goto 1439,47.356,20.559,70,0
    .goto 1439,48.013,21.409,70,0
    .goto 1439,48.612,20.745,70,0
    .goto 1439,49.680,22.468,70,0
    .goto 1439,49.313,24.271,70,0
    >>Kill |cRXP_ENEMY_Reef Crawlers|r. Loot them for their |cRXP_LOOT_Fine Crab Chunks|r
    >>|cRXP_WARN_Consider skipping some of the level 17|r |cRXP_ENEMY_Reef Crawlers|r |cRXP_WARN_if you get decent drops.|r |cRXP_WARN_You don't have to complete this quest now|r
    >>|cRXP_WARN_Be careful as they can cast|r |T132155:0|t[Muscle Tear] |cRXP_WARN_an instant attack dealing 30-55 damage|r
    .complete 1138,1 --Fine Crab Chunks (6)
    .mob Reef Crawler
step
    .goto 1439/1,-386.39,7219.830
    >>|cRXP_WARN_Use the|r |T134865:0|t[Empty Sampling Tube] |cRXP_WARN_at the base of the Cliffspring River|r
    .complete 4762,1 --Cliffspring River Sample (1)
    .use 12350
step
    #optional
    #completewith next
    .goto 1439,51.118,23.670,20,0
    .goto 1439,51.288,24.554,12 >>Travel up the ramp toward the |cRXP_PICK_Buzzbox 323|r
    .isQuestComplete 1002
step
    #optional
    .goto 1439,51.288,24.554
    >>Click the |cRXP_PICK_Buzzbox 323|r on the ground
    .turnin 1002 >> Turn in Buzzbox 323
    .accept 1003 >> Accept Buzzbox 525
    .isQuestComplete 1002
step
    .goto 1439,51.288,24.554
    >>Click the |cRXP_PICK_Buzzbox 323|r on the ground
    .accept 1003 >> Accept Buzzbox 525
    .isQuestTurnedIn 1002


----Start of Hunter/Druid 1x early Althalaxx section (for money+xp)----


step << Hunter/Druid
    #optional
    #completewith Tower1
    >>Kill |cRXP_ENEMY_Rabid Thistle Bears|r
    >>|cRXP_WARN_Be careful as they cast|r |T135914:0|t[Rabies] |cRXP_WARN_if you dont kill them fast enough (Instant Melee: Reduces ALL health regen by 50% for 10 Minutes)|r
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step << Hunter/Druid
    #optional
    #completewith Tower1
    >>Kill |cRXP_ENEMY_Foreststriders|r. Loot them for their |cRXP_LOOT_Strider Meat|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .mob Foreststrider
step << Hunter/Druid
    #optional
    #completewith Tower1
    >>Kill |cRXP_ENEMY_Moonstalkers|r. Loot them for their |cRXP_LOOT_Moonstalker Fangs|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker
    .isOnQuest 1002
step << Hunter/Druid
    #optional
    #completewith Tower1
    .goto 1439,51.118,23.670,20,0
    .goto 1439,51.490,24.368,30,0
    .goto 1439,54.973,24.885,15 >>Travel toward |cRXP_FRIENDLY_Balthule Shadowstrike|r
    .isQuestAvailable 1002 << !NightElf/Hunter
step << Hunter/Druid
    #label Tower1
    .goto 1439,54.973,24.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Balthule Shadowstrike|r
    .turnin 965 >> Turn in The Tower of Althalaxx
    .accept 966 >> Accept The Tower of Althalaxx
    .target Balthule Shadowstrike
step << Hunter/Druid
    #loop
    .goto 1439,55.231,26.508,0
    .goto 1439,56.194,27.071,0
    .goto 1439,56.047,26.586,0
    .goto 1439,55.231,26.508,50,0
    .goto 1439,55.369,27.025,50,0
    .goto 1439,55.763,26.695,50,0
    .goto 1439,55.815,26.972,50,0
    .goto 1439,56.194,27.071,50,0
    .goto 1439,56.790,27.621,50,0
    .goto 1439,57.278,26.311,50,0
    .goto 1439,57.046,26.234,50,0
    .goto 1439,56.544,26.598,50,0
    .goto 1439,56.047,26.586,50,0
    .goto 1439,55.743,25.915,50,0
    >>Kill |cRXP_ENEMY_Dark Strand Fanatics|r. Loot them for their |cRXP_LOOT_Worn Parchments|r
    .complete 966,1 --Worn Parchment (4)
    .mob Dark Strand Fanatic
step << Hunter/Druid
    .goto 1439,54.973,24.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Balthule Shadowstrike|r
    .turnin 966 >> Turn in The Tower of Althalaxx
    .accept 967 >> Accept The Tower of Althalaxx
    .target Balthule Shadowstrike
step << Hunter/Druid
    #loop
    .goto 1439,53.629,26.054,0
    .goto 1439,54.204,30.475,0
    .goto 1439,49.775,30.351,0
    .goto 1439,48.894,26.514,0
    .goto 1439,53.629,26.054,60,0
    .goto 1439,52.764,26.312,60,0
    .goto 1439,53.049,27.983,60,0
    .goto 1439,53.899,28.638,60,0
    .goto 1439,54.204,30.475,60,0
    .goto 1439,51.267,32.319,60,0
    .goto 1439,50.689,32.001,60,0
    .goto 1439,50.818,30.486,60,0
    .goto 1439,49.775,30.351,60,0
    .goto 1439,49.776,28.393,60,0
    .goto 1439,49.902,27.511,60,0
    .goto 1439,49.558,26.087,60,0
    .goto 1439,48.894,26.514,60,0
    .goto 1439,48.022,27.199,60,0
    >>Kill |cRXP_ENEMY_Foreststriders|r. Loot them for their |cRXP_LOOT_Strider Meat|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .mob Foreststrider

----End of Hunter/Druid 1x and SoD Warrior early Althalaxx section (for money+xp)----

step
    #optional
    #completewith CliffCave
    >>Kill |cRXP_ENEMY_Rabid Thistle Bears|r
    >>|cRXP_WARN_Be careful as they cast|r |T135914:0|t[Rabies] |cRXP_WARN_if you dont kill them fast enough (Instant Melee: Reduces ALL health regen by 50% for 10 Minutes)|r
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step
    #optional
    #completewith CliffCave
    >>Kill |cRXP_ENEMY_Moonstalkers|r. Loot them for their |cRXP_LOOT_Moonstalker Fangs|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker
    .isOnQuest 1002
step
    #optional
    #loop
    .goto 1439,53.629,26.054,0
    .goto 1439,54.204,30.475,0
    .goto 1439,49.775,30.351,0
    .goto 1439,48.894,26.514,0
    .goto 1439,53.629,26.054,60,0
    .goto 1439,52.764,26.312,60,0
    .goto 1439,53.049,27.983,60,0
    .goto 1439,53.899,28.638,60,0
    .goto 1439,54.204,30.475,60,0
    .goto 1439,51.267,32.319,60,0
    .goto 1439,50.689,32.001,60,0
    .goto 1439,50.818,30.486,60,0
    .goto 1439,49.775,30.351,60,0
    .goto 1439,49.776,28.393,60,0
    .goto 1439,49.902,27.511,60,0
    .goto 1439,49.558,26.087,60,0
    .goto 1439,48.894,26.514,60,0
    .goto 1439,48.022,27.199,60,0
    >>Kill |cRXP_ENEMY_Foreststriders|r. Loot them for their |cRXP_LOOT_Strider Meat|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .mob Foreststrider
    .itemcount 5469,3 --Strider Meat (3+)
----XX Start from West Side if 3+
step
    #loop
    .goto 1439,53.629,26.054,0
    .goto 1439,54.204,30.475,0
    .goto 1439,49.775,30.351,0
    .goto 1439,48.894,26.514,0
    .goto 1439,48.022,27.199,60,0
    .goto 1439,48.894,26.514,60,0
    .goto 1439,49.558,26.087,60,0
    .goto 1439,49.902,27.511,60,0
    .goto 1439,49.776,28.393,60,0
    .goto 1439,49.775,30.351,60,0
    .goto 1439,50.818,30.486,60,0
    .goto 1439,50.689,32.001,60,0
    .goto 1439,51.267,32.319,60,0
    .goto 1439,54.204,30.475,60,0
    .goto 1439,53.899,28.638,60,0
    .goto 1439,53.049,27.983,60,0
    .goto 1439,52.764,26.312,60,0
    .goto 1439,53.629,26.054,60,0
    >>Kill |cRXP_ENEMY_Foreststriders|r. Loot them for their |cRXP_LOOT_Strider Meat|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .mob Foreststrider
step
    #optional
    .goto 1439,51.288,24.554
    >>Click the |cRXP_PICK_Buzzbox 323|r on the ground
    .turnin 1002 >> Turn in Buzzbox 323
    .accept 1003 >> Accept Buzzbox 525
    .isQuestComplete 1002
    .subzoneskip 456,1 --Only turnin if you're nearby (Cliffspring River)
step
    #optional
    #completewith next
    #label CliffCave
    .goto 1439,54.934,32.721,20,0
    .goto 1439,55.108,33.600,40 >> Travel to the Cliffspring River Cave
step << Druid
    .goto 1439/1,-660.18,6874.43
    >>|cRXP_WARN_Use the|r |T134776:0|t[Empty Cliffspring Falls Sampler] |cRXP_WARN_in the water at the entrance of the Cliffspring River Cave|r
    .complete 6122,1 --Filled Cliffspring Falls Sampler (1)
    .isOnQuest 6122
step
    #label CaveMushrooms
    .goto 1439/1,-690.31,6751.29,12,0
    .goto 1439/1,-706.68,6748.23,12,0
    .goto 1439/1,-719.13,6787.530,12,0
    >>Loot the |cRXP_LOOT_Scaber Stalks|r and a |cRXP_LOOT_Death Cap|r on the ground
    >>|cRXP_WARN_Stay on the upper section. If there is not a |cRXP_LOOT_Death Cap|r at the end of the top side, drop down and get one from the southern room below|r
    >>|cRXP_WARN_Be careful as |cRXP_ENEMY_Stormscale Wave Riders|r cast|r |T135836:0|t[Aqua Jet] |cRXP_WARN_(Ranged Instant: Deals damage to nearby enemies and knocks them back) - make sure you're not in a position to get knocked off the upper level of the cave|r
    .complete 947,1 --Scaber Stalk (5)
    .goto 1439/1,-663.45,6877.49,8,0
    .goto 1439/1,-679.17,6848.67,8,0
    .goto 1439/1,-666.73,6819.41,8,0
    .goto 1439/1,-680.48,6779.67,8,0
    .goto 1439/1,-663.45,6877.49,8,0
    .goto 1439/1,-679.17,6848.67,8,0
    .goto 1439/1,-666.73,6819.41,8,0
    .goto 1439/1,-680.48,6779.67,8,0
    .goto 1439/1,-663.45,6877.49
    .complete 947,2 --Death Cap (1)
    .goto 1439/1,-685.72,6746.49
-- step << NightElf !Druid
--     #softcore
--     #optional
--     #completewith CavetoAuber
--     .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
--     .target Spirit Healer
step << skip --logout skip
    #optional
    #label MushroomLS
    #completewith CavetoAuber
    .goto 1439,54.964,34.536
    .goto 1439,41.705,36.507,20 >>|cRXP_WARN_Jump on top of the rock on the top floor inside the cave. Position your character until it looks like they're floating, then perform a Logout Skip by logging out and back in|r
step
    #completewith CavetoAuber
    >>Kill |cRXP_ENEMY_Foreststrider Fledglings|r. Loot them for their |cRXP_LOOT_Strider Meat|r
    >>|cRXP_WARN_Be careful as they|r |T132307:0|t[Flee] |cRXP_WARN_at <30% health|r
    .collect 5469,5,2178,1 --Strider Meat (5)
    .mob Foreststrider Fledgling
    .isQuestAvailable 2178
step
    #requires MushroomLS
    #completewith CavetoAuber
    >>Kill |cRXP_ENEMY_Moonstalker Runts|r and |cRXP_ENEMY_Moonstalkers|r. Loot them for their |cRXP_LOOT_Moonstalker Fangs|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .mob Moonstalker
    .isOnQuest 1002
step
    #optional
    #label CavetoAuber
    #completewith CliffspringEnd
    .subzone 442 >> Travel to Auberdine
step
    #label CliffspringEnd
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thundris Windweaver|r
    .turnin 4762 >> Turn in The Cliffspring River
    .accept 4763 >> Accept The Blackwood Corrupted
    .target Thundris Windweaver
step
    .goto 1439/1,472.32,6556.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alanndarian Nightsong|r
    .accept 2178 >> Accept Easy Strider Living
    .turnin 2178 >> Turn in Easy Strider Living
    .target Alanndarian Nightsong
    .skill cooking,<10,1 -- step only displays if skill is 10 or higher
    .itemcount 5469,5 -- strider meat (5)
step << Druid
    #optional
    .isOnQuest 6122
    .goto 1439/1,472.32,6556.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alanndarian Nightsong|r
    .turnin 6122 >> Turn in The Principal Source
    .accept 6123 >> Accept Gathering the Cure
    .target Alanndarian Nightsong
step << Druid
    #optional
    .isQuestTurnedIn 6123
    .goto 1439/1,472.32,6556.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alanndarian Nightsong|r
    .accept 6123 >> Accept Gathering the Cure
    .target Alanndarian Nightsong
step << !NightElf
    #optional
    .goto 1439,37.439,41.839
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archaeologist Hollee|r
    .accept 729 >> Accept The Absent Minded Prospector
    .target Archaeologist Hollee
    .isQuestComplete 2138
step
    .goto 1439,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gorbold Steelhand|r
    .turnin 982 >> Turn in Deep Ocean, Vast Sea
    .target Gorbold Steelhand
step << !NightElf
    .goto 1439,37.439,41.839
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archaeologist Hollee|r
    .accept 729 >> Accept The Absent Minded Prospector
    .target Archaeologist Hollee
step
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tharnariun Treetender|r
    .turnin 2138 >> Turn in Cleansing of the Infected
    .accept 2139 >> Accept Tharnariun's Hope
    .target Tharnariun Treetender
    .isQuestComplete 2138
step
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tharnariun Treetender|r
    .accept 2139 >> Accept Tharnariun's Hope
    .target Tharnariun Treetender
    .isQuestTurnedIn 2138
step
    .goto 1439/1,472.32,6438.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Glynda Nal'Shea|r
    >>|cRXP_WARN_Choose the|r |T135641:0|t[Curvewood Dagger] |cRXP_WARN_as you should try to save a|r |T135641:0|t[Dagger] |cRXP_WARN_for your|r |T132290:0|t[Poisons] |cRXP_WARN_quest later|r << Rogue
    .turnin 4813 >> Turn in The Fragments Within
    .target Sentinel Glynda Nal'Shea
step
    .goto 1439/1,467.08,6409.38
    >>|cRXP_WARN_Use the|r |T133748:0|t[Empty Cleansing Bowl] |cRXP_WARN_at the Auberdine moonwell|r
    .collect 12347,1,4763,1 --Filled Cleansing Bowl (1)
    .use 12346
    .isOnQuest 4763
step
    .goto 1439,37.322,43.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Barithras Moonshade|r
    .turnin 947 >> Turn in Cave Mushrooms
    .accept 948 >> Accept Onu
    .target Barithras Moonshade
step
    .goto 1439/1,504.41,6402.39
    >>Click the |cRXP_PICK_Wanted Poster|r
    .accept 4740 >> Accept WANTED: Murkdeep!
-- step << NightElf !Druid
--     .goto 1439,36.767,44.285
--     #optional
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Laird|r
--     .accept 6343 >> Accept Return to Nessa
--     .isQuestAvailable 6343
--     .target Laird
step
    #optional
    .goto 1439/1,577.38,6371.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gubber Blump|r
    .turnin 1138 >> Turn in Fruit of the Sea
    .target Gubber Blump
    .isQuestComplete 1138
step
    #optional
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4723 >> Turn in Beached Sea Creature
    .turnin 4725 >> Turn in Beached Sea Turtle
    .target Gwennyth Bly'Leggonde
    .isOnQuest 4723
step
    #optional
    #label End
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4725 >> Turn in Beached Sea Turtle
    .target Gwennyth Bly'Leggonde


----Start of Druid Quest section----


step << Druid
    #optional
    .goto 1439,39.899,54.745,0
    .goto 1439,40.181,56.229,0
    .goto 1439,39.267,53.092,50,0
    .goto 1439,39.754,53.444,50,0
    .goto 1439,40.234,54.325,50,0
    .goto 1439,39.899,54.745,50,0
    .goto 1439,40.181,56.229,50,0
    .goto 1439,39.388,56.671,50,0
    .goto 1439,39.191,56.382,50,0
    .goto 1439,39.957,55.300,50,0
    .goto 1439,39.332,54.079,50,0
    .xp 16 >> Grind to level 16
    .mob Blackwood Pathfinder
    .mob Blackwood Windtalker
step << Druid
    #optional
    #completewith DruidLesson
    .goto 1439/1,561.66,6343.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caylais Moonfeather|r
    .fly Teldrassil >> Fly to Teldrassil
    .target Caylais Moonfeather
step << NightElf Druid
    #optional
    .goto 1438/1,950.52,8694.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nessa Shadowsong|r
    .turnin 6343 >> Turn in Return to Nessa
    .target Nessa Shadowsong
step << Druid
    #optional
    #label DruidLesson
    #completewith next
    .goto 1438/1,965.80,8780.95
    .zone Darnassus >> Take the purple portal into Darnassus
step << Druid
    .goto 1457/1,2563.98,10179.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mathrengyl Bearwalker|r
    .accept 26 >> Accept A Lesson to Learn
    .trainer >> Train your class spells
    .target Mathrengyl Bearwalker
step << Druid
    #optional
    #completewith next
    .abandon 729 >> Abandon The Absent Minded Prospector to accept the quest Trouble In Darkshore?
step << NightElf Druid
    .goto 1438/1,2607.86,9641.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Archaeologist Greywhisker|r
    .accept 730 >> Accept Trouble In Darkshore?
    .target Chief Archaeologist Greywhisker
step << Druid
    #optional
	#completewith TotL
	.cast 18960 >> Cast Teleport: Moonglade
	.zoneskip Moonglade
step << Druid
    .goto 1450/1,-2676.22,8019.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dendrite Starblaze|r
    .turnin 26 >> Turn in A Lesson to Learn
    .accept 29 >> Accept Trial of the Lake
    .target Dendrite Starblaze
step << Druid
    .goto 1450/1,-2595.43,7697.24
    >>Swim into Lake Elune'Ara
    >>Open a |cRXP_PICK_Bauble Container|r. Loot it for a |T134125:0|t[Shrine Bauble]
    >>|cRXP_WARN_It may spawn in different locations underwater|r
    .collect 15877,1,29,1 -- Shrine Bauble (1)
step << Druid
    #optional
    #completewith next
    .cast 18960 >> Cast Teleport: Moonglade
    .itemcount 15877,1 -- Shrine Bauble (1)
step << Druid
    .goto 1450/1,-2212.85,7854.68
    >>|cRXP_WARN_Use the|r |T134125:0|t[Shrine Bauble] |cRXP_WARN_at the Shrine of Remulos tree|r
    .complete 29,1 --Complete the Trial of the Lake.
    .use 15877
step << Druid
    #label TotL
    .goto 1450/1,-2224.18,7874.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tajarri|r
    .turnin 29 >> Turn in Trial of the Lake
    .accept 272 >> Accept Trial of the Sea Lion
    .target Tajarri
step << Druid
    #optional
    .hs >> Hearth to Darkshore
    .zoneskip Darkshore


----End of Druid Quest section----


]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group RestedXP Forever Guide (A)
#subgroup Speedrun Guide 1-20
--#groupid RXP-SRGCE-A1
#name 16-19 Darkshore
#next 19-20 Redridge;20-21 Darkshore/Ashenvale << !Hunter
#next 19-21 Darkshore/Ashenvale << Hunter

-- step << NightElf !Druid
--     #optional
--     #completewith PortalDarn
--     .goto 1439/1,561.66,6343.27
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caylais Moonfeather|r
--     .fly Teldrassil >> Fly to Teldrassil
--     .target Caylais Moonfeather
--     .zoneskip Teldrassil
-- step << NightElf !Druid
--     .goto 1438/1,950.52,8694.07
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nessa Shadowsong|r
--     .turnin 6343 >> Turn in Return to Nessa
--     .target Nessa Shadowsong
-- step << NightElf !Druid
--     #completewith next
--     #label PortalDarn
--     .goto 1438/1,965.80,8780.95
--     .zone Darnassus >> Take the purple portal into Darnassus
-- step << NightElf Warrior
--     .goto 1457/1,2316.91,9991.88
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arias'ta Bladesinger|r
--     .trainer >> Train your class spells
--     .target Arias'ta Bladesinger
-- step << NightElf Warrior
--     .goto 1457/1,2329.19,9908.60
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ilyenia Moonfire|r
--     .skipgossipid 96881
--     .train 2567 >> Train Thrown
--     .target Ilyenia Moonfire
-- step << NightElf Hunter
--     #completewith start
--     .goto 1457/1,2511.01,10178.05
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jocaste|r
--     .trainer >> Train your class spells
--     .target Jocaste
-- step << NightElf Hunter
--     #completewith start
--     #label RecruveReinforced
--     .goto 1457/1,2268.76,9770.63
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Landria|r
--     >>|cRXP_WARN_Buy a|r |T135489:0|t[Heavy Recurve Bow] |cRXP_WARN_if you can afford it. If not then buy a|r |T135490:0|t[Reinforced Bow]
--     >>|cRXP_WARN_Stock up on|r |T132382:0|t[Sharp Arrows]
--     .collect 3027,1
--     .target Landria
--     .money <0.3812
--     .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.50
-- step << Hunter
--     #requires RecruveReinforced
--     #completewith next
--     +|cRXP_WARN_Equip the|r |T135489:0|t[Heavy Recurve Bow]
--     .use 3027
--     .itemcount 3027,1
--     .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.19
--     .xp <20,1
-- step << Hunter
--     #requires RecruveReinforced
--     #completewith next
--     +|cRXP_WARN_Equip the|r |T135490:0|t[Reinforced Bow]
--     .use 3026
--     .itemcount 3026,1
--     .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.49
-- step << NightElf Rogue
--     >>Enter the Cenarion Enclave
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Syurna|r
--     .goto 1457/1,2601.39,10120.53,15,0
--     .goto 1457/1,2546.78,10083.62
--     .trainer >> Train your class spells
--     .target Syurna
-- step << NightElf !Druid
--     #optional
--     #completewith next
--     .abandon 729 >> Abandon The Absent Minded Prospector to accept the quest Trouble In Darkshore?
-- step << NightElf !Druid
--     .goto 1438/1,2607.86,9641.94
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Archaeologist Greywhisker|r
--     .accept 730 >> Accept Trouble In Darkshore?
--     .target Chief Archaeologist Greywhisker
-- step << NightElf Priest
--     .goto 1457/1,2537.25,9654.40
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jandria|r
--     .trainer >> Train your class spells
--     .target Jandria
-- step << NightElf !Druid
--     #label start
--     .hs >> Hearth to Auberdine
step
    .goto 1439/1,504.41,6402.39
    >>Click the |cRXP_PICK_Wanted Poster|r
    .accept 4740 >> Accept WANTED: Murkdeep!
step << NightElf
    .goto 1439,37.439,41.839
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archaeologist Hollee|r
    .turnin 730 >> Turn in Trouble In Darkshore?
    .accept 729 >> Accept The Absent Minded Prospector
    .target Archaeologist Hollee
    .isOnQuest 730
step << NightElf
    #optional
    .goto 1439,37.439,41.839
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archaeologist Hollee|r
    .accept 729 >> Accept The Absent Minded Prospector
    .target Archaeologist Hollee
step
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thundris Windweaver|r
    .turnin 4762 >> Turn in The Cliffspring River
    .accept 4763 >> Accept The Blackwood Corrupted
    .target Thundris Windweaver
step
    .goto 1439/1,467.08,6409.38
    .use 12346 >>|cRXP_WARN_Use the|r |T133748:0|t[Empty Cleansing Bowl] |cRXP_WARN_at the|r |cRXP_PICK_Auberdine Moonwell|r
    .collect 12347,1,4763,1
    .isOnQuest 4763
step
    .goto 1439,42.017,58.866,0 --NE spawn
    .goto 1439,43.222,59.693,0 --NE spawn
    .goto 1439,43.069,62.448,0 --SE spawn
    .goto 1439,42.489,60.677,0 --Middle spawn
    .waypoint 1439,42.017,58.866,50,0 --NE spawn
    .waypoint 1439,42.311,58.645,50,0
    .waypoint 1439,42.448,58.236,50,0
    .waypoint 1439,43.222,59.693,50,0 --NE spawn
    .waypoint 1439,43.447,60.131,50,0
    .waypoint 1439,43.780,60.275,50,0
    .waypoint 1439,43.069,62.448,50,0 --SE spawn
    .waypoint 1439,43.104,62.563,50,0
    .waypoint 1439,42.794,62.166,50,0
    .waypoint 1439,42.489,60.677,50,0 --Middle spawn
    >>Kill |cRXP_ENEMY_Anaya Dawnrunner|r. Loot her for her |cRXP_LOOT_Pendant|r
    -->>|cRXP_WARN_Be aware that she has a 7-8 minute spawn time and 4 different spawnpoints across Ameth'Aran|r
    --much faster spawn time now on forever
    .complete 963,1 --Anaya's Pendant (1)
    .unitscan Anaya Dawnrunner
    .solo
step
    .goto 1439,42.017,58.866,0 --NE spawn
    .goto 1439,43.222,59.693,0 --NE spawn
    .goto 1439,43.069,62.448,0 --SE spawn
    .goto 1439,42.489,60.677,0 --Middle spawn
    .waypoint 1439,42.017,58.866,50,0 --NE spawn
    .waypoint 1439,42.311,58.645,50,0
    .waypoint 1439,42.448,58.236,50,0
    .waypoint 1439,43.222,59.693,50,0 --NE spawn
    .waypoint 1439,43.447,60.131,50,0
    .waypoint 1439,43.780,60.275,50,0
    .waypoint 1439,43.069,62.448,50,0 --SE spawn
    .waypoint 1439,43.104,62.563,50,0
    .waypoint 1439,42.794,62.166,50,0
    .waypoint 1439,42.489,60.677,50,0 --Middle spawn
    >>Kill |cRXP_ENEMY_Anaya Dawnrunner|r. Loot her for her |cRXP_LOOT_Pendant|r
    -->>|cRXP_WARN_Be aware that she has a 7-8 minute spawn time and 4 different spawnpoints across Ameth'Aran|r
    -->>|cRXP_WARN_You may want to group with others nearby if you can't find her. Ask in General Chat (/1) to group with anyone else that is also looking for her|r
    --much faster spawn time now on forever
    .complete 963,1 --Anaya's Pendant (1)
    .unitscan Anaya Dawnrunner
    .group
step
    #optional
    #completewith CompleteFangs
    >>Kill |cRXP_ENEMY_Moonstalker Runts|r and |cRXP_ENEMY_Moonstalkers|r. Loot them for their |cRXP_LOOT_Moonstalker Fangs|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .mob Moonstalker
    .isOnQuest 1002
step
    #loop
    .waypoint 1439/1,385.20,5393.69,0
    .waypoint 1439/1,155.30,5374.48,0
    .waypoint 1439/1,322.32,4907.25,0
    .waypoint 1439/1,385.20,5393.69,70,0
    .waypoint 1439/1,155.30,5374.48,70,0
    .waypoint 1439/1,322.32,4907.25,70,0
    >>Kill |cRXP_ENEMY_Rabid Thistle Bears|r in southern Darkshore
    >>|cRXP_WARN_Be careful as they cast|r |T135914:0|t[Rabies] |cRXP_WARN_if you dont kill them fast enough (Instant Melee: Reduces all health regeneration by 50% for 10 minutes)|r
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step << Druid
    #sticky
    #label earthroot
    >>Collect 5 |T134187:0|t[Earthroot] as you quest|r
    .complete 6123,1 --Earthroot (5)
    .isOnQuest 6123
step << Druid
    .goto 1439/1,98.97,6329.03,90,0
    .goto 1439/1,105.52,6189.30,90,0
    .goto 1439/1,164.47,6036.47,90,0
    .goto 1439/1,-51.68,6136.90,90,0
    .goto 1439/1,-25.48,6005.90
    .goto 1439/1,98.97,6329.03,0
    .goto 1439/1,105.52,6189.30,0
    .goto 1439/1,164.47,6036.47,0
    .goto 1439/1,-51.68,6136.90,0
    >>Loot |cRXP_LOOT_Lunar Fungi|r on the ground throughout caves
    .complete 6123,2
    .isOnQuest 6123
step
    #completewith OnuGrove
    .goto 1439,43.555,76.293,80 >> Travel to the Grove of the Ancients
step
    #label OnuGrove
    .goto 1439,43.555,76.293
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Onu|r
    .turnin 952 >> Turn in Grove of the Ancients << NightElf
    .turnin 948 >> Turn in Onu
    .accept 944 >> Accept The Master's Glaive
    .target Onu
step
    #completewith MasterG
    >>Kill |cRXP_ENEMY_Moonstalker Sires|r. Loot them for their |cRXP_LOOT_Pelts|r
    >>Care as they can cast |T132090:0|t[Exploit Weakness] a backstab attack dealing 20-40 damage if you turn your back to them
    .complete 986,1 -- Fine Moonstalker Pelt (5)
    .unitscan Moonstalker Sire
    .isOnQuest 986
step
    #completewith MasterG
    #optional
    .goto 1439/1,413.37,4818.17,0
    >>Kill |cRXP_ENEMY_Grizzled Thistle Bears|r. Loot them for their |cRXP_LOOT_Scalps|r
    >>|cRXP_WARN_Be careful as they cast|r |T132152:0|t[Ravage] |cRXP_WARN_an instant attack dealing 20-40 damage and knocking you down for 2 seconds|r
    .complete 1003,1 -- Grizzled Scalp (4)
    .isOnQuest 1003
    .mob Grizzled Thistle Bear
step
    #optional
    .goto 1439,41.390,80.563
    >>Click the |cRXP_PICK_Buzzbox 525|r on the ground
    .turnin 1003 >> Turn in Buzzbox 525
    .isQuestComplete 1003
step
    #label MasterG
    .goto 1439/1,417.30,4575.82,100 >> Travel to The Master's Glaive
    .subzoneskip 449
    .isOnQuest 944
step
    #optional
    #completewith FunandGames
    >>Kill |cRXP_ENEMY_Twilight Disciples|r and |cRXP_ENEMY_Twilight Thugs|r. Loot them for the |T133743:0|t[|cRXP_LOOT_Book: The Powers Below|r]
    *|cRXP_WARN_Be careful as |cRXP_ENEMY_Twilight Thugs|r can|r |T132343:0|t[Disarm] |cRXP_WARN_you for 6 seconds|r << Rogue/Paladin/Warrior/Shaman
    *|cRXP_WARN_Be careful as |cRXP_ENEMY_Twilight Disciples|r cast|r |T135953:0|t[Renew] |cRXP_WARN_and a 3 second|r |T135915:0|t[Heal]
    .collect 5352,1,968,1 --Book: The Powers Below (1)
    .mob Twilight Disciple
    .mob Twilight Thug
step
    #optional
    .goto 1439/1,390.700,4542.700
    >>Discover The Master's Glaive
    .complete 944,1 --Enter the Master's Glaive (1)
step
    #optional
    #completewith next
    .cast 5809 >> |cRXP_WARN_Use the|r |T134715:0|t[Phial of Scrying] |cRXP_WARN_and place it on the ground|r
    .use 5251
step
    .goto 1439/1,417.30,4575.82
    >>|cRXP_WARN_Click the |cRXP_PICK_Scrying Bowl|r on the ground|r
    .turnin 944 >> Turn in The Master's Glaive
    .accept 949 >> Accept The Twilight Camp
    .use 5251
step
    #label FunandGames
    .goto 1439,38.537,86.050
    >>Click the |cRXP_PICK_Twilight Tome|r on the northern pedestal
    .turnin 949 >> Turn in The Twilight Camp
    .accept 950 >> Accept Return to Onu
    .accept 98042 >>Accept It's All Fun and Games Until...
step
    #completewith TheryluneEnd
    >>Kill |cRXP_ENEMY_Twilight Disciples|r and |cRXP_ENEMY_Twilight Thugs|r. Loot them for the |cRXP_LOOT_Peerless Eye|r and |T133743:0|t[|cRXP_LOOT_Book: The Powers Below|r]
    *|cRXP_WARN_Be careful as |cRXP_ENEMY_Twilight Thugs|r can|r |T132343:0|t[Disarm] |cRXP_WARN_you for 6 seconds|r << Rogue/Paladin/Warrior/Shaman
    *|cRXP_WARN_Be careful as |cRXP_ENEMY_Twilight Disciples|r cast|r |T135953:0|t[Renew] |cRXP_WARN_and a 3 second|r |T135915:0|t[Heal]
    .complete 98042,1 -- Peerless Eye (1)
    .mob +Twilight Disciple
    .mob +Twilight Thug
    .collect 5352,1,968,1 --Book: The Powers Below (1)
    .disablecheckbox
step
    .goto 1439,38.660,87.305
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Therylune|r. This will start an escort
    >>|cRXP_WARN_Skip this step if she is not there|r
    .accept 945 >> Accept Therylune's Escape
    .target Therylune
step
    #label TheryluneEnd
    .goto 1439/1,288.26,4530.40
    >>|cRXP_WARN_Escort |cRXP_FRIENDLY_Therylune|r out of The Masters Glaive|r
    .complete 945,1 --Escort Therylune away from the Master's Glaive (1)
    .isOnQuest 945
step
    #loop
    .goto 1439/1,376.800,4608.600,40,0
    .goto 1439/1,453.100,4580.200,40,0
    .goto 1439/1,409.4366,4521.0151,40,0
    >>Kill |cRXP_ENEMY_Twilight Disciples|r and |cRXP_ENEMY_Twilight Thugs|r. Loot them for the |cRXP_LOOT_Peerless Eye|r and |T133743:0|t[|cRXP_LOOT_Book: The Powers Below|r]
    *|cRXP_WARN_Be careful as |cRXP_ENEMY_Twilight Thugs|r can|r |T132343:0|t[Disarm] |cRXP_WARN_you for 6 seconds|r << Rogue/Paladin/Warrior/Shaman
    *|cRXP_WARN_Be careful as |cRXP_ENEMY_Twilight Disciples|r cast|r |T135953:0|t[Renew] |cRXP_WARN_and a 3 second|r |T135915:0|t[Heal]
    .complete 98042,1 -- Peerless Eye (1)
    .mob +Twilight Disciple
    .mob +Twilight Thug
    .collect 5352,1,968,1 --Book: The Powers Below (1)
    .disablecheckbox
step
    #optional
    #sticky
    .isQuestTurnedIn 949
    .destroy 5251 >> Delete the |T134715:0|t[Phial of Scrying] from your bags, as it's no longer needed
step
    #optional
    #completewith TurtleSouth
    #completewith prospector << Hunter
    >>Kill |cRXP_ENEMY_Moonstalker Sires|r. Loot them for their |cRXP_LOOT_Pelts|r
    >>Be careful as they can cast |T132090:0|t[Exploit Weakness] a backstab attack dealing 20-40 damage if you turn your back to them
    .complete 986,1 -- Fine Moonstalker Pelt (5)
    .isOnQuest 986
    .unitscan Moonstalker Sire
step
    #optional
    .goto 1439/1,227.35,4575.38,50,0
    .goto 1439/1,205.73,4639.130,50,0
    .goto 1439/1,129.10,4741.75,50,0
    .goto 1439/1,86.52,4839.13,50,0
    .goto 1439/1,338.70,4821.22,50,0
    .goto 1439/1,452.67,4684.98
    >>Kill |cRXP_ENEMY_Grizzled Thistle Bears|r. Loot them for their |cRXP_LOOT_Scalps|r
    >>|cRXP_WARN_Be careful as they cast|r |T132152:0|t[Ravage] |cRXP_WARN_an instant attack dealing 20-40 damage and knocking you down for 2 seconds|r
    .complete 1003,1 -- Grizzled Scalp (4)
    .isOnQuest 1003
    .mob Grizzled Thistle Bear
step
    #label LastBuzz
    .goto 1439,41.390,80.563
    >>Click the |cRXP_PICK_Buzzbox 525|r on the ground
    .turnin 1003 >> Turn in Buzzbox 525
    .isQuestComplete 1003
step
    .goto 1439,43.555,76.293
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Onu|r
    .turnin 950 >> Turn in Return to Onu
    .timer 11.5,Return to Onu RP
--  .timer 14,Return to Onu RP
    .accept 951 >> Accept Mathystra Relics
    .target Onu
step
    #optional
    >>|cRXP_WARN_Use the |T133743:0|t[|cRXP_LOOT_Book: The Powers Below|r] to start the quest|r
    .accept 968 >> Accept The Powers Below
    .use 5352
    .itemcount 5352,1
step << Hunter
    #optional
    .goto 1439/1,417.30,4575.82
    .xp 17 >> Grind to level 17
step << Hunter
    #sticky
    #label prospector
    .goto 1439,35.724,83.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Remtravel|r
    >>|cRXP_WARN_You may have to wait for him to respawn or for others to finish the escort|r
    .turnin 729 >> Turn in The Absent Minded Prospector
    .target Prospector Remtravel
step << Hunter
    .goto 1439/1,602.01,4678.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Remtravel|r. This will start an escort
    .accept 731,1 >> Accept The Absent Minded Prospector
    >>|cRXP_WARN_This quest is VERY difficult. You can skip this step and come back at level 19|r
    .link https://www.youtube.com/watch?v=crQAvyRIceU >> |cRXP_WARN_Click here for a video guide|r
    .target Prospector Remtravel
step << Hunter
    #requires prospector
    >>|cRXP_WARN_Escort |cRXP_FRIENDLY_Prospector Remtravel|r through the Excavation|r
    >>|cRXP_WARN_This quest is VERY difficult. You can skip this step and come back at level 19|r
    .link https://www.youtube.com/watch?v=crQAvyRIceU >> |cRXP_WARN_Click here for a video guide|r
    .complete 731,1
    .isOnQuest 731
step << Hunter
    .goto 1439,31.251,87.419
    >>Click the |cRXP_PICK_Beached Sea Creature|r
    .accept 4733 >> Accept Beached Sea Creature
    >>|cRXP_WARN_This quest can be VERY difficult. Engage the |cRXP_ENEMY_Murlocs|r 1 by 1, otherwise you may aggro multiple at the same time|r
    >>|cRXP_WARN_Be aware of |cRXP_ENEMY_Greymist Oracles|r'|r |T136048:0|t[Lightning Bolt] |cRXP_WARN_damage, they can also heal with|r |T136052:0|t[Healing Wave]|r
    .link https://youtu.be/lfQM3Q-Ag5A >> |cRXP_WARN_Click here for a video guide|r
step
    #completewith CompleteThistleBears
--  .goto Darkshore,33.85,80.92,45,0
--  .goto Darkshore,32.17,82.92,45,0
--  .goto Darkshore,35.41,78.96,45,0
--  .goto Darkshore,35.68,75.23,45,0
--  .goto Darkshore,35.03,72.19,45,0
--  .goto Darkshore,35.68,75.23,45,0
--  .goto Darkshore,35.41,78.96,45,0
--  .goto Darkshore,32.17,82.92,45,0
--  .goto Darkshore,33.85,80.92,45,0
--  .goto Darkshore,35.03,72.19
    >>Kill |cRXP_ENEMY_Encrusted Tide Crawlers|r and |cRXP_ENEMY_Reef Crawlers|r. Loot them for their |cRXP_LOOT_Fine Crab Chunks|r
    >>Be careful as |cRXP_ENEMY_Reef Crawlers|r can cast |T132155:0|t[Muscle Tear] an instant attack dealing 30-55 damage
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob Reef Crawler
    .mob Encrusted Tide Crawler
step << Hunter
    .goto 1439,31.229,85.564
    >>|cRXP_WARN_Be aware of |cRXP_ENEMY_Greymist Oracles|r'|r |T136048:0|t[Lightning Bolt] |cRXP_WARN_damage, they can also heal with|r |T136052:0|t[Healing Wave]|r
    >>Care as |cRXP_ENEMY_Greymist Tidehunters|r can cast |T136016:0|t[|cRXP_FRIENDLY_Poison|r] while in melee leaving a dot dealing 13 damage per 3 seconds for 30 seconds
    >>Click the |cRXP_PICK_Beached Sea Turtle|r
    .accept 4732 >> Accept Beached Sea Turtle
step
    #label TurtleSouth
    .goto 1439,31.690,83.700
    >>|cRXP_WARN_Be aware of |cRXP_ENEMY_Greymist Oracles|r'|r |T136048:0|t[Lightning Bolt] |cRXP_WARN_damage, they can also heal with|r |T136052:0|t[Healing Wave]|r
    >>Care as |cRXP_ENEMY_Greymist Tidehunters|r can cast |T136016:0|t[|cRXP_FRIENDLY_Poison|r] while in melee leaving a dot dealing 13 damage per 3 seconds for 30 seconds
    >>Click the |cRXP_PICK_Beached Sea Turtle|r
    .accept 4731 >> Accept Beached Sea Turtle
step << !Hunter
    .goto 1439,32.644,80.711
    >>Click the |cRXP_PICK_Beached Sea Creature|r
    .accept 4730 >> Accept Beached Sea Creature
step << Hunter
    .goto 1439,32.644,80.711
    >>Click the |cRXP_PICK_Beached Sea Creature|r
    .accept 4730 >> Accept Beached Sea Creature
step << Druid
    #optional
    >>|cRXP_WARN_Finish collecting the |T134187:0|t[Earthroot] via |T136065:0|t[Herbalism] and rarely|r |cRXP_PICK_Battered Chests|r
    >>|cRXP_WARN_If you give up and can't find enough, skip this step|r
    .complete 6123,1 --Earthroot (5)
    .isOnQuest 6123
    .skill herbalism,<15,1
--XX Add waypoints later
step
    #label Murk
    .goto 1439,35.429,76.566,0
    .goto 1439,35.429,76.566,60,0
    .goto 1439/1,541.75,4991.52
    >>|cRXP_WARN_Make sure you check if |cRXP_ENEMY_Murkdeep|r is already up in the water (if someone has previously failed the encounter or left the |cRXP_ENEMY_Greymist Hunter|r in the wave that he spawns with alive)|r
    >>Kill the |cRXP_ENEMY_Greymist Warriors|r and |cRXP_ENEMY_Greymist Hunters|r in the camp
    >>|cRXP_WARN_Move to the Bonfire in the center of the camp to start the |cRXP_ENEMY_Murkdeep|r encounter:|r
    >>|cRXP_WARN_3 waves will spawn from the water, each after killing the previous wave: Wave 1 has 3 level 12-13 |cRXP_ENEMY_Greymist Coastrunners|r, Wave 2 has 2 level 15-16 |cRXP_ENEMY_Greymist Warriors|r, and Wave 3 has a level 19 |cRXP_ENEMY_Murkdeep|r and a level 16-17 |cRXP_ENEMY_Greymist Hunter|r. You can move away from the Bonfire to avoid aggroing the next wave|r
    .complete 4740,1 -- Murkdeep (1)
    .unitscan Murkdeep
    .mob Greymist Warrior
    .mob Greymist Hunter
    .mob Greymist Coastrunner
step
    #label CompleteThistleBears
    .goto 1439,35.968,70.807
    >>Click the |cRXP_PICK_Beached Sea Creature|r
    .accept 4728 >> Accept Beached Sea Creature
step << Druid
    #label Southcrabs
    #requires earthroot
	#completewith FlyDarkshore
	.cast 18960 >> Cast Teleport: Moonglade
	.zoneskip Moonglade
step << Druid
    #requires earthroot
    .goto 1450/1,-2593.82,7867.06
	>>Go to Moonglade
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
    .trainer >> Train your class spells
    .target Loganaar
    .xp <18,1
step << Druid
    #label FlyDarkshore
    .goto 1450/1,-2491.79,7454.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sindrayl|r
    .fly Auberdine >> Fly to Darkshore
    .target Sindrayl
    .zoneskip Darkshore
step << NightElf !Druid/Dwarf Hunter/Human Hunter
    #label Southcrabs
    #completewith CleansingTharnariun
    .subzone 442 >> Travel to Auberdine
step
    #optional
    #completewith next
    .goto 1439,36.806,44.137,8,0
    .goto 1439,35.743,43.710,12 >> Return to |cRXP_FRIENDLY_Cerellean Whiteclaw|r on the dock
step
    #optional
    .goto 1439,35.743,43.710
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cerellean Whiteclaw|r
    >>|cRXP_WARN_You may need to wait out his RP if someone else just turned in|r
    .turnin 963 >> Turn in For Love Eternal
    .target Cerellean Whiteclaw
    .isQuestComplete 963
step
    #optional
    #completewith CleansingTharnariun
    .abandon 963 >> Abandon For Love Eternal
step
    #label BeachedTurnins
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4728 >> Turn in Beached Sea Creature
    .turnin 4730 >> Turn in Beached Sea Creature
    .turnin 4731 >> Turn in Beached Sea Turtle
    .turnin 4732 >> Turn in Beached Sea Turtle << Hunter
    .turnin 4733 >> Turn in Beached Sea Creature << Hunter
    .target Gwennyth Bly'Leggonde
step
    #optional
    .goto 1439/1,577.38,6371.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gubber Blump|r
    .turnin 1138 >> Turn in Fruit of the Sea
    .isQuestComplete 1138
    .target Gubber Blump
step
    .goto 1439/1,531.27,6403.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Laird|r and |cRXP_FRIENDLY_Allyndia|r
    .vendor >> |cRXP_BUY_Vendor and restock on Food and Water|r
    .target Laird
    .target Allyndia
step
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Glynda Nal'Shea|r
    .turnin 4740 >> Turn in WANTED: Murkdeep!
    .target Sentinel Glynda Nal'Shea
step
    .goto 1439/1,492.300,6581.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thundris Windweaver::3649|r
    .target Thundris Windweaver::3649
    .turnin 98042 >>Turn in It's All Fun and Games Until...
step
    #label CleansingTharnariun
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tharnariun Treetender|r
    .turnin 2138 >> Turn in Cleansing of the Infected
    .accept 2139 >> Accept Tharnariun's Hope
    .target Tharnariun Treetender
step << Hunter
    .goto 1439,37.439,41.839
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archaeologist Hollee|r
    .turnin 731 >> Turn in The Absent Minded Prospector
    .accept 741 >> Accept The Absent Minded Prospector
    .target Archaeologist Hollee
    .isQuestComplete 731
step << Hunter
    #optional
    .goto 1439,37.439,41.839
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archaeologist Hollee|r
    .accept 741 >> Accept The Absent Minded Prospector
    .target Archaeologist Hollee
    .isQuestTurnedIn 731
step << Hunter
    #optional
    .goto 1439/1,491.97,6560.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dalmond|r
    .vendor >>|cRXP_BUY_Restock on Ammo|r
    .target Dalmond
step << Druid
    .goto 1439/1,472.32,6556.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alanndarian Nightsong|r
    .turnin 6123 >> Turn in Gathering the Cure
    .isQuestComplete 6123
--     .accept 6124 >> Accept Curing the Sick
-- step << Druid
--     #optional
--     .goto 1439/1,472.32,6556.100
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alanndarian Nightsong|r
--     .accept 6124 >> Accept Curing the Sick
--     .target Alanndarian Nightsong
--     .isQuestTurnedIn 6123
step << Druid
    #optional
    #completewith Buzzbox323End
    .abandon 6123 >> Abandon Gathering the Cure
-- step << Druid
--     #optional
--     #completewith Buzzbox323End
--     .goto 1439/1,-313.68,6883.60,0
--     .goto 1439/1,98.97,7237.30,0
--     .goto 1439/1,347.87,6813.73,0
--     >>|cRXP_WARN_Use the|r |T132801:0|t[Curative Animal Salve] |cRXP_WARN_on|r |cRXP_ENEMY_Sickly Deer|r
--     .complete 6124,1 -- Sickly Deer cured (10)
--     .mob Sickly Deer
--     .isQuestAvailable 1138
-- step << Druid
--     #sticky
--     #label SicklyDeers
--     #loop
--     .goto 1439/1,-313.68,6883.60,0
--     .goto 1439/1,98.97,7237.30,0
--     .goto 1439/1,347.87,6813.73,0
--     .waypoint 1439/1,-313.68,6883.60,40,0
--     .waypoint 1439/1,98.97,7237.30,40,0
--     .waypoint 1439/1,347.87,6813.73,40,0
--     >>|cRXP_WARN_Use the|r |T132801:0|t[Curative Animal Salve] |cRXP_WARN_on|r |cRXP_ENEMY_Sickly Deer|r
--     .complete 6124,1 -- Sickly Deer cured (10)
--     .mob Sickly Deer
--     .use 15826
--     .isQuestTurnedIn 1138
step
    #sticky
    #label Blackwood1
    #completewith Xabraxxis
    .goto 1439/1,-489.22,6875.30,0
    .goto 1439/1,-376.56,6807.62
    >>Open the |cRXP_PICK_Blackwood Grain Stores|r. Loot it for the |T134059:0|t|cRXP_LOOT_[Blackwood Grain Sample]|r
    >>|cRXP_WARN_Looting this will spawn 2 |cRXP_ENEMY_Blackwood Furbolgs|r that will aggro and run towards you. Be ready to fight them or reset them|r
    >>|cRXP_WARN_If you see |cRXP_ENEMY_Xabraxxis|r yell in chat or see someone fighting him, help them. Open the |cRXP_PICK_Xabraxxis' Demon Bag|r he drops on the ground. Loot it for the|r |cRXP_LOOT_Talisman of Corruption|r
    .collect 12342,1,4763,1 -- Blackwood Grain Stores (1)
    .complete 4763,1 --Talisman of Corruption (1)
    .disablecheckbox
    .itemcount 12355,<1 --Talisman of Corruption (<1)
step
    .goto 1439/1,-503.63,6732.95,45,0
    .goto 1439/1,-430.27,6662.65
    >>Kill |cRXP_ENEMY_Den Mother|r
    >>|cRXP_WARN_Be careful as the |cRXP_ENEMY_Thistle Cubs|r can cast|r |T132152:0|t[Ravage]|cRXP_WARN_, a melee instant attack which stuns you for 2 seconds|r
    .complete 2139,1 --Den Mother (1)
    .mob Den Mother
step
    #sticky
    #requires Blackwood1
    #label Blackwood2
    #completewith Xabraxxis
    .goto 1439/1,-489.22,6875.30,0
    .goto 1439/1,-453.20,6870.500
    >>Open the |cRXP_PICK_Blackwood Nut Stores|r. Loot it for the |T133944:0|t|cRXP_LOOT_[Blackwood Nut Sample]|r
    >>|cRXP_WARN_Looting this will spawn 2 |cRXP_ENEMY_Blackwood Furbolgs|r that will aggro and run towards you. Be ready to fight them or reset them|r
    >>|cRXP_WARN_If you see |cRXP_ENEMY_Xabraxxis|r yell in chat or see someone fighting him, help them. Open the |cRXP_PICK_Xabraxxis' Demon Bag|r he drops on the ground. Loot it for the|r |cRXP_LOOT_Talisman of Corruption|r
    .collect 12343,1,4763,1 -- Blackwood Nut Sample (1)
    .complete 4763,1 --Talisman of Corruption (1)
    .disablecheckbox
    .itemcount 12355,<1 --Talisman of Corruption (<1)
step
    #sticky
    #requires Blackwood2
    #label Blackwood3
    #completewith Xabraxxis
    .goto 1439/1,-489.22,6875.30,0
    .goto 1439/1,-520.66,6874.43
    >>Open the |cRXP_PICK_Blackwood Fruit Stores|r. Loot it for the |T134013:0|t|cRXP_LOOT_[Blackwood Fruit Sample]|r
    >>|cRXP_WARN_Looting this will spawn 2 |cRXP_ENEMY_Blackwood Furbolgs|r that will aggro and run towards you. Be ready to fight them or reset them|r
    >>|cRXP_WARN_If you see |cRXP_ENEMY_Xabraxxis|r yell in chat or see someone fighting him, help them. Open the |cRXP_PICK_Xabraxxis' Demon Bag|r he drops on the ground. Loot it for the|r |cRXP_LOOT_Talisman of Corruption|r
    .collect 12341,1,4763,1 -- Blackwood Fruit Sample (1)
    .complete 4763,1 --Talisman of Corruption (1)
    .disablecheckbox
    .itemcount 12355,<1 --Talisman of Corruption (<1)
step
    #optional
    #requires Blackwood3
    #completewith Xabraxxis
    .goto 1439/1,-489.22,6875.30
    .cast 16072 >> |cRXP_WARN_Use the|r |T134712:0|t[Filled Cleansing Bowl] |cRXP_WARN_at the |cRXP_PICK_Bonfire|r to summon|r |cRXP_ENEMY_Xabraxxis|r
    .timer 17,The Blackwood Corrupted RP
    .use 12347
step
    #requires Blackwood3
    #label Xabraxxis
    .goto 1439/1,-489.22,6875.30
    >>Kill |cRXP_ENEMY_Xabraxxis|r. Open the |cRXP_PICK_Xabraxxis' Demon Bag|r he drops on the ground. Loot it for the |cRXP_LOOT_Talisman of Corruption|r
    .use 12347
    .complete 4763,1 -- Talisman of Corruption (1)
    .mob Xabraxxis
step << !Hunter
    #label CompleteFangs
    .goto 1439/1,-503.63,6866.13
    .xp 18 >> Grind to level 18
step << Hunter
    #label CompleteFangs
    .goto 1439/1,-503.63,6866.13
    .xp 18.75 >> Grind to 18 + 75%
    >>Make sure your HS cooldown is <10 min
    >>Skip this step if the area is too crowded
step
    #label LateStalkerFangs
    #optional
    #loop
    .goto 1439,53.629,26.054,0
    .goto 1439,54.204,30.475,0
    .goto 1439,49.775,30.351,0
    .goto 1439,48.894,26.514,0
    .goto 1439,48.022,27.199,60,0
    .goto 1439,48.894,26.514,60,0
    .goto 1439,49.558,26.087,60,0
    .goto 1439,49.902,27.511,60,0
    .goto 1439,49.776,28.393,60,0
    .goto 1439,49.775,30.351,60,0
    .goto 1439,50.818,30.486,60,0
    .goto 1439,50.689,32.001,60,0
    .goto 1439,51.267,32.319,60,0
    .goto 1439,54.204,30.475,60,0
    .goto 1439,53.899,28.638,60,0
    .goto 1439,53.049,27.983,60,0
    .goto 1439,52.764,26.312,60,0
    .goto 1439,53.629,26.054,60,0
    >>Kill |cRXP_ENEMY_Moonstalker Runts|r and |cRXP_ENEMY_Moonstalkers|r. Loot them for their |cRXP_LOOT_Moonstalker Fangs|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .mob Moonstalker
    .isOnQuest 1002
--XX Can do later during Pelts but better if player gets more xp beforehand
step
    .isQuestComplete 1002
    #label Buzzbox323End
    #requires SicklyDeers << Druid
    .goto 1439,51.288,24.554
    >>Click the |cRXP_PICK_Buzzbox 323|r on the ground
    .turnin 1002 >> Turn in Buzzbox 323
    .accept 1003 >> Accept Buzzbox 525
step
    #optional
    .isQuestTurnedIn 1002
    .goto 1439,51.288,24.554
    >>Click the |cRXP_PICK_Buzzbox 323|r on the ground
    .accept 1003 >> Accept Buzzbox 525
step << !Hunter !Druid
    .goto 1439,54.973,24.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Balthule Shadowstrike|r
    .turnin 965 >> Turn in The Tower of Althalaxx
    .accept 966 >> Accept The Tower of Althalaxx
    .target Balthule Shadowstrike
step << !Hunter !Druid
    #loop
    .goto 1439,55.231,26.508,0
    .goto 1439,56.194,27.071,0
    .goto 1439,56.047,26.586,0
    .goto 1439,55.231,26.508,50,0
    .goto 1439,55.369,27.025,50,0
    .goto 1439,55.763,26.695,50,0
    .goto 1439,55.815,26.972,50,0
    .goto 1439,56.194,27.071,50,0
    .goto 1439,56.790,27.621,50,0
    .goto 1439,57.278,26.311,50,0
    .goto 1439,57.046,26.234,50,0
    .goto 1439,56.544,26.598,50,0
    .goto 1439,56.047,26.586,50,0
    .goto 1439,55.743,25.915,50,0
    >>Kill |cRXP_ENEMY_Dark Strand Fanatics|r. Loot them for their |cRXP_LOOT_Worn Parchments|r
    .complete 966,1 --Worn Parchment (4)
    .mob Dark Strand Fanatic
step << !Hunter !Druid
    .goto 1439,54.973,24.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Balthule Shadowstrike|r
    .turnin 966 >> Turn in The Tower of Althalaxx
    .accept 967 >> Accept The Tower of Althalaxx
    .target Balthule Shadowstrike
step
    .goto 1439/1,-800.35,7370.92,55,0
    .goto 1439/1,-855.37,7449.96,55,0
    .goto 1439/1,-880.91,7302.36,55,0
    .goto 1439/1,-950.34,7258.26,55,0
    .goto 1439/1,-1005.36,7383.58
    >>Loot the |cRXP_LOOT_Mathystra Relics|r on the ground
    .complete 951,1 -- Mathystra Relics (6)
step
    .goto 1439,56.654,13.484
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gelkak Gyromast|r
    .accept 2098 >> Accept Gyromast's Retrieval
    .target Gelkak Gyromast
step
    #optional
    #completewith next
    .goto 1439/1,-732.88,7596.24,0
    >>Kill |cRXP_ENEMY_Raging Reef Crawlers|r and |cRXP_ENEMY_Encrusted Tide Crawlers|r. Loot them for the |cRXP_LOOT_Bottom of Gelkak's Key|r
    >>|cRXP_WARN_Be aware of |cRXP_ENEMY_Raging Reef Crawlers|r'|r |T132152:0|t[Thrash] |cRXP_WARN_ability. You can take 200 damage instantly from their melee hits|r
    .complete 2098,3 -- Bottom of Gelkak's Key (1)
    .mob Raging Reef Crawler
    .mob Encrusted Tide Crawler
step
    .goto 1439/1,-656.25,7801.04
    >>Kill |cRXP_ENEMY_Greymist Oracles|r and |cRXP_ENEMY_Greymist Tidehunters|r. Loot them for the |cRXP_LOOT_Middle of Gelkak's Key|r
    >>|cRXP_WARN_Be aware of |cRXP_ENEMY_Greymist Oracles|r'|r |T136048:0|t[Lightning Bolt] |cRXP_WARN_damage and they can also heal with|r |T136052:0|t[Healing Wave]|r
    >>Care as |cRXP_ENEMY_Greymist Tidehunters|r can cast |T136016:0|t[|cRXP_FRIENDLY_Poison|r] while in melee leaving a dot dealing 13 damage per 3 seconds for 30 seconds
    >>|cRXP_WARN_You can LoS (Line of Sight) the |cRXP_ENEMY_Greymist Oracles|r'|r  |T136048:0|t[Lightning Bolts] |cRXP_WARN_around the sunken ship to avoid taking its damage|r
    .complete 2098,2 -- Middle of Gelkak's Key (1)
    .mob Greymist Tidehunter
    .mob Greymist Oracle
step
    .goto 1439/1,-699.48,7591.87,45,0
    .goto 1439/1,-579.61,7505.41,45,0
    .goto 1439/1,-421.10,7372.67,45,0
    .goto 1439/1,-767.60,7805.84
    >>Kill |cRXP_ENEMY_Raging Reef Crawlers|r and |cRXP_ENEMY_Encrusted Tide Crawlers|r. Loot them for the |cRXP_LOOT_Bottom of Gelkak's Key|r
    >>|cRXP_WARN_Be aware of |cRXP_ENEMY_Raging Reef Crawlers|r'|r |T132152:0|t[Thrash] |cRXP_WARN_ability. You can take 200 damage instantly from their melee hits|r
    .complete 2098,3 -- Bottom of Gelkak's Key (1)
    .mob Raging Reef Crawler
    .mob Encrusted Tide Crawler
step
    #sticky
    #label foreststriders
    .goto 1439/1,-941.83,7756.06,55,0
    .goto 1439/1,-1080.03,7922.87,50,0
    .goto 1439/1,-1087.24,7780.51,50,0
    .goto 1439/1,-1069.55,7661.74,50,0
    .goto 1439/1,-1080.03,7922.870
    >>Kill |cRXP_ENEMY_Giant Foreststriders|r. Loot them for the |cRXP_LOOT_Top of Gelkak's Key|r
    .complete 2098,1 -- Top of Gelkak's Key (1)
    .mob Giant Foreststrider
step
    #label NorthStalkerPelts
    .goto 1439/1,-1080.03,7922.87,45,0
    .goto 1439/1,-1146.84,7998.41
    >>Kill |cRXP_ENEMY_Moonstalker Sires|r and |cRXP_ENEMY_Moonstalker Matriarchs|r. Loot them for their |cRXP_LOOT_Pelts|r
    >>|cRXP_WARN_Be aware of |cRXP_ENEMY_Moonstalker Matriarchs|r. They always attack with a |cRXP_ENEMY_Moonstalker Runt|r by their side|r
    >>|cRXP_ENEMY_Moonstalker Sires|r can cast |T132090:0|t[Exploit Weakness] a backstab attack dealing 20-40 damage if you turn your back to them
    .complete 986,1 -- Fine Moonstalker Pelt (5)
    .mob Moonstalker Sire
    .mob Moonstalker Matriarch
    .mob Moonstalker Runt
step << Warrior/Paladin/Rogue/Shaman
    #requires foreststriders
    .goto 1439,56.654,13.484
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gelkak Gyromast|r
    >>|cRXP_WARN_Start looking for a group for Gyromast's Revenge/|r|cRXP_ENEMY_The Threshwackonator 4100|r << Warrior/Paladin/Rogue/Shaman
    .turnin 2098 >> Turn in Gyromast's Retrieval
    .accept 2078 >> Accept Gyromast's Revenge
    .target Gelkak Gyromast
    .solo
step
    #requires foreststriders
    .group 2 << Warrior/Paladin/Rogue/Shaman
    .goto 1439,56.654,13.484
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gelkak Gyromast|r
    >>|cRXP_WARN_Start looking for a group for Gyromast's Revenge/|r|cRXP_ENEMY_The Threshwackonator 4100|r << Warrior/Paladin/Rogue/Shaman
    .turnin 2098 >> Turn in Gyromast's Retrieval
    .accept 2078 >> Accept Gyromast's Revenge
    .target Gelkak Gyromast
step
    #optional
    #completewith next
    .goto 1439,55.802,18.290
    .gossipoption 95406 >> Talk to |cRXP_FRIENDLY_The Threshwackonator 4100|r to start the escort
--  .gossipoption 87696 >> Talk to |cRXP_FRIENDLY_The Threshwackonator 4100|r to start the escort
    >>|cRXP_WARN_This quest is VERY difficult|r
    .target The Threshwackonator 4100
    .isOnQuest 2078 << Warrior/Paladin/Rogue/Shaman
step
    #label Turtle4727
    .goto 1439,53.113,18.099
    >>Click the |cRXP_PICK_Beached Sea Turtle|r
    .accept 4727 >> Accept Beached Sea Turtle
step
    .goto 1439,56.654,13.484
    #optional
    >>Escort |cRXP_FRIENDLY_The Threshwackonator 4100|r to |cRXP_FRIENDLY_Gelkak Gyromast|r
    >>Kill |cRXP_ENEMY_The Threshwackonator 4100|r once it turns hostile
    >>|cRXP_WARN_This quest is VERY difficult|r
    *Only use ranged attacks while running from it, avoid being at melee range << Druid
    >>|cRXP_WARN_Try to do this quest if you can as it'll save you time later as it rewards|r |T134797:0|t[Elixirs of Water Breathing] |cRXP_WARN_for underwater quests later|r << !Druid !Warlock !Shaman
    >>|cRXP_WARN_Use|r |T136100:0|t[Entangling Roots] |cRXP_WARN_on him when he turns hostile then create distance and kite using instant cast spells|r << Druid
    >>|cRXP_WARN_If you are unable to kill the |cRXP_ENEMY_The Threshwackonator 4100|r, skip this step|r
    .complete 2078,1 --Gyromast's Revenge (1)
    .link https://youtu.be/1WRRmKYBr9s >> |cRXP_WARN_Click here for a video guide|r
    .mob The Threshwackonator 4100
    .isOnQuest 2078 << Warrior/Paladin/Rogue/Shaman
--XX DRUID: Test if you can root
step
    #optional << Warrior/Paladin/Rogue/Shaman
    .goto 1439,56.654,13.484
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gelkak Gyromast|r
    .turnin 2078 >> Turn in Gyromast's Revenge
    .target Gelkak Gyromast
    .isQuestComplete 2078
step
    #optional
    #completewith BeachedCloak
    .abandon 2078 >> Abandon Gyromast's Revenge
step << Druid
    #optional
    #completewith DeerComplete
    >>Kill |cRXP_ENEMY_Encrusted Tide Crawlers|r. Loot them for their |cRXP_LOOT_Fine Crab Chunks|r
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob Encrusted Tide Crawler
step
    #sticky
    #label DeleteGyromast
    #optional
    .destroy 7442 >> Delete |T134459:0|t[Gyromast's Key] from your bags, as it's no longer needed
step << !NightElf/!Dwarf Hunter/!Human Hunter/!Druid
    #completewith BeachedCloak
    #map Darkshore
    .goto 1448/1,577.92,6371.65,100 >> Travel to Auberdine
    .cooldown item,6948,<0
step << !NightElf/!Dwarf Hunter/!Human Hunter/!Druid
    .hs >> Hearth to Auberdine
    .cooldown item,6948,>2,1
    .subzoneskip 442 --auberdine
    .bindlocation 442,1
step << Druid
    #label Turtle4727
    .goto 1439,53.113,18.099
    >>Click the |cRXP_PICK_Beached Sea Turtle|r
    .accept 4727 >> Accept Beached Sea Turtle
-- step << Druid
--     #label DeerComplete
--     #loop
--     .goto 1439/1,-313.68,6883.60,0
--     .goto 1439/1,98.97,7237.30,0
--     .goto 1439/1,347.87,6813.73,0
--     .goto 1439/1,-313.68,6883.60,40,0
--     .goto 1439/1,98.97,7237.30,40,0
--     .goto 1439/1,347.87,6813.73,40,0
--     >>|cRXP_WARN_Use the|r |T132801:0|t[Curative Animal Salve] |cRXP_WARN_on|r |cRXP_ENEMY_Sickly Deer|r
--     .complete 6124,1 -- Sickly Deer cured (10)
--     .mob Sickly Deer
--     .use 15826
step << Druid
    .goto 1439/1,-259.32,7839.03
    >>|cRXP_WARN_Swim out in the water|r
    >>Open the |cRXP_PICK_Strange Lockbox|r. Loot it for the |cRXP_LOOT_Half Pendant of Aquatic Agility|r
    .collect 15883,1,272,1 --Collect Half Pendant of Aquatic Agility (x1)

step << Dwarf Hunter/Human Hunter
    #softcore
    #optional
    #completewith next
    .deathskip >> Grind until your HS cooldown is <6 minutes. Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
step << Dwarf Hunter/Human Hunter
    #hardcore
    #optional
    #completewith next
    +Grind until your HS cooldown is <9 minutes then run back to Auberdine
step << !NightElf !Hunter
    #softcore
    #optional
    #completewith next
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
    .target Spirit Healer
step << !NightElf
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thundris Windweaver|r
    .turnin 4763 >> Turn in The Blackwood Corrupted
    .target Thundris Windweaver
step << !NightElf
    #optional
    #completewith BeachedCloak
    .destroy 12342 >> Delete the |T134059:0|t|cRXP_LOOT_[Blackwood Grain Sample]|r from your bags, as it's no longer needed
step << !NightElf
    #optional
    #completewith BeachedCloak
    .destroy 12343 >> Delete the |T133944:0|t|cRXP_LOOT_[Blackwood Nut Sample]|r from your bags, as it's no longer needed
step << !NightElf
    #optional
    #completewith BeachedCloak
    .destroy 12341 >> Delete the |T134013:0|t|cRXP_LOOT_[Blackwood Fruit Sample]|r from your bags, as it's no longer needed
step << !NightElf
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tharnariun Treetender|r
    .turnin 2139 >> Turn in Tharnariun's Hope
    .target Tharnariun Treetender
step << !NightElf
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Terenthis|r
    .turnin 986 >> Turn in A Lost Master
    .accept 993 >> Accept A Lost Master
    .target Terenthis
step << !NightElf
    #optional
    #completewith BeachedCloak
    >>|cRXP_WARN_If you equip the|r |T133762:0|t[Enchanted Moonstalker Cloak]|cRXP_WARN_, make sure you save your current cloak for later as the|r |T133762:0|t[Enchanted Moonstalker Cloak] |cRXP_WARN_is lost upon a later turn in|r
    .equip 15,5387 >>|cRXP_WARN_Equip the|r |T133762:0|t[Enchanted Moonstalker Cloak] |cRXP_WARN_If it's better than your current Cloak|r
    .itemcount 5387,1
    .itemStat 15,QUALITY,<7
step << Dwarf Hunter/Human Hunter
    #label TravelDarnDwarfHBoat
    #completewith DarnDwarfHBoat
    .goto 1439,33.169,40.179,15 >> Travel to the dock of the Darnassus boat
    .zoneskip Teldrassil
    .zoneskip Darnassus
step << Dwarf Hunter/Human Hunter
    #optional
    #label DarnDwarfHCook1
    #requires TravelDarnDwarfHBoat
    #completewith DarnDwarfHBoat
    >>|cRXP_WARN_On the Boat if it just arrived or on the dock if the boat just left:|r
    .cast 818 >>|cRXP_WARN_Create a|r |T135805:0|t[Basic Campfire] |cRXP_WARN_(under the General Tab of your Spellbook)|r
    .usespell 818
    .zoneskip Teldrassil
    .zoneskip Darnassus
    .itemcount 6889,1 --Small Egg (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step << Dwarf Hunter/Human Hunter
    #optional
    #requires DarnDwarfHCook1
    #completewith DarnDwarfHBoat
    >>|cRXP_WARN_You need 50|r |T133971:0|t[Cooking] |cRXP_WARN_for a quest in Duskwood later|r
    >>|T133971:0|t[Cook] |cRXP_WARN_the|r |T132832:0|t|cRXP_LOOT_[Small Eggs]|r |cRXP_WARN_and|r |T134059:0|t[Mild Spices] |cRXP_WARN_into|r |T132834:0|t[Herb Baked Eggs]
    .usespell 2550
    .zoneskip Teldrassil
    .zoneskip Darnassus
    .itemcount 6889,1 --Small Egg (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step << Dwarf Hunter/Human Hunter
    #label DarnDwarfHBoat
    .goto 1439,33.213,39.883
    .zone Teldrassil >> Take the boat to Darnassus
    .zoneskip Darnassus
step << Dwarf Hunter/Human Hunter
    .goto 1438/1,841.56,8640.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vesprystus|r
    .fp Teldrassil >> Get the Teldrassil Flight Path
    .target Vesprystus
step << Dwarf Hunter/Human Hunter
    #optional
    #completewith next
    .goto 1438/1,965.80,8780.95
    .zone Darnassus >> Take the purple portal into Darnassus
step << Dwarf Hunter/Human Hunter
    #completewith next
    .goto 1457/1,2511.01,10178.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jocaste|r
    .trainer >> Train your class spells
    .target Jocaste
step << Dwarf Hunter/Human Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ilyenia Moonfire|r
    .skipgossipid 96881
    .goto 1457/1,2329.19,9908.60
    .train 264 >> Train Bows
    .train 227 >> Train Staves
    .target Ilyenia Moonfire
step << Dwarf Hunter/Human Hunter
    .goto 1457/1,2268.76,9770.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Landria|r
    >>|cRXP_BUY_Buy a|r |T135489:0|t[Heavy Recurve Bow] |cRXP_BUY_and a|r |T134410:0|t[Medium Quiver] |cRXP_BUY_from her|r
    .collect 3027,1 -- Heavy Recurve Bow
    .collect 11362,1 -- Medium Quiver
    .target Landria
    .money <0.7349
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.20
step << Hunter
    #completewith next
    +|cRXP_WARN_Equip the|r |T135489:0|t[Heavy Recurve Bow]
    .use 3027
    .itemcount 3027,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.19
    .xp <20,1
step << Dwarf Hunter/Human Hunter
    .goto 1438/1,2607.86,9641.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Archaeologist Greywhisker|r
    .turnin 741 >> Turn in The Absent Minded Prospector
    .accept 942 >> Accept The Absent Minded Prospector
    .target Chief Archaeologist Greywhisker
    .isOnQuest 741
step << Dwarf Hunter/Human Hunter
    #optional
    .goto 1438/1,2607.86,9641.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Archaeologist Greywhisker|r
    .accept 942 >> Accept The Absent Minded Prospector
    .target Chief Archaeologist Greywhisker
    .isQuestTurnedIn 741
step << Druid
    #optional
	#completewith MoongladeTrain
	.cast 18960 >> Cast Teleport: Moonglade
	.zoneskip Moonglade
-- step << Druid
--     .goto 1450/1,-2678.53,8023.63
--     >>Go to Moonglade
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dendrite Starblaze|r
--     .turnin 6124 >> Turn in Curing the Sick
--     .accept 6125 >> Accept Power over Poison
--     .target Dendrite Starblaze
--     .isQuestTurnedIn 6123
step << Druid
    #label MoongladeTrain
    .goto 1450/1,-2593.82,7867.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
    .trainer >> Train your class spells
    .target Loganaar
step << NightElf/Dwarf Hunter/Human Hunter
    #completewith BeachedCloak
    #map Darkshore
    .goto 1448/1,577.92,6371.65,100 >> Travel to Auberdine
    .cooldown item,6948,<0
step << NightElf/Dwarf Hunter/Human Hunter
    #optional
    #completewith next
    .hs >> Hearth to Auberdine
    .cooldown item,6948,>0,1
step
    #label BeachedCloak
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4727 >> Turn in Beached Sea Turtle
    .target Gwennyth Bly'Leggonde
step
    #requires DeleteGyromast
    .goto 1439/1,577.38,6371.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gubber Blump|r
    .turnin 1138 >> Turn in Fruit of the Sea
    .target Gubber Blump
    .isQuestComplete 1138
step << NightElf
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thundris Windweaver|r
    .turnin 4763 >> Turn in The Blackwood Corrupted
    .target Thundris Windweaver
step << NightElf
    #optional
    #completewith LostMasters
    .destroy 12342 >> Delete the |T134059:0|t|cRXP_LOOT_[Blackwood Grain Sample]|r from your bags, as it's no longer needed
step << NightElf
    #optional
    #completewith LostMasters
    .destroy 12343 >> Delete the |T133944:0|t|cRXP_LOOT_[Blackwood Nut Sample]|r from your bags, as it's no longer needed
step << NightElf
    #optional
    #completewith LostMasters
    .destroy 12341 >> Delete the |T134013:0|t|cRXP_LOOT_[Blackwood Fruit Sample]|r from your bags, as it's no longer needed
step << NightElf Hunter
    .goto 1439/1,488.69,6564.830
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dalmond|r
    .vendor >> Stock up on |T132382:0|t[Sharp Arrows]
    .target Dalmond
step << NightElf
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tharnariun Treetender|r
    .turnin 2139 >> Turn in Tharnariun's Hope
    .target Tharnariun Treetender
step << NightElf
    #label LostMasters
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Terenthis|r
    .turnin 986 >> Turn in A Lost Master
    .accept 993 >> Accept A Lost Master
    .target Terenthis

step << NightElf
    #optional
    >>|cRXP_WARN_If you equip the|r |T133762:0|t[Enchanted Moonstalker Cloak]|cRXP_WARN_, make sure you save your current cloak for later as the|r |T133762:0|t[Enchanted Moonstalker Cloak] |cRXP_WARN_is lost upon a later turn in|r
    .equip 15,5387 >>|cRXP_WARN_Equip the|r |T133762:0|t[Enchanted Moonstalker Cloak] |cRXP_WARN_If it's better than your current Cloak|r
    .itemcount 5387,1
    .itemStat 15,QUALITY,<7

--Hunter stays Darkshore/Ashenvale
--Shaman to IF for training then SW > Redridge
--!Hunter !Shaman straight to SW > Redridge

step << !Hunter
    .goto 1439/1,488.69,6564.830
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dalmond|r
    >>|cRXP_BUY_Buy a|r |T135237:0|t[Flint and Tinder] |cRXP_BUY_and a|r |T135435:0|t[Simple Wood] |cRXP_BUY_from him|r
    >>|cRXP_WARN_This is for leveling up your|r |T133971:0|t[Cooking] |cRXP_WARN_while on the boat soon|r
    >>|cRXP_WARN_You need 50|r |T133971:0|t[Cooking] |cRXP_WARN_for a quest in Duskwood later|r
    .collect 4470,1 --Simple Wood (1)
    .collect 4471,1 --Flint and Tinder (1)
    .itemcount 6889,1 -- Small Egg (1+)
    .skill cooking,50,1
    .target Dalmond
step << !Hunter
    #completewith next
    .goto 1439,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gorbold Steelhand|r
    .vendor 6301 >>|cRXP_BUY_Buy|r |T134059:0|t[Mild Spices] |cRXP_BUY_from him until you have|r |T134059:0|t[Mild Spices] |cRXP_BUY_equal or more than the amount of|r |T132832:0|t[Small Eggs] |cRXP_BUY_that you currently have|r
    .collect 2678,50,90,1,0x20,cooking --Mild Spices (1-50)
    .disablecheckbox
    .collect 6889,50,90,1,0x20,cooking --Small Egg (1-50)
    .disablecheckbox
    .target Gorbold Steelhand
    .skill cooking,50,1 --XX Shows if cooking skill is <50
    .itemcount 6889,1 -- Small Egg (1+)
step << !Hunter
    #label TravelMenethilRRBoat
    #completewith MenethilRRBoat
    .goto 1439/1,926.400,6542.900,15 >> Travel to the dock of the Stormwind City boat << !Shaman
    .goto 1439,32.432,43.744,15 >> Travel to the dock of the Menethil Harbor boat << Shaman
    .zoneskip Loch Modan
    .zoneskip Dun Morogh
    .zoneskip Ironforge
    .zoneskip Wetlands
    .zoneskip Stormwind City
    .zoneskip Redridge Mountains
step << !Hunter
    #optional
    #label DarkshoreRRCook1
    #requires TravelMenethilRRBoat
    #completewith MenethilRRBoat
    >>|cRXP_WARN_On the Boat if it just arrived or on the dock if the boat just left:|r
    .cast 818 >>|cRXP_WARN_Create a|r |T135805:0|t[Basic Campfire] |cRXP_WARN_(under the General Tab of your Spellbook)|r
    .usespell 818
    .zoneskip Loch Modan
    .zoneskip Dun Morogh
    .zoneskip Ironforge
    .zoneskip Wetlands
    .zoneskip Stormwind City
    .zoneskip Redridge Mountains
    .itemcount 6889,1 --Small Egg (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step << !Hunter
    #optional
    #requires DarkshoreRRCook1
    #completewith MenethilRRBoat
    >>|cRXP_WARN_You need 50|r |T133971:0|t[Cooking] |cRXP_WARN_for a quest in Duskwood later|r
    >>|T133971:0|t[Cook] |cRXP_WARN_the|r |T132832:0|t|cRXP_LOOT_[Small Eggs]|r |cRXP_WARN_and|r |T134059:0|t[Mild Spices] |cRXP_WARN_into|r |T132834:0|t[Herb Baked Eggs]
    .usespell 2550
    .zoneskip Loch Modan
    .zoneskip Dun Morogh
    .zoneskip Ironforge
    .zoneskip Wetlands
    .zoneskip Stormwind City
    .zoneskip Redridge Mountains
    .itemcount 6889,1 --Small Egg (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step << !Hunter
    #label MenethilRRBoat
    .goto 1439/1,826.67,6409.82 << Shaman
    .goto 1439/1,929.100,6543.600 << !Hunter !Shaman
    >>|cRXP_WARN_Level your|r |T135966:0|t[First Aid] |cRXP_WARN_while waiting for the boat|r << Rogue/Warrior/Paladin
    .zone Stormwind City >> Take the boat to Stormwind City << !Shaman
    .zone Wetlands >> Take the boat to Menethil Harbor << Shaman
    .zoneskip Loch Modan
    .zoneskip Dun Morogh
    .zoneskip Ironforge
    .zoneskip Wetlands
    .zoneskip Stormwind City
    .zoneskip Redridge Mountains
step << Shaman
    .money <0.08
    .goto 1437/0,-819.67,-3691.42,25,0
    .goto 1437/0,-807.26,-3716.22,25,0
    .goto 1437/0,-827.94,-3724.49,25,0
    .goto 1437,10.760,56.721
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Neal Allen|r
    .vendor >> |cRXP_WARN_Buy a|r |T133024:0|t[Bronze Tube]
    >>|cRXP_WARN_This is a limited supply item. Skip this step if |cRXP_FRIENDLY_Neal Allen|r doesn't have one|r
	.target Neal Allen
    .bronzetube
step << Shaman
    .goto 1437/0,-782.03,-3793.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shellei|r
    .fly Ironforge >> Fly to Ironforge
    .target Shellei Brondir
step << Shaman
    .goto 1455/0,-1086.500,-4642.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eldrun Stormbreaker::258098|r
    .target Eldrun Stormbreaker::258098
    .trainer >> Train your class spells
step << Shaman
    #optional
    .goto 1455/0,-1115.43,-4598.86--c:Ironforge,50.826,5.613
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gerrig Bonegrip|r
    .turnin 968 >> Turn in The Powers Below
    .target Gerrig Bonegrip
    .isOnQuest 968
step << Shaman
    #completewith next
    .goto 1455/0,-1249.95,-4793.470
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gearcutter Cogspinner|r
    .vendor >> |cRXP_WARN_Buy a|r |T133024:0|t[Bronze Tube]
    >>|cRXP_WARN_This is a limited supply item. Skip this step if |cRXP_FRIENDLY_Gearcutter Cogspinner|r doesn't have one|r
--  >>You will need 2 bronze tubes for a quest later << Rogue
    .bronzetube
    .target Gearcutter Cogspinner
step << Shaman
    .goto 1455/0,-1330.28,-4843.6,5,0
    .zone Stormwind City >> Enter the Deeprun Tram. Take the tram to Stormwind
    >>|cRXP_WARN_Level your|r |T135966:0|t[First Aid] |cRXP_WARN_if needed while waiting for the tram|r
    >>|cRXP_WARN_You will need your|r |T135966:0|t[First Aid] |cRXP_WARN_to be 80 for a quest at level 24 << Rogue !Dwarf
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance !Hunter
#group RestedXP Forever Guide (A)
#subgroup Speedrun Guide 1-20
--#groupid RXP-SRGCE-A1
#name 19-20 Redridge
#next 20-21 Darkshore/Ashenvale

step << !Shaman
    .goto 1453/0,1193.100,-8328.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Manifest Clerk Philmor::268511|r 
    .target Manifest Clerk Philmor::268511
    .accept 97220 >>Accept Philmor's Favor
step << Mage
    #completewith next
    .goto 1453/0,874.32,-9014.67,10 >> Travel to the Mage Tower
step << Mage
    .goto 1453/0,885.34,-9006.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elsharin|r
    .trainer >> Train your class spells
    .target Elsharin
step << Warlock
    #completewith next
    .goto 1453/0,988.44,-8942.15,20,0
    .goto 1453/0,1015.33,-8978.9,15 >> Travel to The Slaughtered Lamb and go downstairs
step << Warlock
    .goto 1453/0,1029.98,-8971.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >> Train your class spells
    .target Ursula Deline
step << Warlock/Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ardwyn Cailen|r
    >>|cRXP_WARN_Buy a|r |T135139:0|t[Burning Wand] |cRXP_WARN_if it's an upgrade|r
    >>|cRXP_WARN_It's important to buy a non-shadow damage wand. You'll have to deal with mobs resistant to shadow damage later|r
    .goto 1453/0,807.64,-8880.84,14,0
    .goto 1453/0,804.55,-8862.47
    .collect 5210,1
    .target Ardwyn Cailen
step << Paladin/Priest
    #completewith next
    .goto 1453/0,809.52,-8579.22,20 >> Travel to the Stormwind Cathedral
step << Paladin
    .goto 1453/0,859.13,-8559.14,10,0
    .goto 1453/0,861.14,-8573.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arthur the Faithful|r
    .trainer >> Train your class spells
    .target Arthur the Faithful
step << Human Paladin
    .goto 1453/0,845.800,-8545.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duthorian Rall|r
    .turnin 1780 >>Turn in The Tome of Divinity
    .accept 1781 >>Accept The Tome of Divinity
    .target Duthorian Rall
step << Human Paladin
    .goto 1453/0,862.400,-8516.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gazin Tenorm|r
    .turnin 1781 >>Turn in The Tome of Divinity
    .accept 1786 >>Accept The Tome of Divinity
    .target Gazin Tenorm
step << Priest
    .goto 1453/0,862.89,-8519.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Joshua|r
    .trainer >> Train your class spells
    .target Brother Joshua
step
    #optional
    .goto 1453/0,719.67,-8550.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baros Alexston|r
    .turnin 399 >> Turn in Humble Beginnings
    .target Baros Alexston
    .isQuestComplete 399
step << !NightElf
    .goto 1453/0,600.22,-8426.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Furen Longbeard|r
    .turnin 1338 >> Turn in Stormpike's Order
    .target Furen Longbeard
    .isOnQuest 1338
step
    #completewith BMenace
    .goto 1453/0,638.8,-8341.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Billibub Cogspinner|r
    .vendor >> |cRXP_WARN_Buy a|r |T133024:0|t[Bronze Tube]
    >>|cRXP_WARN_This is a limited supply item. Skip this step if |cRXP_FRIENDLY_Billibub Cogspinner|r doesn't have one|r
--    >>You will need 2 bronze tubes for a quest later << Rogue
    .bronzetube
    .target Billibub Cogspinner
step << Rogue
    .goto 1453/0,377.61,-8752.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Osborne|r
    >>|cRXP_WARN_Ensure you train|r |T136058:0|t[Lockpicking] |cRXP_WARN_as well as you will need it for your Rogue class quest soon|r
    .trainer >> Train your class spells
    .train 1804 >> Train |T136058:0|t[Pick Lock]
    .target Osborne the Night Man
step << Rogue
    #completewith next
    .goto 1453/0,374.11,-8762.88,20,0
    .goto 1453/0,326.66,-8818.01,20,0
    .goto 1453/0,323.43,-8817.83,5 >> Enter the SI:7 Headquarters. Travel up stairs toward |cRXP_FRIENDLY_Renzik "The Shiv"|r
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Renzik "The Shiv"|r
    .accept 2281 >> Accept Redridge Rendezvous
    .goto 1453/0,362.55,-8819.80
    .target Renzik "The Shiv"
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wu|r or |cRXP_FRIENDLY_Ilsa|r
    .goto 1453/0,358.25,-8728.28,15,0
    .goto 1453/0,302.6,-8685.53,15,0
	.goto 1453/0,323.3,-8689.29
    .trainer >> Train your class spells
    .target Wu Shen
    .target Ilsa Corbin
step << Mage/Rogue/Warlock/Druid/Warrior/Paladin
    .goto 1453/0,613.12,-8795.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Woo Ping|r
    .train 201 >> Train 1h Swords << Mage/Rogue/Warlock
    .train 1180 >> Train Daggers << Mage/Druid
    .train 202 >> Train 2h Swords << Warrior/Paladin
    .target Woo Ping
step << Rogue
    #ah
    .goto 1453/0,609.63,-8787.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marda Weller|r
    >>|cRXP_BUY_Buy a|r |T135342:0|t[Kris] |cRXP_BUY_or something better from the Auction House|r
    >>|cRXP_WARN_Equip it once you're level 19|r
    .collect 2209,1 --Kris
    .target Marda Weller
    .money <0.7115
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.9
step << Rogue
    #ssf
    .goto 1453/0,609.63,-8787.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marda Weller|r
    >>|cRXP_BUY_Buy a|r |T135342:0|t[Kris]
    >>|cRXP_WARN_Equip it once you're level 19|r
    .collect 2209,1 --Kris
    .money <0.7115
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.9
    .target Marda Weller
step << Rogue
    #optional
    #completewith next
    +|cRXP_WARN_Equip the|r |T135342:0|t[Kris]
    .use 2209
    .itemcount 2209,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.89
    .xp <19,1
step -- must be on quest now to loot Great Goretusk Snout
    #ah
    .goto 1453/0,660.28,-8814.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Auctioneer Jaxon|r
    >>Buy the |T134437:0|t[Anti-Venom] for your |T132290:0|t[Poisons] quest later, and the rest for faster turn ins at Redridge Mountains shortly << !Dwarf Rogue
    >>Buy the following items for faster turn ins at Redridge Mountains shortly << !Rogue/Dwarf Rogue
    >>This will save you time as you won't need to run around looking for mobs to kill. Skip this step if you wish to not buy any
    >>|T134437:0|t[Anti-Venom] << !Dwarf Rogue
    -->>|T134172:0|t[Great Goretusk Snout]
    >>|T134028:0|t[Tough Condor Meat]
    >>|T134321:0|t[Crisp Spider Meat]
    .collect 6452,1,2359,1 << !Dwarf Rogue --Anti-Venom (1)
    --.collect 2296,5,92,1 -- Great Goretusk Snout (5)
    .collect 1080,5,92,1 -- Tough Condor Meat (5)
    .collect 1081,5,92,1 -- Crisp Spider Meat (5)
    .target Auctioneer Jaxon
step
    .goto 1453/0,566.600,-8845.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elaine Trias::483|r
    .target Elaine Trias::483
    .turnin 97220 >>Turn in Philmor's Favor
    .accept 97222 >>Accept Gatehouse Goods
step
    .goto 1453/0,568.300,-8862.200
    .use 277198 >> |cRXP_WARN_Use the|r |T132762:0|t[Gatehouse Shipment] |cRXP_WARN_in front of the |cRXP_PICK_Gatehouse Door|r upstairs|r
    .complete 97222,1 --|1/1 Gatehouse Shipment delivered
step
    .goto 1453/0,566.600,-8845.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elaine Trias::483|r
    .target Elaine Trias::483
    .turnin 97222 >>Turn in Gatehouse Goods
step
    #completewith orcs
    .goto 1453/0,490.12,-8835.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
    .fly Redridge >> Fly to Redridge Mountains << !NightElf
    .fp Stormwind >> Get the Stormwind Flight Path << NightElf
    .target Dungar Longdrink
    .zoneskip Redridge Mountains
step << NightElf
    #completewith RRFP
    .goto 1429/0,389.800,-9119.900
    .zone Elwynn Forest >> Exit Stormwind
    .zoneskip Redridge Mountains
step << NightElf
    #completewith RRFP
    .goto 1433/0,-1948.56,-9582.75
    .zone Redridge Mountains >> Travel to Redridge Mountains
step
    .goto 1433/0,-1906.400,-9606.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Parker|r
    .accept 244 >> Accept Encroaching Gnolls
    .target Guard Parker
step
    .goto 1433/0,-2237.93,-9443.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deputy Feldon|r
    .turnin 244 >> Turn in Encroaching Gnolls
    .accept 246 >> Accept Assessing the Threat
    .accept 98407 >>Accept Show of Force
    .target Deputy Feldon
step << NightElf
    #label RRFP
    .goto 1433/0,-2234.900,-9435.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ariena Stormfeather|r
    .fp Redridge Mountains >> Get the Redridge Mountains flight path
    .target Ariena Stormfeather
step
    #label BMenace
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Marris|r
    .goto 1433/0,-2298.06,-9284.04
    .accept 20 >> Accept Blackrock Menace
    .accept 98387 >>Accept Blackrock Blockade
    .target Marshal Marris
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Oslow|r
    .goto 1433/0,-2268.32,-9279.12
    .accept 125 >> Accept The Lost Tools
    .target Foreman Oslow
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Verner Osgood|r
	.target Verner Osgood
    .goto 1433/0,-2243.14,-9259.43
    .accept 118 >> Accept The Price of Shoes
step
    .group
    .goto 1433/0,-2208.600,-9243.500
    >>Click the |cRXP_PICK_Wanted Poster|r
    .accept 95999 >>Accept WANTED: Incinerator Gar'im
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Solomon|r
	.target Magistrate Solomon
    .goto 1433/0,-2221.65,-9218.60
    .accept 120 >> Accept Messenger to Stormwind
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dockmaster Baren|r
	.target Dockmaster Baren
    .goto 1433/0,-2172.15,-9261.310
    .accept 127 >> Accept Selling Fish
step
    .goto 1433/0,-2152.62,-9217.870
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darcy|r
    >>|cRXP_FRIENDLY_Darcy|r |cRXP_WARN_walks around inside the Inn|r
	.target Darcy
    .accept 129 >> Accept A Free Lunch
step
    .goto 1433/0,-2164.56,-9213.10,8,0
    .goto 1433/0,-2145.67,-9231.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wiley the Black|r upstairs
	.target Wiley the Black
    .turnin 65 >> Turn in The Defias Brotherhood
    .isOnQuest 65
step << skip -- must on quest now to loot Great Goretusk Snout
#optional
    .goto 1433/0,-2062.96,-9209.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chef Breanna|r
    .accept 92 >> Accept Redridge Goulash
    .turnin 92 >> Turn in Redridge Goulash
    .itemcount 2296,5 -- Great Goretusk Snout (5)
    .itemcount 1080,5 -- Tough Condor Meat (5)
    .itemcount 1081,5 -- Crisp Spider Meat (5)
    .target Chef Breanna
step
    .goto 1433/0,-2062.96,-9209.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chef Breanna|r
    .accept 92 >> Accept Redridge Goulash
    .target Chef Breanna
step << Warlock
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Martie Jainrose|r
	.target Martie Jainrose
    .goto 1433/0,-2045.16,-9245.67
    .accept 34 >> Accept An Unwelcome Guest
step << Warlock
    .goto 1433/0,-1911.22,-9288.820
    >>Kill |cRXP_ENEMY_Bellygrub|r. Loot him for his |cRXP_LOOT_Tusk|r
    >>|cRXP_WARN_Kite |cRXP_ENEMY_Bellygrub|r back to Lakeshire so the |cRXP_FRIENDLY_Guards|r assist you in killing|r |cRXP_ENEMY_Bellygrub|r
    >>|cRXP_WARN_This quest is VERY difficult. You can skip this step and come back later|r
    .complete 34,1 -- Bellygrub's Tusk (1)
    .link https://youtu.be/6JE967OG3CU?t=1845 >> |cRXP_WARN_Click here for a video guide|r
    .mob Bellygrub
step << Warlock
    .goto 1433/0,-2045.16,-9245.67
    .target Martie Jainrose
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Martie Jainrose|r
    .turnin 34 >> Turn in An Unwelcome Guest
step << Rogue
    .goto 1433/0,-2180.19,-9328.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lucius|r
    .turnin 2281 >> Turn in Redridge Rendezvous
    .accept 2282 >> Accept Alther's Mill
    .target Lucius
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shawn|r
	.target Shawn
    .goto 1433/0,-2207.10,-9351.52
    .accept 3741 >> Accept Hilary's Necklace
step
    >>|cRXP_WARN_Jump into the Lake|r
    >>Open the |cRXP_PICK_Glinting Mud|r. Loot it for |cRXP_LOOT_Hilary's Necklace|r
    >>|cRXP_WARN_It has multiple spawn locations in the Lake|r
    .goto 1433/0,-2174.32,-9386.56,0
    .goto 1433/0,-2147.41,-9308.08,0
    .goto 1433/0,-2090.96,-9373.82,0
    .goto 1433/0,-1986.76,-9324.30,0
    .goto 1433/0,-2246.40,-9359.92,0
    .goto 1433/0,-2309.57,-9376.28,0
    .goto 1433/0,-2397.70,-9363.97,0
    .goto 1433/0,-1986.76,-9324.30,70,0
    .goto 1433/0,-2397.70,-9363.97,70,0
    .complete 3741,1 --Hilary's Necklace (1)
step << Druid
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hilary|r
	.target Hilary
    .goto 1433/0,-2205.58,-9351.52
    .turnin 3741 >> Turn in Hilary's Necklace
step
    #softcore
    >>Open the |cRXP_PICK_Sunken Chest|r. Loot it for |cRXP_LOOT_Oslow's Toolbox|r
    .goto 1433/0,-2472.16,-9366.72
    .complete 125,1 --Oslow's Toolbox (1)
step
    #sticky
    #completewith orcs
    >>Kill |cRXP_ENEMY_Great Goretusks|r. Loot them for their |cRXP_LOOT_Great Goretusk Snouts|r
    >>Kill |cRXP_ENEMY_Tarantulas|r. Loot them for their |cRXP_LOOT_Crisp Spider Meat|r
    >>Kill |cRXP_ENEMY_Dire Condors|r. Loot them for their |cRXP_LOOT_Tough Condor Meat|r
    >>|cRXP_WARN_Do NOT sell any of these items until you turn the Redridge Goulash quest|r
    >>|cRXP_WARN_Save any|r |T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r |cRXP_WARN_you loot as well as you can use them to level|r |T133971:0|t[Cooking] |cRXP_WARN_to 50 which is required for Duskwood later|r
    .collect 2296,5,92,1
    .collect 1080,5,92,1
    .collect 1081,5,92,1
    .mob Great Goretusk
    .mob Tarantula
    .mob Dire Condor
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Parker|r
	.target Guard Parker
    .goto 1433/0,-1906.400,-9606.800
    .accept 244 >> Accept Encroaching Gnolls
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Parker|r
	.target Guard Parker
    .goto 1433/0,-1906.400,-9606.800
    .turnin 129 >> Turn in A Free Lunch
    .accept 130 >> Accept Visit the Herbalist
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deputy Feldon|r
	.target Deputy Feldon
    .goto 1433/0,-2237.28,-9443.750
    .turnin 244 >> Turn in Encroaching Gnolls
    .accept 246 >> Accept Assessing the Threat
step
    #completewith next
	>>Kill |cRXP_ENEMY_Redridge Mongrels|r and |cRXP_ENEMY_Redridge Poachers|r
    >>Kill |cRXP_ENEMY_Redridge Thrashers|r. Loot them for their |cRXP_LOOT_Spiked Collars|r
    .complete 246,1 --Redridge Mongrel (10)
    .mob +Redridge Mongrel
    .complete 246,2 --Redridge Poacher (6)
	.mob +Redridge Poacher
    .complete 98407,1 --Spiked Collar (5)
	.mob +Redridge Thrasher
step
    .goto 1433/0,-2031.48,-9556.25,45,0
    .goto 1433/0,-1955.07,-9637.63,45,0
    .goto 1433/0,-1813.97,-9679.9,45,0
    .goto 1433/0,-1861.07,-9754.76,45,0
    .goto 1433/0,-1980.25,-9641.10
    >>Kill |cRXP_ENEMY_Tarantulas|r. Loot them for their |cRXP_LOOT_Crisp Spider Meat|r
    .collect 1081,5,92,1
    .mob Tarantula
step
    #loop
    .goto 1433/0,-1913.800,-9490.601,50,0
    .goto 1433/0,-2211.01,-9773.870,45,0
    .goto 1433/0,-2276.79,-9759.11,45,0
    .goto 1433/0,-2508.20,-9620.68,45,0
    .goto 1433/0,-2246.61,-9764.90,45,0
	>>Kill |cRXP_ENEMY_Redridge Mongrels|r and |cRXP_ENEMY_Redridge Poachers|r
    >>Kill |cRXP_ENEMY_Redridge Thrashers|r. Loot them for their |cRXP_LOOT_Spiked Collars|r
    .complete 246,1 --Redridge Mongrel (10)
    .mob +Redridge Mongrel
    .complete 246,2 --Redridge Poacher (6)
	.mob +Redridge Poacher
    .complete 98407,1 --Spiked Collar (5)
	.mob +Redridge Thrasher
step
    .goto 1433/0,-2634.54,-9588.54
    >>Kill |cRXP_ENEMY_Murloc Shorestrikers|r and |cRXP_ENEMY_Murloc Minor Tidecallers|r. Loot them for their |cRXP_LOOT_Fins|r and |cRXP_LOOT_Sunfish|r
	>>|cRXP_WARN_Be aware this area is a hyperspawn, meaning the |cRXP_ENEMY_Murlocs|r respawn quickly|r
    .complete 127,1
    .collect 1468,8,150,1
    .mob Murloc Shorestriker
    .mob Murloc Minor Tidecaller
step
    .goto 1433/0,-2903.07,-9691.340
    >>Kill |cRXP_ENEMY_Dire Condors|r. Loot them for their |cRXP_LOOT_Tough Condor Meat|r
    >>|cRXP_WARN_Skip this step if you aren't seeing any|r |cRXP_ENEMY_Dire Condors|r
    .collect 1080,5,92,1
    .mob Dire Condor
step
    .group 4
    .isOnQuest 95999
    #sticky
    #label IncineratorGarim
    .waypoint 1433/0,-3261.400,-9824.700
    >>Kill |cRXP_ENEMY_Incinerator Gar'im|r inside the cave. Loot him for the |cRXP_LOOT_Broken Staff of Incinerator Gar'im|r
    >>|cRXP_WARN_Skip this step if you are unable to find a group for him|r
    .complete 95999,1 -- Broken Staff of Incinerator Gar'im (1)
    .mob Incinerator Gar'im
step
    #completewith next
    >>Loot the |cRXP_PICK_Grain Sacks|r and |cRXP_PICK_Meat Haunches|r on the ground for |cRXP_LOOT_Stolen Supplies|r
    >>Loot the |cRXP_PICK_Weapon Racks|r and |cRXP_PICK_Stolen Weapons|r the ground
    .complete 98387,1 -- Stolen Supplies (10)
    .complete 98387,2 -- Stolen Weapon (8)
step
    #label orcs
    #loop
    >>Kill |cRXP_ENEMY_Blackrock Grunts|r and |cRXP_ENEMY_Blackrock Outrunners|r. Loot them for their |cRXP_LOOT_Axes|r
	>>|cRXP_WARN_Be aware the |cRXP_ENEMY_Blackrock Outrunners|r will cast |T132149:0|t[Net] on you|r
    .goto 1433/0,-3177.25,-9718.85,60,0
    .goto 1433/0,-3224.57,-9782.42,60,0
    .goto 1433/0,-3259.74,-9566.82,60,0
    .goto 1433/0,-3092.80,-9694.82,60,0
    .goto 1433/0,-3177.25,-9718.85,60,0
    .complete 20,1 --Battleworn Axe (10)
    .mob Blackrock Grunt
	.mob Blackrock Outrunner
step
    #loop
    .goto 1433/0,-3177.25,-9718.85,60,0
    .goto 1433/0,-3224.57,-9782.42,60,0
    .goto 1433/0,-3259.74,-9566.82,60,0
    .goto 1433/0,-3092.80,-9694.82,60,0
    .goto 1433/0,-3177.25,-9718.85,60,0
    >>Loot the |cRXP_PICK_Grain Sacks|r and |cRXP_PICK_Meat Haunches|r on the ground for |cRXP_LOOT_Stolen Supplies|r
    >>Loot the |cRXP_PICK_Weapon Racks|r and |cRXP_PICK_Stolen Weapons|r the ground
    .complete 98387,1 -- Stolen Supplies (10)
    .complete 98387,2 -- Stolen Weapon (8)
step
    #requires IncineratorGarim
step
    .goto 1433/0,-2903.07,-9691.340
    >>Kill |cRXP_ENEMY_Dire Condors|r. Loot them for their |cRXP_LOOT_Tough Condor Meat|r
    .collect 1080,5,92,1
    .mob Dire Condor
step
    #hardcore
    >>|cRXP_WARN_Jump into the Lake|r
    >>Open the |cRXP_PICK_Sunken Chest|r. Loot it for |cRXP_LOOT_Oslow's Toolbox|r
    .goto 1433/0,-2472.16,-9366.72
    .complete 125,1 --Oslow's Toolbox (1)
step
    .goto 1433/0,-2634.54,-9588.54
    .xp 20-7687 >> Grind until you are 7687 xp away from level 20 << !Rogue
    .xp 20-10012 >> Grind until you are 10012 xp away from level 20 << Rogue
step << Rogue
    #completewith next
    .subzone 97 >> Travel to Alther's Mill
step << Rogue
    .goto 1433,51.846,45.116
    >>|cRXP_WARN_You MUST do this for your|r |T132290:0|t[Poisons] |cRXP_WARN_quest later|r
    >>|cRXP_WARN_Stand on the waypoint location. Position your camera and cursor until you can click 3 |cRXP_PICK_Practice Lockboxes|r at once without having to move anything|r
    .skill lockpicking,80 >>|cRXP_WARN_Open the |cRXP_PICK_Practice Lockboxes|r on the ground in Alther's Mill until your|r |T136058:0|t[Lockpicking] skill is 80|r
step << Rogue
	.goto 1433/0,-2700.75,-9222.07
    >>Open |cRXP_PICK_Lucius's Lockbox|r. Loot it for the |cRXP_LOOT_Token of Thievery|r
    .complete 2282,1 --Token of Thievery
    .skill lockpicking,<80,1
step
    #completewith next
    .goto 1433/0,-2298.06,-9284.04,150 >> Travel to Lakeshire
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Marris|r
	.target Marshal Marris
    .goto 1433/0,-2298.06,-9284.04
    .turnin 20 >> Turn in Blackrock Menace
    .turnin 98387 >>Turn in Blackrock Blockade
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Oslow|r
	.target Foreman Oslow
    .goto 1433/0,-2268.32,-9279.12
    .turnin 125 >> Turn in The Lost Tools
    .accept 89 >> Accept The Everstill Bridge
step
    #optional
    .isQuestComplete 95999
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Solomon|r
	.target Magistrate Solomon
    .goto 1433/0,-2207.10,-9231.34,15,0
    .goto 1433/0,-2221.65,-9218.60
    .turnin 95999 >>Turn in WANTED: Incinerator Gar'im
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dockmaster Baren|r
	.target Dockmaster Baren
    .goto 1433/0,-2172.59,-9261.02
    .turnin 127 >> Turn in Selling Fish
    .accept 150 >> Accept Murloc Poachers
    .turnin 150 >> Turn in Murloc Poachers
    .xp <20,1
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dockmaster Baren|r
	.target Dockmaster Baren
    .goto 1433/0,-2172.59,-9261.02
    .turnin 127 >> Turn in Selling Fish
step << Druid
    .goto 1433/0,-2152.62,-9223.67--c:Redridge Mountains,26.8,44.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Brianna|r
    .home Lakeshire >> Set your hearthstone to Lakeshire
    .target Innkeeper Brianna
step
#optional
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chef Breanna|r
	.target Chef Breanna
    .goto 1433/0,-2062.96,-9209.62
    .turnin 92 >> Turn in Redridge Goulash
    .itemcount 2296,5 -- Great Goretusk Snout (5)
    .itemcount 1080,5 -- Tough Condor Meat (5)
    .itemcount 1081,5 -- Crisp Spider Meat (5)
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Martie Jainrose|r
	.target Martie Jainrose
    .goto 1433/0,-2045.38,-9245.82
    .turnin 130 >> Turn in Visit the Herbalist
    .accept 131 >> Accept Delivering Daffodils
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darcy|r
    >>|cRXP_FRIENDLY_Darcy|r |cRXP_WARN_walks around inside the Inn|r
	.target Darcy
    .goto 1433/0,-2152.62,-9216.430
    .turnin 131 >> Turn in Delivering Daffodils
step << Rogue
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lucius|r
	.target Lucius
    .goto 1433/0,-2180.19,-9328.21
    .turnin 2282 >> Turn in Alther's Mill
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hilary|r
	.target Hilary
    .goto 1433/0,-2205.58,-9351.52
    .turnin 3741 >> Turn in Hilary's Necklace
step << Rogue
    #optional
	#completewith InRR
	.destroy 7907 >> Destroy the |T134328:0|t[Certificate of Thievery]. You don't need it
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deputy Feldon|r
	.target Deputy Feldon
    .goto 1433/0,-2237.93,-9443.60
    .turnin 246 >> Turn in Assessing the Threat
    .turnin 98407 >>Turn in Show of Force
step
    .goto 1433/0,-2634.54,-9588.54
    .xp 20 >> Grind until you are level 20

-- Druid Cat form quest --

step << Druid
    #completewith catspirit1
	.cast 18960 >> Cast Teleport: Moonglade
step << Druid
    #completewith next
    .goto 1450/1,-2400.33,7795.33--c:Moonglade,44.148,45.229
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Silva Fil'naveth|r
    .fly Teldrassil >> Fly to Darnassus
    .skipgossip
    .timer 153,Darnassus
    .target Silva Fil'naveth
    .zoneskip Darnassus
    .zoneskip Teldrassil
step << NightElf !Druid
    #hidewindow
    #optional
    #completewith next
    .goto 1438/1,965.80,8780.95
    .zone Darnassus >> Take the purple portal into Darnassus
step << Druid
    #label catspirit1
    .goto 1457/1,2564.600,10179.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mathrengyl Bearwalker::4217|r
    .target Mathrengyl Bearwalker::4217
    .accept 98393 >>Accept The Great Cat Spirit

step << Druid
    .goto 1450/1,-2678.900,8020.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dendrite Starblaze::11802|r
    .target Dendrite Starblaze::11802
    .turnin 98393 >>Turn in The Great Cat Spirit
    .accept 98341 >>Accept The Great Windborne Cat Spirit << Skyborne
    .accept 98341 >>Accept The Great Cat Spirit << !Skyborne
step << Druid !Skyborne
    .goto 1450/1,-2640.000,7338.900
     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Great Cat Spirit|r
    .turnin 98394 >>Turn in The Great Cat Spirit
    .accept 98396 >>Accept The Great Cat Spirit
    .target Great Cat Spirit
step << Druid Skyborne
    .goto 1450/1,-2352.700,7375.600,10,0
    .goto 1450/1,-2394.300,7361.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Avatar of Saeyleenan::272054|r
    .target Avatar of Saeyleenan::272054
    .turnin 98341 >>Turn in The Great Windborne Cat Spirit
    .accept 98404 >>Accept The Great Windborne Cat Spirit
step << Druid
    #completewith next
    .goto 1450/1,-3046.700,7534.400
    --aura 1309054?
    .subzone 2363 >> Head to the Stormrage Barrow Dens
step << Druid
    >>Go deep into the cave, travel across the bridge, look for a cat statue inside an alcove and click on the small orb next to the statue
    >>Loot |cRXP_LOOT_Relic of the Claw|r
    .goto 1450/1,-3117.400,7455.300
    .complete 98404,2 << Skyborne --|1/1 Relic of the Claw
    .complete 98396,2 << !Skyborne --|1/1 Relic of the Claw
step << Druid
    >>Click on the small orb next to the cat statue
    >>Loot |cRXP_LOOT_Relic of the Silent Shadow|r
    .goto 1450/1,-3099.200,7485.700
    .complete 98404,3  << Skyborne --|1/1 Relic of the Silent Shadow
    .complete 98396,3  << !Skyborne --|1/1 Relic of the Silent Shadow
step << Druid
    >>Click on the small orb next to the cat statue
    >>Loot |cRXP_LOOT_Relic of the Fang|r
    .goto 1450/1,-3054.100,7476.800
    .complete 98404,1  << Skyborne --|1/1 Relic of the Fang
    .complete 98396,1  << !Skyborne --|1/1 Relic of the Fang
step << Druid !Skyborne
    .goto 1450/1,-2640.000,7338.900
     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Great Cat Spirit|r
    .turnin 98396 >>Turn in The Great Cat Spirit
    .accept 98731 >>Accept Blessings of the Great Cat Spirit
    .target Great Cat Spirit
step << Druid Skyborne
    .goto 1450/1,-2395.400,7361.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Avatar of Saeyleenan::272054|r
    .target Avatar of Saeyleenan::272054
    .turnin 98404 >>Turn in The Great Windborne Cat Spirit
    .accept 98738 >>Accept Blessings of the Great Windborne Cat Spirit
step << Druid
    .goto 1450/1,-2678.200,8021.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTeleport to Moonglade and talk to |cRXP_FRIENDLY_Dendrite Starblaze::11802|r
    .target Dendrite Starblaze::11802
    .usespell 18960
    .turnin 98738 >>Turn in Blessings of the Great Windborne Cat Spirit << Skyborne
    .accept 98397 >>Accept To Darnassus --<< Alliance
    --.accept 98362 >>Accept To Thunder Bluff << Horde
step << Druid
    #completewith catspirit2
    .goto 1450/1,-2400.33,7795.33--c:Moonglade,44.148,45.229
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Silva Fil'naveth|r
    .fly Teldrassil >> Fly to Darnassus
    .skipgossip
    .timer 153,Darnassus
    .target Silva Fil'naveth
    .zoneskip Darnassus
    .zoneskip Teldrassil
step << Druid
    #completewith next
    .goto 1450/1,-2400.33,7795.33--c:Moonglade,44.148,45.229
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Silva Fil'naveth|r
    .fly Teldrassil >> Fly to Darnassus
    .skipgossip
    .timer 153,Darnassus
    .target Silva Fil'naveth
    .zoneskip Darnassus
    .zoneskip Teldrassil
step << Druid
    #label catspirit2
    .goto 1457/1,2564.400,10179.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mathrengyl Bearwalker::4217|r
    .target Mathrengyl Bearwalker::4217
    .turnin 98397 >>Turn in To Darnassus
step << Druid
    #completewith next
    .hs >> Hearth to Lakeshire

-- Druid cat form quest end --

step
    #completewith InRR
    .goto 1433/0,-2234.89,-9435.35
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ariena Stormfeather|r
	.target Ariena Stormfeather
    .fly Stormwind >> Fly to Stormwind City
step << Rogue
    #ah
    .goto 1453/0,609.63,-8787.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marda Weller|r
    >>|cRXP_WARN_Buy a|r |T135324:0|t[Longsword] |cRXP_WARN_and equip it at 21|r
    >>|cRXP_WARN_Buy something from the Auction House if there's something cheaper/better|r
    .collect 923,1 --Longsword (1)
    .target Marda Weller
    .money <0.8743
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.2
step << Rogue
    #ssf
    .goto 1453/0,609.63,-8787.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marda Weller|r
    >>|cRXP_WARN_Buy a|r |T135324:0|t[Longsword] |cRXP_WARN_and equip it at 21|r
    .collect 923,1 --Longsword (1)
    .target Marda Weller
    .money <0.8743
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.2
step << Rogue
    #optional
    #completewith next
    +|cRXP_WARN_Equip the|r |T135324:0|t[Longsword]
    .use 923
    .itemcount 923,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.19
    .xp <21,1
step << Warrior/Paladin
    #ah
    .goto 1453/0,607.48,-8790.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gunther Weller|r
    >>|cRXP_WARN_Buy a|r |T135280:0|t[Dacian Falx] |cRXP_WARN_if you have enough money. Equip it at 21|r
    >>|cRXP_WARN_Buy something from the Auction House if there's something cheaper/better|r
    .collect 922,1 --Dacian Falx (1)
    .target Gunther Weller
    .money <1.2038
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.0
step << Warrior/Paladin
    #ssf
    .goto 1453/0,607.48,-8790.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gunther Weller|r
    >>|cRXP_WARN_Buy a|r |T135280:0|t[Dacian Falx] |cRXP_WARN_if you have enough money. Equip it at 21|r
    .collect 922,1 --Dacian Falx (1)
    .target Gunther Weller
    .money <1.2038
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.0
step << Warrior/Paladin
    #optional
    #completewith next
    +|cRXP_WARN_Equip the|r |T135280:0|t[Dacian Falx]
    .use 922
    .itemcount 922,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.89
    .xp <21,1
step << Warlock
    #completewith next
    .goto 1453/0,988.44,-8942.15,20,0
    .goto 1453/0,1015.33,-8978.9,15 >> Travel to The Slaughtered Lamb and go downstairs
step << Warlock
    .goto 1453/0,1029.98,-8971.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >> Train your class spells
    .target Ursula Deline
step << Warlock
    .goto 1453/0,1041.54,-8983.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gakin the Darkbinder|r
    .accept 1716 >> Accept Devourer of Souls
    .target Gakin the Darkbinder
step << Mage
    #completewith next
    .goto 1453/0,874.32,-9014.67,10 >> Travel to the Mage Tower
step << Mage
    .goto 1453/0,885.34,-9006.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elsharin|r
    .trainer >> Train your class spells
    .target Elsharin
step << Mage
    .goto 1453/0,847.56,-8991.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Larimaine|r
    .train 3561 >> Train |T135763:0|t[Teleport: Stormwind]
	.xp <20,1
    .target Larimaine Purdue
step
    .goto 1453/0,1093.3,-8779.020
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Argos Nightwhisper|r
    .accept 3765 >> Accept The Corruption Abroad
    .target Argos Nightwhisper
-- step << Druid
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sheldras Moontree|r
--     .goto 1453/0,1100.15,-8776.330
--     .trainer >> Train your class spells
--     .train 768 >> Train |T132115:0|t[Cat Form]
--     .target Sheldras Moontree
step << Paladin/Priest
    #completewith next
    .goto 1453/0,809.52,-8579.22,20 >> Travel to the Stormwind Cathedral
step << Paladin
    .goto 1453/0,845.95,-8545.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duthorian Rall|r. He will give you the |T133739:0|t[|cRXP_LOOT_Tome of Valor|r]
    use 6776 >>|cRXP_WARN_Use the |T133739:0|t[|cRXP_LOOT_Tome of Valor|r] to start the quest|r
    .collect 6776,1,1649 --Tome of Valor (1)
    .accept 1649 >>Accept The Tome of Valor
    .target Duthorian Rall
step << Paladin
    .goto 1453/0,845.95,-8545.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duthorian Rall|r
    .turnin 1649 >>Turn in The Tome of Valor
    .accept 1650 >>Accept The Tome of Valor
    .target Duthorian Rall
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arthur the Faithful|r
    .goto 1453/0,859.13,-8559.14,10,0
    .goto 1453/0,861.14,-8573.03
    .trainer >> Train your class spells
    .target Arthur the Faithful
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Joshua|r
    .goto 1453/0,862.89,-8519.61
    .trainer >> Train your class spells
    .target Brother Joshua
step << Rogue
    .goto 1453/0,377.61,-8752.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Osborne|r
    .trainer >> Train your class spells
    .target Osborne the Night Man
step << Rogue
    #completewith next
    .goto 1453/0,374.11,-8762.88,20,0
    .goto 1453/0,326.66,-8818.01,20,0
    .goto 1453/0,323.43,-8817.83,5 >> Enter the SI:7 Headquarters. Travel up stairs toward |cRXP_FRIENDLY_Master Mathias Shaw|r
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Mathias Shaw|r
    .accept 2360 >> Accept Mathias and the Defias
    .goto 1453/0,362.28,-8815.23
    .target Master Mathias Shaw
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wu|r or |cRXP_FRIENDLY_Ilsa|r
    .goto 1453/0,358.25,-8728.28,15,0
    .goto 1453/0,302.6,-8685.53,15,0
	.goto 1453/0,323.3,-8689.29
    .trainer >> Train your class spells
    .target Wu Shen
    .target Ilsa Corbin



----Start of Rogue 20 Quest <1.59x Section----



step << NightElf Rogue
    .goto 1436/0,1037.42,-10628.27,5,0
    .zone Westfall >> Travel to Westfall
    >>Fly there if you already have the Westfall Flight Path
    .isOnQuest 2360
step << NightElf Rogue
    .goto 1436/0,1037.42,-10628.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thor|r
    .fp Westfall >> Get the Westfall flight path
    .target Thor
    .isOnQuest 2360
step << !NightElf Rogue
    .goto 1453/0,490.03,-8835.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
    .fly Westfall >> Fly to Westfall
    .target Dungar Longdrink
step << !Dwarf Rogue
    .goto 1431/0,404.03,-11014.47,60,0
    .goto 1431/0,432.11,-10878.75,50,0
    .goto 1431/0,551.72,-10688.13
    >>Kill |cRXP_ENEMY_Pygmy Venom Web Spiders|r and |cRXP_ENEMY_Venom Web Spiders|r. Loot them for a |cRXP_LOOT_Small Venom Sac|r and their |cRXP_LOOT_Gooey Spider Legs|r
    >>|cRXP_WARN_You need a |cRXP_LOOT_Small Venom Sac|r to make an|r |T134437:0|t[Anti-Venom] |cRXP_WARN_later to remove the|r |T136230:0|t[Touch of Zanzil] |cRXP_WARN_debuff later|r
    >>|cRXP_WARN_Save the |cRXP_LOOT_Gooey Spider Legs|r for later|r
    >>|cRXP_WARN_If you have a|r |T626003:0|t|cFFF48CBAPaladin|r |cRXP_WARN_or|r |T625999:0|t|cFFFF7C0ADruid|r |cRXP_WARN_friend you can skip this step and ask them to remove it for you|r
    .collect 1475,1,2359,1 -- Small Venom Sac (1)
    .collect 2251,6,93,1,1 -- Gooey Spider Legs (6)
    .disablecheckbox
    .mob Pygmy Venom Web Spider
    .mob Venom Web Spider
    .itemcount 6452,<1 --Anti Venom (<1)
step << Rogue
    #optional
    #completewith TowerKey
    +|cRXP_WARN_==PAY ATTENTION TO THE UPCOMING SECTION==|r
    >>|cRXP_WARN_Press Escape, then go into -> Options -> Controls|r
    >>|cRXP_WARN_Check "Enable Interact Key" and bind the "Interact with Target" option to a key|r
    >>|cRXP_WARN_Additionally, it's recommended you enable Enemy Nameplates (Default Key: V) as it allows you to see enemies behind some of the corners inside the tower|r
step << Rogue
    .goto 1436/0,619.17,-11035.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Agent Kearnen|r
    >>|cRXP_WARN_You MUST do this quest your|r |T132290:0|t[Poisons]
    .turnin 2360 >> Turn in Mathias and the Defias
    .accept 2359 >> Accept Klaven's Tower
    .target Agent Kearnen
step << Rogue
    #label TowerKey
    #loop
    .goto 1436/0,514.52,-11114.77,0
    .goto 1436/0,531.32,-11166.80,0
    .goto 1436/0,581.37,-11104.97,0
    .goto 1436/0,514.52,-11114.77,30,0
    .goto 1436/0,531.32,-11166.80,30,0
    .goto 1436/0,581.37,-11104.97,30,0
    >>|T133644:0|t[Pick Pocket] the |cRXP_ENEMY_Malformed Defias Drone|r. Loot it for the |cRXP_LOOT_Defias Tower Key|r
    >>|cRXP_WARN_You must be in|r |T132320:0|t[Stealth] |cRXP_WARN_to use|r |T133644:0|t[Pick Pocket]
    >>|cRXP_WARN_The |cRXP_ENEMY_Malformed Defias Drone|r spawns at the entrance to the tower, then patrols around the outside of it|r
    >>|cRXP_WARN_Be careful as he deals a LOT of damage. If your|r |T132320:0|t[Stealth] |cRXP_WARN_breaks, quickly use|r |T132307:0|t[Sprint] |cRXP_WARN_and run away|r
    .complete 2359,2 --Collect Defias Tower Key (x1)
    .link https://www.youtube.com/watch?v=5sIew15IcG0 >> Click HERE for a video guide
    .mob Malformed Defias Drone
step << Rogue
    #optional
    #completewith Mortwake
    +|cRXP_WARN_Equip the|r |T135641:0|t[Curvewood Dagger] |cRXP_WARN_for this quest if you don't already have a|r |T135641:0|t[Dagger] |cRXP_WARN_equipped|r
    .use 15396
    .itemcount 15396,1
step << Rogue
    #label Mortwake
    .goto 1436,70.421,74.031
    >>|cRXP_WARN_Travel up to 2nd top floor of the tower. Whilst in|r |T132320:0|t[Stealth] |cRXP_WARN_and the |cRXP_ENEMY_Defias Tower Sentries|r aren't next to you, Jump onto the chair, then onto the lamp, then onto the bookshelf on top of the waypoint location|r
    >>|cRXP_WARN_Manually|r |T132320:0|t[Unstealth]|cRXP_WARN_, then press your "Interact with Target" keybind to open the |cRXP_PICK_Duskwood Chest|r. Loot it for|r |cRXP_LOOT_Klaven Mortwake's Journal|r
    >>|cRXP_WARN_NOTE: Your|r |T132320:0|t[Stealth] |cRXP_WARN_will temporarily stop working after looting|r |cRXP_LOOT_Klaven Mortwake's Journal|r
    >>|cRXP_WARN_Be prepared to run if you don't kill the |cRXP_ENEMY_Defias Tower Sentries|r on the 2nd floor. They will most likely aggro you permanently (but not attack you) when you are on top of the bookshelf as it is an evade spot|r
    >>|cRXP_WARN_If you have a|r |T135641:0|t[Dagger] |cRXP_WARN_in your bags or equipped, you can cast|r |T132282:0|t[Ambush] |cRXP_WARN_on the |cRXP_ENEMY_Defias Tower Patrollers|r and |cRXP_ENEMY_Defias Tower Sentries|r inside to kill them instantly. Be prepared to run after you kill the first |cRXP_ENEMY_Defias Tower Sentry|r and remember you can be hit from above. This is slower, but a LOT safer|r
    >>|cRXP_WARN_Be careful as the |cRXP_ENEMY_Malformed Defias Drone|r and |cRXP_ENEMY_Defias Drones|r can be at the entrance of the tower if you have to run out of it|r
    .complete 2359,1 --Collect Klaven Mortwake's Journal (x1)
    .link https://www.youtube.com/watch?v=5sIew15IcG0 >> Click HERE for a video guide
    .mob Defias Tower Patroller
    .mob Defias Tower Sentry
step << !Dwarf Rogue
    #sticky
    #label AntiVenomStart
    .collect 6452,1 >> Craft an |T134437:0|t[Anti-Venom]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .train 7934,3 --Anti Venom spell trained
step << !Dwarf Rogue
    #optional
    #requires AntiVenomStart
    #label AntiVenomEnd
    .cast 7932 >>|cRXP_WARN_Use the |T134437:0|t[Anti-Venom] in your bags to remove the |T136230:0|t[Touch of Zanzil] debuff|r
    .use 6452
    .aura -9991
    .itemcount 6452,1 --Anti-Venom (1)
step << Dwarf Rogue
    #optional
    #sticky
    #label AntiVenomEnd2
    .cast 20594 >>|cRXP_WARN_Cast |T136225:0|t[Stoneform] to remove the |T136230:0|t[Touch of Zanzil] debuff|r
    .aura -9991
step << Rogue
    #optional
    #completewith KlavenEnd
    .goto 1436/0,1037.42,-10628.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Fly to Stormwind
    .target Thor
step << !Dwarf Rogue
    #optional
    #requires AntiVenomEnd
    #completewith FirstAidEnd
    .goto 1453,42.938,33.878,20,0
    .goto 1453,41.544,31.330,20,0
    .goto 1453,41.688,28.049,20,0
    .goto 1453,43.070,26.155,15 >> Travel toward |cRXP_FRIENDLY_Shaina Fuller|r
    .aura -9991
step << !Dwarf Rogue
    #requires AntiVenomEnd
    .goto 1453,43.070,26.155
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shaina Fuller|r
    >>|cRXP_WARN_If you have a|r |T626003:0|t|cFFF48CBAPaladin|r |cRXP_WARN_or|r |T625999:0|t|cFFFF7C0ADruid|r |cRXP_WARN_friend, ask them to remove the|r |T136230:0|t[Touch of Zanzil] |cRXP_WARN_for you instead|r
    .skill firstaid,80 >> |cRXP_WARN_Level your|r |T135966:0|t[First Aid] |cRXP_WARN_to 80|r
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
step << !Dwarf Rogue
    #label FirstAidEnd
    .goto 1453,43.070,26.155
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shaina Fuller|r
    >>|cRXP_WARN_If you have a|r |T626003:0|t|cFFF48CBAPaladin|r |cRXP_WARN_or|r |T625999:0|t|cFFFF7C0ADruid|r |cRXP_WARN_friend, ask them to remove the|r |T136230:0|t[Touch of Zanzil] |cRXP_WARN_for you instead|r
    .train 7934 >> |cRXP_WARN_Train|r |T134437:0|t[Anti-Venom]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
step << !Dwarf Rogue
    #sticky
    #label AntiVenomStart2
    .collect 6452,1 >> Craft an |T134437:0|t[Anti-Venom]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .train 7934,3 --Anti Venom spell trained
step << !Dwarf Rogue
    #sticky
    #requires AntiVenomStart2
    #label AntiVenomEnd2
    .cast 7932 >>|cRXP_WARN_Use the |T134437:0|t[Anti-Venom] in your bags to remove the |T136230:0|t[Touch of Zanzil] debuff|r
    .use 6452
    .aura -9991
    .itemcount 6452,1 --Anti-Venom (1)
step << Rogue
    #optional
    #requires AntiVenomEnd2 << Rogue
    #completewith next
    .goto 1453/0,374.11,-8762.88,20,0
    .goto 1453/0,326.66,-8818.01,20,0
    .goto 1453/0,323.43,-8817.83,10 >> Enter the SI:7 Headquarters. Travel up stairs toward |cRXP_FRIENDLY_Master Mathias Shaw|r
step << Rogue
    #label KlavenEnd
    #requires AntiVenomEnd2 << Rogue
    .goto 1453/0,362.28,-8815.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Mathias Shaw|r
    >>|cRXP_WARN_Remember to re-equip your main weapon if you switched to a|r |T135641:0|t[Dagger] |cRXP_WARN_earlier|r << Rogue
    .turnin 2359 >> Turn in Klaven's Tower
    .target Master Mathias Shaw



----End of Rogue 20 Quest <1.59x Section----




step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Marcus Jonathan|r
	.target General Marcus Jonathan
    .goto 1453/0,520.88,-8954.15
    .turnin 120 >> Turn in Messenger to Stormwind
    .accept 121 >> Accept Messenger to Stormwind
step
    #completewith next
    .goto 1429/0,84.61,-9457.95,60 >> Travel to Goldshire
step
    .goto 1429/0,87.73,-9456.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Smith Argus|r
	.target Smith Argus
    .turnin 118 >> Turn in The Price of Shoes
    .accept 119 >> Accept Return to Verner
step
    #completewith next
    .goto 1429/0,-727.57,-9555.16,50 >> Travel to the Tower of Azora. Ascend the tower
step
    .goto 1429/0,-728.26,-9553.08
    .target Theocritus
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Theocritus|r at the top
    .accept 94 >> Accept A Watchful Eye
    .xp <20,1
step
    #label InRR
    #completewith FlyR
    .goto 1453/0,489.72,-8837.28,-1
	.goto 1433/0,-1716.28,-9623.29,-1
    .zone Redridge Mountains >>Travel to Redridge
    .fly Redridge >> Fly to Redridge
    >>|cRXP_WARN_If you're in Goldshire it will be faster to Fly from Stormwind|r
	>>|cRXP_WARN_If you're at the Tower of Azora simply run to Redridge|r
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Verner Osgood|r
	.target Verner Osgood
    .goto 1433/0,-2243.14,-9259.43
    .turnin 119 >> Turn in Return to Verner
    .accept 124 >> Accept A Baying of Gnolls
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Verner Osgood|r
	.target Verner Osgood
    .goto 1433/0,-2243.14,-9259.43
    .accept 122 >> Accept Underbelly Scales
step
    #label FlyR
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Solomon|r
	.target Magistrate Solomon
    .goto 1433/0,-2207.10,-9231.34,15,0
    .goto 1433/0,-2221.65,-9218.60
    .turnin 121 >> Turn in Messenger to Stormwind
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hilary|r
	.target Hilary
    .goto 1433/0,-2205.58,-9351.52
    .turnin 3741 >> Turn in Hilary's Necklace
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dockmaster Baren|r
	.target Dockmaster Baren
    .goto 1433/0,-2172.59,-9261.02
    .turnin 127 >> Turn in Selling Fish
    .accept 150 >> Accept Murloc Poachers
    .turnin 150 >> Turn in Murloc Poachers
step
#optional
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chef Breanna|r
	.target Chef Breanna
    .goto 1433/0,-2062.96,-9209.62
    .turnin 92 >> Turn in Redridge Goulash
    .itemcount 2296,5 -- Great Goretusk Snout (5)
    .itemcount 1080,5 -- Tough Condor Meat (5)
    .itemcount 1081,5 -- Crisp Spider Meat (5)
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Martie Jainrose|r
	.target Martie Jainrose
    .goto 1433/0,-2045.38,-9245.82
    .turnin 130 >> Turn in Visit the Herbalist
    .accept 131 >> Accept Delivering Daffodils
step
	#completewith next
	>>Kill |cRXP_ENEMY_Black Dragon Whelps|r. Loot them for their |cRXP_LOOT_Scales|r
    .complete 122,1 --Underbelly Whelp Scale (6)
    .mob Black Dragon Whelp
step
    .isOnQuest 92
    >>Kill |cRXP_ENEMY_Great Goretusks|r. Loot them for their |cRXP_LOOT_Great Goretusk Snouts|r
    >>|cRXP_WARN_Save any|r |T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r |cRXP_WARN_you loot as well as you can use them to level|r |T133971:0|t[Cooking] |cRXP_WARN_to 50 which is required for Duskwood later|r
    .goto 1433/0,-1912.31,-9339.93,60,0
    .goto 1433/0,-2270.93,-9591.440,60,0
    .goto 1433/0,-2244.23,-9619.53,60,0
    .goto 1433/0,-1912.31,-9339.93
    .collect 2296,5,92,1
    .mob Great Goretusk
step
	#completewith next
	>>Kill |cRXP_ENEMY_Black Dragon Whelps|r. Loot them for their |cRXP_LOOT_Scales|r
    .complete 122,1 --Underbelly Whelp Scale (6)
    .mob Black Dragon Whelp
step
    .goto 1433/0,-2031.70,-9098.71,60,0
    .goto 1433/0,-2313.26,-9149.82,60,0
    .goto 1433/0,-2430.70,-9030.51,60,0
    .goto 1433/0,-2313.26,-9149.82,60,0
    .goto 1433/0,-2031.70,-9098.71,60,0
    .goto 1433/0,-2313.26,-9149.82,60,0
    .goto 1433/0,-2430.70,-9030.51,60,0
    .goto 1433/0,-2059.27,-9091.91,0
    >>Kill |cRXP_ENEMY_Redridge Brutes|r and |cRXP_ENEMY_Redridge Mystics|r. Loot them for their |cRXP_LOOT_Iron Pikes|r and |cRXP_LOOT_Iron Rivets|r
    .complete 124,1 --Redridge Brute (10)
    .mob +Redridge Brute
    .complete 124,2 --Redridge Mystic (8)
    .mob +Redridge Mystic
    .complete 89,1 --Iron Pike (5)
    .mob +Redridge Mystic
	.mob +Redridge Brute
    .complete 89,2 --Iron Rivet (5)
	.mob +Redridge Mystic
	.mob +Redridge Brute
step
    .goto 1433/0,-2514.49,-9033.70,50,0
    .goto 1433/0,-2580.70,-9091.33,50,0
    .goto 1433/0,-2321.07,-9527.58,50,0
    .goto 1433/0,-2364.92,-9645.44
	>>Kill |cRXP_ENEMY_Black Dragon Whelps|r. Loot them for their |cRXP_LOOT_Scales|r
	.mob Black Dragon Whelp
    .complete 122,1 --Underbelly Whelp Scale (6)
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darcy|r
    >>|cRXP_FRIENDLY_Darcy|r |cRXP_WARN_walks around inside the Inn|r
	.target Darcy
    .goto 1433/0,-2152.62,-9216.430
    .turnin 131 >> Turn in Delivering Daffodils
step
    #completewith next
    .goto 1433/0,-1908.40,-9299.83,0
    .goto 1433/0,-1988.50,-9176.32,0
    .goto 1433/0,-1937.7,-9371.64,0
    .goto 1433/0,-2146.54,-9225.84
    +|cRXP_WARN_Level up your|r |T133971:0|t[Cooking] |cRXP_WARN_using the|r |T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r |cRXP_WARN_you farmed earlier. You need level 50|r |T133971:0|t[Cooking]
    +|cRXP_WARN_If you need more|r |T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r |cRXP_WARN_travel to the west near|r |cRXP_ENEMY_Bellygrub|r |cRXP_WARN_and kill more|r |cRXP_ENEMY_Great Goretusks|r
    .skill cooking,50,1
    .mob Great Goretusk
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Verner Osgood|r
	.target Verner Osgood
    .goto 1433/0,-2243.79,-9259.860
    .turnin 124 >> Turn in A Baying of Gnolls
    .turnin 122 >> Turn in Underbelly Scales
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Oslow|r
	.target Foreman Oslow
    .goto 1433/0,-2267.67,-9280.140
    .turnin 89 >> Turn in The Everstill Bridge
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance Hunter
#group RestedXP Forever Guide (A)
#subgroup Speedrun Guide 1-20
--#groupid RXP-SRGCE-A1
#name 19-21 Darkshore/Ashenvale
#next RestedXP Forever Guide (A)\21-23 Ashenvale/Stonetalon

step
    #optional
    .goto 1439,43.555,76.293
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Onu|r
    .turnin 951 >> Turn in Mathystra Relics
    .target Onu
    .isQuestTurnedIn 731 --Only shows if Prospector was already escorted
step
    #optional
    .goto 1439,44.401,76.425
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kerlonian Evershade|r to start the escort
    >>|cRXP_WARN_Skip this step if he is not there. It can take up to 25 minutes for him to respawn|r
    >>|cRXP_WARN_This is a timed quest, you have to escort him all the way to ashenvale in 20 minutes|r
    .accept 5321 >> Accept The Sleeper Has Awakened
    .target Kerlonian Evershade
    .isQuestTurnedIn 731 --Only shows if Prospector was already escorted
step
    #optional
    .isOnQuest 5321
    .goto 1439/1,34.78,5001.570
    >>Open |cRXP_PICK_Kerlonian's Chest|r. Loot it for the |T134229:0|t[|cRXP_LOOT_Horn of Awakening|r]
    .complete 5321,1 -- Horn of Awakening (1)
    .isQuestTurnedIn 731 --Only shows if Prospector was already escorted
step
    #sticky
    #label prospector
    .goto 1439,35.724,83.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Remtravel|r
    >>|cRXP_WARN_You may have to wait for him to respawn or for others to finish the escort|r
    .turnin 729 >> Turn in The Absent Minded Prospector
    .isOnQuest 729
    .target Prospector Remtravel
step
    .goto 1439/1,602.01,4678.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Remtravel|r
    >>This will start an escort
    .accept 731,1 >> Accept The Absent Minded Prospector
    >>|cRXP_WARN_This quest is VERY difficult. Skip this step if you're unable to find a group or solo it|r
    .link https://www.youtube.com/watch?v=crQAvyRIceU >> |cRXP_WARN_Click here for a video guide|r
    .target Prospector Remtravel
    .isQuestAvailable 731
step
    #requires prospector
    >>|cRXP_WARN_Escort |cRXP_FRIENDLY_Prospector Remtravel|r through the Excavation|r
    >>|cRXP_WARN_This quest is VERY difficult. Skip this step if you're unable to find a group or solo it|r
    .link https://www.youtube.com/watch?v=crQAvyRIceU >> |cRXP_WARN_Click here for a video guide|r
    .complete 731,1
    .isOnQuest 731
step
    #optional
    #completewith TheryluneEnd
    >>Kill |cRXP_ENEMY_Twilight Disciples|r and |cRXP_ENEMY_Twilight Thugs|r. Loot them for the |T133743:0|t[|cRXP_LOOT_Book: The Powers Below|r]
    *|cRXP_WARN_Be careful as |cRXP_ENEMY_Twilight Thugs|r can|r |T132343:0|t[Disarm] |cRXP_WARN_you for 6 seconds|r << Rogue/Paladin/Warrior
    *|cRXP_WARN_Be careful as |cRXP_ENEMY_Twilight Disciples|r cast|r |T135953:0|t[Renew] |cRXP_WARN_and a 3 second|r |T135915:0|t[Heal]
    .collect 5352,1,968,1 --Book: The Powers Below (1)
    .mob Twilight Disciple
    .mob Twilight Thug
    --  .use 13536
step
    .goto 1439,38.660,87.305
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Therylune|r. This will start an escort
    >>|cRXP_WARN_Skip this step if she is not there|r
    .accept 945 >> Accept Therylune's Escape
    .target Therylune
step
    #label TheryluneEnd
    .goto 1439/1,288.26,4530.40
    >>|cRXP_WARN_Escort |cRXP_FRIENDLY_Therylune|r out of The Masters Glaive|r
    .complete 945,1 --Escort Therylune away from the Master's Glaive (1)
    .isOnQuest 945
step
    #optional
    .goto 1439,31.251,87.419
    >>Click the |cRXP_PICK_Beached Sea Creature|r
    .accept 4733 >> Accept Beached Sea Creature
    >>|cRXP_WARN_This quest can be VERY difficult. Engage the |cRXP_ENEMY_Murlocs|r 1 by 1, otherwise you may aggro multiple at the same time|r
    .link https://youtu.be/lfQM3Q-Ag5A >> |cRXP_WARN_Click here for a video guide|r
step
    #optional
    .goto 1439,31.229,85.564
    >>Click the |cRXP_PICK_Beached Sea Turtle|r
    .accept 4732 >> Accept Beached Sea Turtle
step
    #optional
    .goto 1439,31.690,83.700
    >>Click the |cRXP_PICK_Beached Sea Turtle|r
    .accept 4731 >> Accept Beached Sea Turtle
step
    #optional
    .goto 1439,32.644,80.711
    >>Click the |cRXP_PICK_Beached Sea Creature|r
    .accept 4730 >> Accept Beached Sea Creature
step
    #optional
    .goto 1439/1,227.35,4575.38,50,0
    .goto 1439/1,205.73,4639.130,50,0
    .goto 1439/1,129.10,4741.75,50,0
    .goto 1439/1,86.52,4839.13,50,0
    .goto 1439/1,338.70,4821.22,50,0
    .goto 1439/1,452.67,4684.98
    >>Kill |cRXP_ENEMY_Grizzled Thistle Bears|r. Loot them for their |cRXP_LOOT_Scalps|r
    >>|cRXP_WARN_Be careful as they cast|r |T132152:0|t[Ravage] |cRXP_WARN_an instant attack dealing 20-40 damage and knocking you down for 2 seconds|r
    .complete 1003,1 -- Grizzled Scalp (4)
    .isOnQuest 1003
    .mob Grizzled Thistle Bear
step
    .goto 1439/1,230.69,4815.33
    >>Click the |cRXP_PICK_Buzzbox 525|r on the ground
    .turnin 1003 >> Turn in Buzzbox 525
    .isOnQuest 1003
step
    .goto 1439/1,-5.83,4608.570
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Volcor|r
    >>|cRXP_WARN_Clear the furbolgs near the cave before talking to him|r
    .turnin 993 >> Turn in A Lost Master
    .accept 994 >> Accept Escape Through Force
    .target Volcor
    .isOnQuest 993
step
    #optional
    .goto 1439/1,-5.83,4608.570
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Volcor|r
    >>|cRXP_WARN_Clear the furbolgs near the cave before talking to him|r
    .accept 994 >> Accept Escape Through Force
    .target Volcor
    .isQuestTurnedIn 993
step
    .goto 1439,43.594,84.489,0
    .goto 1439,42.576,82.897,0
    .goto 1439,43.594,84.489,15,0
    .goto 1439,42.576,82.897,15,0
    .goto 1439,42.004,81.688
    >>Escort |cRXP_FRIENDLY_Volcor|r
    >>After crossing the 3rd torch after exiting the cave, a |cRXP_ENEMY_Furlbog|r will spawn from both sides and attack |cRXP_FRIENDLY_Volcor|r
    >>Halfway to the road, a |cRXP_ENEMY_Furlbogs|r will spawn from both sides and attack |cRXP_FRIENDLY_Volcor|r
    .complete 994,1 --Help Volcor to the road (1)
    .isQuestTurnedIn 993
step
    .goto 1439,43.555,76.293
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Onu|r
    .turnin 951 >> Turn in Mathystra Relics
    .target Onu
    .isOnQuest 951
step
    .goto 1439,44.401,76.425
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kerlonian Evershade|r to start the escort
    >>|cRXP_WARN_Skip this step if he is not there. It can take up to 25 minutes for him to respawn|r
    >>|cRXP_WARN_This is a timed quest, you have to escort him all the way to ashenvale in 20 minutes|r
    .accept 5321 >> Accept The Sleeper Has Awakened
    .target Kerlonian Evershade
    .itemcount 13536,<1 --Horn of Awakening
step
    .isOnQuest 5321
    .goto 1439/1,34.78,5001.570
    >>Open |cRXP_PICK_Kerlonian's Chest|r. Loot it for the |T134229:0|t[|cRXP_LOOT_Horn of Awakening|r]
    .complete 5321,1 -- Horn of Awakening (1)
    .itemcount 13536,<1 --Horn of Awakening
step
    #label AshenStart
    #completewith tower
    .zone Ashenvale >> Travel south to Ashenvale
    .goto 1440/1,-12.70,4150.17
step
    #sticky
    #completewith Kerlonian
    >>Kill and loot |cRXP_WARN_Ghostpaw Runners|r you encounter while questing. Keep any |T133970:0|t[|cRXP_LOOT_Lean Wolf Flanks|r] you get. You will need 10 for a cooking quest later
    .collect 1015,10
    .mob Ghostpaw Runner
step
    #label Kerlonian
    .goto 1440/1,128.01,3305.31
    >>|cRXP_WARN_Escort |cRXP_FRIENDLY_Kerlonian|r to Maestra's Post in Ashenvale|r
    .use 13536 >> |cRXP_WARN_Use the|r |T134229:0|t[|cRXP_LOOT_Horn of Awakening|r] |cRXP_WARN_whenever |cRXP_FRIENDLY_Kerlonian|r falls asleep next to him|r
    >>|cRXP_WARN_Avoid running on the main road as much as possible. Enemies will only spawn if you're on the road|r
    .complete 5321,2
    .isOnQuest 5321
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Liladris Moonriver|r
	.target Liladris Moonriver
    .goto 1440/1,128.01,3305.31
    .turnin 5321 >> Turn in The Sleeper Has Awakened
    .isQuestComplete 5321
step
    #label tower
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Delgren the Purifier|r
	.target Delgren the Purifier
    .goto 1440/1,189.71,3185.77
    .turnin 967 >> Turn in The Tower of Althalaxx
    .accept 970 >> Accept The Tower of Althalaxx
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orendil Broadleaf|r
	.target Orendil Broadleaf
    .goto 1440/1,175.87,3189.61
    .accept 1010 >> Accept Bathran's Hair
    .xp <20,1
step
    .goto 1440/1,-102.08,3492.890
    >>Kill |cRXP_ENEMY_Dark Strand Cultists|r, |cRXP_ENEMY_Dark Strand Adepts|r, |cRXP_ENEMY_Dark Strand Enforcers|r and |cRXP_ENEMY_Dark Strand Excavators|r. Loot them for the |cRXP_LOOT_Glowing Soul Gem|r
    >>Be patient, this item has a low droprate
    .complete 970,1
    .mob Dark Strand Cultist
    .mob Dark Strand Adept
    .mob Dark Strand Enforcer
    .mob Dark Strand Excavator
step
    .goto 1440/1,-203.58,3849.97,50,0
    .goto 1440/1,-2.90,3737.73,40,0
    .goto 1440/1,-138.99,3806.92
    >>Open the |cRXP_PICK_Plant Bundles|r on the ground. Loot them for |cRXP_LOOT_Bathran's Hairs|r
    >>|cRXP_WARN_They look like small brown sacks. They can be hard to see|r
    .complete 1010,1
    .isOnQuest 1010
step
    .goto 1440/1,-102.08,3492.890
    .xp 20-1650 >>Keep killing |cRXP_ENEMY_Dark Strand mobs|r until you have enough xp to reach level 20
    .mob Dark Strand Cultist
    .mob Dark Strand Adept
    .mob Dark Strand Enforcer
    .mob Dark Strand Excavator
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Delgren the Purifier|r
	.target Delgren the Purifier
    .goto 1440/1,189.71,3185.77
    .turnin 970 >> Turn in The Tower of Althalaxx
step
    .goto 1440/1,-138.99,3806.92
    .xp 20 >> Grind to level 20
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orendil Broadleaf|r
	.target Orendil Broadleaf
    .goto 1440/1,175.87,3189.61
    .accept 1010 >> Accept Bathran's Hair
step
    .goto 1440/1,-203.58,3849.97,50,0
    .goto 1440/1,-2.90,3737.73,40,0
    .goto 1440/1,-138.99,3806.92
    >>Open the |cRXP_PICK_Plant Bundles|r on the ground. Loot them for |cRXP_LOOT_Bathran's Hairs|r
    >>|cRXP_WARN_They look like small brown sacks. They can be hard to see|r
    .complete 1010,1
    .isOnQuest 1010
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orendil Broadleaf|r
	.target Orendil Broadleaf
    .goto 1440/1,175.87,3189.61
    .turnin 1010 >> Turn in Bathran's Hair
    .accept 1020 >> Accept Orendil's Cure
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Delgren the Purifier|r
    .goto 1440/1,189.71,3185.77
    .turnin 970 >> Turn in The Tower of Althalaxx
    .accept 973 >> Accept The Tower of Althalaxx
    .target Delgren the Purifier
step
    #sticky
    #completewith Astranaar
    >>Kill and loot |cRXP_WARN_Ghostpaw Runners|r you encounter while questing. Keep any |T133970:0|t[|cRXP_LOOT_Lean Wolf Flanks|r] you get. You will need 10 for a cooking quest later
    .collect 1015,10
    .mob Ghostpaw Runner
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Therysil|r
	.target Therysil
    .goto 1440/1,394.43,2677.63
    .turnin 945 >> Turn in Therylune's Escape
    .isQuestComplete 945
step << Hunter
    .goto 1440/1,522.900,2716.100,30 >> Head up the ramp to the north-west
step
    #completewith Astranaar
    >>Save up to 6 |cRXP_LOOT_Gooey Spider Legs|r looted from the |cRXP_ENEMY_Spiders|r in the zone for later
    .collect 2251,6,93,1 -- Gooey Spider Legs
step << Hunter
    #sticky
    .goto 1440/1,663.38,2365.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bolyun|r
    .trainer >> Train your pet skills
    .target Bolyun
--XX Train in darn at 20 on 2x
step << Hunter
    .goto 1440/1,661.42,2373.12--c:Ashenvale,18.010,59.832
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alenndaar Lapidaar|r
    .trainer >> Train your class skills
    .train 5118 >> Train |T132242:0|t[Aspect of the Cheetah]
    .target Alenndaar Lapidaar
step
    #label Astranaar
    .goto 1440/1,-283.73,2827.920
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daelyshia|r
    .fp Astranaar>> Get the Astranaar Flight Path
	.target Daelyshia
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shindrell Swiftfire|r
	.target Shindrell Swiftfire
    .goto 1440/1,-299.30,2796.01
    .accept 1008 >> Accept The Zoram Strand
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Thenysil|r
	.target Sentinel Thenysil
    .goto 1440/1,-311.99,2759.11
    .accept 1070 >> Accept On Guard in Stonetalon
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Faldreas Goeth'Shael|r
	.target Faldreas Goeth'Shael
    .goto 1440/1,-362.16,2785.640
    .accept 1056 >> Accept Journey to Stonetalon Peak
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raene Wolfrunner|r
	.target Raene Wolfrunner
    .goto 1440/1,-411.18,2767.19
    .accept 991 >> Accept Raene's Cleansing
    .accept 1054 >> Accept Culling the Threat
step
    #label HCHunterNoHS --hidden step for #include
step << NightElf Hunter
    .goto 1440/1,-433.09,2781.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Kimlya|r
    .home >> Set your Hearthstone to Astranaar
    .target Innkeeper Kimlya
step
    #label HCHunterNoHSStart --hidden step for #include
step
    .goto 1440/1,-410.60,2758.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maliynn|r
    .vendor >> |cRXP_BUY_Buy food and water if necessary|r
    .target Maliynn
step
    .goto 1440/1,-454.43,2682.24
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pelturas Whitemoon|r
	.target Pelturas Whitemoon
    .turnin 1020 >> Turn in Orendil's Cure
    .timer 24,Orendil's Cure RP
    .accept 1033 >> Accept Elune's Tear
step << Hunter
    .goto 1440/1,-306.80,2720.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Haljan Oakheart|r
    .vendor >> |cRXP_BUY_Restock on Ammo if necessary|r
    .target Haljan Oakheart
step
    #completewith ElunesTear
    >>Save up to 6 |cRXP_LOOT_Gooey Spider Legs|r looted from the |cRXP_ENEMY_Spiders|r in the zone. You will need them for a quest later
    .collect 2251,6,93,1 -- Gooey Spider Legs
step
    .goto 1440/1,-974.00,2890.19
    >>Loot |cRXP_LOOT_Elune's Tear|r on the ground
    .complete 1033,1
step
    #label ElunesTear
    .goto 1440/1,-454.43,2682.24
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pelturas Whitemoon|r
	.target Pelturas Whitemoon
    .turnin 1033 >> Turn in Elune's Tear
    .timer 17,Elune's Tear RP
    .accept 1034 >> Accept The Ruins of Stardust
step
    .goto 1440/1,-220.3,2067.24
    >>Loot the |cRXP_PICK_Stardust Covered Bushes|r for the |cRXP_LOOT_Handful of Stardust|r
    >>|cRXP_WARN_Their spawn locations are scattered throughout the island|r
    .complete 1034,1
step
    #completewith next
    .goto 1440/1,-126.30,2203.69,15 >> Head to the base of the mountain
    .goto 1440/1,-99.78,2305.170,15 >>Run straight north while climbing the mountain
step
    #completewith next
    .goto 1440/1,114.17,2337.45,8 >> Climb the hill next to the big tree to the right of the Fire Scar Shrine entrance
    >>Jump over the tree root and hug the right to avoid aggroing mobs
step
    .goto 1440/1,242.76,2340.53
    >>Kill |cRXP_ENEMY_Ilkrud Magthrull|r. Loot him for his |cRXP_LOOT_Tome|r
    >>|cRXP_ENEMY_Ilkrud Magthrull|r |cRXP_WARN_will cast|r |T136221:0|t[Ilkrud's Guardians] |cRXP_WARN_which is a 5 second long cast and will summon 2 Voidwalkers. Stop this cast if you're able to|r
    >>|cRXP_WARN_Clear an exit path if needed so you can reset them along with the |cRXP_ENEMY_Succubus|r if needed. You may skip this and do it at level 23 if you wish|r
    .complete 973,1
    .link https://youtu.be/03nTrdcQiKY >> |cRXP_WARN_Click here for video reference|r
	.isOnQuest 973
    .mob Ilkrud Magthrull
step
    .isQuestComplete 973
    .goto 1440/1,189.71,3185.77
    .target Delgren the Purifier
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Delgren the Purifier|r
    .turnin 973 >> Turn in The Tower of Althalaxx
step
    #label HCHunterEnd --hidden step for #include
step
    #sticky
    #completewith StatuetteStart
    >>Save up to 6 |cRXP_LOOT_Gooey Spider Legs|r looted from the |cRXP_ENEMY_Spiders|r in the zone. You will need them for a quest later
    .collect 2251,6,93,1 -- Gooey Spider Legs
step
    #sticky
    #completewith StatuetteStart
    >>Kill and loot |cRXP_WARN_Ghostpaw Runners|r you encounter while questing. Keep any |T133970:0|t[|cRXP_LOOT_Lean Wolf Flanks|r] you get. You will need 10 for a cooking quest later
    .collect 1015,10
    .mob Ghostpaw Runner
step
    #label StatuetteStart
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talen|r
	.target Talen
    .goto 1440/1,847.11,3470.21
    .accept 1007 >> Accept The Ancient Statuette
step
    #completewith nagas
    >>Kill |cRXP_ENEMY_Wrathtail Nagas|r. Loot them for their |cRXP_LOOT_Heads|r
    >>|cRXP_WARN_Don't go out of your way to complete this yet|r
	.mob Wrathtail Wave Rider
	.mob Wrathtail Sorceress
    .complete 1008,1
step
    .goto 1440/1,881.13,3879.57
    >>Loot the |cRXP_LOOT_Ancient Statuette|r on the ground
    .complete 1007,1
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talen|r
	.target Talen
    .goto 1440/1,847.11,3470.21
    .turnin 1007 >> Turn in The Ancient Statuette
    .timer 22,The Ancient Statuette RP
    .accept 1009 >> Accept Ruuzel
step
    .goto 1440/1,1323.55,4159.35
    >>Kill |cRXP_ENEMY_Ruuzel|r. Loot her for the |cRXP_LOOT_Ring of Zoram|r
    >>|cRXP_ENEMY_Ruuzel|r |cRXP_WARN_patrols the island with a |cRXP_ENEMY_Wrathtail Myrmidon|r and |cRXP_ENEMY_Wrathtail Sea Witch|r. Kill one of them and then reset them if needed|r
    >>|cRXP_WARN_If you have any|r |T133717:0|t[Bombs]|cRXP_WARN_/|r[Grenades] |cRXP_WARN_you can also use them to split pull|r |cRXP_ENEMY_Ruuzel|r
    >>|cRXP_ENEMY_Lady Vespia|r |cRXP_WARN_is a rarespawn that can also drop the |cRXP_LOOT_Ring of Zoram|r if you see her|r
    .link https://www.youtube.com/watch?v=H-IwZ6P-ldY >> |cRXP_WARN_Click here for video reference on "Split pulling"|r
	.unitscan Lady Vespia
	.mob Ruuzel
    .complete 1009,1
    .skill engineering,<1,1
step
    #label nagas
    .goto 1440/1,1323.55,4159.35
    >>Kill |cRXP_ENEMY_Ruuzel|r. Loot her for the |cRXP_LOOT_Ring of Zoram|r
    >>|cRXP_ENEMY_Ruuzel|r |cRXP_WARN_patrols the island with a |cRXP_ENEMY_Wrathtail Myrmidon|r and |cRXP_ENEMY_Wrathtail Sea Witch|r. Kill one of them and then reset them if needed|r
    >>|cRXP_ENEMY_Lady Vespia|r |cRXP_WARN_is a rarespawn that can also drop the |cRXP_LOOT_Ring of Zoram|r if you see her|r
	.unitscan Lady Vespia
	.mob Ruuzel
    .complete 1009,1
step
    .goto 1440/1,1296.33,4088.67,0
    .goto 1440/1,866.14,4013.71,0
    .goto 1440/1,843.07,3863.42,0
    .goto 1440/1,942.84,3710.83,0
    .goto 1440/1,1072.01,3518.64,0
    .goto 1440/1,1296.33,4088.67,70,0
    .goto 1440/1,866.14,4013.71,70,0
    .goto 1440/1,843.07,3863.42,70,0
    .goto 1440/1,942.84,3710.83,70,0
    .goto 1440/1,1072.01,3518.64,70,0
    .goto 1440/1,942.84,3710.83,70,0
    .goto 1440/1,843.07,3863.42,70,0
    .goto 1440/1,866.14,4013.71,70,0
    >>Kill |cRXP_ENEMY_Wrathtail Nagas|r. Loot them for their |cRXP_LOOT_Heads|r
	.mob Wrathtail Wave Rider
	.mob Wrathtail Sorceress
    .mob Wrathtail Myrmidon
    .mob Wrathtail Priestess
    .mob Wrathtail Razortail
    .mob Wrathtail Sea Witch
    .complete 1008,1
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talen|r
	.target Talen
    .goto 1440/1,847.11,3470.21
    .turnin 1009 >> Turn in Ruuzel
step
    #sticky
    #completewith SoulGemStart
    >>Save up to 6 |cRXP_LOOT_Gooey Spider Legs|r looted from the |cRXP_ENEMY_Spiders|r in the zone. You will need them for a quest later
    .collect 2251,6,93,1 -- Gooey Spider Legs
step
    #sticky
    #completewith SoulGemStart
    >>Kill and loot |cRXP_WARN_Ghostpaw Runners|r you encounter while questing. Keep any |T133970:0|t[|cRXP_LOOT_Lean Wolf Flanks|r] you get. You will need 10 for a cooking quest later
    .collect 1015,10
    .mob Ghostpaw Runner
step
    #label SoulGemStart
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Teronis' Corpse|r
	.target Teronis' Corpse
    .goto 1440/1,528.79,3045.86
    .turnin 991 >> Turn in Raene's Cleansing
    .accept 1023 >> Accept Raene's Cleansing
step
    #sticky
    #completewith GlowingGem
    >>Keep any |T134304:0|t[Murloc Fins] you might loot. You will need 8 for a quest later
    .collect 1468,8 --Murloc Fin(8)
step
    #label GlowingGem
    .goto 1440/1,523.02,2988.59,50,0
    .goto 1440/1,579.54,3055.08,50,0
    .goto 1440/1,488.42,3073.53,50,0
    .goto 1440/1,528.79,3045.86
    >>Kill |cRXP_ENEMY_Saltspittle Murlocs|r. Loot them for the |cRXP_LOOT_Glowing Gem|r
    >>|cRXP_WARN_Be careful as the |cRXP_ENEMY_Oracles|r can heal, and have a 90 damage instant-cast shock spell every few seconds|r
	.mob Saltspittle Warrior
	.mob Saltspittle Muckdweller
	.mob Saltspittle Oracle
	.mob Saltspittle Puddlejumper
    .complete 1023,1
step << Dwarf Hunter/Human Hunter
    .hs >> Hearth to Auberdine
step << NightElf Hunter
    #softcore
    #completewith next
    .deathskip >> Die on the eastern side of the lake and spirit res at Astranaar
step << NightElf Hunter
    #hardcore
    #completewith next
    .goto 1440/1,-283.73,2827.92,200 >> Travel to Astranaar
step << NightElf Hunter
    .goto 1440/1,-284.31,2828.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daelyshia|r
    .fly Darkshore>> Fly to Darkshore
    .target Daelyshia
step
    #optional
    .goto 1439/1,489.35,6506.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archaeologist Hollee|r
    .turnin 731 >> Turn in The Absent Minded Prospector
    .accept 741 >> Accept The Absent Minded Prospector
    .target Archaeologist Hollee
step
    #completewith end
    .vendor >> Restock/Resupply
step
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Terenthis|r
    .turnin 995 >> Turn in Escape Through Stealth
    .target Terenthis
    .isOnQuest 995
step
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Terenthis|r
    .turnin 994 >> Turn in Escape Through Force
    .target Terenthis
    .isOnQuest 994
step
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4730 >> Turn in Beached Sea Creature
    .turnin 4731 >> Turn in Beached Sea Turtle
    .turnin 4732 >> Turn in Beached Sea Turtle
    .turnin 4733 >> Turn in Beached Sea Creature
    .target Gwennyth Bly'Leggonde
step
    .goto 1439/1,561.66,6343.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caylais Moonfeather|r
    .fly Teldrassil >> Fly to Teldrassil
	.target Caylais Moonfeather
step
    #optional
    #completewith next
    .goto 1438/1,968.90,8795.34
    .zone Darnassus >> Take the purple portal into Darnassus
step << Hunter
    .goto 1457/1,2511.04,10178.01
    .target Jocaste
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jocaste|r
    .trainer >> Train your class spells
    .xp <22,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garryeth|r
    .goto 1457/1,2515.03,9940.50
    .bankdeposit 5996,1468,2251,1015 >> Deposit the following items into your bank
    .target Garryeth
    >>|T134797:0|t[Elixir of Water Breathing] --5996
    >>|T134304:0|t[Murloc Fins] --1468
    >>|T134321:0|t[Gooey Spider Legs] --2251
    >>|T133970:0|t[Lean Wolf Flanks] --1015
step << Dwarf Hunter/Human Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ilyenia Moonfire|r
    .skipgossipid 96881
    .goto 1457/1,2329.19,9908.60
    .train 264 >> Train Bows
    .train 227 >> Train Staves
    .target Ilyenia Moonfire
    .zoneskip Darnassus,1
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Archaeologist Greywhisker|r
	.target Chief Archaeologist Greywhisker
    .goto 1438/1,2607.86,9641.94
    .turnin 741 >> Turn in The Absent Minded Prospector
    .accept 942 >> Accept The Absent Minded Prospector
    .isOnQuest 741
step
    #optional
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Archaeologist Greywhisker|r
	.target Chief Archaeologist Greywhisker
    .goto 1438/1,2607.86,9641.94
    .accept 942 >> Accept The Absent Minded Prospector
    .isQuestTurnedIn 741
step << NightElf Hunter
    #label end
    .hs >> Hearth to Astranaar
step << Dwarf Hunter/Human Hunter
    .goto 1457/1,2626.51,9946.11
    .zone Teldrassil >> Travel through the purple portal to Rut'theran Village
    .zoneskip Ashenvale
    .zoneskip Darkshore
step << Dwarf Hunter/Human Hunter
    #label end
    .goto 1438/1,841.56,8640.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vesprystus|r
    .fly Ashenvale >> Fly to Ashenvale
    .target Vesprystus
    .zoneskip Ashenvale
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance !Hunter
#group RestedXP Forever Guide (A)
#subgroup Speedrun Guide 1-20
--#groupid RXP-SRGCE-A1
#name 20-21 Darkshore/Ashenvale
#next RestedXP Forever Guide (A)\21-23 Stonetalon/Ashenvale


step << Druid
	#completewith next
	.cast 18960 >> Cast Teleport: Moonglade
	.zoneskip Moonglade
step << Druid
    .goto 1450/1,-2593.82,7867.06
	>>Go to Moonglade
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
    .trainer >> Train your class spells
    .target Loganaar
step
    #optional
    #completewith AshenvaleEnd
    .hs >> Hearth to Auberdine
step
    .goto 1439/1,504.41,6402.39
    >>Click the |cRXP_PICK_Wanted Poster|r
    .accept 4740 >> Accept WANTED: Murkdeep!
step
    .goto 1439,37.322,43.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Barithras Moonshade|r
    .accept 948 >> Accept Onu
    .target Barithras Moonshade
step
    .goto 1439/1,489.35,6506.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archaeologist Hollee|r
    .accept 729 >> Accept The Absent Minded Prospector
    .target Archaeologist Hollee
step
    .goto 1439,38.325,43.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gershala Nightwhisper|r
    .turnin 3765 >> Turn in The Corruption Abroad
    .target Gershala Nightwhisper
    .isOnQuest 3765
step
    .goto 1439,39.373,43.483
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Terenthis|r
    .accept 993 >> Accept A Lost Master
	.target Terenthis
    .isQuestTurnedIn 986
step
    #optional
    #completewith OnuGrove
    >>|cRXP_WARN_If you equip the|r |T133762:0|t[Enchanted Moonstalker Cloak]|cRXP_WARN_, make sure you save your current cloak for later as the|r |T133762:0|t[Enchanted Moonstalker Cloak] |cRXP_WARN_is lost upon a later turn in|r
    .equip 15,5387 >>|cRXP_WARN_Equip the|r |T133762:0|t[Enchanted Moonstalker Cloak] |cRXP_WARN_If it's better than your current Cloak|r
    .itemcount 5387,1
    .itemStat 15,QUALITY,<7
step
    #completewith TheryluneEnd
    #optional
    .goto 1439/1,306.60,4784.11,0
    >>Kill |cRXP_ENEMY_Grizzled Thistle Bears|r. Loot them for their |cRXP_LOOT_Scalps|r
    >>|cRXP_WARN_Be careful as they cast|r |T132152:0|t[Ravage] |cRXP_WARN_an instant attack dealing 20-40 damage and knocking you down for 2 seconds|r
    .complete 1003,1
    .isOnQuest 1003
    .mob Grizzled Thistle Bear
    .subzoneskip 449 -- Master's Glaive
step
    #optional
    #completewith OnuGrove
    .goto 1439,43.555,76.293,80 >> Travel to the Grove of the Ancients
step
    #label OnuGrove
    .goto 1439,43.555,76.293
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Onu|r
    .turnin 952 >> Turn in Grove of the Ancients << NightElf
    .turnin 948 >> Turn in Onu
    .accept 944 >> Accept The Master's Glaive
    .target Onu
step
    #label MasterG
    .goto 1439/1,417.30,4575.82,100 >> Travel to The Master's Glaive
    .subzoneskip 449
    .isOnQuest 944
step
    #optional
    #completewith FunandGames
    >>Kill |cRXP_ENEMY_Twilight Disciples|r and |cRXP_ENEMY_Twilight Thugs|r. Loot them for the |T133743:0|t[|cRXP_LOOT_Book: The Powers Below|r]
    *|cRXP_WARN_Be careful as |cRXP_ENEMY_Twilight Thugs|r can|r |T132343:0|t[Disarm] |cRXP_WARN_you for 6 seconds|r << Rogue/Paladin/Warrior/Shaman
    *|cRXP_WARN_Be careful as |cRXP_ENEMY_Twilight Disciples|r cast|r |T135953:0|t[Renew] |cRXP_WARN_and a 3 second|r |T135915:0|t[Heal]
    .collect 5352,1,968,1 --Book: The Powers Below (1)
    .mob Twilight Disciple
    .mob Twilight Thug
step
    #optional
    .goto 1439/1,390.700,4542.700
    >>Discover The Master's Glaive
    .complete 944,1 --Enter the Master's Glaive (1)
step
    #completewith next
    .cast 5809 >> |cRXP_WARN_Use the|r |T134715:0|t[Phial of Scrying] |cRXP_WARN_and place it on the ground|r
    .use 5251
step
    .goto 1439/1,417.30,4575.82
    >>|cRXP_WARN_Click the |cRXP_PICK_Scrying Bowl|r on the ground|r
    .turnin 944 >> Turn in The Master's Glaive
    .accept 949 >> Accept The Twilight Camp
    .use 5251
step
    #label FunandGames
    .goto 1439,38.537,86.050
    >>Click the |cRXP_PICK_Twilight Tome|r on the northern pedestal
    .turnin 949 >> Turn in The Twilight Camp
    .accept 950 >> Accept Return to Onu
    .accept 98042 >>Accept It's All Fun and Games Until...
step
    #completewith TheryluneEnd
    >>Kill |cRXP_ENEMY_Twilight Disciples|r and |cRXP_ENEMY_Twilight Thugs|r. Loot them for the |cRXP_LOOT_Peerless Eye|r and |T133743:0|t[|cRXP_LOOT_Book: The Powers Below|r]
    *|cRXP_WARN_Be careful as |cRXP_ENEMY_Twilight Thugs|r can|r |T132343:0|t[Disarm] |cRXP_WARN_you for 6 seconds|r << Rogue/Paladin/Warrior/Shaman
    *|cRXP_WARN_Be careful as |cRXP_ENEMY_Twilight Disciples|r cast|r |T135953:0|t[Renew] |cRXP_WARN_and a 3 second|r |T135915:0|t[Heal]
    .complete 98042,1 -- Peerless Eye (1)
    .mob +Twilight Disciple
    .mob +Twilight Thug
    .collect 5352,1,968,1 --Book: The Powers Below (1)
    .disablecheckbox
step
    .goto 1439,38.660,87.305
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Therylune|r. This will start an escort
    >>|cRXP_WARN_Skip this step if she is not there|r
    .accept 945 >> Accept Therylune's Escape
    .target Therylune
step
    #label TheryluneEnd
    .goto 1439/1,288.26,4530.40
    >>|cRXP_WARN_Escort |cRXP_FRIENDLY_Therylune|r out of The Masters Glaive|r
    .complete 945,1 --Escort Therylune away from the Master's Glaive (1)
    .isOnQuest 945
step
    #loop
    .goto 1439/1,376.800,4608.600,40,0
    .goto 1439/1,453.100,4580.200,40,0
    .goto 1439/1,409.4366,4521.0151,40,0
    >>Kill |cRXP_ENEMY_Twilight Disciples|r and |cRXP_ENEMY_Twilight Thugs|r. Loot them for the |cRXP_LOOT_Peerless Eye|r and |T133743:0|t[|cRXP_LOOT_Book: The Powers Below|r]
    *|cRXP_WARN_Be careful as |cRXP_ENEMY_Twilight Thugs|r can|r |T132343:0|t[Disarm] |cRXP_WARN_you for 6 seconds|r << Rogue/Paladin/Warrior/Shaman
    *|cRXP_WARN_Be careful as |cRXP_ENEMY_Twilight Disciples|r cast|r |T135953:0|t[Renew] |cRXP_WARN_and a 3 second|r |T135915:0|t[Heal]
    .complete 98042,1 -- Peerless Eye (1)
    .mob +Twilight Disciple
    .mob +Twilight Thug
    .collect 5352,1,968,1 --Book: The Powers Below (1)
    .disablecheckbox
step
    #optional
    >>|cRXP_WARN_Use the |T133743:0|t[|cRXP_LOOT_Book: The Powers Below|r] to start the quest|r
    .accept 968 >> Accept The Powers Below
    .use 5352
    .itemcount 5352,1
step
    #completewith prospectorEscort
    #optional
    .goto 1439/1,306.60,4784.11,0
    >>Kill |cRXP_ENEMY_Grizzled Thistle Bears|r. Loot them for their |cRXP_LOOT_Scalps|r
    >>|cRXP_WARN_Be careful as they cast|r |T132152:0|t[Ravage] |cRXP_WARN_an instant attack dealing 20-40 damage and knocking you down for 2 seconds|r
    .complete 1003,1
    .isOnQuest 1003
    .mob Grizzled Thistle Bear
step
    #sticky
    #label prospector
    .goto 1439,35.724,83.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Remtravel|r
    >>|cRXP_WARN_You may have to wait for him to respawn or for others to finish the escort|r
    .turnin 729 >> Turn in The Absent Minded Prospector
    .target Prospector Remtravel
    .isOnQuest 729
step
    #label prospectorEscort
    .goto 1439/1,602.01,4678.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Remtravel|r. This will start an escort
    .accept 731,1 >> Accept The Absent Minded Prospector
    >>|cRXP_WARN_This quest is VERY difficult. Skip this step if you're unable to find a group or solo it|r
    .link https://www.youtube.com/watch?v=crQAvyRIceU >> |cRXP_WARN_Click here for a video guide|r
    .target Prospector Remtravel
    .isQuestAvailable 731
step
    #requires prospector
    >>|cRXP_WARN_Escort |cRXP_FRIENDLY_Prospector Remtravel|r through the Excavation|r
    >>|cRXP_WARN_This quest is VERY difficult. Skip this step if you're unable to find a group or solo it|r
    .link https://www.youtube.com/watch?v=crQAvyRIceU >> |cRXP_WARN_Click here for a video guide|r
    .complete 731,1
    .isOnQuest 731
step
    #optional
    #completewith Murkdeep
    >>Kill |cRXP_ENEMY_Encrusted Tide Crawlers|r and |cRXP_ENEMY_Reef Crawlers|r. Loot them for their |cRXP_LOOT_Fine Crab Chunks|r
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob Encrusted Tide Crawler
    .mob Reef Crawler
step
    .goto 1439,31.251,87.419
    >>Click the |cRXP_PICK_Beached Sea Creature|r
    .accept 4733 >> Accept Beached Sea Creature
    >>|cRXP_WARN_This quest can be VERY difficult. Engage the |cRXP_ENEMY_Murlocs|r 1 by 1, otherwise you may aggro multiple at the same time|r
    .link https://youtu.be/lfQM3Q-Ag5A >> |cRXP_WARN_Click here for a video guide|r
step
    .goto 1439,31.229,85.564
    >>Click the |cRXP_PICK_Beached Sea Turtle|r
    .accept 4732 >> Accept Beached Sea Turtle
step
    #optional
    .goto 1439,31.690,83.700
    >>Click the |cRXP_PICK_Beached Sea Turtle|r
    .accept 4731 >> Accept Beached Sea Turtle
step
    #optional
    .goto 1439,32.644,80.711
    >>Click the |cRXP_PICK_Beached Sea Creature|r
    .accept 4730 >> Accept Beached Sea Creature
step
    #optional
    #label Murkdeep
    .goto 1439,35.429,76.566,0
    .goto 1439,35.429,76.566,60,0
    .goto 1439/1,541.75,4991.52
    >>|cRXP_WARN_Make sure you check if |cRXP_ENEMY_Murkdeep|r is already up in the water (if someone has previously failed the encounter or left the |cRXP_ENEMY_Greymist Hunter|r in the wave that he spawns with alive)|r
    >>Kill the |cRXP_ENEMY_Greymist Warriors|r and |cRXP_ENEMY_Greymist Hunters|r in the camp
    >>|cRXP_WARN_Move to the Bonfire in the center of the camp to start the |cRXP_ENEMY_Murkdeep|r encounter:|r
    >>|cRXP_WARN_3 waves will spawn from the water, each after killing the previous wave: Wave 1 has 3 level 12-13 |cRXP_ENEMY_Greymist Coastrunners|r, Wave 2 has 2 level 15-16 |cRXP_ENEMY_Greymist Warriors|r, and Wave 3 has a level 19 |cRXP_ENEMY_Murkdeep|r and a level 16-17 |cRXP_ENEMY_Greymist Hunter|r. You can move away from the Bonfire to avoid aggroing the next wave|r
    .complete 4740,1 -- Murkdeep (1)
    .unitscan Murkdeep
    .mob Greymist Warrior
    .mob Greymist Hunter
    .mob Greymist Coastrunner
step
    #loop
    .goto 1439,32.674,81.752,0
    .goto 1439,36.327,73.408,0
    .goto 1439,35.195,71.864,0
    .goto 1439,32.674,81.752,60,0
    .goto 1439,33.284,80.330,60,0
    .goto 1439,34.174,80.488,60,0
    .goto 1439,35.432,79.052,60,0
    .goto 1439,36.327,73.408,60,0
    .goto 1439,35.412,73.176,60,0
    .goto 1439,35.033,72.432,60,0
    .goto 1439,35.195,71.864,60,0
    >>Kill |cRXP_ENEMY_Encrusted Tide Crawlers|r and |cRXP_ENEMY_Reef Crawlers|r. Loot them for their |cRXP_LOOT_Fine Crab Chunks|r
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob Encrusted Tide Crawler
    .mob Reef Crawler
step
    #optional
    .goto 1439/1,227.35,4575.38,50,0
    .goto 1439/1,205.73,4639.130,50,0
    .goto 1439/1,129.10,4741.75,50,0
    .goto 1439/1,86.52,4839.13,50,0
    .goto 1439/1,338.70,4821.22,50,0
    .goto 1439/1,452.67,4684.98
    >>Kill |cRXP_ENEMY_Grizzled Thistle Bears|r. Loot them for their |cRXP_LOOT_Scalps|r
    >>|cRXP_WARN_Be careful as they cast|r |T132152:0|t[Ravage] |cRXP_WARN_an instant attack dealing 20-40 damage and knocking you down for 2 seconds|r
    .complete 1003,1 -- Grizzled Scalp (4)
    .isOnQuest 1003
    .mob Grizzled Thistle Bear
step
    .goto 1439/1,230.69,4815.33
    >>Click the |cRXP_PICK_Buzzbox 525|r on the ground
    .turnin 1003 >> Turn in Buzzbox 525
    .isOnQuest 1003
step
    .goto 1439,43.555,76.293
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Onu|r
    .turnin 951 >> Turn in Mathystra Relics
    .target Onu
    .isQuestComplete 951
step
    .goto 1439,43.555,76.293
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Onu|r
    .turnin 950 >> Turn in Return to Onu
    .target Onu
step
    .goto 1439,44.401,76.425
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kerlonian Evershade|r to start the escort
    >>|cRXP_WARN_Skip this step if he is not there. It can take up to 25 minutes for him to respawn|r
    >>|cRXP_WARN_This is a timed quest, you have to escort him all the way to ashenvale in 20 minutes|r
    .accept 5321 >> Accept The Sleeper Has Awakened
    .target Kerlonian Evershade
step
    .goto 1439/1,34.78,5001.570
    >>Open |cRXP_PICK_Kerlonian's Chest|r. Loot it for the |T134229:0|t[|cRXP_LOOT_Horn of Awakening|r]
    .complete 5321,1 -- Horn of Awakening (1)
    .isOnQuest 5321
step
    #completewith volcorEnd
    .goto 1440/1,128.01,3305.31
    +|cRXP_FRIENDLY_Kerlonian|r will follow you and occasionally help in combat. |cRXP_WARN_Make sure you don't lose him as he will stop moving when he falls asleep. You have 25 minutes to reach Ashenvale and complete this quest|r
    .use 13536 >> |cRXP_WARN_Use the|r |T134229:0|t[|cRXP_LOOT_Horn of Awakening|r] |cRXP_WARN_whenever |cRXP_FRIENDLY_Kerlonian|r falls asleep while standing next to him to wake him up|r
    >>|cRXP_WARN_Avoid running on the main road as much as possible. Enemies will only spawn if you're on the road|r
    .isOnQuest 5321
step
    #completewith next
    .goto 1439/1,-5.83,4608.57,30 >> Travel toward |cRXP_FRIENDLY_Volcor|r in the Cave
    .isOnQuest 993
step
    .goto 1439/1,-5.83,4608.570
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Volcor|r
    .turnin 993 >> Turn in A Lost Master
    .accept 995 >> Accept Escape Through Stealth
    .timer 20,Escape Through Stealth RP
    .target Volcor
step
    #label volcorEnd
    .goto 1439/1,30.85,4635.20
    >>|cRXP_WARN_Wait out the RP|r
    .complete 995,1
    .isOnQuest 995
step
    #completewith tower
    .zone Ashenvale >> Travel south to Ashenvale
    .goto 1440/1,-12.70,4150.17
step
    .goto 1440/1,128.01,3305.31
    >>|cRXP_WARN_Escort |cRXP_FRIENDLY_Kerlonian|r to Maestra's Post in Ashenvale|r
    .use 13536 >> |cRXP_WARN_Use the|r |T134229:0|t[|cRXP_LOOT_Horn of Awakening|r] |cRXP_WARN_whenever |cRXP_FRIENDLY_Kerlonian|r falls asleep next to him|r
    >>|cRXP_WARN_Avoid running on the main road as much as possible. Enemies will only spawn if you're on the road|r
    .complete 5321,2
    .isOnQuest 5321
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Liladris Moonriver|r
	.target Liladris Moonriver
    .goto 1440/1,128.01,3305.31
    .turnin 5321 >> Turn in The Sleeper Has Awakened
    .isQuestComplete 5321
step
    #label tower
    .goto 1440/1,189.71,3185.77
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Delgren the Purifier|r
    .turnin 967 >> Turn in The Tower of Althalaxx
    .accept 970 >> Accept The Tower of Althalaxx
    .target Delgren the Purifier
step
    #optional
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orendil Broadleaf|r
	.target Orendil Broadleaf
    .goto 1440/1,175.87,3189.61
    .accept 1010 >> Accept Bathran's Hair
    .xp <20,1
step
    .goto 1440/1,-102.08,3492.890
    >>Kill |cRXP_ENEMY_Dark Strand Cultists|r and |cRXP_ENEMY_Dark Strand Adepts|r. Loot them for the |cRXP_LOOT_Glowing Soul Gem|r
    .complete 970,1
    .mob Dark Strand Cultist
    .mob Dark Strand Adept
step
    .goto 1440/1,-102.08,3492.890
    .xp 20-1650 >>Keep killing |cRXP_ENEMY_Dark Strand mobs|r until you have enough xp to reach level 20
    .mob Dark Strand Cultist
    .mob Dark Strand Adept
    .mob Dark Strand Enforcer
    .mob Dark Strand Excavator
step
    #optional
    .goto 1440/1,-203.58,3849.97,50,0
    .goto 1440/1,-2.90,3737.73,40,0
    .goto 1440/1,-138.99,3806.92
    >>Open the |cRXP_PICK_Plant Bundles|r in the ground. Loot them for |cRXP_LOOT_Bathran's Hairs|r
    >>|cRXP_WARN_They look like small brown sacks and can be partially buried into the ground. They can be hard to see|r
    >>|cRXP_WARN_Make sure you have|r |T134916:0|t[Find Herbs] |cRXP_WARN_enabled to see them on the minimap|r
    .complete 1010,1 --Bathran's Hair (5)
    .isOnQuest 1010
    .skill herbalism,<1,1
step
    #optional
    .goto 1440/1,-203.58,3849.97,50,0
    .goto 1440/1,-2.90,3737.73,40,0
    .goto 1440/1,-138.99,3806.92
    >>Open the |cRXP_PICK_Plant Bundles|r in the ground. Loot them for |cRXP_LOOT_Bathran's Hairs|r
    >>|cRXP_WARN_They look like small brown sacks and can be partially buried into the ground. They can be hard to see|r
    .complete 1010,1 --Bathran's Hair (5)
    .isOnQuest 1010
    .skill herbalism,1,1
step
    #optional
    .goto 1440/1,175.87,3189.61
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orendil Broadleaf|r
    .turnin 1010 >> Turn in Bathran's Hair
    .accept 1020 >> Accept Orendil's Cure
    .target Orendil Broadleaf
    .isQuestComplete 1010
step
    #optional
    .goto 1440/1,175.87,3189.61
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orendil Broadleaf|r
    .accept 1020 >> Accept Orendil's Cure
    .target Orendil Broadleaf
    .isQuestTurnedIn 1010
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Delgren the Purifier|r
	.target Delgren the Purifier
    .goto 1440/1,189.71,3185.77
    .turnin 970 >> Turn in The Tower of Althalaxx
    .accept 973 >> Accept The Tower of Althalaxx
step
    .goto 1440/1,-138.99,3806.92
    .xp 20 >> Grind to level 20
step
    .goto 1440/1,175.87,3189.61
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orendil Broadleaf|r
    .accept 1010 >> Accept Bathran's Hair
    .target Orendil Broadleaf
step
    #optional
    .goto 1440/1,-203.58,3849.97,50,0
    .goto 1440/1,-2.90,3737.73,40,0
    .goto 1440/1,-138.99,3806.92
    >>Open the |cRXP_PICK_Plant Bundles|r in the ground. Loot them for |cRXP_LOOT_Bathran's Hairs|r
    >>|cRXP_WARN_They look like small brown sacks and can be partially buried into the ground. They can be hard to see|r
    >>|cRXP_WARN_Make sure you have|r |T134916:0|t[Find Herbs] |cRXP_WARN_enabled to see them on the minimap|r
    .complete 1010,1 --Bathran's Hair (5)
    .skill herbalism,<1,1
step
    .goto 1440/1,-203.58,3849.97,50,0
    .goto 1440/1,-2.90,3737.73,40,0
    .goto 1440/1,-138.99,3806.92
    >>Open the |cRXP_PICK_Plant Bundles|r in the ground. Loot them for |cRXP_LOOT_Bathran's Hairs|r
    >>|cRXP_WARN_They look like small brown sacks and can be partially buried into the ground. They can be hard to see|r
    .complete 1010,1 --Bathran's Hair (5)
    .skill herbalism,1,1
step
    .goto 1440/1,175.87,3189.61
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orendil Broadleaf|r
    .turnin 1010 >> Turn in Bathran's Hair
    .accept 1020 >> Accept Orendil's Cure
    .target Orendil Broadleaf
step
    #optional
    #completewith TZS
    .subzone 415 >> Travel to Astranaar
step
    #label AshenvaleEnd
    .goto 1440/1,-283.73,2827.920
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daelyshia|r
    .fp Astranaar >> Get the Astranaar Flight Path
	.target Daelyshia
step
    #label TZS
    .goto 1440/1,-299.30,2796.01
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shindrell Swiftfire|r
    .accept 1008 >> Accept The Zoram Strand
    .target Shindrell Swiftfire
step
    .goto 1440/1,-311.99,2759.11
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Thenysil|r
    .accept 1070 >> Accept On Guard in Stonetalon
    .target Sentinel Thenysil
step
    .goto 1440/1,-362.16,2785.640
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Faldreas Goeth'Shael|r
    .accept 1056 >> Accept Journey to Stonetalon Peak
    .target Faldreas Goeth'Shael
step
    .goto 1440/1,-411.18,2767.19
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raene Wolfrunner|r
    .accept 991 >> Accept Raene's Cleansing
    .accept 1054 >> Accept Culling the Threat
    .target Raene Wolfrunner
step << !Warlock
    .goto 1440/1,-433.09,2781.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Kimlya|r
    .home 415 >> Set your Hearthstone to Astranaar
    .target Innkeeper Kimlya
step
    .goto 1440/1,-454.43,2682.24
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pelturas Whitemoon|r
	.target Pelturas Whitemoon
    .turnin 1020 >> Turn in Orendil's Cure
    .timer 24,Orendil's Cure RP
    .accept 1033 >> Accept Elune's Tear
]])