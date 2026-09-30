local faction = UnitFactionGroup("player")
if faction == "Horde" then return end
local L = GetLocale() if L and RXP.enabledLocale[L] then return end
RXPGuides.RegisterGuide([[
#xprate <1.5
#forever
#season 0,1
#version 1
#beta
<< Alliance
#name 13-15 Westfall 
#displayname 14-15 Westfall << Gnome/Dwarf !Hunter
#displayname 13-15 Westfall << Hunter
#group RestedXP Forever Dungeon Guide (A)
#subgroup (WIP) Dungeon Guide 1-20
--#groupid RXP-SRGCE-A1
#next 15-16 Hall of Thanes

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
    #completewith next
    >>Kill |cRXP_ENEMY_Riverpaw Gnolls|r and |cRXP_ENEMY_Riverpaw Scouts|r. Loot them for their |T134297:0|t|cRXP_LOOT_Gnoll Paws|r
    .complete 102,1 --Gnoll Paw (8)
    .mob Riverpaw Gnoll
    .mob Riverpaw Scout
step
    .goto 1436/0,1035.300,-9835.101
    .use 254545 >>|cRXP_WARN_Use the|r |T236996:0|t[Well Water Sample Kit] |cRXP_WARN_at the Jansen Stead well|r
    .complete 92742,1 --|1/1 Jansen Stead Water Sample
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
    .goto 1436/0,1004.87,-9716.87,60,0
    .goto 1436/0,1013.62,-9861.53,60,0
    .goto 1436/0,1192.12,-10175.13,60,0
    .goto 1436/0,1019.57,-10204.30,60,0
    .goto 1436/0,1013.62,-9861.53
    >>Open the |cRXP_PICK_Sacks of Oats|r on the ground. Loot them for the |cRXP_LOOT_Handful of Oats|r
	>>|cRXP_WARN_You can usually find them near Farm Fences or Buildings|r
	.complete 151,1 --Handful of Oats (8)
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
    .goto 1436/0,1213.400,-10153.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ozwin Ironsprocket::253395|r
    .target Ozwin Ironsprocket::253395
    .accept 92909 >>Accept Harvesting the Harvesters
    .turnin 92909 >>Turn in Harvesting the Harvesters
    .itemcount 255007,14 -- Golem Isospring (14)
    .itemcount 255010,5 -- Harvester Gyrostabilizer (5)
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
    .goto 1436/0,1404.200,-10290.900
    .use 254545 >>|cRXP_WARN_Use the|r |T236996:0|t[Well Water Sample Kit] |cRXP_WARN_at the Molsen Farm well|r
    .complete 92742,2 --|1/1 Molsen Farm Water Sample
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
    #completewith DeeprunEnter
    .goto 1436/0,1037.42,-10628.27
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Fly to Stormwind
    .target Thor
    .zoneskip Stormwind City
    .zoneskip Darkshore

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
step
    .goto 1453/0,1269.100,-8540.601
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gilbert Gray::267118|r
    .target Gilbert Gray::267118
    .accept 95065 >>Accept Fishin' Time
    .turnin 95065 >>Turn in Fishin' Time
step
    .goto 1453/0,1193.100,-8328.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Manifest Clerk Philmor::268511|r 
    .target Manifest Clerk Philmor::268511
    .accept 97220 >>Accept Philmor's Favor
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
    #optional
    #label endOfTheGuide
step
    #label DeeprunEnter
    #completewith next
    .goto 1453/0,562.300,-8385.300,20,0
    .goto 1453/0,522.000,-8352.101
    .subzone 2257 >>Enter the Deeprun Tram
    .zoneskip Ironforge
    .zoneskip Loch Modan
    .zoneskip Dun Morogh
step
    .zone Ironforge >> Take the tram to Ironforge
    .zoneskip Loch Modan
    .zoneskip Dun Morogh
]])

