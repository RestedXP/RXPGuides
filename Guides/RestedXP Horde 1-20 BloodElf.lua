local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end

RXPGuides.RegisterGuide([[
#tbc
#wotlk
<< BloodElf
#name 1-6 Eversong Woods
#version 1
#group RestedXP Horde 1-30
#defaultfor BloodElf
#next 6-10 Eversong Woods


step << !BloodElf
    #completewith next
    +|cFFFCDC00You have selected a guide meant for Blood Elves. We do not recommend doing the 1-6 zone due to there being no quests for non-Blood Elves. You should choose the same starter zone that you start in|r
step
    .goto Eversong Woods,38.2,20.8 << tbc
    .goto Eversong Woods,38.02,21.01 << wotlk
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Erona|r
    .accept 8325 >> Accept Reclaiming Sunstrider Isle
    .target Magistrix Erona
--VV need to update waypoint for tbc
step << Warlock wotlk
    #completewith Reclaim
    +|cFFFCDC00Grind |cFFFF5722Mana Wyrms|r. Loot them until you have 75 copper worth of vendor items. You can also sell your gear for 13 copper|r << Warlock wotlk
    .money >0.0075
--VV other classes in other expansions should not need to go out of their way to grind for money
step
    .goto Eversong Woods,37.70,23.26,30,0
    .goto Eversong Woods,38.21,24.56,30,0
    .goto Eversong Woods,37.62,25.77,30,0
    .goto Eversong Woods,37.30,24.54,30,0
    .goto Eversong Woods,37.70,23.26,30,0
    .goto Eversong Woods,38.21,24.56,30,0
    .goto Eversong Woods,37.62,25.77,30,0
    .goto Eversong Woods,37.30,24.54
    >>Kill |cFFFF5722Mana Wyrms|r
    .complete 8325,1 --Kill Mana Wyrm (x8)
    .mob Mana Wyrm
--VV Vendorable item value command
step
    #label Reclaim
    .goto Eversong Woods,38.2,20.8 << tbc
	.goto Eversong Woods,38.02,21.01 << wotlk
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Erona|r
    .turnin 8325 >> Turn in Reclaiming Sunstrider Isle
    .accept 8326 >> Accept Unfortunate Measures
    .accept 8328 >> Accept Mage Training << Mage
    .accept 8563 >> Accept Warlock Training << Warlock
    .accept 8564 >> Accept Priest Training << Priest
    .accept 9392 >> Accept Rogue Training << Rogue
	.accept 9393 >> Accept Hunter Training << Hunter
    .accept 9676 >> Accept Paladin Training << Paladin
    .target Magistrix Erona
step
    #completewith next
    .goto Eversong Woods,38.56,20.98,10,0
    .goto Eversong Woods,38.66,20.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Shara|r
    >>|cFF0E8312Buy|r |T132382:0|t[Rough Arrows] |cFF0E8312from her until your|r |T134409:0|t[Quiver] |cFF0E8312is full|r << Hunter
    >>|cFF0E8312Buy|r |T132794:0|t[Refreshing Spring Water] |cFF0E8312from her|r << Warlock TBC/Mage TBC/Priest TBC
    .vendor >>Vendor Trash
    .collect 159,10,8336,1 << Priest TBC/Warlock TBC/Mage TBC --Collect Refreshing Spring Water (x10)
    .target Shara Sunwing
    .money >0.1 << WOTLK !Hunter/!Hunter !Priest !Warlock !Mage TBC
--VV skip vendoring if you have 10s (character likely has additional bags)
step << Mage
    .goto Eversong Woods,39.23,21.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Julia|r
    .turnin 8328 >> Turn in Mage Training
    .accept 10068 >> Accept Well Watcher Solanian
    .train 1459 >> Train your class spells
    .target Julia Sunstriker
step << Warlock
    .goto Eversong Woods,38.93,21.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Teli'Larien|r
    .turnin 8563 >> Turn in Warlock Training
    .accept 10073 >> Accept Well Watcher Solanian
    .accept 8344 >> Accept Windows to the Source << tbc
    .train 688 >> Train your class spells
    .target Summoner Teli'Larien
step << Priest
    .goto Eversong Woods,39.42,20.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Arena|r
    .turnin 8564 >> Turn in Priest Training
    .accept 10072 >> Accept Well Watcher Solanian
    .train 1243 >> Train your class spells
    .target Matron Arena
step << Rogue
    .goto Eversong Woods,38.93,20.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Avokor|r
    .turnin 9392 >> Turn in Rogue Training
    .accept 10071 >> Accept Well Watcher Solanian
    .target Pathstalker Avokor
step << Hunter
    .goto Eversong Woods,39.05,20.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Sallina|r
    .turnin 9393 >> Turn in Hunter Training
    .accept 10070 >> Accept Well Watcher Solanian
    .target Ranger Sallina
step << Paladin
    .goto Eversong Woods,39.47,20.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Jesthenis|r
    .turnin 9676 >> Turn in Paladin Training
    .accept 10069 >> Accept Well Watcher Solanian
    .target Jesthenis Sunstriker
step << Warlock wotlk
	#completewith Collars
	.cast 688 >>|cFFFCDC00Cast|r |T136218:0|t[Summon Imp]
step
    #completewith next
    .goto Eversong Woods,39.43,21.06,10,0
    .goto Eversong Woods,39.48,20.58,10,0
    .goto Eversong Woods,39.31,20.23,10,0
    .goto Eversong Woods,38.93,19.93,10,0
    .goto Eversong Woods,38.76,19.36,10 >>Go upstairs
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Solanian|r, |cFF00FF25Ithanas|r, and |cFF00FF25Helion|r
    .turnin 10068 >> Turn in Well Watcher Solanian << Mage
    .turnin 10069 >> Turn in Well Watcher Solanian << Paladin
    .turnin 10070 >> Turn in Well Watcher Solanian << Hunter
    .turnin 10071 >> Turn in Well Watcher Solanian << Rogue
    .turnin 10072 >> Turn in Well Watcher Solanian << Priest
    .turnin 10073 >> Turn in Well Watcher Solanian << Warlock
    .accept 8330 >> Accept Solanian's Belongings
    .accept 8345 >> Accept The Shrine of Dath'Remar
    .goto Eversong Woods,38.76,19.36
    .accept 8336 >> Accept A Fistful of Slivers
    .goto Eversong Woods,38.27,19.13
    .accept 8346 >> Accept Thirst Unending
    .goto Eversong Woods,37.18,18.94
    .target Well Watcher Solanian
    .target Arcanist Ithanas
    .target Arcanist Helion
step << Warlock tbc
    #completewith next
    >>Cast |T135738:0|t[Mana Tap] and kill |cFFFF5722Mana Wyrms|r and |cFFFF5722Feral Tenders|r. Loot them for their |cFF00BCD4Slivers|r
    .complete 8336,1 --Collect Arcane Sliver (x6)
    .complete 8346,1 --Mana Tap creature (x6)
    .mob Mana Wyrm
    .mob Feral Tender
step << Warlock tbc
    #completewith next
    >>Kill |cFFFF5722Springpaw Lynxes|r and |cFFFF5722Springpaw Cubs|r. Loot them for their |cFF00BCD4Collars|r
    .complete 8326,1 --Lynx Collar (8)
    .mob Springpaw Lynx
    .mob Springpaw Cub
step << Warlock tbc
    #label RunRamp
    #completewith next
    .goto Eversong Woods,32.57,25.53,20,0
    .goto Eversong Woods,32.02,26.09,20 >>Run up the ramp
step << Warlock tbc
    #requires RunRamp
    #completewith next
    >>Cast |T135738:0|t[Mana Tap] and kill |cFFFF5722Arcane Wraiths|r and |cFFFF5722Tainted Arcane Wraiths|r. Loot |cFFFF5722Arcane Wraiths|r for their |cFF00BCD4Essences|r and both for their |cFF00BCD4Slivers|r
    .complete 8336,1 --Collect Arcane Sliver (x6)
    .complete 8346,1 --Mana Tap creature (x6)
    .complete 8344,1 --Wraith Essence (4)
    .mob Arcane Wraith
    .mob Tainted Arcane Wraith
step << Warlock tbc
	#label ArcaneSliver
    .goto Eversong Woods,31.57,29.31,30,0
    .goto Eversong Woods,31.25,27.07,30,0
    .goto Eversong Woods,30.90,27.66,30,0
    .goto Eversong Woods,30.55,26.98,30,0
    .goto Eversong Woods,31.10,26.83
    >>Kill a |cFFFF5722Tainted Arcane Wraith|r. Loot it for its |cFF00BCD4Essence|r and |T132884:0|t[|cFF00BCD4Tainted Arcane Sliver|r].
    >>|cFFFCDC00Use the |T132884:0|t[|cFF00BCD4Tainted Arcane Sliver|r] to start the quest|r
    .complete 8344,2 --Tainted Wraith Essence (1)
    .collect 20483,1,8338,1 --Tainted Arcane Sliver (1)
    .accept 8338 >> Accept Tainted Arcane Sliver
    .mob Tainted Arcane Wraith
    .use 20483
step << Warlock tbc
    .goto Eversong Woods,30.45,29.10,30,0
    .goto Eversong Woods,30.01,26.67,30,0
    .goto Eversong Woods,30.43,24.94,30,0
    .goto Eversong Woods,31.70,26.46,30,0
    .goto Eversong Woods,31.98,27.94,30,0
    .goto Eversong Woods,31.54,29.52,30,0
    .goto Eversong Woods,30.45,29.10,30,0
    .goto Eversong Woods,30.01,26.67,30,0
    .goto Eversong Woods,30.43,24.94,30,0
    .goto Eversong Woods,31.70,26.46,30,0
    .goto Eversong Woods,31.98,27.94,30,0
    .goto Eversong Woods,31.54,29.52
    >>Cast |T135738:0|t[Mana Tap] and kill |cFFFF5722Arcane Wraiths|r and |cFFFF5722Tainted Arcane Wraiths|r. Loot |cFFFF5722Arcane Wraiths|r for their |cFF00BCD4Essences|r and both for their |cFF00BCD4Slivers|r
    .complete 8336,1 --Collect Arcane Sliver (x6)
    .complete 8346,1 --Mana Tap creature (x6)
    .complete 8344,1 --Wraith Essence (4)
    .mob Arcane Wraith
    .mob Tainted Arcane Wraith
step << Warlock tbc
    .goto Eversong Woods,30.45,29.10,30,0
    .goto Eversong Woods,30.01,26.67,30,0
    .goto Eversong Woods,30.43,24.94,30,0
    .goto Eversong Woods,31.70,26.46,30,0
    .goto Eversong Woods,31.98,27.94,30,0
    .goto Eversong Woods,31.54,29.52,30,0
    .goto Eversong Woods,30.45,29.10,30,0
    .goto Eversong Woods,30.01,26.67,30,0
    .goto Eversong Woods,30.43,24.94,30,0
    .goto Eversong Woods,31.70,26.46,30,0
    .goto Eversong Woods,31.98,27.94,30,0
    .goto Eversong Woods,31.54,29.52
    .xp 3+200 >> Grind to 200+/1400xp
step << Warlock tbc
    #completewith next
    .deathskip >> Die and respawn at the |cFF00FF25Spirit Healer|r
step << Warlock tbc
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Helion|r and |cFF00FF25Ithanas|r
    .turnin 8346 >> Turn in Thirst Unending
    .turnin 8338 >> Turn in Tainted Arcane Sliver
    .goto Eversong Woods,37.18,18.94
    .turnin 8336 >> Turn in A Fistful of Slivers
    .goto Eversong Woods,38.27,19.13
    .target Arcanist Helion
    .target Arcanist Ithanas
step << Warlock tbc
    #completewith next
    .goto Eversong Woods,38.56,20.98,10,0
    .goto Eversong Woods,38.66,20.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Shara|r
    >>|cFF0E8312Buy|r |T132794:0|t[Refreshing Spring Water] |cFF0E8312from her|r
    .vendor >>Vendor Trash
    .collect 159,10,8336,1 --Collect Refreshing Spring Water (10)
    .target Shara Sunwing
step << Warlock tbc
    .xp 4 >> Grind to 4
--VV Needs to be changed to a properly calculated xp gate when TBC rolls back around
step << Warlock tbc
    .goto Eversong Woods,38.93,21.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Teli'Larien|r
    .turnin 8344 >> Turn in Windows to the Source
    .train 172 >> Train your class spells
    .target Summoner Teli'Larien
step << Warlock tbc
	#completewith Measures
	.cast 688 >>|cFFFCDC00Cast|r |T136218:0|t[Summon Imp]
step << Warlock tbc
    .goto Eversong Woods,38.86,21.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Yasmine|r
    >>|cFF0E8312Buy the|r |T133738:0|t[Grimoire of Blood Pact] |cFF0E8312from her|r
    .collect 16321,1,8327,1 --Grimoire of Blood Pact (1)
    .target Yasmine Teli'Larien
step << Warlock tbc
    #completewith Measures
	.cast 20397 >> Use your |T133738:0|t[Grimoire of Blood Pact]
	.use 16321
step << wotlk
    #completewith RedOrb
    >>Cast |T136222:0|t[Arcane Torrent] when in melee range of a |cFFFF5722Mana Wyrm|r
    .complete 8346,1 --Mana Tap creature (1)
step
    #label Collars
    >>Kill |cFFFF5722Springpaw Lynxes|r and |cFFFF5722Springpaw Cubs|r. Loot them for their |cFF00BCD4Collars|r
    .goto Eversong Woods,37.37,18.31,35,0
    .goto Eversong Woods,39.36,18.83,35,0
    .goto Eversong Woods,39.85,16.63,35,0
    .goto Eversong Woods,40.61,16.24,35,0
    .goto Eversong Woods,40.37,18.80,35,0
    .goto Eversong Woods,40.48,20.38,35,0
    .goto Eversong Woods,39.42,22.28,35,0
    .goto Eversong Woods,35.98,24.22,35,0
    .goto Eversong Woods,37.37,18.31,35,0
    .goto Eversong Woods,39.36,18.83,35,0
    .goto Eversong Woods,39.85,16.63,35,0
    .goto Eversong Woods,40.61,16.24,35,0
    .goto Eversong Woods,40.37,18.80,35,0
    .goto Eversong Woods,40.48,20.38,35,0
    .goto Eversong Woods,39.42,22.28,35,0
    .goto Eversong Woods,35.98,24.22
    .complete 8326,1 --Collect Lynx Collar (x8)
    .mob Springpaw Lynx
    .mob Springpaw Cub
step
    #label Measures
    .goto Eversong Woods,38.2,20.8 << tbc
	.goto Eversong Woods,38.02,21.01 << wotlk
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Erona|r
    .turnin 8326 >> Turn in Unfortunate Measures
    .accept 8327 >> Accept Report to Lanthan Perilon
    .target Magistrix Erona
step << !Warlock tbc
    #completewith Journal
    >>Cast |T135738:0|t[Mana Tap] and kill |cFFFF5722Mana Wyrms|r and |cFFFF5722Feral Tenders|r. Loot them for their |cFF00BCD4Slivers|r
    .complete 8336,1 --Collect Arcane Sliver (x6)
    .complete 8346,1 --Mana Tap creature (x6)
    .mob Mana Wyrm
    .mob Feral Tender
step << wotlk
    #completewith Journal
    >>Kill |cFFFF5722Mana Wyrms|r and |cFFFF5722Feral Tenders|r. Loot them for their |cFF00BCD4Slivers|r
    .complete 8336,1 --Collect Arcane Sliver (x6)
    .mob Mana Wyrm
    .mob Feral Tender
step
    #label Report
    .goto Eversong Woods,35.37,22.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Lanthan|r
    .turnin 8327 >> Turn in Report to Lanthan Perilon
    .accept 8334 >> Accept Aggression
    .target Lanthan Perilon
step
    #label Journal
    .goto Eversong Woods,37.70,24.91
    >>Loot the |cFFDB2EEFJournal|r on the ground
    .complete 8330,3 --Collect Solanian's Journal (x1)
step << wotlk/!Warlock tbc
    #completewith next
    >>Kill |cFFFF5722Mana Wyrms|r. Loot them for their |cFF00BCD4Slivers|r << wotlk
    >>Cast |T135738:0|t[Mana Tap] and kill |cFFFF5722Mana Wyrms|r. Loot them for their |cFF00BCD4Slivers|r << tbc
    .complete 8336,1 --Collect Arcane Sliver (x6)
    .complete 8346,1 << tbc --Mana Tap creature (x6)
    .mob Mana Wyrm
step
    #completewith next
    >>Kill |cFFFF5722Tenders|r and |cFFFF5722Feral Tenders|r << Warlock tbc
    >>Kill |cFFFF5722Tenders|r and |cFFFF5722Feral Tenders|r. Loot |cFFFF5722Feral Tenders|r for their |cFF00BCD4Slivers|r << wotlk
    >>Kill |cFFFF5722Tenders|r and |cFFFF5722Feral Tenders|r. Cast |T135738:0|t[Mana Tap] on |cFFFF5722Feral Tenders|r. Loot |cFFFF5722Feral Tenders|r for their |cFF00BCD4Slivers|r << !Warlock tbc
    .complete 8334,1 --Kill Tender (x7)
    .complete 8334,2 --Kill Feral Tender (x7)
    .complete 8336,1,1 << wotlk/!Warlock tbc --Collect Arcane Sliver (x6)
    .complete 8346,1 << !Warlock tbc --Mana Tap creature (x6)
    .mob Tender
    .mob Feral Tender
step
    #label RedOrb
    .goto Eversong Woods,35.14,28.89
    >>Loot the |cFFDB2EEFScrying Orb|r on the platform
    .complete 8330,1 --Collect Solanian's Scrying Orb (x1)
step
    .loop 40,Eversong Woods,33.92,26.49,33.97,28.55,35.15,29.78,36.52,29.35,35.58,27.42,33.92,26.49
    >>Kill |cFFFF5722Tenders|r and |cFFFF5722Feral Tenders|r << Warlock tbc
    >>Kill |cFFFF5722Tenders|r and |cFFFF5722Feral Tenders|r. Loot |cFFFF5722Feral Tenders|r for their |cFF00BCD4Slivers|r << wotlk
    >>Kill |cFFFF5722Tenders|r and |cFFFF5722Feral Tenders|r. Cast |T135738:0|t[Mana Tap] on |cFFFF5722Feral Tenders|r. Loot |cFFFF5722Feral Tenders|r for their |cFF00BCD4Slivers|r << !Warlock tbc
    .complete 8334,1 --Kill Tender (x7)
    .complete 8334,2 --Kill Feral Tender (x7)
    .complete 8336,1,1 << wotlk/!Warlock tbc --Collect Arcane Sliver (x6)
    .complete 8346,1,1 << !Warlock tbc --Mana Tap creature (x6)
step << !Warlock tbc/wotlk
    #completewith next
    >>Kill |cFFFF5722Feral Tenders|r. Loot them for their |cFF00BCD4Slivers|r << wotlk
    >>Cast |T135738:0|t[Mana Tap] on and kill |cFFFF5722Feral Tenders|r. Loot them for their |cFF00BCD4Slivers|r << tbc
    .complete 8336,1 --Collect Arcane Sliver (x6)
    .complete 8346,1,1 << !Warlock tbc --Mana Tap creature (x6)
    .mob Mana Wyrm
    .mob Feral Tender
step
    #label Aggression
    .goto Eversong Woods,35.37,22.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Lanthan|r
    .turnin 8334 >> Turn in Aggression
    .accept 8335 >> Accept Felendren the Banished
    .target Lanthan Perilon
step << !Warlock tbc
    .goto Eversong Woods,36.79,19.88,40,0
    .goto Eversong Woods,34.64,18.82,40,0
    .goto Eversong Woods,33.78,19.46,40,0
    .goto Eversong Woods,34.17,20.59,40,0
    .goto Eversong Woods,36.79,19.88,40,0
    .goto Eversong Woods,34.64,18.82,40,0
    .goto Eversong Woods,33.78,19.46,40,0
    .goto Eversong Woods,34.17,20.59
    >>Kill |cFFFF5722Mana Wyrms|r. Loot them for their |cFF00BCD4Slivers|r << wotlk
    >>Cast |T135738:0|t[Mana Tap] and kill |cFFFF5722Mana Wyrms|r. Loot them for their |cFF00BCD4Slivers|r << tbc
    .complete 8336,1 --Collect Arcane Sliver (x6)
    .complete 8346,1,1 << !Warlock tbc --Mana Tap creature (x6)
    .mob Mana Wyrm
step << !Warlock tbc
    .goto Eversong Woods,36.79,19.88,40,0
    .goto Eversong Woods,34.64,18.82,40,0
    .goto Eversong Woods,33.78,19.46,40,0
    .goto Eversong Woods,34.17,20.59,40,0
    .goto Eversong Woods,36.79,19.88,40,0
    .goto Eversong Woods,34.64,18.82,40,0
    .goto Eversong Woods,33.78,19.46,40,0
    .goto Eversong Woods,34.17,20.59
    .xp 4-360 >> Grind to 1740+/2100xp << !Warlock tbc
    .xp 4-610 >> Grind to 1490+/2100xp << wotlk
step << !Warlock !Mage !Priest tbc
    #completewith next
    .vendor >> Vendor Trash
step << !Warlock tbc
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Helion|r and |cFF00FF25Ithanas|r
    .turnin 8346 >> Turn in Thirst Unending
    .goto Eversong Woods,37.18,18.94
    .turnin 8336 >> Turn in A Fistful of Slivers
    .goto Eversong Woods,38.27,19.13
    .target Arcanist Helion
    .target Arcanist Ithanas
step << Mage tbc/Priest tbc
    #completewith next
    .goto Eversong Woods,38.56,20.98,10,0
    .goto Eversong Woods,38.66,20.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Shara|r
    >>|cFF0E8312Buy|r |T132794:0|t[Refreshing Spring Water] |cFF0E8312from her|r
    .vendor >>Vendor Trash
    .collect 159,10,8336,1 --Collect Refreshing Spring Water (10)
    .target Shara Sunwing
step << !Mage tbc/!Priest tbc/!Warlock tbc/Paladin
    #completewith next
    .goto Eversong Woods,38.56,20.98,10,0
    .goto Eversong Woods,38.66,20.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Shara|r
    .vendor >>Vendor Trash
    .target Shara Sunwing
    .money >0.1 << !Mage tbc/!Priest tbc/!Warlock tbc/Paladin
step << Mage tbc
    .goto Eversong Woods,38.56,20.98,10,0 << wotlk
    .goto Eversong Woods,39.23,21.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Julia|r
    .train 116 >> Train your class spells
    .target Julia Sunstriker
step << skip
    .goto Eversong Woods,38.56,20.98,10,0
    .goto Eversong Woods,38.93,21.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Teli'Larien|r
    .train 172 >> Train your class spells
    .target Summoner Teli'Larien
--Warlock WOTLK
step << Priest tbc
    .goto Eversong Woods,38.56,20.98,10,0 << wotlk
    .goto Eversong Woods,39.42,20.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Arena|r
    .train 589 >> Train your class spells
    .target Matron Arena
step << Hunter tbc
    .goto Eversong Woods,38.56,20.98,10,0 << wotlk
    .goto Eversong Woods,39.05,20.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Sallina|r
    .train 1978 >> Train your class spells
    .target Ranger Sallina
step << Paladin
    .goto Eversong Woods,39.47,20.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Jesthenis|r
    .train 20271 >> Train your class spells
    .target Jesthenis Sunstriker
--VV Training is all tbc, since the only class that really benefits from sacrificing an extra 400 yards of running to be able to kill 11+ mobs faster is Paladin
step << wotlk
    #completewith Shrine
    >>Kill |cFFFF5722Mana Wyrms|r and |cFFFF5722Feral Tenders|r. Loot them for their |cFF00BCD4Slivers|r
    .complete 8336,1 --Collect Arcane Sliver (x6)
    .mob Mana Wyrm
    .mob Feral Tender
step << wotlk
    .goto Eversong Woods,34.05,18.96
    >>Cast |T136222:0|t[Arcane Torrent] when in melee range of a |cFFFF5722Mana Wyrm|r
    .complete 8346,1 --Mana Tap creature (1)
step
    #label Shrine
    .goto Eversong Woods,29.61,19.38
    >>Click the |cFFDB2EEFShrine of Dath'Remar|r
    .complete 8345,1 --Collect Shrine of Dath'Remar Read (x1)
step << wotlk
    #completewith RunRamp
    >>Kill |cFFFF5722Feral Tenders|r. Loot them for their |cFF00BCD4Slivers|r
    .complete 8336,1 --Collect Arcane Sliver (x6)
    .mob Feral Tender
step
    .goto Eversong Woods,31.33,22.74
    >>Loot the |cFFDB2EEFScroll|r on the ground
    .complete 8330,2 --Collect Scroll of Scourge Magic (x1)
step
    #label RunRamp
    #completewith next
    .goto Eversong Woods,32.57,25.53,20,0
    .goto Eversong Woods,32.02,26.09,20 >>Run up the ramp
step << wotlk/!Warlock tbc
    #completewith Academy
    >>Kill a |cFFFF5722Tainted Arcane Wraith|r. Loot it for its |T132884:0|t[|cFF00BCD4Tainted Arcane Sliver|r].
    >>|cFFFCDC00Use the |T132884:0|t[|cFF00BCD4Tainted Arcane Sliver|r] to start the quest|r
    .collect 20483,1,8338,1 --Tainted Arcane Sliver (1)
    .accept 8338 >> Accept Tainted Arcane Sliver
    .mob Tainted Arcane Wraith
    .use 20483
step
    #label Academy
    .goto Eversong Woods,30.79,25.37,20,0
    .goto Eversong Woods,29.35,24.44,20,0
    .goto Eversong Woods,29.32,26.24,20,0
    .goto Eversong Woods,30.75,26.30,10,0
    .goto Eversong Woods,30.13,26.42,10,0
    .goto Eversong Woods,30.09,27.41,10,0
    .goto Eversong Woods,30.48,27.90,10,0
    .goto Eversong Woods,30.84,27.13
    >>Kill |cFFFF5722Arcane Wraiths|r and |cFFFF5722Tainted Arcane Wraiths|r whilst heading up the Academy. Loot them for their |cFF00BCD4Slivers|r << wotlk
    >>Kill |cFFFF5722Arcane Wraiths|r and |cFFFF5722Tainted Arcane Wraiths|r whilst heading up the Academy << tbc
    >>Kill |cFFFF5722Felendren the Banished|r at the top. Loot him for his |cFF00BCD4Head|r
    .complete 8335,1 --Kill Arcane Wraith (x8)
    .complete 8335,2 --Kill Tainted Arcane Wraith (x2)
    .complete 8336,1 << wotlk--Collect Arcane Sliver (x6)
    .complete 8335,3 --Collect Felendren's Head (x1)
    .mob Arcane Wraith
    .mob Tainted Arcane Wraith
    .mob Felendren the Banished
step << wotlk/!Warlock tbc
    .goto Eversong Woods,30.84,27.13
    >>Kill a |cFFFF5722Tainted Arcane Wraith|r. Loot it for its |T132884:0|t[|cFF00BCD4Tainted Arcane Sliver|r].
    >>|cFFFCDC00Use the |T132884:0|t[|cFF00BCD4Tainted Arcane Sliver|r] to start the quest|r
    .collect 20483,1,8338,1 --Tainted Arcane Sliver (1)
    .accept 8338 >> Accept Tainted Arcane Sliver
    .mob Tainted Arcane Wraith
    .use 20483
step
    #completewith SolanianB
    .deathskip >> Die and respawn at the |cFF00FF25Spirit Healer|r
step << wotlk
    #completewith next
    >>Kill |cFFFF5722Mana Wyrms|r. Loot them for their |cFF00BCD4Slivers|r
    .complete 8336,1 --Collect Arcane Sliver (x6)
    .mob Mana Wyrm
step << wotlk
    .goto Eversong Woods,36.79,19.88,40,0
    .goto Eversong Woods,34.64,18.82,40,0
    .goto Eversong Woods,33.78,19.46,40,0
    .goto Eversong Woods,34.17,20.59,40,0
    .goto Eversong Woods,36.79,19.88,40,0
    .goto Eversong Woods,34.64,18.82,40,0
    .goto Eversong Woods,33.78,19.46,40,0
    .goto Eversong Woods,34.17,20.59
    >>Cast |T136222:0|t[Arcane Torrent] when in melee range of a |cFFFF5722Mana Wyrm|r
    .complete 8346,1 --Mana Tap creature (1)
    .mob Mana Wyrm
step << wotlk
    .goto Eversong Woods,36.79,19.88,40,0
    .goto Eversong Woods,34.64,18.82,40,0
    .goto Eversong Woods,33.78,19.46,40,0
    .goto Eversong Woods,34.17,20.59,40,0
    .goto Eversong Woods,36.79,19.88,40,0
    .goto Eversong Woods,34.64,18.82,40,0
    .goto Eversong Woods,33.78,19.46,40,0
    .goto Eversong Woods,34.17,20.59
    >>Kill |cFFFF5722Mana Wyrms|r. Loot them for their |cFF00BCD4Slivers|r << wotlk
    >>Cast |T135738:0|t[Mana Tap] and kill |cFFFF5722Mana Wyrms|r. Loot them for their |cFF00BCD4Slivers|r << tbc
    .complete 8336,1 --Collect Arcane Sliver (x6)
    .complete 8346,1,1 << !Warlock tbc --Mana Tap creature (x6)
    .mob Mana Wyrm
step << wotlk
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Helion|r and |cFF00FF25Ithanas|r
    .turnin 8346 >> Turn in Thirst Unending
    .turnin 8338 >> Turn in Tainted Arcane Sliver
    .goto Eversong Woods,37.18,18.94
    .turnin 8336 >> Turn in A Fistful of Slivers
    .goto Eversong Woods,38.27,19.13
    .target Arcanist Helion
    .target Arcanist Ithanas
step
    #completewith next
    .goto Eversong Woods,38.56,20.98,10,0
    .goto Eversong Woods,39.43,21.06,10,0
    .goto Eversong Woods,39.48,20.58,10,0
    .goto Eversong Woods,39.31,20.23,10,0
    .goto Eversong Woods,38.93,19.93,10,0
    .goto Eversong Woods,38.76,19.36,10 >>Go upstairs
step
    #label SolanianB
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Solanian|r and |cFF00FF25Helion|r << !Warlock tbc
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Solanian|r << Warlock tbc/wotlk
    .turnin 8330 >> Turn in Solanian's Belongings
    .turnin 8345 >> Turn in The Shrine of Dath'Remar
    .goto Eversong Woods,38.76,19.36
    .turnin 8338 >> Turn in Tainted Arcane Sliver << !Warlock tbc
    .goto Eversong Woods,37.18,18.94 << !Warlock tbc
    .target Well Watcher Solanian
    .target Arcanist Helion << !Warlock tbc
step
    .goto Eversong Woods,35.37,22.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Lanthan|r
    .turnin 8335 >> Turn in Felendren the Banished
    .accept 8347 >> Accept Aiding the Outrunners
    .target Lanthan Perilon
step
    .loop 40,Eversong Woods,33.92,26.49,33.97,28.55,35.15,29.78,36.52,29.35,35.58,27.42,33.92,26.49
    .xp 5+1800 >> Grind to 1800+/2800xp
step
    #completewith next
    .goto Eversong Woods,38.91,30.27,30,0
    .goto Eversong Woods,40.41,32.21,30 >>Go over the Bridge
step
    .goto Eversong Woods,40.41,32.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Alarion|r
    .turnin 8347 >> Turn in Aiding the Outrunners
    .accept 9704 >> Accept Slain by the Wretched
    .target Outrunner Alarion
step
    #xprate >1.4999
    .goto Eversong Woods,42.02,35.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cFF00FF25Outrunner|r's corpse on the ground
    .turnin 9704 >> Turn in Slain by the Wretched
    .target Slain Outrunner
step
    #xprate <1.5
    .goto Eversong Woods,42.02,35.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cFF00FF25Outrunner|r's corpse on the ground
    .turnin 9704 >> Turn in Slain by the Wretched
    .accept 9705 >> Accept Package Recovery
    .target Slain Outrunner
step
    #xprate <1.5
    .goto Eversong Woods,40.41,32.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Alarion|r
    .turnin 9705 >> Turn in Package Recovery
    .accept 8350 >> Accept Completing the Delivery
    .target Outrunner Alarion
step
    .goto Eversong Woods,45.97,43.35,40,0
    .goto Eversong Woods,46.57,35.10,40,0
    .goto Eversong Woods,43.62,34.88,40,0
    .goto Eversong Woods,45.97,43.35,40,0
    .goto Eversong Woods,46.57,35.10,40,0
    .goto Eversong Woods,43.62,34.88,40,0
    .xp 5+2690 >> Grind to 2690+/2800xp
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
<< BloodElf/Undead
#name 6-10 Eversong Woods
#version 1
#group RestedXP Horde 1-30
#next 10-12 Eversong Woods << !Warrior
#next 10-13 Durotar << Warrior

step
    .goto Eversong Woods,47.26,46.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Jarondis|r
    .accept 8472 >> Accept Major Malfunction
    .target Magister Jaronis
step
    #completewith FalconHS
    .goto Eversong Woods,47.79,47.35,8,0
    .goto Eversong Woods,47.86,47.76,8 >> Go inside the Inn
step << BloodElf
    #xprate <1.5
    .goto Eversong Woods,48.16,47.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Delaniel|r
    .turnin 8350 >> Turn in Completing the Delivery
    .home >> Set your Hearthstone to Falconwing Square
    .target Innkeeper Delaniel
step << BloodElf
    #xprate >1.4999
    #label FalconHS
    .goto Eversong Woods,48.16,47.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Delaniel|r
    .home >> Set your Hearthstone to Falconwing Square
    .target Innkeeper Delaniel
step << !BloodElf
    #label FalconHS
    .goto Eversong Woods,48.16,47.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Delaniel|r
    .home >> Set your Hearthstone to Falconwing Square
    .target Innkeeper Delaniel
step << Priest/Mage/Warlock/Warrior tbc/Rogue tbc
    #completewith next
    .goto Eversong Woods,48.27,47.05,8,0
    .goto Eversong Woods,48.06,47.11,8 >> Go upstairs
step << Priest
    .goto Eversong Woods,47.85,47.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Ponaris|r upstairs
    .accept 9489 >> Cleansing the Scar << BloodElf
    .train 591 >>Train your class spells
    .target Ponaris
step << Mage
    .goto Eversong Woods,48.04,48.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Garridel|r upstairs
    .train 143 >>Train your class spells
    .target Garridel
step << Warlock
    .goto Eversong Woods,48.23,47.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Celoenus|r upstairs
    .train 695 >>Train your class spells
    .target Celoenus
step << Warrior tbc/Rogue tbc
    .goto Eversong Woods,48.58,47.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Kanaria|r upstairs
    .train 3273 >>Train |T135966:0|t[First Aid]
    .target Kanaria
step << Mage/Warlock/Priest
    .goto Eversong Woods,48.16,47.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Delaniel|r
    >>|cFF0E8312Buy|r |T132815:0|t[Ice Cold Milk] |cFF0E8312from her|r
    .collect 1179,5,8468,1 --Ice Cold Milk (5)
    .money <0.0119
    .target Innkeeper Delaniel
step
    #completewith next
    .goto Eversong Woods,47.86,47.76,8,0
    .goto Eversong Woods,47.79,47.35,8 >> Go outside
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cFF00FF25Wanted Poster|r and |cFF00FF25Aeldon|r
    .accept 8468 >> Accept Wanted: Thaelis the Hungerer
    .goto Eversong Woods,48.18,46.31
    .accept 8463 >> Accept Unstable Mana Crystals
    .goto Eversong Woods,48.17,46.00
    .target Aeldon Sunbrand
step << Paladin
    .goto Eversong Woods,48.39,46.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Noellene|r
    .train 639 >>Train your class spells
    .target Noellene
step << Rogue
    .goto Eversong Woods,48.58,46.29,8,0
    .goto Eversong Woods,48.50,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Tannaria|r upstairs
    .train 1757 >>Train your class spells
    .target Tannaria
step << Hunter
    .goto Eversong Woods,48.27,46.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Hannovia|r
    .train 3044 >>Train your class spells
    .target Hannovia
step << Undead Warrior tbc/Rogue
    .goto Eversong Woods,48.34,45.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Larenis|r
    .train 201 >>Train 1h Swords << Rogue
    .train 202 >>Train 2h Swords << Undead Warrior tbc
    .target Duelist Larenis
    .money <0.11
step << Warrior tbc/Paladin tbc/Rogue
    .goto Eversong Woods,48.49,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Geron|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T135321:0|t[Gladius] (5s 9c). You'll come back later if you don't have enough yet
    .target Geron
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
    .train 201,3 << Rogue
step << Warrior tbc/Paladin tbc/Rogue
    .goto Eversong Woods,48.49,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Geron|r
    >>|cFF0E8312Buy a|r |T135321:0|t[Gladius] |cFF0E8312from him|r
    .collect 2488,1,8476,1 --Gladius (1)
    .target Geron
    .money <0.0509
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
    .train 201,3 << Rogue
step << Warrior wotlk/Paladin wotlk
    .goto Eversong Woods,48.49,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Geron|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T133053:0|t[Wooden Mallet] (6s 66c). You'll come back later if you don't have enough yet
    .target Geron
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5
step << Warrior wotlk/Paladin wotlk
    .goto Eversong Woods,48.49,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Geron|r
    >>|cFF0E8312Buy a|r |T133053:0|t[Wooden Mallet] |cFF0E8312from him|r
    .collect 2493,1,8476,1 --Collect Wooden Mallet (1)
    .money <0.0666
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5
step << Rogue
    .goto Eversong Woods,48.49,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Geron|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T135641:0|t[Stiletto] (3s 82c). You'll come back later if you don't have enough yet
    .target Geron
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
    .train 201,1
step << Rogue
    .goto Eversong Woods,48.49,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Geron|r
    >>|cFF0E8312Buy a|r |T135641:0|t[Stiletto] |cFF0E8312from him|r
    .collect 2494,1,8476,1 --Collect Stiletto
    .money <0.0382
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
    .train 201,1
step << Warrior tbc/Paladin tbc/Rogue
    #completewith Thaelis
    +Equip the |T135321:0|t[Gladius]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Warrior wotlk/Paladin wotlk
    #completewith Thaelis
    +Equip the |T133053:0|t[Wooden Mallet]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5
step << Rogue
    #completewith Thaelis
    +Equip the |T135641:0|t[Stiletto]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step
    #completewith next
    .goto Eversong Woods,46.96,43.56,40,0
    .goto Eversong Woods,47.09,39.00,40,0
    >>Loot the |cFFDB2EEFUnstable Mana Crystal Boxes|r on the ground
    >>Kill |cFFFF5722Arcane Patrollers|r. Loot them for their |cFF00BCD4Cores|r
    .complete 8463,1 --Collect Unstable Mana Crystal (x6)
    .complete 8472,1 --Collect Arcane Core (x6)
    .mob Arcane Patroller
step
    #label Thaelis
    .goto Eversong Woods,45.02,37.68
    >>Kill |cFFFF5722Thaelis the Hungerer|r. Loot him for |cFF00BCD4Thaelis's Head|r
    .complete 8468,1 --Collect Thaelis's Head (x1)
    .mob Thaelis the Hungerer
step
    .goto Eversong Woods,47.22,37.39,40,0
    .goto Eversong Woods,46.67,35.11,40,0
    .goto Eversong Woods,43.96,34.90,40,0
    .goto Eversong Woods,42.41,38.04,40,0
    .goto Eversong Woods,42.17,40.49,40,0
    .goto Eversong Woods,40.70,41.12,40,0
    .goto Eversong Woods,40.77,43.15,40,0
    .goto Eversong Woods,43.03,42.97,40,0
    .goto Eversong Woods,44.23,45.21,40,0
    .goto Eversong Woods,46.96,43.56,40,0
    .goto Eversong Woods,47.09,39.00,40,0
    .goto Eversong Woods,47.22,37.39,40,0
    .goto Eversong Woods,46.67,35.11,40,0
    .goto Eversong Woods,43.96,34.90,40,0
    .goto Eversong Woods,42.41,38.04,40,0
    .goto Eversong Woods,42.17,40.49
    >>Loot the |cFFDB2EEFUnstable Mana Crystal Boxes|r on the ground
    >>Kill |cFFFF5722Arcane Patrollers|r. Loot them for their |cFF00BCD4Cores|r
    .complete 8463,1 --Collect Unstable Mana Crystal (x6)
    .complete 8472,1 --Collect Arcane Core (x6)
    .mob Arcane Patroller
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Jarondis|r, |cFF00FF25Kan'ren|r, and |cFF00FF25Aeldon|r
    .turnin 8472 >> Turn in Major Malfunction
    .accept 8895 >> Accept Delivery to the North Sanctum
    .goto Eversong Woods,47.26,46.31
    .turnin 8468 >> Turn in Wanted: Thaelis the Hungerer
    .goto Eversong Woods,47.77,46.58
    .turnin 8463 >> Turn in Unstable Mana Crystals
    .accept 9352 >> Accept Darnassian Intrusions
    .goto Eversong Woods,48.17,46.00
    .target Magister Jaronis
    .target Sergeant Kan'ren
    .target Aeldon Sunbrand
step << Paladin
    .goto Eversong Woods,48.39,46.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Noellene|r
    .train 853 >>Train your class spells
    .target Noellene
	.xp <8,1
step << Rogue
    .goto Eversong Woods,48.58,46.29,8,0
    .goto Eversong Woods,48.50,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Tannaria|r upstairs
    .train 6760 >>Train your class spells
    .target Tannaria
	.xp <8,1
step << Hunter
    .goto Eversong Woods,48.27,46.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Hannovia|r
    .train 5116 >>Train your class spells
    .target Hannovia
	.xp <8,1
step << Mage/Warlock
    #completewith next
    .goto Eversong Woods,47.79,47.35,8,0
    .goto Eversong Woods,47.86,47.76,8 >> Go inside the Inn
	.xp <8,1
step << Mage/Warlock
    #completewith next
    .goto Eversong Woods,48.27,47.05,8,0
    .goto Eversong Woods,48.06,47.11,8 >> Go upstairs
	.xp <8,1
step << skip
    .goto Eversong Woods,47.85,47.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Ponaris|r upstairs
    .train 139 >>Train your class spells
    .target Ponaris
	.xp <8,1
--VV Priest not needed. add Priest to other travel steps
step << Mage
    .goto Eversong Woods,48.04,48.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Garridel|r upstairs
    .train 5143 >>Train your class spells
    .target Garridel
	.xp <8,1
step << Warlock
    .goto Eversong Woods,48.23,47.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Celoenus|r upstairs
    .train 980 >>Train your class spells
    .target Celoenus
	.xp <8,1
step << Warlock tbc
    .goto Eversong Woods,48.34,47.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Daestra|r upstairs
    >>|cFF0E8312Buy the|r |T133738:0|t[Grimoire of Firebolt (Rank 2)] |cFF0E8312from her|r
    .collect 16302,1,8476,1 --Grimoire of Firebolt Rank 2
    .target Daestra
	.xp <8,1
step << Undead Warrior tbc/Rogue
    .goto Eversong Woods,48.34,45.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Larenis|r
    .train 201 >>Train 1h Swords << Rogue
    .train 202 >>Train 2h Swords << Undead Warrior tbc
    .target Duelist Larenis
    .money <0.11
step << Warrior tbc/Paladin tbc/Rogue
    .goto Eversong Woods,48.49,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Geron|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T135321:0|t[Gladius] (5s 9c). You'll come back later if you don't have enough yet
    .target Geron
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
    .train 201,3 << Rogue
step << Warrior tbc/Paladin tbc/Rogue
    .goto Eversong Woods,48.49,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Geron|r
    >>|cFF0E8312Buy a|r |T135321:0|t[Gladius] |cFF0E8312from him|r
    .collect 2488,1,8476,1 --Gladius (1)
    .target Geron
    .money <0.0509
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
    .train 201,3 << Rogue
step << Warrior wotlk/Paladin wotlk
    .goto Eversong Woods,48.49,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Geron|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T133053:0|t[Wooden Mallet] (6s 66c). You'll come back later if you don't have enough yet
    .target Geron
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5
step << Warrior wotlk/Paladin wotlk
    .goto Eversong Woods,48.49,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Geron|r
    >>|cFF0E8312Buy a|r |T133053:0|t[Wooden Mallet] |cFF0E8312from him|r
    .collect 2493,1,8476,1 --Collect Wooden Mallet (1)
    .money <0.0666
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5
step << Rogue
    .goto Eversong Woods,48.49,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Geron|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T135641:0|t[Stiletto] (3s 82c). You'll come back later if you don't have enough yet
    .target Geron
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
    .train 201,1
step << Rogue
    .goto Eversong Woods,48.49,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Geron|r
    >>|cFF0E8312Buy a|r |T135641:0|t[Stiletto] |cFF0E8312from him|r
    .collect 2494,1,8476,1 --Collect Stiletto
    .money <0.0382
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
    .train 201,1
step << Warrior tbc/Paladin tbc/Rogue
    #completewith Thaelis
    +Equip the |T135321:0|t[Gladius]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Warrior wotlk/Paladin wotlk
    #completewith Caidanis
    +Equip the |T133053:0|t[Wooden Mallet]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5
step << Rogue
    #completewith Caidanis
    +Equip the |T135641:0|t[Stiletto]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step
    #completewith BuyFood1
    .goto Eversong Woods,47.79,47.35,8,0
    .goto Eversong Woods,47.86,47.76,8 >> Go inside the Inn
step
    .goto Eversong Woods,48.16,47.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Delaniel|r
    >>|cFF0E8312Buy|r |T132815:0|t[Ice Cold Milk] |cFF0E8312from her|r << Priest/Mage/Warlock/Druid
    >>|cFF0E8312Buy|r |T133968:0|t[Freshly Baked Bread] |cFF0E8312from her|r << !Priest !Mage !Warlock !Druid !Paladin
    >>|cFF0E8312Buy|r |T132815:0|t[Ice Cold Milk] |cFF0E8312and|r |T133968:0|t[Freshly Baked Bread] |cFF0E8312from her|r << Paladin
    .collect 1179,20,8491,1 << Priest/Mage/Warlock/Druid/Paladin --Ice Cold Milk (20)
    .collect 4541,20,8491,1 << !Priest !Mage !Warlock !Druid !Paladin --Freshly Baked Bread (20)
    .collect 4541,10,8491,1 << Paladin --Freshly Baked Bread (10)
    .money <0.0476 << !Priest !Mage !Warlock !Druid !Paladin
    .money <0.0714 << Paladin
    .target Innkeeper Delaniel
step
    #label BuyFood1
    .goto Eversong Woods,48.16,47.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Delaniel|r
    >>|cFF0E8312Buy|r |T132815:0|t[Ice Cold Milk] |cFF0E8312from her|r << Priest/Mage/Warlock/Druid
    >>|cFF0E8312Buy|r |T133968:0|t[Freshly Baked Bread] |cFF0E8312from her|r << !Priest !Mage !Warlock !Druid !Paladin
    >>|cFF0E8312Buy|r |T132815:0|t[Ice Cold Milk] |cFF0E8312and|r |T133968:0|t[Freshly Baked Bread] |cFF0E8312from her|r << Paladin
    .collect 1179,10,8491,1 << Priest/Mage/Warlock/Druid/Paladin --Ice Cold Milk (10)
    .collect 4541,10,8491,1 << !Priest !Mage !Warlock !Druid !Paladin --Freshly Baked Bread (10)
    .collect 4541,5,8491,1 << Paladin --Freshly Baked Bread (10)
    .money <0.0238 << !Priest !Mage !Warlock !Druid !Paladin
    .money <0.0357 << Paladin
    .target Innkeeper Delaniel
step
    #completewith next
    .goto Eversong Woods,46.68,48.07,30,0
    .goto Eversong Woods,44.63,53.13,30 >>Travel toward Caidanis
step
    #label Caidanis
    .goto Eversong Woods,44.63,53.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Caidanis|r
    .turnin 8895 >> Turn in Delivery to the North Sanctum
    .accept 9119 >> Accept Malfunction at the West Sanctum
    .target Ley-Keeper Caidanis
step
    #xprate <1.5
    .goto Eversong Woods,45.19,56.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Ralen|r
    .accept 9035 >> Accept Roadside Ambush
    .target Apprentice Ralen
step
    #xprate <1.5
    .goto Eversong Woods,44.88,61.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Meledor|r
    .turnin 9035 >> Turn in Roadside Ambush
    .accept 9062 >> Accept Soaked Pages
    .target Apprentice Meledor
step
    #xprate <1.5
    .goto Eversong Woods,44.34,62.00
    >>Loot the |cFFDB2EEFGrimoire|r underwater
    .complete 9062,1 --Collect Antheol's Elemental Grimoire (x1)
step
    #xprate <1.5
    .goto Eversong Woods,44.88,61.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Meledor|r
    .turnin 9062 >> Turn in Soaked Pages
    .accept 9064 >> Accept Taking the Fall
    .target Apprentice Meledor
step << !Warrior/Undead !Warlock/Undead !Hunter/Undead !Rogue/Undead
    #xprate >1.4999
    .goto Eversong Woods,45.19,56.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Ralen|r
    .accept 9035 >> Accept Roadside Ambush
    .target Apprentice Ralen
step << !Warrior/Undead !Warlock/Undead !Hunter/Undead !Rogue/Undead
    #xprate >1.4999
    .goto Eversong Woods,44.88,61.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Meledor|r
    .turnin 9035 >> Turn in Roadside Ambush
    .accept 9062 >> Accept Soaked Pages
    .target Apprentice Meledor
step << !Warrior/Undead !Warlock/Undead !Hunter/Undead !Rogue/Undead
    #xprate >1.4999
    .goto Eversong Woods,44.34,62.00
    >>Loot the |cFFDB2EEFGrimoire|r underwater
    .complete 9062,1 --Collect Antheol's Elemental Grimoire (x1)
step << !Warrior/Undead !Warlock/Undead !Hunter/Undead !Rogue/Undead
    #xprate >1.4999
    .goto Eversong Woods,44.88,61.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Meledor|r
    .turnin 9062 >> Turn in Soaked Pages
    .accept 9064 >> Accept Taking the Fall
    .target Apprentice Meledor
step << BloodElf Priest
    #completewith next
    >>|cFFFCDC00Cast|r |T135987:0|t[Power Word: Fortitude] on |cFF00FF25Eversong Rangers|r
    .complete 9489,1 --Eversong Ranger Blessed (6)
    .target Eversong Ranger
    .isOnQuest 9489
step
    #xprate <1.5
    .goto Eversong Woods,50.34,50.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Jaela|r
    .accept 8475 >> Accept The Dead Scar
    .target Ranger Jaela
step << BloodElf Priest
    #xprate >1.4999
    .goto Eversong Woods,50.34,50.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Jaela|r
    .accept 8475 >> Accept The Dead Scar
    .target Ranger Jaela
step << BloodElf Priest
    .goto Eversong Woods,50.19,50.88,-1
    .goto Eversong Woods,50.24,50.96,-1
    .goto Eversong Woods,50.29,51.02,-1
    .goto Eversong Woods,50.34,51.04,-1
    .goto Eversong Woods,50.41,51.00,-1
    .goto Eversong Woods,50.46,50.91,-1
    >>|cFFFCDC00Cast|r |T135987:0|t[Power Word: Fortitude] on |cFF00FF25Eversong Rangers|r
    .complete 9489,1 --Eversong Ranger Blessed (6)
    .target Eversong Ranger
    .isOnQuest 9489
step
    #xprate <1.5
    #completewith next
    >>Kill |cFFFF5722Plaguebone Pillagers|r
    .complete 8475,1 --Kill Plaguebone Pillager (x8)
    .mob Plaguebone Pillager
step << BloodElf Priest/Undead
    #xprate >1.4999
    #completewith next
    >>Kill |cFFFF5722Plaguebone Pillagers|r
    .complete 8475,1 --Kill Plaguebone Pillager (x8)
    .mob Plaguebone Pillager
step
    #xprate <1.5
    .goto Eversong Woods,55.70,54.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Antheol|r
    .turnin 9064 >> Turn in Taking the Fall
    .accept 9066 >> Accept Swift Discipline
    .target Instructor Antheol
step << BloodElf Priest/Undead
    #xprate >1.4999
    .goto Eversong Woods,55.70,54.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Antheol|r
    .turnin 9064 >> Turn in Taking the Fall
    .accept 9066 >> Accept Swift Discipline
    .target Instructor Antheol
step
    #xprate <1.5
    .goto Eversong Woods,50.82,56.49,40,0
    .goto Eversong Woods,49.72,56.96,40,0
    .goto Eversong Woods,49.48,53.13,40,0
    .goto Eversong Woods,50.95,52.96,40,0
    .goto Eversong Woods,50.82,56.49,40,0
    .goto Eversong Woods,49.72,56.96,40,0
    .goto Eversong Woods,49.48,53.13,40,0
    .goto Eversong Woods,50.95,52.96
    >>Kill |cFFFF5722Plaguebone Pillagers|r
    .complete 8475,1 --Kill Plaguebone Pillager (x8)
    .mob Plaguebone Pillager
step << BloodElf Priest/Undead
    #xprate >1.4999
    .goto Eversong Woods,50.82,56.49,40,0
    .goto Eversong Woods,49.72,56.96,40,0
    .goto Eversong Woods,49.48,53.13,40,0
    .goto Eversong Woods,50.95,52.96,40,0
    .goto Eversong Woods,50.82,56.49,40,0
    .goto Eversong Woods,49.72,56.96,40,0
    .goto Eversong Woods,49.48,53.13,40,0
    .goto Eversong Woods,50.95,52.96
    >>Kill |cFFFF5722Plaguebone Pillagers|r
    .complete 8475,1 --Kill Plaguebone Pillager (x8)
    .mob Plaguebone Pillager
step
    #xprate <1.5
    .goto Eversong Woods,50.34,50.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Jaela|r
    .turnin 8475 >> Turn in The Dead Scar
    .target Ranger Jaela
step << BloodElf Priest/Undead
    #xprate >1.4999
    .goto Eversong Woods,50.34,50.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Jaela|r
    .turnin 8475 >> Turn in The Dead Scar
    .target Ranger Jaela
step << Paladin/Priest/Mage
    #xprate <1.5
    .goto Eversong Woods,45.19,56.43
    >>Use the |T135147:0|t[Disciplinary Rod] on |cFF00FF25Ralen|r
    .complete 9066,2 --Apprentice Ralen Disciplined
    .target Apprentice Ralen
    .use 22473
step << BloodElf Priest/Undead
    #xprate >1.4999
    .goto Eversong Woods,45.19,56.43
    >>Use the |T135147:0|t[Disciplinary Rod] on |cFF00FF25Ralen|r
    .complete 9066,2 --Apprentice Ralen Disciplined
    .target Apprentice Ralen
    .use 22473
step << Paladin/Priest/Mage
    #xprate <1.5
    .goto Eversong Woods,44.88,61.03
    >>Use the |T135147:0|t[Disciplinary Rod] on |cFF00FF25Meledor|r
    .complete 9066,1 --Apprentice Meledor Disciplined
    .target Apprentice Meledor
    .use 22473
step << BloodElf Priest/Undead Mage/Undead Priest
    #xprate >1.4999
    .goto Eversong Woods,44.88,61.03
    >>Use the |T135147:0|t[Disciplinary Rod] on |cFF00FF25Meledor|r
    .complete 9066,1 --Apprentice Meledor Disciplined
    .target Apprentice Meledor
    .use 22473
step
    .goto Eversong Woods,36.70,57.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Velania|r
    .turnin 9119 >> Turn in Malfunction at the West Sanctum
    .accept 8486 >> Accept Arcane Instability
    .target Ley-Keeper Velania
step
    #completewith next
    >>Kill |cFFFF5722Manawraiths|r and |cFFFF5722Mana Stalkers|r
    .complete 8486,1 --Kill Manawraith (x5)
    .complete 8486,2 --Kill Mana Stalker (x5)
    .mob Manawraith
    .mob Mana Stalker
step
    .goto Eversong Woods,36.77,60.99,30,0
    .goto Eversong Woods,34.65,62.03,30,0
    .goto Eversong Woods,34.04,60.81,30,0
    .goto Eversong Woods,34.19,58.49,30,0
    .goto Eversong Woods,36.77,60.99,30,0
    .goto Eversong Woods,34.65,62.03,30,0
    .goto Eversong Woods,34.04,60.81,30,0
    .goto Eversong Woods,34.19,58.49
    >>Kill a |cFFFF5722Darnassian Scout|r. Loot him for his |T133464:0|t[|cFF00BCD4Incriminating Documents|r]
    >>|cFFFCDC00Use the |T133464:0|t[|cFF00BCD4Incriminating Documents|r] to start the quest|r
    .complete 9352,1 --Intruder Defeated
    .collect 20765,1,8482,1 --Incriminating Documents (1)
    .accept 8482 >> Accept Incriminating Documents
    .mob Darnassian Scout
    .use 20765
step
    .loop 40,Eversong Woods,35.57,61.41,34.41,60.64,35.02,56.58,35.82,58.36,36.20,60.28,35.57,61.41
    >>Kill |cFFFF5722Manawraiths|r and |cFFFF5722Mana Stalkers|r
    .complete 8486,1 --Kill Manawraith (x5)
    .complete 8486,2 --Kill Mana Stalker (x5)
    .mob Manawraith
    .mob Mana Stalker
step
    .goto Eversong Woods,36.70,57.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Velania|r
    .turnin 8486 >> Turn in Arcane Instability
    .turnin 9352 >> Turn in Darnassian Intrusions
    .target Ley-Keeper Velania
step
    .goto Eversong Woods,30.22,58.35,10,0
    .goto Eversong Woods,30.23,58.44,10,0
    .goto Eversong Woods,29.90,58.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Hathvelion|r
    .accept 8884 >> Accept Fish Heads, Fish Heads...
    .target Hathvelion Sungaze
step
    .goto Eversong Woods,27.47,56.54,40,0
    .goto Eversong Woods,26.45,58.14,40,0
    .goto Eversong Woods,26.35,59.41,40,0
    .goto Eversong Woods,28.20,59.52,40,0
    .goto Eversong Woods,27.96,61.31,40,0
    .goto Eversong Woods,25.70,60.50,40,0
    .goto Eversong Woods,25.36,62.88,40,0
    .goto Eversong Woods,25.61,64.29
    >>Kill |cFFFF5722Grimscale Foragers|r and |cFFFF5722Grimscale Seers|r. Loot them for their |cFF00BCD4Murloc Heads|r and |T134939:0|t[|cFF00BCD4Captain Kelisendra's Lost Rutters|r]
    >>|cFFFCDC00Use |T134939:0|t[|cFF00BCD4Captain Kelisendra's Lost Rutters|r] to start the quest|r
    .complete 8884,1 --Collect Grimscale Murloc Head (x8)
    .collect 21776,1,8887,1 --Captain Kelisendra's Lost Rutters
    .accept 8887 >> Accept Captain Kelisendra's Lost Rutters
    .mob Grimscale Forager
    .mob Grimscale Seer
    .use 21776
step << Warrior/Warlock/Hunter/Rogue
    .goto Eversong Woods,27.47,56.54,40,0
    .goto Eversong Woods,26.45,58.14,40,0
    .goto Eversong Woods,26.35,59.41,40,0
    .goto Eversong Woods,28.20,59.52,40,0
    .goto Eversong Woods,27.96,61.31,40,0
    .goto Eversong Woods,25.70,60.50,40,0
    .goto Eversong Woods,25.36,62.88,40,0
    .goto Eversong Woods,25.61,64.29
    .xp 7+3195 >> Grind to 3195+/4500xp
step
    .goto Eversong Woods,29.90,58.45,10,0
    .goto Eversong Woods,30.23,58.44,10,0
    .goto Eversong Woods,30.22,58.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Hathvelion|r
    .turnin 8884 >> Turn in Fish Heads, Fish Heads...
    .accept 8885 >> Accept The Ring of Mmmrrrggglll
    .target Hathvelion Sungaze
step << Paladin/Priest/Mage
    #completewith next
    .goto Eversong Woods,27.94,59.41,20,0
    .goto Eversong Woods,28.01,61.01,20,0
    .goto Eversong Woods,26.25,60.46
    .deathskip >> Die and respawn at the |cFF00FF25Spirit Healer|r
    .target Spirit Healer
step << Warrior/Warlock/Hunter/Rogue
    .goto Eversong Woods,35.50,55.70,30 >> Run toward just north of the West Sanctum
    .isOnQuest 8885
step << Warrior/Warlock/Hunter/Rogue
    .goto Eversong Woods,35.50,55.70
    .deathskip >> Die and respawn at the |cFF00FF25Spirit Healer|r (make sure your subzone is Eversong Woods and NOT West Sanctum)
    .target Spirit Healer
    .isOnQuest 8885
step << Warrior/Warlock/Hunter/Rogue
    #completewith next
    .goto Eversong Woods,46.70,49.09,20,0
    .goto Eversong Woods,46.69,48.02,20 >> Travel toward Aeldon
step << Warrior/Warlock/Hunter/Rogue
    .goto Eversong Woods,48.17,46.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Aeldon|r
    .turnin 8482 >> Turn in Incriminating Documents
    .accept 8483 >> Accept The Dwarven Spy
    .target Aeldon Sunbrand
step << Undead Warrior tbc/Rogue
    .goto Eversong Woods,48.34,45.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Larenis|r
    .train 201 >>Train 1h Swords << Rogue
    .train 202 >>Train 2h Swords << Undead Warrior tbc
    .target Duelist Larenis
step << Rogue
    .goto Eversong Woods,48.58,46.29,8,0
    .goto Eversong Woods,48.50,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Tannaria|r upstairs
    .train 6760 >>Train your class spells
    .target Tannaria
step << Hunter
    .goto Eversong Woods,48.27,46.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Hannovia|r
    .train 5116 >>Train your class spells
    .target Hannovia
step << Warlock
    #completewith next
    .goto Eversong Woods,47.79,47.35,8,0
    .goto Eversong Woods,47.86,47.76,8 >> Go inside the Inn
step << Warlock
    #completewith next
    .goto Eversong Woods,48.27,47.05,8,0
    .goto Eversong Woods,48.06,47.11,8 >> Go upstairs
step << Warlock
    .goto Eversong Woods,48.23,47.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Celoenus|r upstairs
    .train 980 >>Train your class spells
    .target Celoenus
step << Warlock tbc
    .goto Eversong Woods,48.34,47.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Daestra|r upstairs
    >>|cFF0E8312Buy the|r |T133738:0|t[Grimoire of Firebolt (Rank 2)] |cFF0E8312from her|r
    .collect 16302,1,8475,1 --Grimoire of Firebolt Rank 2
    .target Daestra
step << Warrior tbc/Rogue
    .goto Eversong Woods,48.49,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Geron|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T135321:0|t[Gladius] (5s 9c). You'll come back later if you don't have enough yet
    .target Geron
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Warrior tbc/Rogue
    .goto Eversong Woods,48.49,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Geron|r
    >>|cFF0E8312Buy a|r |T135321:0|t[Gladius] |cFF0E8312from him|r
    .collect 2488,1,8476,1 --Gladius (1)
    .target Geron
    .money <0.0509
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Warrior wotlk
    .goto Eversong Woods,48.49,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Geron|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T133053:0|t[Wooden Mallet] (6s 66c). You'll come back later if you don't have enough yet
    .target Geron
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5
step << Warrior wotlk
    .goto Eversong Woods,48.49,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Geron|r
    >>|cFF0E8312Buy a|r |T133053:0|t[Wooden Mallet] |cFF0E8312from him|r
    .collect 2493,1,8476,1 --Collect Wooden Mallet (1)
    .money <0.0666
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5
step << Rogue
    .goto Eversong Woods,48.49,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Geron|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T135641:0|t[Stiletto] (3s 82c). You'll come back later if you don't have enough yet
    .target Geron
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
    .train 201,1
step << Rogue
    .goto Eversong Woods,48.49,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Geron|r
    >>|cFF0E8312Buy a|r |T135641:0|t[Stiletto] |cFF0E8312from him|r
    .collect 2494,1,8476,1 --Collect Stiletto
    .money <0.0382
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
    .train 201,1
step << Warrior tbc/Rogue
    #completewith Caidanis
    +Equip the |T135321:0|t[Gladius]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Warrior wotlk
    #completewith Caidanis
    +Equip the |T133053:0|t[Wooden Mallet]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5
step << Rogue
    #completewith Caidanis
    +Equip the |T135641:0|t[Stiletto]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Warrior/Warlock/Hunter/Rogue
    .goto Eversong Woods,44.57,53.30
    .gossipoption 91301 >>Talk to |cFF00FF25Anvilward|r
    .timer 28,Prospector Anvilward RP
    .target Prospector Anvilward
    .skipgossip 15420,1
    .isOnQuest 8483
step << Warrior/Warlock/Hunter/Rogue
    .goto Eversong Woods,44.57,53.11,10,0
    .goto Eversong Woods,44.01,52.83,10,0
    .goto Eversong Woods,43.91,53.12,10,0
    .goto Eversong Woods,44.07,53.33
    >>|cFFFCDC00Wait out the RP|r
    >>Kill |cFFFF5722Prospector Anvilward|r. Loot him for his |cFF00BCD4Head|r
    .complete 8483,1 --Collect Prospector Anvilward's Head (x1)
    .mob Prospector Anvilward
step << Warrior/Warlock/Hunter/Rogue
    #xprate <1.5
    .goto Eversong Woods,45.19,56.43
    >>Use the |T135147:0|t[Disciplinary Rod] on |cFF00FF25Ralen|r
    .complete 9066,2 --Apprentice Ralen Disciplined
    .target Apprentice Ralen
    .use 22473
step << Warrior/Warlock/Hunter/Rogue
    #xprate <1.5
    .goto Eversong Woods,44.88,61.03
    >>Use the |T135147:0|t[Disciplinary Rod] on |cFF00FF25Meledor|r
    .complete 9066,1 --Apprentice Meledor Disciplined
    .target Apprentice Meledor
    .use 22473
step << !Undead Warrior/!Undead Warlock/!Undead Hunter/!Undead Rogue
    #xprate >1.4999
    .goto Eversong Woods,45.19,56.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Ralen|r
    .accept 9035 >> Accept Roadside Ambush
    .target Apprentice Ralen
step << !Undead Warrior/!Undead Warlock/!Undead Hunter/!Undead Rogue
    #xprate >1.4999
    .goto Eversong Woods,44.88,61.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Meledor|r
    .turnin 9035 >> Turn in Roadside Ambush
    .accept 9062 >> Accept Soaked Pages
    .target Apprentice Meledor
step << !Undead Warrior/!Undead Warlock/!Undead Hunter/!Undead Rogue
    #xprate >1.4999
    .goto Eversong Woods,44.34,62.00
    >>Loot the |cFFDB2EEFGrimoire underwater|r
    .complete 9062,1 --Collect Antheol's Elemental Grimoire (x1)
step << !Undead Warrior/!Undead Warlock/!Undead Hunter/!Undead Rogue
    #xprate >1.4999
    .goto Eversong Woods,44.88,61.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Meledor|r
    .turnin 9062 >> Turn in Soaked Pages
    .accept 9064 >> Accept Taking the Fall
    .target Apprentice Meledor
step << Undead !Mage !Priest
    #xprate >1.4999
    .goto Eversong Woods,44.88,61.03
    >>Use the |T135147:0|t[Disciplinary Rod] on |cFF00FF25Meledor|r
    .complete 9066,1 --Apprentice Meledor Disciplined
    .target Apprentice Meledor
    .use 22473
step
    #completewith next
    .goto Eversong Woods,44.04,70.35,0
    >>|cFF0E8312Buy|r |T133634:0|t[Small Brown Pouches] |cFF0E8312from|r |cFF00FF25Halis|r |cFF0E8312if you need bags|r
    .vendor >> Vendor trash
    .target Halis Dawnstrider
--VV Bag check command
step
    #xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Velan|r and |cFF00FF25Landra|r
    .accept 8491 >> Accept Pelt Collection
    .goto Eversong Woods,44.72,69.63
    .accept 9395 >> Accept Saltheril's Haven
    .accept 9254 >> Accept The Wayward Apprentice
    .goto Eversong Woods,44.03,70.76
    .target Velan Brightoak
    .target Magistrix Landra Dawnstrider
--VV     .accept 9395 >> Accept Saltheril's Haven << !BloodElf/!Hunter
step
    #xprate >1.4999
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Velan|r and |cFF00FF25Landra|r
    .accept 8491 >> Accept Pelt Collection
    .goto Eversong Woods,44.72,69.63
    .accept 9395 >> Accept Saltheril's Haven
    .accept 9254 >> Accept The Wayward Apprentice
    .goto Eversong Woods,44.03,70.76
    .target Velan Brightoak
    .target Magistrix Landra Dawnstrider
step
    #completewith next
    .goto Eversong Woods,43.61,70.66,10 >>Go upstairs
step
    .goto Eversong Woods,43.34,70.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Degolien|r
    .accept 8892 >> Accept Situation at Sunsail Anchorage
    .target Ranger Degolien
step
    #completewith next
    .goto Eversong Woods,43.67,71.31,8 >>Go downstairs
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Marniel|r and |cFF00FF25Ardeyn|r
    .accept 9358 >> Accept Ranger Sareyn
    .goto Eversong Woods,43.67,71.31
    .accept 9258 >>Accept The Scorched Grove
    .goto Eversong Woods,43.58,71.20
    .target Marniel Amberlight
    .target Ardeyn Riverwind
--VV .isOnQuest 8885 << BloodElf Hunter
--VV     .home >> Set your Hearthstone to Fairbreeze Village << BloodElf Hunter
step
    #xprate <1.5
    #completewith Sunsail
    .goto Eversong Woods,42.28,72.62,40,0
    .goto Eversong Woods,40.90,72.87,40,0
    .goto Eversong Woods,39.59,73.65,40,0
    >>Kill |cFFFF5722Springpaw Stalkers|r. Loot them for their |cFF00BCD4Pelts|r
    .complete 8491,1 --Collect Springpaw Pelt (x6)
    .mob Springpaw Stalker
--VV !BloodElf/!Hunter on coords
step
    #xprate >1.4999
    #completewith Sunsail
    .goto Eversong Woods,42.28,72.62,40,0
    .goto Eversong Woods,40.90,72.87,40,0
    .goto Eversong Woods,39.59,73.65,40,0
    >>Kill |cFFFF5722Springpaw Stalkers|r. Loot them for their |cFF00BCD4Pelts|r
    .complete 8491,1 --Collect Springpaw Pelt (x6)
    .mob Springpaw Stalker
step
    #xprate <1.5
    .goto Eversong Woods,38.14,73.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Saltheril|r
    .turnin 9395 >>Turn in Saltheril's Haven
    .accept 9067 >>Accept The Party Never Ends
    .target Lord Saltheril
    --VV !BloodElf/!Hunter (Need to test BE route)
step
    #xprate >1.4999
    .goto Eversong Woods,38.14,73.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Saltheril|r
    .turnin 9395 >>Turn in Saltheril's Haven
    .accept 9067 >>Accept The Party Never Ends
    .target Lord Saltheril
step
    #label Sunsail
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Kelisendra|r and |cFF00FF25Velendris|r
    .turnin 8887 >> Turn in Captain Kelisendra's Lost Rutters
    .accept 8886 >> Accept Grimscale Pirates!
    .goto Eversong Woods,36.36,66.62
    .accept 8480 >> Accept Lost Armaments
    .goto Eversong Woods,36.36,66.78
    .target Captain Kelisendra
    .target Velendris Whitemorn
step
    #completewith Aldaron
    >>Kill |cFFFF5722Wretched Thugs|r and |cFFFF5722Wretched Hooligans|r
    .complete 8892,1 --Kill Wretched Thug (x5)
    .complete 8892,2 --Kill Wretched Hooligan (x5)
    .mob Wretched Thug
    .mob Wretched Hooligan
step
    .goto Eversong Woods,34.66,68.00,25,0
    .goto Eversong Woods,34.11,69.20,25,0
    .goto Eversong Woods,33.01,71.10,25,0
    .goto Eversong Woods,32.39,69.80,25,0
    .goto Eversong Woods,32.76,68.51,10,0
    .goto Eversong Woods,32.21,69.07,10,0
    .goto Eversong Woods,32.40,70.26,10,0
    .goto Eversong Woods,32.77,70.15,10,0
    .goto Eversong Woods,32.74,68.77,10,0
    .goto Eversong Woods,31.71,68.95,25,0
    .goto Eversong Woods,30.54,69.24,25,0
    .goto Eversong Woods,31.40,70.90,25,0
    .goto Eversong Woods,34.66,68.00,25,0
    .goto Eversong Woods,34.11,69.20,25,0
    .goto Eversong Woods,33.01,71.10,25,0
    .goto Eversong Woods,32.39,69.80,25,0
    .goto Eversong Woods,32.76,68.51
    >>Loot the |cFFDB2EEFArmament Boxes|r on the ground near the |cFFFF5722Wretched|r and inside the building
    .complete 8480,1 --Collect Sin'dorei Armaments (x8)
step
    .goto Eversong Woods,36.36,66.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Velendris|r
    .turnin 8480 >>Turn in Lost Armaments
    .accept 9076 >>Accept Wretched Ringleader
    .target Velendris Whitemorn
step
    #completewith next
    .goto Eversong Woods,32.80,69.49,40,0
    .goto Eversong Woods,32.77,68.65,10,0
    .goto Eversong Woods,32.24,68.98,10,0
    .goto Eversong Woods,32.30,70.03,10,0
    .goto Eversong Woods,32.78,70.17,10,0
    .goto Eversong Woods,32.82,68.80,10,0
    .goto Eversong Woods,33.19,69.21,10 >>Climb to the top of the building
step
    #label Aldaron
    .goto Eversong Woods,32.80,69.40
    >>Kill |cFFFF5722Aldaron the Reckless|r at the top. Loot him for |cFF00BCD4Aldaron's Head|r
    .complete 9076,1 --Collect Aldaron's Head (x1)
    .mob Aldaron the Reckless
step
    .goto Eversong Woods,34.66,68.00,30,0
    .goto Eversong Woods,34.11,69.20,30,0
    .goto Eversong Woods,33.01,71.10,30,0
    .goto Eversong Woods,32.39,69.80,30,0
    .goto Eversong Woods,32.76,68.51,10,0
    .goto Eversong Woods,32.21,69.07,10,0
    .goto Eversong Woods,32.40,70.26,10,0
    .goto Eversong Woods,32.77,70.15,10,0
    .goto Eversong Woods,32.74,68.77,10,0
    .goto Eversong Woods,31.71,68.95,30,0
    .goto Eversong Woods,30.54,69.24,30,0
    .goto Eversong Woods,31.40,70.90,30,0
    .goto Eversong Woods,34.66,68.00,30,0
    .goto Eversong Woods,34.11,69.20,30,0
    .goto Eversong Woods,33.01,71.10,30,0
    .goto Eversong Woods,32.39,69.80,30,0
    .goto Eversong Woods,32.76,68.51
    >>Kill |cFFFF5722Wretched Thugs|r and |cFFFF5722Wretched Hooligans|r
    .complete 8892,1 --Kill Wretched Thug (x5)
    .complete 8892,2 --Kill Wretched Hooligan (x5)
    .mob Wretched Thug
    .mob Wretched Hooligan
step
    #completewith next
    .goto Eversong Woods,29.53,72.32,40,0
    .goto Eversong Woods,27.73,71.83,40,0
    .goto Eversong Woods,26.53,74.16,40,0
    >>Kill |cFFFF5722Springpaw Stalkers|r. Loot them for their |cFF00BCD4Pelts|r
    .complete 8491,1 --Collect Springpaw Pelt (x6)
    .mob Springpaw Stalker
step
    #completewith next
    .goto Eversong Woods,24.32,74.07,40,0
    >>Kill |cFFFF5722Grimscale Murlocs|r and |cFFFF5722Grimscale Oracles|r. Loot them for their |cFF00BCD4Cargo|r
    >>Loot the |cFFDB2EEFCargo Barrels|r on the ground
    >>|cFFFCDC00Use|r |T136222:0|t[Arcane Torrent] |cFFFCDC00to interrupt the|r |cFFFF5722Grimscale Oracles|r' |T135907:0|t[Flash Heal] << BloodElf
    .complete 8886,1 --Collect Captain Kelisendra's Cargo (x6)
    .mob Grimscale Murloc
    .mob Grimscale Oracle
step
    .goto Eversong Woods,24.36,72.66,40,0
    .goto Eversong Woods,25.09,71.12,40,0
    .goto Eversong Woods,24.32,69.66,40,0
    .goto Eversong Woods,24.66,68.47,40,0
    .goto Eversong Woods,25.68,68.93,40,0
    .goto Eversong Woods,25.81,68.16,40,0
    .goto Eversong Woods,24.89,66.85,40,0
    .goto Eversong Woods,25.24,65.65,40,0
    .goto Eversong Woods,24.89,66.85,40,0
    .goto Eversong Woods,25.81,68.16,40,0
    .goto Eversong Woods,25.68,68.93,40,0
    .goto Eversong Woods,24.66,68.47,40,0
    .goto Eversong Woods,24.32,69.66,40,0
    .goto Eversong Woods,25.09,71.12,40,0
    .goto Eversong Woods,24.36,72.66
    >>Kill |cFFFF5722Mmmrrrggglll|r. Loot him for the |cFF00BCD4Ring of Mmmrrrggglll|r
    >>|cFFFCDC00He patrols around slightly|r
    >>|cFFFCDC00Use|r |T136222:0|t[Arcane Torrent] |cFFFCDC00to interrupt|r |cFFFF5722Mmmrrrggglll|r's |T136052:0|t[Healing Wave] << BloodElf
    .complete 8885,1 --Collect Ring of Mmmrrrggglll (x1)
    .unitscan Mmmrrrggglll
step
    .goto Eversong Woods,25.24,65.65,50,0
    .goto Eversong Woods,24.89,66.85,50,0
    .goto Eversong Woods,25.81,68.16,50,0
    .goto Eversong Woods,25.68,68.93,50,0
    .goto Eversong Woods,24.66,68.47,50,0
    .goto Eversong Woods,24.32,69.66,50,0
    .goto Eversong Woods,25.09,71.12,50,0
    .goto Eversong Woods,24.36,72.66
    >>Kill |cFFFF5722Grimscale Murlocs|r and |cFFFF5722Grimscale Oracles|r. Loot them for their |cFF00BCD4Cargo|r
    >>Loot the |cFFDB2EEFCargo Barrels|r on the ground
    >>|cFFFCDC00Use|r |T136222:0|t[Arcane Torrent] |cFFFCDC00to interrupt the|r |cFFFF5722Grimscale Oracles|r' |T135907:0|t[Flash Heal] << BloodElf
    .complete 8886,1 --Collect Captain Kelisendra's Cargo (x6)
    .mob Grimscale Murloc
    .mob Grimscale Oracle
step
    .goto Eversong Woods,29.90,58.45,10,0
    .goto Eversong Woods,30.23,58.44,10,0
    .goto Eversong Woods,30.22,58.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Hathvelion|r
    .turnin 8885 >> Turn in The Ring of Mmmrrrggglll
    .target Hathvelion Sungaze
step
    #completewith next
    >>Kill |cFFFF5722Springpaw Stalkers|r. Loot them for their |cFF00BCD4Pelts|r
    .complete 8491,1 --Collect Springpaw Pelt (x6)
    .mob Springpaw Stalker
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Kelisendra|r and |cFF00FF25Velendris|r
    .turnin 8886 >> Turn in Grimscale Pirates!
    .goto Eversong Woods,36.36,66.62
    .turnin 9076 >> Turn in Wretched Ringleader
    .goto Eversong Woods,36.36,66.78
    .target Captain Kelisendra
    .target Velendris Whitemorn
step << skip
    #xprate <1.5
    #completewith next
    .goto Eversong Woods,35.94,72.10,40,0
    .goto Eversong Woods,34.61,74.85,40,0
    >>Kill |cFFFF5722Springpaw Stalkers|r. Loot them for their |cFF00BCD4Pelts|r
    .complete 8491,1 --Collect Springpaw Pelt (x6)
    .target Springpaw Stalker
--VV BloodElf Hunter
step << skip
    #xprate <1.5
    .goto Eversong Woods,34.06,80.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Larianna|r
    .turnin 9258 >> Turn in The Scorched Grove
    .accept 8473 >> Accept A Somber Task
    .target Larianna Riverwind
    --VV BloodElf Hunter
step << skip
    #completewith next
    #xprate <1.5
    >>Kill |cFFFF5722Withered Green Keepers|r
    >>|cFFFCDC00Be careful as cast|r |T132282:0|t[Strike], |cFFFCDC00dealing double damage instantly|r
    .complete 8473,1 --Kill Withered Green Keeper (x10)
    .mob Withered Green Keeper
    --VV BloodElf Hunter
step << skip
    #xprate <1.5
    .goto Eversong Woods,35.10,84.05,10,0
    .goto Eversong Woods,34.91,84.34
    .use 8474 >>Kill |cFFFF5722Old Whitebark|r. Loot him for |T133280:0|t[|cFF00BCD4Old Whitebark's Pendant|r]. |cFFFCDC00Use it to start the quest|r
    >>|cFFFF5722Old Whitebark|r |cFFFCDC00has a 7 minute 30 second respawn time|r
    .collect 23228,1,8474,1 --Collect Old Whitebark's Pendant (x1)
    .accept 8474 >> Accept Old Whitebark's Pendant
    .mob Old Whitebark
    --VV BloodElf Hunter
step << skip
    #xprate <1.5
    .loop 40,Eversong Woods,36.07,83.10,36.21,85.47,33.24,87.69,32.05,87.25,32.63,83.57,33.46,81.99,34.47,83.08,36.07,83.10
    >>Kill |cFFFF5722Withered Green Keepers|r
    >>|cFFFCDC00Be careful as cast|r |T132282:0|t[Strike], |cFFFCDC00dealing double damage instantly|r
    .complete 8473,1 --Kill Withered Green Keeper (x10)
    .mob Withered Green Keeper
    --VV BloodElf Hunter
step << skip
    #xprate <1.5
    .goto Eversong Woods,34.06,80.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Larianna|r
    .turnin 8473 >> Turn in A Somber Task
    .turnin 8474 >> Turn in Old Whitebark's Pendant
    .accept 10166 >> Accept Whitebark's Memory
    .target Larianna Riverwind
    --VV BloodElf Hunter
step << skip
    #xprate <1.5
    #completewith next
    .goto Eversong Woods,37.73,86.30
    .cast 33980 >> Use the |T133280:0|t[|cFF00BCD4Pendant|r] to summon |cFFFF5722Whitebark's Spirit|r
    .use 28209
    .isOnQuest 10166
    --VV BloodElf Hunter
step << skip
    #xprate <1.5
    .goto Eversong Woods,37.73,86.30
    >>Defeat |cFFFF5722Whitebark's Spirit|r
    >>Talk to |cFF00FF25Whitebark's Spirit|r after defeating him
    .turnin 10166 >> Turn in Whitebark's Memory
    .target Whitebark's Spirit
    .use 28209
    --VV BloodElf Hunter
step << skip
    #xprate <1.5
    #completewith Sareyn
    .loop 40,Eversong Woods,36.07,83.10,36.21,85.47,33.24,87.69,32.05,87.25,32.63,83.57,33.46,81.99,34.47,83.08,36.07,83.10
    .deathskip >> Die and respawn at the |cFF00FF25Spirit Healer|r
    .target Spirit Healer
    --VV BloodElf Hunter
step << skip
    #xprate >1.4999
    #completewith Sareyn
    .goto Eversong Woods,34.71,68.09,20,0
    .goto Eversong Woods,32.79,70.56
    .deathskip >> Die and respawn at the |cFF00FF25Spirit Healer|r
    .target Spirit Healer
    --VV BloodElf Hunter
step
    #completewith Sareyn
    .goto Eversong Woods,34.71,68.09,20,0
    .goto Eversong Woods,32.79,70.56
    .deathskip >> Die and respawn at the |cFF00FF25Spirit Healer|r
    .target Spirit Healer
step << skip
    .goto Eversong Woods,37.84,66.61,40,0
    .goto Eversong Woods,37.45,65.60,40,0
    .goto Eversong Woods,39.71,63.80,40,0
    .goto Eversong Woods,40.64,66.89,40,0
    .goto Eversong Woods,41.94,66.65,40,0
    .goto Eversong Woods,42.83,66.14,40,0
    .goto Eversong Woods,43.38,64.67,40,0
    .goto Eversong Woods,43.86,65.58,40,0
    .goto Eversong Woods,45.33,65.92,40,0
    .goto Eversong Woods,45.44,67.76,40,0
    .goto Eversong Woods,46.07,67.01,40,0
    .goto Eversong Woods,46.69,67.31,40,0
    .goto Eversong Woods,47.12,68.81,40,0
    .goto Eversong Woods,37.84,66.61
    >>Kill |cFFFF5722Springpaw Stalkers|r. Loot them for their |cFF00BCD4Pelts|r
    .complete 8491,1 --Collect Springpaw Pelt (x6)
    .mob Springpaw Stalker
--VV !BloodElf/!Hunter
step << skip
    #xprate >1.4999
    .goto Eversong Woods,37.84,66.61,40,0
    .goto Eversong Woods,37.45,65.60,40,0
    .goto Eversong Woods,39.71,63.80,40,0
    .goto Eversong Woods,40.64,66.89,40,0
    .goto Eversong Woods,41.94,66.65,40,0
    .goto Eversong Woods,42.83,66.14,40,0
    .goto Eversong Woods,43.38,64.67,40,0
    .goto Eversong Woods,43.86,65.58,40,0
    .goto Eversong Woods,45.33,65.92,40,0
    .goto Eversong Woods,45.44,67.76,40,0
    .goto Eversong Woods,46.07,67.01,40,0
    .goto Eversong Woods,46.69,67.31,40,0
    .goto Eversong Woods,47.12,68.81,40,0
    .goto Eversong Woods,37.84,66.61
    >>Kill |cFFFF5722Springpaw Stalkers|r. Loot them for their |cFF00BCD4Pelts|r
    .complete 8491,1 --Collect Springpaw Pelt (x6)
    .mob Springpaw Stalker
--VV BloodElf Hunter
step << Hunter
    .goto Eversong Woods,44.04,70.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Halis|r
    >>|cFF0E8312Buy|r |T132382:0|t[Rough Arrows] |cFF0E8312and|r |T132382:0|t[Sharp Arrows] |cFF0E8312from him|r. |cFF0E8312Buy|r |T133634:0|t[Small Brown Pouches] |cFF0E8312from her|r |cFF0E8312if you need bags|r
    .collect 2512,200,9252,1 << Hunter --Rough Arrow (200)
    .collect 2515,1000,9252,1 << Hunter --Sharp Arrow (1000)
    .target Halis Dawnstrider
    .itemcount 2512,<200
	.xp >10,1
--VV Bag check command
step << Hunter
    .goto Eversong Woods,44.04,70.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Halis|r
    >>|cFF0E8312Buy|r |T132382:0|t[Sharp Arrows] |cFF0E8312from her|r. |cFF0E8312Buy|r |T133634:0|t[Small Brown Pouches] |cFF0E8312from him|r |cFF0E8312if you need bags|r
    .collect 2515,1000,9252,1 << Hunter --Sharp Arrow (1000)
    .target Halis Dawnstrider
--VV Bag check command
step << !Hunter
    #completewith Sareyn
    .goto Eversong Woods,44.04,70.35,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Halis|r
    >>|cFF0E8312Buy|r |T133634:0|t[Small Brown Pouches] |cFF0E8312from him if you need bags|r
    .vendor >> Vendor Trash
    .target Halis Dawnstrider
--VV Bag check command
--VV !BloodElf/!Hunter
step
    #xprate >1.4999
    .goto Eversong Woods,44.03,70.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Landra|r
    .accept 9144 >>Accept Missing in the Ghostlands
    .target Magistrix Landra Dawnstrider
    .xp <10,1
step
    #completewith next
    .goto Eversong Woods,43.61,70.66,10 >>Go upstairs
    --VV !Hunter
step
    .goto Eversong Woods,43.34,70.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Degolien|r
    .turnin 8892 >>Turn in Situation at Sunsail Anchorage
    .accept 9359 >>Accept Farstrider Retreat
    .target Ranger Degolien
    --VV !Hunter
step
    #completewith next
    .goto Eversong Woods,43.70,71.56,8 >>Go downstairs
    --VV !Hunter
step
    .goto Eversong Woods,43.70,71.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Sathiel|r
    .vendor 16261 >> Vendor and Repair
    .target Sathiel
    .isOnQuest 9358
    .money >1.00
    --VV !Hunter
step
    .goto Eversong Woods,44.72,69.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Velan|r
    .turnin 8491 >> Turn in Pelt Collection
    .target Velan Brightoak
    .isQuestComplete 8491
--VV !Hunter
step
    #label Sareyn
    .goto Eversong Woods,46.93,71.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Sareyn|r
    .turnin 9358 >> Turn in Ranger Sareyn
    .accept 9252 >> Accept Defending Fairbreeze Village
    .target Ranger Sareyn
step
    #completewith Notes
    >>Kill |cFFFF5722Rotlimb Marauders|r
    >>|cFFFCDC00Be careful as|r |cFFFF5722Rotlimb Marauders|r |cFFFCDC00cast|r |T136128:0|t[Disease Touch] (|cFFFCDC0015 Damage Instant Cast Spell|r)
    .complete 9252,1 --Kill Rotlimb Marauder (x4)
    .mob Rotlimb Marauder
step
    .goto Eversong Woods,50.89,80.74,40,0
    .goto Eversong Woods,50.83,78.68,40,0
    .goto Eversong Woods,50.42,77.39,40,0
    .goto Eversong Woods,51.07,76.32,40,0
    .goto Eversong Woods,50.89,80.74,40,0
    .goto Eversong Woods,50.83,78.68,40,0
    .goto Eversong Woods,50.42,77.39,40,0
    .goto Eversong Woods,51.07,76.32
    >>Kill |cFFFF5722Darkwraiths|r
    >>|cFFFCDC00Be careful as|r |cFFFF5722Darkwraiths|r |cFFFCDC00cast|r |T136224:0|t[Enrage] |cFFFCDC00(increased damage and attack speed) at low health|r
    .complete 9252,2 --Kill Darkwraith (x4)
    .mob Darkwraith
step
    .goto Eversong Woods,54.28,70.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Mirveda|r
    .turnin 9254 >> Turn in The Wayward Apprentice
    .accept 8487 >> Accept Corrupted Soil
    .target Apprentice Mirveda
step
    .goto Eversong Woods,54.13,71.21,40,0
    .goto Eversong Woods,50.79,72.17,40,0
    .goto Eversong Woods,50.87,71.40,40,0
    .goto Eversong Woods,51.21,69.89,40,0
    .goto Eversong Woods,51.47,69.09,40,0
    .goto Eversong Woods,52.60,68.47,40,0
    .goto Eversong Woods,53.24,69.28,40,0
    .goto Eversong Woods,53.88,70.03,40,0
    .goto Eversong Woods,54.13,71.21,40,0
    .goto Eversong Woods,50.79,72.17,40,0
    .goto Eversong Woods,50.87,71.40,40,0
    .goto Eversong Woods,51.21,69.89,40,0
    .goto Eversong Woods,51.47,69.09,40,0
    .goto Eversong Woods,52.60,68.47,40,0
    .goto Eversong Woods,53.24,69.28,40,0
    .goto Eversong Woods,53.88,70.03
    >>Loot |cFFDB2EEFTainted Soil Piles|r on the ground
    .complete 8487,1 --Collect Tainted Soil Sample (x8)
step
    .goto Eversong Woods,54.28,70.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Mirveda|r
    >>|cFFFCDC00Wait out the RP|r
    .turnin 8487 >> Turn in Corrupted Soil
    .timer 9,Corrupted Soil RP
    .accept 8488 >> Accept Unexpected Results
    .target Apprentice Mirveda
step
    .goto Eversong Woods,53.66,69.74,20,0
    .goto Eversong Woods,54.28,70.97
    >>Kill |cFFFF5722Gharsul the Remorseless|r and the |cFFFF5722Angershades|r to protect |cFF00FF25Mirveda|r
    .complete 8488,1 --Protect Apprentice Mirveda
    .mob Gharsul the Remorseless
    .mob Angershade
step
    #label Notes
    .goto Eversong Woods,54.28,70.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Mirveda|r
    .turnin 8488 >> Turn in Unexpected Results
    .accept 9255 >> Accept Research Notes
    .target Apprentice Mirveda
step
    .goto Eversong Woods,54.13,71.21,40,0
    .goto Eversong Woods,50.79,72.17,40,0
    .goto Eversong Woods,50.87,71.40,40,0
    .goto Eversong Woods,51.21,69.89,40,0
    .goto Eversong Woods,51.47,69.09,40,0
    .goto Eversong Woods,52.60,68.47,40,0
    .goto Eversong Woods,53.24,69.28,40,0
    .goto Eversong Woods,53.88,70.03,40,0
    .goto Eversong Woods,54.13,71.21,40,0
    .goto Eversong Woods,50.79,72.17,40,0
    .goto Eversong Woods,50.87,71.40,40,0
    .goto Eversong Woods,51.21,69.89,40,0
    .goto Eversong Woods,51.47,69.09,40,0
    .goto Eversong Woods,52.60,68.47,40,0
    .goto Eversong Woods,53.24,69.28,40,0
    .goto Eversong Woods,53.88,70.03
    >>Kill |cFFFF5722Rotlimb Marauders|r
    >>|cFFFCDC00Be careful as|r |cFFFF5722Rotlimb Marauders|r |cFFFCDC00cast|r |T136128:0|t[Disease Touch] (|cFFFCDC0015 Damage Instant Cast Spell|r)
    .complete 9252,1 --Kill Rotlimb Marauder (x4)
    .mob Rotlimb Marauder
step << Paladin/Priest/Mage/Hunter
    .goto Eversong Woods,54.13,71.21,40,0
    .goto Eversong Woods,50.79,72.17,40,0
    .goto Eversong Woods,50.87,71.40,40,0
    .goto Eversong Woods,51.21,69.89,40,0
    .goto Eversong Woods,51.47,69.09,40,0
    .goto Eversong Woods,52.60,68.47,40,0
    .goto Eversong Woods,53.24,69.28,40,0
    .goto Eversong Woods,53.88,70.03,40,0
    .goto Eversong Woods,54.13,71.21,40,0
    .goto Eversong Woods,50.79,72.17,40,0
    .goto Eversong Woods,50.87,71.40,40,0
    .goto Eversong Woods,51.21,69.89,40,0
    .goto Eversong Woods,51.47,69.09,40,0
    .goto Eversong Woods,52.60,68.47,40,0
    .goto Eversong Woods,53.24,69.28,40,0
    .goto Eversong Woods,53.88,70.03
    .xp 9+5875 >> Grind to 5875+/6500xp
step << Warrior/Warlock/Rogue !Undead/!Warlock !Paladin !Priest !Mage
    .goto Eversong Woods,54.13,71.21,40,0
    .goto Eversong Woods,50.79,72.17,40,0
    .goto Eversong Woods,50.87,71.40,40,0
    .goto Eversong Woods,51.21,69.89,40,0
    .goto Eversong Woods,51.47,69.09,40,0
    .goto Eversong Woods,52.60,68.47,40,0
    .goto Eversong Woods,53.24,69.28,40,0
    .goto Eversong Woods,53.88,70.03,40,0
    .goto Eversong Woods,54.13,71.21,40,0
    .goto Eversong Woods,50.79,72.17,40,0
    .goto Eversong Woods,50.87,71.40,40,0
    .goto Eversong Woods,51.21,69.89,40,0
    .goto Eversong Woods,51.47,69.09,40,0
    .goto Eversong Woods,52.60,68.47,40,0
    .goto Eversong Woods,53.24,69.28,40,0
    .goto Eversong Woods,53.88,70.03
    .xp 9+5700 >> Grind to 5700+/6500xp
step << Undead Warlock
    .goto Eversong Woods,54.13,71.21,40,0
    .goto Eversong Woods,50.79,72.17,40,0
    .goto Eversong Woods,50.87,71.40,40,0
    .goto Eversong Woods,51.21,69.89,40,0
    .goto Eversong Woods,51.47,69.09,40,0
    .goto Eversong Woods,52.60,68.47,40,0
    .goto Eversong Woods,53.24,69.28,40,0
    .goto Eversong Woods,53.88,70.03,40,0
    .goto Eversong Woods,54.13,71.21,40,0
    .goto Eversong Woods,50.79,72.17,40,0
    .goto Eversong Woods,50.87,71.40,40,0
    .goto Eversong Woods,51.21,69.89,40,0
    .goto Eversong Woods,51.47,69.09,40,0
    .goto Eversong Woods,52.60,68.47,40,0
    .goto Eversong Woods,53.24,69.28,40,0
    .goto Eversong Woods,53.88,70.03
    .xp 9+5950 >> Grind to 5950+/6500xp
step << !Warlock/!Undead
    #completewith ExitFalcon
    .hs >> Hearth to Falconwing Square
--VV !Hunter x2
step << Undead Warlock
    #xprate <1.5
    .goto Eversong Woods,55.70,54.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Antheol|r
    .turnin 9066 >> Turn in Swift Discipline
    .target Instructor Antheol
step << Undead Warlock
    #completewith next
    .goto Eversong Woods,56.51,49.61,25,0
    .goto Silvermoon City,73.39,59.65
    .zone Silvermoon City >>Enter Silvermoon
step << Undead Warlock
    #completewith next
    .goto Silvermoon City,73.39,59.65,30,0
    .goto Silvermoon City,78.28,59.34,8,0
    .goto Silvermoon City,78.36,60.14,8 >> Go inside the Inn
step << Undead Warlock
    .goto Silvermoon City,79.50,58.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Suntouched|r
    >>|cFF0E8312Buy a|r |T132798:0|t[Suntouched Special Reserve] |cFF0E8312from him|r
    .collect 22775,1,9067,1 --Suntouched Special Reserve (1)
    .target Vinemaster Suntouched
step << Undead Warlock
    .goto Silvermoon City,75.95,52.92,30,0
    .goto Silvermoon City,62.89,31.26,30,0
    .goto Silvermoon City,51.83,17.91,30,0
    .goto Silvermoon City,49.45,15.00
    .zone Undercity >>Take the Orb of Translocation to Undercity
    .isQuestAvailable 1473
step << Undead Warlock
    #completewith next
    .goto Undercity,59.81,11.33,20,0
    .goto Undercity,66.08,18.24,30,0
    .goto Undercity,66.04,32.97,30,0
    .goto Undercity,65.97,44.08,30,0
    .goto Undercity,71.31,44.16,10,0
    .goto Undercity,72.99,44.19,10 >>Take the lift down to the Undercity
    .isQuestAvailable 1473
step << Undead Warlock
    #completewith next
    .goto Undercity,71.90,40.45,15,0
    .goto Undercity,68.15,40.83,10,0
    .goto Undercity,74.53,43.72,30,0
    .goto Undercity,79.60,42.63,30,0
    .goto Undercity,85.04,25.97,40 >>Travel toward |cFF00FF25Carendin|r
    .isQuestAvailable 1473
step << Undead Warlock
    .goto Undercity,85.04,25.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Carendin|r
    .accept 1473 >>Accept Creature of the Void
    .target Carendin Halgar
step << Undead Warlock
    .goto Undercity,88.91,15.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Richard|r
    .train 707 >> Train your class spells
    .target Richard Kerwin
    .xp <10,1
    .xp >12,1
step << Undead Warlock
    .goto Undercity,88.91,15.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Richard|r
    .train 705 >> Train your class spells
    .target Richard Kerwin
    .xp <12,1
step << Undead Warlock
    #completewith next
    .goto Undercity,82.36,15.31
    .goto Undercity,67.90,15.29,30 >> |cFFFCDC00Go to the Reagent Vendor on your right and perform a Logout Skip by positioning your character on the highest part of the lowest staircase until it looks like they're floating, then logging out and back in|r
    .link https://www.youtube.com/watch?v=-Bi95bCN8dM >> |cFFFCDC00CLICK HERE for an example|r
    >>|cFFFCDC00If you can't do this, just run out of Undercity normally|r
    .isOnQuest 1473
step << Undead Warlock
    #completewith next
    .goto Tirisfal Glades,61.75,64.96
    .zone Tirisfal Glades >> Exit Undercity
    .isOnQuest 1473
step << Undead Warlock
    .goto Tirisfal Glades,51.44,67.69,15,0
    .goto Tirisfal Glades,51.06,67.57
    >>Loot the |cFFDB2EEFCreature of the Void Chest|r on the ground
    .complete 1473,1 --Creature of the Void (1)
step << Undead Warlock
    #completewith next
    .goto Undercity,66.16,1.05,20,0
    .goto Undercity,66.08,18.24,30,0
    .goto Undercity,66.04,32.97,30,0
    .goto Undercity,65.97,44.08,30,0
    .goto Undercity,71.31,44.16,10,0
    .goto Undercity,72.99,44.19,10 >>Take the left down to the Undercity
    .isOnQuest 1473
step << Undead Warlock
    #completewith next
    .goto Undercity,71.90,40.45,15,0
    .goto Undercity,68.15,40.83,10,0
    .goto Undercity,74.53,43.72,30,0
    .goto Undercity,79.60,42.63,30,0
    .goto Undercity,85.04,25.97,40 >>Travel toward |cFF00FF25Carendin|r
    .isOnQuest 1473
step << Undead Warlock
    .goto Undercity,85.04,25.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Carendin|r
    .turnin 1473 >>Turn in Creature of the Void
    .accept 1471 >>Accept The Binding
    .target Carendin Halgar
step << Undead Warlock
    #completewith next
    .goto Undercity,86.64,27.10
    .cast 9221 >>Use the |T134416:0|t[Runes of Summoning] at the Summoning Circle
    .use 6284
step << Undead Warlock
    .goto Undercity,86.64,27.10
    >>Kill the |cFFFF5722Summoned Voidwalker|r
    .complete 1471,1 --Kill Summoned Voidwalker (1)
    .mob Summoned Voidwalker
    .use 6284
step << Undead Warlock
    .goto Undercity,85.04,25.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Carendin|r
    .turnin 1471 >>Turn in The Binding
    .target Carendin Halgar
step << Undead Warlock
    #completewith ExitFalcon
    .hs >>Hearth to Falconwing Square
step
    .goto Eversong Woods,48.16,47.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Delaniel|r
    >>|cFF0E8312Buy|r |T132815:0|t[Ice Cold Milk] |cFF0E8312from her|r << Priest/Mage/Warlock/Druid
    >>|cFF0E8312Buy|r |T133968:0|t[Freshly Baked Bread] |cFF0E8312from her|r << !Priest !Mage !Warlock !Druid !Paladin
    >>|cFF0E8312Buy|r |T132815:0|t[Ice Cold Milk] |cFF0E8312and|r |T133968:0|t[Freshly Baked Bread] |cFF0E8312from her|r << Paladin
    .collect 1179,20,8491,1 << Priest/Mage/Warlock/Druid/Paladin --Ice Cold Milk (20)
    .collect 4541,20,8491,1 << !Priest !Mage !Warlock !Druid !Paladin --Freshly Baked Bread (20)
    .collect 4541,10,8491,1 << Paladin --Freshly Baked Bread (10)
    .money <0.0476 << !Priest !Mage !Warlock !Druid !Paladin
    .money <0.0714 << Paladin
    .target Innkeeper Delaniel
step
    #label Buyfood1
    .goto Eversong Woods,48.16,47.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Delaniel|r
    >>|cFF0E8312Buy|r |T132815:0|t[Ice Cold Milk] |cFF0E8312from her|r << Priest/Mage/Warlock/Druid
    >>|cFF0E8312Buy|r |T133968:0|t[Freshly Baked Bread] |cFF0E8312from her|r << !Priest !Mage !Warlock !Druid !Paladin
    >>|cFF0E8312Buy|r |T132815:0|t[Ice Cold Milk] |cFF0E8312and|r |T133968:0|t[Freshly Baked Bread] |cFF0E8312from her|r << Paladin
    .collect 1179,10,8491,1 << Priest/Mage/Warlock/Druid/Paladin --Ice Cold Milk (10)
    .collect 4541,10,8491,1 << !Priest !Mage !Warlock !Druid !Paladin --Freshly Baked Bread (10)
    .collect 4541,5,8491,1 << Paladin --Freshly Baked Bread (10)
    .money <0.0238 << !Priest !Mage !Warlock !Druid !Paladin
    .money <0.0357 << Paladin
    .target Innkeeper Delaniel
step << Paladin/Priest/Mage
    #xprate <1.5
    .goto Eversong Woods,48.17,46.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Aeldon|r
    .turnin 8482 >> Turn in Incriminating Documents
    .accept 8483 >> Accept The Dwarven Spy
    .target Aeldon Sunbrand
step << Paladin/Priest/Mage
    #xprate >1.4999
    .goto Eversong Woods,48.17,46.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Aeldon|r
    .turnin 8482 >> Turn in Incriminating Documents
    .target Aeldon Sunbrand
step << Paladin/Priest/Mage
    #xprate <1.5
    .goto Eversong Woods,44.57,53.30
    .gossipoption 91301 >>Talk to |cFF00FF25Anvilward|r
    .timer 28,Prospector Anvilward RP
    .target Prospector Anvilward
    .skipgossip 15420,1
    .isOnQuest 8483
step << Paladin/Priest/Mage
    #xprate <1.5
    .goto Eversong Woods,44.57,53.11,10,0
    .goto Eversong Woods,44.01,52.83,10,0
    .goto Eversong Woods,43.91,53.12,10,0
    .goto Eversong Woods,44.07,53.33
    >>|cFFFCDC00Wait out the RP|r
    >>Kill |cFFFF5722Prospector Anvilward|r. Loot him for his |cFF00BCD4Head|r
    .complete 8483,1 --Collect Prospector Anvilward's Head (x1)
    .mob Prospector Anvilward
step
    #xprate <1.5
    .goto Eversong Woods,48.17,46.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Aeldon|r
    .turnin 8483 >> Turn in The Dwarven Spy
    .target Aeldon Sunbrand
--VV !Hunter
step
    .goto Eversong Woods,45.02,37.68
    .xp 10 >> Grind to level 10
    --VV !Hunter
step << !Paladin !Priest !Mage
    #xprate >1.4999
    .goto Eversong Woods,48.17,46.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Aeldon|r
    .turnin 8483 >> Turn in The Dwarven Spy
    .target Aeldon Sunbrand
step << Warrior tbc/Rogue
    +Equip the |T135274:0|t[Slightly Used Ranger's Blade]
    .use 23396
    .itemcount 23396,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Paladin
    #xprate <1.5
    +Equip the |T135274:0|t[Slightly Used Ranger's Blade]
    .use 23396
    .itemcount 23396,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Undead Warrior tbc/Rogue
    .goto Eversong Woods,48.34,45.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Larenis|r
    .train 201 >>Train 1h Swords << Rogue
    .train 202 >>Train 2h Swords << Undead Warrior tbc
    .target Duelist Larenis
    .money <0.11
step << Warrior tbc/Paladin tbc/Rogue
    .goto Eversong Woods,48.49,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Geron|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T135321:0|t[Gladius] (5s 9c). You'll come back later if you don't have enough yet
    .target Geron
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Warrior tbc/Paladin tbc/Rogue
    .goto Eversong Woods,48.49,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Geron|r
    >>|cFF0E8312Buy a|r |T135321:0|t[Gladius] |cFF0E8312from him|r
    .collect 2488,1,8476,1 --Gladius (1)
    .target Geron
    .money <0.0509
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Warrior wotlk/Paladin wotlk
    .goto Eversong Woods,48.49,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Geron|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T133053:0|t[Wooden Mallet] (6s 66c). You'll come back later if you don't have enough yet
    .target Geron
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5
step << Warrior wotlk/Paladin wotlk
    .goto Eversong Woods,48.49,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Geron|r
    >>|cFF0E8312Buy a|r |T133053:0|t[Wooden Mallet] |cFF0E8312from him|r
    .collect 2493,1,8476,1 --Collect Wooden Mallet (1)
    .money <0.0666
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5
step << Rogue
    .goto Eversong Woods,48.49,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Geron|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T135641:0|t[Stiletto] (3s 82c). You'll come back later if you don't have enough yet
    .target Geron
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
    .train 201,1
step << Rogue
    .goto Eversong Woods,48.49,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Geron|r
    >>|cFF0E8312Buy a|r |T135641:0|t[Stiletto] |cFF0E8312from him|r
    .collect 2494,1,8476,1 --Collect Stiletto
    .money <0.0382
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
    .train 201,1
step << Warrior tbc/Paladin tbc/Rogue
    #completewith Antheol2
    +Equip the |T135321:0|t[Gladius]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Warrior wotlk/Paladin wotlk
    #completewith Antheol2
    +Equip the |T133053:0|t[Wooden Mallet]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5
step << Rogue
    #completewith Antheol2
    +Equip the |T135641:0|t[Stiletto]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Paladin
    .goto Eversong Woods,48.39,46.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Noellene|r
    .train 633 >>Train your class spells
    .target Noellene
	.xp <10,1
    .xp >12,1
step << Paladin
    .goto Eversong Woods,48.39,46.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Noellene|r
    .accept 9677 >> Accept Summons from Knight-Lord Bloodvalor
    .train 19834 >>Train your class spells
    .target Noellene
	.xp <12,1
step << Rogue
    .goto Eversong Woods,48.58,46.29,8,0
    .goto Eversong Woods,48.50,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Tannaria|r upstairs
    .train 2983 >>Train your class spells
    .target Tannaria
	.xp <10,1
step << Hunter
    .goto Eversong Woods,48.27,46.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Hannovia|r
    .train 13165 >>Train your class spells
    .target Hannovia
	.xp <10,1
	.xp >12,1
step << Hunter
    .goto Eversong Woods,48.27,46.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Hannovia|r
    .train 14281 >>Train your class spells
    .target Hannovia
	.xp <12,1
step << Mage/Priest/Warlock
    #completewith next
    .goto Eversong Woods,47.79,47.35,8,0
    .goto Eversong Woods,47.86,47.76,8 >> Go inside the Inn
	.xp <10,1
step << Mage/Priest/Warlock
    #completewith MaPrWaTrain2
    .goto Eversong Woods,48.27,47.05,8,0
    .goto Eversong Woods,48.06,47.11,8 >> Go upstairs
	.xp <10,1
step << Priest
    .goto Eversong Woods,47.85,47.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Ponaris|r upstairs
    .turnin 9489 >> Cleansing the Scar << BloodElf
    .train 8092 >>Train your class spells
    .target Ponaris
	.xp <10,1
    .xp >12,1
step << Priest
    #label MaPrWaTrain2
    .goto Eversong Woods,47.85,47.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Ponaris|r upstairs
    .turnin 9489 >> Cleansing the Scar << BloodElf
    .train 592 >>Train your class spells
    .target Ponaris
	.xp <12,1
step << Mage
    .goto Eversong Woods,48.04,48.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Garridel|r upstairs
    .train 7300 >>Train your class spells
    .target Garridel
	.xp <10,1
    .xp >12,1
step << Mage
    #label MaPrWaTrain2
    .goto Eversong Woods,48.04,48.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Garridel|r upstairs
    .train 145 >>Train your class spells
    .target Garridel
	.xp <12,1
step << Undead Warlock
    .goto Eversong Woods,48.23,47.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Celoenus|r upstairs
    .train 707 >>Train your class spells
    .target Celoenus
    .xp <10,1
    .xp >12,1
step << Undead Warlock
    #label MaPrWaTrain2
    .goto Eversong Woods,48.23,47.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Celoenus|r upstairs
    .train 705 >>Train your class spells
    .target Celoenus
    .xp <12,1
step
    #label ExitFalcon
    #completewith Antheol2
    .goto Eversong Woods,46.65,49.13,40 >>Exit Falconwing Square
step << !Undead !BloodElf/!Priest
    #xprate >1.4999
    .goto Eversong Woods,50.34,50.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Jaela|r
    .accept 8475 >> Accept The Dead Scar
    .target Ranger Jaela
    .xp >11,1
step << !Undead !BloodElf/!Priest
    #xprate >1.4999
    .goto Eversong Woods,50.82,56.49,40,0
    .goto Eversong Woods,49.72,56.96,40,0
    .goto Eversong Woods,49.48,53.13,40,0
    .goto Eversong Woods,50.95,52.96,40,0
    .goto Eversong Woods,50.82,56.49,40,0
    .goto Eversong Woods,49.72,56.96,40,0
    .goto Eversong Woods,49.48,53.13,40,0
    .goto Eversong Woods,50.95,52.96
    >>Kill |cFFFF5722Plaguebone Pillagers|r
    .complete 8475,1 --Kill Plaguebone Pillager (x8)
    .mob Plaguebone Pillager
    .isOnQuest 8475
step << !Undead !BloodElf/!Priest
    #xprate >1.4999
    .goto Eversong Woods,50.34,50.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Jaela|r
    .turnin 8475 >> Turn in The Dead Scar
    .target Ranger Jaela
    .isQuestComplete 8475
step << BloodElf Warlock
    #completewith next
    .goto Eversong Woods,56.51,49.61,25,0
    .goto Silvermoon City,73.39,59.65
    .zone Silvermoon City >>Enter Silvermoon
    .isQuestAvailable 9529
step << BloodElf Warlock
    #completewith next
    .goto Silvermoon City,73.39,59.65,30,0
    .goto Silvermoon City,78.28,59.34,8,0
    .goto Silvermoon City,78.36,60.14,8 >> Go inside the Inn
step << BloodElf Warlock
    .goto Silvermoon City,79.50,58.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Suntouched|r
    >>|cFF0E8312Buy a|r |T132798:0|t[Suntouched Special Reserve] |cFF0E8312from him|r
    .collect 22775,1,9067,1 --Suntouched Special Reserve (1)
    .target Vinemaster Suntouched
step << BloodElf Warlock
    #completewith TheStone
    .goto Silvermoon City,75.95,52.92,30,0
    .goto Silvermoon City,75.65,45.04,15,0
    .goto Silvermoon City,76.33,43.33,12 >>Go inside the building, then go downstairsd
    .isQuestAvailable 9529
step << BloodElf Warlock
    .goto Silvermoon City,74.39,47.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Talionia|r
    .accept 9529 >>Accept The Stone
    .train 707 >>Train your class spells
    .target Talionia
    .xp <10,1
    .xp >12,1
step << BloodElf Warlock
    .goto Silvermoon City,74.39,47.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Talionia|r
    .accept 9529 >>Accept The Stone
    .train 705 >>Train your class spells
    .target Talionia
    .xp <12,1
step << BloodElf Warlock
    #label TheStone
    .goto Silvermoon City,74.39,47.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Talionia|r
    .accept 9529 >>Accept The Stone
    .target Talionia
    .isQuestAvailable 9529
step << BloodElf Warlock
    #completewith next
    .goto Silvermoon City,73.39,59.65,30,0
    .goto Eversong Woods,56.66,50.11
    .zone Eversong Woods >>Exit Silvermoon
step
    #xprate <1.5
    #label Antheol2
    .goto Eversong Woods,55.70,54.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Antheol|r
    .turnin 9066 >> Turn in Swift Discipline
    .accept 9402 >> Accept Fetch! << Mage
step
    #xprate >1.4999
    #label Antheol2
    .goto Eversong Woods,55.70,54.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Antheol|r
    .turnin 9064 >> Turn in Taking the Fall << !Undead !BloodElf/!Priest !Undead
    .turnin 9066 >> Turn in Swift Discipline << BloodElf Priest/Undead
    .accept 9402 >> Accept Fetch! << Mage
    .target Instructor Antheol
step << Mage
    .goto Eversong Woods,54.69,56.23
    >>Loot the |cFFDB2EEFAzure Phial|r underwater
    .complete 9402,1 --Azure Phial (1)
step << Mage
    .goto Eversong Woods,55.70,54.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Antheol|r
    .turnin 9402 >>Turn in Fetch!
    .accept 9403 >>Accept The Purest Water
    .target Instructor Antheol
step << Warrior
    #completewith next
    .goto Silvermoon City,75.95,52.92,30,0
    .goto Silvermoon City,62.89,31.26,30,0
    .goto Silvermoon City,51.83,17.91,30,0
    .goto Silvermoon City,49.45,15.00
    .zone Undercity >>Take the Orb of Translocation to Undercity
step << Warrior
    .goto Tirisfal Glades,61.75,64.96
    .zone Tirisfal Glades >> Exit Undercity
    .isQuestAvailable 834
step << Warrior
    #completewith WarrTraining2
    .goto Tirisfal Glades,61.58,52.99,8,0
    .goto Tirisfal Glades,61.74,52.77,8 >>Go inside the Inn
step << Warrior
    .goto Tirisfal Glades,61.85,52.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Austil|r
    .train 2687 >>Train your class spells
    .target Austil de Mon
    .xp <10,1
    .xp >12,1
step << Warrior
    #label WarrTraining2
    .goto Tirisfal Glades,61.85,52.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Austil|r
    .train 5242 >>Train your class spells
    .target Austil de Mon
    .xp <12,1
step << Warrior
    #completewith Winds
    .abandon 1818 >>Abandon Speak with Dillinger
step << Warrior
    #completewith Winds
    .goto Tirisfal Glades,61.06,58.86,12,0
    .goto Tirisfal Glades,61.51,59.01,10,0
    .goto Tirisfal Glades,61.27,59.22,8,0
    .goto Tirisfal Glades,61.13,58.84,8,0
    .goto Tirisfal Glades,61.38,58.71,8,0
    .goto Tirisfal Glades,61.34,59.17,8,0
    .goto Tirisfal Glades,60.51,58.69,-1
    .goto Tirisfal Glades,60.94,46.35,-1
    >>Go up the Zeppelin Tower
    .zone Durotar >>Take the Zeppelin to Durotar
step << Warrior
    #label Winds
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Rezlak|r
    .accept 834 >>Accept Winds in the Desert
    .target Rezlak
step << Warrior
    .goto Durotar,49.10,22.59,20,0
    .goto Durotar,49.71,21.89,20,0
    .goto Durotar,50.10,24.51,20,0
    .goto Durotar,50.85,25.92,20,0
    .goto Durotar,49.86,26.87,20,0
    .goto Durotar,50.51,31.82,30,0
    .goto Durotar,49.63,32.12,20,0
    .goto Durotar,49.42,33.74,20,0
    .goto Durotar,48.09,34.38,20,0
    .goto Durotar,47.91,33.08,20,0
    .goto Durotar,47.18,29.67,20,0
    .goto Durotar,49.10,22.59,20,0
    .goto Durotar,49.71,21.89,20,0
    .goto Durotar,50.10,24.51,20,0
    .goto Durotar,50.85,25.92,20,0
    .goto Durotar,49.86,26.87,20,0
    .goto Durotar,50.51,31.82,30,0
    .goto Durotar,49.63,32.12,20,0
    .goto Durotar,49.42,33.74,20,0
    .goto Durotar,48.09,34.38,20,0
    .goto Durotar,47.91,33.08,20,0
    .goto Durotar,47.18,29.67,20,0
    >>Loot the |cFFDB2EEFSacks of Supplies|r on the ground
    .complete 834,1 --Sack of Supplies (5)
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
<< Horde !Warrior !Shaman
#name 10-12 Eversong Woods
#next 12-16 Ghostlands
#version 1
#group RestedXP Horde 1-30

step << Orc Hunter/Troll Hunter
    #completewith next
    .goto Silvermoon City,62.89,31.20,20,0
    .goto Silvermoon City,74.82,36.86,20,0
    .goto Silvermoon City,91.23,38.75,20 >>Travel toward |cFF00FF25Ileda|r
step << Orc Hunter/Troll Hunter
    .goto Silvermoon City,91.23,38.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Ileda|r
    .train 202 >>Train 2h Swords
    .target Ileda
    .money <0.1000
step << Orc/Troll/Tauren
    #completewith next
    .goto Silvermoon City,62.89,31.20,20,0 << !Orc/!Hunter !Troll/!Hunter
    .goto Silvermoon City,75.63,58.34,20,0 << !Orc/!Hunter !Troll/!Hunter
    .goto Silvermoon City,73.22,59.91,20,0 << !Orc/!Hunter !Troll/!Hunter
    .goto Eversong Woods,56.43,49.91
    .zone Eversong Woods >>Exit Silvermoon
step << Orc/Troll/Tauren
    .goto Eversong Woods,54.37,50.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Gloaming|r
    .fp Silvermoon >> Get the Silvermoon City flight path
    .target Skymistress Gloaming
step << Troll Mage
    .goto Eversong Woods,55.70,54.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Antheol|r
    .accept 9403 >>Accept The Purest Water
    .target Instructor Antheol
step << Troll Mage
    .goto Eversong Woods,54.69,56.23
    >>Loot the |cFFDB2EEFAzure Phial|r underwater
    .complete 9402,1 --Azure Phial (1)
step << Troll Mage
    .goto Eversong Woods,55.70,54.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Antheol|r
    .turnin 9402 >>Turn in Fetch!
    .accept 9403 >>Accept The Purest Water
    .target Instructor Antheol
step << Undead/BloodElf
    #completewith next
    >>Kill |cFFFF5722Springpaw Stalkers|r. Loot them for their |cFF00BCD4Pelts|r
    .complete 8491,1 --Collect Springpaw Pelt (x6)
    .mob Springpaw Stalker
step << Undead/BloodElf
    .goto Eversong Woods,60.41,62.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Zalene|r
    >>|cFF0E8312Buy the|r |T133974:0|t[Springpaw Appetizers] |cFF0E8312from her|r
    .collect 22776,1,9067,1 --Collect Springpaw Appetizers
    .target Zalene Firstlight
step
    .goto Eversong Woods,60.32,62.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Dawnrunner|r
    .turnin 9359 >>Turn in Farstrider Retreat << !Tauren !Troll !Orc
    .accept 8476 >> Accept Amani Encroachment
    .accept 9484 >> Accept Taming the Beast << BloodElf Hunter
    .target Lieutenant Dawnrunner
step << !Troll Hunter
    .goto Eversong Woods,60.32,62.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Paelarin|r
    >>|cFF0E8312Buy a|r |T135489:0|t[Laminated Recurve Bow] |cFF0E8312and|r |T132382:0|t[Sharp Arrows] |cFF0E8312from him|r
    .collect 2507,1,9144,1 --Laminated Recurve Bow (1)
    .collect 2515,2000,9144,1 --Sharp Arrow (2000)
    .target Paelarin
    .money <0.2252 << Orc/Troll
    .money <0.2144 << BloodElf
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.5
--VV Paelarin doesn't talk to Trolls
step << !Troll Hunter
    .goto Eversong Woods,60.32,62.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Paelarin|r
    >>|cFF0E8312Buy|r |T132382:0|t[Sharp Arrows] |cFF0E8312from him|r
    .collect 2515,2000,9252,1 << Hunter --Sharp Arrow (2000)
    .target Paelarin
    .money <0.0500 << Orc/Troll
    .money <0.0480 << BloodElf
step << !Troll Hunter
    #completewith Otembe
    +Equip the |T135489:0|t[Laminated Recurve Bow]
    .use 2507
    .itemcount 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.5
step
    .goto Eversong Woods,59.52,62.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Arathel|r
    .train 2018 >> Train |T136241:0|t[Blacksmithing]. You'll get |T136248:0|t[Mining] later which will allow you to craft |T135248:0|t[Sharpening Stones] (+2 Weapon Damage for 1 hour) << Paladin/BloodElf Rogue/Undead Rogue
    >>|cFFFCDC00You can skip|r |T136241:0|t[Blacksmithing] |cFFFCDC00if you wish|r << Paladin/BloodElf Rogue/Undead Rogue
    .accept 8477 >> Accept The Spearcrafter's Hammer
    .target Arathel Sunforge
step << BloodElf Hunter
    .goto Eversong Woods,61.65,65.46,40,0
    .goto Eversong Woods,64.19,68.21,40,0
    .goto Eversong Woods,63.75,66.40,40,0
    .goto Eversong Woods,64.06,61.14,40,0
    .goto Eversong Woods,63.90,60.17,40,0
    .goto Eversong Woods,62.62,60.38,40,0
    .goto Eversong Woods,60.48,58.86,40,0
    .goto Eversong Woods,61.65,65.46,40,0
    .goto Eversong Woods,64.19,68.21,40,0
    .goto Eversong Woods,63.75,66.40,40,0
    .goto Eversong Woods,64.06,61.14,40,0
    .goto Eversong Woods,63.90,60.17,40,0
    .goto Eversong Woods,62.62,60.38,40,0
    .goto Eversong Woods,60.48,58.86
    >>Use the |T132164:0|t[Taming Rod] from max range on a |cFFFF5722Crazed Dragonhawk|r
    >>|cFFFCDC00DON'T Kill any|r |cFFFF5722Elder Springpaws|r
    .complete 9484,1 --Tame a Crazed Dragonhawk
    .mob Crazed Dragonhawk
    .use 23702
step << BloodElf Hunter
    .goto Eversong Woods,60.32,62.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Dawnrunner|r
    .turnin 9484 >> Turn in Taming the Beast
    .accept 9486 >> Accept Taming the Beast
    .target Lieutenant Dawnrunner
step << BloodElf Hunter
    .goto Eversong Woods,60.08,66.06,40,0
    .goto Eversong Woods,63.21,64.35,40,0
    .goto Eversong Woods,64.00,63.93,40,0
    .goto Eversong Woods,64.54,61.08,40,0
    .goto Eversong Woods,62.92,61.12,40,0
    .goto Eversong Woods,61.72,58.56,40,0
    .goto Eversong Woods,63.25,58.12,40,0
    .goto Eversong Woods,59.62,57.24,40,0
    .goto Eversong Woods,60.08,66.06,40,0
    .goto Eversong Woods,63.21,64.35,40,0
    .goto Eversong Woods,64.00,63.93,40,0
    .goto Eversong Woods,64.54,61.08,40,0
    .goto Eversong Woods,62.92,61.12,40,0
    .goto Eversong Woods,61.72,58.56,40,0
    .goto Eversong Woods,63.25,58.12,40,0
    .goto Eversong Woods,59.62,57.24
    >>Use the |T132164:0|t[Taming Rod] from max range on an |cFFFF5722Elder Springpaw|r
    .complete 9486,1 --Tame an Elder Springpaw
    .mob Elder Springpaw
    .use 23702
step << BloodElf Hunter
    .goto Eversong Woods,60.32,62.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Dawnrunner|r
    .turnin 9486 >> Turn in Taming the Beast
    .accept 9485 >> Accept Taming the Beast
    .target Lieutenant Dawnrunner
step << Undead/BloodElf
    #completewith Otembe
    >>Kill |cFFFF5722Springpaw Stalkers|r. Loot them for their |cFF00BCD4Pelts|r
    .complete 8491,1 --Collect Springpaw Pelt (x6)
    .mob Springpaw Stalker
step << Mage
    .goto Eversong Woods,64.16,72.62
    >>Use the |T134776:0|t[Azure Phial] under the Waterfall
    .complete 9403,1 --Filled Azure Phial (1)
    .use 23566
step << Orc Hunter wotlk / Troll Hunter wotlk
    .goto Eversong Woods,68.15,68.11,40,0
    .goto Eversong Woods,65.72,69.53,40,0
    .goto Eversong Woods,60.08,66.06,40,0
    .goto Eversong Woods,63.21,64.35,40,0
    .goto Eversong Woods,64.00,63.93,40,0
    .goto Eversong Woods,64.54,61.08,40,0
    .goto Eversong Woods,62.92,61.12,40,0
    .goto Eversong Woods,61.72,58.56,40,0
    .goto Eversong Woods,63.25,58.12,40,0
    .goto Eversong Woods,59.62,57.24
    .tame 15652 >>Tame an |cFFFF5722Elder Springpaw|r
    .mob Elder Springpaw
step
    #completewith Marosh
    >>Kill |cFFFF5722Amani Berserkers|r and |cFFFF5722Amani Axe Throwers|r
    >>|cFFFCDC00Be careful as|r |cFFFF5722Amani Berserkers|r |cFFFCDC00cast|r |T136224:0|t[Enrage] |cFFFCDC00(increased damage and attack speed) at low health|r
    .complete 8476,1 --Kill Amani Berserker (x5)
    .complete 8476,2 --Kill Amani Axe Thrower (x5)
    .mob Amani Berserker
    .mob Amani Axe Thrower
step
    .goto Eversong Woods,70.10,72.28
    >>Kill |cFFFF5722Spearcrafter Otembe|r. Loot him for his |cFF00BCD4Hammer|r
    >>|cFFFF5722Spearcrafter Otembe|r |cFFFCDC00Has a 100% chance to drop a White or Green item|r << Paladin/Rogue/Warrior
    .complete 8477,1 --Collect Otembe's Hammer (x1)
    .mob Spearcrafter Otembe
    .itemStat 16,QUALITY,<7 << Paladin/Rogue/Warrior
step
    #label Otembe
    .goto Eversong Woods,70.10,72.28
    >>Kill |cFFFF5722Spearcrafter Otembe|r. Loot him for his |cFF00BCD4Hammer|r
    .complete 8477,1 --Collect Otembe's Hammer (x1)
    .mob Spearcrafter Otembe
step
    .goto Eversong Woods,70.53,72.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Ven'jashi|r in the Cage
    .accept 8479 >> Accept Zul'Marosh
    .target Ven'jashi
step
    #completewith next
    .goto Eversong Woods,62.57,79.72,15,0
    .goto Eversong Woods,62.25,80.08,8,0
    .goto Eversong Woods,61.83,79.89,8,0
    .goto Eversong Woods,61.90,79.63,8 >>Climb up the hut toward |cFFFF5722Zul'Marosh|r
step
    .goto Eversong Woods,62.51,79.68
    >>Kill |cFFFF5722Chieftain Zul'Marosh|r. Loot him for his |cFF00BCD4Head|r and |T134946:0|t[|cFF00BCD4Amani Invasion Plans|r]
    >>|cFFFCDC00Use the |T134946:0|t[|cFF00BCD4Amani Invasion Plans|r] to start the quest|r
    >>|cFFFF5722Chieftain Zul'Marosh|r |cFFFCDC00Has a 100% chance to drop a White or Green item|r << Paladin/Rogue/Warrior
    .complete 8479,1 --Collect Chieftain Zul'Marosh's Head (x1)
    .collect 23249,1,9360,1 --Collect Amani Invasion Plans (x1)
    .accept 9360 >> Accept Amani Invasion
    .mob Chieftain Zul'Marosh
    .use 23249
    .itemStat 16,QUALITY,<7
step
    .goto Eversong Woods,62.51,79.68
    >>Kill |cFFFF5722Chieftain Zul'Marosh|r. Loot him for his |cFF00BCD4Head|r and the |T134946:0|t[|cFF00BCD4Amani Invasion Plans|r]
    >>|cFFFCDC00Use the |T134946:0|t[|cFF00BCD4Amani Invasion Plans|r] to start the quest|r
    .complete 8479,1 --Collect Chieftain Zul'Marosh's Head (x1)
    .collect 23249,1,9360,1 --Collect Amani Invasion Plans (x1)
    .accept 9360 >> Accept Amani Invasion
    .mob Chieftain Zul'Marosh
    .use 23249
step
    .goto Eversong Woods,70.53,72.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Ven'jashi|r in the Cage
    >>|cFFFCDC00Kill |cFFFF5722Spearcrafter Otembe|r if you wish. He has a 100% chance to drop a White or Green item|r << Paladin/Rogue/Warrior
    .turnin 8479 >> Turn in Zul'Marosh
    .mob Spearcrafter Otembe
    .target Ven'jashi
    .itemStat 16,QUALITY,<7
step
    #label Marosh
    .goto Eversong Woods,70.53,72.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Ven'jashi|r in the Cage
    .turnin 8479 >> Turn in Zul'Marosh
    .target Ven'jashi
step
    .goto Eversong Woods,70.90,71.63,40,0
    .goto Eversong Woods,68.12,70.88,40,0
    .goto Eversong Woods,68.54,73.15,40,0
    .goto Eversong Woods,69.23,74.08,40,0
    .goto Eversong Woods,69.39,76.51,40,0
    .goto Eversong Woods,71.65,76.95,40,0
    .goto Eversong Woods,71.45,78.94,40,0
    .goto Eversong Woods,70.49,81.45,40,0
    .goto Eversong Woods,70.43,82.60,40,0
    .goto Eversong Woods,68.82,83.40,40,0
    .goto Eversong Woods,68.89,80.37,40,0
    .goto Eversong Woods,70.90,71.63,40,0
    .goto Eversong Woods,68.12,70.88,40,0
    .goto Eversong Woods,68.54,73.15
    >>Kill |cFFFF5722Amani Berserkers|r and |cFFFF5722Amani Axe Throwers|r
    >>|cFFFCDC00Be careful as|r |cFFFF5722Amani Berserkers|r |cFFFCDC00cast|r |T136224:0|t[Enrage] |cFFFCDC00(increased damage and attack speed) at low health|r
    .complete 8476,1 --Kill Amani Berserker (x5)
    .complete 8476,2 --Kill Amani Axe Thrower (x5)
    .mob Amani Berserker
    .mob Amani Axe Thrower
step << skip
    .use 30105
    .goto Ghostlands,45.6,21.1
    .complete 9485,1 --Tame a Mistbat
--VV BloodElf Hunter
step << skip
    .goto Ghostlands,46.3,28.8
    .accept 9327 >> Accept The Forsaken
    --VV BloodElf Hunter
step << skip
    .goto Ghostlands,44.774,32.450
    .turnin 9327 >> Turn in The Forsaken
    .accept 9758 >> Accept Return to Arcanist Vandril
    --VV BloodElf Hunter
step << skip
    .goto Ghostlands,47.3,28.9
    .accept 9130 >> Accept Goods from Silvermoon City
    --VV BloodElf Hunter
step << skip
    .goto Ghostlands,47.0,28.5
    .accept 9152 >> Accept Tomber's Supplies
    --VV BloodElf Hunter
step << skip
    .goto Ghostlands,46.3,28.4
    .turnin 9758 >> Turn in Return to Arcanist Vandril
    --VV BloodElf Hunter
step << skip
    .goto Ghostlands,46.3,28.6
    .accept 9138 >> Accept Suncrown Village
    --VV BloodElf Hunter
step << skip
    #completewith next
    .goto Ghostlands,45.5,30.5
    .fp Tranquillien >> Get the Tranquillien flight path
    --VV BloodElf Hunter
step << skip
    >>do NOT fly to Silvermoon City
    .goto Ghostlands,45.5,30.6
    .turnin 9130 >> Turn in Goods from Silvermoon City
    .accept 9133 >> Accept Fly to Silvermoon City
    --VV BloodElf Hunter
step << skip
    #completewith next
    .goto Eversong Woods,44.0,70.7
    .hs >> Hearth to Fairbreeze Village
    --VV BloodElf Hunter
step << skip
    .goto Eversong Woods,44.0,70.7
    .turnin 9255 >> Turn in Research Notes
    .accept 9144 >> Accept Missing in the Ghostlands
    --VV BloodElf Hunter
step << skip
    .goto Eversong Woods,44.7,69.7
    .turnin 8491 >> Turn in Pelt Collection
    --VV BloodElf Hunter
step << skip
    .goto Eversong Woods,46.928,71.789
    .turnin 9252 >> Turn in Defending Fairbreeze Village
    --VV BloodElf Hunter
step << skip
    .goto Eversong Woods,46.9,71.6
    .accept 9253 >> Accept Runewarden Deryan
    --VV BloodElf Hunter
step << skip
    .use 22473 >>Use the Disciplinary Rod in your bags on Meledor
.goto Eversong Woods,44.9,61.0
    .complete 9066,1 --Apprentice Meledor Disciplined
    --VV BloodElf Hunter
step << skip
    .use 22473 >>Use the Disciplinary Rod in your bags on Ralen
.goto Eversong Woods,45.2,57.0
    .complete 9066,2 --Apprentice Ralen Disciplined
    --VV BloodElf Hunter
step << skip
    .goto Eversong Woods,48.2,46.0
    .turnin 8482 >> Turn in Incriminating Documents
    .accept 8483 >> Accept The Dwarven Spy
    --VV BloodElf Hunter
step << skip
    .goto Eversong Woods,48.3,46.1
    .trainer >> Train your class spells
step << skip
    .goto Eversong Woods,44.8,53.1
    >>Talk to Prospector Anvilward and wait out the roleplay event. Kill and loot him after.
    .complete 8483,1 --Collect Prospector Anvilward's Head (x1)
    .skipgossip
    .timer 28,Prospector Anvilward RP
step << skip
    .goto Eversong Woods,48.2,46.0
.target Aeldon Sunbrand
>>Talk to |cFF00FF25Aeldon Sunbrand|r
    .turnin 8483 >> Turn in The Dwarven Spy
step << skip
    .goto Eversong Woods,55.700,54.509
.target Instructor Antheol
>>Talk to |cFF00FF25Instructor Antheol|r
    .turnin 9066 >> Turn in Swift Discipline
step << Undead/BloodElf
    #completewith next
    >>Kill |cFFFF5722Springpaw Stalkers|r. Loot them for their |cFF00BCD4Pelts|r
    .complete 8491,1 --Collect Springpaw Pelt (x6)
    .mob Springpaw Stalker
step
    .goto Eversong Woods,60.32,62.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Dawnrunner|r
    .turnin 8476 >> Turn in Amani Encroachment
    .turnin 9360 >> Turn in Amani Invasion
    .accept 9363 >> Accept Warning Fairbreeze Village
    .turnin 9485 >> Turn in Taming the Beast << BloodElf Hunter
    .accept 9673 >> Accept Beast Training << BloodElf Hunter
    .target Lieutenant Dawnrunner
step << Undead/BloodElf
    #completewith MagiApp
    +|cFFFCDC00Remember to NOT sell your|r |T133974:0|t[Springpaw Appetizers] |cFFFCDC00and|r |T132798:0|t[Suntouched Special Reserve] << Warlock
    +|cFFFCDC00Remember to NOT sell your|r |T133974:0|t[Springpaw Appetizers] << !Warlock
step << !Troll Hunter
    .goto Eversong Woods,60.32,62.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Paelarin|r
    >>|cFF0E8312Buy a|r |T135489:0|t[Laminated Recurve Bow] |cFF0E8312from|r |cFF00FF25Paelarin|r
    .collect 2507,1,9144,1 --Laminated Recurve Bow (1)
    .target Paelarin
    .money <0.1752 << Orc/Troll
    .money <0.1664 << BloodElf
    .itemStat 16,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.5
step << !Troll Hunter
    #completewith HunterTrain
    +Equip the |T135489:0|t[Laminated Recurve Bow]
    .use 2507
    .itemcount 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.5
step
    .goto Eversong Woods,59.52,62.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Arathel|r
    .turnin 8477 >> Turn in The Spearcrafter's Hammer
    .target Arathel Sunforge
step << Rogue
    +Equip the |T135274:0|t[Ranger's Pocketknife]
    .use 22963
    .itemcount 22963,1
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.3
step
    #completewith next
    .goto Eversong Woods,59.53,62.16,12,0
    .goto Eversong Woods,59.82,61.91,12,0
    .goto Eversong Woods,59.82,61.91,10 >> Travel up the ramp toward |cFF00FF25Duskwither|r
step
    #label MagiApp
    .goto Eversong Woods,60.31,61.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Duskwither|r
    .accept 8888 >> Accept The Magister's Apprentice
    .target Magister Duskwither
step << BloodElf/Undead
    #completewith next
    >>Kill |cFFFF5722Springpaw Stalkers|r and |cFFFF5722Elder Springpaws|r. Loot them for their |cFF00BCD4Pelts|r
    .complete 8491,1 --Collect Springpaw Pelt (x6)
    .mob Springpaw Stalker
    .mob Elder Springpaw
step
    .goto Eversong Woods,67.80,56.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Loralthalis|r
    .turnin 8888 >> Turn in The Magister's Apprentice
    .accept 8889 >> Accept Deactivating the Spire
    .accept 9394 >> Accept Where's Wyllithen?
    .target Apprentice Loralthalis
step
    .goto Eversong Woods,68.71,46.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Wyllithen|r
    .turnin 9394 >> Turn in Where's Wyllithen?
    .accept 8894 >> Accept Cleaning up the Grounds
    .target Groundskeeper Wyllithen
step
    .loop 40,Eversong Woods,69.15,50.56,70.02,50.62,70.58,48.16,69.97,46.28,69.50,44.69,68.29,43.31,67.61,45.28,67.13,48.48,69.01,48.22,69.15,50.56
    >>Kill |cFFFF5722Mana Serpents|r and |cFFFF5722Ether Fiends|r
    .complete 8894,1 --Kill Mana Serpent (x6)
    .complete 8894,2 --Kill Ether Fiend (x6)
    .mob Mana Serpent
    .mob Ether Fiend
step
    .goto Eversong Woods,68.71,46.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Wyllithen|r
    .turnin 8894 >> Turn in Cleaning up the Grounds
    .target Groundskeeper Wyllithen
step
    #completewith next
    .goto Eversong Woods,68.95,51.95
    .cast 26566 >>Click the Orb of Translocation atop the stairs
step
    .goto Eversong Woods,68.24,51.56,15,0
    .goto Eversong Woods,68.57,51.61,15,0
    .goto Eversong Woods,68.96,51.95
    >>Click the |cFFDB2EEFFloating Green Crystal|r
    .complete 8889,1 --First Power Source Deactivated (x1)
step
    #completewith next
    .goto Eversong Woods,69.16,52.01,8,0
    .goto Eversong Woods,69.09,51.74,8,0
    .goto Eversong Woods,68.93,51.69,8 >> Go upstairs
step
    #sticky
    #label Journalt
    .goto Eversong Woods,69.24,52.11,0,0
    >>Click the |cFFDB2EEFJournal|r on the table
    .accept 8891 >> Accept Abandoned Investigations
step
    >>Click the |cFFDB2EEFFloating Green Crystal|r
    .complete 8889,2 --Second Power Source Deactivated (x1)
    .goto Eversong Woods,68.80,52.00,8,0
    .goto Eversong Woods,68.96,51.94
step
    #requires Journalt
    #completewith next
    .goto Eversong Woods,69.57,52.12,12,0
    .goto Eversong Woods,69.82,52.50,12,0
    .goto Eversong Woods,69.76,52.98,12,0
    .goto Eversong Woods,69.64,53.35,15 >> Go upstairs
step
    #requires Journalt
    .goto Eversong Woods,69.64,53.35
    >>Click the |cFFDB2EEFFloating Green Crystal|r
    >>|cFFFCDC00Do NOT click the Orb of Translocation yet|r
    .complete 8889,3 --Third Power Source Deactivated (x1)
step
    .goto Eversong Woods,69.61,53.47
    .cast 26572 >>Click the Orb of Translocation to teleport back down
    .isOnQuest 8889
step << !BloodElf/!Warlock
    .loop 40,Eversong Woods,69.15,50.56,70.02,50.62,70.58,48.16,69.97,46.28,69.50,44.69,68.29,43.31,67.61,45.28,67.13,48.48,69.01,48.22,69.15,50.56
    .xp 11+6375 >> Grind to 6375+/8700xp
step
    .goto Eversong Woods,67.80,56.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Loralthalis|r
    .turnin 8889 >> Turn in Deactivating the Spire
    .accept 8890 >> Accept Word from the Spire
    .target Apprentice Loralthalis
step << BloodElf/Undead
    .goto Eversong Woods,66.28,57.66,40,0
    .goto Eversong Woods,64.60,61.15,40,0
    .goto Eversong Woods,63.72,64.26,40,0
    .goto Eversong Woods,62.22,65.24,40,0
    .goto Eversong Woods,60.20,65.87,40,0
    .goto Eversong Woods,68.15,68.11,40,0
    .goto Eversong Woods,65.72,69.53,40,0
    .goto Eversong Woods,60.08,66.06,40,0
    .goto Eversong Woods,63.21,64.35,40,0
    .goto Eversong Woods,64.00,63.93,40,0
    .goto Eversong Woods,64.54,61.08,40,0
    .goto Eversong Woods,62.92,61.12,40,0
    .goto Eversong Woods,61.72,58.56,40,0
    .goto Eversong Woods,63.25,58.12,40,0
    .goto Eversong Woods,59.62,57.24
    >>Kill |cFFFF5722Springpaw Stalkers|r and |cFFFF5722Elder Springpaws|r. Loot them for their |cFF00BCD4Pelts|r
    .complete 8491,1 --Collect Springpaw Pelt (x6)
    .mob Springpaw Stalker
    .mob Elder Springpaw
step << Undead/BloodElf
    #completewith Spire
    +|cFFFCDC00Remember to NOT sell your|r |T133974:0|t[Springpaw Appetizers] |cFFFCDC00and|r |T132798:0|t[Suntouched Special Reserve] << Warlock
    +|cFFFCDC00Remember to NOT sell your|r |T133974:0|t[Springpaw Appetizers] << !Warlock
step << !Troll Hunter
    .goto Eversong Woods,60.32,62.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Paelarin|r
    >>|cFF0E8312Buy a|r |T135489:0|t[Laminated Recurve Bow] |cFF0E8312from|r |cFF00FF25Paelarin|r
    .collect 2507,1,9144,1 --Laminated Recurve Bow (1)
    .target Paelarin
    .money <0.1752 << Orc/Troll
    .money <0.1664 << BloodElf
    .itemStat 16,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.5
step << !Troll Hunter
    #completewith HunterTrain
    +Equip the |T135489:0|t[Laminated Recurve Bow]
    .use 2507
    .itemcount 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.5
step
    #completewith next
    .goto Eversong Woods,59.53,62.16,12,0
    .goto Eversong Woods,59.82,61.91,12,0
    .goto Eversong Woods,59.82,61.91,10 >> Travel up the ramp toward |cFF00FF25Duskwither|r
step
    #label Spire
    .goto Eversong Woods,60.31,61.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Duskwither|r
    .turnin 8890 >> Turn in Word from the Spire
    .turnin 8891 >> Turn in Abandoned Investigations
    .target Magister Duskwither
step << Mage
    .goto Eversong Woods,55.70,54.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Antheol|r
    .turnin 9403 >>Turn in The Purest Water
    .accept 9404 >>Accept Recently Living
    .target Instructor Antheol
step << !Warlock
    #completewith SMtraining01
    .goto Eversong Woods,56.51,49.61,25,0
    .goto Silvermoon City,73.39,59.65
    .zone Silvermoon City >>Enter Silvermoon
step << Druid
    .goto Silvermoon City,72.53,56.24,10,0
    .goto Silvermoon City,71.55,55.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Harene|r
    .train 8936 >> Train your class spells
    .target Harene Plainwalker
	.xp <12,1
	.xp >14,1
step << Druid
    #label SMtraining01
    .goto Silvermoon City,72.53,56.24,10,0
    .goto Silvermoon City,71.55,55.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Harene|r
    .train 782 >> Train your class spells
    .target Harene Plainwalker
	.xp <14,1
step << !Orc !Troll !Tauren !Warlock !Rogue
    #completewith next
    .goto Silvermoon City,73.39,59.65,30,0
    .goto Silvermoon City,78.28,59.34,8,0
    .goto Silvermoon City,78.36,60.14,8 >> Go inside the Inn
step << !Orc !Troll !Tauren !Warlock !Rogue
    .goto Silvermoon City,79.50,58.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Suntouched|r
    >>|cFF0E8312Buy the|r |T132798:0|t[Suntouched Special Reserve] |cFF0E8312from him|r
    .collect 22775,1,9067,1 --Suntouched Special Reserve (1)
    .target Vinemaster Suntouched
step << !BloodElf Hunter
    #completewith next
    .goto Silvermoon City,73.39,59.65,30,0
    .goto Silvermoon City,78.28,59.34,8,0
    .goto Silvermoon City,78.36,60.14,8 >> Go inside the Inn. Exit out the other side
step << BloodElf Hunter
    #completewith next
    .goto Silvermoon City,80.90,57.53,8,0
    .goto Silvermoon City,82.04,58.31,8 >>Exit the other side of the Inn
step << Priest/Mage
    #completewith SMtraining01
    .goto Silvermoon City,75.95,52.92,30,0
    .goto Silvermoon City,62.89,31.26,30,0
    .goto Silvermoon City,57.45,24.46,15,0
    .goto Silvermoon City,55.31,24.96,15,0 << Priest
    .goto Silvermoon City,57.21,21.25,15,0 << Mage
    .goto Silvermoon City,55.38,26.76,12 >> Travel toward |cFF00FF25Lotheolan|r << Priest
    .goto Silvermoon City,57.16,18.85,12 >> Travel toward |cFF00FF25Zaedana|r << Mage
    .cooldown item,6948,<0
step << Priest
    .goto Silvermoon City,55.38,26.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Lotheolan|r
    .train 1244 >> Train your class spells
    .target Lotheolan
    .cooldown item,6948,<0
	.xp <12,1
	.xp >14,1
step << Priest
    #label SMtraining01
    .goto Silvermoon City,55.38,26.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Lotheolan|r
    .train 8122 >> Train your class spells
    .target Lotheolan
    .cooldown item,6948,<0
	.xp <14,1
step << Mage
    .goto Silvermoon City,57.16,18.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Zaedana|r
    .train 145 >> Train your class spells
    .cooldown item,6948,<0
	.xp <12,1
	.xp >14,1
step << Mage
    #label SMtraining01
    .goto Silvermoon City,57.16,18.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Zaedana|r
    .train 1460 >> Train your class spells
    .cooldown item,6948,<0
	.xp <14,1
step << Rogue
    #completewith Zelanis
    .goto Silvermoon City,73.39,59.65,30,0
    .goto Silvermoon City,76.55,52.05,20,0
    .goto Silvermoon City,79.70,52.16,20 >>Travel toward |cFF00FF25Zelanis|r
step << BloodElf Rogue
    .goto Silvermoon City,79.70,52.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Zelanis|r
    >>|cFFFCDC00Make sure you've trained|r |T133644:0|t[Pick Pocket] |cFFFCDC00and|r |T132320:0|t[Stealth] |cFFFCDC00for a quest later|r
    .accept 9532 >> Accept Find Keltus Darkleaf
    .train 2983 >>Train your class spells
    .target Zelanis
    .train 2983,1
    .xp <10,1
    .xp >14,1
step << BloodElf Rogue
    .goto Silvermoon City,79.70,52.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Zelanis|r
    >>|cFFFCDC00Make sure you've trained|r |T133644:0|t[Pick Pocket] |cFFFCDC00and|r |T132320:0|t[Stealth] |cFFFCDC00for a quest later|r
    .accept 9532 >> Accept Find Keltus Darkleaf
    .train 1758 >>Train your class spells
    .target Zelanis
    .train 1758,1
    .xp <14,1
step << BloodElf Rogue
    .goto Silvermoon City,79.70,52.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Zelanis|r
    >>|cFFFCDC00Make sure you've trained|r |T133644:0|t[Pick Pocket] |cFFFCDC00and|r |T132320:0|t[Stealth] |cFFFCDC00for a quest later|r
    .accept 9532 >> Accept Find Keltus Darkleaf
    .target Zelanis
step << BloodElf Rogue
    .goto Silvermoon City,79.70,52.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Zelanis|r
    .train 921 >> Train |T133644:0|t[Pick Pocket] for a quest later
    .train 1784 >> Train |T132320:0|t[Stealth] for a quest later
    .train 921,1
    .train 1784,1
    .target Zelanis
step << BloodElf Rogue
    .goto Silvermoon City,79.70,52.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Zelanis|r
    .train 1784 >> Train |T132320:0|t[Stealth] for a quest later
    .target Zelanis
step << BloodElf Rogue
    #label Zelanis
    .goto Silvermoon City,79.70,52.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Zelanis|r
    .train 921 >> Train |T133644:0|t[Pick Pocket] for a quest later
    .target Zelanis
step << !BloodElf Rogue
    .goto Silvermoon City,79.70,52.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Zelanis|r
    .train 2983 >>Train your class spells
    .target Zelanis
    .xp <10,1
    .xp >14,1
step << !BloodElf Rogue
    #label Zelanis
    .goto Silvermoon City,79.70,52.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Zelanis|r
    .train 1758 >>Train your class spells
    .target Zelanis
    .xp <14,1
step << Rogue
    #completewith next
    .goto Silvermoon City,73.39,59.65,30,0
    .goto Silvermoon City,78.28,59.34,8,0
    .goto Silvermoon City,78.36,60.14,8 >> Go inside the Inn
step << Rogue
    #label SMtraining01
    .goto Silvermoon City,79.50,58.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Suntouched|r
    >>|cFF0E8312Buy a|r |T132798:0|t[Suntouched Special Reserve] |cFF0E8312from him|r
    .collect 22775,1,9067,1 --Suntouched Special Reserve (1)
    .target Vinemaster Suntouched
step << Rogue
    #completewith next
    .goto Silvermoon City,80.90,57.53,8,0
    .goto Silvermoon City,82.04,58.31,8 >>Exit the other side of the Inn
step << Paladin/Rogue
    #completewith next
    .goto Silvermoon City,83.52,48.68,30,0
    .goto Silvermoon City,83.50,43.40,20,0
    .goto Silvermoon City,78.90,43.25,20 >>Travel toward |cFF00FF25Belil|r
step << Paladin/Rogue
    .goto Silvermoon City,78.90,43.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Belil|r
    .train 2580 >> Train |T136248:0|t[Mining]. This will allow you to find |T135232:0|t[Rough Stones] from nodes in order to craft |T135248:0|t[Sharpening Stones] (+2 Weapon Damage for 1 hour) << Paladin/BloodElf Rogue/Undead Rogue
    .target Belil
    .skill blacksmithing,1
step << Paladin/Rogue
    .goto Silvermoon City,78.41,42.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Zelan|r
    >>|cFF0E8312Buy a|r |T134708:0|t[Mining Pick] |cFF0E8312from|r |cFF00FF25Zelan|r
    .collect 2901,1,9144,1 --Mining Pick (1)
    .target Zelan
    .skill blacksmithing,1
    .skill mining,1
step << Paladin/Rogue
    #completewith Defending
    .cast 2580 >> Cast |T136025:0|t[Find Minerals]
step << Paladin
    #completewith FirstTrialB
    .goto Silvermoon City,89.02,37.03,12,0
    .goto Silvermoon City,89.26,35.20,15 >>Travel toward |cFF00FF25Bloodvalor|r
step << Paladin
    .goto Silvermoon City,89.26,35.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Bloodvalor|r
    .turnin 9677 >>Turn in Summons from Knight-Lord Bloodvalor
    .accept 9678 >>Accept The First Trial
    .target Knight-Lord Bloodvalor
    .isOnQuest 9677
step << Paladin
    #label FirstTrialB
    .goto Silvermoon City,89.26,35.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Bloodvalor|r
    .accept 9678 >>Accept The First Trial
    .target Knight-Lord Bloodvalor
step << Paladin
    #label SMtraining01
    .goto Silvermoon City,91.19,36.94,-1
    .goto Silvermoon City,91.14,38.10,-1
	>>|cFFFCDC00Jump onto one of the benches below to avoid walking up the stairs|r
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Ithelis|r or |cFF00FF25Osselan|r
    .train 19834 >>Train your class spells
	.target Ithelis
	.target Osselan
	.xp <12,1
	.xp >14,1
step << Paladin
    .goto Silvermoon City,91.19,36.94,-1
    .goto Silvermoon City,91.14,38.10,-1
	>>|cFFFCDC00Jump onto one of the benches below to avoid walking up the stairs|r
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Ithelis|r or |cFF00FF25Osselan|r
    .train 647 >>Train your class spells
	.target Ithelis
	.target Osselan
	.xp <14,1
step << Hunter
    #completewith next
    .goto Silvermoon City,83.52,48.68,30,0
    .goto Silvermoon City,83.50,43.40,20,0
    .goto Silvermoon City,82.20,28.06,15 >>Travel toward |cFF00FF25Celana|r
step << Hunter
    .goto Silvermoon City,86.24,35.45
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Celana|r
    >>|cFF0E8312Buy a|r |T135346:0|t[Reinforced Bow] |cFF0E8312from her|r
    .collect 3026,1,9144,1 --Reinforced Bow (1)
    .target Celana
    .money <0.3621 << BloodElf
    .money <0.3812 << Troll/Orc
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.7
step << Hunter
    #completewith SMtraining01
    .goto Silvermoon City,83.45,30.13,15,0
    .goto Silvermoon City,83.45,28.56,15,0
    .goto Silvermoon City,82.20,28.06,15 >>Travel toward |cFF00FF25Halthenis|r << BloodElf
    .goto Silvermoon City,84.71,28.05,15 >>Travel toward |cFF00FF25Zandine|r << !BloodElf
    .itemcount 3026,1
step << Hunter
    #completewith next
    .goto Silvermoon City,83.52,48.68,30,0
    .goto Silvermoon City,83.50,43.40,20,0
    .goto Silvermoon City,83.45,30.13,15,0
    .goto Silvermoon City,83.45,28.56,15,0
    .goto Silvermoon City,82.20,28.06,15 >>Travel toward |cFF00FF25Halthenis|r << BloodElf
    .goto Silvermoon City,84.71,28.05,15 >>Travel toward |cFF00FF25Zandine|r << !BloodElf
    .itemcount 3026,<1
step << BloodElf Hunter
    .goto Silvermoon City,82.20,28.06
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Halthenis|r
    .turnin 9673 >> Turn in Beast Training
    .train 4187 >>Train your pet spells << tbc
    .target Halthenis
step << Hunter
    #label SMtraining01
    .goto Silvermoon City,82.39,26.09 << BloodElf
    .goto Silvermoon City,84.71,28.05 << !BloodElf
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Tana|r << BloodElf
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Zandine|r << !BloodElf
    >>|cFFFCDC00Drag|r |T132162:0|t[Beast Training] |cFFFCDC00onto your Action Bars. Teach skills to your pet|r << BloodElf tbc
    .train 14281 >> Train your class spells
    .target Tana << BloodElf
    .target Zandine << !BloodElf
	.xp <12,1
step << Hunter
    .goto Silvermoon City,86.24,35.45
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Celana|r
    >>|cFF0E8312Buy a|r |T135346:0|t[Reinforced Bow] |cFF0E8312from her|r
    .collect 3026,1,9144,1 --Reinforced Bow (1)
    .target Celana
    .money <0.3621 << BloodElf
    .money <0.3812 << Troll/Orc
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.7
step << Rogue
    #completewith Louis
    .goto Silvermoon City,62.89,31.26,30,0
    .goto Silvermoon City,51.83,17.91,30,0
    .goto Silvermoon City,49.45,15.00
    .zone Undercity >>Take the Orb of Translocation to Undercity
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
    #completewith Louis
    .goto Undercity,59.81,11.33,20,0
    .goto Undercity,66.08,18.24,30,0
    .goto Undercity,66.04,32.97,30,0
    .goto Undercity,65.97,44.08,30,0
    .goto Undercity,60.52,44.02,10,0
    .goto Undercity,60.07,47.70,10 >>Take the lift down to the Undercity
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << !Undead Rogue
    .goto Undercity,63.25,48.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Michael|r
    .fp Undercity >> Get the Undercity Flight Path
    .target Michael Garrett
    .itemcount 851,<2
    .money <0.4046 << Troll/Orc
    .money <0.3844 << Undead/BloodElf
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << !Undead Rogue
    .goto Undercity,63.25,48.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Michael|r
    .fp Undercity >> Get the Undercity Flight Path
    .target Michael Garrett
    .itemcount 851,<1
    .money <0.2023 << Troll/Orc
    .money <0.1922 << Undead/BloodElf
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << !Undead Rogue
    .goto Undercity,63.25,48.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Michael|r
    .fp Undercity >> Get the Undercity Flight Path
    .target Michael Garrett
    .itemcount 2027,<2
    .money <0.7632 << Troll/Orc
    .money <0.7250 << Undead/BloodElf
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << !Undead Rogue
    .goto Undercity,63.25,48.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Michael|r
    .fp Undercity >> Get the Undercity Flight Path
    .target Michael Garrett
    .itemcount 2027,<1
    .money <0.3816 << Troll/Orc
    .money <0.3625 << Undead/BloodElf
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
    .goto Undercity,61.15,40.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Louis|r
    >>|cFF0E8312Buy two|r |T135346:0|t[Cutlasses] |cFF0E8312from him|r
    .collect 851,2,9144,1 --Cutlass (2)
    .target Louis Warren
    .itemcount 851,<2
    .money <0.4046 << Troll/Orc
    .money <0.3844 << Undead/BloodElf
    .xp >12,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
    .goto Undercity,61.15,40.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Louis|r
    >>|cFF0E8312Buy a|r |T135346:0|t[Cutlass] |cFF0E8312from him|r
    .collect 851,1,9144,1 --Cutlass (1)
    .target Louis Warren
    .itemcount 851,<1
    .money <0.2023 << Troll/Orc
    .money <0.1922 << Undead/BloodElf
    .xp >12,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
    .goto Undercity,61.15,40.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Louis|r
    >>|cFF0E8312Buy two|r |T135343:0|t[Scimitars] |cFF0E8312from him|r
    .collect 2027,2,9144,1 --Scimitar (2)
    .target Louis Warren
    .itemcount 2027,<2
    .money <0.7632 << Troll/Orc
    .money <0.7250 << Undead/BloodElf
    .xp <12,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
step << Rogue
    .goto Undercity,61.15,40.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Louis|r
    >>|cFF0E8312Buy a|r |T135343:0|t[Scimitar] |cFF0E8312from him|r
    .collect 2027,1,9144,1 --Scimitar (1)
    .target Louis Warren
    .itemcount 2027,<1
    .money <0.3816 << Troll/Orc
    .money <0.3625 << Undead/BloodElf
    .xp <12,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
step << Rogue
    .goto Undercity,61.15,40.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Louis|r
    >>|cFF0E8312Buy two|r |T135346:0|t[Cutlasses] |cFF0E8312from him|r
    .collect 851,2,9144,1 --Cutlass (2)
    .target Louis Warren
    .itemcount 2027,<2 --Scimitar (2)
    .money <0.4046 << Troll/Orc
    .money <0.3844 << Undead/BloodElf
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
    #label Louis
    .goto Undercity,61.15,40.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Louis|r
    >>|cFF0E8312Buy a|r |T135346:0|t[Cutlass] |cFF0E8312from him|r
    .collect 851,1,9144,1 --Cutlass (1)
    .target Louis Warren
    .itemcount 2027,<1 --Scimitar (1)
    .money <0.2023 << Troll/Orc
    .money <0.1922 << Undead/BloodElf
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
    +Equip the |T135346:0|t[Cutlasses] in your mainhand and offhand
    .use 851
    .itemcount 851,2
    .itemStat 16,QUALITY,<7
    .itemStat 17,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
    +Equip the |T135346:0|t[Cutlass] in your mainhand
    .use 851
    .itemcount 851,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << skip
    +Equip the |T135346:0|t[Cutlass] in your offhand
    .use 851
    .itemcount 851,1
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
--VV WIP
step << Rogue
    +Equip the |T135343:0|t[Scimitars] in your mainhand and offhand
    .use 2027
    .itemcount 2027,2
    .itemStat 16,QUALITY,<7
    .itemStat 17,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .xp <14,1
step << Rogue
    +Equip the |T135343:0|t[Scimitar] in your mainhand
    .use 2027
    .itemcount 2027,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .xp <14,1
step << skip
    +Equip the |T135343:0|t[Scimitar] in your offhand
    .use 2027
    .itemcount 2027,1
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .xp <14,1
--VV WIP
step << Rogue
    #completewith Defending
    .hs >> Hearth to Falconwing Square
    .cooldown item,6948,>0
step << Rogue
    #completewith next
    .goto Undercity,60.07,47.70,10,0
    .goto Undercity,60.52,44.02,10,0
    .goto Undercity,65.97,44.08,30,0
    .goto Undercity,66.04,32.97,30,0
    .goto Undercity,66.08,18.24,30,0
    .goto Undercity,59.81,11.33,20 >>Take the lift back up toward Silvermoon
    .cooldown item,6948,<0
    .zoneskip Silvermoon City
    .zoneskip Eversong Woods
    .zoneskip Ghostlands
step << Rogue
    .goto Undercity,59,91,11.32,20,0
    .goto Undercity,54.67,11.25
    .zone Silvermoon City >> Take the Orb of Translocation to Silvermoon City
    .cooldown item,6948,<0
    .zoneskip Eversong Woods
    .zoneskip Ghostlands
step << skip
    .goto Silvermoon City,53.926,71.029
    >>Inside the building
    .turnin 9133 >> Turn in Fly to Silvermoon City
    .accept 9134 >> Accept Skymistress Gloaming
    --VV << BloodElf Hunter
step << skip
    .goto Eversong Woods,54.4,50.8
    >>Exit Silvermoon City
    .turnin 9134 >> Turn in Skymistress Gloaming
    .accept 9135 >> Accept Return to Quartermaster Lymel
--VV << BloodElf Hunter
step << skip
    #completewith next
    .goto Eversong Woods,54.4,50.8
    .fly Tranquillien >> Fly to Tranquillien
    --VV << BloodElf Hunter
step << skip
    .goto Ghostlands,47.3,29.1
    .turnin 9135 >> Turn in Return to Quartermaster Lymel
    --VV << BloodElf Hunter
step << !Orc !Troll !Tauren !Rogue/!BloodElf Warlock
    #completewith SGrove
    .hs >> Hearth to Falconwing Square
    .cooldown item,6948,>0
step << !Warlock
    #completewith SGrove
    .goto Eversong Woods,56.43,49.91
    .zone Eversong Woods >>Exit Silvermoon
    .cooldown item,6948,<0 << Undead/BloodElf
step << Mage/Priest/Undead Warlock
    #completewith next
    .goto Eversong Woods,47.79,47.35,8,0
    .goto Eversong Woods,47.86,47.76,8 >> Go inside the Inn
    .cooldown item,6948,>0
	.xp <12,1
step << Mage/Priest/Undead Warlock
    #completewith FalconPMTrain2
    .goto Eversong Woods,48.27,47.05,8,0
    .goto Eversong Woods,48.06,47.11,8 >> Go upstairs
    .cooldown item,6948,>0
	.xp <12,1
step << Priest
    .goto Eversong Woods,47.85,47.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Ponaris|r upstairs
    .train 1244 >>Train your class spells
    .target Ponaris
    .cooldown item,6948,>0
	.xp <12,1
    .xp >14,1
step << Priest
    #label FalconPMTrain2
    .goto Eversong Woods,47.85,47.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Ponaris|r upstairs
    .train 8122 >>Train your class spells
    .target Ponaris
    .cooldown item,6948,>0
	.xp <14,1
step << Mage
    .goto Eversong Woods,48.04,48.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Garridel|r upstairs
    .train 7300 >>Train your class spells
    .target Garridel
    .cooldown item,6948,>0
	.xp <12,1
    .xp >14,1
step << Mage
    #label FalconPMTrain2
    .goto Eversong Woods,48.04,48.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Garridel|r upstairs
    .train 145 >>Train your class spells
    .target Garridel
    .cooldown item,6948,>0
	.xp <14,1
step << Undead Warlock
    .goto Eversong Woods,48.23,47.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Celoenus|r upstairs
    .train 705 >>Train your class spells
    .target Celoenus
    .cooldown item,6948,>0
    .xp <12,1
    .xp >14,1
step << Undead Warlock
    #completewith FalconPMTrain2
    .goto Eversong Woods,48.23,47.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Celoenus|r upstairs
    .train 6222 >>Train your class spells
    .target Celoenus
    .cooldown item,6948,>0
    .xp <14,1
step << BloodElf/Undead
    .goto Eversong Woods,46.63,63.83,40,0
    .goto Eversong Woods,45.04,65.51,40,0
    .goto Eversong Woods,46.57,65.84,40,0
    .goto Eversong Woods,45.24,67.85,40,0
    .goto Eversong Woods,46.66,67.71,40,0
    .goto Eversong Woods,47.05,68.83,40,0
    .goto Eversong Woods,42.89,65.47,40,0
    .goto Eversong Woods,38.45,65.63
    >>Kill |cFFFF5722Springpaw Stalkers|r. Loot them for their |cFF00BCD4Pelts|r
    .complete 8491,1 --Collect Springpaw Pelt (x6)
    .target Springpaw Stalker
step << Undead/BloodElf
    #label Defending
    .goto Eversong Woods,46.93,71.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Sareyn|r
    .turnin 9252 >> Turn in Defending Fairbreeze Village
    .accept 9253 >> Accept Runewarden Deryan
    .target Ranger Sareyn
--VV BloodElf !Hunter
step << Undead/BloodElf
    .goto Eversong Woods,44.72,69.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Velan|r
    .turnin 8491 >> Turn in Pelt Collection
    .target Velan Brightoak
--VV !Hunter
step << Undead/BloodElf
    .goto Eversong Woods,44.0,70.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Halis|r
    >>|cFF0E8312Buy the|r |T134285:0|t[Bundle of Fireworks] |cFF0E8312from him|r
    .collect 22777,1 --Bundle of Fireworks (1)
    .target Halis Dawnstrider
--VV !Hunter
step << Undead/BloodElf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Landra|r, |cFF00FF25Degolien|r upstairs, and |cFF00FF25Ardeyn|r downstairs
    .accept 9144 >>Accept Missing in the Ghostlands
    .turnin 9255 >>Turn in Research Notes
    .goto Eversong Woods,44.03,70.76
    .turnin 9363 >>Turn in Warning Fairbreeze Village
    .goto Eversong Woods,43.61,70.66,10,0
    .goto Eversong Woods,43.34,70.82
    .accept 9258 >>Accept The Scorched Grove
    .goto Eversong Woods,43.58,71.20
    .target Magistrix Landra Dawnstrider
    .target Ranger Degolien
    .target Ardeyn Riverwind
    .isQuestAvailable 9144
    --VV !Hunter
    --VV 9144 and 9258 need to hide if in qlog
step << Undead/BloodElf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Landra|r, |cFF00FF25Degolien|r upstairs, and |cFF00FF25Ardeyn|r downstairs
    .turnin 9255 >>Turn in Research Notes
    .goto Eversong Woods,44.03,70.76
    .turnin 9363 >>Turn in Warning Fairbreeze Village
    .goto Eversong Woods,43.61,70.66,10,0
    .goto Eversong Woods,43.34,70.82
    .accept 9258 >>Accept The Scorched Grove
    .goto Eversong Woods,43.58,71.20
    .target Magistrix Landra Dawnstrider
    .target Ranger Degolien
    .target Ardeyn Riverwind
    --VV !Hunter
    --VV 9258 needs to hide if in qlog
step << !Undead !BloodElf
    #label Defending
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Landra|r, |cFF00FF25Degolien|r upstairs, and |cFF00FF25Ardeyn|r downstairs
    .accept 9144 >>Accept Missing in the Ghostlands
    .goto Eversong Woods,44.03,70.76
    .turnin 9363 >>Turn in Warning Fairbreeze Village
    .goto Eversong Woods,43.61,70.66,10,0
    .goto Eversong Woods,43.34,70.82
    .accept 9258 >>Accept The Scorched Grove
    .goto Eversong Woods,43.58,71.20
    .target Magistrix Landra Dawnstrider
    .target Ranger Degolien
    .target Ardeyn Riverwind
step << Undead/BloodElf
    .goto Eversong Woods,38.14,73.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Saltheril|r
    .turnin 9067 >>Turn in The Party Never Ends
    .target Lord Saltheril
step << Undead/BloodElf
    #completewith next
    .destroy 23500 >> Delete |T133461:0|t[Saltheril's Haven Party Invitation] from your bags, as it's no longer needed
step
    #label SGrove
    .goto Eversong Woods,34.06,80.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Larianna|r
    .turnin 9258 >> Turn in The Scorched Grove
    .accept 8473 >> Accept A Somber Task
    .target Larianna Riverwind
    --VV !BloodElf/!Hunter
step
    #completewith next
    >>Kill |cFFFF5722Withered Green Keepers|r
    >>|cFFFCDC00Be careful as they have|r |T132282:0|t[Strike] |cFFFCDC00which deals double their normal damage|r
    .complete 8473,1 --Kill Withered Green Keeper (x10)
    .mob Withered Green Keeper
    --VV !BloodElf/!Hunter
step
    .goto Eversong Woods,35.10,84.05,10,0
    .goto Eversong Woods,34.91,84.34
    >>Kill |cFFFF5722Old Whitebark|r. Loot him for |T133280:0|t[|cFF00BCD4Old Whitebark's Pendant|r]
    >>|cFFFCDC00Use |T133280:0|t[|cFF00BCD4Old Whitebark's Pendant|r] to start the quest|r
    >>|cFFFF5722Old Whitebark|r |cFFFCDC00has a 7 minute 30 second respawn time|r
    .collect 23228,1,8474,1 --Collect Old Whitebark's Pendant (x1)
    .accept 8474 >> Accept Old Whitebark's Pendant
    .mob Old Whitebark
    .use 23228
    --VV !BloodElf/!Hunter
step
    .loop 40,Eversong Woods,36.07,83.10,36.21,85.47,33.24,87.69,32.05,87.25,32.63,83.57,33.46,81.99,34.47,83.08,36.07,83.10
    >>Kill |cFFFF5722Withered Green Keepers|r
    >>|cFFFCDC00Be careful as they have|r |T132282:0|t[Strike] |cFFFCDC00which deals double their normal damage|r
    .complete 8473,1 --Kill Withered Green Keeper (x10)
    .mob Withered Green Keeper
    --VV !BloodElf/!Hunter
step
    .goto Eversong Woods,34.06,80.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Larianna|r
    .turnin 8473 >> Turn in A Somber Task
    .turnin 8474 >> Turn in Old Whitebark's Pendant
    .accept 10166 >> Accept Whitebark's Memory
    .target Larianna Riverwind
    --VV !BloodElf/!Hunter
step << Rogue
    +Equip the |T135343:0|t[Scimitars] in your mainhand and offhand
    .use 2027
    .itemcount 2027,2
    .itemStat 16,QUALITY,<7
    .itemStat 17,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .xp <14,1
step << Rogue
    +Equip the |T135343:0|t[Scimitar] in your mainhand
    .use 2027
    .itemcount 2027,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .xp <14,1
step << skip
    +Equip the |T135343:0|t[Scimitar] in your offhand
    .use 2027
    .itemcount 2027,1
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .xp <14,1
--VV WIP
step
    #completewith next
    .goto Eversong Woods,37.79,86.25
    .cast 33980 >> Use |T133280:0|t[|cFF00BCD4Old Whitebark's Pendant|r] to summon |cFFFF5722Whitebark's Spirit|r
    .use 28209
    .isOnQuest 10166
    --VV !BloodElf/!Hunter
step
    .goto Eversong Woods,37.79,86.25
    >>Defeat |cFFFF5722Whitebark's Spirit|r
    >>Talk to |cFF00FF25Whitebark's Spirit|r after defeating him
    .turnin 10166 >> Turn in Whitebark's Memory
    .target Whitebark's Spirit
    .use 28209
step << Undead/BloodElf
    .goto Eversong Woods,44.19,85.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Deryan|r
    .turnin 9253 >> Turn in Runewarden Deryan
    .target Runewarden Deryan
step << Mage
    .goto Eversong Woods,53.02,82.14,40,0
    .goto Eversong Woods,53.85,80.72,40,0
    .goto Eversong Woods,53.58,78.32,40,0
    .goto Eversong Woods,53.51,77.64,40,0
    .goto Eversong Woods,55.14,76.10,40,0
    .goto Eversong Woods,55.63,74.22,40,0
    .goto Eversong Woods,53.02,82.14,40,0
    .goto Eversong Woods,53.85,80.72,40,0
    .goto Eversong Woods,53.58,78.32,40,0
    .goto Eversong Woods,53.51,77.64,40,0
    .goto Eversong Woods,55.14,76.10,40,0
    .goto Eversong Woods,55.63,74.22
    >>Kill |cFFFF5722Eversong Green Keepers|r. Loot them for their |cFF00BCD4Living Branch|r
    .complete 9404,1 --Living Branch (x1)
    .mob Eversong Green Keeper
step << Undead/BloodElf
    .abandon 8490 >>Abandon Powering our Defenses
    --VV Undead/BloodElf !Hunter
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
<< Horde !Warrior !Shaman
#name 12-16 Ghostlands
#next 16-20 Ghostlands
#version 1
#group RestedXP Horde 1-30

step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Dawnstrider|r and |cFF00FF25Thedra|r
    .turnin 9144 >> Turn in Missing in the Ghostlands
    .goto Eversong Woods,48.98,88.99
    .accept 9147 >> Accept The Fallen Courier
    .goto Eversong Woods,49.02,89.05
    .target Courier Dawnstrider
    .target Apothecary Thedra
step << Rogue
    +Equip the |T135343:0|t[Scimitars] in your mainhand and offhand
    .use 2027
    .itemcount 2027,2
    .itemStat 16,QUALITY,<7
    .itemStat 17,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .xp <14,1
step << Rogue
    +Equip the |T135343:0|t[Scimitar] in your mainhand
    .use 2027
    .itemcount 2027,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .xp <14,1
step << skip
    +Equip the |T135343:0|t[Scimitar] in your offhand
    .use 2027
    .itemcount 2027,1
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .xp <14,1
--VV WIP
step << BloodElf Warlock
    #completewith next
    >>Kill |cFFFF5722Starving Ghostclaws|r and |cFFFF5722Mistbats|r. Loot them for their |cFF00BCD4Blood Samples|r
    .complete 9147,1 --Collect Plagued Blood Sample (x4)
    .mob Starving Ghostclaw
    .mob Mistbat
step << BloodElf Warlock
    .goto Ghostlands,43.66,15.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cFF00FF25Purple Shard|r on the ground
    .accept 9619 >>Accept The Rune of Summoning
step << BloodElf Warlock
    #completewith next
    .goto Ghostlands,27.51,15.75,10,0
    .goto Ghostlands,27.35,15.01,8,0
    .goto Ghostlands,26.17,15.61,8,0
    .goto Ghostlands,26.09,14.56,8,0
    .goto Ghostlands,26.44,14.24,8,0
    .goto Ghostlands,26.74,14.38,8 >>Go upstairs
step << BloodElf Warlock
    #completewith next
    .goto Ghostlands,26.99,15.24
    .cast 30208 >>Use the |T134078:0|t[Voidstone] to summon a |cFFFF5722Summoned Voidwalker|r
    .use 23732
step << BloodElf Warlock
    .goto Ghostlands,26.99,15.24
    >>Kill the |cFFFF5722Summoned Voidwalker|r
    .complete 9619,1 --Summoned Voidwalker (1)
    .mob Summoned Voidwalker
    .use 23732
step
    .goto Ghostlands,50.01,13.00,40,0
    .goto Ghostlands,49.45,13.55,40,0
    .goto Ghostlands,49.12,15.08,40,0
    .goto Ghostlands,48.42,15.77,40,0
    .goto Ghostlands,47.81,12.66,40,0
    .goto Ghostlands,46.75,13.42,40,0
    .goto Ghostlands,45.74,14.35,40,0
    .goto Ghostlands,44.94,16.92,40,0
    .goto Ghostlands,44.84,18.84,40,0
    .goto Ghostlands,45.36,19.92,40,0
    .goto Ghostlands,47.43,20.19,40,0
    .goto Ghostlands,48.56,19.02,40,0
    .goto Ghostlands,49.52,17.34,40,0
    .goto Ghostlands,51.08,16.71,40,0
    .goto Ghostlands,52.00,18.05,40,0
    .goto Ghostlands,55.22,14.72,40,0
    .goto Ghostlands,50.01,13.00,40,0
    .goto Ghostlands,49.45,13.55,40,0
    .goto Ghostlands,49.12,15.08,40,0
    .goto Ghostlands,48.42,15.77,40,0
    .goto Ghostlands,47.81,12.66
    >>Kill |cFFFF5722Starving Ghostclaws|r and |cFFFF5722Mistbats|r. Loot them for their |cFF00BCD4Blood Samples|r
    .complete 9147,1 --Collect Plagued Blood Sample (x4)
    .mob Starving Ghostclaw
    .mob Mistbat
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Thedra|r and |cFF00FF25Dawnstrider|r
    .turnin 9147 >> Turn in The Fallen Courier
    .goto Eversong Woods,49.02,89.05
    .accept 9148 >> Accept Delivery to Tranquillien
    .goto Eversong Woods,48.98,88.99
    .target Apothecary Thedra
    .target Courier Dawnstrider
step << Rogue
    +Equip the |T135343:0|t[Scimitars] in your mainhand and offhand
    .use 2027
    .itemcount 2027,2
    .itemStat 16,QUALITY,<7
    .itemStat 17,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .xp <14,1
step << Rogue
    +Equip the |T135343:0|t[Scimitar] in your mainhand
    .use 2027
    .itemcount 2027,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .xp <14,1
step << skip
    +Equip the |T135343:0|t[Scimitar] in your offhand
    .use 2027
    .itemcount 2027,1
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .xp <14,1
--VV WIP
step
    .goto Ghostlands,46.55,28.38,10,0
    .goto Ghostlands,46.08,28.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Vandril|r
    .turnin 9148 >> Turn in Delivery to Tranquillien
    .accept 9327 >> Accept The Forsaken << BloodElf
    .accept 9329 >> Accept The Forsaken << !BloodElf
    .target Arcanist Vandril
step << skip
    .goto Ghostlands,45.42,30.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Sunwing|r
    .fp Tranquillien >> Get the Tranquillien flight path
    .target Skymaster Sunwing
--VV !BloodElf/!Hunter
step << !BloodElf/!Warlock
    #xprate <1.5
    .goto Ghostlands,45.17,32.37,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Mavren|r, |cFF00FF25Lymel|r, |cFF00FF25Rathis|r, and |cFF00FF25Vandril|r << BloodElf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Mavren|r, |cFF00FF25Rathis|r, and |cFF00FF25Vandril|r << !BloodElf
    .turnin 9327 >> Turn in The Forsaken << BloodElf
    .turnin 9329 >> Turn in The Forsaken << !BloodElf
    .accept 9758 >> Accept Return to Arcanist Vandril
    .goto Ghostlands,44.77,32.44
    .accept 9130 >> Accept Goods from Silvermoon City << BloodElf
    .goto Ghostlands,47.34,29.26 << BloodElf
    .accept 9152 >> Accept Tomber's Supplies
    .goto Ghostlands,47.27,28.59,10,0
    .goto Ghostlands,47.14,28.30
    .turnin 9758 >> Turn in Return to Arcanist Vandril
    .accept 9138 >> Accept Suncrown Village
    .goto Ghostlands,46.55,28.38,10,0
    .goto Ghostlands,46.08,28.33
    .target High Executor Mavren
    .target Quartermaster Lymel
    .target Rathis Tomber
    .target Arcanist Vandril
step << BloodElf Warlock
    #xprate <1.5
    .goto Ghostlands,45.17,32.37,10,0
    .goto Ghostlands,44.77,32.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Mavren|r
    .turnin 9327 >> Turn in The Forsaken << BloodElf
    .turnin 9329 >> Turn in The Forsaken << !BloodElf
    .accept 9758 >> Accept Return to Arcanist Vandril
    .target High Executor Mavren
step << BloodElf Warlock
    #xprate >1.4999
    .goto Ghostlands,45.17,32.37,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Maltendis|r, |cFF00FF25Mavren|r, and |cFF00FF25Valwyn|r
    .accept 9199 >> Accept Troll Juju
    .goto Ghostlands,44.74,32.28
    .turnin 9327 >> Turn in The Forsaken << BloodElf
    .turnin 9329 >> Turn in The Forsaken << !BloodElf
    .accept 9758 >> Accept Return to Arcanist Vandril
    .goto Ghostlands,44.77,32.44
    .accept 9193 >> Accept Investigate the Amani Catacombs
    .goto Ghostlands,44.84,32.81
    .target Deathstalker Maltendis
    .target High Executor Mavren
    .target Advisor Valwyn
step << !BloodElf/!Warlock
    #xprate >1.4999
    .goto Ghostlands,45.17,32.37,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Maltendis|r, |cFF00FF25Mavren|r, |cFF00FF25Valwyn|r, |cFF00FF25Lymel|r, |cFF00FF25Rathis|r, and |cFF00FF25Vandril|r << BloodElf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Maltendis|r, |cFF00FF25Mavren|r, |cFF00FF25Valwyn|r, |cFF00FF25Rathis|r and |cFF00FF25Vandril|r << !BloodElf
    .accept 9199 >> Accept Troll Juju
    .goto Ghostlands,44.74,32.28
    .turnin 9327 >> Turn in The Forsaken << BloodElf
    .turnin 9329 >> Turn in The Forsaken << !BloodElf
    .accept 9758 >> Accept Return to Arcanist Vandril
    .goto Ghostlands,44.77,32.44
    .accept 9193 >> Accept Investigate the Amani Catacombs
    .goto Ghostlands,44.84,32.81
    .accept 9130 >> Accept Goods from Silvermoon City << BloodElf
    .goto Ghostlands,47.34,29.26 << BloodElf
    .accept 9152 >> Accept Tomber's Supplies
    .goto Ghostlands,47.27,28.59,10,0
    .goto Ghostlands,47.14,28.30
    .turnin 9758 >> Turn in Return to Arcanist Vandril
    .accept 9138 >> Accept Suncrown Village
    .goto Ghostlands,46.55,28.38,10,0
    .goto Ghostlands,46.08,28.33
    .target Deathstalker Maltendis
    .target High Executor Mavren
    .target Advisor Valwyn
    .target Quartermaster Lymel << !BloodElf
    .target Rathis Tomber
    .target Arcanist Vandril
step << BloodElf Warlock
    #sticky
    #label WPoster
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cFF00FF25Wanted Poster|r
    .accept 9156 >> Accept Wanted: Knucklerot and Luzran
    .goto Ghostlands,48.35,31.67
step << BloodElf Warlock
    #completewith next
    .goto Ghostlands,48.34,31.99,8,0
    .goto Ghostlands,48.91,32.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Kalarin|r
    .home >> Set your Hearthstone to Tranquillien
    .target Innkeeper Kalarin
step << BloodElf Warlock
    #requires WPoster
    #xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Lymel|r, |cFF00FF25Rathis|r, and |cFF00FF25Vandril|r
    .accept 9130 >> Accept Goods from Silvermoon City
    .goto Ghostlands,47.34,29.26
    .accept 9152 >> Accept Tomber's Supplies
    .goto Ghostlands,47.27,28.59,10,0
    .goto Ghostlands,47.14,28.30
    .turnin 9758 >> Turn in Return to Arcanist Vandril
    .accept 9138 >> Accept Suncrown Village
    .goto Ghostlands,46.55,28.38,10,0
    .goto Ghostlands,46.08,28.33
    .target Quartermaster Lymel
    .target Rathis Tomber
    .target Arcanist Vandril
step << BloodElf Warlock
    #requires WPoster
    #xprate >1.4999
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Lymel|r, |cFF00FF25Rathis|r, and |cFF00FF25Vandril|r << BloodElf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Rathis|r and |cFF00FF25Vandril|r << !BloodElf
    .accept 9130 >> Accept Goods from Silvermoon City << BloodElf
    .goto Ghostlands,47.34,29.26 << BloodElf
    .accept 9152 >> Accept Tomber's Supplies
    .goto Ghostlands,47.27,28.59,10,0
    .goto Ghostlands,47.14,28.30
    .turnin 9758 >> Turn in Return to Arcanist Vandril
    .accept 9138 >> Accept Suncrown Village
    .goto Ghostlands,46.55,28.38,10,0
    .goto Ghostlands,46.08,28.33
    .target Quartermaster Lymel
    .target Rathis Tomber
    .target Arcanist Vandril
step << skip
    >>Do NOT fly to Silvermoon City. Talk to the Flight Master.
    .goto Ghostlands,45.5,30.6
    .turnin 9130 >> Turn in Goods from Silvermoon City
    .accept 9133 >> Accept Fly to Silvermoon City
--BloodElf !Hunter !Warlock
step << BloodElf
    #xprate <1.5
    .goto Ghostlands,45.42,30.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Sunwing|r
    .turnin 9130 >> Turn in Goods from Silvermoon City
    .accept 9133 >> Accept Fly to Silvermoon City << Warlock/Priest
    .target Skymaster Sunwing
step << BloodElf
    #xprate >1.4999
    .goto Ghostlands,45.42,30.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Sunwing|r
    .turnin 9130 >> Turn in Goods from Silvermoon City
    .accept 9133 >> Accept Fly to Silvermoon City << Priest
    .target Skymaster Sunwing
step << BloodElf Warlock
    #completewith RuneOS
    .goto Ghostlands,45.42,30.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Sunwing|r
    .fly Silvermoon >> Fly to Silvermoon City
    .target Skymaster Sunwing
step << BloodElf Warlock
    #completewith RuneOS
    .goto Eversong Woods,56.51,49.61,25,0
    .goto Silvermoon City,73.39,59.65
    .zone Silvermoon City >>Enter Silvermoon
step << BloodElf Warlock
    #xprate <1.5
    .goto Silvermoon City,69.27,77.00,8,0
    .goto Silvermoon City,68.13,74.07,8,0
    .goto Silvermoon City,66.56,73.29,8,0
    .goto Silvermoon City,65.53,72.60,8,0
    .goto Silvermoon City,72.4,85.7,40,0
    .goto Silvermoon City,53.93,71.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Sathren|r
    .turnin 9133 >> Turn in Fly to Silvermoon City
    .accept 9134 >> Accept Skymistress Gloaming
    .target Sathren Azuredawn
step << BloodElf Warlock
    #xprate <1.5
    #completewith RuneOS
    .goto Silvermoon City,66.92,59.84,30,0
    .goto Silvermoon City,69.32,59.09,20,0
    .goto Silvermoon City,73.50,58.21,30,0
    .goto Silvermoon City,75.62,58.31,20,0
    .goto Silvermoon City,75.95,52.92,30,0
    .goto Silvermoon City,75.65,45.04,15,0
    .goto Silvermoon City,76.33,43.33,12 >>Go inside the building, then go downstairs
step << BloodElf Warlock
    #xprate >1.4999
    #completewith RuneOS
    .goto Silvermoon City,73.39,59.65,30,0
    .goto Silvermoon City,75.62,58.31,20,0
    .goto Silvermoon City,75.95,52.92,30,0
    .goto Silvermoon City,75.65,45.04,15,0
    .goto Silvermoon City,76.33,43.33,12 >>Go inside the building, then go downstairs
step << BloodElf Warlock
    .goto Silvermoon City,74.39,47.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Talionia|r
    .turnin 9619 >>Turnin The Rune of Summoning
    .train 705 >> Train your class spells
    .target Talionia
    .xp <12,1
    .xp >14,1
    .train 705,1
step << BloodElf Warlock
    .goto Silvermoon City,74.39,47.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Talionia|r
    .turnin 9619 >>Turnin The Rune of Summoning
    .train 6222 >> Train your class spells
    .target Talionia
    .xp <14,1
    .xp >16,1
    .train 6222,1
step << BloodElf Warlock
    .goto Silvermoon City,74.39,47.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Talionia|r
    .turnin 9619 >>Turnin The Rune of Summoning
    .train 1455 >> Train your class spells
    .target Talionia
    .xp <16,1
    .train 1455,1
step << BloodElf Warlock
    #label RuneOS
    .goto Silvermoon City,74.39,47.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Talionia|r
    .turnin 9619 >>Turnin The Rune of Summoning
    .target Talionia
step << BloodElf Warlock
    #completewith next
    .hs >> Hearth to Tranquillien
step << Rogue
    +Equip the |T135343:0|t[Scimitars] in your mainhand and offhand
    .use 2027
    .itemcount 2027,2
    .itemStat 16,QUALITY,<7
    .itemStat 17,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .xp <14,1
step << Rogue
    +Equip the |T135343:0|t[Scimitar] in your mainhand
    .use 2027
    .itemcount 2027,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .xp <14,1
step << skip
    +Equip the |T135343:0|t[Scimitar] in your offhand
    .use 2027
    .itemcount 2027,1
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .xp <14,1
--VV WIP
step
    .goto Ghostlands,57.54,14.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cFF00FF25Dying Blood Elf|r on the ground
    .accept 9315 >> Accept Anok'suten
    .target Dying Blood Elf
step << !Paladin
    #completewith next
    >>Kill |cFFFF5722Nerubis Guards|r
    .complete 9138,1 --Kill Nerubis Guard (x10)
    .mob Nerubis Guard
step << Paladin
    #completewith FirstT
    >>Kill |cFFFF5722Nerubis Guards|r
    .complete 9138,1 --Kill Nerubis Guard (x10)
    .mob Nerubis Guard
step
    .goto Ghostlands,59.47,12.43,20,0
    .goto Ghostlands,59.83,10.22,20,0
    .goto Ghostlands,58.92,9.19,20,0
    .goto Ghostlands,60.72,9.46,20,0
    .goto Ghostlands,61.74,9.63,20,0
    .goto Ghostlands,62.86,11.04,20,0
    .goto Ghostlands,63.26,9.50,20,0
    .goto Ghostlands,62.76,12.68,20,0
    .goto Ghostlands,63.52,13.39,20,0
    .goto Ghostlands,62.00,14.21,20,0
    .goto Ghostlands,60.70,14.39,20,0
    .goto Ghostlands,60.34,16.13,20,0
    .goto Ghostlands,59.92,13.83,20,0
    .goto Ghostlands,62.86,11.04
    >>Kill |cFFFF5722Anok'suten|r. He patrols anti-clockwise around the town's path and goes into the buildings
    >>|cFFFCDC00He calls for help from|r |cFFFF5722Nerubis Guards|r |cFFFCDC00with a range of 60 yards at <50% health|r
    >>|cFFFCDC00Find a group for him if needed|r
    .complete 9315,1 --Kill Anok'suten (x1)
    .unitscan Anok'suten
step << !Paladin
    .loop 30,Ghostlands,59.47,12.43,59.83,10.22,58.92,9.19,60.72,9.46,61.74,9.63,62.86,11.04,63.26,9.50,62.76,12.68,63.52,13.39,62.00,14.21,60.70,14.39,60.34,16.13,59.92,13.83,62.86,11.04,59.47,12.43
    >>Kill |cFFFF5722Nerubis Guards|r
    .complete 9138,1 --Kill Nerubis Guard (x10)
    .mob Nerubis Guard
step << Paladin
    #completewith next
    >>Swim to the island
    .goto Ghostlands,68.53,8.66,20 >>Go inside the cave
step << Paladin
    #completewith next
    .goto Ghostlands,68.41,7.42
    .cast 3365 >>Click the |cFFDB2EEFGilded Brazier|r to summon |cFFFF5722Sangrias Stillblade|r
step << Paladin
    #label FirstT
    .goto Ghostlands,68.50,9.77
    >>Kill |cFFFF5722Sangrias Stillblade|r
    .complete 9678,1 --Undergo the First Trial
    .mob Sangrias Stillblade
step << Paladin
    .loop 30,Ghostlands,68.61,10.24,69.93,9.00,70.52,5.81,69.54,4.65,68.63,4.93,66.76,5.54,66.70,6.58,67.41,9.70,68.61,10.24
    >>Kill |cFFFF5722Nerubis Guards|r
    .complete 9138,1 --Kill Nerubis Guard (x10)
    .mob Nerubis Guard
step
    .goto Ghostlands,69.40,15.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Valanna|r
    .accept 9143 >> Accept Dealing with Zeb'Sora
    .target Ranger Valanna
step
    .goto Ghostlands,72.29,19.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Geranis|r
    .accept 9157 >> Accept Forgotten Rituals
    .target Geranis Whitemorn
step
    .loop 30,Ghostlands,73.64,14.43,73.77,11.83,74.70,11.89,74.75,9.70,75.89,8.49,76.87,8.54,78.20,9.68,77.70,12.61,75.88,10.23,76.00,13.71,73.64,14.43
    >>Kill |cFFFF5722Shadowpine Rippers|r and |cFFFF5722Shadowpine Witches|r. Loot them for their |cFF00BCD4Troll Ears|r
    .complete 9143,1 --Collect Zeb'Sora Troll Ear (x6)
    .mob Shadowpine Ripper
    .mob Shadowpine Witch
step
    .goto Ghostlands,73.48,32.15,15,0
    .goto Ghostlands,72.50,32.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Sedina|r
    .accept 9158 >> Accept Bearers of the Plague
    .target Farstrider Sedina
step
    .goto Ghostlands,72.29,32.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Heron|r
    >>|cFF0E8312Buy|r |T132815:0|t[Ice Cold Milk] |cFF0E8312from him|r << Priest/Mage/Warlock/Druid
    >>|cFF0E8312Buy|r |T133918:0|t[Longjaw Mud Snappers] |cFF0E8312from him|r << !Priest !Mage !Warlock !Druid !Paladin
    >>|cFF0E8312Buy|r |T132815:0|t[Ice Cold Milk] |cFF0E8312and|r |T133918:0|t[Longjaw Mud Snappers] |cFF0E8312from him|r << Paladin
    .collect 1179,20,9281,1 << Priest/Mage/Warlock/Druid/Paladin --Ice Cold Milk (20)
    .collect 4592,20,9281,1 << !Priest !Mage !Warlock !Druid !Paladin --Longjaw Mud Snapper (20)
    .collect 4592,10,9281,1 << Paladin --Longjaw Mud Snapper (10)
    .target Heron Skygaze
    .money <0.0080 << !Priest !Mage !Warlock !Druid !Paladin
    .money <0.0500 << Priest/Mage/Warlock/Druid
    .money <0.0540 << Paladin
    .isOnQuest 9158
    .xp >15,1
step
    .goto Ghostlands,72.29,32.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Heron|r
    >>|cFF0E8312Buy|r |T132815:0|t[Ice Cold Milk] |cFF0E8312from him|r << Priest/Mage/Warlock/Druid
    >>|cFF0E8312Buy|r |T133918:0|t[Longjaw Mud Snappers] |cFF0E8312from him|r << !Priest !Mage !Warlock !Druid !Paladin
    >>|cFF0E8312Buy|r |T132815:0|t[Ice Cold Milk] |cFF0E8312and|r |T133918:0|t[Longjaw Mud Snappers] |cFF0E8312from him|r << Paladin
    .collect 1179,10,9281,1 << Priest/Mage/Warlock/Druid/Paladin --Ice Cold Milk (10)
    .collect 4592,20,9281,1 << !Priest !Mage !Warlock !Druid !Paladin --Longjaw Mud Snapper (20)
    .collect 4592,10,9281,1 << Paladin --Longjaw Mud Snapper (10)
    .target Heron Skygaze
    .money <0.0080 << !Priest !Mage !Warlock !Druid !Paladin
    .money <0.0250 << Priest/Mage/Warlock/Druid
    .money <0.0290 << Paladin
    .isOnQuest 9158
    .xp >15,1
step
    .goto Ghostlands,72.29,32.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Heron|r
    >>|cFF0E8312Buy|r |T132796:0|t[Melon Juice] |cFF0E8312from him|r << Priest/Mage/Warlock/Druid
    >>|cFF0E8312Buy|r |T133970:0|t[Mutton Chops] |cFF0E8312from him|r << !Priest !Mage !Warlock !Druid !Paladin
    >>|cFF0E8312Buy|r |T132796:0|t[Melon Juice] |cFF0E8312and|r |T133970:0|t[Mutton Chops] |cFF0E8312from him|r << Paladin
    .collect 1205,20,9281,1 << Priest/Mage/Warlock/Druid/Paladin --Melon Juice (20)
    .collect 3770,20,9281,1 << !Priest !Mage !Warlock !Druid !Paladin --Mutton Chop (20)
    .collect 3770,10,9281,1 << Paladin --Mutton Chop (10)
    .target Heron Skygaze
    .money <1.000
    .isOnQuest 9158
    .xp <15,1
    .xp >30,1
-- .money <0.2000 << !Paladin
-- .money <0.3000 << Paladin
--VV Would cause too many potential money issues
step
    .goto Ghostlands,72.29,32.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Heron|r
    >>|cFF0E8312Buy|r |T132796:0|t[Melon Juice] |cFF0E8312from him|r << Priest/Mage/Warlock/Druid
    >>|cFF0E8312Buy|r |T133970:0|t[Mutton Chops] |cFF0E8312from him|r << !Priest !Mage !Warlock !Druid !Paladin
    >>|cFF0E8312Buy|r |T132796:0|t[Melon Juice] |cFF0E8312and|r |T133970:0|t[Mutton Chops] |cFF0E8312from him|r << Paladin
    .collect 1205,10,9281,1 << Priest/Mage/Warlock/Druid/Paladin --Melon Juice (10)
    .collect 3770,10,9281,1 << !Priest !Mage !Warlock !Druid !Paladin --Mutton Chop (10)
    .collect 3770,10,9281,1 << Paladin --Mutton Chop (10)
    .target Heron Skygaze
    .money <1.000
    .isOnQuest 9158
    .xp <15,1
    .xp >30,1
-- .money <0.1000 << !Paladin
-- .money <0.2000 << Paladin
--VV Would cause too many potential money issues
step
    .goto Ghostlands,69.61,31.21,40,0
    .goto Ghostlands,66.93,35.04,40,0
    .goto Ghostlands,69.21,36.19,40,0
    .goto Ghostlands,68.34,39.28,40,0
    .goto Ghostlands,66.16,42.71,40,0
    .goto Ghostlands,68.48,46.50,40,0
    .goto Ghostlands,71.08,44.62,40,0
    .goto Ghostlands,72.68,41.63,40,0
    .goto Ghostlands,73.06,39.68,40,0
    .goto Ghostlands,74.79,39.15,40,0
    .goto Ghostlands,73.82,36.71,40,0
    .goto Ghostlands,76.03,36.52,40,0
    .goto Ghostlands,76.39,34.86,40,0
    .goto Ghostlands,74.79,39.15,40,0
    .goto Ghostlands,77.29,31.89,40,0
    .goto Ghostlands,77.16,27.58,40,0
    .goto Ghostlands,76.07,25.13,40,0
    .goto Ghostlands,74.82,29.77,40,0
    .goto Ghostlands,72.68,41.63
    >>Kill |cFFFF5722Ghostclaw Lynxes|r
    .complete 9158,1 --Kill Ghostclaw Lynx (x10)
    .mob Ghostclaw Lynx
step
    #xprate >1.6999
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Sedina|r, |cFF00FF25Solanna|r, the |cFF00FF25Wanted Poster|r, and |cFF00FF25Helios|r
    .turnin 9158 >> Turn in Bearers of the Plague
    .accept 9159 >> Accept Curbing the Plague
    .goto Ghostlands,72.50,32.14
    .accept 9276 >> Accept Attack on Zeb'Tela
    .goto Ghostlands,72.33,31.24
    .accept 9215 >>Accept Bring Me Kel'gash's Head!
    .goto Ghostlands,72.24,31.14
    .accept 9214 >>Accept Shadowpine Weaponry
    .goto Ghostlands,72.37,29.64
    .target Farstrider Sedina
    .target Farstrider Solanna
    .target Ranger Krenn'an
    .target Captain Helios
    .xp <15,1
step
    #xprate <1.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Sedina|r, |cFF00FF25Solanna|r, the |cFF00FF25Wanted Poster|r, |cFF00FF25Krenn'an|r, and |cFF00FF25Helios|r
    .turnin 9158 >> Turn in Bearers of the Plague
    .accept 9159 >> Accept Curbing the Plague
    .goto Ghostlands,72.50,32.14
    .accept 9276 >> Accept Attack on Zeb'Tela
    .goto Ghostlands,72.33,31.24
    .accept 9215 >>Accept Bring Me Kel'gash's Head!
    .goto Ghostlands,72.24,31.14
    .accept 9274 >>Accept Spirits of the Drowned
    .goto Ghostlands,72.21,29.78
    .accept 9214 >>Accept Shadowpine Weaponry
    .goto Ghostlands,72.37,29.64
    .target Farstrider Sedina
    .target Farstrider Solanna
    .target Ranger Krenn'an
    .target Captain Helios
    .xp <15,1
step
    #xprate <1.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Sedina|r, the |cFF00FF25Wanted Poster|r, and |cFF00FF25Krenn'an|r
    .turnin 9158 >> Turn in Bearers of the Plague
    .accept 9159 >> Accept Curbing the Plague
    .goto Ghostlands,72.50,32.14
    .accept 9215 >>Accept Bring Me Kel'gash's Head!
    .goto Ghostlands,72.24,31.14
    .accept 9274 >>Accept Spirits of the Drowned
    .goto Ghostlands,72.21,29.78
    .target Farstrider Sedina
    .target Ranger Krenn'an
step
    .goto Ghostlands,72.29,32.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Heron|r
    >>|cFF0E8312Buy|r |T132796:0|t[Melon Juice] |cFF0E8312from him|r << Priest/Mage/Warlock/Druid
    >>|cFF0E8312Buy|r |T133970:0|t[Mutton Chops] |cFF0E8312from him|r << !Priest !Mage !Warlock !Druid !Paladin
    >>|cFF0E8312Buy|r |T132796:0|t[Melon Juice] |cFF0E8312and|r |T133970:0|t[Mutton Chops] |cFF0E8312from him|r << Paladin
    .collect 1205,20,9281,1 << Priest/Mage/Warlock/Druid/Paladin --Melon Juice (20)
    .collect 3770,20,9281,1 << !Priest !Mage !Warlock !Druid !Paladin --Mutton Chop (20)
    .collect 3770,10,9281,1 << Paladin --Mutton Chop (10)
    .target Heron Skygaze
    .money <1.000
    .isOnQuest 9158
    .xp <15,1
    .xp >30,1
-- .money <0.2000 << !Paladin
-- .money <0.3000 << Paladin
--VV Would cause too many potential money issues
step
    .goto Ghostlands,72.29,32.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Heron|r
    >>|cFF0E8312Buy|r |T132796:0|t[Melon Juice] |cFF0E8312from him|r << Priest/Mage/Warlock/Druid
    >>|cFF0E8312Buy|r |T133970:0|t[Mutton Chops] |cFF0E8312from him|r << !Priest !Mage !Warlock !Druid !Paladin
    >>|cFF0E8312Buy|r |T132796:0|t[Melon Juice] |cFF0E8312and|r |T133970:0|t[Mutton Chops] |cFF0E8312from him|r << Paladin
    .collect 1205,10,9281,1 << Priest/Mage/Warlock/Druid/Paladin --Melon Juice (10)
    .collect 3770,10,9281,1 << !Priest !Mage !Warlock !Druid !Paladin --Mutton Chop (10)
    .collect 3770,10,9281,1 << Paladin --Mutton Chop (10)
    .target Heron Skygaze
    .money <1.000
    .isOnQuest 9158
    .xp <15,1
    .xp >30,1
-- .money <0.1000 << !Paladin
-- .money <0.2000 << Paladin
--VV Would cause too many potential money issues
step << Rogue
    +Equip the |T135343:0|t[Scimitars] in your mainhand and offhand
    .use 2027
    .itemcount 2027,2
    .itemStat 16,QUALITY,<7
    .itemStat 17,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .xp <14,1
step << Rogue
    +Equip the |T135343:0|t[Scimitar] in your mainhand
    .use 2027
    .itemcount 2027,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .xp <14,1
step << skip
    +Equip the |T135343:0|t[Scimitar] in your offhand
    .use 2027
    .itemcount 2027,1
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .xp <14,1
--VV WIP
step
    #xprate <1.7
    #completewith Aquantion
    >>Kill |cFFFF5722Ravening Apparitions|r and |cFFFF5722Vengeful Apparitions|r
    .complete 9274,1 --Kill Ravening Apparition (x8)
    .complete 9274,2 --Kill Vengeful Apparition (x8)
    .mob Ravening Apparition
    .mob Vengeful Apparition
step
    .goto Ghostlands,71.99,28.39,30,0
    .goto Ghostlands,72.55,27.63,30,0
    .goto Ghostlands,72.79,26.45,30,0
    .goto Ghostlands,73.42,22.88,30,0
    .goto Ghostlands,73.69,22.23,30,0
    .goto Ghostlands,73.70,21.53,30,0
    .goto Ghostlands,73.51,21.12,30,0
    .goto Ghostlands,73.49,18.45,30,0
    .goto Ghostlands,71.31,15.24,30,0
    .goto Ghostlands,71.11,15.38,30,0
    .goto Ghostlands,71.16,13.76,30,0
    .goto Ghostlands,70.65,13.67,30,0
    .goto Ghostlands,70.46,17.19,30,0
    .goto Ghostlands,69.58,18.80,30,0
    .goto Ghostlands,70.16,21.99,30,0
    .goto Ghostlands,71.99,28.39,30,0
    .goto Ghostlands,72.55,27.63,30,0
    .goto Ghostlands,72.79,26.45,30,0
    .goto Ghostlands,73.42,22.88
    >>Loot |cFFDB2EEFWavefront Medallions|r in the |cFFDB2EEFGlistening Mud Piles|r underwater
    .complete 9157,1 --Collect Wavefront Medallion (x8)
step
    .goto Ghostlands,72.29,19.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Geranis|r
    .turnin 9157 >> Turn in Forgotten Rituals
    .accept 9174 >> Accept Vanquishing Aquantion
    .target Geranis Whitemorn
step
    #completewith next
    .goto Ghostlands,71.32,14.93
    .cast 28226 >> Click the |cFFDB2EEFAltar|r to summon |cFFFF5722Aquantion|r
step
    .goto Ghostlands,71.31,14.58
    >>Kill |cFFFF5722Aquantion|r
    >>|cFFFCDC00He has elite-level health and deals frost damage|r
    >>|cFFFCDC00He is immune to|r |T136222:0|t[Arcane Torrent] |cFFFCDC00and|r |T135963:0|t[Hammer of Justice] << BloodElf Paladin
    >>|cFFFCDC00He is immune to|r |T135963:0|t[Hammer of Justice] << !BloodElf Paladin
    >>|cFFFCDC00He is immune to|r |T136222:0|t[Arcane Torrent] |cFFFCDC00and|r |T136183:0|t[Fear] << BloodElf Warlock
    >>|cFFFCDC00He is immune to|r |T136183:0|t[Fear] << !BloodElf Warlock
    >>|cFFFCDC00He is immune to|r |T136222:0|t[Arcane Torrent] |cFFFCDC00and|r |T136184:0|t[Psychic Scream] << BloodElf Priest
    >>|cFFFCDC00He is immune to|r |T136184:0|t[Psychic Scream] << !BloodElf Priest
    >>|cFFFCDC00He is immune to|r |T136222:0|t[Arcane Torrent], |T135846:0|t[Frostbolt], |T135848:0|t[Frost Nova], |cFFFCDC00and|r |T135843:0|t[Frost Armor] << BloodElf Mage
    >>|cFFFCDC00He is immune to|r |T135846:0|t[Frostbolt], |T135848:0|t[Frost Nova], |cFFFCDC00and|r |T135843:0|t[Frost Armor] << !BloodElf Mage
    >>|cFFFCDC00Be sure buff yourself with|r |T136006:0|t[Dampen Magic] |cFFFCDC00before summoning him|r << Mage
    >>|cFFFCDC00He is immune to|r |T136222:0|t[Arcane Torrent] |cFFFCDC00and|r |T132155:0|t[Gouge] << BloodElf Rogue
    >>|cFFFCDC00He is immune to|r |T132155:0|t[Gouge] << !BloodElf Rogue
    >>|cFFFCDC00He is immune to|r |T136222:0|t[Arcane Torrent] << BloodElf Hunter
    >>|cFFFCDC00Find a group for him if needed|r << !Hunter !Warlock
    .complete 9174,1 --Kill Aquantion (x1)
    .mob Aquantion
    .train 8122,3 << Priest
    .train 604,3 << Mage
step << Priest/Mage
    .goto Ghostlands,71.31,14.58
    >>Kill |cFFFF5722Aquantion|r
    >>|cFFFCDC00He has elite-level health and deals frost damage|r
    >>|cFFFCDC00He is immune to|r |T136222:0|t[Arcane Torrent] << BloodElf Priest
    >>|cFFFCDC00He is immune to|r |T136222:0|t[Arcane Torrent], |T135846:0|t[Frostbolt], |T135848:0|t[Frost Nova], |cFFFCDC00and|r |T135843:0|t[Frost Armor] << BloodElf Mage
    >>|cFFFCDC00He is immune to|r |T135846:0|t[Frostbolt], |T135848:0|t[Frost Nova], |cFFFCDC00and|r |T135843:0|t[Frost Armor] << !BloodElf Mage
    .complete 9174,1 --Kill Aquantion (x1)
    .mob Aquantion
step
    #label Aquantion
    .goto Ghostlands,72.29,19.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Geranis|r
    .turnin 9174 >> Turn in Vanquishing Aquantion
    .target Geranis Whitemorn
step
    #xprate <1.7
    .goto Ghostlands,71.99,28.39,30,0
    .goto Ghostlands,72.55,27.63,30,0
    .goto Ghostlands,72.79,26.45,30,0
    .goto Ghostlands,73.42,22.88,30,0
    .goto Ghostlands,73.69,22.23,30,0
    .goto Ghostlands,73.70,21.53,30,0
    .goto Ghostlands,73.51,21.12,30,0
    .goto Ghostlands,73.49,18.45,30,0
    .goto Ghostlands,70.46,17.19,30,0
    .goto Ghostlands,69.58,18.80,30,0
    .goto Ghostlands,70.16,21.99,30,0
    .goto Ghostlands,71.99,28.39,30,0
    .goto Ghostlands,72.55,27.63,30,0
    .goto Ghostlands,72.79,26.45,30,0
    .goto Ghostlands,73.42,22.88
    >>Kill |cFFFF5722Ravening Apparitions|r and |cFFFF5722Vengeful Apparitions|r
    .complete 9274,1 --Kill Ravening Apparition (x8)
    .complete 9274,2 --Kill Vengeful Apparition (x8)
    .mob Ravening Apparition
    .mob Vengeful Apparition
step
    .goto Ghostlands,69.40,15.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Valanna|r
    .turnin 9143 >> Turn in Dealing with Zeb'Sora
    .accept 9146 >> Accept Report to Captain Helios
    .target Ranger Valanna
step
    #xprate <1.5
    .loop 30,Ghostlands,59.47,12.43,59.83,10.22,58.92,9.19,60.72,9.46,61.74,9.63,62.86,11.04,63.26,9.50,62.76,12.68,63.52,13.39,62.00,14.21,60.70,14.39,60.34,16.13,59.92,13.83,62.86,11.04,59.47,12.43
    .xp 13+10150 >>Grind to 9275+/11000xp
step << Paladin
    #xprate 1.49-1.58
    .loop 30,Ghostlands,73.64,14.43,73.77,11.83,74.70,11.89,74.75,9.70,75.89,8.49,76.87,8.54,78.20,9.68,77.70,12.61,75.88,10.23,76.00,13.71,73.64,14.43
    .xp 15+8267 >>Grind to 8267+/13600xp
step << !Rogue
    #xprate 1.59-1.68
    .loop 30,Ghostlands,73.64,14.43,73.77,11.83,74.70,11.89,74.75,9.70,75.89,8.49,76.87,8.54,78.20,9.68,77.70,12.61,75.88,10.23,76.00,13.71,73.64,14.43
    .xp 15+10840 >>Grind to 10840+/13600xp << !Paladin
    .xp 15+7912 >>Grind to 7912+/13600xp << Paladin
    .train 1460,1 << Mage
    .train 6222,1 << Warlock
step << !Rogue
    #xprate >1.6999
    .loop 30,Ghostlands,73.64,14.43,73.77,11.83,74.70,11.89,74.75,9.70,75.89,8.49,76.87,8.54,78.20,9.68,77.70,12.61,75.88,10.23,76.00,13.71,73.64,14.43
    .xp 15+10668 >>Grind to 10668+/13600xp << !Paladin
    .xp 15+7557 >>Grind to 7557+/13600xp << Paladin
    .train 1460,1 << Mage
    .train 6222,1 << Warlock
step << Priest/Mage/Warlock/Rogue/Druid
    #xprate <1.5
    #completewith next
    .deathskip >> Die and respawn at the |cFF00FF25Spirit Healer|r
    .target Spirit Healer
step << !Rogue
    #xprate >1.4999
    #completewith next
    .goto Ghostlands,73.65,10.38,1,0
    .goto Ghostlands,69.46,10.04
    >>|cFFFCDC00Make sure you die on the far north west side of the Troll Town, or on the Island|r
    .deathskip >> Die and respawn at the |cFF00FF25Spirit Healer|r
    .target Spirit Healer
    .train 1460,1 << Mage
    .train 6222,1 << Warlock
step
    #xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Vandril|r and the |cFF00FF25Wanted Poster|r << !BloodElf/!Warlock
    .turnin 9315 >>Turn in Anok'suten
    .turnin 9138 >>Turn in Suncrown Village
    .accept 9139 >>Accept Goldenmist Village
    .goto Ghostlands,46.55,28.38,10,0 << !Priest !Mage !Warlock !Rogue !Druid
    .goto Ghostlands,46.08,28.33 << !Priest !Mage !Warlock !Rogue !Druid
    .goto Ghostlands,46.08,28.33,10,0 << Priest/Mage/Warlock/Rogue/Druid
    .goto Ghostlands,46.55,28.38 << Priest/Mage/Warlock/Rogue/Druid
    .accept 9156 >> Accept Wanted: Knucklerot and Luzran << !BloodElf/!Warlock
    .goto Ghostlands,48.35,31.67 << !BloodElf/!Warlock
    .target Arcanist Vandril
    .isQuestComplete 9315
step
    #xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Vandril|r and the |cFF00FF25Wanted Poster|r << !BloodElf/!Warlock
    .turnin 9138 >>Turn in Suncrown Village
    .accept 9139 >>Accept Goldenmist Village
    .goto Ghostlands,46.55,28.38,10,0 << !Priest !Mage !Warlock !Rogue !Druid
    .goto Ghostlands,46.08,28.33 << !Priest !Mage !Warlock !Rogue !Druid
    .goto Ghostlands,46.08,28.33,10,0 << Priest/Mage/Warlock/Rogue/Druid
    .goto Ghostlands,46.55,28.38 << Priest/Mage/Warlock/Rogue/Druid
    .accept 9156 >> Accept Wanted: Knucklerot and Luzran << !BloodElf/!Warlock
    .goto Ghostlands,48.35,31.67 << !BloodElf/!Warlock
    .target Arcanist Vandril
step
    #xprate >1.4999
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Vandril|r and the |cFF00FF25Wanted Poster|r << !BloodElf/!Warlock
    .turnin 9315 >>Turn in Anok'suten
    .turnin 9138 >>Turn in Suncrown Village
    .accept 9139 >>Accept Goldenmist Village
    .goto Ghostlands,46.55,28.38,10,0 << Rogue
    .goto Ghostlands,46.08,28.33 << Rogue
    .goto Ghostlands,46.08,28.33,10,0 << !Rogue
    .goto Ghostlands,46.55,28.38 << !Rogue
    .accept 9156 >> Accept Wanted: Knucklerot and Luzran << !BloodElf/!Warlock
    .goto Ghostlands,48.35,31.67 << !BloodElf/!Warlock
    .target Arcanist Vandril
    .isQuestComplete 9315
step
    #xprate >1.4999
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Vandril|r and the |cFF00FF25Wanted Poster|r << !BloodElf/!Warlock
    .turnin 9138 >>Turn in Suncrown Village
    .accept 9139 >>Accept Goldenmist Village
    .goto Ghostlands,46.55,28.38,10,0 << Rogue
    .goto Ghostlands,46.08,28.33 << Rogue
    .goto Ghostlands,46.08,28.33,10,0 << !Rogue
    .goto Ghostlands,46.55,28.38 << !Rogue
    .accept 9156 >> Accept Wanted: Knucklerot and Luzran << !BloodElf/!Warlock
    .goto Ghostlands,48.35,31.67 << !BloodElf/!Warlock
    .target Arcanist Vandril
step << Rogue
    #xprate <1.5
    +Equip the |T135343:0|t[Scimitars] in your mainhand and offhand
    .use 2027
    .itemcount 2027,2
    .itemStat 16,QUALITY,<7
    .itemStat 17,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .xp <14,1
step << Rogue
    #xprate <1.5
    +Equip the |T135343:0|t[Scimitar] in your mainhand
    .use 2027
    .itemcount 2027,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .xp <14,1
step << skip
    #xprate <1.5
    +Equip the |T135343:0|t[Scimitar] in your offhand
    .use 2027
    .itemcount 2027,1
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .xp <14,1
--VV WIP
step << skip
    >> Talk to Master Chef Mouldier
>>Talk to |cFF00FF25Master Chef Mouldier|r
    .accept 9171 >> Accept Culinary Crunch
    .goto Ghostlands,48.43,30.93
    .target Master Chef Mouldier
step << !BloodElf/!Warlock
    .goto Ghostlands,48.34,31.99,8,0
    .goto Ghostlands,48.91,32.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Kalarin|r
    .home >> Set your Hearthstone to Tranquillien
    .target Innkeeper Kalarin
step << Mage/Priest/Warlock
    .goto Ghostlands,47.71,32.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Vredigar|r
    >>|cFF0E8312Buy the|r |T132562:0|t[Apprentice Boots] |cFF0E8312from him|r
    .collect 22991,1,9281,1 --Collect Apprentice Boots (1)
    .target Provisioner Vredigar
    .itemStat 8,LEVEL,<15
step << Rogue/Shaman/Hunter wotlk
    .goto Ghostlands,47.71,32.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Vredigar|r
    >>|cFF0E8312Buy the|r |T132538:0|t[Bogwalker Boots] |cFF0E8312from him|r
    .collect 22992,1,9281,1 --Collect Bogwalker Boots (1)
    .target Provisioner Vredigar
    .itemStat 8,LEVEL,<15
step << Hunter tbc
    .goto Ghostlands,47.71,32.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Vredigar|r
    >>|cFF0E8312Buy the|r |T132538:0|t[Bogwalker Boots] |cFF0E8312and the|r |T135277:0|t[Tranquillien Flamberge] |cFF0E8312from him|r
    .collect 22992,1,9281,1 --Collect Bogwalker Boots (1)
    .collect 28164,1,9281,1 << Hunter tbc --Tranquillien Flamberge (1)
    .target Provisioner Vredigar
    .itemStat 8,LEVEL,<15
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.1
step << Hunter TBC
    .goto Ghostlands,47.71,32.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Vredigar|r
    >>|cFF0E8312Buy the|r |T132538:0|t[Bogwalker Boots] |cFF0E8312from him|r
    .collect 22992,1,9281,1 --Collect Bogwalker Boots (1)
    .target Provisioner Vredigar
    .itemStat 8,LEVEL,<15
step << Hunter tbc
    .goto Ghostlands,47.71,32.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Vredigar|r
    >>|cFF0E8312Buy the|r |T135277:0|t[Tranquillien Flamberge] |cFF0E8312from him|r
    .collect 28164,1,9281,1 << Hunter tbc --Tranquillien Flamberge (1)
    .target Provisioner Vredigar
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.1
step << skip
    #sticky
    #completewith Poster13
    .money <0.1300
    >>If you couldn't afford 2h sword training earlier, fly to Silvermoon and get weapon training
    .goto Silvermoon City,91.2,38.7
    .train 202 >>Train 2h Swords
step << Paladin
    .goto Ghostlands,47.71,32.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Vredigar|r
    >>|cFF0E8312Buy the|r |T132535:0|t[Volunteer's Greaves] |cFF0E8312and the|r |T135277:0|t[Tranquillien Flamberge] |cFF0E8312from him|r
    .collect 22993,1,9281,1 --Collect Volunteer's Greaves (1)
    .collect 28164,1,9281,1 --Collect Tranquillien Flamberge (1)
    .target Provisioner Vredigar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.1
    .itemStat 8,LEVEL,<15
step << Paladin
    .goto Ghostlands,47.71,32.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Vredigar|r
    >>|cFF0E8312Buy the|r |T132535:0|t[Volunteer's Greaves] |cFF0E8312from him|r
    .collect 22993,1,9281,1 --Collect Volunteer's Greaves (1)
    .target Provisioner Vredigar
    .itemStat 8,LEVEL,<15
step << Paladin
    .goto Ghostlands,47.71,32.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Vredigar|r
    >>|cFF0E8312Buy the|r |T135277:0|t[Tranquillien Flamberge] |cFF0E8312from him|r
    .collect 28164,1,9281,1 --Collect Tranquillien Flamberge (1)
    .target Provisioner Vredigar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.1
step << Mage/Priest/Warlock
    #completewith ManaEssence
    +Equip the |T132562:0|t[Apprentice Boots]
    .use 22991
    .itemcount 22991,1
    .itemStat 8,LEVEL,<15
step << Rogue/Shaman/Hunter wotlk
    #completewith ManaEssence
    +Equip the |T132538:0|t[Bogwalker Boots]
    .use 22992
    .itemcount 22992,1
    .itemStat 8,LEVEL,<15
step << Hunter tbc
    #label Huntertbc1
    #completewith ManaEssence
    +Equip the |T132538:0|t[Bogwalker Boots] and the |T135277:0|t[Tranquillien Flamberge]
    .use 22992
    .use 28164
    .itemcount 22992,1
    .itemcount 28164,1
    .itemStat 8,LEVEL,<15
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.1
step << Hunter tbc
    #label Huntertbc2
    #requires Huntertbc1
    #completewith ManaEssence
    +Equip the |T132538:0|t[Bogwalker Boots]
    .use 22992
    .itemcount 22992,1
    .itemStat 8,LEVEL,<15
step << Hunter tbc
    #requires Huntertbc2
    #completewith ManaEssence
    +Equip the |T135277:0|t[Tranquillien Flamberge]
    .use 28164
    .itemcount 28164,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.1
step << Paladin
    #label Paladinwep1
    #completewith ManaEssence
    +Equip the |T132535:0|t[Volunteer's Greaves] and the |T135277:0|t[Tranquillien Flamberge]
    .use 22993
    .use 28164
    .itemcount 22993,1
    .itemcount 28164,1
    .itemStat 8,LEVEL,<15
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.1
step << Paladin
    #label Paladinwep2
    #requires Paladinwep1
    #completewith ManaEssence
    +Equip the |T132535:0|t[Volunteer's Greaves]
    .use 22993
    .itemcount 22993,1
    .itemStat 8,LEVEL,<15
step << Paladin
    #requires Paladinwep2
    #completewith ManaEssence
    +Equip the |T135277:0|t[Tranquillien Flamberge]
    .use 28164
    .itemcount 28164,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.1
step
    #completewith ManaEssence
    .abandon 9315 >> Abandon Anok'suten
step << Rogue
    .goto Ghostlands,47.67,34.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Renzithen|r
    .accept 9149 >> Accept The Plagued Coast
    .target Apothecary Renzithen
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Eralan|r
    >>|cFF0E8312Buy the|r |T135427:0|t[Throat Piercers] |cFF0E8312and the|r |T135344:0|t[Sinister Scimitar] |cFF0E8312from her if they're up|r
    .vendor 16268 >> Vendor Trash
    .target Eralan
    .money <0.7517 << BloodElf/Undead
    .money <0.7893 << Orc/Troll
    .itemStat 16,QUALITY,<7
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Eralan|r
    >>|cFF0E8312Buy the|r |T135344:0|t[Sinister Scimitar] |cFF0E8312from her if it's up|r
    .vendor 16268 >> Vendor Trash
    .target Eralan
    .money <0.6947 << BloodElf/Undead
    .money <0.7294 << Orc/Troll
    .itemStat 16,QUALITY,<7
    .itemStat 18,QUALITY,>7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>12.5 << wotlk
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Eralan|r
    >>|cFF0E8312Buy the|r |T135427:0|t[Throat Piercers] |cFF0E8312from her if it's up|r
    .vendor 16268 >> Vendor Trash
    .target Eralan
    .money <0.0570 << BloodElf/Undead
    .money <0.0599 << Orc/Troll
    .itemStat 16,QUALITY,>7
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step << Rogue
    #label Eralan01
    #completewith ManaEssence
    +Equip the |T135427:0|t[Throat Piercers] and |T135344:0|t[Sinister Scimitar]
    .use 29584
    .use 29583
    .itemcount 29584,1
    .itemcount 29583,1
    .itemStat 16,QUALITY,<7
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step << Rogue
    #requires Eralan01
    #completewith ManaEssence
    +Equip the |T135344:0|t[Sinister Scimitar]
    .use 29583
    .itemcount 29583,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
step << Rogue
    #requires Eralan01
    #completewith ManaEssence
    +Equip the |T135427:0|t[Throat Piercers]
    .use 29584
    .itemcount 29584,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step << !Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Renzithen|r, |cFF00FF25Rathiel|r, |cFF00FF25Valwyn|r, |cFF00FF25Dame|r, |cFF00FF25Maltendis|r, and |cFF00FF25Darenis|r
    .accept 9149 >> Accept The Plagued Coast
    .goto Ghostlands,47.67,34.87
    .accept 9155 >> Accept Down the Dead Scar
    .goto Ghostlands,46.02,33.58
    .accept 9193 >> Accept Investigate the Amani Catacombs
    .goto Ghostlands,45.17,32.37,10,0
    .goto Ghostlands,44.84,32.81
    .accept 9160 >>Accept Investigate An'daroth
    .goto Ghostlands,44.88,32.51
    .accept 9199 >> Accept Troll Juju
    .accept 9192 >> Accept Trouble at the Underlight Mines
    .goto Ghostlands,44.74,32.28
    .accept 9150 >>Accept Salvaging the Past
    .goto Ghostlands,46.02,31.95
    .target Apothecary Renzithen
    .target Deathstalker Rathiel
    .target Advisor Valwyn
    .target Dame Auriferous
    .target Deathstalker Maltendis
    .target Magister Darenis
--VV 9193 and 9199 need to hide if in qlog
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Rathiel|r, |cFF00FF25Valwyn|r, |cFF00FF25Dame|r, |cFF00FF25Maltendis|r, and |cFF00FF25Darenis|r
    .accept 9155 >> Accept Down the Dead Scar
    .goto Ghostlands,46.02,33.58
    .accept 9193 >> Accept Investigate the Amani Catacombs
    .goto Ghostlands,45.17,32.37,10,0
    .goto Ghostlands,44.84,32.81
    .accept 9160 >>Accept Investigate An'daroth
    .goto Ghostlands,44.88,32.51
    .accept 9199 >> Accept Troll Juju
    .accept 9192 >> Accept Trouble at the Underlight Mines
    .goto Ghostlands,44.74,32.28
    .accept 9150 >>Accept Salvaging the Past
    .goto Ghostlands,46.02,31.95
    .target Deathstalker Rathiel
    .target Advisor Valwyn
    .target Dame Auriferous
    .target Deathstalker Maltendis
    .target Magister Darenis
    --VV 9193 and 9199 need to hide if in qlog
step << Druid
	#completewith DruidTrain1
	.cast 18960 >> Cast Teleport: Moonglade
	.zoneskip Moonglade
	.xp <14,1
step << Druid
    .goto Moonglade,52.53,40.57
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Loganaar|r
    .train 782 >> Train your class spells
	.target Loganaar
    .cooldown item,6948,>0
	.xp <14,1
    .xp >16,1
step << Druid
    #label DruidTrain1
    .goto Moonglade,52.53,40.57
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Loganaar|r
    .train 783 >> Train your class spells << wotlk
    .train 8925 >> Train your class spells << TBC
	.target Loganaar
    .cooldown item,6948,>0
	.xp <16,1
step << !Shaman !Warrior !Druid !BloodElf/!Warlock !Paladin !Rogue
    #xprate <1.5
    #completewith SMTraining2
    .goto Ghostlands,45.42,30.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Sunwing|r
    .fly Silvermoon >> Fly to Silvermoon City
    .target Skymaster Sunwing
step << !Shaman !Warrior !Druid !BloodElf/!Warlock
    #xprate >1.4999
    #completewith SMTraining2
    .goto Ghostlands,45.42,30.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Sunwing|r
    .fly Silvermoon >> Fly to Silvermoon City
    .target Skymaster Sunwing
    .xp <16,1 << Rogue
step << !Shaman !Warrior !Druid !Mage !BloodElf/!Warlock !Paladin
    #xprate <1.5
    #completewith SMTraining2
    .goto Eversong Woods,56.51,49.61,25,0
    .goto Silvermoon City,73.39,59.65
    .zone Silvermoon City >>Enter Silvermoon
step << !Shaman !Warrior !Druid !Mage !BloodElf/!Warlock
    #xprate >1.4999
    #completewith SMTraining2
    .goto Eversong Woods,56.51,49.61,25,0
    .goto Silvermoon City,73.39,59.65
    .zone Silvermoon City >>Enter Silvermoon
    .xp <16,1 << Rogue
step << Rogue
    .abandon 9491 >> Abandon Greed
step << Rogue
    #completewith next
    .goto Silvermoon City,73.39,59.65,30,0
    .goto Silvermoon City,76.55,52.05,20,0
    .goto Silvermoon City,79.70,52.16,20 >>Travel toward |cFF00FF25Zelanis|r
    .xp <16,1
step << Rogue
    #label SMTraining2
    .goto Silvermoon City,79.70,52.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Zelanis|r
    .accept 10372 >> Accept A Discreet Inquiry
    .train 6761 >>Train your class spells
    .target Zelanis
    .xp <16,1
step << Rogue
    #completewith Scimitars
    .goto Silvermoon City,62.89,31.26,30,0
    .goto Silvermoon City,51.83,17.91,30,0
    .goto Silvermoon City,49.45,15.00
    .zone Undercity >>Take the Orb of Translocation to Undercity
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .xp <16,1
step << Rogue
    #completewith Scimitars
    .goto Undercity,59.81,11.33,20,0
    .goto Undercity,66.08,18.24,30,0
    .goto Undercity,66.04,32.97,30,0
    .goto Undercity,65.97,44.08,30,0
    .goto Undercity,60.52,44.02,10,0
    .goto Undercity,60.07,47.70,10 >>Take the lift down to the Undercity
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .xp <16,1
step << !Undead Rogue
    .goto Undercity,63.25,48.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Michael|r
    .fp Undercity >> Get the Undercity Flight Path
    .target Michael Garrett
    .itemcount 2027,<2
    .money <0.7632 << Troll/Orc
    .money <0.7250 << Undead/BloodElf
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .xp <16,1
step << !Undead Rogue
    .goto Undercity,63.25,48.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Michael|r
    .fp Undercity >> Get the Undercity Flight Path
    .target Michael Garrett
    .itemcount 2027,<1
    .money <0.3816 << Troll/Orc
    .money <0.3625 << Undead/BloodElf
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .xp <16,1
step << Rogue
    .goto Undercity,61.15,40.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Louis|r
    >>|cFF0E8312Buy two|r |T135343:0|t[Scimitars] |cFF0E8312from him|r
    .collect 2027,2,9144,1 --Scimitar (2)
    .target Louis Warren
    .itemcount 2027,<2
    .money <0.7632 << Troll/Orc
    .money <0.7250 << Undead/BloodElf
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .xp <16,1
step << Rogue
    #label Scimitars
    .goto Undercity,61.15,40.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Louis|r
    >>|cFF0E8312Buy a|r |T135343:0|t[Scimitar] |cFF0E8312from him|r
    .collect 2027,1,9144,1 --Scimitar (1)
    .target Louis Warren
    .itemcount 2027,<1
    .money <0.3816 << Troll/Orc
    .money <0.3625 << Undead/BloodElf
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .xp <16,1
step << Rogue
    #completewith Clearing
    .hs >> Hearth to Tranquillien
    .zoneskip Ghostlands
    .cooldown item,6948,>0
    .xp <16,1
step << Rogue
    #completewith next
    .goto Undercity,60.07,47.70,10,0
    .goto Undercity,60.52,44.02,10,0
    .goto Undercity,65.97,44.08,30,0
    .goto Undercity,66.04,32.97,30,0
    .goto Undercity,66.08,18.24,30,0
    .goto Undercity,59.81,11.33,20,0 >>Take the lift back up toward Silvermoon
    .cooldown item,6948,<0
    .zoneskip Silvermoon City
    .zoneskip Eversong Woods
    .zoneskip Ghostlands
    .xp <16,1
step << Rogue
    .goto Undercity,59,91,11.32,20,0
    .goto Undercity,54.67,11.25
    .zone Silvermoon City >> Take the Orb of Translocation to Silvermoon City
    .cooldown item,6948,<0
    .zoneskip Eversong Woods
    .zoneskip Ghostlands
    .xp <16,1
step << Paladin
    #xprate >1.4999
    #completewith next
    .goto Silvermoon City,82.03,68.36,25,0
    .goto Silvermoon City,84.63,48.65,25,0
    .goto Silvermoon City,84.65,43.43,25,0
    .goto Silvermoon City,89.00,36.95,15,0
    .goto Silvermoon City,89.26,35.20,15 >>Travel toward |cFF00FF25Bloodvalor|r
step << Paladin
    #xprate >1.4999
    .goto Silvermoon City,89.26,35.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Bloodvalor|r
    .turnin 9678 >>Turn in The First Trial
    .accept 9681 >>Accept A Study in Power
    .target Knight-Lord Bloodvalor
step << Paladin
    #xprate >1.4999
    .goto Silvermoon City,91.74,35.35,12,0
    .goto Silvermoon City,92.20,37.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Bachi|r
    .train 647 >>Train your class spells << wotlk
    .target Champion Bachi
    .xp <14,1
    .xp >16,1
step << Paladin
    #xprate >1.4999
    .goto Silvermoon City,91.74,35.35,12,0
    .goto Silvermoon City,92.20,37.52
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Bachi|r
    .train 7294 >>Train your class spells << tbc
    .train 62124 >>Train your class spells << wotlk
    .target Champion Bachi
	.xp <16,1
step << Paladin
    #xprate >1.4999
    .goto Silvermoon City,92.62,37.53,4,0
    .goto Silvermoon City,92.06,36.23
    >>|cFFFCDC00Jump down the hole behind|r |cFF00FF25Bachi|r
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Astalor|r
    .turnin 9681 >>Turn in A Study in Power
    .accept 9684 >>Accept Claiming the Light << wotlk
    .accept 63866 >>Accept Claiming the Light << tbc
    .target Magister Astalor Bloodsworn
-- This changes in sunwell plataeu, but im not sure if we'd have a phase system instead of just tbc
step << Paladin wotlk
    #xprate >1.4999
    .goto Silvermoon City,92.61,36.80
    >>Use the |T134867:0|t[Shimmering Vessel] on a |cFF00FF25Magister|r
    .complete 9684,1 --Collect Filled Shimmering Vessel
    .target Blood Elf Magister
    .use 24157
step << Paladin tbc
    #xprate >1.4999
    .goto Silvermoon City,92.61,36.80
    >>Use the |T134867:0|t[Shimmering Vessel] on a |cFF00FF25M'uru|r
    .complete 63866,1 --Collect Filled Shimmering Vessel
    .target M'uru
    .use 185956
step << Paladin
    #xprate >1.4999
    #completewith next
    .goto Silvermoon City,90.82,37.55,12,0
    .goto Silvermoon City,87.41,36.85,12,0
    .goto Silvermoon City,87.30,31.73,10,0
    .goto Silvermoon City,87.11,29.92,8,0
    .goto Silvermoon City,86.36,30.72,8,0
    .goto Silvermoon City,89.00,36.95,10,0
    .goto Silvermoon City,89.26,35.20,8 >>Run back up toward |cFF00FF25Bloodvalor|r
step << Paladin
    #xprate >1.4999
    .goto Silvermoon City,89.26,35.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Bloodvalor|r
    .turnin 9684 >>Turn in Claiming the Light << wotlk
    .turnin 63866 >>Turn in Claiming the Light << tbc
    .accept 9685 >>Accept Redeeming the Dead
    .target Knight-Lord Bloodvalor
step << Paladin
    #xprate >1.4999
    .goto Silvermoon City,91.19,36.94,-1
    .goto Silvermoon City,91.14,38.10,-1
	>>|cFFFCDC00Jump onto one of the benches below to avoid walking up the stairs|r
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Ithelis|r or |cFF00FF25Osselan|r
    .train 647 >>Train your class spells
	.target Ithelis
	.target Osselan
    .xp <14,1
    .xp >16,1
step << Paladin
    #xprate >1.4999
    #label SMTraining2
    .goto Silvermoon City,91.19,36.94,-1
    .goto Silvermoon City,91.14,38.10,-1
	>>|cFFFCDC00Jump onto one of the benches below to avoid walking up the stairs|r
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Ithelis|r or |cFF00FF25Osselan|r
    .train 7294 >>Train your class spells << tbc
    .train 62124 >>Train your class spells << wotlk
	.target Ithelis
	.target Osselan
	.xp <16,1
step << Paladin
    #xprate >1.4999
    #completewith next
    .goto Silvermoon City,82.04,58.31,8,0
    .goto Silvermoon City,80.90,57.53,8 >>Go inside the Inn
step << Paladin
    #xprate >1.4999
    #completewith next
    .goto Silvermoon City,79.61,56.25,8,0
    .goto Silvermoon City,80.09,55.56,8,0
    .goto Silvermoon City,80.61,56.51,8,0
    .goto Silvermoon City,80.16,60.24,8 >>Travel toward |cFF00FF25Stillblade|r
step << Paladin
    #xprate >1.4999
    .goto Silvermoon City,80.16,60.24
    >>Use the |T134723:0|t[Filled Shimmering Vessel] on |cFF00FF25Stillblade|r
    .complete 9685,1 --Resurrect Sangrias Stillblade (1)
    .target Blood Knight Stillblade
    .use 24184
step << Mage
    .goto Eversong Woods,55.70,54.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Antheol|r
    .turnin 9404 >>Turn in Recently Living
    .train 1460,1
    .target Instructor Antheol
 step << Mage
    #completewith SMTraining2
    .goto Eversong Woods,56.51,49.61,25,0
    .goto Silvermoon City,73.39,59.65
    .zone Silvermoon City >>Enter Silvermoon
    .train 1460,1
step << BloodElf Priest
    .goto Silvermoon City,69.27,77.00,8,0
    .goto Silvermoon City,68.13,74.07,8,0
    .goto Silvermoon City,66.56,73.29,8,0
    .goto Silvermoon City,65.53,72.60,8,0
    .goto Silvermoon City,72.4,85.7,40,0
    .goto Silvermoon City,53.93,71.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Sathren|r
    .turnin 9133 >> Turn in Fly to Silvermoon City
    .accept 9134 >> Accept Skymistress Gloaming
    .target Sathren Azuredawn
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.5
step << Priest
    .goto Silvermoon City,60.65,63.45,15,0
    .goto Silvermoon City,65.92,53.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Vynna|r
    >>|cFF0E8312Buy a|r |T135144:0|t[Greater Magic Wand] |cFF0E8312from the AH if it's cheap|r
    >>|cFFFCDC00If they're all too expensive, skip this step|r
    .collect 11288,1,9281,1 --Greater Magic Wand
    .target Vynna
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.5
step << BloodElf Priest
    .abandon 9133 >> Abandon Fly to Silvermoon City
step << Priest/Mage
    #completewith SMTraining2
    .goto Silvermoon City,75.95,52.92,30,0
    .goto Silvermoon City,62.89,31.26,30,0
    .goto Silvermoon City,57.45,24.46,15,0
    .goto Silvermoon City,55.31,24.96,15,0 << Priest
    .goto Silvermoon City,57.21,21.25,15,0 << Mage
    .goto Silvermoon City,55.38,26.76,12 >> Travel toward |cFF00FF25Lotheolan|r << Priest
    .goto Silvermoon City,57.16,18.85,12 >> Travel toward |cFF00FF25Zaedana|r << Mage
step << Priest
    .goto Silvermoon City,55.38,26.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Lotheolan|r
    .train 8122 >> Train your class spells
    .target Lotheolan
	.xp <14,1
	.xp >16,1
step << Priest
    #label SMTraining2
    .goto Silvermoon City,55.38,26.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Lotheolan|r
    .train 8102 >> Train your class spells
    .target Lotheolan
	.xp <16,1
step << Mage
    #label SMtraining2
    .goto Silvermoon City,57.16,18.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Zaedana|r
    .train 1460 >> Train your class spells
	.xp <14,1
step << !BloodElf Warlock
    #completewith SMTraining2
    .goto Silvermoon City,73.39,59.65,30,0
    .goto Silvermoon City,75.62,58.31,20,0
    .goto Silvermoon City,75.95,52.92,30,0
    .goto Silvermoon City,75.65,45.04,15,0
    .goto Silvermoon City,76.33,43.33,12 >>Go inside the building, then go downstairs
step << !BloodElf Warlock
    #label SMTraining2
    .goto Silvermoon City,74.39,47.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Talionia|r
    .train 6222 >> Train your class spells
    .target Talionia
    .xp <14,1
step << !Shaman !Warrior !BloodElf/!Warlock !Paladin !Rogue
    #xprate <1.5
    #completewith ManaEssence
    .hs >> Hearth to Tranquillien
    .zoneskip Ghostlands
    .cooldown item,6948,>0 << !Druid
    .itemStat 16,QUALITY,<7 << Rogue
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8 << Rogue
step << !Shaman !Warrior !Druid !BloodElf/!Warlock !Paladin !Rogue
    #xprate <1.5
    #completewith next
    .goto Eversong Woods,56.52,49.83
    .zone Eversong Woods >> Exit Silvermoon
    .zoneskip Ghostlands
    .cooldown item,6948,<0
    .itemStat 16,QUALITY,<7 << Rogue
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8 << Rogue
step << !Shaman !Warrior !Druid !BloodElf/!Warlock !Paladin
    #xprate <1.5
    #completewith next
    .goto Eversong Woods,54.37,50.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Gloaming|r
    .fly Tranquillien >> Fly to Tranquillien
    .target Skymistress Gloaming
    .cooldown item,6948,<0
    .zoneskip Ghostlands
    .itemStat 16,QUALITY,<7 << Rogue
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8 << Rogue
step << !Rogue !Shaman !Warrior !BloodElf/!Warlock
    #xprate >1.4999
    #completewith ManaEssence
    .hs >> Hearth to Tranquillien
    .zoneskip Ghostlands
    .cooldown item,6948,>0 << !Druid
step << !Shaman !Warrior !Druid !BloodElf/!Warlock
    #xprate >1.4999
    #completewith next
    .goto Eversong Woods,56.52,49.83
    .zone Eversong Woods >> Exit Silvermoon
    .zoneskip Ghostlands
    .cooldown item,6948,<0
    .xp <16,1 << Rogue
step << BloodElf Priest
    .goto Eversong Woods,54.37,50.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Gloaming|r
    .turnin 9134 >> Turn in Skymistress Gloaming
    .accept 9135 >> Accept Return to Quartermaster Lymel
    .target Skymistress Gloaming
    .cooldown item,6948,<0
    .zoneskip Ghostlands
step << !Shaman !Warrior !Druid !BloodElf/!Warlock
    #xprate >1.4999
    #completewith SanctumOTM
    .goto Eversong Woods,54.37,50.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Gloaming|r
    .fly Tranquillien >> Fly to Tranquillien
    .target Skymistress Gloaming
    .cooldown item,6948,<0
    .zoneskip Ghostlands
    .xp <16,1 << Rogue
step
    .goto Ghostlands,48.91,32.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Kalarin|r
    >>|cFF0E8312Buy|r |T132796:0|t[Melon Juice] |cFF0E8312from him|r << Priest/Mage/Warlock/Druid
    >>|cFF0E8312Buy|r |T133978:0|t[Snapvine Watermelon] |cFF0E8312from him|r << !Priest !Mage !Warlock !Druid !Paladin
    >>|cFF0E8312Buy|r |T132796:0|t[Melon Juice] |cFF0E8312and|r |T133978:0|t[Snapvine Watermelon] |cFF0E8312from him|r << Paladin
    .collect 1205,30,9281,1 << Priest/Mage/Warlock/Druid/Paladin --Melon Juice (30)
    .collect 4538,20,9281,1 << !Priest !Mage !Warlock !Druid !Paladin --Snapvine Watermelon (20)
    .collect 4538,10,9281,1 << Paladin --Snapvine Watermelon (10)
    .target Innkeeper Kalarin
    .money <0.3000 << Priest/Mage/Warlock/Druid/Paladin
    .money <0.2000 << !Priest !Mage !Warlock !Druid !Paladin
    .money <0.4000 << Paladin
    .xp <15,1
    .xp >30,1
step
    .goto Ghostlands,48.91,32.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Kalarin|r
    >>|cFF0E8312Buy|r |T132796:0|t[Melon Juice] |cFF0E8312from him|r << Priest/Mage/Warlock/Druid
    >>|cFF0E8312Buy|r |T133978:0|t[Snapvine Watermelon] |cFF0E8312from him|r << !Priest !Mage !Warlock !Druid !Paladin
    >>|cFF0E8312Buy|r |T132796:0|t[Melon Juice] |cFF0E8312and|r |T133978:0|t[Snapvine Watermelon] |cFF0E8312from him|r << Paladin
    .collect 1205,20,9281,1 << Priest/Mage/Warlock/Druid/Paladin --Melon Juice (20)
    .collect 4538,20,9281,1 << !Priest !Mage !Warlock !Druid !Paladin --Snapvine Watermelon (20)
    .collect 4538,10,9281,1 << Paladin --Snapvine Watermelon (10)
    .target Innkeeper Kalarin
    .money <0.2000 << !Paladin
    .money <0.3000 << Paladin
    .xp <15,1
    .xp >30,1
step
    .goto Ghostlands,48.91,32.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Kalarin|r
    >>|cFF0E8312Buy|r |T132796:0|t[Melon Juice] |cFF0E8312from him|r << Priest/Mage/Warlock/Druid
    >>|cFF0E8312Buy|r |T133978:0|t[Snapvine Watermelon] |cFF0E8312from him|r << !Priest !Mage !Warlock !Druid !Paladin
    >>|cFF0E8312Buy|r |T132796:0|t[Melon Juice] |cFF0E8312and|r |T133978:0|t[Snapvine Watermelon] |cFF0E8312from him|r << Paladin
    .collect 1205,10,9281,1 << Priest/Mage/Warlock/Druid/Paladin --Melon Juice (10)
    .collect 4538,10,9281,1 << !Priest !Mage !Warlock !Druid !Paladin --Snapvine Watermelon (10)
    .collect 4538,10,9281,1 << Paladin --Snapvine Watermelon (10)
    .target Innkeeper Kalarin
    .money <0.1000 << !Paladin
    .money <0.2000 << Paladin
    .xp <15,1
    .xp >30,1
step << BloodElf Priest
    .goto Ghostlands,47.34,29.26
>>Talk to |cFF00FF25Quartermaster Lymel|r
    .turnin 9135 >> Turn in Return to Quartermaster Lymel
    .target Quartermaster Lymel
    .isQuestComplete 9135
step << BloodElf Priest
    .abandon 9134 >> Abandon Skymistress Gloaming
step
    #completewith SanctumOTM
    >>Kill |cFFFF5722Luzran|r |cFFFCDC00IF you can find a group to carry you|r. Loot him for his |cFF00BCD4Head|r
    .complete 9156,2 --Luzran's Head (1)
    .mob Luzran
step
    #completewith next
    >>Kill |cFFFF5722Gangled Cannibals|r and |cFFFF5722Risen Hungerers|r. Loot the |cFFFF5722Risen Hungerers|r for their |cFF00BCD4Rotting Hearts|r
    >>|cFFFCDC00Be careful as|r |cFFFF5722Gangled Cannibals|r |cFFFCDC00cast|r |T136224:0|t[Enrage] |cFFFCDC00(increased damage and attack speed) at low health|r
    >>|cFFFCDC00Be careful as|r |cFFFF5722Risen Hungerers|r |cFFFCDC00cast|r |T132278:0|t[Blood Leech] |cFFFCDC00(10 damage lifesteal)|r
    .complete 9155,1 --Kill Risen Hungerer (x10)
    .complete 9155,2 --Kill Gangled Cannibal (x10)
    .collect 22641,10,9216,1,-1 --Rotting Hearts (10)
    .mob Risen Hungerer
    .mob Gangled Cannibal
step
    #label SanctumOTM
    .goto Ghostlands,35.18,32.85,100 >>Travel toward the Sanctum of the Moon
    .isOnQuest 9150
step
    #label ManaEssence
    .goto Ghostlands,35.18,32.85,40,0
    .goto Ghostlands,34.58,31.04,40,0
    .goto Ghostlands,33.15,30.13,40,0
    .goto Ghostlands,31.39,29.83,40,0
    .goto Ghostlands,30.52,31.32,40,0
    .goto Ghostlands,30.24,33.02,40,0
    .goto Ghostlands,32.08,34.65,40,0
    .goto Ghostlands,32.53,35.72,40,0
    .goto Ghostlands,33.63,36.13,40,0
    .goto Ghostlands,34.11,34.93,40,0
    .goto Ghostlands,35.18,32.85,40,0
    .goto Ghostlands,34.58,31.04,40,0
    .goto Ghostlands,33.15,30.13,40,0
    .goto Ghostlands,31.39,29.83,40,0
    .goto Ghostlands,30.52,31.32,40,0
    .goto Ghostlands,30.24,33.02,40,0
    .goto Ghostlands,32.08,34.65,40,0
    .goto Ghostlands,32.53,35.72,40,0
    .goto Ghostlands,33.63,36.13,40,0
    .goto Ghostlands,34.11,34.93
    >>Kill |cFFFF5722Arcane Devourers|r and |cFFFF5722Mana Shifters|r. Loot them for their |cFF00BCD4Mana Essence|r
    .complete 9150,1 --Collect Crystallized Mana Essence (x8)
    .mob Arcane Devourer
    .mob Mana Shifter
step
    .goto Ghostlands,33.55,26.55
    >>Loot the |cFFDB2EEFBox of Supplies|r in the caravan
    .complete 9152,1 --Collect Rathis Tomber's Supplies (x1)
step << !BloodElf/!Rogue
    #completewith Andaroth
    .goto Ghostlands,37.69,20.68,40,0
    >>Kill |cFFFF5722Spindleweb Spiders|r. Loot them for their |cFF00BCD4Spider Legs|r
    .collect 22644,5,9171,1 --Collect Crunchy Spider Leg (x5)
    .mob Spindleweb Spider
step << BloodElf Rogue
    #completewith KeltusD
    .goto Ghostlands,37.69,20.68,40,0
    >>Kill |cFFFF5722Spindleweb Spiders|r. Loot them for their |cFF00BCD4Spider Legs|r
    .collect 22644,5,9171,1 --Collect Crunchy Spider Leg (x5)
    .mob Spindleweb Spider
step
    #completewith Andaroth
    >>Kill |cFFFF5722Sentinel Spies|r
    .complete 9160,1 --Kill Sentinel Spy (x12)
    .mob Sentinel Spy
step << BloodElf Rogue
    #label KeltusD
    .goto Ghostlands,32.97,11.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Keltus|r
    >>|cFFFCDC00DON'T kill the|r |cFFFF5722Sentinel Leader|r
    >>|cFF00FF25Keltus|r|cFFFCDC00's phasing can be buggy. If he's not there, then swim to Eversong Woods and back|r
    .turnin 9532 >> Turn in Find Keltus Darkleaf
    .accept 9460 >> Accept Combining Forces
    .target Keltus Darkleaf
step << BloodElf Rogue
    #completewith next
    >>Travel toward the |cFFDB2EEFShrine|r
    .complete 9160,2 --Investigate An'daroth
step << BloodElf Rogue
    .goto Ghostlands,37.05,14.03,30,0
    .goto Ghostlands,38.45,13.16,30,0
    .goto Ghostlands,37.33,13.50,30,0
    .goto Ghostlands,35.87,11.73,30,0
    .goto Ghostlands,35.41,11.93,30,0
    .goto Ghostlands,36.33,13.66,30,0
    .goto Ghostlands,35.98,14.48,30,0
    .goto Ghostlands,37.05,14.03,30,0
    .goto Ghostlands,38.45,13.16,30,0
    .goto Ghostlands,37.33,13.50,30,0
    .goto Ghostlands,35.87,11.73,30,0
    .goto Ghostlands,35.41,11.93,30,0
    .goto Ghostlands,36.33,13.66,30,0
    .goto Ghostlands,35.98,14.48
    >>|T132320:0|t[Stealth] |cFFFCDC00and then|r |T133644:0|t[Pick Pocket] |cFFFCDC00the|r |cFFFF5722Sentinel Leader|r |cFFFCDC00for her|r |cFF00BCD4Lacy Handkerchief|r
    >>|cFFFCDC00If you aggro her, run away and reset her|r
    .complete 9460,1 --Lacy Handkerchief (x1)
    .mob Sentinel Leader
step
    #label Andaroth
    .goto Ghostlands,36.94,15.73
    >>Travel toward the |cFFDB2EEFShrine|r
    .complete 9160,2 --Investigate An'daroth
step
    .loop 35,Ghostlands,38.21,17.44,36.67,17.00,35.87,14.42,34.77,12.01,35.94,11.58,38.51,13.19,37.50,14.67,38.21,17.44
    >>Kill |cFFFF5722Sentinel Spies|r
    .complete 9160,1 --Kill Sentinel Spy (x12)
    .mob Sentinel Spy
step
    #xprate <1.5
    .loop 35,Ghostlands,38.21,17.44,36.67,17.00,35.87,14.42,34.77,12.01,35.94,11.58,38.51,13.19,37.50,14.67,38.21,17.44
    .xp 14+5200 >> Grind to 5200+/12300xp
step << BloodElf Rogue
    .goto Ghostlands,32.97,11.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Keltus|r
    .turnin 9460 >> Turn in Combining Forces
    .accept 9618 >> Accept Return the Reports
    >>|cFF00FF25Keltus|r|cFFFCDC00's phasing can be buggy. If he's not there, then swim to Eversong Woods and back|r
    .target Keltus Darkleaf
step
    #completewith next
    >>Kill |cFFFF5722Knucklerot|r |cFFFCDC00IF you can find a group to carry you|r. Loot him for his |cFF00BCD4Head|r
    .complete 9156,1 --Knucklerot's Head (1)
    .mob Knucklerot
step
    .goto Ghostlands,29.08,15.17,30,0
    .goto Ghostlands,27.21,12.88,30,0
    .goto Ghostlands,25.83,14.98,30,0
    .goto Ghostlands,24.14,14.29,30,0
    .goto Ghostlands,23.41,16.01,30,0
    .goto Ghostlands,24.71,16.39,30,0
    .goto Ghostlands,26.35,17.43,30,0
    .goto Ghostlands,27.08,15.48,30,0
    .goto Ghostlands,29.08,15.17,30,0
    .goto Ghostlands,27.21,12.88,30,0
    .goto Ghostlands,25.83,14.98,30,0
    .goto Ghostlands,24.14,14.29,30,0
    .goto Ghostlands,23.41,16.01,30,0
    .goto Ghostlands,24.71,16.39,30,0
    .goto Ghostlands,26.35,17.43,30,0
    .goto Ghostlands,27.08,15.48
    >>Kill |cFFFF5722Quel'dorei Ghosts|r and |cFFFF5722Quel'dorei Wraiths|r
    >>|cFFFCDC00Be careful as they cast|r |T136205:0|t[Evasion] |cFFFCDC00(Increased Dodge chance) at <50% health|r << Rogue/Paladin
    .complete 9139,1 --Kill Quel'dorei Ghost (x6)
    .complete 9139,2 --Kill Quel'dorei Wraith (x4)
    .mob Quel'dorei Ghost
    .mob Quel'dorei Wraith
step
    #completewith next
    >>Kill |cFFFF5722Spindleweb Spiders|r. Loot them for their |cFF00BCD4Spider Legs|r
    .collect 22644,5,9171,1 --Collect Crunchy Spider Leg (x5)
    .mob Spindleweb Spider
step
    #completewith next
    .goto Ghostlands,18.88,13.73,80 >>Travel to the Shore
step
    .goto Ghostlands,18.88,13.73,40,0
    .goto Ghostlands,18.53,18.37,40,0
    .goto Ghostlands,19.44,20.80,40,0
    .goto Ghostlands,18.99,21.71,40,0
    .goto Ghostlands,19.93,23.83,40,0
    .goto Ghostlands,17.38,27.32,40,0
    .goto Ghostlands,18.16,10.60,40,0
    .goto Ghostlands,18.43,8.30,40,0
    .goto Ghostlands,18.54,6.17,40,0
    .goto Ghostlands,18.88,13.73,40,0
    .goto Ghostlands,18.53,18.37,40,0
    .goto Ghostlands,19.44,20.80,40,0
    .goto Ghostlands,18.99,21.71,40,0
    .goto Ghostlands,19.93,23.83,40,0
    .goto Ghostlands,17.38,27.32,40,0
    .goto Ghostlands,18.16,10.60,40,0
    .goto Ghostlands,18.43,8.30,40,0
    .goto Ghostlands,18.54,6.17
    >>Kill |cFFFF5722Zombified Grimscales|r and |cFFFF5722Withered Grimscales|r. Loot them for their |cFF00BCD4Plagued Murloc Spines|r
    >>|cFFFCDC00Be careful of the |cFFFF5722Zombified Grimscale|r's|r |T136066:0|t[Fevered Fatigue] |cFFFCDC00(reduces Intellect and Spirit by 6 for 10 min)|r
    >>|cFFFCDC00Be careful of the |cFFFF5722Withered Grimscale|r's|r |T135914:0|t[Decayed Agility] |cFFFCDC00(reduces Agility by 18 for 5 min)|r  << !Mage !Priest !Warlock
    >>|cFFFCDC00Move out of their melee range to avoid it|r
    .complete 9149,1 --Collect Plagued Murloc Spine (x6)
    .mob Zombified Grimscale
    .mob Withered Grimscale
step
    #completewith SLurker
    >>Kill |cFFFF5722Knucklerot|r |cFFFCDC00IF you can find a group to carry you|r. Loot him for his |cFF00BCD4Head|r
    .complete 9156,1 --Knucklerot's Head (1)
    .mob Knucklerot
step
    #completewith next
    >>Kill |cFFFF5722Spindleweb Spiders|r. Loot them for their |cFF00BCD4Spider Legs|r
    .collect 22644,5,9171,1 --Collect Crunchy Spider Leg (x5)
    .mob Spindleweb Spider
step
    .goto Ghostlands,27.40,38.73,100 >>Cross the river toward the |cFFFF5722Spindleweb Lurkers|r
    .isOnQuest 9159
step
    #completewith SLurker
    >>Kill |cFFFF5722Vampiric Mistbats|r
    >>|cFFFCDC00Be careful of their|r |T136130:0|t[Draining Touch] |cFFFCDC00Lifesteal spell|r
    .complete 9159,1 --Kill Vampiric Mistbat (x10)
    .mob Vampiric Mistbat
step
    .loop 40,Ghostlands,26.17,37.11,24.52,39.78,25.64,42.73,25.18,44.78,27.23,44.19,27.81,42.02,29.30,41.97,31.41,42.20,32.04,43.60,34.11,42.43,35.24,41.73,35.69,38.63,32.27,39.40,29.89,36.61,26.17,37.11
    >>Kill |cFFFF5722Spindleweb Lurkers|r. Loot them for their |cFF00BCD4Spider Legs|r
    >>|cFFFCDC00Be careful of their|r |T136016:0|t[Poison]
    .complete 9159,2 --Kill Spindleweb Lurker (x8)
    .collect 22644,5,9171,1,-1 --Collect Crunchy Spider Leg (x5)
    .mob Spindleweb Lurker
    .itemcount 22644,<5
step
    #label SLurker
    .loop 40,Ghostlands,26.17,37.11,24.52,39.78,25.64,42.73,25.18,44.78,27.23,44.19,27.81,42.02,29.30,41.97,31.41,42.20,32.04,43.60,34.11,42.43,35.24,41.73,35.69,38.63,32.27,39.40,29.89,36.61,26.17,37.11
    >>Kill |cFFFF5722Spindleweb Lurkers|r
    >>|cFFFCDC00Be careful of their|r |T136016:0|t[Poison]
    .complete 9159,2 --Kill Spindleweb Lurker (x8)
    .mob Spindleweb Lurker
    .itemcount 22644,5
step
    #completewith next
    >>Kill |cFFFF5722Blackpaw Gnolls|r, |cFFFF5722Blackpaw Scavengers|r, and |cFFFF5722Blackpaw Shamans|r
    >>|cFFFCDC00Don't focus on this yet|r
    .complete 9192,1 --Kill Blackpaw Gnoll (x8)
    .complete 9192,2 --Kill Blackpaw Scavenger (x6)
    .complete 9192,3 --Kill Blackpaw Shaman (x4)
    .mob Blackpaw Gnoll
    .mob Blackpaw Scavenger
    .mob Blackpaw Shaman
step
    .goto Ghostlands,31.44,48.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Shatharia|r
    .accept 9207 >> Accept Underlight Ore Samples
    .target Apprentice Shatharia
step
    .goto Ghostlands,30.72,46.23,30,0
    .goto Ghostlands,30.26,45.12,30,0
    .goto Ghostlands,29.33,44.62,30,0
    .goto Ghostlands,28.56,46.32,30,0
    .goto Ghostlands,27.87,47.13,30,0
    .goto Ghostlands,26.97,47.44,30,0
    .goto Ghostlands,25.76,47.44,30,0
    .goto Ghostlands,25.24,49.18,30,0
    .goto Ghostlands,27.39,50.88,30,0
    .goto Ghostlands,29.01,50.36,30,0
    .goto Ghostlands,29.09,48.09,30,0
    .goto Ghostlands,31.27,48.98,30,0
    .goto Ghostlands,30.07,51.93,30,0
    .goto Ghostlands,28.68,52.86,30,0
    .goto Ghostlands,27.27,52.20,30,0
    .goto Ghostlands,26.85,46.23,30,0
    .goto Ghostlands,29.22,42.42,30,0
    .goto Ghostlands,31.60,44.47,30,0
    .goto Ghostlands,30.72,46.23
    >>Kill |cFFFF5722Blackpaw Gnolls|r, |cFFFF5722Blackpaw Scavengers|r, and |cFFFF5722Blackpaw Shamans|r. Loot them for their |cFF00BCD4Underlight Ore|r
    >>|cFFFCDC00You can also mine the|r |cFFDB2EEFUnderlight Ore|r |cFFFCDC00from nodes in the Underlight Mines|r
    .complete 9192,1 --Kill Blackpaw Gnoll (x8)
    .complete 9192,2 --Kill Blackpaw Scavenger (x6)
    .complete 9192,3 --Kill Blackpaw Shaman (x4)
    .complete 9207,1 --Collect Underlight Ore (x6)
    .mob Blackpaw Gnoll
    .mob Blackpaw Scavenger
    .mob Blackpaw Shaman
    .skill mining,1
step
    .goto Ghostlands,30.72,46.23,30,0
    .goto Ghostlands,30.26,45.12,30,0
    .goto Ghostlands,29.33,44.62,30,0
    .goto Ghostlands,28.56,46.32,30,0
    .goto Ghostlands,27.87,47.13,30,0
    .goto Ghostlands,26.97,47.44,30,0
    .goto Ghostlands,25.76,47.44,30,0
    .goto Ghostlands,25.24,49.18,30,0
    .goto Ghostlands,27.39,50.88,30,0
    .goto Ghostlands,29.01,50.36,30,0
    .goto Ghostlands,29.09,48.09,30,0
    .goto Ghostlands,31.27,48.98,30,0
    .goto Ghostlands,30.07,51.93,30,0
    .goto Ghostlands,28.68,52.86,30,0
    .goto Ghostlands,27.27,52.20,30,0
    .goto Ghostlands,26.85,46.23,30,0
    .goto Ghostlands,29.22,42.42,30,0
    .goto Ghostlands,31.60,44.47,30,0
    .goto Ghostlands,30.72,46.23
    >>Kill |cFFFF5722Blackpaw Gnolls|r, |cFFFF5722Blackpaw Scavengers|r, and |cFFFF5722Blackpaw Shamans|r. Loot them for their |cFF00BCD4Underlight Ore|r
    .complete 9192,1 --Kill Blackpaw Gnoll (x8)
    .complete 9192,2 --Kill Blackpaw Scavenger (x6)
    .complete 9192,3 --Kill Blackpaw Shaman (x4)
    .complete 9207,1 --Collect Underlight Ore (x6)
    .mob Blackpaw Gnoll
    .mob Blackpaw Scavenger
    .mob Blackpaw Shaman
step
    #completewith Hungerers
    >>Kill |cFFFF5722Knucklerot|r |cFFFCDC00IF you can find a group to carry you|r. Loot him for his |cFF00BCD4Head|r
    .complete 9156,1 --Knucklerot's Head (1)
    .mob Knucklerot
step
    #completewith Hungerers
    >>Kill |cFFFF5722Luzran|r |cFFFCDC00IF you can find a group to carry you|r. Loot him for his |cFF00BCD4Head|r
    .complete 9156,2 --Luzran's Head (1)
    .mob Luzran
step
    #label Hungerers
    .goto Ghostlands,37.13,48.38,40,0
    .goto Ghostlands,37.63,45.56,40,0
    .goto Ghostlands,39.64,43.05,40,0
    .goto Ghostlands,37.56,41.68,40,0
    .goto Ghostlands,39.82,39.35,40,0
    .goto Ghostlands,37.78,38.23,40,0
    .goto Ghostlands,39.66,35.69,40,0
    .goto Ghostlands,38.29,33.03,40,0
    .goto Ghostlands,40.23,31.75,40,0
    .goto Ghostlands,38.77,29.82,40,0
    .goto Ghostlands,40.76,28.98,40,0
    .goto Ghostlands,37.13,48.38,40,0
    .goto Ghostlands,37.63,45.56,40,0
    .goto Ghostlands,39.64,43.05,40,0
    .goto Ghostlands,37.56,41.68,40,0
    .goto Ghostlands,39.82,39.35,40,0
    .goto Ghostlands,37.78,38.23,40,0
    .goto Ghostlands,39.66,35.69,40,0
    .goto Ghostlands,38.29,33.03,40,0
    .goto Ghostlands,40.23,31.75,40,0
    .goto Ghostlands,38.77,29.82,40,0
    .goto Ghostlands,40.76,28.98
    >>Kill |cFFFF5722Gangled Cannibals|r and |cFFFF5722Risen Hungerers|r. Loot |cFFFF5722Risen Hungerers|r for their |cFF00BCD4Rotting Hearts|r
    >>|cFFFCDC00Be careful as|r |cFFFF5722Gangled Cannibals|r |cFFFCDC00cast|r |T136224:0|t[Enrage] |cFFFCDC00(increased damage and attack speed) at low health|r
    >>|cFFFCDC00Be careful as|r |cFFFF5722Risen Hungerers|r |cFFFCDC00cast|r |T132278:0|t[Blood Leech] |cFFFCDC00(10 damage lifesteal)|r
    >>|cFFFF5722Gangled Cannibals|r |cFFFCDC00and |cFFFF5722Risen Hungerers|r share spawns with each other. Kill both to spawn the ones you need|r
    .complete 9155,1 --Kill Risen Hungerer (x10)
    .complete 9155,2 --Kill Gangled Cannibal (x10)
    .collect 22641,10,9216,1,-1 --Rotting Hearts (10)
    .mob Risen Hungerer
    .mob Gangled Cannibal
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Vandril|r, |cFF00FF25Rathis|r, and |cFF00FF25Mouldier|r
    .turnin 9139 >> Turn in Goldenmist Village
    .goto Ghostlands,46.08,28.33,10,0
    .goto Ghostlands,46.55,28.38
    .accept 9140 >> Accept Windrunner Village
    .turnin 9152 >> Turn in Tomber's Supplies
    .goto Ghostlands,47.14,28.30,10,0
    .goto Ghostlands,47.27,28.59
    .accept 9171 >> Accept Culinary Crunch
    .turnin 9171 >> Turn in Culinary Crunch
    .goto Ghostlands,48.43,30.93
    .target Arcanist Vandril
    .target Rathis Tomber
    .target Master Chef Mouldier
    .itemcount 22644,5
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Vandril|r and |cFF00FF25Rathis|r
    .turnin 9139 >> Turn in Goldenmist Village
    .goto Ghostlands,46.08,28.33,10,0
    .goto Ghostlands,46.55,28.38
    .accept 9140 >> Accept Windrunner Village
    .turnin 9152 >> Turn in Tomber's Supplies
    .goto Ghostlands,47.14,28.30,10,0
    .goto Ghostlands,47.27,28.59
    .target Arcanist Vandril
    .target Rathis Tomber
    .itemcount 22644,<5
step
    .goto Ghostlands,48.91,32.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Kalarin|r
    >>|cFF0E8312Buy|r |T132796:0|t[Melon Juice] |cFF0E8312from him|r << Priest/Mage/Warlock/Druid
    >>|cFF0E8312Buy|r |T133978:0|t[Snapvine Watermelon] |cFF0E8312from him|r << !Priest !Mage !Warlock !Druid !Paladin
    >>|cFF0E8312Buy|r |T132796:0|t[Melon Juice] |cFF0E8312and|r |T133978:0|t[Snapvine Watermelon] |cFF0E8312from him|r << Paladin
    .collect 1205,30,9281,1 << Priest/Mage/Warlock/Druid/Paladin --Melon Juice (30)
    .collect 4538,20,9281,1 << !Priest !Mage !Warlock !Druid !Paladin --Snapvine Watermelon (20)
    .collect 4538,10,9281,1 << Paladin --Snapvine Watermelon (10)
    .target Innkeeper Kalarin
    .money <0.3000 << Priest/Mage/Warlock/Druid/Paladin
    .money <0.2000 << !Priest !Mage !Warlock !Druid !Paladin
    .money <0.4000 << Paladin
    .xp <15,1
    .xp >30,1
step
    .goto Ghostlands,48.91,32.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Kalarin|r
    >>|cFF0E8312Buy|r |T132796:0|t[Melon Juice] |cFF0E8312from him|r << Priest/Mage/Warlock/Druid
    >>|cFF0E8312Buy|r |T133978:0|t[Snapvine Watermelon] |cFF0E8312from him|r << !Priest !Mage !Warlock !Druid !Paladin
    >>|cFF0E8312Buy|r |T132796:0|t[Melon Juice] |cFF0E8312and|r |T133978:0|t[Snapvine Watermelon] |cFF0E8312from him|r << Paladin
    .collect 1205,20,9281,1 << Priest/Mage/Warlock/Druid/Paladin --Melon Juice (20)
    .collect 4538,20,9281,1 << !Priest !Mage !Warlock !Druid !Paladin --Snapvine Watermelon (20)
    .collect 4538,10,9281,1 << Paladin --Snapvine Watermelon (10)
    .target Innkeeper Kalarin
    .money <0.2000 << !Paladin
    .money <0.3000 << Paladin
    .xp <15,1
    .xp >30,1
step
    .goto Ghostlands,48.91,32.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Kalarin|r
    >>|cFF0E8312Buy|r |T132796:0|t[Melon Juice] |cFF0E8312from him|r << Priest/Mage/Warlock/Druid
    >>|cFF0E8312Buy|r |T133978:0|t[Snapvine Watermelon] |cFF0E8312from him|r << !Priest !Mage !Warlock !Druid !Paladin
    >>|cFF0E8312Buy|r |T132796:0|t[Melon Juice] |cFF0E8312and|r |T133978:0|t[Snapvine Watermelon] |cFF0E8312from him|r << Paladin
    .collect 1205,10,9281,1 << Priest/Mage/Warlock/Druid/Paladin --Melon Juice (10)
    .collect 4538,10,9281,1 << !Priest !Mage !Warlock !Druid !Paladin --Snapvine Watermelon (10)
    .collect 4538,10,9281,1 << Paladin --Snapvine Watermelon (10)
    .target Innkeeper Kalarin
    .money <0.1000 << !Paladin
    .money <0.2000 << Paladin
    .xp <15,1
    .xp >30,1
step << Paladin
    .goto Ghostlands,47.71,32.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Vredigar|r
    >>|cFF0E8312Buy the|r |T132492:0|t[Tranquillien Defender's Girdle] |cFF0E8312from him|r
    .collect 28162,1,9281,1 --Collect Tranquillien Defender's Girdle (1)
    .target Provisioner Vredigar
    .reputation 922,honored,<0,1
    .itemStat 6,LEVEL,<17
step << Paladin
    #completewith Clearing
    +Equip the |T132492:0|t[Tranquillien Defender's Girdle]
    .use 28162
    .itemcount 28162,1
    .itemStat 6,LEVEL,<17
step << Rogue/Hunter/Druid/Shaman
    .goto Ghostlands,47.71,32.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Vredigar|r
    >>|cFF0E8312Buy the|r |T132498:0|t[Batskin Belt] |cFF0E8312from him|r
    .collect 28158,1,9281,1 --Collect Batskin Belt (1)
    .target Provisioner Vredigar
    .reputation 922,honored,<0,1
    .itemStat 6,LEVEL,<17
step << Rogue/Hunter/Druid/Shaman
    #completewith Clearing
    +Equip the |T132498:0|t[Batskin Belt]
    .use 28158
    .itemcount 28158,1
    .itemStat 6,LEVEL_SHORT,<5
step << Rogue
    .goto Ghostlands,47.67,34.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Renzithen|r
    .turnin 9149 >> Turn in The Plagued Coast
    .target Apothecary Renzithen
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Eralan|r
    >>|cFF0E8312Buy the|r |T135427:0|t[Throat Piercers] |cFF0E8312and the|r |T135344:0|t[Sinister Scimitar] |cFF0E8312from her if they're up|r
    .vendor 16268 >> Vendor Trash
    .target Eralan
    .money <0.7517 << BloodElf/Undead
    .money <0.7893 << Orc/Troll
    .itemStat 16,QUALITY,<7
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Eralan|r
    >>|cFF0E8312Buy the|r |T135344:0|t[Sinister Scimitar] |cFF0E8312from her if it's up|r
    .vendor 16268 >> Vendor Trash
    .target Eralan
    .money <0.6947 << BloodElf/Undead
    .money <0.7294 << Orc/Troll
    .itemStat 16,QUALITY,<7
    .itemStat 18,QUALITY,>7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>12.5 << wotlk
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Eralan|r
    >>|cFF0E8312Buy the|r |T135427:0|t[Throat Piercers] |cFF0E8312from her if it's up|r
    .vendor 16268 >> Vendor Trash
    .target Eralan
    .money <0.0570 << BloodElf/Undead
    .money <0.0599 << Orc/Troll
    .itemStat 16,QUALITY,>7
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step << Rogue
    #label Eralan1
    #completewith Clearing
    +Equip the |T135427:0|t[Throat Piercers] and |T135344:0|t[Sinister Scimitar]
    .use 29584
    .use 29583
    .itemcount 29584,1
    .itemcount 29583,1
    .itemStat 16,QUALITY,<7
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step << Rogue
    #requires Eralan1
    #completewith Clearing
    +Equip the |T135344:0|t[Sinister Scimitar]
    .use 29583
    .itemcount 29583,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
step << Rogue
    #requires Eralan1
    #completewith Clearing
    +Equip the |T135427:0|t[Throat Piercers]
    .use 29584
    .itemcount 29584,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step << !Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Renzithen|r, |cFF00FF25Rathiel|r, |cFF00FF25Dame|r, |cFF00FF25Mavren|r, |cFF00FF25Maltendis|r, and |cFF00FF25Darenis|r
    .turnin 9149 >> Turn in The Plagued Coast
    .goto Ghostlands,47.67,34.87
    .turnin 9155 >> Turn in Down the Dead Scar
    .turnin 9156 >> Turn in Wanted: Knucklerot and Luzran
    .goto Ghostlands,46.02,33.58
    .turnin 9160 >> Turn in Investigate An'daroth
    .accept 9163 >> Accept Into Occupied Territory
    .goto Ghostlands,45.17,32.37,10,0
    .goto Ghostlands,44.88,32.51
    .accept 9173 >> Accept Retaking Windrunner Spire
    .goto Ghostlands,44.77,32.44
    .turnin 9192 >> Turn in Trouble at the Underlight Mines
    .goto Ghostlands,44.74,32.28
    .turnin 9150 >> Turn in Salvaging the Past
    .accept 9151 >> Accept The Sanctum of the Sun
    .goto Ghostlands,46.02,31.95
    .target Apothecary Renzithen
    .target Deathstalker Rathiel
    .target Dame Auriferous
    .target High Executor Mavren
    .target Deathstalker Maltendis
    .target Magister Darenis
    .isQuestComplete 9156
    .xp <17,1
 step << !Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Renzithen|r, |cFF00FF25Rathiel|r, |cFF00FF25Dame|r, |cFF00FF25Mavren|r, |cFF00FF25Maltendis|r, and |cFF00FF25Darenis|r
    .turnin 9149 >> Turn in The Plagued Coast
    .goto Ghostlands,47.67,34.87
    .turnin 9155 >> Turn in Down the Dead Scar
    .goto Ghostlands,46.02,33.58
    .turnin 9160 >> Turn in Investigate An'daroth
    .accept 9163 >> Accept Into Occupied Territory
    .goto Ghostlands,45.17,32.37,10,0
    .goto Ghostlands,44.88,32.51
    .accept 9173 >> Accept Retaking Windrunner Spire
    .goto Ghostlands,44.77,32.44
    .turnin 9192 >> Turn in Trouble at the Underlight Mines
    .goto Ghostlands,44.74,32.28
    .turnin 9150 >> Turn in Salvaging the Past
    .accept 9151 >> Accept The Sanctum of the Sun
    .goto Ghostlands,46.02,31.95
    .target Apothecary Renzithen
    .target Deathstalker Rathiel
    .target Dame Auriferous
    .target High Executor Mavren
    .target Deathstalker Maltendis
    .target Magister Darenis
    .xp <17,1
step << !Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Renzithen|r, |cFF00FF25Rathiel|r, |cFF00FF25Dame|r, |cFF00FF25Mavren|r, |cFF00FF25Maltendis|r, and |cFF00FF25Darenis|r
    .turnin 9149 >> Turn in The Plagued Coast
    .goto Ghostlands,47.67,34.87
    .turnin 9155 >> Turn in Down the Dead Scar
    .turnin 9156 >> Turn in Wanted: Knucklerot and Luzran
    .goto Ghostlands,46.02,33.58
    .turnin 9160 >> Turn in Investigate An'daroth
    .accept 9163 >> Accept Into Occupied Territory
    .goto Ghostlands,45.17,32.37,10,0
    .goto Ghostlands,44.88,32.51
    .accept 9173 >> Accept Retaking Windrunner Spire
    .goto Ghostlands,44.77,32.44
    .turnin 9192 >> Turn in Trouble at the Underlight Mines
    .goto Ghostlands,44.74,32.28
    .turnin 9150 >> Turn in Salvaging the Past
    .goto Ghostlands,46.02,31.95
    .target Apothecary Renzithen
    .target Deathstalker Rathiel
    .target Dame Auriferous
    .target High Executor Mavren
    .target Deathstalker Maltendis
    .target Magister Darenis
    .isQuestComplete 9156
step << !Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Renzithen|r, |cFF00FF25Rathiel|r, |cFF00FF25Dame|r, |cFF00FF25Mavren|r, |cFF00FF25Maltendis|r, and |cFF00FF25Darenis|r
    .turnin 9149 >> Turn in The Plagued Coast
    .goto Ghostlands,47.67,34.87
    .turnin 9155 >> Turn in Down the Dead Scar
    .goto Ghostlands,46.02,33.58
    .turnin 9160 >> Turn in Investigate An'daroth
    .accept 9163 >> Accept Into Occupied Territory
    .goto Ghostlands,45.17,32.37,10,0
    .goto Ghostlands,44.88,32.51
    .accept 9173 >> Accept Retaking Windrunner Spire
    .goto Ghostlands,44.77,32.44
    .turnin 9192 >> Turn in Trouble at the Underlight Mines
    .goto Ghostlands,44.74,32.28
    .turnin 9150 >> Turn in Salvaging the Past
    .goto Ghostlands,46.02,31.95
    .target Apothecary Renzithen
    .target Deathstalker Rathiel
    .target Dame Auriferous
    .target High Executor Mavren
    .target Deathstalker Maltendis
    .target Magister Darenis
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Rathiel|r, |cFF00FF25Dame|r, |cFF00FF25Mavren|r, |cFF00FF25Maltendis|r, and |cFF00FF25Darenis|r
    .turnin 9155 >> Turn in Down the Dead Scar
    .turnin 9156 >> Turn in Wanted: Knucklerot and Luzran
    .goto Ghostlands,46.02,33.58
    .turnin 9160 >> Turn in Investigate An'daroth
    .accept 9163 >> Accept Into Occupied Territory
    .goto Ghostlands,45.17,32.37,10,0
    .goto Ghostlands,44.88,32.51
    .accept 9173 >> Accept Retaking Windrunner Spire
    .goto Ghostlands,44.77,32.44
    .turnin 9192 >> Turn in Trouble at the Underlight Mines
    .goto Ghostlands,44.74,32.28
    .turnin 9150 >> Turn in Salvaging the Past
    .accept 9151 >> Accept The Sanctum of the Sun
    .goto Ghostlands,46.02,31.95
    .target Deathstalker Rathiel
    .target Dame Auriferous
    .target High Executor Mavren
    .target Deathstalker Maltendis
    .target Magister Darenis
    .isQuestComplete 9156
    .xp <17,1
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Rathiel|r, |cFF00FF25Dame|r, |cFF00FF25Mavren|r, |cFF00FF25Maltendis|r, and |cFF00FF25Darenis|r
    .turnin 9155 >> Turn in Down the Dead Scar
    .goto Ghostlands,46.02,33.58
    .turnin 9160 >> Turn in Investigate An'daroth
    .accept 9163 >> Accept Into Occupied Territory
    .goto Ghostlands,45.17,32.37,10,0
    .goto Ghostlands,44.88,32.51
    .accept 9173 >> Accept Retaking Windrunner Spire
    .goto Ghostlands,44.77,32.44
    .turnin 9192 >> Turn in Trouble at the Underlight Mines
    .goto Ghostlands,44.74,32.28
    .turnin 9150 >> Turn in Salvaging the Past
    .accept 9151 >> Accept The Sanctum of the Sun
    .goto Ghostlands,46.02,31.95
    .target Deathstalker Rathiel
    .target Dame Auriferous
    .target High Executor Mavren
    .target Deathstalker Maltendis
    .target Magister Darenis
    .xp <17,1
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Rathiel|r, |cFF00FF25Dame|r, |cFF00FF25Mavren|r, |cFF00FF25Maltendis|r, and |cFF00FF25Darenis|r
    .turnin 9155 >> Turn in Down the Dead Scar
    .turnin 9156 >> Turn in Wanted: Knucklerot and Luzran
    .goto Ghostlands,46.02,33.58
    .turnin 9160 >> Turn in Investigate An'daroth
    .accept 9163 >> Accept Into Occupied Territory
    .goto Ghostlands,45.17,32.37,10,0
    .goto Ghostlands,44.88,32.51
    .accept 9173 >> Accept Retaking Windrunner Spire
    .goto Ghostlands,44.77,32.44
    .turnin 9192 >> Turn in Trouble at the Underlight Mines
    .goto Ghostlands,44.74,32.28
    .turnin 9150 >> Turn in Salvaging the Past
    .goto Ghostlands,46.02,31.95
    .target Deathstalker Rathiel
    .target Dame Auriferous
    .target High Executor Mavren
    .target Deathstalker Maltendis
    .target Magister Darenis
    .isQuestComplete 9156
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Rathiel|r, |cFF00FF25Dame|r, |cFF00FF25Mavren|r, |cFF00FF25Maltendis|r, and |cFF00FF25Darenis|r
    .turnin 9155 >> Turn in Down the Dead Scar
    .goto Ghostlands,46.02,33.58
    .turnin 9160 >> Turn in Investigate An'daroth
    .accept 9163 >> Accept Into Occupied Territory
    .goto Ghostlands,45.17,32.37,10,0
    .goto Ghostlands,44.88,32.51
    .accept 9173 >> Accept Retaking Windrunner Spire
    .goto Ghostlands,44.77,32.44
    .turnin 9192 >> Turn in Trouble at the Underlight Mines
    .goto Ghostlands,44.74,32.28
    .turnin 9150 >> Turn in Salvaging the Past
    .goto Ghostlands,46.02,31.95
    .target Deathstalker Rathiel
    .target Dame Auriferous
    .target High Executor Mavren
    .target Deathstalker Maltendis
    .target Magister Darenis
step
    .goto Ghostlands,46.02,31.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Darenis|r
    .accept 9151 >> Accept The Sanctum of the Sun
    .target Apothecary Renzithen
    .target Magister Darenis
    .xp <17,1
step << Druid
	#completewith DruidTrain2
	.cast 18960 >> Cast Teleport: Moonglade
	.zoneskip Moonglade
	.xp <16,1
step << Druid
    .goto Moonglade,52.53,40.57
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Loganaar|r
    .train 783 >> Train your class spells << wotlk
    .train 8925 >> Train your class spells << TBC
	.target Loganaar
    .cooldown item,6948,>0
	.xp <16,1
    .xp >18,1
step << Druid
    #label DruidTrain2
    .goto Moonglade,52.53,40.57
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Loganaar|r
    .train 8938 >> Train your class spells
	.target Loganaar
    .cooldown item,6948,>0
	.xp <18,1
step << !Druid !Shaman !Warrior !Paladin
    #xprate >1.4999
    #completewith SMTraining3
    .goto Ghostlands,45.42,30.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Sunwing|r
    .fly Silvermoon >> Fly to Silvermoon City
    .target Skymaster Sunwing
    .train 6761,1 << Rogue
step << !Druid !Shaman !Warrior
    #xprate <1.5
    #completewith SMTraining3
    .goto Ghostlands,45.42,30.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Sunwing|r
    .fly Silvermoon >> Fly to Silvermoon City
    .target Skymaster Sunwing
    .train 6761,1 << Rogue
step << Mage
    .goto Eversong Woods,55.70,54.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Antheol|r
    .turnin 9404 >>Turn in Recently Living
    .train 3140,1
    .target Instructor Antheol
step << !Druid !Shaman !Warrior !Paladin
    #xprate >1.4999
    #completewith SMTraining3
    .goto Eversong Woods,56.51,49.61,25,0
    .goto Silvermoon City,73.39,59.65
    .zone Silvermoon City >>Enter Silvermoon
    .train 6761,1 << Rogue
step << !Druid !Shaman !Warrior
    #xprate <1.5
    #completewith SMTraining3
    .goto Eversong Woods,56.51,49.61,25,0
    .goto Silvermoon City,73.39,59.65
    .zone Silvermoon City >>Enter Silvermoon
    .train 6761,1 << Rogue
step << Rogue
    #completewith SMTraining3
    .goto Silvermoon City,73.39,59.65,30,0
    .goto Silvermoon City,76.55,52.05,20,0
    .goto Silvermoon City,79.70,52.16,20 >>Travel toward |cFF00FF25Zelanis|r
    .train 6761,1 << Rogue
step << Rogue
    .goto Silvermoon City,79.70,52.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Zelanis|r
    .turnin 9618 >> Turn in Return the Reports << BloodElf
    .accept 10372 >> Accept A Discreet Inquiry
    .train 6761 >>Train your class spells
    .target Zelanis
    .train 6761,1
step << Rogue
    .goto Silvermoon City,79.70,52.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Zelanis|r
    >>|cFFFCDC00Make sure you've trained|r |T136058:0|t[Pick Lock] |cFFFCDC00for a quest later|r
    .turnin 9618 >> Turn in Return the Reports << BloodElf
    .accept 10372 >> Accept A Discreet Inquiry
    .train 1804 >>Train your class spells
    .target Zelanis
    .train 1804,1
step << Rogue
    #label SMTraining3
    .goto Silvermoon City,79.70,52.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Zelanis|r
    .turnin 9618 >> Turn in Return the Reports << BloodElf
    .accept 10372 >> Accept A Discreet Inquiry
    .target Zelanis
step << Rogue
    #completewith Scimitars
    .goto Silvermoon City,62.89,31.26,30,0
    .goto Silvermoon City,51.83,17.91,30,0
    .goto Silvermoon City,49.45,15.00
    .zone Undercity >>Take the Orb of Translocation to Undercity
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
step << Rogue
    #completewith Scimitars
    .goto Undercity,59.81,11.33,20,0
    .goto Undercity,66.08,18.24,30,0
    .goto Undercity,66.04,32.97,30,0
    .goto Undercity,65.97,44.08,30,0
    .goto Undercity,60.52,44.02,10,0
    .goto Undercity,60.07,47.70,10 >>Take the lift down to the Undercity
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
step << !Undead Rogue
    .goto Undercity,63.25,48.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Michael|r
    .fp Undercity >> Get the Undercity Flight Path
    .target Michael Garrett
    .itemcount 2027,<2
    .money <0.7632 << Troll/Orc
    .money <0.7250 << Undead/BloodElf
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
step << !Undead Rogue
    .goto Undercity,63.25,48.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Michael|r
    .fp Undercity >> Get the Undercity Flight Path
    .target Michael Garrett
    .itemcount 2027,<1
    .money <0.3816 << Troll/Orc
    .money <0.3625 << Undead/BloodElf
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
step << Rogue
    .goto Undercity,61.15,40.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Louis|r
    >>|cFF0E8312Buy two|r |T135343:0|t[Scimitars] |cFF0E8312from him|r
    .collect 2027,2,9144,1 --Scimitar (2)
    .target Louis Warren
    .itemcount 2027,<2
    .money <0.7632 << Troll/Orc
    .money <0.7250 << Undead/BloodElf
    .xp <12,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
step << Rogue
    #label Scimitars
    .goto Undercity,61.15,40.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Louis|r
    >>|cFF0E8312Buy a|r |T135343:0|t[Scimitar] |cFF0E8312from him|r
    .collect 2027,1,9144,1 --Scimitar (1)
    .target Louis Warren
    .itemcount 2027,<1
    .money <0.3816 << Troll/Orc
    .money <0.3625 << Undead/BloodElf
    .xp <12,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
step << Rogue
    #completewith Clearing
    .hs >> Hearth to Tranquillien
    .zoneskip Ghostlands
    .cooldown item,6948,>0
step << Rogue
    #completewith next
    .goto Undercity,60.07,47.70,10,0
    .goto Undercity,60.52,44.02,10,0
    .goto Undercity,65.97,44.08,30,0
    .goto Undercity,66.04,32.97,30,0
    .goto Undercity,66.08,18.24,30,0
    .goto Undercity,59.81,11.33,20,0 >>Take the lift back up toward Silvermoon
    .cooldown item,6948,<0
    .zoneskip Silvermoon City
    .zoneskip Eversong Woods
    .zoneskip Ghostlands
step << Rogue
    .goto Undercity,59,91,11.32,20,0
    .goto Undercity,54.67,11.25
    .zone Silvermoon City >> Take the Orb of Translocation to Silvermoon City
    .cooldown item,6948,<0
    .zoneskip Eversong Woods
    .zoneskip Ghostlands
step << Priest/Mage
    #completewith SMTraining3
    .goto Silvermoon City,75.95,52.92,30,0
    .goto Silvermoon City,62.89,31.26,30,0
    .goto Silvermoon City,57.45,24.46,15,0
    .goto Silvermoon City,55.31,24.96,15,0 << Priest
    .goto Silvermoon City,57.21,21.25,15,0 << Mage
    .goto Silvermoon City,55.38,26.76,12 >> Travel toward |cFF00FF25Lotheolan|r << Priest
    .goto Silvermoon City,57.16,18.85,12 >> Travel toward |cFF00FF25Zaedana|r << Mage
step << Priest
    .goto Silvermoon City,55.38,26.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Lotheolan|r
    .train 8102 >> Train your class spells
    .target Lotheolan
	.xp <16,1
	.xp >18,1
step << Priest
    #label SMTraining3
    .goto Silvermoon City,55.38,26.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Lotheolan|r
    .train 970 >> Train your class spells
    .target Lotheolan
    .train 8102,1
	.xp <18,1
step << Mage
    #label SMTraining3
    .goto Silvermoon City,57.16,18.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Zaedana|r
    .train 3140 >> Train your class spells
    .target Zaedana
	.xp <18,1
step << Hunter
    #completewith next
    .goto Silvermoon City,83.52,48.68,30,0
    .goto Silvermoon City,83.50,43.40,20,0
    .goto Silvermoon City,82.20,28.06,15 >>Travel toward |cFF00FF25Celana|r
step << Hunter
    .goto Silvermoon City,86.24,35.45
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Celana|r
    >>|cFF0E8312Buy a|r |T135346:0|t[Reinforced Bow] |cFF0E8312from her|r
    .collect 3026,1,9181,1 --Reinforced Bow (1)
    .target Celana
    .money <0.3621 << BloodElf
    .money <0.3812 << Troll/Orc
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.7
step << Hunter
    #completewith SMTraining3
    .goto Silvermoon City,83.45,30.13,15,0
    .goto Silvermoon City,83.45,28.56,15,0
    .goto Silvermoon City,84.71,28.05,15 >>Travel toward |cFF00FF25Zandine|r
    .itemcount 3026,1
step << Hunter
    #completewith SMTraining3
    .goto Silvermoon City,83.52,48.68,30,0
    .goto Silvermoon City,83.50,43.40,20,0
    .goto Silvermoon City,83.45,30.13,15,0
    .goto Silvermoon City,83.45,28.56,15,0
    .goto Silvermoon City,84.71,28.05,15 >>Travel toward |cFF00FF25Zandine|r
    .itemcount 3026,<1
step << Hunter
    .goto Silvermoon City,84.71,28.05
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Zandine|r
    .train 13795 >>Train your class spells << tbc
    .train 5118 >>Train your class spells << wotlk
    .target Zandine
	.xp <16,1
	.xp >18,1
step << Hunter
    #label SMTraining3
    .goto Silvermoon City,84.71,28.05
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Zandine|r
    .train 14318 >> Train your class spells
    .target Zandine
	.xp <18,1
step << Hunter
    .goto Silvermoon City,86.24,35.45
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Celana|r
    >>|cFF0E8312Buy a|r |T135346:0|t[Reinforced Bow] |cFF0E8312from her|r
    .collect 3026,1,9181,1 --Reinforced Bow (1)
    .target Celana
    .money <0.3621 << BloodElf
    .money <0.3812 << Troll/Orc
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.7
step << Warlock
    #completewith SMTraining3
    .goto Silvermoon City,73.39,59.65,30,0
    .goto Silvermoon City,75.62,58.31,20,0
    .goto Silvermoon City,75.95,52.92,30,0
    .goto Silvermoon City,75.65,45.04,15,0
    .goto Silvermoon City,76.33,43.33,12 >>Go inside the building, then go downstairs
step << Warlock
    .goto Silvermoon City,74.39,47.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Talionia|r
    .train 6222 >> Train your class spells
    .target Talionia
    .xp <14,1
    .xp >18,1
step << Warlock
    #label SMTraining3
    .goto Silvermoon City,74.39,47.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Talionia|r
    .train 1014 >> Train your class spells
    .target Talionia
    .xp <18,1
step << Paladin
    #xprate <1.5
    #completewith next
    .goto Silvermoon City,82.03,68.36,25,0
    .goto Silvermoon City,84.63,48.65,25,0
    .goto Silvermoon City,84.65,43.43,25,0
    .goto Silvermoon City,89.00,36.95,15,0
    .goto Silvermoon City,89.26,35.20,15 >>Travel toward |cFF00FF25Bloodvalor|r
step << Paladin
    #xprate <1.5
    .goto Silvermoon City,89.26,35.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Bloodvalor|r
    .turnin 9678 >>Turn in The First Trial
    .accept 9681 >>Accept A Study in Power
    .target Knight-Lord Bloodvalor
step << Paladin
    #xprate <1.5
    .goto Silvermoon City,91.74,35.35,12,0
    .goto Silvermoon City,92.20,37.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Bachi|r
    .train 647 >>Train your class spells
    .target Champion Bachi
    .xp <14,1
    .xp >16,1
step << Paladin
    #xprate <1.5
    #label SMTraining3
    .goto Silvermoon City,91.74,35.35,12,0
    .goto Silvermoon City,92.20,37.52
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Bachi|r
    .train 7294 >>Train your class spells << tbc
    .train 62124 >>Train your class spells << wotlk
    .target Champion Bachi
	.xp <16,1
step << Paladin
    #xprate <1.5
    .goto Silvermoon City,92.62,37.53,4,0
    .goto Silvermoon City,92.06,36.23
    >>|cFFFCDC00Jump down the hole behind|r |cFF00FF25Bachi|r
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Astalor|r
    .turnin 9681 >>Turn in A Study in Power
    .accept 9684 >>Accept Claiming the Light << wotlk
    .accept 63866 >>Accept Claiming the Light << tbc
    .target Magister Astalor Bloodsworn
-- This changes in sunwell plataeu, but im not sure if we'd have a phase system instead of just tbc
step << Paladin wotlk
    #xprate <1.5
    .goto Silvermoon City,92.61,36.80
    >>Use the |T134867:0|t[Shimmering Vessel] on a |cFF00FF25Magister|r
    .complete 9684,1 --Collect Filled Shimmering Vessel
    .target Blood Elf Magister
    .use 24157
step << Paladin tbc
    #xprate <1.5
    .goto Silvermoon City,92.61,36.80
    >>Use the |T134867:0|t[Shimmering Vessel] on |cFF00FF25M'uru|r
    .complete 63866,1 --Collect Filled Shimmering Vessel
    .target M'uru
    .use 185956
step << Paladin
    #xprate <1.5
    #completewith next
    .goto Silvermoon City,90.82,37.55,12,0
    .goto Silvermoon City,87.41,36.85,12,0
    .goto Silvermoon City,87.30,31.73,10,0
    .goto Silvermoon City,87.11,29.92,8,0
    .goto Silvermoon City,86.36,30.72,8,0
    .goto Silvermoon City,89.00,36.95,10,0
    .goto Silvermoon City,89.26,35.20,8 >>Run back up toward |cFF00FF25Bloodvalor|r
step << Paladin
    #xprate <1.5
    .goto Silvermoon City,89.26,35.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Bloodvalor|r
    .turnin 9684 >>Turn in Claiming the Light << wotlk
    .turnin 63866 >>Turn in Claiming the Light << tbc
    .accept 9685 >>Accept Redeeming the Dead
    .target Knight-Lord Bloodvalor
step << Paladin
    #xprate <1.5
    .goto Silvermoon City,91.19,36.94,-1
    .goto Silvermoon City,91.14,38.10,-1
	>>|cFFFCDC00Jump onto one of the benches below to avoid walking up the stairs|r
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Ithelis|r or |cFF00FF25Osselan|r
    .train 647 >>Train your class spells
	.target Ithelis
	.target Osselan
    .xp <14,1
    .xp >16,1
step << Paladin
    #xprate <1.5
    #label SMTraining3
    .goto Silvermoon City,91.19,36.94,-1
    .goto Silvermoon City,91.14,38.10,-1
	>>|cFFFCDC00Jump onto one of the benches below to avoid walking up the stairs|r
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Ithelis|r or |cFF00FF25Osselan|r
    .train 7294 >>Train your class spells << tbc
    .train 62124 >>Train your class spells << wotlk
	.target Ithelis
	.target Osselan
	.xp <16,1
 step << Paladin
    #xprate <1.5
    #completewith next
    .goto Silvermoon City,82.04,58.31,8,0
    .goto Silvermoon City,80.90,57.53,8 >>Go inside the Inn
step << Paladin
    #xprate <1.5
    #completewith next
    .goto Silvermoon City,79.61,56.25,8,0
    .goto Silvermoon City,80.09,55.56,8,0
    .goto Silvermoon City,80.61,56.51,8,0
    .goto Silvermoon City,80.16,60.24,8 >>Travel toward |cFF00FF25Stillblade|r
step << Paladin
    #xprate <1.5
    .goto Silvermoon City,80.16,60.24
    >>Use the |T134723:0|t[Filled Shimmering Vessel] on |cFF00FF25Stillblade|r
    .complete 9685,1 --Resurrect Sangrias Stillblade (1)
    .target Blood Knight Stillblade
    .use 24184
step << !Shaman !Warrior !Rogue
    #completewith Clearing
    .hs >> Hearth to Tranquillien
    .zoneskip Ghostlands
    .cooldown item,6948,>0 << !Druid
step << !Shaman !Warrior !Druid
    #completewith Clearing
    .goto Eversong Woods,56.52,49.83
    .zone Eversong Woods >> Exit Silvermoon
    .zoneskip Ghostlands
    .cooldown item,6948,<0
step << !Shaman !Warrior !Druid
    #completewith Clearing
    .goto Eversong Woods,54.37,50.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Gloaming|r
    .fly Tranquillien >> Fly to Tranquillien
    .target Skymistress Gloaming
    .cooldown item,6948,<0
    .zoneskip Ghostlands
step << Paladin
    .goto Ghostlands,47.71,32.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Vredigar|r
    >>|cFF0E8312Buy the|r |T132492:0|t[Tranquillien Defender's Girdle] |cFF0E8312from him|r
    .collect 28162,1,9281,1 --Collect Tranquillien Defender's Girdle (1)
    .target Provisioner Vredigar
    .reputation 922,honored,<0,1
    .itemStat 6,LEVEL,<17
step << Paladin
    #completewith Clearing
    +Equip the |T132492:0|t[Tranquillien Defender's Girdle]
    .use 28162
    .itemcount 28162,1
    .itemStat 6,LEVEL,<17
step << Rogue/Hunter/Druid/Shaman
    .goto Ghostlands,47.71,32.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Vredigar|r
    >>|cFF0E8312Buy the|r |T132498:0|t[Batskin Belt] |cFF0E8312from him|r
    .collect 28158,1,9281,1 --Collect Batskin Belt (1)
    .target Provisioner Vredigar
    .reputation 922,honored,<0,1
    .itemStat 6,LEVEL,<17
step << Rogue/Hunter/Druid/Shaman
    #completewith Clearing
    +Equip the |T132498:0|t[Batskin Belt]
    .use 28158
    .itemcount 28158,1
    .itemStat 6,LEVEL,<17
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Eralan|r
    .turnin 10372 >> Turn in A Discreet Inquiry
    .accept 9491 >> Accept Greed
    .target Eralan
    .isOnQuest 10372
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Eralan|r
    .accept 9491 >> Accept Greed
    .target Eralan
    .isQuestTurnedIn 10372
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Eralan|r
    >>|cFF0E8312Buy the|r |T135427:0|t[Throat Piercers] |cFF0E8312and the|r |T135344:0|t[Sinister Scimitar] |cFF0E8312from her if they're up|r
    .vendor 16268 >> Vendor Trash
    .target Eralan
    .money <0.7517 << BloodElf/Undead
    .money <0.7893 << Orc/Troll
    .itemStat 16,QUALITY,<7
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Eralan|r
    >>|cFF0E8312Buy the|r |T135344:0|t[Sinister Scimitar] |cFF0E8312from her if it's up|r
    .vendor 16268 >> Vendor Trash
    .target Eralan
    .money <0.6947 << BloodElf/Undead
    .money <0.7294 << Orc/Troll
    .itemStat 16,QUALITY,<7
    .itemStat 18,QUALITY,>7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>12.5 << wotlk
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Eralan|r
    >>|cFF0E8312Buy the|r |T135427:0|t[Throat Piercers] |cFF0E8312from her if it's up|r
    .vendor 16268 >> Vendor Trash
    .target Eralan
    .money <0.0570 << BloodElf/Undead
    .money <0.0599 << Orc/Troll
    .itemStat 16,QUALITY,>7
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
--VV Eralan steps need reviewing (doesn't work if you don't have either weapon+Not enough money only for Scimitar or Throat P)
step << Rogue
    #label Eralan2
    #completewith Clearing
    +Equip the |T135427:0|t[Throat Piercers] and |T135344:0|t[Sinister Scimitar]
    .use 29584
    .use 29583
    .itemcount 29584,1
    .itemcount 29583,1
    .itemStat 16,QUALITY,<7
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step << Rogue
    #requires Eralan2
    #completewith Clearing
    +Equip the |T135344:0|t[Sinister Scimitar]
    .use 29583
    .itemcount 29583,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
step << Rogue
    #requires Eralan2
    #completewith Clearing
    +Equip the |T135427:0|t[Throat Piercers]
    .use 29584
    .itemcount 29584,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step
    #completewith SpireT01
    .cast 29348 >> Use the |T134721:0|t[Goldenmist Special Brew] to gain a health buff
    .use 23444
step
    .goto Ghostlands,46.71,40.79,40,0
    .goto Ghostlands,46.90,42.95,40,0
    .goto Ghostlands,45.96,43.99,40,0
    .goto Ghostlands,44.32,47.56,40,0
    .goto Ghostlands,45.56,52.25,40,0
    .goto Ghostlands,48.41,53.36,40,0
    .goto Ghostlands,48.63,56.38,40,0
    .goto Ghostlands,52.05,51.17,40,0
    .goto Ghostlands,51.57,46.46,40,0
    .goto Ghostlands,52.85,44.28,40,0
    .goto Ghostlands,46.71,40.79,40,0
    .goto Ghostlands,46.90,42.95,40,0
    .goto Ghostlands,45.96,43.99,40,0
    .goto Ghostlands,44.32,47.56,40,0
    .goto Ghostlands,45.56,52.25,40,0
    .goto Ghostlands,48.41,53.36,40,0
    .goto Ghostlands,48.63,56.38,40,0
    .goto Ghostlands,52.05,51.17,40,0
    .goto Ghostlands,51.57,46.46,40,0
    .goto Ghostlands,52.85,44.28
    >>Kill |cFFFF5722Vampiric Mistbats|r
    >>|cFFFCDC00Be careful of their|r |T136130:0|t[Draining Touch] |cFFFCDC00Lifesteal spell|r
    .complete 9159,1 --Kill Vampiric Mistbat (x10)
    .mob Vampiric Mistbat
step
    #label Clearing
    .goto Ghostlands,46.40,56.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Vor'el|r
    .accept 9281 >> Accept Clearing the Way
    .target Apprentice Vor'el
step
    #xprate <1.5
    #completewith SpireT01
    >>Kill |cFFFF5722Greater Spindlewebs|r and |cFFFF5722Ghostclaw Ravagers|r. Loot |cFFFF5722Greater Spindlewebs|r for their |cFF00BCD4Spider Legs|r
    >>|cFFFCDC00Be careful as these mobs may be difficult due to the level difference|r << Rogue
    .complete 9281,1 --Kill Greater Spindleweb (x10)
    .complete 9281,2 --Kill Ghostclaw Ravager (x10)
    .collect 22644,5,9171,1 --Collect Crunchy Spider Leg (x5)
    .mob Greater Spindleweb
    .mob Ghostclaw Ravager
    .isQuestAvailable 9171
step
    #xprate <1.5
    #completewith SpireT01
    >>Kill |cFFFF5722Greater Spindlewebs|r and |cFFFF5722Ghostclaw Ravagers|r
    >>|cFFFCDC00Be careful as these mobs may be difficult due to the level difference|r << Rogue
    .complete 9281,1 --Kill Greater Spindleweb (x10)
    .complete 9281,2 --Kill Ghostclaw Ravager (x10)
    .mob Greater Spindleweb
    .mob Ghostclaw Ravager
    .isQuestTurnedIn 9171
step << Druid/Shaman/Warrior/Paladin
    #xprate >1.4999
    #completewith SpireT01
    >>Kill |cFFFF5722Greater Spindlewebs|r and |cFFFF5722Ghostclaw Ravagers|r. Loot |cFFFF5722Greater Spindlewebs|r for their |cFF00BCD4Spider Legs|r
    .complete 9281,1 --Kill Greater Spindleweb (x10)
    .complete 9281,2 --Kill Ghostclaw Ravager (x10)
    .collect 22644,5,9171,1 --Collect Crunchy Spider Leg (x5)
    .mob Greater Spindleweb
    .mob Ghostclaw Ravager
    .isQuestAvailable 9171
step << Druid/Shaman/Warrior/Paladin
    #xprate >1.4999
    #completewith SpireT01
    >>Kill |cFFFF5722Greater Spindlewebs|r and |cFFFF5722Ghostclaw Ravagers|r
    .complete 9281,1 --Kill Greater Spindleweb (x10)
    .complete 9281,2 --Kill Ghostclaw Ravager (x10)
    .mob Greater Spindleweb
    .mob Ghostclaw Ravager
    .isQuestTurnedIn 9171
step << !Druid !Shaman !Warrior !Paladin
    #xprate >1.4999
    #completewith SpireT01
    >>Kill |cFFFF5722Greater Spindlewebs|r and |cFFFF5722Ghostclaw Ravagers|r
    .complete 9281,1 --Kill Greater Spindleweb (x10)
    .complete 9281,2 --Kill Ghostclaw Ravager (x10)
    .mob Greater Spindleweb
    .mob Ghostclaw Ravager
step
    #completewith SpireT01
    >>Kill |cFFFF5722Luzran|r |cFFFCDC00IF you can find a group to carry you|r. Loot him for his |cFF00BCD4Head|r
    .complete 9156,2 --Luzran's Head (1)
    .mob Luzran
step
    #xprate <1.7
    #completewith SpireT01
    >>Kill |cFFFF5722Risen Stalkers|r. Loot them for their |cFF00BCD4Rotting Hearts|r
    >>Kill |cFFFF5722Dreadbone Sentinels|r and |cFFFF5722Deathcage Sorcerers|r. Loot them for their |cFF00BCD4Spinal Dust|r
    >>|cFFFCDC00Be careful as the |cFFFF5722Dreadbone Sentinels|r cast |r |T132357:0|t[Shield Bash] |cFFFCDC00(Interrupt)|r
    .collect 22641,10,9216,1 --Collect Rotting Heart (x10)
    .collect 22642,10,9218,1 --Collect Spinal Dust (x10)
    .mob Risen Stalker
    .mob Dreadbone Sentinel
    .mob Deathcage Sorcerer
step
    #xprate >1.4999
    #completewith SpireT01
    >>Kill |cFFFF5722Risen Stalkers|r. Loot them for their |cFF00BCD4Rotting Hearts|r
    .collect 22641,10,9216,1 --Collect Rotting Heart (x10)
    .mob Risen Stalker
step
    #label SpireT01
    .goto Ghostlands,34.06,57.57,80 >> Cross the Dead Scar
    .isOnQuest 9173
step
    #completewith SpireT
    >>Kill |cFFFF5722Knucklerot|r |cFFFCDC00IF you can find a group to carry you|r. Loot him for his |cFF00BCD4Head|r
    .complete 9156,1 --Knucklerot's Head (1)
    .mob Knucklerot
step
    #xprate <1.5
    #completewith SpireT
    .goto Ghostlands,34.06,57.57,50,0
    .goto Ghostlands,30.77,60.23,50,0
    .goto Ghostlands,28.23,58.65,50,0
    .goto Ghostlands,23.38,59.90,50,0
    .goto Ghostlands,18.75,60.74,50,0
    >>Kill |cFFFF5722Greater Spindlewebs|r and |cFFFF5722Ghostclaw Ravagers|r. Loot |cFFFF5722Greater Spindlewebs|r for their |cFF00BCD4Spider Legs|r
    >>|cFFFCDC00Be careful as these mobs may be difficult due to the level difference|r << Rogue
    .complete 9281,1 --Kill Greater Spindleweb (x10)
    .complete 9281,2 --Kill Ghostclaw Ravager (x10)
    .collect 22644,5,9171,1 --Collect Crunchy Spider Leg (x5)
    .mob Greater Spindleweb
    .mob Ghostclaw Ravager
    .isQuestAvailable 9171
step
    #xprate <1.5
    #completewith SpireT
    .goto Ghostlands,34.06,57.57,50,0
    .goto Ghostlands,30.77,60.23,50,0
    .goto Ghostlands,28.23,58.65,50,0
    .goto Ghostlands,23.38,59.90,50,0
    .goto Ghostlands,18.75,60.74,50,0
    >>Kill |cFFFF5722Greater Spindlewebs|r and |cFFFF5722Ghostclaw Ravagers|r
    >>|cFFFCDC00Be careful as these mobs may be difficult due to the level difference|r << Rogue
    .complete 9281,1 --Kill Greater Spindleweb (x10)
    .complete 9281,2 --Kill Ghostclaw Ravager (x10)
    .mob Greater Spindleweb
    .mob Ghostclaw Ravager
    .isQuestTurnedIn 9171
 step
    #xprate >1.4999
    .goto Ghostlands,34.06,57.57,50,0
    .goto Ghostlands,30.77,60.23,50,0
    .goto Ghostlands,28.23,58.65,50,0
    .goto Ghostlands,23.38,59.90,50,0
    .goto Ghostlands,18.75,60.74,50,0
    >>Kill |cFFFF5722Greater Spindlewebs|r and |cFFFF5722Ghostclaw Ravagers|r. Loot |cFFFF5722Greater Spindlewebs|r for their |cFF00BCD4Spider Legs|r
    .complete 9281,1 --Kill Greater Spindleweb (x10)
    .complete 9281,2 --Kill Ghostclaw Ravager (x10)
    .collect 22644,5,9171,1 --Collect Crunchy Spider Leg (x5)
    .mob Greater Spindleweb
    .mob Ghostclaw Ravager
    .isQuestAvailable 9171
step
    #xprate >1.4999
    .goto Ghostlands,34.06,57.57,50,0
    .goto Ghostlands,30.77,60.23,50,0
    .goto Ghostlands,28.23,58.65,50,0
    .goto Ghostlands,23.38,59.90,50,0
    .goto Ghostlands,18.75,60.74,50,0
    .goto Ghostlands,23.38,59.90,50,0
    .goto Ghostlands,28.23,58.65,50,0
    .goto Ghostlands,30.77,60.23,50,0
    .goto Ghostlands,34.06,57.57,50,0
    .goto Ghostlands,18.75,60.74,50,0
    .goto Ghostlands,23.38,59.90,50,0
    .goto Ghostlands,28.23,58.65,50,0
    .goto Ghostlands,30.77,60.23,50,0
    .goto Ghostlands,34.06,57.57
    >>Kill |cFFFF5722Greater Spindlewebs|r and |cFFFF5722Ghostclaw Ravagers|r
    .complete 9281,1 --Kill Greater Spindleweb (x10)
    .complete 9281,2 --Kill Ghostclaw Ravager (x10)
    .mob Greater Spindleweb
    .mob Ghostclaw Ravager
    .isQuestTurnedIn 9171
step
    #label SpireT
    .goto Ghostlands,17.21,58.09,80 >> Travel to Windrunner Spire
    .isOnQuest 9173
step
    #completewith next
    >>Loot |cFFFF5722Fallen Rangers|r and |cFFFF5722Deatholme Acolytes|r for |T133303:0|t[|cFF00BCD4The Lady's Necklace|r]
    >>|cFFFCDC00Use |T133303:0|t[|cFF00BCD4The Lady's Necklace|r] to start the quest|r
    .collect 22597,1,9175,1 --Collect The Lady's Necklace (x1)
    .accept 9175 >> Accept The Lady's Necklace
    .use 22597
step
    .goto Ghostlands,17.21,58.09,40,0
    .goto Ghostlands,15.17,56.58,30,0
    .goto Ghostlands,12.45,56.89,15,0
    .goto Ghostlands,13.26,54.85,20,0
    .goto Ghostlands,11.58,55.88,15,0
    .goto Ghostlands,11.29,57.15,20,0
    .goto Ghostlands,11.93,57.05,15,0
    .goto Ghostlands,12.13,58.44,15,0
    .goto Ghostlands,13.69,58.59,20,0
    .goto Ghostlands,12.66,58.98,15,0
    .goto Ghostlands,12.24,57.47,15,0
    .goto Ghostlands,17.21,58.09,40,0
    .goto Ghostlands,15.17,56.58,30,0
    .goto Ghostlands,13.26,54.85,20,0
    .goto Ghostlands,11.58,55.88,15,0
    .goto Ghostlands,11.29,57.15,20,0
    .goto Ghostlands,11.93,57.05,15,0
    .goto Ghostlands,12.13,58.44,15,0
    .goto Ghostlands,13.69,58.59,20,0
    .goto Ghostlands,12.66,58.98,15,0
    .goto Ghostlands,12.24,57.47
    >>Kill |cFFFF5722Fallen Rangers|r and |cFFFF5722Deatholme Acolytes|r
    >>|cFFFCDC00Be careful as these mobs are difficult|r
    .complete 9173,1 --Deatholme Acolyte (8)
    .complete 9173,2 --Fallen Ranger (10)
    .mob Deatholme Acolyte
    .mob Fallen Ranger
step
    .goto Ghostlands,17.21,58.09,40,0
    .goto Ghostlands,15.17,56.58,30,0
    .goto Ghostlands,12.45,56.89,15,0
    .goto Ghostlands,13.26,54.85,20,0
    .goto Ghostlands,11.58,55.88,15,0
    .goto Ghostlands,11.29,57.15,20,0
    .goto Ghostlands,11.93,57.05,15,0
    .goto Ghostlands,12.13,58.44,15,0
    .goto Ghostlands,13.69,58.59,20,0
    .goto Ghostlands,12.66,58.98,15,0
    .goto Ghostlands,12.24,57.47,15,0
    .goto Ghostlands,17.21,58.09,40,0
    .goto Ghostlands,15.17,56.58,30,0
    .goto Ghostlands,13.26,54.85,20,0
    .goto Ghostlands,11.58,55.88,15,0
    .goto Ghostlands,11.29,57.15,20,0
    .goto Ghostlands,11.93,57.05,15,0
    .goto Ghostlands,12.13,58.44,15,0
    .goto Ghostlands,13.69,58.59,20,0
    .goto Ghostlands,12.66,58.98,15,0
    .goto Ghostlands,12.24,57.47
    >>Kill |cFFFF5722Fallen Rangers|r and |cFFFF5722Deatholme Acolytes|r. Loot them for |T133303:0|t[|cFF00BCD4The Lady's Necklace|r]
    >>|cFFFCDC00Use |T133303:0|t[|cFF00BCD4The Lady's Necklace|r] to start the quest|r
    .collect 22597,1,9175,1 --Collect The Lady's Necklace (x1)
    .accept 9175 >> Accept The Lady's Necklace
    .use 22597
step
    #xprate <1.5
    .goto Ghostlands,18.75,60.74,50,0
    .goto Ghostlands,23.38,59.90,50,0
    .goto Ghostlands,28.23,58.65,50,0
    .goto Ghostlands,30.77,60.23,50,0
    .goto Ghostlands,34.06,57.57,50,0
    .goto Ghostlands,18.75,60.74,50,0
    .goto Ghostlands,23.38,59.90,50,0
    .goto Ghostlands,28.23,58.65,50,0
    .goto Ghostlands,30.77,60.23,50,0
    .goto Ghostlands,34.06,57.57
    >>Kill |cFFFF5722Greater Spindlewebs|r and |cFFFF5722Ghostclaw Ravagers|r. Loot |cFFFF5722Greater Spindlewebs|r for their |cFF00BCD4Spider Legs|r
    >>|cFFFCDC00Be careful as these mobs may be difficult due to the level difference|r << Rogue
    .complete 9281,1 --Kill Greater Spindleweb (x10)
    .complete 9281,2 --Kill Ghostclaw Ravager (x10)
    .collect 22644,5,9171,1 --Collect Crunchy Spider Leg (x5)
    .mob Greater Spindleweb
    .mob Ghostclaw Ravager
    .isQuestAvailable 9171
step
    #xprate <1.5
    .goto Ghostlands,18.75,60.74,50,0
    .goto Ghostlands,23.38,59.90,50,0
    .goto Ghostlands,28.23,58.65,50,0
    .goto Ghostlands,30.77,60.23,50,0
    .goto Ghostlands,34.06,57.57,50,0
    .goto Ghostlands,18.75,60.74,50,0
    .goto Ghostlands,23.38,59.90,50,0
    .goto Ghostlands,28.23,58.65,50,0
    .goto Ghostlands,30.77,60.23,50,0
    .goto Ghostlands,34.06,57.57
    >>Kill |cFFFF5722Greater Spindlewebs|r and |cFFFF5722Ghostclaw Ravagers|r
    >>|cFFFCDC00Be careful as these mobs may be difficult due to the level difference|r << Rogue
    .complete 9281,1 --Kill Greater Spindleweb (x10)
    .complete 9281,2 --Kill Ghostclaw Ravager (x10)
    .mob Greater Spindleweb
    .mob Ghostclaw Ravager
    .isQuestTurnedIn 9171
step
    #completewith next
    >>Kill |cFFFF5722Knucklerot|r |cFFFCDC00IF you can find a group to carry you|r. Loot him for his |cFF00BCD4Head|r
    .complete 9156,1 --Knucklerot's Head (1)
    .mob Knucklerot
step
    .goto Ghostlands,16.38,52.92,30,0
    .goto Ghostlands,17.45,48.83,30,0
    .goto Ghostlands,20.23,47.83,30,0
    .goto Ghostlands,20.37,48.76,30,0
    .goto Ghostlands,21.10,47.74,30,0
    .goto Ghostlands,19.58,45.15,45,0
    .goto Ghostlands,21.99,43.70,30,0
    .goto Ghostlands,20.01,40.51,30,0
    .goto Ghostlands,18.38,42.74,30,0
    .goto Ghostlands,15.89,42.54,30,0
    .goto Ghostlands,16.93,46.43,30,0
    .goto Ghostlands,16.46,48.48,30,0
    .goto Ghostlands,18.20,53.81,30,0
    .goto Ghostlands,16.38,52.92,30,0
    .goto Ghostlands,17.45,48.83,30,0
    .goto Ghostlands,20.23,47.83,30,0
    .goto Ghostlands,20.37,48.76
    >>Kill |cFFFF5722Phantasmal Seekers|r and |cFFFF5722Stonewing Slayers|r. Loot them for their |cFF00BCD4Phantasmal Subtance|r and |cFF00BCD4Gargoyle Fragments|r
    .complete 9140,1 --Collect Phantasmal Substance (x6)
    .complete 9140,2 --Collect Gargoyle Fragment (x4)
    .mob Phantasmal Seeker
    .mob Stonewing Slayer
step
    #completewith next
    .cast 7840 >> Use the |T134754:0|t[Swim Speed Potion] in the water to swim across it faster
    .use 6372
    .itemcount 6372,1
step
    >>Loot the |cFFDB2EEFNight Elf Plans|r on the ground, inside the tents, or on top of tables
    .complete 9163,2 --Collect Night Elf Plans: An'owyn (x1)
    .goto Ghostlands,12.80,25.09,8,0
    .goto Ghostlands,12.54,24.81,8,0
    .goto Ghostlands,12.85,23.93
    .complete 9163,1 --Collect Night Elf Plans: An'daroth (x1)
    .goto Ghostlands,14.77,26.61,8,0
    .goto Ghostlands,13.70,26.83,8,0
    .goto Ghostlands,12.53,26.51
step
    #completewith next
    .goto Ghostlands,10.13,23.77,12,0
    .goto Ghostlands,10.12,23.04,12,0
    .goto Ghostlands,10.44,22.58,12 >>Run onto the top of the boat
step
    .goto Ghostlands,10.44,22.58
    >>Loot the |cFFDB2EEFNight Elf Plans|r on the table
    >>|cFFFCDC00Be careful as |cFFFF5722Darnassian Huntresses|r cast|r |T132282:0|t[Strike] |cFFFCDC00(Instant cast attack dealing double damage)|r
    .complete 9163,3 --Collect Night Elf Plans: Scrying on the Sin'dorei (x1)
step << Priest/Druid/Rogue/Paladin
    .loop 30,Ghostlands,14.71,26.66,13.06,26.15,11.63,26.63,12.51,24.81,9.43,23.77,10.47,22.51,14.71,26.66
    .xp 15+10600 >> Grind to 10600+/13600
step
    #completewith WindrunnerV
    .deathskip >> Die and respawn at the Spirit Healer
    .train 1758,1 << !BloodElf Rogue
    .train 1460,1 << Mage
    .train 5118,1 << Hunter wotlk
    .train 13795,1 << Hunter tbc
    .train 8122,1 << Priest
    .train 6222,1 << Warlock
    .train 647,1 << Paladin tbc
    .train 62124,1 << Paladin wotlk
    .isOnQuest 9461 << BloodElf Rogue
step
    #completewith WindrunnerV
    .hs >> Hearth to Tranquillien
    .cooldown item,6948,>0
    .train 1758,3 << !BloodElf Rogue
    .train 1460,3 << Mage
    .train 5118,3 << Hunter wotlk
    .train 13795,3 << Hunter tbc
    .train 8122,3 << Priest
    .train 6222,3 << Warlock
    .train 647,3 << Paladin tbc
    .train 62124,3 << Paladin wotlk
    .isOnQuest 10372 << BloodElf Rogue
step
    #completewith WindrunnerV
    .cast 7840 >> Use the |T134754:0|t[Swim Speed Potion] in the water to swim back faster
    .use 6372
    .itemcount 6372,1
    .cooldown item,6948,<0
    .train 1758,3 << !BloodElf Rogue
    .train 1460,3 << Mage
    .train 5118,3 << Hunter wotlk
    .train 13795,3 << Hunter tbc
    .train 8122,3 << Priest
    .train 6222,3 << Warlock
    .train 647,3 << Paladin tbc
    .train 62124,3 << Paladin wotlk
    .isOnQuest 10372 << BloodElf Rogue
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to  |cFF00FF25Mouldier|r and |cFF00FF25Vandril|r
    .accept 9171 >> Accept Culinary Crunch
    .turnin 9171 >> Turn in Culinary Crunch
    .goto Ghostlands,48.43,30.93
    .turnin 9140 >> Turn in Windrunner Village
    .goto Ghostlands,46.08,28.33,10,0
    .goto Ghostlands,46.55,28.38
    .target Master Chef Mouldier
    .target Arcanist Vandril
    .itemcount 22644,5
    .isQuestAvailable 9171
    .cooldown item,6948,>0
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Vandril|r and |cFF00FF25Mouldier|r
    .turnin 9140 >> Turn in Windrunner Village
    .goto Ghostlands,46.08,28.33,10,0
    .goto Ghostlands,46.55,28.38
    .accept 9171 >> Accept Culinary Crunch
    .turnin 9171 >> Turn in Culinary Crunch
    .goto Ghostlands,48.43,30.93
    .target Arcanist Vandril
    .target Master Chef Mouldier
    .itemcount 22644,5
    .isQuestAvailable 9171
    .cooldown item,6948,<0
step
    #label WindrunnerV
    .goto Ghostlands,46.08,28.33,10,0
    .goto Ghostlands,46.55,28.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Vandril|r
    .turnin 9140 >> Turn in Windrunner Village
    .target Arcanist Vandril
step
    .goto Ghostlands,46.02,31.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Darenis|r
    .accept 9151 >> Accept The Sanctum of the Sun
    .target Magister Darenis
    .xp <17,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Dame|r and |cFF00FF25Mavren|r
    .turnin 9163 >> Turn in Into Occupied Territory
    .accept 9166 >> Accept Deliver the Plans to An'telas
    .goto Ghostlands,45.17,32.37,10,0
    .goto Ghostlands,44.88,32.51
    .turnin 9173 >> Turn in Retaking Windrunner Spire
    .turnin 9175 >> Turn in The Lady's Necklace
    .accept 9177 >> Accept Journey to Undercity << !BloodElf
    .accept 9180 >> Accept Journey to Undercity << BloodElf
    .goto Ghostlands,44.77,32.44
    .target Dame Auriferous
    .target High Executor Mavren
step << Druid
	#completewith DruidTrain3
	.cast 18960 >> Cast Teleport: Moonglade
	.zoneskip Moonglade
	.xp <16,1
step << Druid
    .goto Moonglade,52.53,40.57
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Loganaar|r
    .train 783 >> Train your class spells << wotlk
    .train 8925 >> Train your class spells << TBC
	.target Loganaar
    .cooldown item,6948,>0
	.xp <16,1
    .xp >18,1
step << Druid
    #label DruidTrain3
    .goto Moonglade,52.53,40.57
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Loganaar|r
    .train 8938 >> Train your class spells
	.target Loganaar
    .cooldown item,6948,>0
	.xp <18,1
step << Rogue/Mage/Hunter/Priest/Warlock/Paladin
    #completewith next
    .goto Ghostlands,45.42,30.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Sunwing|r
    .fly Silvermoon >> Fly to Silvermoon City
    .target Skymaster Sunwing
    .train 1460,1 << Mage
    .train 5118,1 << Hunter wotlk
    .train 13795,1 << Hunter tbc
    .train 8122,1 << Priest
    .train 6222,1 << Warlock
    .train 647,1 << Paladin tbc
    .train 62124,1 << Paladin wotlk
step << skip
    >> Head into Silvermoon City
    .goto Silvermoon City,72.4,85.7,40,0
    .goto Silvermoon City,53.926,71.029
    .turnin 9133 >> Turn in Fly to Silvermoon City
--VV BloodElf Paladin/BloodElf Rogue
step << skip
    #xprate <1.5
    .goto Silvermoon City,53.926,71.029
    .accept 9134 >> Accept Skymistress Gloaming
    --VV BloodElf Paladin/BloodElf Rogue
step << skip
    >>DON'T Fly anywhere from the flight master. Head back outside Silvermoon City.
    .goto Eversong Woods,54.4,50.7
    .turnin 9134 >> Turn in Skymistress Gloaming
    .accept 9135 >> Accept Return to Quartermaster Lymel
    .isOnQuest 9134
    --VV BloodElf Priest/BloodElf Rogue/BloodElf Paladin
step << Rogue/Mage/Hunter/Priest/Warlock/Paladin
    #completewith SMTraining4
    .goto Eversong Woods,56.51,49.61,25,0
    .goto Silvermoon City,73.39,59.65
    .zone Silvermoon City >>Enter Silvermoon
    .train 1460,1 << Mage
    .train 5118,1 << Hunter wotlk
    .train 13795,1 << Hunter tbc
    .train 8122,1 << Priest
    .train 6222,1 << Warlock
    .train 647,1 << Paladin tbc
    .train 62124,1 << Paladin wotlk
step << Rogue
    .abandon 9491 >> Abandon Greed
    .isQuestAvailable 10372
step << Rogue
    #completewith SMTraining4
    .goto Silvermoon City,73.39,59.65,30,0
    .goto Silvermoon City,76.55,52.05,20,0
    .goto Silvermoon City,79.70,52.16,20 >>Travel toward |cFF00FF25Zelanis|r
step << Rogue
    .goto Silvermoon City,79.70,52.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Zelanis|r
    >>|cFFFCDC00Make sure you've trained|r |T136058:0|t[Pick Lock] |cFFFCDC00for a quest later|r
    .turnin 9618 >> Turn in Return the Reports << BloodElf
    .accept 10372 >> Accept A Discreet Inquiry
    .train 1804 >>Train your class spells
    .target Zelanis
    .train 1804,1
    .xp <16,1
step << Rogue
    #label SMTraining4
    .goto Silvermoon City,79.70,52.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Zelanis|r
    .turnin 9618 >> Turn in Return the Reports << BloodElf
    .accept 10372 >> Accept A Discreet Inquiry
    .target Zelanis
step << Rogue
    #completewith Scimitars2
    .goto Silvermoon City,62.89,31.26,30,0
    .goto Silvermoon City,51.83,17.91,30,0
    .goto Silvermoon City,49.45,15.00
    .zone Undercity >>Take the Orb of Translocation to Undercity
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
    #completewith Scimitars2
    .goto Undercity,59.81,11.33,20,0
    .goto Undercity,66.08,18.24,30,0
    .goto Undercity,66.04,32.97,30,0
    .goto Undercity,65.97,44.08,30,0
    .goto Undercity,60.52,44.02,10,0
    .goto Undercity,60.07,47.70,10 >>Take the lift down to the Undercity
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << !Undead Rogue
    .goto Undercity,63.25,48.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Michael|r
    .fp Undercity >> Get the Undercity Flight Path
    .target Michael Garrett
    .itemcount 2027,<2
    .money <0.7632 << Troll/Orc
    .money <0.7250 << Undead/BloodElf
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << !Undead Rogue
    .goto Undercity,63.25,48.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Michael|r
    .fp Undercity >> Get the Undercity Flight Path
    .target Michael Garrett
    .itemcount 2027,<1
    .money <0.3816 << Troll/Orc
    .money <0.3625 << Undead/BloodElf
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
    .goto Undercity,61.15,40.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Louis|r
    >>|cFF0E8312Buy two|r |T135343:0|t[Scimitars] |cFF0E8312from him|r
    .collect 2027,2,9144,1 --Scimitar (2)
    .target Louis Warren
    .itemcount 2027,<2
    .money <0.7632 << Troll/Orc
    .money <0.7250 << Undead/BloodElf
    .xp <12,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
    #label Scimitars2
    .goto Undercity,61.15,40.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Louis|r
    >>|cFF0E8312Buy a|r |T135343:0|t[Scimitar] |cFF0E8312from him|r
    .collect 2027,1,9144,1 --Scimitar (1)
    .target Louis Warren
    .itemcount 2027,<1
    .money <0.3816 << Troll/Orc
    .money <0.3625 << Undead/BloodElf
    .xp <12,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
    .hs >> Hearth to Tranquillien
    .zoneskip Ghostlands
    .cooldown item,6948,>0
step << Rogue
    #completewith next
    .goto Undercity,60.07,47.70,10,0
    .goto Undercity,60.52,44.02,10,0
    .goto Undercity,65.97,44.08,30,0
    .goto Undercity,66.04,32.97,30,0
    .goto Undercity,66.08,18.24,30,0
    .goto Undercity,59.81,11.33,20,0 >>Take the lift back up toward Silvermoon
    .cooldown item,6948,<0
    .zoneskip Silvermoon City
    .zoneskip Eversong Woods
    .zoneskip Ghostlands
step << Rogue
    .goto Undercity,59,91,11.32,20,0
    .goto Undercity,54.67,11.25
    .zone Silvermoon City >> Take the Orb of Translocation to Silvermoon City
    .cooldown item,6948,<0
    .zoneskip Eversong Woods
    .zoneskip Ghostlands
step << Priest
    .goto Silvermoon City,60.65,63.45,15,0
    .goto Silvermoon City,65.92,53.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Vynna|r
    >>|cFF0E8312Buy a|r |T135144:0|t[Greater Magic Wand] |cFF0E8312from the AH if it's cheap|r
    >>|cFFFCDC00If they're all too expensive, skip this step|r
    .collect 11288,1,9281,1 --Greater Magic Wand
    .target Vynna
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.5
    .train 8122,1
step << Priest/Mage
    #completewith SMTraining4
    .goto Silvermoon City,75.95,52.92,30,0
    .goto Silvermoon City,62.89,31.26,30,0
    .goto Silvermoon City,57.45,24.46,15,0
    .goto Silvermoon City,55.31,24.96,15,0 << Priest
    .goto Silvermoon City,57.21,21.25,15,0 << Mage
    .goto Silvermoon City,55.38,26.76,12 >> Travel toward |cFF00FF25Lotheolan|r << Priest
    .goto Silvermoon City,57.16,18.85,12 >> Travel toward |cFF00FF25Zaedana|r << Mage
step << Priest
    .goto Silvermoon City,55.38,26.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Lotheolan|r
    .train 8102 >> Train your class spells
    .target Lotheolan
	.xp <16,1
	.xp >18,1
step << Priest
    #label SMTraining4
    .goto Silvermoon City,55.38,26.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Lotheolan|r
    .train 970 >> Train your class spells
    .target Lotheolan
    .train 8102,1
	.xp <18,1
step << Mage
    #label SMTraining4
    .goto Silvermoon City,57.16,18.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Zaedana|r
    .train 3140 >> Train your class spells
    .target Zaedana
	.xp <18,1
step << Hunter
    #completewith next
    .goto Silvermoon City,83.52,48.68,30,0
    .goto Silvermoon City,83.50,43.40,20,0
    .goto Silvermoon City,82.20,28.06,15 >>Travel toward |cFF00FF25Celana|r
step << Hunter
    .goto Silvermoon City,86.24,35.45
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Celana|r
    >>|cFF0E8312Buy a|r |T135346:0|t[Reinforced Bow] |cFF0E8312from her|r
    .collect 3026,1,9181,1 --Reinforced Bow (1)
    .target Celana
    .money <0.3621 << BloodElf
    .money <0.3812 << Troll/Orc
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.7
step << Hunter
    #completewith SMTraining4
    .goto Silvermoon City,83.45,30.13,15,0
    .goto Silvermoon City,83.45,28.56,15,0
    .goto Silvermoon City,84.71,28.05,15 >>Travel toward |cFF00FF25Zandine|r
step << Hunter
    #completewith SMTraining4
    .goto Silvermoon City,83.52,48.68,30,0
    .goto Silvermoon City,83.50,43.40,20,0
    .goto Silvermoon City,83.45,30.13,15,0
    .goto Silvermoon City,83.45,28.56,15,0
    .goto Silvermoon City,84.71,28.05,15 >>Travel toward |cFF00FF25Zandine|r
    .itemcount 3026,<1
step << Hunter
    .goto Silvermoon City,84.71,28.05
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Zandine|r
    .train 13795 >>Train your class spells << tbc
    .train 5118 >>Train your class spells << wotlk
    .target Zandine
	.xp <16,1
	.xp >18,1
step << Hunter
    #label SMTraining4
    .goto Silvermoon City,84.71,28.05
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Zandine|r
    .train 14318 >> Train your class spells
    .target Zandine
	.xp <18,1
step << Hunter
    .goto Silvermoon City,86.24,35.45
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Celana|r
    >>|cFF0E8312Buy a|r |T135346:0|t[Reinforced Bow] |cFF0E8312from her|r
    .collect 3026,1,9181,1 --Reinforced Bow (1)
    .target Celana
    .money <0.3621 << BloodElf
    .money <0.3812 << Troll/Orc
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.7
step << Warlock
    #completewith SMTraining4
    .goto Silvermoon City,73.39,59.65,30,0
    .goto Silvermoon City,75.62,58.31,20,0
    .goto Silvermoon City,75.95,52.92,30,0
    .goto Silvermoon City,75.65,45.04,15,0
    .goto Silvermoon City,76.33,43.33,12 >>Go inside the building, then go downstairs
step << Warlock TBC
    .goto Silvermoon City,73.97,44.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Torian|r
    >>|cFF0E8312Buy the|r |T133738:0|t[Grimoire of Sacrifice] |cFF0E8312and the|r |T133738:0|t[Grimoire of Consume Shadows] |cFF0E8312from him|r
    .collect 16351,1,9220,1 --Collect Grimoire of Sacrifice (x1)
    .collect 16357,1,9220,1 --Collect Grimoire of Consume Shadows (x1)
    .target Torian
    .train 20381,1
    .train 17767,1
step << Warlock TBC
    .goto Silvermoon City,73.97,44.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Torian|r
    >>|cFF0E8312Buy the|r |T133738:0|t[Grimoire of Consume Shadows] |cFF0E8312from him|r
    .collect 16357,1,9220,1 --Collect Grimoire of Consume Shadows (x1)
    .target Torian
    .train 17767,1
step << Warlock TBC
    .goto Silvermoon City,73.97,44.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Torian|r
    >>|cFF0E8312Buy the|r |T133738:0|t[Grimoire of Sacrifice] |cFF0E8312from him|r
    .collect 16351,1,9220,1 --Collect Grimoire of Sacrifice (x1)
    .target Torian
    .train 20381,1
step << Warlock TBC
    +Use the |T133738:0|t[Grimoire of Sacrifice] and the |T133738:0|t[Grimoire of Consume Shadows]
    .collect 16351,1,9220,1 --Collect Grimoire of Sacrifice (x1)
    .collect 16357,1,9220,1 --Collect Grimoire of Consume Shadows (x1)
    .use 16351
    .use 16357
    .itemcount 16351,1
    .itemcount 16357,1
    .train 20381,1
    .train 17767,1
    .xp <18,1
step << Warlock TBC
    +Use the |T133738:0|t[Grimoire of Sacrifice]
    .use 16351
    .itemcount 16351,1
    .train 20381,1
    .xp <16,1
step << Warlock TBC
    +Use the |T133738:0|t[Grimoire of Consume Shadows]
    .use 16357
    .itemcount 16357,1
    .train 17767,1
    .xp <18,1
step << Warlock
    .goto Silvermoon City,74.39,47.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Talionia|r
    .train 6222 >> Train your class spells
    .target Talionia
    .xp <14,1
    .xp >18,1
step << Warlock
    #label SMTraining4
    .goto Silvermoon City,74.39,47.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Talionia|r
    .train 1014 >> Train your class spells
    .target Talionia
    .xp <18,1
step << Paladin
    #completewith next
    .goto Silvermoon City,82.03,68.36,25,0
    .goto Silvermoon City,84.63,48.65,25,0
    .goto Silvermoon City,84.65,43.43,25,0
    .goto Silvermoon City,89.00,36.95,15,0
    .goto Silvermoon City,89.26,35.20,15 >>Travel toward |cFF00FF25Bloodvalor|r
    .train 647,1 << Paladin tbc
    .train 62124,1 << Paladin wotlk
step << Paladin
    .goto Silvermoon City,89.26,35.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Bloodvalor|r
    .turnin 9685 >>Turn in Redeeming the Dead
    .train 647,1 << Paladin tbc
    .train 62124,1 << Paladin wotlk
    .target Knight-Lord Bloodvalor
step << Paladin
    .goto Silvermoon City,91.19,36.94,-1
    .goto Silvermoon City,91.14,38.10,-1
	>>|cFFFCDC00Jump onto one of the benches below to avoid walking up the stairs|r
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Ithelis|r or |cFF00FF25Osselan|r
    .train 647 >>Train your class spells
	.target Ithelis
	.target Osselan
    .xp <14,1
    .xp >16,1
step << Paladin
    #label SMTraining4
    .goto Silvermoon City,91.19,36.94,-1
    .goto Silvermoon City,91.14,38.10,-1
	>>|cFFFCDC00Jump onto one of the benches below to avoid walking up the stairs|r
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Ithelis|r or |cFF00FF25Osselan|r
    .train 7294 >>Train your class spells << tbc
    .train 62124 >>Train your class spells << wotlk
	.target Ithelis
	.target Osselan
	.xp <16,1
step << !Rogue
    .hs >> Hearth to Tranquillien
    .cooldown item,6948,>0
    .zoneskip Ghostlands
step
    .goto Ghostlands,48.91,32.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Kalarin|r
    >>|cFF0E8312Buy|r |T132796:0|t[Melon Juice] |cFF0E8312from him|r << Priest/Mage/Warlock/Druid
    >>|cFF0E8312Buy|r |T133978:0|t[Snapvine Watermelon] |cFF0E8312from him|r << !Priest !Mage !Warlock !Druid !Paladin
    >>|cFF0E8312Buy|r |T132796:0|t[Melon Juice] |cFF0E8312and|r |T133978:0|t[Snapvine Watermelon] |cFF0E8312from him|r << Paladin
    .collect 1205,30,9281,1 << Priest/Mage/Warlock/Druid/Paladin --Melon Juice (30)
    .collect 4538,20,9281,1 << !Priest !Mage !Warlock !Druid !Paladin --Snapvine Watermelon (20)
    .collect 4538,10,9281,1 << Paladin --Snapvine Watermelon (10)
    .target Innkeeper Kalarin
    .money <0.3000 << Priest/Mage/Warlock/Druid/Paladin
    .money <0.2000 << !Priest !Mage !Warlock !Druid !Paladin
    .money <0.4000 << Paladin
    .xp <15,1
    .xp >30,1
step
    .goto Ghostlands,48.91,32.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Kalarin|r
    >>|cFF0E8312Buy|r |T132796:0|t[Melon Juice] |cFF0E8312from him|r << Priest/Mage/Warlock/Druid
    >>|cFF0E8312Buy|r |T133978:0|t[Snapvine Watermelon] |cFF0E8312from him|r << !Priest !Mage !Warlock !Druid !Paladin
    >>|cFF0E8312Buy|r |T132796:0|t[Melon Juice] |cFF0E8312and|r |T133978:0|t[Snapvine Watermelon] |cFF0E8312from him|r << Paladin
    .collect 1205,20,9281,1 << Priest/Mage/Warlock/Druid/Paladin --Melon Juice (20)
    .collect 4538,20,9281,1 << !Priest !Mage !Warlock !Druid !Paladin --Snapvine Watermelon (20)
    .collect 4538,10,9281,1 << Paladin --Snapvine Watermelon (10)
    .target Innkeeper Kalarin
    .money <0.2000 << !Paladin
    .money <0.3000 << Paladin
    .xp <15,1
    .xp >30,1
step
    .goto Ghostlands,48.91,32.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Kalarin|r
    >>|cFF0E8312Buy|r |T132796:0|t[Melon Juice] |cFF0E8312from him|r << Priest/Mage/Warlock/Druid
    >>|cFF0E8312Buy|r |T133978:0|t[Snapvine Watermelon] |cFF0E8312from him|r << !Priest !Mage !Warlock !Druid !Paladin
    >>|cFF0E8312Buy|r |T132796:0|t[Melon Juice] |cFF0E8312and|r |T133978:0|t[Snapvine Watermelon] |cFF0E8312from him|r << Paladin
    .collect 1205,10,9281,1 << Priest/Mage/Warlock/Druid/Paladin --Melon Juice (10)
    .collect 4538,10,9281,1 << !Priest !Mage !Warlock !Druid !Paladin --Snapvine Watermelon (10)
    .collect 4538,10,9281,1 << Paladin --Snapvine Watermelon (10)
    .target Innkeeper Kalarin
    .money <0.1000 << !Paladin
    .money <0.2000 << Paladin
    .xp <15,1
    .xp >30,1
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
<< Horde !Warrior !Shaman
#name 16-20 Ghostlands
#next 22-26 Hillsbrad Foothills JJ;20-23 Stonetalon / The Barrens
#version 1
#group RestedXP Horde 1-30

step << skip
    .goto Ghostlands,47.3,29.3
    .turnin -9135 >> Turn in Return to Quartermaster Lymel
--VV BloodElf Priest/BloodElf Rogue/BloodElf Paladin
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Eralan|r
    .turnin 10372 >> Turn in A Discreet Inquiry
    .accept 9491 >> Accept Greed
    .target Eralan
    .isOnQuest 10372
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Eralan|r
    .accept 9491 >> Accept Greed
    .target Eralan
    .isQuestTurnedIn 10372
step << Rogue wotlk
    #completewith Clearing
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Eralan|r
    >>|cFF0E8312Buy|r |T132273:0|t[Instant Poison] |cFF0E8312from her|r
    .collect 6947,10,496,1 --Instant Poison (10)
    .target Eralan
    .xp <19,1
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Eralan|r
    >>|cFF0E8312Buy the|r |T135427:0|t[Throat Piercers] |cFF0E8312and the|r |T135344:0|t[Sinister Scimitar] |cFF0E8312from her if they're up|r
    .vendor 16268 >> Vendor Trash
    .target Eralan
    .money <0.7517 << BloodElf/Undead
    .money <0.7893 << Orc/Troll
    .itemStat 16,QUALITY,<7
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Eralan|r
    >>|cFF0E8312Buy the|r |T135344:0|t[Sinister Scimitar] |cFF0E8312from her if it's up|r
    .vendor 16268 >> Vendor Trash
    .target Eralan
    .money <0.6947 << BloodElf/Undead
    .money <0.7294 << Orc/Troll
    .itemStat 16,QUALITY,<7
    .itemStat 18,QUALITY,>7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>12.5 << wotlk
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Eralan|r
    >>|cFF0E8312Buy the|r |T135427:0|t[Throat Piercers] |cFF0E8312from her if it's up|r
    .vendor 16268 >> Vendor Trash
    .target Eralan
    .money <0.0570 << BloodElf/Undead
    .money <0.0599 << Orc/Troll
    .itemStat 16,QUALITY,>7
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step << Rogue
    #label Eralan3
    #completewith Clearing
    +Equip the |T135427:0|t[Throat Piercers] and |T135344:0|t[Sinister Scimitar]
    .use 29584
    .use 29583
    .itemcount 29584,1
    .itemcount 29583,1
    .itemStat 16,QUALITY,<7
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step << Rogue
    #requires Eralan3
    #completewith Clearing
    +Equip the |T135344:0|t[Sinister Scimitar]
    .use 29583
    .itemcount 29583,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
step << Rogue
    #requires Eralan3
    #completewith Clearing
    +Equip the |T135427:0|t[Throat Piercers]
    .use 29584
    .itemcount 29584,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step
    .goto Ghostlands,54.84,49.30,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Quallestis|r and |cFF00FF25Kaendris|r
    .turnin 9207 >> Turn in Underlight Ore Samples
    .goto Ghostlands,54.95,48.49
    .accept 9282 >> Accept The Farstrider Enclave
    .goto Ghostlands,55.07,48.83
    .target Magister Quallestis
    .target Magister Kaendris
step
    #completewith next
    .goto Ghostlands,55.42,48.70,10,0
    .goto Ghostlands,55.32,48.35,10,0
    .goto Ghostlands,55.17,48.21,10 >>Go upstairs
    .isOnQuest 9151
step
    .goto Ghostlands,54.87,48.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Idonis|r
    .turnin 9151 >> Turn in The Sanctum of the Sun
    .accept 9220 >> Accept War on Deatholme
    .target Magister Idonis
    .isOnQuest 9151
step
    .goto Ghostlands,54.87,48.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Idonis|r
    .accept 9220 >> Accept War on Deatholme
    .target Magister Idonis
    .isQuestTurnedIn 9151
step
    #completewith next
    .goto Ghostlands,54.84,49.30,10,0
    .goto Ghostlands,57.04,45.01,40,0
    .goto Ghostlands,60.07,42.43,40,0
    .goto Ghostlands,60.29,35.63,40 >>Travel toward |cFF00FF25Sylastor|r
step
    .goto Ghostlands,60.29,35.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Sylastor|r
    .turnin 9166 >> Turn in Deliver the Plans to An'telas
    .accept 9169 >> Accept Deactivate An'owyn
    .target Magister Sylastor
step << Hunter
    .goto Ghostlands,72.13,32.03
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Narina|r
    >>|cFF0E8312Buy a|r |T135346:0|t[Reinforced Bow] |cFF0E8312and|r |T132382:0|t[Sharp Arrows] |cFF0E8312from her|r
    .collect 3026,1,9181,1 --Reinforced Bow (1)
    .collect 2515,2000,9252,1 << Hunter --Sharp Arrow (2000)
    .target Narina
    .money <0.4101 << BloodElf
    .money <0.4312 << Troll/Orc
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.7
step << Hunter
    .goto Ghostlands,72.13,32.03
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Narina|r
    >>|cFF0E8312Buy a|r |T135346:0|t[Reinforced Bow] |cFF0E8312from her|r
    .collect 3026,1,9181,1 --Reinforced Bow (1)
    .target Narina
    .money <0.3621 << BloodElf
    .money <0.3812 << Troll/Orc
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.7
step << Hunter
    .goto Ghostlands,72.13,32.03
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Narina|r
    >>|cFF0E8312Buy|r |T132382:0|t[Sharp Arrows] |cFF0E8312from her|r
    .collect 2515,2000,9252,1 << Hunter --Sharp Arrow (2000)
    .target Narina
    .money <0.0480 << BloodElf
    .money <0.0500 << Troll/Orc
step
    #xprate <1.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Sedina|r, |cFF00FF25Solanna|r, |cFF00FF25Krenn'an|r and |cFF00FF25Helios|r
    .turnin 9159 >> Turn in Curbing the Plague
    .goto Ghostlands,72.50,32.14
    .accept 9276 >> Accept Attack on Zeb'Tela
    .goto Ghostlands,72.33,31.24
    .turnin 9274 >>Turn in Spirits of the Drowned
    .goto Ghostlands,72.21,29.78
    .turnin 9146 >> Turn in Report to Captain Helios
    .goto Ghostlands,72.37,29.64
    .accept 9214 >>Accept Shadowpine Weaponry
    .goto Ghostlands,72.37,29.64
    .target Farstrider Sedina
    .target Farstrider Solanna
    .target Ranger Krenn'an
    .target Captain Helios
step
    #xprate >1.6999
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Sedina|r, |cFF00FF25Solanna|r, and |cFF00FF25Helios|r
    .turnin 9159 >> Turn in Curbing the Plague
    .goto Ghostlands,72.50,32.14
    .accept 9276 >> Accept Attack on Zeb'Tela
    .goto Ghostlands,72.33,31.24
    .turnin 9146 >>Turn in Report to Captain Helios
    .goto Ghostlands,72.37,29.64
    .accept 9214 >>Accept Shadowpine Weaponry
    .goto Ghostlands,72.37,29.64
    .target Farstrider Sedina
    .target Farstrider Solanna
    .target Ranger Krenn'an
    .target Captain Helios
--VV 9276 and 9214 need to hide if in qlog. remove extra coords in this step and above once possible
step
    .abandon 9274 >> Abandon Spirits of the Drowned
step
    #completewith next
    .goto Ghostlands,72.80,30.17,10,0
    .goto Ghostlands,73.07,30.67,10,0
    .goto Ghostlands,73.06,31.36,10,0
    .goto Ghostlands,72.81,31.56,8 >>Go up the eastern ramp
step
    .goto Ghostlands,72.61,31.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Venustus|r
    .accept 9275 >> Accept A Little Dash of Seasoning
    .target Apothecary Venustus
step
    #completewith next
    .goto Ghostlands,71.88,30.11,10,0
    .goto Ghostlands,71.74,30.47,10,0
    .goto Ghostlands,71.41,31.28,10,0
    .goto Ghostlands,71.19,32.34,10,0
    .goto Ghostlands,71.78,32.63,8 >>Go up the western ramp
step
    .goto Ghostlands,71.96,32.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Vynna|r
    .turnin 9282 >> Turn in The Farstrider Enclave
    .accept 9161 >> Accept The Traitor's Shadow
    .target Ranger Vynna
step
    #completewith TrollR1
    >>Kill |cFFFF5722Mummified Headhunters|r and |cFFFF5722Shadowpine Oracles|r. Loot them for their |cFF00BCD4Troll Juju|r
    .complete 9199,1,6 --Collect Troll Juju (x8)
    .mob Mummified Headhunter
    .mob Shadowpine Oracle
    .isOnQuest 9199
step
    .goto Ghostlands,68.08,29.39,50,0
    .goto Ghostlands,66.24,28.55,12 >> Enter the Crypt
    .isOnQuest 9199
step << Rogue
    .goto Ghostlands,65.89,28.58,15,0
    .goto Ghostlands,63.64,28.64,15,0
    .goto Ghostlands,63.35,29.57,15,0
    .goto Ghostlands,62.40,29.46,15,0
    .goto Ghostlands,62.71,27.83,15,0
    .goto Ghostlands,61.68,28.58,15,0
    .goto Ghostlands,61.69,27.50,15,0
    .goto Ghostlands,61.84,29.43,15,0
    .goto Ghostlands,61.15,30.86,15,0
    .goto Ghostlands,59.31,30.79,15,0
    .goto Ghostlands,59.31,27.71,15,0
    .goto Ghostlands,61.68,28.58,15,0
    .goto Ghostlands,65.89,28.58,15,0
    .goto Ghostlands,63.64,28.64,15,0
    .goto Ghostlands,63.35,29.57,15,0
    .goto Ghostlands,62.40,29.46,15,0
    .goto Ghostlands,62.71,27.83,15,0
    .goto Ghostlands,61.68,28.58,15,0
    .goto Ghostlands,61.69,27.50,15,0
    .goto Ghostlands,61.84,29.43,15,0
    .goto Ghostlands,61.15,30.86,15,0
    .goto Ghostlands,59.31,30.79,15,0
    .goto Ghostlands,59.31,27.71,15,0
    .goto Ghostlands,61.68,28.58
    >>|T136058:0|t[Pick Lock] the |cFFDB2EEFBurial Chests|r on the ground inside the Crypt. Loot them for the |cFF00BCD4Gold Band|r
    >>Click the |cFFDB2EEFMummified Troll Remains|r on the ground to burn them
    .skill lockpicking,18 >> Level your |T136058:0|t[Lockpicking] skill to 18
    .complete 9491,1 --Pitted Gold Band (1)
    .complete 9193,1,6 --Mummified Troll Remains Burned (x10)
    .skill lockpicking,18,1
step << !Rogue
    #completewith next
    .goto Ghostlands,65.89,28.58,15,0
    .goto Ghostlands,63.64,28.64,15,0
    .goto Ghostlands,62.91,30.75,12,0
    >>Click the |cFFDB2EEFMummified Troll Remains|r on the ground to burn them
    .complete 9193,1,6 --Mummified Troll Remains Burned (x10)
step
    .goto Ghostlands,62.91,31.77
    >>Run into the Bonfire room
    .complete 9193,2 --Investigate the Amani Catacombs
step
    #label TrollR1
    .loop 12,Ghostlands,62.60,31.00,62.41,31.34,62.32,31.81,62.41,32.23,62.63,32.56,63.22,32.55,63.44,32.18,63.50,31.74,63.43,31.29,63.21,30.98,62.60,31.00
    >>Click the |cFFDB2EEFMummified Troll Remains|r on the ground to burn them
    >>|cFFFCDC00Do NOT talk to|r |cFF00FF25Lilatha|r |cFFFCDC00yet|r
    >>|cFFFCDC00Check the main room if the Bonfire room has no remains left|r
    .complete 9193,1,8 --Mummified Troll Remains Burned (x10)
step
    .goto Ghostlands,63.35,29.57,15,0
    .goto Ghostlands,62.40,29.46,15,0
    .goto Ghostlands,62.71,27.83,15,0
    .goto Ghostlands,61.68,28.58,15,0
    .goto Ghostlands,61.69,27.50,15,0
    .goto Ghostlands,61.84,29.43,15,0
    .goto Ghostlands,61.15,30.86,15,0
    .goto Ghostlands,59.31,30.79,15,0
    .goto Ghostlands,59.31,27.71,15,0
    .goto Ghostlands,61.68,28.58,15,0
    .goto Ghostlands,65.89,28.58,15,0
    .goto Ghostlands,63.64,28.64,15,0
    .goto Ghostlands,63.35,29.57,15,0
    .goto Ghostlands,62.40,29.46,15,0
    .goto Ghostlands,62.71,27.83,15,0
    .goto Ghostlands,61.68,28.58,15,0
    .goto Ghostlands,61.69,27.50,15,0
    .goto Ghostlands,61.84,29.43,15,0
    .goto Ghostlands,61.15,30.86,15,0
    .goto Ghostlands,59.31,30.79,15,0
    .goto Ghostlands,59.31,27.71,15,0
    .goto Ghostlands,61.68,28.58
    >>Kill |cFFFF5722Mummified Headhunters|r and |cFFFF5722Shadowpine Oracles|r. Loot them for their |cFF00BCD4Troll Juju|r
    .complete 9199,1,6 --Collect Troll Juju (x8)
    .mob Mummified Headhunter
    .mob Shadowpine Oracle
    .isOnQuest 9199
step
    .goto Ghostlands,62.93,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Lilatha|r to begin the escort
    .accept 9212 >> Accept Escape from the Catacombs
    .target Ranger Lilatha
step
    #completewith TrollR
    >>Kill |cFFFF5722Mummmified Headhunters|r and |cFFFF5722Shadowpine Oracles|r. Loot them for their |cFF00BCD4Troll Juju|r
    .complete 9199,1 --Collect Troll Juju (x8)
    .mob Mummified Headhunter
    .mob Shadowpine Oracle
step << Rogue
    #label PittedG
    #completewith Lilatha
    >>|T136058:0|t[Pick Lock] the |cFFDB2EEFBurial Chests|r on the ground inside the Crypt. Loot them for the |cFF00BCD4Pitted Gold Band|r
    >>Click the |cFFDB2EEFMummified Troll Remains|r on the ground to burn them
    >>|cFFFCDC00MAKE SURE you finish this before leaving the Catacombs|r
    .skill lockpicking,20 >> Level your |T136058:0|t[Lockpicking] skill to 20
    .complete 9491,1 --Pitted Gold Band (1)
    .complete 9193,1 --Collect Mummified Troll Remains Burned (x10)
step << Rogue
    #requires PittedG
    #completewith Lilatha
    >>|T136058:0|t[Pick Lock] the |cFFDB2EEFBurial Chests|r on the ground inside the Crypt when you're waiting for |cFF00FF25Lilatha|r. These can contain Food, Potions, and Throwing Knives
step << !Rogue
    #completewith Lilatha
    >>Click the |cFFDB2EEFMummified Troll Remains|r on the ground to burn them
    >>|cFFFCDC00MAKE SURE you finish this before leaving the Catacombs|r
    .complete 9193,1 --Collect Mummified Troll Remains Burned (x10)
step << Paladin/Druid/Priest
    #completewith Lilatha
    .cast 19834 >>Buff |cFF00FF25Lilatha|r with |T135906:0|t[Blessing of Might] << Paladin
    .cast 5232 >>Buff |cFF00FF25Lilatha|r with |T136078:0|t[Mark of the Wild] << Druid
    .cast 1244 >>Buff |cFF00FF25Lilatha|r with |T135987:0|t[Power Word: Fortitude] << Priest
    .target Ranger Lilatha
step
    #label Lilatha
    >>|cFFFCDC00Escort|r |cFF00FF25Lilatha|r
    >>|cFFFCDC00A |cFFFF5722Shadowpine Oracle|r and a |cFFFF5722Mummified Headhunter|r will spawn on |cFF00FF25Lilatha|r about 60 yards after leaving the Catacombs|r
    .goto Ghostlands,67.93,28.98,40,0
    .goto Ghostlands,71.09,32.01,40,0
    .goto Ghostlands,72.24,30.10
    .complete 9212,1 --Escort Ranger Lilatha back to the Farstrider Enclave
step << Rogue
    #label TrollR
    .goto Ghostlands,65.89,28.58,15,0
    .goto Ghostlands,63.64,28.64,15,0
    .goto Ghostlands,63.35,29.57,15,0
    .goto Ghostlands,62.40,29.46,15,0
    .goto Ghostlands,62.71,27.83,15,0
    .goto Ghostlands,61.68,28.58,15,0
    .goto Ghostlands,61.69,27.50,15,0
    .goto Ghostlands,61.84,29.43,15,0
    .goto Ghostlands,61.15,30.86,15,0
    .goto Ghostlands,59.31,30.79,15,0
    .goto Ghostlands,59.31,27.71,15,0
    .goto Ghostlands,61.68,28.58,15,0
    .goto Ghostlands,65.89,28.58,15,0
    .goto Ghostlands,63.64,28.64,15,0
    .goto Ghostlands,63.35,29.57,15,0
    .goto Ghostlands,62.40,29.46,15,0
    .goto Ghostlands,62.71,27.83,15,0
    .goto Ghostlands,61.68,28.58,15,0
    .goto Ghostlands,61.69,27.50,15,0
    .goto Ghostlands,61.84,29.43,15,0
    .goto Ghostlands,61.15,30.86,15,0
    .goto Ghostlands,59.31,30.79,15,0
    .goto Ghostlands,59.31,27.71,15,0
    .goto Ghostlands,61.68,28.58
    >>|T136058:0|t[Pick Lock] the |cFFDB2EEFBurial Chests|r on the ground inside the Crypt. Loot them for the |cFF00BCD4Pitted Gold Band|r
    >>Click the |cFFDB2EEFMummified Troll Remains|r on the ground to burn them
    .skill lockpicking,20 >> Level your |T136058:0|t[Lockpicking] skill to 20
    .complete 9491,1 --Pitted Gold Band (1)
    .complete 9193,1 --Mummified Troll Remains Burned (x10)
step << !Rogue
    #label TrollR
    .goto Ghostlands,65.89,28.58,15,0
    .goto Ghostlands,63.64,28.64,15,0
    .goto Ghostlands,63.35,29.57,15,0
    .goto Ghostlands,62.40,29.46,15,0
    .goto Ghostlands,62.71,27.83,15,0
    .goto Ghostlands,61.68,28.58,15,0
    .goto Ghostlands,61.69,27.50,15,0
    .goto Ghostlands,61.84,29.43,15,0
    .goto Ghostlands,61.15,30.86,15,0
    .goto Ghostlands,59.31,30.79,15,0
    .goto Ghostlands,59.31,27.71,15,0
    .goto Ghostlands,61.68,28.58,15,0
    .goto Ghostlands,65.89,28.58,15,0
    .goto Ghostlands,63.64,28.64,15,0
    .goto Ghostlands,63.35,29.57,15,0
    .goto Ghostlands,62.40,29.46,15,0
    .goto Ghostlands,62.71,27.83,15,0
    .goto Ghostlands,61.68,28.58,15,0
    .goto Ghostlands,61.69,27.50,15,0
    .goto Ghostlands,61.84,29.43,15,0
    .goto Ghostlands,61.15,30.86,15,0
    .goto Ghostlands,59.31,30.79,15,0
    .goto Ghostlands,59.31,27.71,15,0
    .goto Ghostlands,61.68,28.58
    >>Click the |cFFDB2EEFMummified Troll Remains|r on the ground to burn them
    .complete 9193,1 --Mummified Troll Remains Burned (x10)
step
    .goto Ghostlands,65.89,28.58,15,0
    .goto Ghostlands,63.64,28.64,15,0
    .goto Ghostlands,63.35,29.57,15,0
    .goto Ghostlands,62.40,29.46,15,0
    .goto Ghostlands,62.71,27.83,15,0
    .goto Ghostlands,61.68,28.58,15,0
    .goto Ghostlands,61.69,27.50,15,0
    .goto Ghostlands,61.84,29.43,15,0
    .goto Ghostlands,61.15,30.86,15,0
    .goto Ghostlands,59.31,30.79,15,0
    .goto Ghostlands,59.31,27.71,15,0
    .goto Ghostlands,61.68,28.58,15,0
    .goto Ghostlands,65.89,28.58,15,0
    .goto Ghostlands,63.64,28.64,15,0
    .goto Ghostlands,63.35,29.57,15,0
    .goto Ghostlands,62.40,29.46,15,0
    .goto Ghostlands,62.71,27.83,15,0
    .goto Ghostlands,61.68,28.58,15,0
    .goto Ghostlands,61.69,27.50,15,0
    .goto Ghostlands,61.84,29.43,15,0
    .goto Ghostlands,61.15,30.86,15,0
    .goto Ghostlands,59.31,30.79,15,0
    .goto Ghostlands,59.31,27.71,15,0
    .goto Ghostlands,61.68,28.58
    >>Kill |cFFFF5722Mummified Headhunters|r and |cFFFF5722Shadowpine Oracles|r. Loot them for their |cFF00BCD4Troll Juju|r
    .complete 9199,1 --Collect Troll Juju (x8)
    .mob Mummified Headhunter
    .mob Shadowpine Oracle
step << Rogue
    #completewith SadT
    +Equip the |T135427:0|t[Large Throwing Knife]
    .use 25874
    .itemcount 25874,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.2 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.0 << wotlk
step
    .goto Ghostlands,72.37,29.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Helios|r
    .turnin 9212 >> Turn in Escape from the Catacombs
    .target Captain Helios
step << Warlock TBC
    +Use the |T133738:0|t[Grimoire of Sacrifice] and the |T133738:0|t[Grimoire of Consume Shadows]
    .collect 16351,1,9220,1 --Collect Grimoire of Sacrifice (x1)
    .collect 16357,1,9220,1 --Collect Grimoire of Consume Shadows (x1)
    .use 16351
    .use 16357
    .itemcount 16351,1
    .itemcount 16357,1
    .train 20381,1
    .train 17767,1
    .xp <18,1
step << Warlock TBC
    +Use the |T133738:0|t[Grimoire of Sacrifice]
    .use 16351
    .itemcount 16351,1
    .train 20381,1
    .xp <16,1
step << Warlock TBC
    +Use the |T133738:0|t[Grimoire of Consume Shadows]
    .use 16357
    .itemcount 16357,1
    .train 17767,1
    .xp <18,1
step << Rogue
    #completewith SadT
    .hs >> Hearth to Tranquillien
    .cooldown item,6948,>0
step << Rogue wotlk
    #completewith Truth
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Eralan|r
    >>|cFF0E8312Buy|r |T132273:0|t[Instant Poison] |cFF0E8312from her|r
    .collect 6947,10,496,1 --Instant Poison (10)
    .target Eralan
    .xp <19,1
step << Rogue
    #label SadT
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Eralan|r
    .turnin 9491 >>Turn in Greed
    .accept 10548 >>Accept The Sad Truth
    .target Eralan
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Eralan|r
    .accept 10548 >>Accept The Sad Truth
    .target Eralan
    .isQuestTurnedIn 9491
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Eralan|r
    >>|cFF0E8312Buy the|r |T135427:0|t[Throat Piercers] |cFF0E8312and the|r |T135344:0|t[Sinister Scimitar] |cFF0E8312from her if they're up|r
    .vendor 16268 >> Vendor Trash
    .target Eralan
    .money <0.7517 << BloodElf/Undead
    .money <0.7893 << Orc/Troll
    .itemStat 16,QUALITY,<7
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Eralan|r
    >>|cFF0E8312Buy the|r |T135344:0|t[Sinister Scimitar] |cFF0E8312from her if it's up|r
    .vendor 16268 >> Vendor Trash
    .target Eralan
    .money <0.6947 << BloodElf/Undead
    .money <0.7294 << Orc/Troll
    .itemStat 16,QUALITY,<7
    .itemStat 18,QUALITY,>7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>12.5 << wotlk
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Eralan|r
    >>|cFF0E8312Buy the|r |T135427:0|t[Throat Piercers] |cFF0E8312from her if it's up|r
    .vendor 16268 >> Vendor Trash
    .target Eralan
    .money <0.0570 << BloodElf/Undead
    .money <0.0599 << Orc/Troll
    .itemStat 16,QUALITY,>7
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step << Rogue
    #label Eralan4
    #completewith Clearing
    +Equip the |T135427:0|t[Throat Piercers] and |T135344:0|t[Sinister Scimitar]
    .use 29584
    .use 29583
    .itemcount 29584,1
    .itemcount 29583,1
    .itemStat 16,QUALITY,<7
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step << Rogue
    #requires Eralan4
    #completewith Clearing
    +Equip the |T135344:0|t[Sinister Scimitar]
    .use 29583
    .itemcount 29583,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
step << Rogue
    #requires Eralan4
    #completewith Clearing
    +Equip the |T135427:0|t[Throat Piercers]
    .use 29584
    .itemcount 29584,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step
    #completewith next
    .goto Ghostlands,78.82,19.81,15,0
    .goto Ghostlands,80.04,20.58,10,0
    .goto Ghostlands,80.27,19.82,10,0
    .goto Ghostlands,79.88,18.97,10,0
    .goto Ghostlands,79.63,18.58,10,0
    .goto Ghostlands,79.63,17.57,10 >>Go to the top floor of the building
step
    .goto Ghostlands,79.63,17.57
    >>Click the |cFFDB2EEFBook|r on the ground
    .turnin 9161 >> Turn in The Traitor's Shadow
    .accept 9162 >> Accept Hints of the Past
step << Rogue
    #completewith next
    >>|T136058:0|t[Pick Lock] the |cFFDB2EEFPrimitive Chests|r on the ground near the ruins. Loot them for the |cFF00BCD4Archaeologist's Shrunken Head|r
    .complete 10548,1 --Archaeologist's Shrunken Head (1)
step
    .goto Ghostlands,76.95,34.45,40,0
    .goto Ghostlands,79.55,35.99,40,0
    .goto Ghostlands,81.57,39.31,40,0
    .goto Ghostlands,78.58,38.63,40,0
    .goto Ghostlands,75.89,38.65,40,0
    .goto Ghostlands,77.00,42.39,40,0
    .goto Ghostlands,77.04,44.69,40,0
    .goto Ghostlands,75.12,45.29,40,0
    .goto Ghostlands,74.73,43.27,40,0
    .goto Ghostlands,76.95,34.45,40,0
    .goto Ghostlands,79.55,35.99,40,0
    .goto Ghostlands,81.57,39.31,40,0
    .goto Ghostlands,78.58,38.63,40,0
    .goto Ghostlands,75.89,38.65,40,0
    .goto Ghostlands,77.00,42.39,40,0
    .goto Ghostlands,77.04,44.69,40,0
    .goto Ghostlands,75.12,45.29,40,0
    .goto Ghostlands,74.73,43.27
    >>Kill |cFFFF5722Shadowpine Shadowcasters|r and |cFFFF5722Shadowpine Headhunters|r. Loot them for their |cFF00BCD4Shadowcaster Maces|r and |cFF00BCD4Headhunter Axes|r
    .complete 9276,1 --Kill Shadowpine Shadowcaster (x8)
    .complete 9276,2 --Kill Shadowpine Headhunter (x8)
    .complete 9214,2 --Collect Shadowcaster Mace (x3)
    .complete 9214,1 --Collect Headhunter Axe (x3)
    .mob Shadowpine Shadowcaster
    .mob Shadowpine Headhunter
step
    .goto Ghostlands,72.29,32.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Heron|r
    >>|cFF0E8312Buy|r |T132796:0|t[Melon Juice] |cFF0E8312from him|r << Priest/Mage/Warlock/Druid
    >>|cFF0E8312Buy|r |T133970:0|t[Mutton Chops] |cFF0E8312from him|r << !Priest !Mage !Warlock !Druid !Paladin
    >>|cFF0E8312Buy|r |T132796:0|t[Melon Juice] |cFF0E8312and|r |T133970:0|t[Mutton Chops] |cFF0E8312from him|r << Paladin
    .collect 1205,20,9281,1 << Priest/Mage/Warlock/Druid/Paladin --Melon Juice (20)
    .collect 3770,20,9281,1 << !Priest !Mage !Warlock !Druid !Paladin --Mutton Chop (20)
    .collect 3770,10,9281,1 << Paladin --Mutton Chop (10)
    .target Heron Skygaze
    .isOnQuest 9276
    .money <0.2000 << !Paladin
    .money <0.3000 << Paladin
    .xp <15,1
    .xp >30,1
step
    .goto Ghostlands,72.29,32.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Heron|r
    >>|cFF0E8312Buy|r |T132796:0|t[Melon Juice] |cFF0E8312from him|r << Priest/Mage/Warlock/Druid
    >>|cFF0E8312Buy|r |T133970:0|t[Mutton Chops] |cFF0E8312from him|r << !Priest !Mage !Warlock !Druid !Paladin
    >>|cFF0E8312Buy|r |T132796:0|t[Melon Juice] |cFF0E8312and|r |T133970:0|t[Mutton Chops] |cFF0E8312from him|r << Paladin
    .collect 1205,10,9281,1 << Priest/Mage/Warlock/Druid/Paladin --Melon Juice (10)
    .collect 3770,10,9281,1 << !Priest !Mage !Warlock !Druid !Paladin --Mutton Chop (10)
    .collect 3770,10,9281,1 << Paladin --Mutton Chop (10)
    .target Heron Skygaze
    .money <0.1000 << !Paladin
    .money <0.2000 << Paladin
    .isOnQuest 9276
    .xp <15,1
    .xp >30,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Solanna|r
    .turnin 9276 >> Turn in Attack on Zeb'Tela
    .accept 9277 >> Accept Assault on Zeb'Nowa
    .goto Ghostlands,72.33,31.24
    .target Farstrider Solanna
step
    #completewith next
    .goto Ghostlands,71.88,30.11,10,0
    .goto Ghostlands,71.74,30.47,10,0
    .goto Ghostlands,71.41,31.28,10,0
    .goto Ghostlands,71.19,32.34,10,0
    .goto Ghostlands,71.78,32.63,8 >>Go up the western ramp
step
    .goto Ghostlands,71.96,32.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Vynna|r
    .turnin 9162 >> Turn in Hints of the Past
    .accept 9172 >> Accept Report to Magister Kaendris
    .target Ranger Vynna
step << Rogue
    #completewith KelGash
    >>|T136058:0|t[Pick Lock] the |cFFDB2EEFPrimitive Chests|r on the ground. Loot them for the |cFF00BCD4Archaeologist's Shrunken Head|r
    .complete 10548,1 --Archaeologist's Shrunken Head (1)
step
    #completewith KelGash
    .goto Ghostlands,69.63,50.08,50,0
    .goto Ghostlands,69.64,51.43,50,0
    .goto Ghostlands,69.63,52.41,50,0
    .goto Ghostlands,67.54,50.89,50,0
    .goto Ghostlands,65.73,53.82,50,0
    .goto Ghostlands,68.41,54.61,50,0
    >>Kill |cFFFF5722Shadowpine Catlords|r and |cFFFF5722Shadowpine Hexxers|r. Loot them for their |cFF00BCD4Catlord Claws|r and |cFF00BCD4Hexxer Staves|r
    .complete 9277,1 --Kill Shadowpine Catlord (x10)
    .complete 9277,2 --Kill Shadowpine Hexxer (x10)
    .complete 9214,3 --Collect Catlord Claws (x3)
    .complete 9214,4 --Collect Hexxer Stave (x3)
    .mob Shadowpine Catlord
    .mob Shadowpine Hexxer
step
    .goto Ghostlands,67.60,57.98,12,0
    .goto Ghostlands,68.25,57.78
    >>Click the |cFFDB2EEFFresh Fish Rack|r
    .complete 9275,3 --Poison the Fresh Fish Rack (x1)
step
    .goto Ghostlands,65.11,66.74
    >>Click the |cFFDB2EEFRaw Meat Rack|r
    .complete 9275,1 --Poison the Raw Meat Rack (x1)
step
    .goto Ghostlands,63.04,74.99
    >>Click the |cFFDB2EEFSmoked Meat Rack|r
    .complete 9275,2 --Poison the Smoked Meat Rack (x1)
step
    #xprate <1.5
    .loop 50,Ghostlands,61.16,75.58,60.28,73.66,61.68,71.27,61.81,71.16,61.46,68.82,64.27,73.63,64.34,73.03,61.46,73.38,64.22,73.82,63.93,73.70,63.90,72.99,64.87,70.28,65.31,70.32,64.70,67.70,65.42,66.39,64.66,64.07,61.16,75.58
    .xp 18 >> Grind to level 18
step
    #completewith next
    .goto Ghostlands,65.29,79.31,12,0
    .goto Ghostlands,65.77,79.73,8,0
    .goto Ghostlands,65.93,80.68,8,0
    .goto Ghostlands,65.59,80.72,8 >> Go upstairs
step
    .goto Ghostlands,65.29,79.46
    >>Kill |cFFFF5722Kel'gash the Wicked|r. Loot him for his |cFF00BCD4Head|r
    >>Dodge |cFFFF5722Kel'gash the Wicked|r's |T136048:0|t[Lightning Bolt] and |T136121:0|t[Shrink] by LoSing (Line of Sighting) him around the pillar so he cancels each spell
    >>|cFFFCDC00Make sure you have your cooldowns available and use your|r |T134831:0|t[Healing Potion] |cFFFCDC00if needed|r
    >>|cFFFCDC00Find a group for him if needed|r << !Hunter !Warlock
    .complete 9215,1 --Collect Head of Kel'gash the Wicked (x1)
    .mob Kel'gash the Wicked
    .use 858
    .use 929
    .itemcount 929,1
    .isOnQuest 9215
step
    .goto Ghostlands,65.29,79.46
    >>Kill |cFFFF5722Kel'gash the Wicked|r. Loot him for his |cFF00BCD4Head|r
    >>Dodge |cFFFF5722Kel'gash the Wicked|r's |T136048:0|t[Lightning Bolt] and |T136121:0|t[Shrink] by LoSing (Line of Sighting) him around the pillar so he cancels each spell
    >>|cFFFCDC00Make sure you have your cooldowns available and use your|r |T134830:0|t[Lesser Healing Potion] |cFFFCDC00if needed|r
    >>|cFFFCDC00Find a group for him if needed|r << !Hunter !Warlock
    .complete 9215,1 --Collect Head of Kel'gash the Wicked (x1)
    .mob Kel'gash the Wicked
    .use 858
    .use 929
    .itemcount 858,1
    .isOnQuest 9215
step
    #label KelGash
    .goto Ghostlands,65.29,79.46
    >>Kill |cFFFF5722Kel'gash the Wicked|r. Loot him for his |cFF00BCD4Head|r
    >>Dodge |cFFFF5722Kel'gash the Wicked|r's |T136048:0|t[Lightning Bolt] and |T136121:0|t[Shrink] by LoSing (Line of Sighting) him around the pillar so he cancels each spell. Make sure you have your cooldowns available
    >>|cFFFCDC00Find a group for him if needed|r << !Hunter !Warlock
    .complete 9215,1 --Collect Head of Kel'gash the Wicked (x1)
    .mob Kel'gash the Wicked
    .use 858
    .use 929
    .isOnQuest 9215
step << Rogue
    #completewith next
    .goto Ghostlands,69.63,50.08,40,0
    .goto Ghostlands,69.64,51.43,40,0
    .goto Ghostlands,69.63,52.41,40,0
    .goto Ghostlands,67.54,50.89,40,0
    .goto Ghostlands,65.73,53.82,40,0
    .goto Ghostlands,68.41,54.61,40,0
    >>Kill |cFFFF5722Shadowpine Catlords|r and |cFFFF5722Shadowpine Hexxers|r. Loot them for their |cFF00BCD4Catlord Claws|r and |cFF00BCD4Hexxer Staves|r
    .complete 9277,1 --Kill Shadowpine Catlord (x10)
    .complete 9277,2 --Kill Shadowpine Hexxer (x10)
    .complete 9214,3 --Collect Catlord Claws (x3)
    .complete 9214,4 --Collect Hexxer Stave (x3)
    .mob Shadowpine Catlord
    .mob Shadowpine Hexxer
step << Rogue
    .goto Ghostlands,61.16,75.58,10,0
    .goto Ghostlands,60.28,73.66,10,0
    .goto Ghostlands,61.68,71.27,10,0
    .goto Ghostlands,61.81,71.16,10,0
    .goto Ghostlands,61.46,68.82,10,0
    .goto Ghostlands,64.27,73.63,10,0
    .goto Ghostlands,64.34,73.03,8,0
    .goto Ghostlands,61.46,73.38,10,0
    .goto Ghostlands,64.22,73.82,8,0
    .goto Ghostlands,63.93,73.70,8,0
    .goto Ghostlands,63.90,72.99,10,0
    .goto Ghostlands,64.87,70.28,10,0
    .goto Ghostlands,65.31,70.32,10,0
    .goto Ghostlands,64.70,67.70,10,0
    .goto Ghostlands,65.42,66.39,10,0
    .goto Ghostlands,64.66,64.07,10,0
    .goto Ghostlands,61.16,75.58
    >>|T136058:0|t[Pick Lock] the |cFFDB2EEFPrimitive Chests|r on the ground near the ruins. Loot them for the |cFF00BCD4Archaeologist's Shrunken Head|r
    .complete 10548,1 --Archaeologist's Shrunken Head (1)
step
    .goto Ghostlands,61.23,75.22,40,0
    .goto Ghostlands,61.50,71.88,40,0
    .goto Ghostlands,61.76,67.88,40,0
    .goto Ghostlands,63.70,64.30,40,0
    .goto Ghostlands,65.33,66.10,40,0
    .goto Ghostlands,64.67,67.30,40,0
    .goto Ghostlands,65.10,70.20,40,0
    .goto Ghostlands,63.84,73.07,40,0
    .goto Ghostlands,63.04,74.16,40,0
    .goto Ghostlands,64.51,77.99,40,0
    .goto Ghostlands,61.23,75.22
    >>Kill |cFFFF5722Shadowpine Catlords|r and |cFFFF5722Shadowpine Hexxers|r. Loot them for their |cFF00BCD4Catlord Claws|r and |cFF00BCD4Hexxer Staves|r
    .complete 9277,1 --Kill Shadowpine Catlord (x10)
    .complete 9277,2 --Kill Shadowpine Hexxer (x10)
    .complete 9214,3 --Collect Catlord Claws (x3)
    .complete 9214,4 --Collect Hexxer Stave (x3)
    .mob Shadowpine Catlord
    .mob Shadowpine Hexxer
step
    .loop 30,Ghostlands,57.70,67.55,58.19,67.07,58.89,65.55,58.37,62.88,57.24,63.00,56.35,65.01,56.49,68.12,57.70,67.55
    >>Kill |cFFFF5722Sentinel Infiltrators|r. Loot them for the |cFF00BCD4Controlling Orb|r
    .collect 23191,1,9169,1 --Collect Crystal Controlling Orb (x1)
    .mob Sentinel Infiltrator
step
    .goto Ghostlands,58.18,65.14
    >>Click the |cFFDB2EEFMoon Crystal|r
    .complete 9169,1 --Collect Night Elf Moon Crystal Deactivated (x1)
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Solanna|r and |cFF00FF25Helios|r
    .turnin 9277 >> Turn in Assault on Zeb'Nowa
    .goto Ghostlands,72.33,31.24
    .turnin 9214 >> Turn in Shadowpine Weaponry
    .turnin 9215 >> Turn in Bring Me Kel'gash's Head!
    .goto Ghostlands,72.37,29.64
    .target Farstrider Solanna
    .target Captain Helios
    .isQuestComplete 9215
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Solanna|r and |cFF00FF25Helios|r
    .turnin 9277 >> Turn in Assault on Zeb'Nowa
    .goto Ghostlands,72.33,31.24
    .turnin 9214 >> Turn in Shadowpine Weaponry
    .goto Ghostlands,72.37,29.64
    .target Farstrider Solanna
    .target Captain Helios
step
    .abandon 9215 >> Abandon Bring Me Kel'gash's Head!
step << Paladin/Rogue/Warrior
    #completewith StoneOL
    +Equip the |T135275:0|t[Well Crafted Sword]
    .use 23410
    .itemcount 23410,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.2
step
    #completewith next
    .goto Ghostlands,72.80,30.17,10,0
    .goto Ghostlands,73.07,30.67,10,0
    .goto Ghostlands,73.06,31.36,10,0
    .goto Ghostlands,72.81,31.56,8 >>Go up the eastern ramp
step
    .goto Ghostlands,72.61,31.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Venustus|r
    .turnin 9275 >> Turn in A Little Dash of Seasoning
    .target Apothecary Venustus
step
    #completewith next
    .goto Ghostlands,65.22,38.14,15,0
    .goto Ghostlands,63.85,38.10,15,0
    .goto Ghostlands,60.29,35.63,40 >>Travel toward |cFF00FF25Sylastor|r
step
    .goto Ghostlands,60.29,35.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Sylastor|r
    .turnin 9169 >> Turn in Deactivate An'owyn
    .target Magister Sylastor
step << !Rogue
    #completewith Truth
    .goto Ghostlands,56.64,45.14,40,0
    .goto Ghostlands,54.68,41.88,20,0
    .goto Ghostlands,51.07,38.21,20,0
    .goto Ghostlands,48.58,35.52,20,0
    .goto Ghostlands,45.17,32.37,50 >> Travel back to Tranquillien
    .isQuestAvailable 9151 << !Paladin/!wotlk
step << Rogue
    #completewith Truth
    .goto Ghostlands,56.64,45.14,40,0
    .goto Ghostlands,54.68,41.88,20,0
    .goto Ghostlands,51.07,38.21,20,0
    .goto Ghostlands,48.58,35.52,20,0
    .goto Ghostlands,47.67,34.87,40 >> Travel back to Tranquillien
    .isQuestAvailable 9151
step << Rogue wotlk
    #completewith Truth
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Eralan|r
    >>|cFF0E8312Buy|r |T132273:0|t[Instant Poison] |cFF0E8312from her|r
    .collect 6947,10,496,1 --Instant Poison (10)
    .target Eralan
    .xp <19,1
    .isQuestAvailable 9151
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Eralan|r
    >>|cFF0E8312Buy the|r |T135427:0|t[Throat Piercers] |cFF0E8312and the|r |T135344:0|t[Sinister Scimitar] |cFF0E8312from her if they're up|r
    >>|cFFFCDC00Keep the|r |T135662:0|t[Leafblade Dagger] |cFFFCDC00for later as you'll need it for a quest|r << tbc
    .turnin 10548,1 >>Turn in The Sad Truth << tbc
    .turnin 10548 >>Turn in The Sad Truth << wotlk
    .vendor >> Vendor Trash
    .target Eralan
    .money <0.7517 << BloodElf/Undead
    .money <0.7893 << Orc/Troll
    .itemStat 16,QUALITY,<7
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
    .isQuestAvailable 9151
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Eralan|r
    >>|cFF0E8312Buy the|r |T135344:0|t[Sinister Scimitar] |cFF0E8312from her if it's up|r
    >>|cFFFCDC00Keep the|r |T135662:0|t[Leafblade Dagger] |cFFFCDC00for later as you'll need it for a quest|r << tbc
    .turnin 10548,1 >>Turn in The Sad Truth << tbc
    .turnin 10548 >>Turn in The Sad Truth << wotlk
    .vendor >> Vendor Trash
    .target Eralan
    .money <0.6947 << BloodElf/Undead
    .money <0.7294 << Orc/Troll
    .itemStat 16,QUALITY,<7
    .itemStat 18,QUALITY,>7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>12.5 << wotlk
    .isQuestAvailable 9151
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Eralan|r
    >>|cFF0E8312Buy the|r |T135427:0|t[Throat Piercers] |cFF0E8312from her if it's up|r
    >>|cFFFCDC00Keep the|r |T135662:0|t[Leafblade Dagger] |cFFFCDC00for later as you'll need it for a quest|r << tbc
    .turnin 10548,1 >>Turn in The Sad Truth << tbc
    .turnin 10548 >>Turn in The Sad Truth << wotlk
    .vendor >> Vendor Trash
    .target Eralan
    .money <0.0570 << BloodElf/Undead
    .money <0.0599 << Orc/Troll
    .itemStat 16,QUALITY,>7
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
    .isQuestAvailable 9151
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Eralan|r
    >>|cFFFCDC00Keep the|r |T135662:0|t[Leafblade Dagger] |cFFFCDC00for later as you'll need it for a quest|r << tbc
    .turnin 10548,1 >>Turn in The Sad Truth << tbc
    .turnin 10548 >>Turn in The Sad Truth << wotlk
    .target Eralan
    .isQuestAvailable 9151
step << Rogue
    #label Eralan5
    #completewith Truth
    +Equip the |T135427:0|t[Throat Piercers] and |T135344:0|t[Sinister Scimitar]
    .use 29584
    .use 29583
    .itemcount 29584,1
    .itemcount 29583,1
    .itemStat 16,QUALITY,<7
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step << Rogue
    #requires Eralan5
    #completewith Truth
    +Equip the |T135344:0|t[Sinister Scimitar]
    .use 29583
    .itemcount 29583,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
step << Rogue
    #requires Eralan5
    #completewith Truth
    +Equip the |T135427:0|t[Throat Piercers]
    .use 29584
    .itemcount 29584,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Darenis|r, |cFF00FF25Valwyn|r, and |cFF00FF25Maltendis|r
    .accept 9151 >> Accept The Sanctum of the Sun
    .goto Ghostlands,46.02,31.95
    .turnin 9193 >> Turn in Investigate the Amani Catacombs
    .goto Ghostlands,45.17,32.37,10,0
    .goto Ghostlands,44.84,32.81
    .turnin 9199 >> Turn in Troll Juju
    .goto Ghostlands,44.74,32.28
    .target Magister Darenis
    .target Advisor Valwyn
    .target Deathstalker Maltendis
    .isQuestAvailable 9151 << !Paladin/!wotlk
step
    #label Truth
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Valwyn|r and |cFF00FF25Maltendis|r
    .turnin 9193 >> Turn in Investigate the Amani Catacombs
    .goto Ghostlands,45.17,32.37,10,0
    .goto Ghostlands,44.84,32.81
    .turnin 9199 >> Turn in Troll Juju
    .goto Ghostlands,44.74,32.28
    .target Advisor Valwyn
    .target Deathstalker Maltendis
    .isQuestAvailable 9151 << !Paladin/!wotlk
step << Paladin wotlk
    #completewith next
    .goto Ghostlands,45.42,30.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Sunwing|r
    .fly Silvermoon >> Fly to Silvermoon City
    .target Skymaster Sunwing
    .xp <20,1
step << Paladin wotlk
    #completewith SMTraining44
    .goto Eversong Woods,56.51,49.61,25,0
    .goto Silvermoon City,73.39,59.65
    .zone Silvermoon City >>Enter Silvermoon
    .xp <20,1
step << Paladin wotlk
    #completewith next
    .goto Silvermoon City,82.03,68.36,25,0
    .goto Silvermoon City,84.63,48.65,25,0
    .goto Silvermoon City,84.65,43.43,25,0
    .goto Silvermoon City,89.00,36.95,15,0
    .goto Silvermoon City,89.26,35.20,15 >>Travel toward |cFF00FF25Bloodvalor|r
    .xp <20,1
step << Paladin wotlk
    .goto Silvermoon City,89.26,35.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Bloodvalor|r
    .turnin 9685 >>Turn in Redeeming the Dead
    .target Knight-Lord Bloodvalor
    .xp <20,1
step << Paladin wotlk
    #label SMTraining44
    .goto Silvermoon City,91.19,36.94,-1
    .goto Silvermoon City,91.14,38.10,-1
	>>|cFFFCDC00Jump onto one of the benches below to avoid walking up the stairs|r
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Ithelis|r or |cFF00FF25Osselan|r
    .train 34769 >>Train |T136103:0|t[Summon Warhorse]
	.target Ithelis
	.target Osselan
    .xp <20,1
step << Warlock TBC
    +Use the |T133738:0|t[Grimoire of Sacrifice] and the |T133738:0|t[Grimoire of Consume Shadows]
    .collect 16351,1,9220,1 --Collect Grimoire of Sacrifice (x1)
    .collect 16357,1,9220,1 --Collect Grimoire of Consume Shadows (x1)
    .use 16351
    .use 16357
    .itemcount 16351,1
    .itemcount 16357,1
    .train 20381,1
    .train 17767,1
    .xp <18,1
step << Warlock TBC
    +Use the |T133738:0|t[Grimoire of Sacrifice]
    .use 16351
    .itemcount 16351,1
    .train 20381,1
    .xp <16,1
step << Warlock TBC
    +Use the |T133738:0|t[Grimoire of Consume Shadows]
    .use 16357
    .itemcount 16357,1
    .train 17767,1
    .xp <18,1
step << Druid
	#completewith DruidTrain5
	.cast 18960 >> Cast Teleport: Moonglade
	.zoneskip Moonglade
	.xp <16,1
step << Druid
    .goto Moonglade,52.53,40.57
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Loganaar|r
    .train 783 >> Train your class spells << wotlk
    .train 8925 >> Train your class spells << TBC
	.target Loganaar
    .cooldown item,6948,>0
	.xp <16,1
    .xp >18,1
step << Druid
    .goto Moonglade,52.53,40.57
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Loganaar|r
    .train 8938 >> Train your class spells
	.target Loganaar
    .cooldown item,6948,>0
	.xp <18,1
    .xp >20,1
step << Druid
    #label DruidTrain5
    .goto Moonglade,52.53,40.57
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Loganaar|r
    .train 6756 >> Train your class spells
	.target Loganaar
    .cooldown item,6948,>0
	.xp <20,1
step << Druid/Paladin wotlk
    #completewith ReportMK
    .hs >> Hearth to Tranquillien
    .zoneskip Ghostlands
    .cooldown item,6948,>0
step << Paladin wotlk
    #completewith ReportMK
    >>|cFFFCDC00Press "Shift+P" to open your Mount tab|r
    >>|cFFFCDC00Drag the|r |T136103:0|t[Thalassian Warhorse] |cFFFCDC00onto your Action Bars|r
    .cast 34769 >> Mount your |T136103:0|t[Thalassian Warhorse]
    .train 34769,3
step << Mage/Warlock/Priest
    .goto Ghostlands,47.71,32.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Vredigar|r
    >>|cFF0E8312Buy the|r |T132660:0|t[Apothecary's Robe] |cFF0E8312from him|r
    .collect 22986,1,9220,1 --Collect Apothecary's Robe (1)
    .target Provisioner Vredigar
    .itemStat 5,QUALITY,<7
    .itemStat 5,LEVEL,<15
    .isQuestAvailable 9151 << !Paladin/!wotlk
step << Rogue/Hunter/Druid/Shaman
    .goto Ghostlands,47.71,32.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Vredigar|r
    >>|cFF0E8312Buy the|r |T132716:0|t[Deathstalker's Vest] |cFF0E8312from him|r
    .collect 22987,1,9220,1 --Collect Deathstalker's Vest (1)
    .target Provisioner Vredigar
    .itemStat 5,QUALITY,<7
    .itemStat 5,LEVEL,<15
    .isQuestAvailable 9151 << !Paladin/!wotlk
step << Mage/Warlock/Priest
    #completewith StoneOL
    +Equip the |T132660:0|t[Apothecary's Robe]
    .use 22986
    .itemcount 22986,1
    .itemStat 5,QUALITY,<7
    .itemStat 5,LEVEL,<15
    .isQuestAvailable 9151 << !Paladin/!wotlk
step << Rogue/Hunter/Druid/Shaman
    #completewith StoneOL
    +Equip the |T132716:0|t[Deathstalker's Vest]
    .use 22987
    .itemcount 22987,1
    .itemStat 5,QUALITY,<7
    .itemStat 5,LEVEL,<15
    .isQuestAvailable 9151 << !Paladin/!wotlk
step << skip
    .goto Ghostlands,47.3,29.3
    .turnin 9135 >> Turn in Return to Quartermaster Lymel
--VV BloodElf Mage
step
    #label ReportMK
    .goto Ghostlands,54.84,49.30,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Kaendris|r
    .turnin 9172 >> Turn in Report to Magister Kaendris
    .accept 9176 >> Accept The Twin Ziggurats
    .goto Ghostlands,55.07,48.83
    .target Magister Kaendris
step
    #completewith next
    .goto Ghostlands,55.42,48.70,10,0
    .goto Ghostlands,55.32,48.35,10,0
    .goto Ghostlands,55.17,48.21,10 >>Go upstairs
    .isOnQuest 9151
step
    .goto Ghostlands,54.87,48.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Idonis|r
    .turnin 9151 >> Turn in The Sanctum of the Sun
    .accept 9220 >> Accept War on Deatholme
    .target Magister Idonis
    .isOnQuest 9151
step
    .goto Ghostlands,54.87,48.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Idonis|r
    .accept 9220 >> Accept War on Deatholme
    .target Magister Idonis
    .isQuestTurnedIn 9151
step
    #completewith Hearts
    >>Kill |cFFFF5722Knucklerot|r. Loot him for his |cFF00BCD4Head|r
    >>|cFFFCDC00Find a group for him if needed. Skip this step if you're unable to find a group or solo him|r
    .complete 9156,1 --Knucklerot's Head (1)
    .unitscan Knucklerot
step
    #completewith Deatholme1
    >>Kill |cFFFF5722Luzran|r. Loot him for his |cFF00BCD4Head|r
    >>|cFFFCDC00Find a group for him if needed. Skip this step if you're unable to find a group or solo him|r
    .complete 9156,2 --Luzran's Head (1)
    .unitscan Luzran
step
    #completewith next
    .goto Ghostlands,40.57,48.56,12,0
    .goto Ghostlands,40.42,49.40,10 >>Go inside the Ziggurat
step
    .goto Ghostlands,40.37,49.75
    >>Loot the |cFFDB2EEFWorn Chest|r inside for the |cFF00BCD4Stone|r
    .complete 9176,1 --Collect Stone of Flame (x1)
step
    #completewith next
    .goto Ghostlands,34.34,48.77,12,0
    .goto Ghostlands,34.31,48.03,10 >>Go inside the Ziggurat
step
    #label StoneOL
    .goto Ghostlands,34.30,47.67
    >>Loot the |cFFDB2EEFWorn Chest|r inside for the |cFF00BCD4Stone|r
    .complete 9176,2 --Collect Stone of Light (x1)
step
    #xprate <1.7
    #label Hearts
    .goto Ghostlands,37.82,52.20,50,0
    .goto Ghostlands,38.11,56.94,50,0
    .goto Ghostlands,37.73,61.43,50,0
    .goto Ghostlands,37.06,65.52,50,0
    .goto Ghostlands,36.25,70.35,50,0
    .goto Ghostlands,37.82,52.20,50,0
    .goto Ghostlands,38.11,56.94,50,0
    .goto Ghostlands,37.73,61.43,50,0
    .goto Ghostlands,37.06,65.52,50,0
    .goto Ghostlands,36.25,70.35,50,0
    .goto Ghostlands,37.82,52.20,50,0
    .goto Ghostlands,38.11,56.94,50,0
    .goto Ghostlands,37.73,61.43,50,0
    .goto Ghostlands,37.06,65.52,50,0
    .goto Ghostlands,36.25,70.35
    >>Kill |cFFFF5722Risen Stalkers|r. Loot them for their |cFF00BCD4Rotting Hearts|r
    >>Kill |cFFFF5722Dreadbone Sentinels|r and |cFFFF5722Deathcage Sorcerers|r. Loot them for their |cFF00BCD4Spinal Dust|r
    >>|cFFFCDC00Be careful as the |cFFFF5722Dreadbone Sentinels|r cast |r |T132357:0|t[Shield Bash] |cFFFCDC00(Interrupt)|r
    .collect 22641,10,9216,1 --Collect Rotting Heart (x10)
    .collect 22642,10,9218,1 --Collect Spinal Dust (x10)
    .mob Risen Stalker
    .mob Dreadbone Sentinel
    .mob Deathcage Sorcerer
step
    #xprate >1.6999
    #label Hearts
    .goto Ghostlands,37.82,52.20,50,0
    .goto Ghostlands,38.11,56.94,50,0
    .goto Ghostlands,37.73,61.43,50,0
    .goto Ghostlands,37.06,65.52,50,0
    .goto Ghostlands,36.25,70.35,50,0
    .goto Ghostlands,37.82,52.20,50,0
    .goto Ghostlands,38.11,56.94,50,0
    .goto Ghostlands,37.73,61.43,50,0
    .goto Ghostlands,37.06,65.52,50,0
    .goto Ghostlands,36.25,70.35,50,0
    .goto Ghostlands,37.82,52.20,50,0
    .goto Ghostlands,38.11,56.94,50,0
    .goto Ghostlands,37.73,61.43,50,0
    .goto Ghostlands,37.06,65.52,50,0
    .goto Ghostlands,36.25,70.35
    >>Kill |cFFFF5722Risen Stalkers|r. Loot them for their |cFF00BCD4Rotting Hearts|r
    .collect 22641,10,9216,1 --Collect Rotting Heart (x10)
    .mob Risen Stalker
    .itemcount 22641,4
step
    #label Deatholme1
    #completewith next
    .goto Ghostlands,35.17,74.71,40 >> Run into Deatholme
    .isOnQuest 9220
step << Paladin/Druid/Shaman
    .goto Ghostlands,31.66,74.11,40,0
    .goto Ghostlands,31.53,76.48,40,0
    .goto Ghostlands,32.66,77.91,40,0
    .goto Ghostlands,37.19,75.45,40,0
    .goto Ghostlands,37.18,77.49,40,0
    .goto Ghostlands,38.66,76.98,40,0
    .goto Ghostlands,39.61,79.82,40,0
    .goto Ghostlands,36.41,87.05,40,0
    .goto Ghostlands,31.66,74.11,40,0
    .goto Ghostlands,31.53,76.48,40,0
    .goto Ghostlands,32.66,77.91,40,0
    .goto Ghostlands,37.19,75.45,40,0
    .goto Ghostlands,37.18,77.49,40,0
    .goto Ghostlands,38.66,76.98,40,0
    .goto Ghostlands,39.61,79.82,40,0
    .goto Ghostlands,36.41,87.05
    >>Kill |cFFFF5722Eyes of Dar'Khan|r, |cFFFF5722Nerubis Centurions|r, and |cFFFF5722Wailers|r
    >>|cFFFCDC00Be careful of the|r |cFFFF5722Nerubis Centurions|r's |T136067:0|t[Deadly Poison] |cFFFCDC00as it deals 31 damage every 5 seconds (stackable). Cast|r |T135949:0|t[Purify] |cFFFCDC00to remove it|r << Paladin
    >>|cFFFCDC00Be careful of the|r |cFFFF5722Nerubis Centurions|r's |T136067:0|t[Deadly Poison] |cFFFCDC00as it deals 31 damage every 5 seconds (stackable). Cast|r |T136067:0|t[Cure Poison] |cFFFCDC00to remove it|r << Druid
    >>|cFFFCDC00Be careful of the|r |cFFFF5722Nerubis Centurions|r's |T136067:0|t[Deadly Poison] |cFFFCDC00as it deals 31 damage every 5 seconds (stackable). Cast|r |T136067:0|t[Cure Toxins] |cFFFCDC00to remove it|r << Shaman
    .complete 9220,1 --Kill Eye of Dar'Khan (x5)
    .complete 9220,2 --Kill Nerubis Centurion (x6)
    .complete 9220,3 --Kill Wailer (x6)
    .mob Eye of Dar'Khan
    .mob Nerubis Centurion
    .mob Wailer
    .train 1152,3 << Paladin
    .train 8946,3 << Druid
    .train 526,3 << Shaman
step
    .goto Ghostlands,31.66,74.11,40,0
    .goto Ghostlands,31.53,76.48,40,0
    .goto Ghostlands,32.66,77.91,40,0
    .goto Ghostlands,37.19,75.45,40,0
    .goto Ghostlands,37.18,77.49,40,0
    .goto Ghostlands,38.66,76.98,40,0
    .goto Ghostlands,39.61,79.82,40,0
    .goto Ghostlands,36.41,87.05,40,0
    .goto Ghostlands,31.66,74.11,40,0
    .goto Ghostlands,31.53,76.48,40,0
    .goto Ghostlands,32.66,77.91,40,0
    .goto Ghostlands,37.19,75.45,40,0
    .goto Ghostlands,37.18,77.49,40,0
    .goto Ghostlands,38.66,76.98,40,0
    .goto Ghostlands,39.61,79.82,40,0
    .goto Ghostlands,36.41,87.05
    >>Kill |cFFFF5722Eyes of Dar'Khan|r, |cFFFF5722Nerubis Centurions|r, and |cFFFF5722Wailers|r
    >>|cFFFCDC00Be careful of the|r |cFFFF5722Nerubis Centurions|r's |T136067:0|t[Deadly Poison] |cFFFCDC00as it deals 31 damage every 5 seconds (stackable)|r
    .complete 9220,1 --Kill Eye of Dar'Khan (x5)
    .complete 9220,2 --Kill Nerubis Centurion (x6)
    .complete 9220,3 --Kill Wailer (x6)
    .mob Eye of Dar'Khan
    .mob Nerubis Centurion
    .mob Wailer
step
    #completewith RDraught
    .hs >> Hearth to Tranquillien
    .cooldown item,6948,>0
step
    .goto Ghostlands,48.91,32.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Kalarin|r
    >>|cFF0E8312Buy|r |T132796:0|t[Melon Juice] |cFF0E8312from him|r << Priest/Mage/Warlock/Druid
    >>|cFF0E8312Buy|r |T133978:0|t[Snapvine Watermelon] |cFF0E8312from him|r << !Priest !Mage !Warlock !Druid !Paladin
    >>|cFF0E8312Buy|r |T132796:0|t[Melon Juice] |cFF0E8312and|r |T133978:0|t[Snapvine Watermelon] |cFF0E8312from him|r << Paladin
    .collect 1205,10,9281,1 << Priest/Mage/Warlock/Druid/Paladin --Melon Juice (10)
    .collect 4538,10,9281,1 << !Priest !Mage !Warlock !Druid !Paladin --Snapvine Watermelon (10)
    .collect 4538,10,9281,1 << Paladin --Snapvine Watermelon (10)
    .target Innkeeper Kalarin
    .money <0.1000 << !Paladin
    .money <0.2000 << Paladin
    .cooldown item,6948,>0
    .xp <15,1
    .xp >30,1
step
    #xprate <1.7
    #completewith Aminel
    .goto Ghostlands,48.91,31.13,12,0
    .goto Ghostlands,49.36,31.74,12,0
    .goto Ghostlands,49.36,31.74,10 >> Go upstairs
step
    #xprate <1.7
    .goto Ghostlands,48.91,31.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Aminel|r
    .accept 9216 >>Accept Rotting Hearts
    .turnin 9216 >>Turn in Rotting Hearts
    .accept 9218 >>Accept Spinal Dust
    .turnin 9218 >>Turn in Spinal Dust
    .target Magistrix Aminel
    .itemcount 22641,10
    .itemcount 22642,10
step
    #xprate <1.7
    .goto Ghostlands,48.91,31.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Aminel|r
    .accept 9218 >>Accept Spinal Dust
    .turnin 9218 >>Turn in Spinal Dust
    .target Magistrix Aminel
    .itemcount 22642,10
step
    #label Aminel
    .goto Ghostlands,48.91,31.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Aminel|r
    .accept 9216 >>Accept Rotting Hearts
    .turnin 9216 >>Turn in Rotting Hearts
    .target Magistrix Aminel
    .itemcount 22641,10
step << Mage/Warlock/Priest
    .goto Ghostlands,47.71,32.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Vredigar|r
    >>|cFF0E8312Buy the|r |T132660:0|t[Apothecary's Robe] |cFF0E8312from him|r
    .collect 22986,1,9220,1 --Collect Apothecary's Robe (1)
    .target Provisioner Vredigar
    .itemStat 5,QUALITY,<7
    .itemStat 5,LEVEL,<15
step << Rogue/Hunter/Druid/Shaman
    .goto Ghostlands,47.71,32.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Vredigar|r
    >>|cFF0E8312Buy the|r |T132716:0|t[Deathstalker's Vest] |cFF0E8312from him|r
    .collect 22987,1,9220,1 --Collect Deathstalker's Vest (1)
    .target Provisioner Vredigar
    .itemStat 5,QUALITY,<7
    .itemStat 5,LEVEL,<15
step << Mage/Warlock/Priest
    #completewith StoneOL
    +Equip the |T132660:0|t[Apothecary's Robe]
    .use 22986
    .itemcount 22986,1
    .itemStat 5,QUALITY,<7
    .itemStat 5,LEVEL,<15
step << Rogue/Hunter/Druid/Shaman
    #completewith StoneOL
    +Equip the |T132716:0|t[Deathstalker's Vest]
    .use 22987
    .itemcount 22987,1
    .itemStat 5,QUALITY,<7
    .itemStat 5,LEVEL,<15
step
    #label Truth2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Valwyn|r and |cFF00FF25Maltendis|r
    .turnin 9193 >> Turn in Investigate the Amani Catacombs
    .goto Ghostlands,45.17,32.37,10,0
    .goto Ghostlands,44.84,32.81
    .turnin 9199 >> Turn in Troll Juju
    .goto Ghostlands,44.74,32.28
    .target Advisor Valwyn
    .target Deathstalker Maltendis
step
    .goto Ghostlands,46.02,33.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Rathiel|r
    .turnin 9156 >> Turn in Wanted: Knucklerot and Luzran
    .target Deathstalker Rathiel
    .isQuestComplete 9156
step << Rogue wotlk
    #completewith Eralan6
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Eralan|r
    >>|cFF0E8312Buy|r |T132273:0|t[Instant Poison] |cFF0E8312from her|r
    .collect 6947,10,496,1 --Instant Poison (10)
    .target Eralan
    .xp <19,1
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Eralan|r
    >>|cFF0E8312Buy the|r |T135427:0|t[Throat Piercers] |cFF0E8312and the|r |T135344:0|t[Sinister Scimitar] |cFF0E8312from her if they're up|r
    >>|cFFFCDC00Keep the|r |T135662:0|t[Leafblade Dagger] |cFFFCDC00for later as you'll need it for a quest|r << tbc
    .turnin 10548,1 >>Turn in The Sad Truth << tbc
    .turnin 10548 >>Turn in The Sad Truth << wotlk
    .vendor >> Vendor Trash
    .target Eralan
    .money <0.7517 << BloodElf/Undead
    .money <0.7893 << Orc/Troll
    .itemStat 16,QUALITY,<7
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Eralan|r
    >>|cFF0E8312Buy the|r |T135344:0|t[Sinister Scimitar] |cFF0E8312from her if it's up|r
    >>|cFFFCDC00Keep the|r |T135662:0|t[Leafblade Dagger] |cFFFCDC00for later as you'll need it for a quest|r << tbc
    .turnin 10548,1 >>Turn in The Sad Truth << tbc
    .turnin 10548 >>Turn in The Sad Truth << wotlk
    .vendor >> Vendor Trash
    .target Eralan
    .money <0.6947 << BloodElf/Undead
    .money <0.7294 << Orc/Troll
    .itemStat 16,QUALITY,<7
    .itemStat 18,QUALITY,>7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>12.5 << wotlk
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Eralan|r
    >>|cFF0E8312Buy the|r |T135427:0|t[Throat Piercers] |cFF0E8312from her if it's up|r
    >>|cFFFCDC00Keep the|r |T135662:0|t[Leafblade Dagger] |cFFFCDC00for later as you'll need it for a quest|r << tbc
    .turnin 10548,1 >>Turn in The Sad Truth << tbc
    .turnin 10548 >>Turn in The Sad Truth << wotlk
    .vendor >> Vendor Trash
    .target Eralan
    .money <0.0570 << BloodElf/Undead
    .money <0.0599 << Orc/Troll
    .itemStat 16,QUALITY,>7
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Eralan|r
    >>|cFFFCDC00Keep the|r |T135662:0|t[Leafblade Dagger] |cFFFCDC00for later as you'll need it for a quest|r << tbc
    .turnin 10548,1 >>Turn in The Sad Truth << tbc
    .turnin 10548 >>Turn in The Sad Truth << wotlk
    .target Eralan
    .isQuestAvailable 9151
step << Rogue
    #label Eralan6
    #completewith Jurion
    +Equip the |T135427:0|t[Throat Piercers] and |T135344:0|t[Sinister Scimitar]
    .use 29584
    .use 29583
    .itemcount 29584,1
    .itemcount 29583,1
    .itemStat 16,QUALITY,<7
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step << Rogue
    #requires Eralan6
    #completewith Jurion
    +Equip the |T135344:0|t[Sinister Scimitar]
    .use 29583
    .itemcount 29583,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
step << Rogue
    #requires Eralan6
    #completewith Jurion
    +Equip the |T135427:0|t[Throat Piercers]
    .use 29584
    .itemcount 29584,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step
    #label TwinZ
    .goto Ghostlands,54.84,49.30,10,0
    .goto Ghostlands,55.07,48.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Kaendris|r
    .turnin 9176 >> Turn in The Twin Ziggurats
    .accept 9167 >> Accept The Traitor's Destruction
    .target Magister Kaendris
step
    #completewith next
    .goto Ghostlands,55.42,48.70,10,0
    .goto Ghostlands,55.32,48.35,10,0
    .goto Ghostlands,55.17,48.21,10 >>Go upstairs
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Idonis|r and |cFF00FF25Janeda|r
    .turnin 9220 >> Turn in War on Deatholme
    .accept 9170 >> Accept Dar'Khan's Lieutenants
    .goto Ghostlands,54.87,48.55
    .accept 9877 >> Accept A Restorative Draught
    .goto Ghostlands,54.82,48.35
    .target Magister Idonis
    .target Arcanist Janeda
step
    #label RDraught
    .goto Ghostlands,47.67,34.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Renzithen|r
    .turnin 9877 >>Turn in A Restorative Draught
    .accept 9164 >>Accept Captives at Deatholme
    .target Apothecary Renzithen
step
    .goto Ghostlands,46.40,56.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Vor'el|r
    .turnin 9281 >> Turn in Clearing the Way
    .target Apprentice Vor'el
step
    #completewith Varnis
    .cast 28486 >>Use the |T134754:0|t[Scourgebane Draught]
    .use 22779
    .itemcount 22779,1
step
    #completewith next
    >>Kill |cFFFF5722Luzran|r. Loot him for his |cFF00BCD4Head|r
    >>|cFFFF5722Luzran|r |cFFFCDC00spawns at the Bleeding (western) Ziggurat, patrols down the Dead Scar, then back up until he reaches the river|r
    >>|cFFFCDC00Find a group for him if needed|r << !Hunter !Warlock|r
    .complete 9156,2 --Luzran's Head (1)
    .unitscan Luzran
step
    .line Ghostlands,40.58,48.42,40.76,47.73,41.84,46.91,41.49,45.52,39.69,46.64,39.27,47.41,37.53,49.81,36.15,51.63,35.26,52.16,33.69,52.57,31.89,54.85,30.16,55.32,27.71,55.36,25.79,55.11,24.53,53.16,23.79,51.34,22.22,48.11,21.93,46.53,22.05,44.27,22.14,42.83,22.10,40.09,22.66,38.42,23.67,37.62,26.79,37.49,27.94,38.01,29.05,37.85,30.25,36.63,29.87,34.81,28.71,32.15,27.57,29.23,27.23,27.55,27.12,26.04,29.25,24.14,29.70,23.11,29.26,21.07,28.41,19.25,27.56,17.58,25.60,16.40,25.31,15.03
    .goto Ghostlands,40.58,48.42,50,0
    .goto Ghostlands,40.76,47.73,50,0
    .goto Ghostlands,41.84,46.91,50,0
    .goto Ghostlands,41.49,45.52,50,0
    .goto Ghostlands,39.69,46.64,50,0
    .goto Ghostlands,39.27,47.41,50,0
    .goto Ghostlands,37.53,49.81,50,0
    .goto Ghostlands,36.15,51.63,50,0
    .goto Ghostlands,35.26,52.16,50,0
    .goto Ghostlands,33.69,52.57,50,0
    .goto Ghostlands,31.89,54.85,50,0
    .goto Ghostlands,30.16,55.32,50,0
    .goto Ghostlands,27.71,55.36,50,0
    .goto Ghostlands,25.79,55.11,50,0
    .goto Ghostlands,24.53,53.16,50,0
    .goto Ghostlands,23.79,51.34,50,0
    .goto Ghostlands,22.22,48.11,50,0
    .goto Ghostlands,21.93,46.53,50,0
    .goto Ghostlands,22.05,44.27,50,0
    .goto Ghostlands,22.14,42.83,50,0
    .goto Ghostlands,22.10,40.09,50,0
    .goto Ghostlands,22.66,38.42,50,0
    .goto Ghostlands,23.67,37.62,50,0
    .goto Ghostlands,26.79,37.49,50,0
    .goto Ghostlands,27.94,38.01,50,0
    .goto Ghostlands,29.05,37.85,50,0
    .goto Ghostlands,30.25,36.63,50,0
    .goto Ghostlands,29.87,34.81,50,0
    .goto Ghostlands,27.12,26.04,50,0
    .goto Ghostlands,25.31,15.03,50,0
    .goto Ghostlands,40.58,48.42
    >>Kill |cFFFF5722Knucklerot|r. Loot him for his |cFF00BCD4Head|r
    >>|cFFFF5722Knucklerot|r |cFFFCDC00spawns at the Howling (eastern) Ziggurat, along the road to Windrunner Village, across the river near the Sanctum of the Moon, then into Goldenmist Village|r
    >>|cFFFCDC00Avoid|r |cFFFF5722Knucklerot|r|cFFFCDC00's |T136016:0|t[Corrosive Poison] by interrupting it with|r |T135963:0|t[Hammer of Justice] << Paladin
    >>|cFFFCDC00Avoid|r |cFFFF5722Knucklerot|r|cFFFCDC00's |T136016:0|t[Corrosive Poison] by interrupting it with|r |T132219:0|t[Kick] << Rogue
    >>|cFFFCDC00Find a group for him if needed|r << !Hunter !Warlock|r
    .complete 9156,1 --Knucklerot's Head (1)
    .unitscan Knucklerot
--VV 28.71,32.15,27.57,29.23,27.23,27.55,27.12,26.04,29.25,24.14,29.70,23.11,29.26,21.07,28.41,19.25,27.56,17.58,25.60,16.40,25.31,15.03
step
    .line Ghostlands,34.35,49.33,34.18,50.75,34.27,52.13,35.59,52.11,36.15,51.60,37.01,52.90,37.70,59.57,37.30,63.89,36.97,68.06,36.39,68.31,36.77,65.23,37.87,60.95,38.12,57.42,38.20,53.38,37.93,49.52,37.65,48.77,37.57,44.63,37.95,41.65,38.66,38.08,39.29,33.57,39.64,31.98
    .goto Ghostlands,34.35,49.33,50,0
    .goto Ghostlands,34.18,50.75,50,0
    .goto Ghostlands,34.27,52.13,50,0
    .goto Ghostlands,35.59,52.11,50,0
    .goto Ghostlands,36.15,51.60,50,0
    .goto Ghostlands,37.01,52.90,50,0
    .goto Ghostlands,37.70,59.57,50,0
    .goto Ghostlands,37.30,63.89,50,0
    .goto Ghostlands,36.97,68.06,50,0
    .goto Ghostlands,36.39,68.31,50,0
    .goto Ghostlands,36.77,65.23,50,0
    .goto Ghostlands,37.87,60.95,50,0
    .goto Ghostlands,38.12,57.42,50,0
    .goto Ghostlands,38.20,53.38,50,0
    .goto Ghostlands,37.93,49.52,50,0
    .goto Ghostlands,37.65,48.77,50,0
    .goto Ghostlands,37.57,44.63,50,0
    .goto Ghostlands,37.95,41.65,50,0
    .goto Ghostlands,38.66,38.08,50,0
    .goto Ghostlands,39.29,33.57,50,0
    .goto Ghostlands,39.64,31.98,50,0
    .goto Ghostlands,34.35,49.33
    >>Kill |cFFFF5722Luzran|r. Loot him for his |cFF00BCD4Head|r
    >>|cFFFF5722Luzran|r |cFFFCDC00spawns at the Bleeding (western) Ziggurat, patrols down the Dead Scar, then back up until he reaches the river|r
    >>|cFFFCDC00Find a group for him if needed|r << !Hunter !Warlock|r
    .complete 9156,2 --Luzran's Head (1)
    .unitscan Luzran
step
    #completewith next
    .goto Ghostlands,35.17,74.71,40 >> Run into Deatholme
    .isOnQuest 9164
step
    #completewith next
    .goto Ghostlands,31.70,73.64,10,0
    .goto Ghostlands,31.78,72.91,10 >>Go inside the crypt
step
    #label Jurion
    .goto Ghostlands,32.19,73.08,8,0
    >>Kill |cFFFF5722Jurion the Deceiver|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Enith|r on the ground
    .complete 9170,3 --Kill Jurion the Deceiver (x1)
    .goto Ghostlands,32.10,74.45,-1
    .complete 9164,1 --Apothecary Enith Rescued
    .goto Ghostlands,32.15,73.95,-1
    .mob Jurion the Deceiver
    .target Apothecary Enith
    .skipgossip
step
    #completewith next
    .goto Ghostlands,32.19,73.08,8,0
    .goto Ghostlands,31.78,72.91,10,0
    .goto Ghostlands,31.70,73.64,10 >>Exit the crypt
step
    .goto Ghostlands,37.36,79.33
    >>Kill |cFFFF5722Mirdoran the Fallen|r
    .complete 9170,1 --Kill Mirdoran the Fallen (x1)
    .mob Mirdoran the Fallen
step
    #completewith Varnis
    .goto Ghostlands,37.51,84.18,30,0
    .goto Ghostlands,40.09,83.34,10,0
    .goto Ghostlands,40.98,83.22,15 >>Travel toward |cFF00FF25Varnis|r
step
    #completewith next
    .goto Ghostlands,41.24,83.04,15,0
    >>Kill |cFFFF5722Borgoth the Bloodletter|r if he's up next to |cFF00FF25Varnis|r
    .complete 9170,2 --Kill Borgoth the Bloodletter (x1)
    .mob Borgoth the Bloodletter
step
    #label Varnis
    .goto Ghostlands,40.98,83.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Varnis|r on the table
    .complete 9164,2 --Apprentice Varnis Rescued
    .target Apprentice Varnis
    .skipgossip
step
    #completewith next
    .goto Ghostlands,35.24,88.23,15,0
    .goto Ghostlands,35.77,89.13,15,0
    >>Check for |cFFFF5722Masophet the Black|r inside the first Ziggurat. Kill him if he's up
    .complete 9170,4 --Kill Masophet the Black (x1)
    .mob Masophet the Black
step
    #completewith Vedoran
    .goto Ghostlands,32.84,88.21,10,0
    .goto Ghostlands,32.80,88.53,10,0
    .goto Ghostlands,32.79,89.93,15 >>Travel toward |cFF00FF25Vedoran|r
 step
    #completewith next
    >>Kill |cFFFF5722Borgoth the Bloodletter|r if he's up next to |cFF00FF25Vedoran|r
    .complete 9170,2 --Kill Borgoth the Bloodletter (x1)
    .mob Borgoth the Bloodletter
step
    #label Vedoran
    .goto Ghostlands,32.79,89.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Vedoran|r on the table
    .complete 9164,3 --Ranger Vedoran Rescued
    .target Ranger Vedoran
    .skipgossip
step
    .goto Ghostlands,29.81,87.99,10,0
    .goto Ghostlands,29.28,88.89,8,0
    .goto Ghostlands,35.24,88.23,10,0
    .goto Ghostlands,35.77,89.13,8,0
    .goto Ghostlands,29.81,87.99,10,0
    .goto Ghostlands,29.28,88.89,8,0
    .goto Ghostlands,35.24,88.23,10,0
    .goto Ghostlands,35.77,89.13,8,0
    .goto Ghostlands,29.81,87.99,10,0
    .goto Ghostlands,29.28,88.89,8,0
    .goto Ghostlands,35.24,88.23,10,0
    .goto Ghostlands,35.77,89.13
    >>Kill |cFFFF5722Masophet the Black|r inside the either of the Ziggurats
    .complete 9170,4 --Kill Masophet the Black (x1)
    .mob Masophet the Black
step
    .goto Ghostlands,32.84,88.21,10,0
    .goto Ghostlands,32.80,88.53,10,0
    .goto Ghostlands,32.67,90.30,8,0
    .goto Ghostlands,40.09,83.34,10,0
    .goto Ghostlands,41.24,83.04,8,0
    .goto Ghostlands,32.84,88.21,10,0
    .goto Ghostlands,32.80,88.53,10,0
    .goto Ghostlands,32.67,90.30,8,0
    .goto Ghostlands,40.09,83.34,10,0
    .goto Ghostlands,41.24,83.04,8,0
    .goto Ghostlands,32.84,88.21,10,0
    .goto Ghostlands,32.80,88.53,10,0
    .goto Ghostlands,32.67,90.30,8,0
    .goto Ghostlands,40.09,83.34,10,0
    .goto Ghostlands,41.24,83.04
    >>Kill |cFFFF5722Borgoth the Bloodletter|r inside either of the Slaughterhouses
    .complete 9170,2 --Kill Borgoth the Bloodletter (x1)
    .mob Borgoth the Bloodletter
step
    .goto Ghostlands,32.25,82.18,10,0
    .goto Ghostlands,32.80,82.45,10,0
    .goto Ghostlands,32.65,83.15,8 >>Go inside the central Ziggurat. Kill all the |cFFFF5722Eyes of Dar'Khan|r and |cFFFF5722Deatholme Necromancers|r inside
    .mob Eye of Dar'Khan
    .mob Deatholme Necromancer
    .isOnQuest 9167
step
    .goto Ghostlands,32.80,82.39,10,0
    .goto Ghostlands,33.04,81.25
    >>Kill |cFFFF5722Dar'Khan Drathir|r at the bottom of the Ziggurat
    >>|cFFFCDC00LoS his|r |T136118:0|t[Corruption] |cFFFCDC00and|r |T136197:0|t[Shadow Bolts] by kiting him around the Ziggurat
    >>|cFFFCDC00Make sure there are no other mobs around for when he casts|r |T136183:0|t[Fear] |cFFFCDC00on you|r
    >>|cFFFCDC00Use|r |T135738:0|t[Mana Tap] |cFFFCDC00to pull the|r |cFFFF5722Necromancers|r |cFFFCDC00out of the room|r << BloodElf Paladin tbc/BloodElf Rogue tbc
    >>|cFFFCDC00Find a group for him if needed|r << !Hunter !Warlock
    .complete 9167,1 --Collect Dar'Khan's Head (x1)
    .mob Dar'Khan Drathir
step
    #xprate 1.49-1.58
    .goto Ghostlands,32.80,82.45
    .xp 21+14900 >> Grind to 14900+/22400xp
    .isOnQuest 9156
step
    #xprate 1.49-1.58
    .goto Ghostlands,32.80,82.45
    .xp 21+18650 >> Grind to 18650+/22400xp
    .isQuestTurnedIn 9156
step
    #xprate 1.58-1.68
    .goto Ghostlands,32.80,82.45
    .xp 21+14400 >> Grind to 14400+/22400xp
    .isOnQuest 9156
step
    #xprate 1.58-1.68
    .goto Ghostlands,32.80,82.45
    .xp 21+18400 >> Grind to 18400+/22400xp
    .isQuestTurnedIn 9156
step
    #completewith next
    .deathskip >> Die and respawn at the |cFF00FF25Spirit Healer|r
    .target Spirit Healer
step
    .goto Ghostlands,54.84,49.30,10,0
    .goto Ghostlands,55.07,48.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Kaendris|r
    .turnin 9167 >> Turn in The Traitor's Destruction
    .accept 9328 >> Accept Hero of the Sin'dorei << BloodElf
    .accept 9811 >> Accept Friend of the Sin'dorei << !BloodElf
    .target Magister Kaendris
    .isQuestComplete 9167
step
    .goto Ghostlands,54.84,49.30,10,0
    .goto Ghostlands,55.07,48.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Kaendris|r
    .accept 9328 >> Accept Hero of the Sin'dorei << BloodElf
    .accept 9811 >> Accept Friend of the Sin'dorei << !BloodElf
    .target Magister Kaendris
    .isQuestTurnedIn 9167
step
    #completewith next
    .goto Ghostlands,55.42,48.70,10,0
    .goto Ghostlands,55.32,48.35,10,0
    .goto Ghostlands,55.17,48.21,10 >>Go upstairs
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Idonis|r and |cFF00FF25Janeda|r
    .turnin 9170 >>Turn in Dar'Khan's Lieutenants
    .goto Ghostlands,54.87,48.55
    .turnin 9164 >>Turn in Captives at Deatholme
    .goto Ghostlands,54.82,48.35
    .target Magister Idonis
    .target Arcanist Janeda
step << !Troll/!wotlk !Orc/!wotlk
    #completewith KnuLuz
    .hs >> Hearth to Tranquillien
    .cooldown item,6948,>0
step
    .goto Ghostlands,47.71,32.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Vredigar|r
    >>|cFF0E8312Buy the|r |T133759:0|t[Tranquillien Champion's Cloak] |cFF0E8312from him|r
    .collect 22990,1,496,1 --Collect Tranquillien Champion's Cloak (1)
    .target Provisioner Vredigar
    .itemStat 15,LEVEL,<21
    .isQuestTurnedIn 9167
step << Rogue wotlk
    #completewith SMTraining5
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Eralan|r
    >>|cFF0E8312Buy|r |T132273:0|t[Instant Poison] |cFF0E8312from her|r
    .collect 6947,10,496,1 --Instant Poison (10)
    .target Eralan
    .xp <19,1
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Eralan|r
    >>|cFF0E8312Buy the|r |T135427:0|t[Throat Piercers] |cFF0E8312and the|r |T135344:0|t[Sinister Scimitar] |cFF0E8312from her if they're up|r
    .vendor 16268 >> Vendor Trash
    .target Eralan
    .money <0.7517 << BloodElf/Undead
    .money <0.7893 << Orc/Troll
    .itemStat 16,QUALITY,<7
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Eralan|r
    >>|cFF0E8312Buy the|r |T135344:0|t[Sinister Scimitar] |cFF0E8312from her if it's up|r
    .vendor 16268 >> Vendor Trash
    .target Eralan
    .money <0.6947 << BloodElf/Undead
    .money <0.7294 << Orc/Troll
    .itemStat 16,QUALITY,<7
    .itemStat 18,QUALITY,>7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>12.5 << wotlk
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Eralan|r
    >>|cFF0E8312Buy the|r |T135427:0|t[Throat Piercers] |cFF0E8312from her if it's up|r
    .vendor 16268 >> Vendor Trash
    .target Eralan
    .money <0.0570 << BloodElf/Undead
    .money <0.0599 << Orc/Troll
    .itemStat 16,QUALITY,>7
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step << Rogue
    #label Eralan7
    #completewith SMTraining5
    +Equip the |T135427:0|t[Throat Piercers] and |T135344:0|t[Sinister Scimitar]
    .use 29584
    .use 29583
    .itemcount 29584,1
    .itemcount 29583,1
    .itemStat 16,QUALITY,<7
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step << Rogue
    #requires Eralan7
    #completewith SMTraining5
    +Equip the |T135344:0|t[Sinister Scimitar]
    .use 29583
    .itemcount 29583,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
step << Rogue
    #requires Eralan7
    #completewith SMTraining5
    +Equip the |T135427:0|t[Throat Piercers]
    .use 29584
    .itemcount 29584,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step
    #label KnuLuz
    .goto Ghostlands,46.02,33.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Rathiel|r
    .turnin 9156 >> Turn in Wanted: Knucklerot and Luzran
    .target Deathstalker Rathiel
    .isQuestComplete 9156
step
    #xprate <1.5
    .goto Ghostlands,37.82,52.20,50,0
    .goto Ghostlands,38.11,56.94,50,0
    .goto Ghostlands,37.73,61.43,50,0
    .goto Ghostlands,37.06,65.52,50,0
    .goto Ghostlands,36.25,70.35,50,0
    .goto Ghostlands,37.82,52.20,50,0
    .goto Ghostlands,38.11,56.94,50,0
    .goto Ghostlands,37.73,61.43,50,0
    .goto Ghostlands,37.06,65.52,50,0
    .goto Ghostlands,36.25,70.35,50,0
    .goto Ghostlands,37.82,52.20,50,0
    .goto Ghostlands,38.11,56.94,50,0
    .goto Ghostlands,37.73,61.43,50,0
    .goto Ghostlands,37.06,65.52,50,0
    .goto Ghostlands,36.25,70.35
    .xp 20 >>Grind to 20
step
    #completewith SMTraining5
    .goto Ghostlands,45.42,30.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Sunwing|r
    .fly Silvermoon >> Fly to Silvermoon City
    .target Skymaster Sunwing
step << Mage
    .goto Eversong Woods,55.70,54.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Antheol|r
    .turnin 9404 >>Turn in Recently Living
    .target Instructor Antheol
step << BloodElf !Warlock !Paladin wotlk
    .goto Eversong Woods,61.08,54.15,12,0
    .goto Eversong Woods,61.38,53.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Perascamin|r
    .skill riding,75 >> Train |T136103:0|t[Apprentice Riding] from him
	.target Perascamin
    .money <4.5 << Rogue
    .money <4.693 << !Rogue
step << BloodElf !Warlock !Paladin wotlk
    .goto Eversong Woods,61.08,54.15,12,0
    .goto Eversong Woods,61.09,54.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Winaestra|r
    +|cFF0E8312Buy any|r |T132228:0|t[Hawkstrider] |cFF0E8312that you like from her|r
	.target Winaestra
    .itemcount 28927,<1 --Red Hawkstrider
    .itemcount 29220,<1 --Blue Hawkstrider
    .itemcount 29221,<1 --Black Hawkstrider
    .itemcount 29222,<1 --Purple Hawkstrider
    .money <0.9025 << Rogue
    .money <1.083 << !Rogue
    .skill riding,<75,1
step << BloodElf !Warlock !Paladin wotlk
    .cast 55884 >> Use the |T132227:0|t[Red Hawkstrider] to learn it
    .use 28927
    .itemcount 28927,1
step << BloodElf !Warlock !Paladin wotlk
    .cast 55884 >> Use the |T132229:0|t[Blue Hawkstrider] to learn it
    .use 29220
    .itemcount 29220,1
step << BloodElf !Warlock !Paladin wotlk
    .cast 55884 >> Use the |T132228:0|t[Black Hawkstrider] to learn it
    .use 29221
    .itemcount 29221,1
step << BloodElf !Warlock !Paladin wotlk
    .cast 55884 >> Use the |T132231:0|t[Purple Hawkstrider] to learn it
    .use 29222
    .itemcount 29222,1
step << BloodElf !Warlock !Paladin wotlk
    #completewith LorThemar
    >>|cFFFCDC00Press "Shift+P" to open your Mount tab|r
    >>|cFFFCDC00Drag the|r |T132227:0|t[Red Hawkstrider] |cFFFCDC00onto your Action Bars|r
    .cast 34795 >> Mount your |T132227:0|t[Red Hawkstrider]
    .train 34795,3
step << BloodElf !Warlock !Paladin wotlk
    #completewith LorThemar
    >>|cFFFCDC00Press "Shift+P" to open your Mount tab|r
    >>|cFFFCDC00Drag the|r |T132229:0|t[Blue Hawkstrider] |cFFFCDC00onto your Action Bars|r
    .cast 35020 >> Mount your |T132229:0|t[Blue Hawkstrider]
    .train 35020,3
step << BloodElf !Warlock !Paladin wotlk
    #completewith LorThemar
    >>|cFFFCDC00Press "Shift+P" to open your Mount tab|r
    >>|cFFFCDC00Drag the|r |T132228:0|t[Black Hawkstrider] |cFFFCDC00onto your Action Bars|r
    .cast 29221 >> Mount your |T132228:0|t[Black Hawkstrider]
    .train 29221,3
step << BloodElf !Warlock !Paladin wotlk
    #completewith LorThemar
    >>|cFFFCDC00Press "Shift+P" to open your Mount tab|r
    >>|cFFFCDC00Drag the|r |T132231:0|t[Purple Hawkstrider] |cFFFCDC00onto your Action Bars|r
    .cast 29222 >> Mount your |T132231:0|t[Purple Hawkstrider]
    .train 29222,3
step << Mage/Priest/Warlock/Hunter/Paladin
    #completewith SMTraining5
    .goto Eversong Woods,56.51,49.61,25,0
    .goto Silvermoon City,73.39,59.65
    .zone Silvermoon City >>Enter Silvermoon
step << Priest
    .goto Silvermoon City,60.65,63.45,15,0
    .goto Silvermoon City,65.92,53.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Vynna|r
    >>|cFF0E8312Buy a|r |T135144:0|t[Greater Magic Wand] |cFF0E8312from the AH if it's cheap|r
    >>|cFFFCDC00If they're all too expensive, skip this step|r
    .collect 11288,1,496,1 --Greater Magic Wand
    .target Vynna
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.5
step << Priest/Mage
    #completewith SMTraining5
    .goto Silvermoon City,75.95,52.92,30,0
    .goto Silvermoon City,62.89,31.26,30,0
    .goto Silvermoon City,57.45,24.46,15,0
    .goto Silvermoon City,55.31,24.96,15,0 << Priest
    .goto Silvermoon City,57.21,21.25,15,0 << Mage
    .goto Silvermoon City,55.38,26.76,12 >> Travel toward |cFF00FF25Lotheolan|r << Priest
    .goto Silvermoon City,57.16,18.85,12 >> Travel toward |cFF00FF25Zaedana|r << Mage
step << Priest
    #label SMTraining5
    .goto Silvermoon City,55.38,26.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Lotheolan|r
    .train 7128 >> Train your class spells
    .target Lotheolan
step << Mage
    .goto Silvermoon City,57.16,18.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Zaedana|r
    .train 1953 >> Train your class spells
step << Mage
    #label SMTraining5
    .goto Silvermoon City,58.07,20.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Narinth|r
    .train 32272 >> Train |T135761:0|t[Teleport: Silvermoon]
    .target Narinth
    .money <0.5000
step << Hunter
    #completewith SMTraining5
    .goto Silvermoon City,83.52,48.68,30,0
    .goto Silvermoon City,83.50,43.40,20,0
    .goto Silvermoon City,83.45,30.13,15,0
    .goto Silvermoon City,83.45,28.56,15,0
    .goto Silvermoon City,84.71,28.05,15 >>Travel toward |cFF00FF25Zandine|r
step << Hunter
    #label SMTraining5
    .goto Silvermoon City,84.71,28.05
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Zandine|r
    .train 14282 >> Train your class spells
    .target Zandine
 step << Hunter
    .goto Silvermoon City,86.24,35.45
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Celana|r
    >>|cFF0E8312Buy a|r |T135489:0|t[Heavy Recurve Bow] |cFF0E8312from her|r
    .collect 3027,1,496,1 --Reinforced Bow (1)
    .target Celana
    .money <0.6032 << BloodElf
    .money <0.6336 << Troll/Orc
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.7
step << Warlock
    #completewith SMTraining5
    .goto Silvermoon City,73.39,59.65,30,0
    .goto Silvermoon City,75.62,58.31,20,0
    .goto Silvermoon City,75.95,52.92,30,0
    .goto Silvermoon City,75.65,45.04,15,0
    .goto Silvermoon City,76.33,43.33,12 >>Go inside the building, then go downstairs
step << Warlock TBC
    .goto Silvermoon City,73.97,44.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Torian|r
    >>|cFF0E8312Buy the|r |T133738:0|t[Grimoire of Torment (Rank 2)] |cFF0E8312from him|r
    .collect 16346,1,496,1 --Grimoire of Torment Rank 2
    .target Torian
    .train 20317,1
step << Warlock TBC
    +Use the |T133738:0|t[Grimoire of Torment (Rank 2)]
    .use 16346
    .itemcount 16346,1
    .train 20317,1
step << Warlock
    #label SMTraining5
    .goto Silvermoon City,74.39,47.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Talionia|r
    .train 5784 >> Train |T136103:0|t[Summon Felsteed] << wotlk
    .train 706 >> Train your class spells << tbc
    .target Talionia
step << Warlock wotlk
    #completewith LorThemar
    >>|cFFFCDC00Press "Shift+P" to open your Mount tab|r
    >>|cFFFCDC00Drag the|r |T136103:0|t[Felsteed] |cFFFCDC00onto your Action Bars|r
    .cast 5784 >> Mount your |T136103:0|t[Felsteed]
    .train 5784,3
step << Paladin wotlk
    #completewith SMTraining5
    .goto Silvermoon City,82.03,68.36,25,0
    .goto Silvermoon City,84.63,48.65,25,0
    .goto Silvermoon City,84.65,43.43,25,0
    .goto Silvermoon City,89.00,36.95,20 >>Travel toward |cFF00FF25Ithelis|r and |cFF00FF25Osselan|r
    .isQuestTurnedIn 9685
step << Paladin
    #completewith next
    .goto Silvermoon City,82.03,68.36,25,0
    .goto Silvermoon City,84.63,48.65,25,0
    .goto Silvermoon City,84.65,43.43,25,0
    .goto Silvermoon City,89.00,36.95,15,0
    .goto Silvermoon City,89.26,35.20,15 >>Travel toward |cFF00FF25Bloodvalor|r
--   .train 647,1 << Paladin tbc
--  .train 62124,1 << Paladin wotlk
step << Paladin
    .goto Silvermoon City,89.26,35.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Bloodvalor|r
    .turnin 9685 >>Turn in Redeeming the Dead
    .target Knight-Lord Bloodvalor
step << Paladin wotlk
    .goto Silvermoon City,91.19,36.94,-1
    .goto Silvermoon City,91.14,38.10,-1
	>>|cFFFCDC00Jump onto one of the benches below to avoid walking up the stairs|r
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Ithelis|r or |cFF00FF25Osselan|r
    .train 34769 >>Train |T136103:0|t[Summon Warhorse]
	.target Ithelis
	.target Osselan
    .train 34769,1
step << Paladin
    #completewith LorThemar
    >>|cFFFCDC00Press "Shift+P" to open your Mount tab|r
    >>|cFFFCDC00Drag the|r |T136103:0|t[Thalassian Warhorse] |cFFFCDC00onto your Action Bars|r
    .cast 34769 >> Mount your |T136103:0|t[Thalassian Warhorse]
    .train 34769,3
step << Rogue
    #completewith SMTraining5
    .goto Silvermoon City,73.39,59.65,30,0
    .goto Silvermoon City,76.55,52.05,20,0
    .goto Silvermoon City,79.70,52.16,20 >>Travel toward |cFF00FF25Zelanis|r
step << Rogue
    .goto Silvermoon City,79.70,52.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Zelanis|r
    >>|cFFFCDC00Make sure you've trained|r |T132282:0|t[Ambush] |cFFFCDC00and|r |T132302:0|t[Rupture] |cFFFCDC00for a quest later|r << tbc
    .accept 10794 >>Accept Rogues of the Shattered Hand
    .train 8676 >>Train |T132282:0|t[Ambush] << tbc
    .train 1943 >>Train |T132302:0|t[Rupture] << tbc
    .train 1943 >>Train your class spells << wotlk
    .target Zelanis
    .xp <20,1
    .xp >22,1
step << Rogue
    .goto Silvermoon City,79.70,52.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Zelanis|r
    >>|cFFFCDC00Make sure you've trained|r |T132282:0|t[Ambush] |cFFFCDC00and|r |T132302:0|t[Rupture] |cFFFCDC00for a quest later|r << tbc
    .accept 10794 >>Accept Rogues of the Shattered Hand
    .train 8676 >>Train |T132282:0|t[Ambush] << tbc
    .train 1943 >>Train |T132302:0|t[Rupture] << tbc
    .train 1759 >>Train your class spells
    .target Zelanis
    .xp <22,1
    .xp >24,1
step << Rogue
    #label SMTraining5
    .goto Silvermoon City,79.70,52.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Zelanis|r
    >>|cFFFCDC00Make sure you've trained|r |T132282:0|t[Ambush] |cFFFCDC00and|r |T132302:0|t[Rupture] |cFFFCDC00for a quest later|r << tbc
    .accept 10794 >>Accept Rogues of the Shattered Hand
    .train 8676 >>Train |T132282:0|t[Ambush] << tbc
    .train 1943 >>Train |T132302:0|t[Rupture] << tbc
    .train 6762 >>Train your class spells << wotlk
    .target Zelanis
    .xp <24,1
step << Rogue wotlk
    .goto Silvermoon City,80.47,51.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Darlia|r
    >>|cFF0E8312Buy|r |T132273:0|t[Instant Poison] |cFF0E8312from her|r
    .collect 6947,10,496,1 --Instant Poison (10)
    .target Darlia
step << Druid
    .goto Silvermoon City,72.53,56.24,10,0
    .goto Silvermoon City,71.55,55.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Harene|r
    .train 8938 >> Train your class spells
    .target Harene Plainwalker
	.xp <18,1
	.xp >20,1
step << Druid
    .goto Silvermoon City,72.53,56.24,10,0
    .goto Silvermoon City,71.55,55.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Harene|r
    .train 6756 >> Train your class spells
    .target Harene Plainwalker
	.xp <20,1
	.xp >22,1
step << Druid
    .goto Silvermoon City,72.53,56.24,10,0
    .goto Silvermoon City,71.55,55.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Harene|r
    .train 8926 >> Train your class spells
    .target Harene Plainwalker
	.xp <22,1
step << skip
    .goto Silvermoon City,53.926,71.029
    .turnin 9134 >> Turn in Skymistress Gloaming
--VV BloodElf Paladin
step << Warlock
    .abandon 10605 >>Abandon Carendin Summons
step
    #completewith UndercitySM
    .goto Silvermoon City,75.76,58.26,20,0 << Druid
    .goto Silvermoon City,75.35,51.78,30,0 << Druid
    .goto Silvermoon City,79.93,33.54,30,0 << Paladin wotlk
    .goto Silvermoon City,77.32,33.43,20,0 << Hunter/Paladin wotlk
    .goto Silvermoon City,74.47,36.83,20,0 << Hunter/Paladin wotlk
    .goto Silvermoon City,63.47,31.98,20,0
    .goto Silvermoon City,57.48,24.49,20,0
    .goto Silvermoon City,53.80,20.23,50 >>Travel toward |cFF00FF25Lor'themar|r
step
    .goto Silvermoon City,53.80,20.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Lor'themar|r
    .turnin 9328 >> Turn in Hero of the Sin'dorei << BloodElf
    .accept 9621 >> Accept Envoy to the Horde << BloodElf
    .turnin 9811 >> Turn in Friend of the Sin'dorei << !BloodElf
    .accept 9812 >> Accept Envoy to the Horde << !BloodElf
    .target Lor'themar Theron
    .isOnQuest 9328 << BloodElf
    .isOnQuest 9811 << !BloodElf
step
    #label LorThemar
    .goto Silvermoon City,53.80,20.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Lor'themar|r
    .accept 9621 >> Accept Envoy to the Horde << BloodElf
    .accept 9812 >> Accept Envoy to the Horde << !BloodElf
    .target Lor'themar Theron
    .isQuestTurnedIn 9328 << BloodElf
    .isQuestTurnedIn 9811 << !BloodElf
step
    #completewith UndercitySM
    .goto Silvermoon City,51.83,17.91,30,0
    .goto Silvermoon City,49.45,15.00
    .zone Undercity >>Take the Orb of Translocation to Undercity
step
    #completewith UndercitySM
    .goto Undercity,59.81,11.33,20,0
    .goto Undercity,66.08,18.24,30,0
    .goto Undercity,66.04,32.97,30,0
    .goto Undercity,65.97,44.08,30,0
    .goto Undercity,60.52,44.02,10,0 << !Undead/!Mage
    .goto Undercity,71.33,44.14,10,0 << Undead Mage
    .goto Undercity,60.07,47.70,10 >>Take the lift down to the Undercity << !Undead/!Mage
    .goto Undercity,71.88,40.45,10 >>Take the lift down to the Undercity << Undead Mage
step << !Undead
    .goto Undercity,63.25,48.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Michael|r
    .fp Undercity >> Get the Undercity Flight Path
    .target Michael Garrett
step
    #xprate >1.4999
    .goto Undercity,67.73,37.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Norman|r
    .home >> Set your Hearthstone to Undercity
    .target Innkeeper Norman
step << Mage
    #completewith next
    .goto Undercity,68.25,40.67,15,0
    .goto Undercity,66.06,30.63,20,0
    .goto Undercity,67.27,23.68,20,0
    .goto Undercity,82.77,15.85,20 >> Travel toward |cFF00FF25Hannah|r
step << Mage
    .goto Undercity,82.77,15.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Hannah|r
    >>|cFF0E8312Buy a|r |T134419:0|t[Rune of Teleportation] |cFF0E8312from her|r
    .collect 17031,1,496,1 --Rune of Teleportation (1)
    .money <0.3000 << Troll
    .money <0.2850 << !Troll
    .target Hannah Akeley
step << Mage
    .goto Undercity,84.19,15.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Mortaim|r upstairs
    .train 3563 >>Train |T135766:0|t[Teleport: Undercity]
    .money <0.2000 << Troll
    .money <0.1900 << !Troll
    .target Lexington Mortaim
step << Rogue
    .goto Undercity,77.49,49.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Nathaniel|r
    >>|cFF0E8312Buy the|r |T135423:0|t[Deadly Throwing Axe] |cFF0E8312from him|r
    .collect 25875,1,496,1 --Deadly Throwing Axe (1)
    .target Nathaniel Steenwick
    .itemStat 18,QUALITY,<2
    .isQuestAvailable 496
step << Rogue
    #completewith next
    +Equip the |T135423:0|t[Deadly Throwing Axe]
    .use 25875
    .itemcount 25875,1
    .itemStat 18,QUALITY,<2
step
    #completewith UndercitySM
    .goto Undercity,63.84,47.17,5,0 << !Mage
    .goto Undercity,65.50,56.75,20,0 << !Mage
    .goto Undercity,64.42,64.62,20,0 << !Mage
    .goto Undercity,51.88,64.84,20,0
    .goto Undercity,46.28,73.10,15,0
    .goto Undercity,45.31,78.24,15,0
    .goto Undercity,46.18,83.63,15,0
    .goto Undercity,48.80,87.63,15,0
    .goto Undercity,52.45,89.49,15,0
    .goto Undercity,58.06,91.79,20 >> Travel toward |cFF00FF25Sylvanas|r inside the Royal Quarter
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Sylvanas|r and |cFF00FF25Sunsorrow|r
    .turnin 9621 >> Turn in Envoy to the Horde << BloodElf
    .accept 9626 >> Accept Meeting the Warchief << BloodElf
    .turnin 9180 >> Turn in Journey to Undercity << BloodElf
    .turnin 9812 >> Turn in Envoy to the Horde << !BloodElf
    .accept 9813 >> Accept Meeting the Orcs << !BloodElf
    .turnin 9177 >> Turn in Journey to Undercity << !BloodElf
    .goto Undercity,58.06,91.79
    .accept 9425 >> Accept Report to Tarren Mill << BloodElf
    .goto Undercity,57.77,90.57 << BloodElf
    .target Lady Sylvanas Windrunner
    .target Ambassador Sunsorrow << BloodElf
    .isOnQuest 9621 << BloodElf
    .isOnQuest 9812 << !BloodElf
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Sylvanas|r and |cFF00FF25Sunsorrow|r
    .accept 9626 >> Accept Meeting the Warchief << BloodElf
    .turnin 9180 >> Turn in Journey to Undercity << BloodElf
    .accept 9813 >> Accept Meeting the Orcs << !BloodElf
    .turnin 9177 >> Turn in Journey to Undercity << !BloodElf
    .goto Undercity,58.06,91.79
    .accept 9425 >> Accept Report to Tarren Mill << BloodElf
    .goto Undercity,57.77,90.57 << BloodElf
    .target Lady Sylvanas Windrunner
    .target Ambassador Sunsorrow << BloodElf
    .isQuestTurnedIn 9621 << BloodElf
    .isQuestTurnedIn 9812 << !BloodElf
step
    #label UndercitySM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Sylvanas|r and |cFF00FF25Sunsorrow|r
    .turnin 9177 >> Turn in Journey to Undercity << !BloodElf
    .turnin 9180 >> Turn in Journey to Undercity << BloodElf
    .goto Undercity,58.06,91.79
    .accept 9425 >> Accept Report to Tarren Mill << BloodElf
    .goto Undercity,57.77,90.57 << BloodElf
    .target Lady Sylvanas Windrunner
    .target Ambassador Sunsorrow << BloodElf
step << Paladin
    .goto Undercity,58.00,90.46
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Cyssa|r
    .train 879 >>Train your class spells
	.target Champion Cyssa Dawnrose
    .xp <20,1
    .xp >22,1
step << Paladin
    .goto Undercity,58.00,90.46
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Cyssa|r
    .train 19835 >>Train your class spells
	.target Champion Cyssa Dawnrose
    .xp <22,1
    .xp >24,1
step << Paladin
    #label SMTraining5
    .goto Undercity,58.00,90.46
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Cyssa|r
    .train 5588 >>Train your class spells
	.target Champion Cyssa Dawnrose
    .xp <24,1
step
    #completewith ExitUC
    .goto Undercity,55.20,90.91
    .goto Undercity,67.88,14.97,30 >>|cFFFCDC00Go to the edge of the main platform in the Royal Quarter. Perform a Logout Skip by positioning your character until it looks like they're floating, then logging out and back in|r
    .link https://www.youtube.com/watch?v=jj85AXyF1XE >> |cFFFCDC00CLICK HERE|r
step
    .abandon 9156 >> Abandon Wanted: Knucklerot and Luzran
    .abandon 9167 >> Abandon The Traitor's Destruction
    .isOnQuest 9156
    .isOnQuest 9167
step
    .abandon 9156 >> Abandon Wanted: Knucklerot and Luzran
    .isOnQuest 9156
step
    .abandon 9167 >> Abandon The Traitor's Destruction
    .isOnQuest 9167
step
    #label ExitUC
    .goto Undercity,66.21,4.90,15,0
    .goto Tirisfal Glades,61.73,64.87
    .zone Tirisfal Glades >>Exit Undercity
    .isQuestAvailable 496
step << !Warlock Undead wotlk
    .goto Tirisfal Glades,60.08,52.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Velma|r
    .skill riding,75 >> Train |T136103:0|t[Apprentice Riding] from her
    .target Velma Warnam
    .money <4.5
step << !Warlock Undead wotlk
    .goto Tirisfal Glades,59.87,52.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Zachariah|r
    +|cFF0E8312Buy any|r |T132264:0|t[Skeletal Horse] |cFF0E8312that you like from him|r
	.target Zachariah Post
    .itemcount 13331,<1 --Red Skeletal Horse
    .itemcount 13332,<1 --Blue Skeletal Horse
    .itemcount 13333,<1 --Brown Skeletal Horse
    .itemcount 46308,<1 --Brown Skeletal Horse
    .money <0.9025
    .skill riding,<75,1
step << !Warlock Undead wotlk
    .cast 55884 >> Use the |T132264:0|t[Red Skeletal Horse] to learn it
    .use 13331
    .itemcount 13331,1
step << !Warlock Undead wotlk
    .cast 55884 >> Use the |T132264:0|t[Blue Skeletal Horse] to learn it
    .use 13332
    .itemcount 13332,1
step << !Warlock Undead wotlk
    .cast 55884 >> Use the |T132264:0|t[Brown Skeletal Horse] to learn it
    .use 13333
    .itemcount 13333,1
step << !Warlock Undead wotlk
    .cast 55884 >> Use the |T132264:0|t[Black Skeletal Horse] to learn it
    .use 46308
    .itemcount 46308,1
step << !Warlock Undead wotlk
    >>|cFFFCDC00Press "Shift+P" to open your Mount tab|r
    >>|cFFFCDC00Drag the|r |T132264:0|t[Red Skeletal Horse] |cFFFCDC00onto your Action Bars|r
    .cast 17462 >> Mount your |T132264:0|t[Red Skeletal Horse]
    .train 17462,3
step << !Warlock Undead wotlk
    >>|cFFFCDC00Press "Shift+P" to open your Mount tab|r
    >>|cFFFCDC00Drag the|r |T132264:0|t[Blue Skeletal Horse] |cFFFCDC00onto your Action Bars|r
    .cast 17463 >> Mount your |T132264:0|t[Blue Skeletal Horse]
    .train 17463,3
step << !Warlock Undead wotlk
    >>|cFFFCDC00Press "Shift+P" to open your Mount tab|r
    >>|cFFFCDC00Drag the|r |T132264:0|t[Brown Skeletal Horse] |cFFFCDC00onto your Action Bars|r
    .cast 17464 >> Mount your |T132264:0|t[Brown Skeletal Horse]
    .train 17464,3
step << !Warlock Undead wotlk
    >>|cFFFCDC00Press "Shift+P" to open your Mount tab|r
    >>|cFFFCDC00Drag the|r |T132264:0|t[Black Skeletal Horse] |cFFFCDC00onto your Action Bars|r
    .cast 64977 >> Mount your |T132264:0|t[Black Skeletal Horse]
    .train 64977,3
step
    #xprate <1.5
    #label Durotar
    .goto Tirisfal Glades,61.06,58.86,12,0
    .goto Tirisfal Glades,61.51,59.01,10,0
    .goto Tirisfal Glades,61.27,59.22,8,0
    .goto Tirisfal Glades,61.13,58.84,8,0
    .goto Tirisfal Glades,61.38,58.71,8,0
    .goto Tirisfal Glades,61.34,59.17,8,0
    .goto Tirisfal Glades,60.51,58.69,-1
    .goto Tirisfal Glades,60.94,46.35,-1
    >>Go up the Zeppelin Tower
    .zone Durotar >>Take the Zeppelin to Durotar
step << Troll wotlk/Orc wotlk !Warlock
    #xprate >1.4999
    .goto Tirisfal Glades,61.06,58.86,12,0
    .goto Tirisfal Glades,61.51,59.01,10,0
    .goto Tirisfal Glades,61.27,59.22,8,0
    .goto Tirisfal Glades,61.13,58.84,8,0
    .goto Tirisfal Glades,61.38,58.71,8,0
    .goto Tirisfal Glades,61.34,59.17,8,0
    .goto Tirisfal Glades,60.51,58.69,-1
    .goto Tirisfal Glades,60.94,46.35,-1
    >>Go up the Zeppelin Tower
    .zone Durotar >>Take the Zeppelin to Durotar
    .money <4.5
step << !Warlock Orc wotlk
    #xprate >1.4999
    #completewith next
    .goto Orgrimmar,49.59,94.74,30,0
    .goto Orgrimmar,49.42,90.90,30,0
    .goto Orgrimmar,52.26,88.65,30,0
    .goto Orgrimmar,50.73,60.94,30,0
    .goto Orgrimmar,52.15,58.31,30,0
    .goto Orgrimmar,63.08,39.25,30,0
    .goto Orgrimmar,64.31,38.12,30,0
    .goto Orgrimmar,66.07,40.04,30,0
    .goto Orgrimmar,72.25,21.42,30,0
    .goto Orgrimmar,69.41,13.11,20 >>Travel toward |cFF00FF25Kildar|r
    .money <4.5
step << !Warlock Orc wotlk
    #xprate >1.4999
    .goto Orgrimmar,69.41,13.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Kildar|r
    .skill riding,75 >> Train |T136103:0|t[Apprentice Riding] from him
    .target Kildar
    .money <4.5
step << !Warlock Orc wotlk
    #xprate >1.4999
    .goto Orgrimmar,69.38,12.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Ogunaro|r
    +|cFF0E8312Buy any|r |T132224:0|t[Wolf] |cFF0E8312that you like from him|r
	.target Ogunaro Wolfrunner
    .itemcount 1132,<1 --Horn of the Timber Wolf
    .itemcount 5665,<1 --Horn of the Dire Wolf
    .itemcount 5668,<1 --Horn of the Brown Wolf
    .itemcount 46099,<1 --Horn of the Black Wolf
    .money <0.9025
    .skill riding,<75,1
step << !Warlock Orc wotlk
    #xprate >1.4999
    .cast 55884 >> Use the |T132224:0|t[Horn of the Timber Wolf] to learn it
    .use 1132
    .itemcount 1132,1
step << !Warlock Orc wotlk
    #xprate >1.4999
    .cast 55884 >> Use the |T132266:0|t[Horn of the Dire Wolf] to learn it
    .use 5665
    .itemcount 5665,1
step << !Warlock Orc wotlk
    #xprate >1.4999
    .cast 55884 >> Use the |T132224:0|t[Horn of the Brown Wolf] to learn it
    .use 5668
    .itemcount 5668,1
step << !Warlock Orc wotlk
    #xprate >1.4999
    .cast 55884 >> Use the |T132224:0|t[Horn of the Black Wolf] to learn it
    .use 46099
    .itemcount 46099,1
step << Troll Mage wotlk
    #xprate >1.4999
    #completewith next
    .goto Orgrimmar,49.59,94.74,30,0
    .goto Orgrimmar,49.42,90.90,30,0
    .goto Orgrimmar,52.26,88.65,30,0
    .goto Orgrimmar,51.01,68.03,30,0
    .goto Orgrimmar,49.72,66.08,30,0
    .goto Orgrimmar,46.59,64.54,6,0
    .goto Orgrimmar,46.75,63.84,6,0
    .goto Orgrimmar,46.59,64.54,6,0
    .goto Orgrimmar,46.75,63.84,6,0
    .goto Orgrimmar,46.59,64.54,6,0
    .goto Orgrimmar,46.75,63.84,6,0
    .goto Orgrimmar,41.94,64.39,15,0
    .goto Orgrimmar,38.78,77.83,15,0
    .goto Orgrimmar,38.72,83.38,12,0
    .goto Orgrimmar,37.22,87.73,8,0
    .goto Orgrimmar,37.74,88.56,8,0
    .goto Orgrimmar,38.64,85.42,10 >>Travel toward |cFF00FF25Thuul|r
    .money <4.7125
step << Troll Mage wotlk
    #xprate >1.4999
    .goto Orgrimmar,38.64,85.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Thuul|r
    .train 3567 >> Train |T135759:0|t[Teleport: Orgrimmar]
    .target Thuul
    .money <4.7125
step << Troll Mage wotlk
    #xprate >1.4999
    #completewith next
    .goto Orgrimmar,42.49,73.39,40,0
    .goto Orgrimmar,52.03,85.17,30,0
    .goto Orgrimmar,52.20,88.80,30,0
    .goto Orgrimmar,49.32,91.05,30,0
    .goto Durotar,52.26,34.68,35,0
    .goto Durotar,55.28,75.48,50 >>Travel toward |cFF00FF25Xar'Ti|r
    .train 3567,3
    .money <4.5
step << Troll wotlk
    #xprate >1.4999
    #completewith next
    .goto Durotar,49.41,20.97,35,0
    .goto Durotar,50.21,26.30,35,0
    .goto Durotar,49.93,28.80,35,0
    .goto Durotar,52.26,34.68,35,0
    .goto Durotar,55.28,75.48,50 >>Travel toward |cFF00FF25Xar'Ti|r
    .money <4.5
step << Troll wotlk
    #xprate >1.4999
    .goto Durotar,55.28,75.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Xar'Ti|r
    .skill riding,75 >> Train |T136103:0|t[Apprentice Riding] from her
    .target Xar'Ti
    .money <4.5
step << Troll wotlk
    #xprate >1.4999
    .goto Durotar,55.23,75.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Zjolnir|r
    +|cFF0E8312Buy any|r |T132253:0|t[Raptor Whistle] |cFF0E8312that you like from him|r
	.target Zjolnir
    .itemcount 8588,<1 --Whistle of the Emerald Raptor
    .itemcount 8591,<1 --Whistle of the Turquoise Raptor
    .itemcount 8592,<1 --Whistle of the Violet Raptor
    .money <0.9025
    .skill riding,<75,1
step << Troll wotlk
    #xprate >1.4999
    .cast 55884 >> Use the |T132253:0|t[Whistle of the Emerald Raptor] to learn it
    .use 8588
    .itemcount 8588,1
step << Troll wotlk
    #xprate >1.4999
    .cast 55884 >> Use the |T132253:0|t[Whistle of the Turquoise Raptor] to learn it
    .use 8591
    .itemcount 8591,1
step << Troll wotlk
    #xprate >1.4999
    .cast 55884 >> Use the |T132253:0|t[Whistle of the Violet Raptor] to learn it
    .use 8592
    .itemcount 8592,1
---
step << Troll wotlk/Orc wotlk !Warlock
    #xprate >1.4999
    .hs >> Hearth to Undercity
    .zoneskip Undercity
    .zoneskip Tirisfal Glades
    .zoneskip Silverpine Forest
    .zoneskip Hillsbrad Foothills
step << Orc wotlk !Warlock
    #xprate >1.4999
    #completewith Lift
    >>|cFFFCDC00Press "Shift+P" to open your Mount tab|r
    >>|cFFFCDC00Drag the|r |T132224:0|t[Timber Wolf] |cFFFCDC00onto your Action Bars|r
    .cast 580 >> Mount your |T132224:0|t[Timber Wolf]
    .train 580,3
step << Orc wotlk !Warlock
    #xprate >1.4999
    #completewith Lift
    >>|cFFFCDC00Press "Shift+P" to open your Mount tab|r
    >>|cFFFCDC00Drag the|r |T132266:0|t[Dire Wolf] |cFFFCDC00onto your Action Bars|r
    .cast 6653 >> Mount your |T132266:0|t[Dire Wolf]
    .train 6653,3
step << Orc wotlk !Warlock
    #xprate >1.4999
    #completewith Lift
    >>|cFFFCDC00Press "Shift+P" to open your Mount tab|r
    >>|cFFFCDC00Drag the|r |T132224:0|t[Brown Wolf] |cFFFCDC00onto your Action Bars|r
    .cast 6654 >> Mount your |T132224:0|t[Brown Wolf]
    .train 6654,3
step << Orc wotlk !Warlock
    #xprate >1.4999
    #completewith Lift
    >>|cFFFCDC00Press "Shift+P" to open your Mount tab|r
    >>|cFFFCDC00Drag the|r |T132224:0|t[Black Wolf] |cFFFCDC00onto your Action Bars|r
    .cast 64658 >> Mount your |T132224:0|t[Black Wolf]
    .train 64658,3
step << Troll wotlk
    #xprate >1.4999
    #completewith Lift
    >>|cFFFCDC00Press "Shift+P" to open your Mount tab|r
    >>|cFFFCDC00Drag the|r |T132253:0|t[Emerald Raptor] |cFFFCDC00onto your Action Bars|r
    .cast 8395 >> Mount your |T132253:0|t[Emerald Raptor]
    .train 8395,3
step << Troll wotlk
    #xprate >1.4999
    #completewith Lift
    >>|cFFFCDC00Press "Shift+P" to open your Mount tab|r
    >>|cFFFCDC00Drag the|r |T132253:0|t[Turquoise Raptor] |cFFFCDC00onto your Action Bars|r
    .cast 10796 >> Mount your |T132253:0|t[Turquoise Raptor]
    .train 10796,3
step << Troll wotlk
    #xprate >1.4999
    #completewith Lift
    >>|cFFFCDC00Press "Shift+P" to open your Mount tab|r
    >>|cFFFCDC00Drag the|r |T132253:0|t[Violet Raptor] |cFFFCDC00onto your Action Bars|r
    .cast 10799 >> Mount your |T132253:0|t[Violet Raptor]
    .train 10799,3
step << Troll wotlk/Orc wotlk !Warlock
    #xprate >1.4999
    #label Lift
    #completewith next
    .goto Undercity,60.07,47.70,10,0
    .goto Undercity,60.52,44.02,10,0
    .goto Undercity,65.97,44.08,30,0
    .goto Undercity,66.04,32.97,30,0
    .goto Undercity,66.08,18.24,30 >>Take the lift back up toward Tirisfal
    .zoneskip Tirisfal Glades
step << Troll wotlk/Orc wotlk !Warlock
    #xprate >1.4999
    .goto Undercity,66.21,4.90,15,0
    .goto Tirisfal Glades,61.73,64.87
    .zone Tirisfal Glades >>Exit Undercity
]])