RXPGuides.RegisterGuide([[
#forever
#season 0,1
#version 1
#beta
<< Alliance
#group RestedXP Forever Dungeon Guide (A)
#subgroup (WIP) Dungeon Guide 1-20
--#groupid RXP-SRGCE-A1
#name 15-16 Hall of Thanes
#next 16-18 Ruins of Lordaeron

step
    #completewith OII
    +|cRXP_WARN_You will now complete a pre-quest for the Hall of Thanes, then run the dungeon|r
step
    #completewith OII
    .zone Dun Morogh >> Travel to Dun Morogh
step
    #label QuarryStart
    .goto 1426/0,-1394.24,-5797.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthseer Farsen|r
    .accept 96392 >> Accept Farsen's Watch
    .target Earthseer Farsen
step
    .isOnQuest 96392
    .goto 1426/0,-1394.24,-5797.83
    .gossipoption 139831 >> Talk to |cRXP_FRIENDLY_Earthseer Farsen|r to view his farsight
    >>|cRXP_WARN_You can cancel the Farsight once the objective completes|r
    .target Earthseer Farsen
step
    .isOnQuest 96392
    .aura -1293681 >> |cRXP_WARN_Press ESCAPE to cancel the Farsight|r
step << skip
    .goto 1426/0,-1394.24,-5797.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthseer Farsen|r
    >>|cRXP_WARN_You can cancel the Farsight once the objective completes|r
    .complete 96392,1 -- Use Farsen's Farsight
    .skipgossip
    .target Earthseer Farsen
step
    .goto 1426/0,-1394.24,-5797.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthseer Farsen|r
    >>|cRXP_WARN_Press ESCAPE to cancel the Farsight|r
    .turnin 96392 >> Turn in Farsen's Watch
    .accept 96390 >> Accept Nip 'Em in the Bud
    .target Earthseer Farsen
step
    .goto 1426/0,-2009.87,-5860.22,40,0
    .goto 1426/0,-2034.49,-5922.60
    >>Kill |cRXP_ENEMY_Dark Iron Spies|r. Loot them for the |T237385:0|t[|cRXP_LOOT_Dark Iron Map|r]
    .use 274268 >>|cRXP_WARN_Use the|r |T237385:0|t[|cRXP_LOOT_Dark Iron Map|r] |cRXP_WARN_to start the quest|r
    .complete 96390,1 -- Dark Iron Spy slain 10/10
    .collect 274268,1,96391,1 -- Dark Iron Map (1)
    .accept 96391 >> Accept Underground Map
    .mob Dark Iron Spy
step
    #label OII
    .goto 1426/0,-1394.24,-5797.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthseer Farsen|r
    .turnin 96390 >> Turn in Nip 'Em in the Bud
    .turnin 96391 >> Turn in Underground Map
    .accept 96393 >> Accept Old Ironforge Incursion
    .target Earthseer Farsen

step
    #completewith EnterHoT
    +|cRXP_WARN_Start looking for a group for the Hall of Thanes|r
step
    #completewith EnterHoT
    .goto 1455/0,-1054.300,-4843.200,10,0
    .goto 1455/0,-1081.900,-4850.100,10,0
    .goto 1455/0,-1082.800,-4886.000,10,0
    .goto 1455/0,-1087.700,-4821.900,10,0
    .goto 1455/0,-1010.300,-4850.900,10 >> Travel down into Old Ironforge via |cRXP_FRIENDLY_King Magni's|r room
step
    .goto 1455/0,-971.800,-4820.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Afadra Dunwall|r
    .accept 96394 >> Accept The Restless Dead
    .target Afadra Dunwall
step
    #completewith EnterHoT
    .goto 1455/0,-996.100,-4821.200,10,0
    .goto 1455/0,-972.000,-4803.000,10,0
    .goto 1455/0,-988.900,-4854.400,10 >> |cRXP_WARN_Drop down onto the ramp below|r
step
    .goto 1455/0,-968.200,-4803.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thom Filch|r
    .accept 96403 >> Accept Important Heirlooms
    .target Thom Filch
step
    #label EnterHoT
    .goto 1455/0,-933.200,-4821.900
    .subzone 16919 >> Enter the Hall of Thanes

step
    #completewith FaldrimAnvilmar
    >>Loot the |cRXP_PICK_Dwarven Heirlooms|r on the ground through the Hall of Thanes
    >>|cRXP_WARN_You can collect plenty of these at the end of the dungeon as well|r
    .complete 96403,1 -- Dwarven Heirloom (8)
step
    #completewith FaldrimAnvilmar
    >>Kill |cRXP_ENEMY_Enraged Apparitions|r and |cRXP_ENEMY_Tormented Souls|r
    .complete 96394,1 -- Enraged Apparition slain (15)
    .mob +Enraged Apparition slain (15)
    .complete 96394,2 -- Tormented Soul slain (10)
    .mob +Tormented Soul slain (10)
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ghostly Attendant|r
    .accept 96395 >> Accept An Ancient Grudge
    .target Ghostly Attendant
step
    #label FaldrimAnvilmar
    >>Kill |cRXP_ENEMY_Faldrim Anvilmar|r
    .complete 96395,1 -- Faldrim Anvilmar slain (1)
    .mob Faldrim Anvilmar
step
    #completewith next
    +|cRXP_WARN_Return to the|r |cRXP_FRIENDLY_Ghostly Attendant|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ghostly Attendant|r
    .turnin 96395 >> Turn in An Ancient Grudge
    .target Ghostly Attendant
step
    >>Kill |cRXP_ENEMY_Enraged Apparitions|r and |cRXP_ENEMY_Tormented Souls|r
    >>|cRXP_WARN_Complete this now as you may not have a chance to finish it later|r
    .complete 96394,1 -- Enraged Apparition slain (15)
    .mob +Enraged Apparition slain (15)
    .complete 96394,2 -- Tormented Soul slain (10)
    .mob +Tormented Soul slain (10)
step
    #completewith ToU
    >>Loot the |cRXP_PICK_Dwarven Heirlooms|r on the ground through the Hall of Thanes
    >>|cRXP_WARN_You can collect plenty of these at the end of the dungeon as well|r
    .complete 96403,1 -- Dwarven Heirloom (8)
step
    >>Kill |cRXP_ENEMY_Durgen Dirgehammer|r. Loot him for |cRXP_LOOT_Durgen Dirgehammer's Head|r
    .complete 96393,1 -- Durgen Dirgehammer's Head
    .mob Durgen Dirgehammer
step
    #label ToU
    >>Click the |cRXP_PICK_Treaty of Understanding|r
    .accept 98423 >> Accept The Treaty of Understanding
step
    >>Loot the |cRXP_PICK_Dwarven Heirlooms|r on the ground through the Hall of Thanes
    .complete 96403,1 -- Dwarven Heirloom (8)
step
    .zone Ironforge >> |cRXP_WARN_Exit the Hall of Thanes. Fastest way is running straight down the corridor from the final boss room|r
    .subzoneskip 16919,1

step
    .goto 1455/0,-968.200,-4803.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thom Filch|r
    .turnin 96403 >> Turn in Important Heirlooms
    .target Thom Filch
step
    #completewith next
    .goto 1455/0,-1006.600,-4841.600,10,0
    .goto 1455/0,-969.700,-4841.500,10,0
    .goto 1455/0,-964.300,-4807.500,10,0
    .goto 1455/0,-993.500,-4817.600,10,0
    .goto 1455/0,-983.700,-4847.800,10,0
    .goto 1455/0,-1022.000,-4842.100,10,0
    .goto 1455/0,-994.000,-4843.100,10 >> Return to |cRXP_FRIENDLY_Afadra Dunwall|r up the ramp
step
    .goto 1455/0,-971.800,-4820.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Afadra Dunwall|r
    .turnin 96394 >> Turn in The Restless Dead
    .target Afadra Dunwall
step
    #completewith next
    .goto 1455/0,-1030.200,-4831.000,10,0
    .goto 1455/0,-1090.900,-4830.400,10,0
    .goto 1455/0,-1079.600,-4884.100,10,0
    .goto 1455/0,-1058.000,-4842.500,10 >> Travel up to ramp to toward |cRXP_FRIENDLY_King Magni Bronzebeard|r
step
    .goto 1455/0,-1022.600,-4865.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Magni Bronzebeard|r
    .turnin 96393 >> Turn in Old Ironforge Incursion
    .turnin 98423 >> Turn in The Treaty of Understanding
    .target King Magni Bronzebeard

step << Shaman
    .goto 1455/0,-1086.500,-4642.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eldrun Stormbreaker::258098|r
    .target Eldrun Stormbreaker::258098
    .trainer >> Train your class spells
step << Priest/Paladin/Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Toldren Deepiron|r << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brandur Ironhammer|r << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dink|r << Mage
    .goto 1455/0,-928.48,-4614.620 << Mage
    .goto 1455/0,-912.88,-4625.99 << Priest
    .goto 1455/0,-896.55,-4601.68 << Paladin
    .trainer >> Train your class spells
    .target Toldren Deepiron << Priest
    .target Brandur Ironhammer << Paladin
    .target Dink << Mage
step << Warlock/Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Briarthorn|r << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fenthwick|r << Rogue
    .goto 1455/0,-1117.60,-4615.14,15,0 << Warlock
    .goto 1455/0,-1111.62,-4599.09 << Warlock
    .goto 1455/0,-1120.72,-4650.120 << Rogue
    .trainer >> Train your class spells
    .target Briarthorn << Warlock
    .target Fenthwick << Rogue
step << Warlock
    .goto 1455/0,-1134.20,-4610.39,15,0
    .goto 1455/0,-1130.26,-4601.270
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jubahl Corpseseeker|r
    .vendor >> |cRXP_BUY_Buy|r |T133738:0|t[Grimoire of Sacrifice (Rank 1)]
    .target Jubahl Corpseseeker
    .train 20381,1
step << Warrior/Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Regnus Thundergranite|r << Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bilban Tosslespanner|r << Warrior
    .goto 1455/0,-1266.02,-5006.570 << Hunter
    .goto 1455/0,-1234.65,-5035.67 << Warrior
    .trainer >> Train your class spells
    .target Regnus Thundergranite << Hunter
    .target Bilban Tosslespanner << Warrior
]])


RXPGuides.RegisterGuide([[
#forever
#season 0,1
#version 1
#beta
<< Alliance
#group RestedXP Forever Dungeon Guide (A)
#subgroup (WIP) Dungeon Guide 1-20
--#groupid RXP-SRGCE-A1
#name 16-18 Ruins of Lordaeron
#next 18-20 Deadmines

step
    #completewith EnterRoL
    +|cRXP_WARN_You will now run Ruins of Lordaeron|r
    >>|cRXP_WARN_All the quests are picked up inside the dungeon|r
step
    .goto 1455/0,-1152.400,-4821.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryth Thurden|r
    >>|cRXP_WARN_If you do not have the Wetlands flight path, skip this step|r
    .fly Wetlands >> Fly to Wetlands
    .target Gryth Thurden
    .zoneskip Ironforge,1

step
    .goto 1426/0,-826.400,-5027.100,30,0
    .goto 1426/0,-721.900,-5078.900,30,0
    .goto 1426/0,-426.500,-5181.000,70,0
    .goto 1426/0,-230.400,-5154.600,80,0
    .goto 1426/0,-65.000,-5115.000,100 >> |cRXP_WARN_Exit Ironforge. Travel to the Dun Morogh -> Wetlands deathskip location|r
    .zoneskip Wetlands
    .zoneskip Hillsbrad Foothills
    .subzoneskip 150 -- menethil
    .subzoneskip 16611 -- ruins of lordaeron
step
    .goto 1426,30.741,34.269,15,0
    .goto 1426,30.812,33.548,15,0
    .goto 1426,31.060,32.543,15,0
    .goto 1426,31.439,32.356,15,0
    .goto 1426,31.675,29.636,15,0
    .goto 1426,32.209,28.777,15,0
    .goto 1426,32.645,27.740,15,0
    .goto 1415,44.910,52.022,15,0
    .goto 1415,44.910,52.030
    .subzone 207 >>|cRXP_WARN_Climb the mountain, then walk down past the jagged pattern until your zone changes to the Wetlands|r
    .zoneskip Hillsbrad Foothills
    .subzoneskip 150 -- menethil
    .subzoneskip 16611 -- ruins of lordaeron
step
    .goto 1415/0,254.0285,-4708.3416,-1
    .goto 1437/0,-874.700,-3341.400,-1
    >>|cRXP_WARN_Jump off the mountain toward the north or north-west|r
    .deathskip >> Die and respawn at the Baradin Bay |cRXP_FRIENDLY_Spirit Healer|r
    .target Spirit Healer
    .zoneskip Hillsbrad Foothills
    .subzoneskip 150 -- menethil
    .subzoneskip 16611 -- ruins of lordaeron
step
    #completewith next
    .goto 1437/0,-839.800,-3657.900
    .subzone 150 >> Swim over to Menethil Harbor
    .zoneskip Hillsbrad Foothills
    .subzoneskip 16611 -- ruins of lordaeron
step
    .goto 1437/0,-782.000,-3793.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shellei Brondir|r
    .fp Menethil Harbor >> Get the Wetlands flight path
    .target Shellei Brondir
    .zoneskip Hillsbrad Foothills
    .subzoneskip 16611 -- ruins of lordaeron
step
    .goto 1437/0,-581.800,-3722.400
    .zone Hillsbrad Foothills >> Take the boat to Southshore
    .subzoneskip 16611 -- ruins of lordaeron
step
    .goto 1424/0,-512.15,-715.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darla Harris|r
    .fp Southshore >> Get the Southshore flight path
    .target Darla Harris
    .subzoneskip 16611 -- ruins of lordaeron
step
    #label EnterRoL
    .goto 1424/0,-272.000,-381.800,100,0
    .goto 1424/0,-47.400,-249.400,100,0
    .goto 1416/0,68.400,-46.200,130,0
    .goto 1416/0,45.300,257.100,150,0
    .goto 1416/0,-54.700,812.600,100,0
    .goto 1420/0,7.600,1530.500,70,0
    .goto 1420/0,-21.800,1668.600,20,0
    .goto 1420/0,-56.600,1692.000,10,0
    .goto 1420/0,-55.200,1779.600,15,0
    .goto 1420/0,6.300,1791.500,25,0
    .goto 1420/0,4.300,1847.500,10,0
    .goto 1458/0,238.400,1872.200,20,0
    .goto 1458/0,170.700,1804.700
    .subzone 16611 >>Travel to the Ruins of Lordaeron in Undercity. Enter the dungeon
    >>|cRXP_WARN_Be careful of higher level |cRXP_ENEMY_Cats|r, |cRXP_ENEMY_Bears|r, |cRXP_ENEMY_Spiders|r or |cRXP_ENEMY_Murlocs|r as you run over|r
    >>|cRXP_WARN_As soon as you enter Undercity you will be automatically PVP flagged, becoming attackable by|r |cRXP_ENEMY_Horde|r

step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Truman|r
    .accept 95250 >> Accept Abominable Creatures
    .target Captain Truman
step
    #sticky
    #label BaronHead
    >>Kill |cRXP_ENEMY_The Baron|r. Loot him for the |cRXP_LOOT_Head of the Baron|r
    .complete 95250,1 -- Head of the Baron (1)
    .mob The Baron
step
    >>Loot all mobs for the |T133328:0|t[|cRXP_LOOT_Bloodied Insignia|r]
    .use 268535 >> |cRXP_WARN_Use the|r |T133328:0|t[|cRXP_LOOT_Bloodied Insignia|r] |cRXP_WARN_to start the quest|r
    .collect 268535,1,95195,1 -- Bloodied Insignia (1)  
    .accept 95195 >> Accept Bloodied Insignia
step
    #sticky
    #label BloodiedInsignia
    >>Loot all mobs for their |cRXP_LOOT_Bloodied Insignias|r
    .complete 95195,1 -- Bloodied Insignia (10)
step
    #sticky
    #label CrestofLordaeron
    >>Loot the |T4504543:0|t[|cRXP_LOOT_Crest of Lordaeron|r] on the ground or hanging on a wall
    >>|cRXP_WARN_Keep an eye out for this. It can spawn in many different locations and be hard to see|r
    .use 268579 >> |cRXP_WARN_Use the|r |T4504543:0|t[|cRXP_LOOT_Crest of Lordaeron|r] |cRXP_WARN_to start the quest|r
    .collect 268579,1,95189,1 -- Crest of Lordaeron (1)
    .accept 95189 >> Accept Crest of Lordaeron
step
    #sticky
    #label CrumpledPaper
    >>Click the |cRXP_PICK_Crumpled Paper|r on the ground near |cRXP_ENEMY_Rath'mael|r
    >>|cRXP_WARN_You can do this after you've killed him|r
    .accept 92415 >> Accept Remember That I Love You
step
    #requires BaronHead
step
    #requires BloodiedInsignia
step
    #requires CrestofLordaeron
step
    #requires CrumpledPaper
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Truman|r
    >>|cRXP_FRIENDLY_Captain Truman|r |cRXP_WARN_is back at the start of the dungeon|r
    .turnin 95250 >> Turn in Abominable Creatures
    .target Captain Truman

step
    .hs >> Hearth to Stormwind
    >>|cRXP_WARN_If your Hearthstone was not set at Stormwind, make your way there|r
    .zoneskip Stormwind City
step
    .isOnQuest 92415
    .goto 1453/0,744.400,-8621.101
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orphan Matron Nightingale|r
    .turnin 92415 >> Turn in Remember That I Love You
    .accept 95161 >> Accept Remember That I Love You
    .target Orphan Matron Nightingale
step
    #optional
    .isQuestTurnedIn 92415
    .goto 1453/0,744.400,-8621.101
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orphan Matron Nightingale|r
    .accept 95161 >> Accept Remember That I Love You
    .target Orphan Matron Nightingale
step
    #completewith next
    .goto 1453/0,437.600,-8524.5000,20,0
    .goto 1453/0,408.100,-8478.500,15,0
    .goto 1453/0,502.900,-8358.800,15 >> Travel to the Stormwind Library
step
    .isOnQuest 95189
    .goto 1453/0,531.000,-8322.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Dena Kennedy|r
    >>|cRXP_WARN_She walks around slightly in the Royal Gallery|r
    .turnin 95189 >> Turn in Crest of Lordaeron
    .target Lady Dena Kennedy
step
    .isOnQuest 95195
    .goto 1453/0,521.000,-8954.101
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Marcus Jonathan|r
    .turnin 95195 >> Turn in Bloodied Insignia
    .target General Marcus Jonathan
]])

RXPGuides.RegisterGuide([[
#xprate <1.59
#forever
#season 0,1
#version 1
#beta
<< Alliance
#group RestedXP Forever Dungeon Guide (A)
#subgroup (WIP) Dungeon Guide 1-20
--#groupid RXP-SRGCE-A1
#name 18-20 Deadmines
#next 20-20 Redridge


]])