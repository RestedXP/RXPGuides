RXPGuides.RegisterGuide([[
#tbc
#wotlk
<< Horde
#name 1-6 Eversong Woods
#version 1
#group RestedXP Horde 1-30
#defaultfor BloodElf
#next 6-10 Eversong Woods

step << !BloodElf
    #completewith next
    +You have selected a guide meant for Blood Elves. We do not recommend doing the 1-6 zone due to there being no quests for non-Blood Elves. You should choose the same starter zone that you start in
step
    .goto Eversong Woods,38.2,20.8 << tbc
    .goto Eversong Woods,38.02,21.01 << wotlk
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Erona|r
    .accept 8325 >> Accept Reclaiming Sunstrider Isle
    .target Magistrix Erona
--VV need to update waypoint for tbc
step << Warlock wotlk
    #completewith Reclaim
    +|cFFFCDC00Grind |cFFFF5722Mana Wyrms|r until you have 75 copper worth of vendor items. You can also sell your gear for 13 copper|r << Warlock wotlk
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
    .target Mana Wyrm
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
	.cast 688 >>|cFFFCDC00Cast|r |T136218:0|tSummon Imp
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
    .target Mana Wyrm
    .target Feral Tender
step << Warlock tbc
    #completewith next
    >>Kill |cFFFF5722Springpaw Lynxes|r and |cFFFF5722Springpaw Cubs|r. Loot them for their |cFF00BCD4Collars|r
    .complete 8326,1 --Lynx Collar (8)
    .target Springpaw Lynx
    .target Springpaw Cub
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
    .target Arcane Wraith
    .target Tainted Arcane Wraith
step << Warlock tbc
	#label ArcaneSliver
    .goto Eversong Woods,31.57,29.31,30,0
    .goto Eversong Woods,31.25,27.07,30,0
    .goto Eversong Woods,30.90,27.66,30,0
    .goto Eversong Woods,30.55,26.98,30,0
    .goto Eversong Woods,31.10,26.83
    >>Kill a |cFFFF5722Tainted Arcane Wraith|r. Loot it for its |cFF00BCD4Essence|r and |T132884:0|t[Tainted Arcane Sliver]. |cFFFCDC00Use it to start the quest|r
    .complete 8344,2 --Tainted Wraith Essence (1)
    .collect 20483,1,8338,1 --Tainted Arcane Sliver (1)
    .accept 8338 >> Accept Tainted Arcane Sliver
    .target Tainted Arcane Wraith
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
    .target Arcane Wraith
    .target Tainted Arcane Wraith
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
	.cast 688 >>|cFFFCDC00Cast|r |T136218:0|tSummon Imp
step << Warlock tbc
    .goto Eversong Woods,38.86,21.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Yasmine|r
    >>|cFF0E8312Buy the|r |T133738:0|t[Grimoire of Blood Pact] from her
    .collect 16321,1,8327,1 --Grimoire of Blood Pact (1)
    .target Yasmine Teli'Larien
step << Warlock tbc
    #completewith Measures
	.cast 20397 >> Use your |T133738:0|t[Grimoire of Blood Pact]
	.use 16321
step
    #label Collars
    >>Kill |cFFFF5722Springpaw Lynxes|r and |cFFFF5722Springpaw Cubs|r. Loot them for their |cFF00BCD4Collars|r
    .goto Eversong Woods,37.37,18.31,40,0
    .goto Eversong Woods,39.36,18.83,40,0
    .goto Eversong Woods,39.85,16.63,40,0
    .goto Eversong Woods,40.61,16.24,40,0
    .goto Eversong Woods,40.37,18.80,40,0
    .goto Eversong Woods,40.48,20.38,40,0
    .goto Eversong Woods,39.42,22.28,40,0
    .goto Eversong Woods,35.98,24.22,40,0
    .goto Eversong Woods,37.37,18.31,40,0
    .goto Eversong Woods,39.36,18.83,40,0
    .goto Eversong Woods,39.85,16.63,40,0
    .goto Eversong Woods,40.61,16.24,40,0
    .goto Eversong Woods,40.37,18.80,40,0
    .goto Eversong Woods,40.48,20.38,40,0
    .goto Eversong Woods,39.42,22.28,40,0
    .goto Eversong Woods,35.98,24.22
    .complete 8326,1 --Collect Lynx Collar (x8)
    .target Springpaw Lynx
    .target Springpaw Cub
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
    .target Mana Wyrm
    .target Feral Tender
step << wotlk
    #completewith Aggression
    >>Cast |T136222:0|t[Arcane Torrent] when in melee range of a |cFFFF5722Mana Wyrm|r or a |cFFFF5722Feral Tender|r
    .complete 8346,1 --Mana Tap creature (1)
step << wotlk
    #completewith Journal
    >>Kill |cFFFF5722Mana Wyrms|r and |cFFFF5722Feral Tenders|r. Loot them for their |cFF00BCD4Slivers|r
    .complete 8336,1 --Collect Arcane Sliver (x6)
    .target Mana Wyrm
    .target Feral Tender
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
    .target Mana Wyrm
step
    #completewith next
    >>Kill |cFFFF5722Tenders|r and |cFFFF5722Feral Tenders|r << Warlock tbc
    >>Kill |cFFFF5722Tenders|r and |cFFFF5722Feral Tenders|r. Loot |cFFFF5722Feral Tenders|r for their |cFF00BCD4Slivers|r << wotlk
    >>Kill |cFFFF5722Tenders|r and |cFFFF5722Feral Tenders|r. Cast |T135738:0|t[Mana Tap] on |cFFFF5722Feral Tenders|r. Loot |cFFFF5722Feral Tenders|r for their |cFF00BCD4Slivers|r << !Warlock tbc
    .complete 8334,1 --Kill Tender (x7)
    .complete 8334,2 --Kill Feral Tender (x7)
    .complete 8336,1,1 << wotlk/!Warlock tbc --Collect Arcane Sliver (x6)
    .complete 8346,1 << !Warlock tbc --Mana Tap creature (x6)
    .target Tender
    .target Feral Tender
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
    >>Kill |cFFFF5722Mana Wyrms|r and |cFFFF5722Feral Tenders|r. Loot them for their |cFF00BCD4Slivers|r << wotlk
    >>Cast |T135738:0|t[Mana Tap] and kill |cFFFF5722Mana Wyrms|r and |cFFFF5722Feral Tenders|r. Loot them for their |cFF00BCD4Slivers|r << tbc
    .complete 8336,1 --Collect Arcane Sliver (x6)
    .complete 8346,1,1 << !Warlock tbc --Mana Tap creature (x6)
    .target Mana Wyrm
    .target Feral Tender
step
    #label Aggression
    .goto Eversong Woods,35.37,22.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Lanthan|r
    .turnin 8334 >> Turn in Aggression
    .accept 8335 >> Accept Felendren the Banished
    .target Lanthan Perilon
step << wotlk
    #completewith next
    >>Kill |cFFFF5722Mana Wyrms|r. Loot them for their |cFF00BCD4Slivers|r
    .complete 8336,1 --Collect Arcane Sliver (x6)
    .target Mana Wyrm
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
step << wotlk/!Warlock tbc
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
    .target Mana Wyrm
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
step << wotlk/!Warlock !Mage !Priest tbc
    #completewith next
    .vendor >> Vendor Trash
step << wotlk/!Warlock tbc
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Helion|r and |cFF00FF25Ithanas|r
    .turnin 8346 >> Turn in Thirst Unending
    .turnin 8338 >> Turn in Tainted Arcane Sliver
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
step << !Mage tbc/!Priest tbc/!Warlock tbc
    #completewith next
    .goto Eversong Woods,38.56,20.98,10,0
    .goto Eversong Woods,38.66,20.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Shara|r
    >>|cFF0E8312Buy|r |T132794:0|t[Refreshing Spring Water] |cFF0E8312from her|r
    .vendor >>Vendor Trash
    .target Shara Sunwing
    .money >0.1 << !Mage tbc/!Priest tbc/!Warlock tbc
step << Mage
    .goto Eversong Woods,39.23,21.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Julia|r
    .train 116 >> Train your class spells
    .target Julia Sunstriker
step << Warlock wotlk
    .goto Eversong Woods,38.93,21.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Teli'Larien|r
    .train 172 >> Train your class spells
    .target Summoner Teli'Larien
step << Priest
    .goto Eversong Woods,39.42,20.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Arena|r
    .train 589 >> Train your class spells
    .target Matron Arena
step << Hunter
    .goto Eversong Woods,39.05,20.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Sallina|r
    .train 1978 >> Train your class spells
    .target Ranger Sallina
step << Paladin
    .goto Eversong Woods,39.47,20.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Jesthenis|r
    .train 20271 >> Train your class spells
    .target Jesthenis Sunstriker
step
    .goto Eversong Woods,29.61,19.38
    >>Click the |cFFDB2EEFText|r on the Shrine
    .complete 8345,1 --Collect Shrine of Dath'Remar Read (x1)
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
    #completewith next
    >>Kill a |cFFFF5722Tainted Arcane Wraith|r. Loot it for its |T132884:0|t[Tainted Arcane Sliver]. |cFFFCDC00Use it to start the quest|r
    .collect 20483,1,8338,1 --Tainted Arcane Sliver (1)
    .accept 8338 >> Accept Tainted Arcane Sliver
    .target Tainted Arcane Wraith
    .use 20483
step 
    .goto Eversong Woods,30.79,25.37,20,0
    .goto Eversong Woods,29.35,24.44,20,0
    .goto Eversong Woods,29.32,26.24,20,0
    .goto Eversong Woods,30.75,26.30,10,0
    .goto Eversong Woods,30.13,26.42,10,0
    .goto Eversong Woods,30.09,27.41,10,0
    .goto Eversong Woods,30.48,27.90,10,0
    .goto Eversong Woods,30.84,27.13
    >>Kill |cFFFF5722Arcane Wraiths|r and |cFFFF5722Tainted Arcane Wraiths|r whilst heading up the Academy
    >>Kill |cFFFF5722Felendren the Banished|r at the top. Loot him for his |cFF00BCD4Head|r
    .complete 8335,1 --Kill Arcane Wraith (x8)
    .complete 8335,2 --Kill Tainted Arcane Wraith (x2)
    .complete 8335,3 --Collect Felendren's Head (x1)
    .target Arcane Wraith
    .target Tainted Arcane Wraith
    .target Felendren the Banished
step << wotlk/!Warlock tbc
    .goto Eversong Woods,30.84,27.13
    >>Kill a |cFFFF5722Tainted Arcane Wraith|r. Loot it for its |T132884:0|t[Tainted Arcane Sliver]. |cFFFCDC00Use it to start the quest|r
    .collect 20483,1,8338,1 --Tainted Arcane Sliver (1)
    .accept 8338 >> Accept Tainted Arcane Sliver
    .target Tainted Arcane Wraith
    .use 20483
step
    #completewith SolanianB
    .deathskip >> Die and respawn at the |cFF00FF25Spirit Healer|r
	.cooldown item,6948,<0
step
    #completewith next
    .hs >> Hearth to Sunstrider Isle
	.cooldown item,6948,>0
step
    #completewith next
    .goto Eversong Woods,39.43,21.06,10,0
    .goto Eversong Woods,39.48,20.58,10,0
    .goto Eversong Woods,39.31,20.23,10,0
    .goto Eversong Woods,38.93,19.93,10,0
    .goto Eversong Woods,38.76,19.36,10 >>Go upstairs
step
    #label SolanianB
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Solanian|r and |cFF00FF25Helion|r << wotlk/!Warlock tbc
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Solanian|r << Warlock tbc
    .turnin 8330 >> Turn in Solanian's Belongings
    .turnin 8345 >> Turn in The Shrine of Dath'Remar
    .goto Eversong Woods,38.76,19.36
    .turnin 8338 >> Turn in Tainted Arcane Sliver << wotlk/!Warlock tbc
    .goto Eversong Woods,37.18,18.94 << wotlk/!Warlock tbc
    .target Well Watcher Solanian
    .target Arcanist Helion << wotlk/!Warlock tbc
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
    #completewith X
    .goto Eversong Woods,38.91,30.27
    >>Go over the Bridge
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
<< Horde
#name 6-10 Eversong Woods
#version 1
#group RestedXP Horde 1-30
#next 10-20 Eversong Woods / Ghostlands << !Warrior
#next 10-13 Durotar << Warrior

step
    >> Talk to Magister Jaronis
    .goto Eversong Woods,47.3,46.3
    .accept 8472 >> Accept Major Malfunction
step
    #completewith AeldonS
    .goto Eversong Woods,48.2,47.7
    .home >> Set your Hearthstone to Falconwing Square
step << BloodElf
    >> Talk to Innkeeper Delaniel
    .goto Eversong Woods,47.7,47.2,10,0
    .goto Eversong Woods,48.2,47.7
    .turnin 8350 >> Turn in Completing the Delivery
step << Priest/Mage/Warlock/Warrior/Rogue
    .goto Eversong Woods,48.3,47.0,8,0
step << Priest
    .goto Eversong Woods,48.3,47.0,8,0
    .goto Eversong Woods,47.9,48.0
    >>Go upstairs
    .accept 9489 >> Cleansing the Scar << BloodElf
    .trainer >>Train your class spells
step << Mage
    .goto Eversong Woods,48.0,48.1
    .trainer >>Train your class spells
step << Warlock
    .goto Eversong Woods,48.2,47.9
    .trainer >>Train your class spells
step << Warrior/Rogue
    .goto Eversong Woods,48.6,47.6
    .train 3273 >>Train First Aid
step
    #completewith next
    .goto Eversong Woods,48.2,47.7
    .vendor >> Buy as much level 5 drink as you can afford << Mage/Warlock/Priest
step
    #label AeldonS
    .goto Eversong Woods,47.7,47.2,10,0
    .goto Eversong Woods,48.1,46.2
    >> Talk to the Wanted Poster and Aeldon Sunbrand
    .accept 8468 >> Accept Wanted: Thaelis the Hungerer
    .accept 8463 >> Accept Unstable Mana Crystals
step << Paladin
    >> Go inside
    .goto Eversong Woods,48.4,46.5
    .trainer >>Train your class spells
step << Rogue
    >>Go upstairs
    .goto Eversong Woods,48.5,45.9
    .trainer >>Train your class spells
step << Hunter
    >> Go inside
    .goto Eversong Woods,48.3,46.1
    .trainer >>Train your class spells
step << Warrior tbc/Paladin tbc
    .goto Eversong Woods,48.5,45.9
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for Gladius (5s 9c). You'll come back later if you don't have enough yet
step << Warrior tbc/Paladin tbc
    .goto Eversong Woods,48.5,45.9
    .money <0.0509
    >> Buy Gladius and equip it
    .collect 2488,1 --Collect Gladius
step << Warrior wotlk/Paladin wotlk
    .goto Eversong Woods,48.5,45.9
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a Wooden Mallet (6s 66c). You'll come back later if you don't have enough yet
step << Warrior wotlk/Paladin wotlk
    .goto Eversong Woods,48.5,45.9
    .money <0.0666
    >> Buy a Wooden Mallet and equip it
    .collect 2493,1 --Collect Wooden Mallet (1)
step << Rogue
    .goto Eversong Woods,48.5,45.9
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for Stiletto (3s 82c). You'll come back later if you don't have enough yet
step << Rogue
    .money <0.0382
    .goto Eversong Woods,48.5,45.9
    >>Buy Stiletto and equip it
    .collect 2494,1 --Collect Stiletto
step
    #sticky
    #label thaelishead
    >>Kill Thaelis the Hungerer in the main building
    .goto Eversong Woods,45.0,37.7
    .complete 8468,1 --Collect Thaelis's Head (x1)
step
    >>Loot Arcane Cores from the Arcane Patrollers. Loot the Unstable Mana Crystals from boxes on the ground in the area
    .goto Eversong Woods,46.8,41.1,40,0
    .goto Eversong Woods,46.7,34.9,40,0
    .goto Eversong Woods,40.6,37.9,40,0
    .goto Eversong Woods,44.4,45.8,40,0
    .goto Eversong Woods,46.8,39.5
    .complete 8472,1 --Collect Arcane Core (x6)
    .complete 8463,1 --Collect Unstable Mana Crystal (x6)
step
    #requires thaelishead
    .goto Eversong Woods,47.3,46.3
    >> Talk to Maigster Jaronis
    .turnin 8472 >> Turn in Major Malfunction
    .accept 8895 >> Accept Delivery to the North Sanctum
step
    >> Talk to Sergeant Kan'ren
    .goto Eversong Woods,47.8,46.6
    .turnin 8468 >> Turn in Wanted: Thaelis the Hungerer
step
    .goto Eversong Woods,48.2,46.0
    >> Talk to Aeldon Sunbrand
    .turnin 8463 >> Turn in Unstable Mana Crystals
    .accept 9352 >> Accept Darnassian Intrusions
step << Warrior/Paladin tbc
    .goto Eversong Woods,48.5,45.9
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for Gladius (5s 9c). You'll come back later if you don't have enough yet
step << Warrior/Paladin tbc
    .goto Eversong Woods,48.5,45.9
    .money <0.0509
    >> Buy Gladius and equip it
    .collect 2488,1 --Collect Gladius
step << Paladin wotlk
    .goto Eversong Woods,48.5,45.9
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a Wooden Mallet (6s 66c). You'll come back later if you don't have enough yet
step << Paladin wotlk
    .goto Eversong Woods,48.5,45.9
    .money <0.0666
    >> Buy a Wooden Mallet and equip it
    .collect 2493,1 --Collect Wooden Mallet (1)
step << Rogue
    .money <0.0382
    .goto Eversong Woods,48.5,45.9
    >>Buy Stiletto and equip it
    .collect 2494,1 --Collect Stiletto
step
    >> Leave Falconwing Square and talk to Ley-Keeper Caidanis
    .goto Eversong Woods,44.6,53.1
    .turnin 8895 >> Turn in Delivery to the North Sanctum
    .accept 9119 >> Accept Malfunction at the West Sanctum
step
    .goto Eversong Woods,45.2,56.4
    >> Talk to Apprentice Ralen beside the cart
    .accept 9035 >> Accept Roadside Ambush
step
    >> Talk to Apprentice Meledor by the river
    .goto Eversong Woods,44.9,61.0
    .turnin 9035 >> Turn in Roadside Ambush
    .accept 9062 >> Accept Soaked Pages
step
    .goto Eversong Woods,44.3,62.0
    >>The Grimoire is in the water under the bridge.
    .complete 9062,1 --Collect Antheol's Elemental Grimoire (x1)
step
    >> Return to Apprentice Meledor
    .goto Eversong Woods,44.9,61.0
    .turnin 9062 >> Turn in Soaked Pages
    .accept 9064 >> Accept Taking the Fall
step
    >> Talk to Ranger Jaela at the Dead Scar
    .goto Eversong Woods,50.3,50.8
    .accept 8475 >> Accept The Dead Scar
step << BloodElf Priest
    .spell 1243 >>Use Power Word: Fortitude on the Eversong Rangers
    .goto Eversong Woods,50.3,51.0
    .complete 9489,1 --Eversong Ranger Blessed (6)
    .unitscan Eversong Ranger
step
    #completewith next
    .goto Eversong Woods,55.7,54.5
     >>Kill Plaguebone Pillagers (Skeletons)
    .complete 8475,1 --Kill Plaguebone Pillager (x8)
step
    .goto Eversong Woods,55.7,54.5
    >> Talk to Instructor Antheol
    .turnin 9064 >> Turn in Taking the Fall
    .accept 9066 >> Accept Swift Discipline
step
    >>Kill Pillagers (Skeletons) in The Dead Scar
    .goto Eversong Woods,50.3,57.5,60,0
    .goto Eversong Woods,50.2,51.8,60,0
    .goto Eversong Woods,50.3,57.5,60,0
    .goto Eversong Woods,50.2,51.8,60,0
    .goto Eversong Woods,50.3,57.5,60,0
    .goto Eversong Woods,50.2,51.8,60,0
    .goto Eversong Woods,50.3,57.5,60,0
    .goto Eversong Woods,50.2,51.8
    .complete 8475,1 --Kill Plaguebone Pillager (x8)
step
    >> Return to Ranger Jaela
    .goto Eversong Woods,50.3,50.8
    .turnin 8475,2 >> Turn in The Dead Scar << Paladin
    .turnin 8475 >> Turn in The Dead Scar << !Paladin
step << Paladin/Priest/Mage
    .use 22473 >>Use the Disciplinary Rod in your bags on Ralen
    .goto Eversong Woods,45.2,57.0
    .complete 9066,2 --Apprentice Ralen Disciplined
step << Paladin/Priest/Mage
    .use 22473 >>Use the Disciplinary Rod in your bags on Meledor
    .goto Eversong Woods,44.9,61.0
    .complete 9066,1 --Apprentice Meledor Disciplined
step
    .goto Eversong Woods,36.7,57.4
    >> Talk to Ley-Keeper Valania
    .turnin 9119 >> Turn in Malfunction at the West Sanctum
    .accept 8486 >> Accept Arcane Instability
step
    #completewith next
    .use 20765 >>Kill a Darnassian Scout in the area. Loot it for their Incriminating Documents. Click it in your bags
    .goto Eversong Woods,36.8,60.8,30,0
    .goto Eversong Woods,34.6,62.0,30,0
    .goto Eversong Woods,34.0,60.8,30,0
    .goto Eversong Woods,34.2,58.5,30,0
    .goto Eversong Woods,36.8,60.8
    .complete 9352,1 --Intruder Defeated
    .collect 20765,1,8482 --Incriminating Documents (1)
    .accept 8482 >> Accept Incriminating Documents
    .unitscan Darnassian Scout
step
    .goto Eversong Woods,36.0,59.3
    >>Kill Manawraiths and Mana Stalkers
    .complete 8486,1 --Kill Manawraith (x5)
    .complete 8486,2 --Kill Mana Stalker (x5)
step
    .use 20765 >>Kill a Darnassian Scout in the area. Loot it for their Incriminating Documents. Click it in your bags
    .goto Eversong Woods,36.8,60.8,20,0
    .goto Eversong Woods,34.6,62.0,20,0
    .goto Eversong Woods,34.0,60.8,20,0
    .goto Eversong Woods,34.2,58.5,20,0
    .goto Eversong Woods,36.8,60.8
       .complete 9352,1 --Intruder Defeated
           .collect 20765,1,8482 --Incriminating Documents (1)
    .accept 8482 >> Accept Incriminating Documents
    .unitscan Darnassian Scout
step
    >> Return to Ley-Keeper Velania
    .goto Eversong Woods,36.7,57.4
    .turnin 8486,1 >> Turn in Arcane Instability << Paladin
    .turnin 8486 >> Turn in Arcane Instability << !Paladin
    .turnin 9352 >> Turn in Darnassian Intrusions
step
    >> Talk to Hathvelion Sungaze
    .goto Eversong Woods,30.2,58.4
    .accept 8884 >> Accept Fish Heads, Fish Heads...
step
    #sticky
    #completewith murlocend3
        #label CaptainKelisendra
    >>Kill Murlocs until you loot Captain Kelisendra's Lost Rutters
    .goto Eversong Woods,28.1,60.1
        .collect 21776,1,8887 --Captain Kelisendra's Lost Rutters
    .use 21776
    .accept 8887 >> Accept Captain Kelisendra's Lost Rutters
step
    >>Kill Murlocs for Murloc Heads
    .goto Eversong Woods,28.1,60.1
.complete 8884,1 --Collect Grimscale Murloc Head (x8)
step << Warrior/Warlock/Hunter/Rogue
    .goto Eversong Woods,30.2,58.4
    .xp 7+3195 >> Grind to 3195+/4500xp
step
    #label murlocend3
        #requires CaptainKelisendra
    .goto Eversong Woods,30.2,58.4
    >> Return to Hathvelion Sungaze
    .turnin 8884 >> Turn in Fish Heads, Fish Heads...
    .accept 8885 >> Accept The Ring of Mmmrrrggglll
step << Warrior/Warlock/Hunter/Rogue
    .goto Eversong Woods,35.4,55.2
    .deathskip >> Go here, then die and respawn at the Spirit Healer (make sure your subzone is Eversong Woods and NOT West Sanctum).
step << Paladin/Priest/Mage
    #completewith next
    .goto Eversong Woods,28.1,61.0
    .deathskip >> Die and respawn at the Spirit Healer
step << Warrior/Warlock/Hunter/Rogue
    .isOnQuest 8482
    .goto Eversong Woods,48.2,46.0
    .turnin 8482 >> Turn in Incriminating Documents
    .accept 8483 >> Accept The Dwarven Spy
step << Warrior
    .goto Eversong Woods,48.3,45.9
    .train 202 >>Train 2h Swords
step << Rogue
    .goto Eversong Woods,48.3,45.9
    .train 201 >>Train 1h Swords
step << Rogue
    .goto Eversong Woods,48.5,45.9
    .trainer >>Train your class spells
step << Hunter
    .goto Eversong Woods,48.3,46.1
    .trainer >>Train your class spells
step << Warlock tbc
    .trainer >>Train your class spells
    .goto Eversong Woods,48.2,47.9
    .cast 20270 >>Buy the Firebolt r2 book. Click it in your bags
    .goto Eversong Woods,48.3,47.9
    .use 16302 
step << Warlock wotlk
    .trainer >>Train your class spells
    .goto Eversong Woods,48.2,47.9
step << Warrior/Warlock/Hunter/Rogue
    .goto Eversong Woods,44.8,53.1
    >>Talk to Prospector Anvilward and wait out the roleplay event. Kill and loot him after.
    .complete 8483,1 --Collect Prospector Anvilward's Head (x1)
    .skipgossip
    .timer 28,Prospector Anvilward RP
step << Warrior/Warlock/Hunter/Rogue
    .use 22473 >>Use the Disciplinary Rod in your bags on Ralen
    .goto Eversong Woods,45.2,57.0
    .complete 9066,2 --Apprentice Ralen Disciplined
step << Warrior/Warlock/Hunter/Rogue
    .use 22473 >>Use the Disciplinary Rod in your bags on Meledor
    .goto Eversong Woods,44.9,61.0
    .complete 9066,1 --Apprentice Meledor Disciplined
step << !Hunter
    >> Speak to Magistrix Landra Dawnstrider
    .goto Eversong Woods,44.0,70.8
    .accept 9395 >> Accept Saltheril's Haven
    .accept 9254 >> Accept The Wayward Apprentice
step << Hunter
    >> Speak to Magistrix Landra Dawnstrider
    .goto Eversong Woods,44.0,70.8
    .accept 9254 >> Accept The Wayward Apprentice
step << Hunter
    .goto Eversong Woods,43.7,71.3
    .accept 9358 >> Accept Ranger Sareyn
step << Hunter
    #completewith Sunsail
    .goto Eversong Woods,43.7,71.3
    .home >> Set your Hearthstone to Fairbreeze Village
step << !Hunter
    >> Speak to Marniel Amberlight
    .goto Eversong Woods,43.7,71.3
    .accept 9358 >> Accept Ranger Sareyn
step
    >> Speak to Ardeyn Riverwind
    .goto Eversong Woods,43.6,71.2
    .accept 9258 >>Accept The Scorched Grove
step
    >> Head upstairs
    .goto Eversong Woods,43.3,70.8
    .accept 8892 >> Accept Situation at Sunsail Anchorage
step
    #completewith next
    .goto Eversong Woods,44.0,70.4,0,0
    .vendor >> Vendor trash. You can buy some 6 slot bags from Halis if you wish
step
    >> Speak to Velan Brightoak
    .goto Eversong Woods,44.7,69.6
    .accept 8491 >> Accept Pelt Collection
step
    >> Speak to Ranger Sareyn
    .goto Eversong Woods,46.9,71.8
    .turnin 9358 >> Turn in Ranger Sareyn
    .accept 9252 >> Accept Defending Fairbreeze Village
step
    #completewith Sunsail
    >>Kill Springpaw Lynxes. Loot them for their Pelts
    .complete 8491,1 --Collect Springpaw Pelt (x6)
step << !BloodElf/!Hunter
    >> Speak to Lord Saltheril
    .goto Eversong Woods,38.1,73.6
    .turnin 9395 >> Turn in Saltheril's Haven
    .accept 9067 >>Accept The Party Never Ends
step
    #label Sunsail
    >> Speak to Captain Kelisendra and Velendris Whitemorn
    .goto Eversong Woods,36.4,66.7
    .turnin 8887 >> Turn in Captain Kelisendra's Lost Rutters
    .accept 8886 >> Accept Grimscale Pirates!
    .accept 8480 >> Accept Lost Armaments
step
    #completewith Thugs
    >>Kill Wretched Thugs and Hooligans as you loot the boxes
    .complete 8892,1 --Kill Wretched Thug (x5)
    .complete 8892,2 --Kill Wretched Hooligan (x5)
step
    .goto Eversong Woods,32.7,69.1
    >>Loot boxes of Armaments on the ground. There's a lot in the main building on the first 2 floors and some in/near the docks and boats
    .complete 8480,1 --Collect Sin'dorei Armaments (x8)
step
    >>Return to the Captain's camp
    .goto Eversong Woods,36.4,66.8
    .turnin 8480 >>Turn in Lost Armaments
    .accept 9076 >>Accept Wretched Ringleader
step
    #label Thugs
    .goto Eversong Woods,32.8,69.4
    >>Climb to the top of the building and kill Aldaron. Loot him for his Head
    .complete 9076,1 --Collect Aldaron's Head (x1)
step
    >>Finish killing the Wretched Mobs
    .goto Eversong Woods,32.8,69.4
    .complete 8892,1 --Kill Wretched Thug (x5)
    .complete 8892,2 --Kill Wretched Hooligan (x5)
step
    #completewith pelttyyy
    >>Keep an eye out for Springpaws for some of the Pelts en route to murlocs
    .complete 8491,1 --Collect Springpaw Pelt (x6)
step
    #completewith next
    >>Kill Murlocs. Loot them for their Cargo. Alternatively, loot the barrels near the huts for Cargo
    >>Use your Arcane Torrent spell to interrupt the oracles' heals << BloodElf
    .complete 8886,1 --Collect Captain Kelisendra's Cargo (x6)
step
    >>Mmmrrrggglll patrols along the shore. Kill and loot him.
    *Use Arcane Torrent when he starts to heal himself << BloodElf
    .goto Eversong Woods,24.3,74.1,50,0
    .goto Eversong Woods,26.0,65.9,50,0
    .goto Eversong Woods,24.3,74.1,50,0
    .goto Eversong Woods,26.0,65.9,50,0
    .goto Eversong Woods,24.3,74.1,50,0
    .goto Eversong Woods,26.0,65.9
    .complete 8885,1 --Collect Ring of Mmmrrrggglll (x1)
    .unitscan Mmmrrrggglll
step
    .goto Eversong Woods,24.5,69.9
    >>Kill Murlocs. Loot them for their Cargo. Alternatively, loot the barrels near the huts for Cargo
    >>Use your Arcane Torrent spell to interrupt the oracles' heals << BloodElf
    .complete 8886,1 --Collect Captain Kelisendra's Cargo (x6)
step
    >>Return to Hathvelion Sungaze ontop of the hill
    .goto Eversong Woods,30.2,58.4
    .turnin 8885,1 >> Turn in The Ring of Mmmrrrggglll << Hunter
    .turnin 8885,4 >> Turn in The Ring of Mmmrrrggglll << Paladin
    .turnin 8885 >> Turn in The Ring of Mmmrrrggglll << !Hunter !Paladin
step
    #label pelttyyy
    .goto Eversong Woods,36.4,66.7
    >> Return to the Captain's camp
    .turnin 8886 >> Turn in Grimscale Pirates!
    .turnin 9076,1 >> Turn in Wretched Ringleader << Paladin
    .turnin 9076 >> Turn in Wretched Ringleader << !Paladin
step << Hunter
    .goto Eversong Woods,34.1,80.0
    .turnin 9258 >> Turn in The Scorched Grove
    .accept 8473 >> Accept A Somber Task
step << Hunter
    #label oldwhitebark
    #completewith barktimeover
    .goto Eversong Woods,35.0,84.2
    .use 8474 >>Kill Old Whitebark. Loot him for his pendant. Click the pendant in your bags
        .collect 23228,1,8474 --Collect Old Whitebark's Pendant (x1)
    .accept 8474 >> Accept Old Whitebark's Pendant
    .unitscan Old Whitebark
step << Hunter
    >>Be careful as the Green Keepers have a double-damage Heroic Strike spell
    .complete 8473,1 --Kill Withered Green Keeper (x10)
step << Hunter
    #label barktimeover
    #requires oldwhitebark
    .goto Eversong Woods,34.1,80.0
    .turnin 8473 >> Turn in A Somber Task
    .turnin 8474 >> Turn in Old Whitebark's Pendant
    .accept 10166 >> Accept Whitebark's Memory
step << Hunter
    .use 28209 >>Use the pendant to summon Old Whitebark. Be sure to start max range from him. Kill him and then turn in the quest
    .goto Eversong Woods,37.6,86.2
    .turnin 10166 >> Turn in Whitebark's Memory
step
    #completewith next
    >>Kill Springpaws. Loot them for their Pelts
    .complete 8491,1 --Collect Springpaw Pelt (x6)
step << !Hunter
    >> Head upstairs, speak with Ranger Degolien
    .goto Eversong Woods,43.3,70.8
    .turnin 8892 >>Turn in Situation at Sunsail Anchorage
    .accept 9359 >>Accept Farstrider Retreat
step << !Hunter
    .goto Eversong Woods,43.7,71.3
    .vendor >> Vendor trash and repair downstairs
step << !Hunter
    >> Talk to Velan Brightoak
    .goto Eversong Woods,44.7,69.7
    .turnin 8491,2 >> Turn in Pelt Collection << Paladin
    .turnin 8491 >> Turn in Pelt Collection << !Paladin
    .isQuestComplete 8491
step
    >> Be aware that Darkwraiths Enrage at low health. Rotlimb Marauders also have an instant-cast 15 damage spell
    .goto Eversong Woods,50.9,80.7,60,0
    .goto Eversong Woods,51.3,75.3,60,0
    .goto Eversong Woods,52.9,71.7,60,0
    .goto Eversong Woods,50.9,80.7,60,0
    .goto Eversong Woods,51.3,75.3,60,0
    .goto Eversong Woods,52.9,71.7
    .complete 9252,2 --Kill Darkwraith (x4)
    .complete 9252,1 --Kill Rotlimb Marauder (x4)
step
    >> Speak to Apprentice Mirveda
    .goto Eversong Woods,54.3,71.0
    .turnin 9254 >> Turn in The Wayward Apprentice
    .accept 8487 >> Accept Corrupted Soil
step
    .goto Eversong Woods,52.0,69.1
    >>Loot the green Tainted Soils scattered across the Scar
    .complete 8487,1 --Collect Tainted Soil Sample (x8)
step
    >> Speak to Apprentice Mirveda
    .goto Eversong Woods,54.3,71.0
    .turnin 8487 >> Turn in Corrupted Soil
    >>Wait for the roleplay event
    .accept 8488 >> Accept Unexpected Results
step
    .goto Eversong Woods,54.3,71.0
    >>3 mobs will spawn. Let them attack Mirveda first so they aggro onto her, then kill them to protect Mirveda.
    .complete 8488,1 --Protect Apprentice Mirveda
step
    .goto Eversong Woods,54.3,71.0
    .turnin 8488 >> Turn in Unexpected Results
    .accept 9255 >> Accept Research Notes
step << Paladin/Priest/Mage
     .goto Eversong Woods,52.0,69.1
    .xp 9+5875 >> Grind to 5875+/6500xp
step << Warrior/Warlock/Rogue !Undead/!Warlock !Paladin !Priest !Mage
     .goto Eversong Woods,52.0,69.1
    .xp 9+5700 >> Grind to 5700+/6500xp
step << Undead Warlock
     .goto Eversong Woods,52.0,69.1
    .xp 9+5950 >> Grind to 5950+/6500xp
step << !Hunter !Warlock/!Scourge !Hunter
    #completewith next
    .goto Eversong Woods,48.2,47.7
    .hs >> Hearth to Falconwing Square
step << Undead Warlock
    .goto Eversong Woods,55.7,54.5
    .turnin 9066 >> Turn in Swift Discipline
step << Undead Warlock
    #completewith next
    .goto Eversong Woods,56.7,49.6,25 >>Enter Silvermoon
step << Undead Warlock
    .goto Silvermoon City,63.4,31.9,20,0
    .goto Silvermoon City,49.47,15.03
    .cast 25649 >>Take the Orb of Translocation to Undercity
step << Undead Warlock
    #completewith next
    .goto Undercity,66.0,44.0,15 >>Take one of the lifts down to Undercity
step << Undead Warlock
    .goto Undercity,85.1,26.0
    >>Talk to Carendin
    .accept 1473 >>Accept Creature of the Void
step << Undead Warlock
    #completewith next
    .goto Undercity,82.36,15.31
    .goto Undercity,67.88,14.97,30 >> Go to the Reagent Vendor on your right and perform a Logout Skip by positioning your character on the highest part of the lowest staircase until it looks like they're floating, then logging out and back in.
    .link https://www.youtube.com/watch?v=-Bi95bCN8dM >> CLICK HERE for an example
    >>If you can't do this, just run out of Undercity normally
step << Undead Warlock
    #completewith next
    .goto Tirisfal Glades,61.85,66.59,40 >> Exit Undercity
step << Undead Warlock
    >>Loot the chest inside the tower
    .goto Tirisfal Glades,51.1,67.6
    .complete 1473,1 --Creature of the Void (1)
step << Undead Warlock
    >>Return to Undercity. Talk to Carendin
    .goto Undercity,85.1,26.0
    .turnin 1473 >>Turn in Creature of the Void
    .accept 1471 >>Accept The Binding
step << Undead Warlock
    .use 6284 >>Use the Runes of Summoning in your bags at the Summoning Circle. Kill the Voidwalker that spawns
    .goto Undercity,86.6,27.1
    .complete 1471,1 --Kill Summoned Voidwalker (1)
step << Undead Warlock
    .goto Undercity,85.1,26.0
    >>Talk to Carendin
    .turnin 1471 >>Turn in The Binding
step << Undead Warlock
    #completewith next
    .hs >>Hearth to Falconwing Square
step << Paladin/Priest/Mage
    >> Speak to Aeldon Sunbrand
    .goto Eversong Woods,48.2,46.0
    .turnin 8482 >> Turn in Incriminating Documents
    .accept 8483 >> Accept The Dwarven Spy
step << Paladin/Priest/Mage
    .goto Eversong Woods,44.8,53.1
    >>Talk to Prospector Anvilward and wait out the roleplay event. Kill and loot him after.
    .complete 8483,1 --Collect Prospector Anvilward's Head (x1)
    .skipgossip
    .timer 28,Prospector Anvilward RP
step << !Hunter
    >> Return to Aeldon Sunbrand
    .goto Eversong Woods,48.2,46.0
    .turnin 8483,1 >> Turn in The Dwarven Spy << Paladin
    .turnin 8483 >> Turn in The Dwarven Spy << !Paladin
step << !Hunter
     .goto Eversong Woods,47.7,47.2
    .xp 10 >> Grind to level 10
step << Warlock
    #completewith next
    .goto Eversong Woods,56.7,49.6,20,0
    .goto Silvermoon City,75.3,44.5,20 >>Travel to Silvermoon. Go inside the building, then go downstairs
step << Warlock
    .goto Silvermoon City,74.4,47.2
    .accept 9529 >>Accept The Stone << BloodElf
    .trainer >>Train your class spells
step << Warlock
    .goto Silvermoon City,79.5,58.5
    >> Buy Suntouched Special Reserve from Vinemaster Suntouched. Reload vendor's inventory window if they do not appear (currently bugged).
    .collect 22775,1 --Collect Suntouched Special Reserve
step << Warlock
    .goto Eversong Woods,56.7,49.6
    .zone Eversong Woods >>Exit Silvermoon City
step << Mage
    .goto Eversong Woods,48.0,48.1
    .trainer >>Train your class spells
step << Priest
    .goto Eversong Woods,47.9,48.0
    .turnin 9489 >> Cleansing the Scar << BloodElf
    .trainer >>Train your class spells
step << Rogue
    .goto Eversong Woods,48.5,45.9
    .trainer >>Train your class spells
step << Rogue
    .goto Eversong Woods,47.1,47.5
    .vendor >> Buy a Gladius and equip it
step << Paladin
    .goto Eversong Woods,48.4,46.5
    .trainer >>Train your class spells
step << !Hunter
    >>Equip the Gladius you bought earlier << Rogue
    >>Speak with Instructor Antheol
    .goto Eversong Woods,55.7,54.5
    .turnin 9066 >> Turn in Swift Discipline
    .accept 9402 >> Accept Fetch! << Mage
step << Mage
    >> Dive into the water and look for a blue bottle at the bottom
    .goto Eversong Woods,54.9,56.4
    .complete 9402,1 --Azure Phial (1)
step << Mage
    .goto Eversong Woods,55.7,54.5
    .turnin 9402 >>Turn in Fetch!
    .accept 9403 >>Accept The Purest Water
step << Warrior
    .goto Eversong Woods,56.7,49.6,25,0
    .goto Silvermoon City,63.4,31.9,20,0
    .goto Silvermoon City,49.47,15.03
    .cast 25649 >>Enter Silvermoon. Take the Orb of Translocation to Undercity
step << Warrior
    >>Go into the Brill inn
    .goto Tirisfal Glades,61.9,52.5
    .trainer >>Train your class spells
step << Warrior
    #completewith next
    .goto Tirisfal Glades,60.7,58.8
    .zone Durotar >> Go to the Zeppelin tower. Take the zeppelin to Durotar
step << Warrior
    .isOnQuest 1818
    .abandon 1818 >>Abandon Speak with Dillinger
step << Warrior
    .goto Durotar,46.4,22.9
    .accept 834 >>Accept Winds in the Desert
step << Warrior
    >>Loot the small sacks on the ground
    .goto Durotar,51.7,27.7
    .complete 834,1 --Sack of Supplies (5)
step
    .destroy 23500 >> Destroy Saltheril's Haven Party Invitation
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
<< Horde
#name 10-20 Eversong Woods / Ghostlands
#version 1
#group RestedXP Horde 1-30
#next 20-23 Stonetalon / The Barrens
step << Orc Hunter/Troll Hunter
    .money <0.1000
    >>Head to Farstriders' Square and talk to Ileda
    .goto Silvermoon City,91.2,38.7
    .train 202 >>Train 2h Swords
step << Orc/Troll/Tauren
    #completewith next
    .goto Eversong Woods,56.7,49.6,20,0
    .goto Eversong Woods,54.4,50.7
    >>Run out of Silvermoon
    .fp Silvermoon >> Get the Silvermoon City flight path
step << Undead/BloodElf !Hunter
    .goto Eversong Woods,60.4,62.5
    >> Buy Springpaw Appetizers from Zalene. Reload vendor's inventory window if they do not appear (currently bugged).
    .collect 22776,1 --Collect Springpaw Appetizers
step << !Hunter
    >> Talk to Lieutenant Dawnrunner
    .goto Eversong Woods,60.3,62.8
    .turnin -9359 >>Turn in Farstrider Retreat
    .accept 8476 >> Accept Amani Encroachment
step << BloodElf Hunter
    >> Talk to Lieutenant Dawnrunner
    .goto Eversong Woods,60.3,62.8
    .accept 8476 >> Accept Amani Encroachment
step << !BloodElf
    >> Talk to Lieutenant Dawnrunner
    .goto Eversong Woods,60.3,62.8
    .turnin -9359 >> Turn in Farstrider Retreat
    .accept 8476 >> Accept Amani Encroachment
step << BloodElf Hunter
    .accept 9484 >> Accept Taming the Beast
step << BloodElf Hunter
    .use 23702 >>Click the taming rod in your bags on a Dragonhawk. Try to do it at max range (30 yards)
    .goto Eversong Woods,60.1,58.9,40,0
    .goto Eversong Woods,62.1,59.8,40,0
    .goto Eversong Woods,61.4,65.8,40,0
    .goto Eversong Woods,60.1,58.9,40,0
    .goto Eversong Woods,62.1,59.8,40,0
    .goto Eversong Woods,61.4,65.8
    .complete 9484,1 --Tame a Crazed Dragonhawk
step << Paladin/Rogue
    .train 2018 >> Train Blacksmithing. You'll get Mining later which will allow you to craft Sharpening Stones (+2 weapon damage for 1 hour). You can skip Blacksmithing if you wish
    .goto Eversong Woods,59.5,62.6
    .accept 8477 >> Accept The Spearcrafter's Hammer
step << !Paladin !Rogue
    >> Talk to Arathel Sunforge
    .goto Eversong Woods,59.5,62.6
    .accept 8477 >> Accept The Spearcrafter's Hammer
step << BloodElf Hunter
    .goto Eversong Woods,60.3,62.8
    .turnin 9484 >> Turn in Taming the Beast
    .accept 9486 >> Accept Taming the Beast
step << BloodElf Hunter
    .use 23702 >>Click the Taming Rod in your bag on a Springpaw. Try to do it at max range (30 yards)
    .goto Eversong Woods,63.2,64.7,30,0
    .goto Eversong Woods,63.2,63.5,30,0
    .goto Eversong Woods,64.0,63.8,30,0
    .goto Eversong Woods,62.8,61.6,30,0
    .goto Eversong Woods,65.3,59.5,30,0
    .goto Eversong Woods,66.2,57.5,30,0
    .complete 9486,1 --Tame an Elder Springpaw
    .unitscan Elder springpaw
step << BloodElf Hunter
    .goto Eversong Woods,60.3,62.8
    .turnin 9486 >> Turn in Taming the Beast
    .accept 9485 >> Accept Taming the Beast
step << BloodElf Mage
    .use 23566 >>Click the Phial in your bags when you're under the waterfall
    .goto Eversong Woods,64.2,72.6
    .complete 9403,1 --Filled Azure Phial (1)
step
    #completewith Marosh
    >>Kill Amani Berserkers and Axe Throwers. Be careful as the Berserkers enrage at low health
    .complete 8476,1 --Kill Amani Berserker (x5)
    .complete 8476,2 --Kill Amani Axe Thrower (x5)
step << Orc Hunter wotlk / Troll Hunter wotlk
    #completewith next
    .tame 15652 >>Tame a Elder Springpaw en route to the quest area
    .unitscan Elder Springpaw
step
     .goto Eversong Woods,70.1,72.3
    >> Kill Otembe. Loot him for his Hammer
    >> Otembe has a guaranteed chance to drop a white or green item. You can try killing him one more time for a better weapon if you want, he has a quick respawn << Paladin/Rogue/Warrior
    .complete 8477,1 --Collect Otembe's Hammer (x1)
step
    .goto Eversong Woods,70.5,72.3
    >>Talk to Ven'jashi in the cage
    .accept 8479 >> Accept Zul'Marosh
step
    >>Kill Zul'Marosh atop the hut. Loot him for his Head and Plans. Click the plans in your bags
    *Zul'Marosh also has a guaranteed chance to drop a white or green item but a longer respawn << Paladin/Rogue/Warrior
    .goto Eversong Woods,62.5,79.7
    .complete 8479,1 --Collect Chieftain Zul'Marosh's Head (x1)
    .collect 23249,1,9360 --Collect Amani Invasion Plans (x1)
    .accept 9360 >> Accept Amani Invasion
    .use 23249
step
    #label Marosh
    .goto Eversong Woods,70.5,72.4
    >> Kill Otembe one more time if you still didn't get a good green weapon << Paladin/Rogue/Warrior
    >>Talk to Ven'jashi in the cage
    .turnin 8479,1 >> Turn in Zul'Marosh << Hunter
    .turnin 8479,2 >> Turn in Zul'Marosh << Priest/Warlock/Mage
    .turnin 8479 >> Turn in Zul'Marosh << !Hunter !Priest !Warlock !Mage
step
    >>Finish killing Trolls in the area whilst doing other quests. Be careful as the Berserkers enrage at low hp
    .goto Eversong Woods,71.1,77.3
    .complete 8476,1 --Kill Amani Berserker (x5)
    .complete 8476,2 --Kill Amani Axe Thrower (x5)
step << BloodElf Hunter
    .use 30105 
    .goto Ghostlands,45.6,21.1
    .complete 9485,1 --Tame a Mistbat
step << BloodElf Hunter
    .goto Ghostlands,46.3,28.8
    .accept 9327 >> Accept The Forsaken
step << BloodElf Hunter
    .goto Ghostlands,44.8,32.5
    .turnin 9327 >> Turn in The Forsaken
    .accept 9758 >> Accept Return to Arcanist Vandril
step << BloodElf Hunter
    .goto Ghostlands,47.3,28.9
    .accept 9130 >> Accept Goods from Silvermoon City
step << BloodElf Hunter
    .goto Ghostlands,47.0,28.5
    .accept 9152 >> Accept Tomber's Supplies
step << BloodElf Hunter
    .goto Ghostlands,46.3,28.4
    .turnin 9758 >> Turn in Return to Arcanist Vandril
step << BloodElf Hunter
    .goto Ghostlands,46.3,28.6
    .accept 9138 >> Accept Suncrown Village
step << BloodElf Hunter
    #completewith next
    .goto Ghostlands,45.5,30.5
    .fp Tranquillien >> Get the Tranquillien flight path
step << BloodElf Hunter
    >>do NOT fly to Silvermoon City
    .goto Ghostlands,45.5,30.6
    .turnin 9130 >> Turn in Goods from Silvermoon City
    .accept 9133 >> Accept Fly to Silvermoon City
step << BloodElf Hunter
    #completewith next
    .goto Eversong Woods,44.0,70.7
    .hs >> Hearth to Fairbreeze Village
step << BloodElf Hunter
    .goto Eversong Woods,44.0,70.7
    .turnin 9255 >> Turn in Research Notes
    .accept 9144 >> Accept Missing in the Ghostlands
step << BloodElf Hunter
    .goto Eversong Woods,44.7,69.7
    .turnin 8491 >> Turn in Pelt Collection
step << BloodElf Hunter
    .goto Eversong Woods,46.9,71.8
    .turnin 9252 >> Turn in Defending Fairbreeze Village
step << BloodElf Hunter
    .goto Eversong Woods,46.9,71.6
    .accept 9253 >> Accept Runewarden Deryan
step << BloodElf Hunter
    .use 22473 >>Use the Disciplinary Rod in your bags on Meledor
.goto Eversong Woods,44.9,61.0
    .complete 9066,1 --Apprentice Meledor Disciplined
step << BloodElf Hunter
    .use 22473 >>Use the Disciplinary Rod in your bags on Ralen
.goto Eversong Woods,45.2,57.0
    .complete 9066,2 --Apprentice Ralen Disciplined
step << BloodElf Hunter
    .goto Eversong Woods,48.2,46.0
    .turnin 8482 >> Turn in Incriminating Documents
    .accept 8483 >> Accept The Dwarven Spy
step << BloodElf Hunter
    .goto Eversong Woods,48.3,46.1
    .trainer >> Train your class spells
step << BloodElf Hunter
    .goto Eversong Woods,44.8,53.1
    >>Talk to Prospector Anvilward and wait out the roleplay event. Kill and loot him after.
    .complete 8483,1 --Collect Prospector Anvilward's Head (x1)
    .skipgossip
    .timer 28,Prospector Anvilward RP
step << BloodElf Hunter
    .goto Eversong Woods,48.2,46.0
    .turnin 8483 >> Turn in The Dwarven Spy
step << BloodElf Hunter
    .goto Eversong Woods,55.7,54.5
    .turnin 9066 >> Turn in Swift Discipline
step << Undead/BloodElf !Hunter
    #completewith next
    >>Kill Springpaw Lynxes. Loot them for their Pelts
    .complete 8491,1 --Collect Springpaw Pelt (x6)
step
    >> Return to Lieutenant Dawnrunner
    .goto Eversong Woods,60.3,62.8
    .turnin 8476 >> Turn in Amani Encroachment
    .turnin 9360 >> Turn in Amani Invasion
    .accept 9363 >> Accept Warning Fairbreeze Village
step << BloodElf Hunter
    .turnin 9485 >> Turn in Taming the Beast
    .accept 9673 >> Accept Beast Training
step << Undead/BloodElf !Hunter
    #completewith next
    +Remember to NOT sell your food quest items
step
    >>Talk to Arathel Sunforge
    .goto Eversong Woods,59.5,62.6
    .turnin 8477,1 >> Turn in The Spearcrafter's Hammer << Paladin
    .turnin 8477 >> Turn in The Spearcrafter's Hammer << !Paladin
step
    .goto Eversong Woods,60.4,61.3
    >> Head upstairs to the right. Speak to Magister Duskwither
    .accept 8888 >> Accept The Magister's Apprentice
step << BloodElf/Undead
    #completewith next
    >>Kill Springpaw Lynxes. Loot them for their Pelts
    .complete 8491,1 --Collect Springpaw Pelt (x6)
step
    >> Speak to Apprentice Loralthalis
    .goto Eversong Woods,67.8,56.5
    .turnin 8888 >> Turn in The Magister's Apprentice
    .accept 8889 >> Accept Deactivating the Spire
    .accept 9394 >> Accept Where's Wyllithen?
step
    >> Speak to Groundskeeper Wyllithen
    .goto Eversong Woods,68.7,46.9
    .tame 15652 >>Tame a level 9 Elder Springpaw << Hunter tbc
    .turnin 9394 >> Turn in Where's Wyllithen?
    .accept 8894 >> Accept Cleaning up the Grounds
step
    >>Kill mobs in the area
    .goto Eversong Woods,68.5,46.0
    .complete 8894,1 --Kill Mana Serpent (x6)
    .complete 8894,2 --Kill Ether Fiend (x6)
step
    >> Return to Groundskeeper Wyllithen
    .goto Eversong Woods,68.7,47.0
    .turnin 8894 >> Turn in Cleaning up the Grounds
step
    #completewith next
    .goto Eversong Woods,68.92,51.97
    .cast 26566 >>Click the Orb of Translocation atop the stairs to teleport to the platform
step
    >>Click the green crystal
    .goto Eversong Woods,68.96,51.95
    .complete 8889,1 --First Power Source Deactivated (x1)
step
    >>Go Upstairs. Click the green crystal and the Blue Journal
    .complete 8889,2 --Second Power Source Deactivated (x1)
    .goto Eversong Woods,68.97,51.95
    .accept 8891 >> Accept Abandoned Investigations
    .goto Eversong Woods,69.25,52.11
step
    >>Click the green crystal. Make sure you're clicking the crystal and not the Orb yet
    .goto Eversong Woods,69.85,52.28,20,0
    .goto Eversong Woods,69.64,53.35
    .complete 8889,3 --Third Power Source Deactivated (x1)
step
    .goto Eversong Woods,69.61,53.47 
    .cast 26572 >>Click the Orb of Translocation behind the green crystal to teleport back down
step << !BloodElf/!Warlock
    .goto Eversong Woods,68.6,47.0
    >>Grind mobs in the area
    .xp 11+6375 >> Grind to 6375+/8700xp
step
    >> Speak to Apprentice Loralthalis up the road
    .goto Eversong Woods,67.8,56.5
    .turnin 8889 >> Turn in Deactivating the Spire
    .accept 8890 >> Accept Word from the Spire
step << Undead/BloodElf !Hunter
    #sticky
    #completewith next
    +Remember to NOT sell your food quest items
step
    >>Run back to Farstrider Retreat and go upstairs.
    .goto Eversong Woods,60.3,61.4
    .turnin 8890 >> Turn in Word from the Spire
    .turnin 8891 >> Turn in Abandoned Investigations
step << BloodElf Mage
    .goto Eversong Woods,55.7,54.5
    .turnin 9403 >>Turn in The Purest Water
    .accept 9404 >>Accept Recently Living
step << !Warlock
    #completewith next
    .goto Eversong Woods,56.7,49.6,30 >>Travel to Silvermoon << !Priest !Mage 
    .goto Eversong Woods,56.7,49.6,30,0 << Priest/Mage
    .goto Silvermoon City,63.5,32.0,20 >>Travel to Silvermoon. Run up the ramp << Priest/Mage
step << Priest
    .goto Silvermoon City,55.4,26.8
    .trainer >> Train your class spells
step << Mage
    .goto Silvermoon City,57.2,18.9
    .trainer >> Train your class spells
step << Rogue
    .goto Silvermoon City,79.7,52.1
    .accept 9532 >> Accept Find Keltus Darkleaf << BloodElf
    .trainer >> Train your class spells
step << Rogue
    .goto Silvermoon City,49.47,15.03
    .cast 25649 >>Take the Orb of Translocation to Undercity
    .money <0.1922
step << Rogue
    #completewith next
    .goto Undercity,66.0,44.0,35 >>Take one of the lifts down to Undercity
    .money <0.1922
step << Rogue
    .goto Undercity,61.1,40.9
    .vendor >> Buy a Cutlass from Louis Warren. Equip it. Alternatively, find a better sword from the AH for a cheaper price and equip that, then go back to Silvermoon
    .money <0.1922
step << Rogue
    #completewith miningr
    .goto Undercity,60.16,11.32,20,0
    .goto Undercity,54.67,11.25
    .cast 35730 >>Take the Orb of Translocation back to Silvermoon
    .zoneskip Silvermoon City
    .zoneskip Eversong Woods
step << Druid
    .goto Silvermoon City,71.5,55.8
    .trainer >> Train your class spells
step << BloodElf Hunter
    .goto Silvermoon City,83.4,30.1,20,0
    .goto Silvermoon City,82.2,28.1
    >>Go inside the building
    .turnin 9673 >> Turn in Beast Training
    .trainer >>Train your pet spells << tbc
step << BloodElf Hunter
    >>Put "Beast Training" on your bars. Remember to teach your pet skills later << tbc
    .goto Silvermoon City,82.4,26.0
    .trainer >> Train your class spells
step << Orc Hunter/Troll Hunter
    .goto Silvermoon City,82.4,26.0
    .trainer >> Train your class spells
step << Paladin
    .goto Silvermoon City,89.3,35.2
    .accept 9678 >>Accept The First Trial
step << Paladin
    .goto Silvermoon City,91.2,36.9
    .trainer >> Train your class spells
step << BloodElf Hunter
    .goto Silvermoon City,54.0,71.0
    >>Inside the building
    .turnin 9133 >> Turn in Fly to Silvermoon City
    .accept 9134 >> Accept Skymistress Gloaming
step << Hunter
    .money <0.3621
    .goto Silvermoon City,85.9,35.4
    .collect 3026,1 >> Buy a Reinforced Bow from Celana
step << BloodElf Hunter
    .goto Eversong Woods,54.4,50.8
    >>Exit Silvermoon City
    .turnin 9134 >> Turn in Skymistress Gloaming
    .accept 9135 >> Accept Return to Quartermaster Lymel
step << BloodElf Hunter
    #completewith next
    .goto Eversong Woods,54.4,50.8
    .fly Tranquillien >> Fly to Tranquillien
step << BloodElf Hunter
    .goto Ghostlands,47.3,29.1
    .turnin 9135 >> Turn in Return to Quartermaster Lymel
step << Paladin/Rogue
    #label miningr
    .goto Silvermoon City,78.9,43.3
    .train 2580 >>Train Mining to be able to mine nodes for Rough Stones, allowing you to craft Sharpening Stones (+2 weapon damage for 1 hour).
    .cast 2580 >>Cast Find Minerals
step << Paladin/Rogue
    .goto Silvermoon City,78.4,42.5
    >> Buy a mining pick
    .collect 2901,1 --Mining Pick (1)
step << Undead/BloodElf !Hunter
    .goto Silvermoon City,79.5,58.5
    >> Buy a Suntouched Special Reserve from Vinemaster Suntouched. Reload vendor's inventory window if they do not appear (currently bugged).
    .collect 22775,1 --Collect Suntouched Special Reserve 
step << Undead/BloodElf !Hunter
    #completewith next
    .hs Hearth to Falconwing
    .cooldown item,6948,>0
step << !BloodElf/!Hunter !Warlock/!BloodElf
    #completewith springpawhs
    .goto Eversong Woods,56.7,49.6,30 >>Exit Silvermoon
step << BloodElf/Undead
    #label springpawhs
    #completewith next
    >>Kill Springpaw Lynxes. Loot them for their pelts
    .complete 8491,1 --Collect Springpaw Pelt (x6)
step << Orc Warlock/Undead Warlock
    #completewith next
    .hs >> Hearth to Falconwing Square
    .cooldown item,6948,>0
step << Orc Warlock/Undead Warlock
    .goto Eversong Woods,48.2,47.9
    .trainer >> Train your class spells
step << Undead/BloodElf !Hunter 
    #completewith next
    .hs >> Hearth to Falconwing
    .cooldown item,6948,>0
step << Undead/BloodElf !Hunter
    >>Return to Falconwing Square. Talk to Ranger Sareyn
    .goto Eversong Woods,46.9,71.8
    .turnin 9252 >> Turn in Defending Fairbreeze Village
    .accept 9253 >> Accept Runewarden Deryan
step << Undead/BloodElf !Hunter
    .goto Eversong Woods,44.7,69.7
    .turnin 8491 >> Turn in Pelt Collection
step << Undead/BloodElf !Hunter
    .goto Eversong Woods,44.0,70.4
    >>Buy a Bundle of Fireworks from Halis. Reload vendor's inventory window if they do not appear (currently bugged).
    .collect 22777,1 --Bundle of Fireworks (1)
step << Undead/BloodElf !Hunter
    >> Speak to Magistrix Landra Dawnstrider
    .goto Eversong Woods,44.0,70.8
    .turnin 9255 >>Turn in Research Notes
step << !BloodElf/!Hunter
    >> Talk to Magistrix Landra, then go inside the inn and talk to Ardeyn Riverwind
    .accept 9144 >>Accept Missing in the Ghostlands
    .goto Eversong Woods,44.0,70.8
    .accept 9258 >>Accept The Scorched Grove
    .goto Eversong Woods,43.6,71.2
step << !BloodElf/!Hunter
    >> Speak to Ranger Degolien upstairs
    .goto Eversong Woods,43.3,70.8
    .turnin 9363 >>Turn in Warning Fairbreeze Village
step
    #completewith next
    .abandon 9363 >> Abandon Warning Fairbreeze Village
step << Undead/BloodElf !Hunter
    >> Speak to Lord Saltheril
    .goto Eversong Woods,38.1,73.6
    .turnin 9067 >> Turn in The Party Never Ends
step << !BloodElf/!Hunter
    >> Speak to Larianna Riverwind to the west
    .goto Eversong Woods,34.1,80.0
    .turnin 9258 >> Turn in The Scorched Grove
    .accept 8473 >> Accept A Somber Task
step << !BloodElf/!Hunter
    #completewith next
    .goto Eversong Woods,35.0,84.2
    .use 23228 >>Kill Old Whitebark. Loot him for his pendant. Click the pendant in your bags
    .collect 23228,1,8474 --Collect Old Whitebark's Pendant (x1)
    .accept 8474 >> Accept Old Whitebark's Pendant
    .unitscan Old Whitebark
step << !BloodElf/!Hunter
    .goto Eversong Woods,35.0,84.2
    >>Be careful as the Green Keepers have a double-damage Heroic Strike ability
    .complete 8473,1 --Kill Withered Green Keeper (x10)
step << !BloodElf/!Hunter
    .goto Eversong Woods,35.0,84.2
    .use 23228 >>Kill Old Whitebark. Loot him for his pendant. Click the pendant in your bags
    .collect 23228,1,8474 --Collect Old Whitebark's Pendant (x1)
    .accept 8474 >> Accept Old Whitebark's Pendant
    .unitscan Old Whitebark
step << !BloodElf/!Hunter
    .goto Eversong Woods,34.1,80.0
    >> Return to Larianna Riverwind
    .turnin 8473 >> Turn in A Somber Task
    .turnin 8474 >> Turn in Old Whitebark's Pendant
    .accept 10166 >> Accept Whitebark's Memory
step << !BloodElf/!Hunter
   .use 28209 >>Use the pendant to summon Old Whitebark. Kill him and then turn in the quest to him.
    >>Be sure to start max range from him. << Hunter
    .goto Eversong Woods,37.6,86.2
    .turnin 10166 >> Turn in Whitebark's Memory
step << Undead/BloodElf !Hunter
    >> Speak with Runewarden Deryan
    .goto Eversong Woods,44.2,85.5
    .turnin 9253 >> Turn in Runewarden Deryan
step << BloodElf Mage
    >>Kill Treants in the area. Loot them for the Branch
    .goto Eversong Woods,53.9,80.6
    .collect 23553,1 --Collect Living Branch (x1)
step << !BloodElf/!Hunter
    .isOnQuest 8490
    .abandon 8490 >>Abandon Powering our Defenses
step
    >> Speak with Courier Dawnstrider
    .goto Eversong Woods,49.0,89.0
    .turnin 9144 >> Turn in Missing in the Ghostlands
step
    >> Speak with Apothecary Thedra
    .goto Eversong Woods,49.0,89.2
    .accept 9147 >> Accept The Fallen Courier
step << BloodElf Warlock
    >>Loot one of the purple stones on the ground
    .goto Ghostlands,43.7,16.0
    .turnin 9529 >>Turn in The Stone
    .accept 9619 >>Accept The Rune of Summoning
step << BloodElf Warlock
    .goto Ghostlands,27.2,16.0,40 >>Enter this building. Go to the top floor
step << BloodElf Warlock
    .use 23732 >>Use the Void Stone to summon a Voidwalker. Kill it
    .goto Ghostlands,27.0,15.2
    .complete 9619,1 --Summoned Voidwalker (1)
step
    .goto Ghostlands,46.6,14.0,50,0
    .goto Ghostlands,47.7,19.8,50,0
    .goto Ghostlands,54.9,15.3,50,0
    .goto Ghostlands,46.6,14.0,50,0
    .goto Ghostlands,47.7,19.8,50,0
    .goto Ghostlands,54.9,15.3
    >>Kill Mistbats and Ghostclaws. You head back across the bridge after so don't go too far.
    .goto Ghostlands,51.6,15.5
    .complete 9147,1 --Collect Plagued Blood Sample (x4)
step
    >> Speak with Apothecary Thedra
    .goto Eversong Woods,49.1,89.0
    .turnin 9147 >> Turn in The Fallen Courier
step
    >> Speak with Courier Dawnstrider
    .goto Eversong Woods,48.98,89.0
    .accept 9148 >> Accept Delivery to Tranquillien
    .target Courier Dawnstrider
step << BloodElf !Hunter
    >> Speak to Arcanist Vandril
    .goto Ghostlands,46.5,28.4
    .turnin 9148,3 >> Turn in Delivery to Tranquillien << Paladin
    .turnin 9148 >> Turn in Delivery to Tranquillien << !Paladin
    .accept 9327 >> Accept The Forsaken
step << !BloodElf
    >> Speak to Arcanist Vandril
    .goto Ghostlands,46.5,28.4
    .turnin 9148 >> Turn in Delivery to Tranquillien
    .accept 9329 >> Accept The Forsaken
step << !BloodElf/!Hunter
    .goto Ghostlands,45.5,30.5
    .fp Tranquillien >> Get the Tranquillien flight path
step << BloodElf !Hunter
    >> Speak to High Executor Mavren, then run outside and speak to Quartermaster Lymel and Rathis Tomber. Lastly talk to Arcanist Vandril again
    .turnin 9327 >> Turn in The Forsaken
    .goto Ghostlands,44.8,32.5
    .accept 9758 >> Accept Return to Arcanist Vandril
    .accept 9130 >> Accept Goods from Silvermoon City
    .goto Ghostlands,47.3,28.9
    .accept 9152 >> Accept Tomber's Supplies
    .goto Ghostlands,47.0,28.5
    .turnin 9758 >> Turn in Return to Arcanist Vandril
    .goto Ghostlands,46.3,28.4
    .accept 9138 >> Accept Suncrown Village
step << !BloodElf
    >> Speak to High Executor Mavren, then run outside and speak to Quartermaster Lymel and Rathis Tomber. Lastly talk to Arcanist Vandril again
    .turnin 9329 >> Turn in The Forsaken
    .goto Ghostlands,44.8,32.5
    .accept 9758 >> Accept Return to Arcanist Vandril
    .goto Ghostlands,47.3,28.9
    .accept 9152 >> Accept Tomber's Supplies
    .goto Ghostlands,47.0,28.5
    .turnin 9758 >> Turn in Return to Arcanist Vandril
    .goto Ghostlands,46.3,28.4
    .accept 9138 >> Accept Suncrown Village
step << Warlock
    #completewith next
    .goto Ghostlands,48.9,32.4
    .home >> Set your Hearthstone to Tranquillien 
step << BloodElf !Hunter !Warlock
    >>Do NOT fly to Silvermoon City. Talk to the Flight Master.
    .goto Ghostlands,45.5,30.6
    .turnin 9130 >> Turn in Goods from Silvermoon City
    .accept 9133 >> Accept Fly to Silvermoon City
step << BloodElf Warlock
    >> Talk to the Flight Master
    .goto Ghostlands,45.5,30.6
    .turnin 9130 >> Turn in Goods from Silvermoon City
    .accept 9133 >> Accept Fly to Silvermoon City
step << BloodElf Warlock
    #completewith next
    .goto Ghostlands,45.5,30.6
    .fly Silvermoon >> Fly to Silvermoon City
step << BloodElf Warlock
    .goto Silvermoon City,72.4,85.7,40,0
    .goto Silvermoon City,54.0,71.0
    .turnin 9133 >> Turn in Fly to Silvermoon City
    .accept 9134 >> Accept Skymistress Gloaming
step << BloodElf Warlock
    .goto Silvermoon City,75.3,44.5,20,0
    .goto Silvermoon City,74.4,47.2
    >>Enter the building and go downstairs. Use your Voidwalker from now on
    .turnin 9619 >>Turnin The Rune of Summoning
    .trainer >> Train your class spells
step << BloodElf Warlock
    #completewith next
    .hs >> Hearth to Tranquillien
step
    >>Speak to the Dying Blood Elf on the road
    .goto Ghostlands,57.6,14.9
    .accept 9315 >> Accept Anok'suten
step
    #completewith Nerubis
    >>Anok'suten may require a group. If you can't kill him or find a group, skip this quest. He patrols clockwise around the path on the town, and calls for help from nearby mobs (about 60 yards) at 50%
    .complete 9315,1 --Kill Anok'suten (x1)
    .unitscan Anok'suten
step << Paladin
    >>Swim to the island killing Nerubis Guards en route and go in the cave. Light the brazier and kill the mob that spawns
    .goto Ghostlands,68.4,7.5
    .complete 9678,1 --Undergo the First Trial
step
     .goto Ghostlands,61.3,11.9
    >> Kill Nerubis enemies. Try to end on the eastern side of the area
    .complete 9138,1 --Kill Nerubis Guard (x10)
step
    #label Nerubis
    >>Talk to Ranger Valanna
    .goto Ghostlands,69.5,15.0
    .accept 9143 >> Accept Dealing with Zeb'Sora
step
    >> Talk to the ghost Geranis Whitemorn
    .goto Ghostlands,72.5,19.1
    .accept 9157 >> Accept Forgotten Rituals
step
    >>Kill Trolls in the area. Loot them for their Ears
    .goto Ghostlands,76.8,12.3
    .complete 9143,1 --Collect Zeb'Sora Troll Ear (x6)
step
    >> Speak to Farstrider Sedina in the Farstrider Enclave
    .goto Ghostlands,72.5,32.1
    .accept 9158 >> Accept Bearers of the Plague
step
    .goto Ghostlands,72.2,31.2
    >>Click the Wanted Poster
    .accept 9215 >>Accept Bring Me Kel'gash's Head!
step
    #completewith next
    .goto Ghostlands,72.3,32.3
    .vendor >> Buy Food/drink if needed. Be sure to buy the Longjaw Mud Snapper as it's VERY cheap
step
    >>Kill any Ghostclaw Lynx you see
    .goto Ghostlands,68.5,33.1,40,0
    .goto Ghostlands,67.3,38.0,40,0
    .goto Ghostlands,68.5,46.3,40,0
    .goto Ghostlands,76.2,35.2,40,0
    .goto Ghostlands,68.5,33.1,40,0
    .goto Ghostlands,67.3,38.0,40,0
    .goto Ghostlands,68.5,46.3,40,0
    .goto Ghostlands,76.2,35.2,40,0
    .goto Ghostlands,68.6,45.3
    .complete 9158,1 --Kill Ghostclaw Lynx (x10)
step
    >> Return to Farstrider Enclave and speak to Sedina
    .goto Ghostlands,72.5,32.0
    .turnin 9158 >> Turn in Bearers of the Plague
    .accept 9159 >> Accept Curbing the Plague
step
    >> Speak with Ranger Krenn'an
    .goto Ghostlands,72.2,29.8
    .accept 9274 >>Accept Spirits of the Drowned
step
    #completewith Aquantion
    >>Kill Apparitions all around the lake
    .complete 9274,2 --Kill Vengeful Apparition (x8)
    .complete 9274,1 --Kill Ravening Apparition (x8)
step
    >>Loot Medallions from mud piles at the bottom of the lake
    .goto Ghostlands,72.2,28.2,30,0
    .goto Ghostlands,73.1,23.5,30,0
    .goto Ghostlands,73.6,18.3,30,0
    .goto Ghostlands,71.4,15.5,30,0
    .goto Ghostlands,70.1,19.0,30,0
    .goto Ghostlands,70.6,22.0
    .complete 9157,1 --Collect Wavefront Medallion (x8)
step
    .goto Ghostlands,72.3,19.0
    >> Speak to Geranis Whitemorn on the island
    .turnin 9157 >> Turn in Forgotten Rituals
    .accept 9174 >> Accept Vanquishing Aquantion
step
    >>Click the shrine to summon Aquantion. He is VERY difficult. He is immmune to crowd control abilities (Stuns and Silences), has greater than normal health, and hits relatively hard with frost damage
    .goto Ghostlands,71.3,15.0
    .complete 9174,1 --Kill Aquantion (x1)
step
    #label Aquantion
    .goto Ghostlands,72.3,19.1
    >>Speak to Geranis Whitemorn on the island
    .turnin 9174 >> Turn in Vanquishing Aquantion
step
    >>Kill Apparitions all around the lake
    .goto Ghostlands,72.2,28.2,30,0
    .goto Ghostlands,73.1,23.5,30,0
    .goto Ghostlands,73.6,18.3,30,0
    .goto Ghostlands,71.4,15.5,30,0
    .goto Ghostlands,70.1,19.0,30,0
    .goto Ghostlands,70.6,22.0
    .complete 9274,2 --Kill Vengeful Apparition (x8)
    .complete 9274,1 --Kill Ravening Apparition (x8)
step
    .goto Ghostlands,69.4,15.1
    >> Speak with Ranger Valanna
    .turnin 9143 >> Turn in Dealing with Zeb'Sora
    .accept 9146 >> Accept Report to Captain Helios
step
    >>Grind Nerubians
    .goto Ghostlands,61.2,12.0
    .xp 13+10150 >>Grind to 10150+/11000xp
step << Priest/Mage/Warlock/Rogue/Druid
    #completewith next
    .deathskip >> Die and respawn at the Spirit Healer
step
    .goto Ghostlands,46.3,28.4
    >> Run back to Tranquillen. Talk to Arcanist Vandril << !Priest !Mage !Warlock !Rogue !Druid
    >> Return to Arcanist Vandril
    .turnin -9315 >>Turn in Anok'suten
    .turnin 9138 >>Turn in Suncrown Village
    .accept 9139 >>Accept Goldenmist Village
step
    >> Talk to Master Chef Mouldier
    .accept 9171 >> Accept Culinary Crunch
    .goto Ghostlands,48.43,30.93
    .target Master Chef Mouldier
step
--  #label Poster3
    >>Click the Wanted Poster
    .accept 9156 >> Accept Wanted: Knucklerot and Luzran
    .goto Ghostlands,48.35,31.67
step << !Warlock
    .goto Ghostlands,48.9,32.4
    .home >> Set your Hearthstone to Tranquillien
step << Mage/Priest/Warlock
    .goto Ghostlands,47.7,32.3
    >> Purchase Apprentice Boots from Vredigar and equip them
    .collect 22991,1 --Collect Apprentice Boots (1)
step << Rogue/Shaman
    .goto Ghostlands,47.7,32.3
    >> Purchase Bogwalker Boots from Vredigar and equip them
    .collect 22992,1 --Collect Bogwalker Boots (1)
step << Orc Hunter/Troll Hunter
    #sticky
    #completewith Poster13
    .money <0.1300
    >>If you couldn't afford 2h sword training earlier, fly to Silvermoon and get weapon training
    .goto Silvermoon City,91.2,38.7
    .train 202 >>Train 2h Swords
step << Hunter
    .goto Ghostlands,47.7,32.3
    >> Buy the Bogwalker Boots. Equip them << wotlk
    >> Buy the Bogwalker Boots and Flamberge. Equip them << tbc
    .collect 22992,1 --Collect Bogwalker Boots (1)
    .collect 28164,1 --Collect Tranquillien Flamberge (1) << tbc
step << Paladin
    .goto Ghostlands,47.7,32.3
    >> Buy the Volunteer's Greaves and Tranquillien Flamberge. Equip them
    .collect 22993,1 --Collect Volunteer's Greaves (1)
    .collect 28164,1 --Collect Tranquillien Flamberge (1)
step
    #label Poster13
    #completewith next
    .isOnQuest 9315
    .abandon 9315 >> Abandon Anok'suten
step
    >> Speak to Magister Darenis, if he isn't here double back later. He despawns after a certain quest is turned in.
    .accept 9150 >>Accept Salvaging the Past
    .goto Ghostlands,46.0,32.0
    >> Speak to Dame Auriferous, Advisor Valwyn, and Deathstalker Maltendis
    .accept 9160 >>Accept Investigate An'daroth
    .goto Ghostlands,44.9,32.5
    .accept 9193 >> Accept Investigate the Amani Catacombs
    .goto Ghostlands,44.8,32.8
    .accept 9192 >> Accept Trouble at the Underlight Mines
    .goto Ghostlands,44.7,32.3
step
    >> Speak to Deathstalker Rathiel by the well
    .accept 9155 >> Accept Down the Dead Scar
    .goto Ghostlands,46.0,33.6
    >> Speak to Apothecary Renzithen
    .accept 9149 >> Accept The Plagued Coast
    .goto Ghostlands,47.5,34.9
step << Druid
    >>Teleport to Moonglade
    .goto Moonglade,52.5,40.6
    .trainer >> Train your class spells
    --Add Poison q. Add earthroot purchase from AH
step << Priest/Mage/Warlock
    #completewith next
    .goto Ghostlands,45.4,30.5
    .fly Silvermoon >> Fly to Silvermoon City
step << BloodElf Mage
    .goto Eversong Woods,55.7,54.5
    .turnin 9404 >>Turn in Recently Living
step << BloodElf Priest/BloodElf Mage
    .goto Silvermoon City,72.4,85.7,40,0
    .goto Silvermoon City,54.0,71.0
    .turnin 9133 >> Turn in Fly to Silvermoon City
    .accept 9134 >> Accept Skymistress Gloaming
step << BloodElf Warlock
    .goto Eversong Woods,54.4,50.7
    .turnin 9134 >> Turn in Skymistress Gloaming
    .accept 9135 >> Accept Return to Quartermaster Lymel
step << Priest
    >>You can also check for a Greater Magic Wand from the AH after training if you wish
    .goto Silvermoon City,55.4,26.8
    .trainer >> Train your class spells
step << Mage
    .goto Silvermoon City,57.2,18.9
    .trainer >> Train your class spells
step << !BloodElf Warlock
    .goto Silvermoon City,74.4,47.2
    >> Head into the building then go downstairs
    .trainer >> Train your class spells
step << Priest/Mage/Warlock/Druid
    #completewith next
    .hs >> Hearth to Tranquillien
step << BloodElf Warlock
    .goto Ghostlands,47.3,29.3
    .turnin 9135 >> Turn in Return to Quartermaster Lymel
step
    >>Kill the Arcane mobs and loot them for Mana Essence
    .goto Ghostlands,35.7,33.5,40,0
    .goto Ghostlands,31.4,35.9,40,0
    .goto Ghostlands,32.4,29.0,40,0
    .goto Ghostlands,35.7,33.5,40,0
    .goto Ghostlands,31.4,35.9,40,0
    .goto Ghostlands,32.4,29.0
    .complete 9150,1 --Collect Crystallized Mana Essence (x8)
step
    >>Loot the box in the caravan surrounded by Ghouls
    .goto Ghostlands,33.6,26.6
    .complete 9152,1 --Collect Rathis Tomber's Supplies (x1)
step
    #completewith next
    .goto Ghostlands,37.8,20.6,70,0
    >>Kill Spiders. Loot them for their Crunchy Spider Legs
    .complete 9171,1 --Collect Crunchy Spider Leg (x5)
step << BloodElf Rogue
    >>DON'T kill the Sentinel Leader en route
    .goto Ghostlands,33.0,11.2
    .turnin 9532 >> Turn in Find Keltus Darkleaf
    .accept 9460 >> Accept Combining Forces
step << BloodElf Rogue
    #completewith elftimeover
    #label Handkerchief
    .cast 921 >>Stealth, then pickpocket the Sentinel Leader for Lacy Handkerchief. She patrols around the camp - If you pull her, run away and reset her
    .goto Ghostlands,33.0,11.2
    .collect 23686 --Collect Lacy Handkerchief (x1)
step
    .goto Ghostlands,36.9,15.7
    >>Kill Sentinel Spies
    .complete 9160,1 --Kill Sentinel Spy (x12)
    >>Go within 10 yards of the giant shrine in the middle of the camps
    .complete 9160,2 --Investigate An'daroth
step
    .goto Ghostlands,36.9,15.7
    .xp 14+5200 >> Grind to 5200+/12300xp
step << BloodElf Rogue
    #label elftimeover
    .goto Ghostlands,33.0,11.2
    .turnin 9460 >> Turn in Combining Forces
    .accept 9618 >> Accept Return the Reports
step
    .goto Ghostlands,25.3,15.8
    >>Kill Ghosts in the area. Try to end the quest on the northwest side of the area.
    .complete 9139,2 --Kill Quel'dorei Wraith (x4)
    .complete 9139,1 --Kill Quel'dorei Ghost (x6)
step
    >>Kill Murlocs. Loot them for their Spines
    .goto Ghostlands,19.2,13.6,150,0
    .goto Ghostlands,20.7,23.1
    .complete 9149,1 --Collect Plagued Murloc Spine (x6)
step
    #completewith stopspiderlegs
    >>Kill Spiders. Loot them for their Crunchy Spider Legs
    .complete 9171,1 --Collect Crunchy Spider Leg (x5)
step
    #completewith next
    >>Kill Vampiric Mistbats
    .complete 9159,1 --Kill Vampiric Mistbat (x10)
step
    .goto Ghostlands,34.3,40.1
    >>Kill Spindleweb Lurkers. Be careful of their poison
    .complete 9159,2 --Kill Spindleweb Lurker (x8)
step
    >> Speak to Apprentice Shatharia
    .goto Ghostlands,31.4,48.5
    .accept 9207 >> Accept Underlight Ore Samples
step
    >>Kill Gnolls in the area. Loot them for Underlight Ore
    >> If you have mining you can also mine some Underlight Ore from nodes in the area << Warrior/Paladin/Rogue
    .goto Ghostlands,29.0,47.8
    .complete 9192,3 --Kill Blackpaw Shaman (x4)
    .complete 9192,1 --Kill Blackpaw Gnoll (x8)
    .complete 9192,2 --Kill Blackpaw Scavenger (x6)
    .complete 9207,1 --Collect Underlight Ore (x6)
step
        >>Save any Rotting Hearts you loot. Don't vendor them. Kill the undead mobs in the Dead Scar
    .goto Ghostlands,37.9,47.2,60,0
    .goto Ghostlands,39.4,30.1,60,0
    .goto Ghostlands,37.9,47.2,60,0
    .goto Ghostlands,39.4,30.1,60,0
    .goto Ghostlands,37.9,47.2,60,0
    .goto Ghostlands,39.4,30.1,60,0
    .goto Ghostlands,37.9,47.2,60,0
    .goto Ghostlands,39.4,30.1
.complete 9155,2 --Kill Gangled Cannibal (x10)
    .complete 9155,1 --Kill Risen Hungerer (x10)
step
    #label stopspiderlegs
    >> Talk to Apothecary Renzithen and Deathstalker Rathiel
    .turnin 9149 >> Turn in The Plagued Coast
    .goto Ghostlands,47.6,34.7
    .turnin 9155 >> Turn in Down the Dead Scar
    .goto Ghostlands,46.1,33.6
step
    >> Turn in and accept all the quests in the building
    .goto Ghostlands,44.8,32.5
    .turnin 9160 >> Turn in Investigate An'daroth
    .accept 9163 >> Accept Into Occupied Territory
    .turnin 9192 >> Turn in Trouble at the Underlight Mines
    .accept 9199 >> Accept Troll Juju
    .accept 9173 >> Accept Retaking Windrunner Spire
step
    >> Talk to Magister Darenis, Arcanist Vandril, and Rathis Tomber
    .turnin 9150 >> Turn in Salvaging the Past
    .goto Ghostlands,46.1,31.8
    .turnin 9139 >> Turn in Goldenmist Village
    .goto Ghostlands,46.4,28.4
    .accept 9140 >> Accept Windrunner Village
    .turnin 9152 >> Turn in Tomber's Supplies
    .goto Ghostlands,47.3,28.6
step << Paladin
    .goto Ghostlands,47.7,32.3
    >> Buy a Tranquillien Defender's Girdle. Equip it
    .collect 28162,1 --Collect Tranquillien Defender's Girdle (1)
step << Rogue/Hunter/Druid/Shaman
    .goto Ghostlands,47.7,32.3
    >> Buy a Batskin Belt. Equip it
    .collect 28158,1 --Collect Batskin Belt (1)
step
    .goto Ghostlands,48.9,32.4
    .vendor >> Buy Food and drink. Some of the next quests are difficult.
step
    >>Finish killing Vampiric Mistbats
    .goto Ghostlands,42.1,39.2,50,0
    .goto Ghostlands,50.8,50.3,50,0
    .goto Ghostlands,43.8,49.6,50,0
    .goto Ghostlands,42.1,39.2,50,0
    .goto Ghostlands,50.8,50.3,50,0
    .goto Ghostlands,43.8,49.6
    .complete 9159,1 --Kill Vampiric Mistbat (x10)
step
    >> Talk to Apprentice Vor'el
    .goto Ghostlands,46.2,56.4
    .accept 9281 >> Accept Clearing the Way
step
    #completewith next
    .goto Ghostlands,13.2,56.8
    >>Kill Ghostclaw Ravagers and Spindlewebs en route, don't worry about finishing this quest yet.
    .complete 9281,2 --Kill Ghostclaw Ravager (x10)
    .complete 9281,1 --Kill Greater Spindleweb (x10)
step
        >>Kill Fallen Rangers and Deatholme Acolytes. Loot them for the Lady's Necklace. Click it in your bags. These mobs can be hard, try not to pull more than one at a time.
    .goto Ghostlands,13.2,56.8
    .complete 9173,1 --Deatholme Acolyte (8)
    .complete 9173,2 --Fallen Ranger (10)
    .collect 22597,1,9175 --Collect The Lady's Necklace (x1)
    .accept 9175 >> Accept The Lady's Necklace  
    .use 22597
step
    #completewith next
    >>Loot Spiders for Crunchy Spider Legs
    .complete 9171,1 --Collect Crunchy Spider Leg (x5)
step
    >>Finish killing Ghostclaw Ravagers and Spindlewebs
    .goto Ghostlands,16.5,62.5,0
    .goto Ghostlands,44.1,57.6,0
    .goto Ghostlands,16.5,62.5,0
    .goto Ghostlands,44.1,57.6,0
    .goto Ghostlands,16.5,62.5,0
    .goto Ghostlands,44.1,57.6,0
    .goto Ghostlands,16.5,62.5,0
    .goto Ghostlands,44.1,57.6,30,0
    .goto Ghostlands,16.5,62.5,30,0
    .complete 9281,2 --Kill Ghostclaw Ravager (x10)
    .complete 9281,1 --Kill Greater Spindleweb (x10)
step
    .goto Ghostlands,16.5,62.5,0
    .goto Ghostlands,44.1,57.6,0
    .goto Ghostlands,16.5,62.5,0
    .goto Ghostlands,44.1,57.6,0
    .goto Ghostlands,16.5,62.5,0
    .goto Ghostlands,44.1,57.6,0
    .goto Ghostlands,16.5,62.5,0
    .goto Ghostlands,44.1,57.6,30,0
    .goto Ghostlands,16.5,62.5,30,0    
    >>Finish looting Spiders for Crunchy Spider Legs if you haven't gotten 5 legs by now.
    .complete 9171,1 --Collect Crunchy Spider Leg (x5)
step
    >>Kill and loot Phantasms for Substances and Gargoyles for Fragments in the area.
    .goto Ghostlands,20.4,48.7,30,0
    .goto Ghostlands,19.6,45.2,30,0
    .goto Ghostlands,20.3,42.3,30,0
    .goto Ghostlands,17.3,43.4,30,0
    .goto Ghostlands,20.4,48.7,30,0
    .goto Ghostlands,19.6,45.2,30,0
    .goto Ghostlands,20.3,42.3,30,0
    .goto Ghostlands,17.3,43.4
    .complete 9140,1 --Collect Phantasmal Substance (x6)
    .complete 9140,2 --Collect Gargoyle Fragment (x4)
step
    #completewith next
    .cast 7840 >> Use the Swim Speed Potion in your bags to cross the river faster
    .use 6372
    .itemcount 6372,1
step
    >>Loot Scrolls on the ground. They can have multiple spawnpoints in any tent in the area.
    .goto Ghostlands,12.7,25.3
    .complete 9163,2 --Collect Night Elf Plans: An'owyn (x1)
    .goto Ghostlands,12.5,26.4
    .complete 9163,1 --Collect Night Elf Plans: An'daroth (x1)
step << Priest/Druid/Rogue/Paladin
    .xp 15+10600 >> Grind to 10600/13600
step
    >>Run onto the boat. Loot the plans at the top
    .goto Ghostlands,10.5,22.6
    .complete 9163,3 --Collect Night Elf Plans: Scrying on the Sin'dorei (x1)
step
    #completewith next
    .deathskip >> Die and respawn at the Spirit Healer
step
    #label spiderz2
    >> Speak to Arcanist Vandril
    .turnin 9140,2 >> Turn in Windrunner Village << Paladin
    .turnin 9140,4 >> Turn in Windrunner Village << Warlock/Mage/Priest
    .turnin 9140 >> Turn in Windrunner Village << !Paladin !Warlock !Mage !Priest
    .goto Ghostlands,46.3,28.5
step
    >> Speak to the Master Chef
    .goto Ghostlands,48.5,30.7
    .turnin 9171 >> Turn in Culinary Crunch
    .isQuestComplete 9171
step
    >> Turn in and accept all the quests in the building
    .goto Ghostlands,44.8,32.5
    .turnin 9163 >> Turn in Into Occupied Territory
    .accept 9166 >> Accept Deliver the Plans to An'telas
    .turnin -9175 >> Turn in The Lady's Necklace
    .turnin 9173 >> Turn in Retaking Windrunner Spire
step << BloodElf
    .goto Ghostlands,44.8,32.5
    .accept 9180 >> Accept Journey to Undercity
step << !BloodElf
    .goto Ghostlands,44.8,32.5
    .accept 9177 >> Accept Journey to Undercity
step << Druid
    >>Teleport to Moonglade
    .goto Moonglade,52.5,40.6
    .trainer >> Train your class spells
    --Aquatic Form q
step << Priest/Rogue/Paladin
    #completewith next
    .goto Ghostlands,45.4,30.5
    .fly Silvermoon >> Fly to Silvermoon City
step << BloodElf Paladin/BloodElf Rogue
    >> Head into Silvermoon City
    .goto Silvermoon City,72.4,85.7,40,0
    .goto Silvermoon City,54.0,71.0
    .turnin 9133 >> Turn in Fly to Silvermoon City
step << BloodElf Paladin/BloodElf Rogue
    #xprate <1.5
    .goto Silvermoon City,54.0,71.0
    .accept 9134 >> Accept Skymistress Gloaming
step << BloodElf Priest/BloodElf Rogue/BloodElf Paladin
    .isOnQuest 9134
    >>DON'T Fly anywhere from the flight master. Head back outside Silvermoon City.
    .goto Eversong Woods,54.4,50.7
    .turnin 9134 >> Turn in Skymistress Gloaming
    .accept 9135 >> Accept Return to Quartermaster Lymel
step << Priest
    >>You can also check for a Greater Magic Wand from the Auction House after training if you wish (if you didn't get one earlier)
    .goto Silvermoon City,55.4,26.8
    .trainer >> Train your class spells
step << Rogue
    .goto Silvermoon City,79.7,52.1
    .turnin 9618 >>Turn in Return the Reports << BloodElf
    .accept 10372 >>Accept A Discreet Inquiry
    .trainer >> Train your class spells
step << Rogue
    .money <0.3625
    .goto Silvermoon City,49.47,15.03
    .cast 25649 >>Take the Orb of Translocation to Undercity
step << Rogue
    #completewith next
    .money <0.3625
    .goto Undercity,66.0,44.0,35 >>Take one of the lifts down to Undercity
step << Rogue
    .money <0.3625
    .goto Undercity,61.1,40.9
    .vendor >> Buy a Scimitar from Louis Warren. Equip it. Alternatively, find a better sword from the AH for a cheaper price and equip that
step << Paladin
    .goto Silvermoon City,89.3,35.2
    .turnin 9678 >>Turn in The First Trial
    .accept 9681 >>Accept A Study in Power
step << Paladin
    .goto Silvermoon City,92.2,37.5
    .trainer >> Train your class spells
step << Paladin
    >>Jump down the hole behind the trainer
    .goto Silvermoon City,92.1,36.2
    .turnin 9681 >>Turn in A Study in Power
    .accept 9684 >>Accept Claiming the Light << tbc
    .accept 63866 >>Accept Claiming the Light << wotlk
-- This changes in sunwell plataeu, but im not sure if we'd have a phase system instead of just tbc
step << Paladin tbc
    .use 24157 >>Stand in the light beam and use the Shimmering Vessel
    .goto Silvermoon City,92.6,36.8
    .complete 9684,1 --Collect Filled Shimmering Vessel
step << Paladin wotlk
    .use 185956 >>Use the Shimmering Vessel on a Blood Elf Magister
    .goto Silvermoon City,92.6,36.8
    .complete 63866,1 --Collect Filled Shimmering Vessel
step << Paladin
    >>Go back upstairs to the trainers
    .goto Silvermoon City,89.3,35.2
    .turnin 9684 >>Turn in Claiming the Light << tbc
    .turnin 63866 >>Turn in Claiming the Light << wotlk
    .accept 9685 >>Accept Redeeming the Dead
step << Paladin
    .goto Silvermoon City,82.3,58.3,12,0
    .goto Silvermoon City,79.5,56.3,10,0
    .goto Silvermoon City,80.1,60.3
    .use 24184 >>Go into the Inn, then go upstairs. Use the Shimmering Vessel on the corpse
    .complete 9685,1 --Resurrect Sangrias Stillblade (1)
step << Priest/Druid/Rogue/Paladin
    .goto Ghostlands,55.0,48.5
    .hs >> Hearth to Tranquillien
    .zoneskip Ghostlands
step << BloodElf Priest/BloodElf Rogue/BloodElf Paladin
    .goto Ghostlands,47.3,29.3
    .turnin -9135 >> Turn in Return to Quartermaster Lymel
step << Rogue
    .goto Ghostlands,47.2,34.3
    .turnin 10372 >>Turn in A Discreet Inquiry
    .accept 9491 >>Accept Greed
    >> Check Eralan for Sinister Scimitar or Throat Piercers. Buy either if they're up
step
    >> Talk to Magister Kaendris and Quallestis at the Sanctum of the Sun
    .goto Ghostlands,55.0,48.5
    .accept 9282 >> Accept The Farstrider Enclave
    .turnin 9207 >> Turn in Underlight Ore Samples
step
    >> Talk to Magister Sylastor in the camp in the mountains
    .goto Ghostlands,60.4,35.5
    .turnin 9166 >> Turn in Deliver the Plans to An'telas
    .accept 9169 >> Accept Deactivate An'owyn
step
    >> Talk to Farstider Sedina at the Farstider Enclave
    .turnin 9159,3 >> Turn in Curbing the Plague << Paladin
    .turnin 9159 >> Turn in Curbing the Plague << !Paladin
    .goto Ghostlands,72.4,32.0
step << Hunter
    #sticky
    #completewith next
    >>Buy a Reinforced Bow here if you haven't yet
    .goto Ghostlands,72.1,32.0
    .collect 3026,1 --Collect Reinforced Bow
step << Hunter
    .goto Ghostlands,72.1,32.0
    .vendor >> Sell trash & refill on Arrows
step
    >> Talk to Farstrider Solanna
    .goto Ghostlands,72.5,31.1
    .accept 9276 >> Accept Attack on Zeb'Tela
step
    >> Talk to Ranger Krenn'an and Captain Helios
    .goto Ghostlands,72.2,29.7
    .turnin -9274 >> Turn in Spirits of the Drowned
    .turnin 9146 >> Turn in Report to Captain Helios
    .accept 9214 >> Accept Shadowpine Weaponry
step
    .goto Ghostlands,72.6,31.2
    .abandon 9274 >> Abandon Spirits of the Drowned
step
    .goto Ghostlands,72.6,31.2
    >> Head up the eastern ramp and talk to Apothecary Venustus
    .accept 9275 >> Accept A Little Dash of Seasoning
step
    >>Up the western ramp and talk to Ranger Vynna
    .goto Ghostlands,71.9,32.7
    .turnin 9282 >> Turn in The Farstrider Enclave
    .accept 9161 >> Accept The Traitor's Shadow
step
    #sticky
    #label Juju
    .goto Ghostlands,66.4,28.6,40,0
    .goto Ghostlands,60.5,29.1
    >>Kill and loot trolls for Troll Juju.
    >> Burn the mummified corpses on the ground, usually in the cubbies along the wall. Try to get 8+ corpses burned before starting the escort, you may have to go into the western room
    .complete 9199,1 --Collect Troll Juju (x8)
    .complete 9193,1 --Collect Mummified Troll Remains Burned (x10)
step << Rogue
    #sticky
    #completewith Lillyend
    #label Lilatha
    >>Loot the chests around the crypt. Make sure you have 20 lockpicking skill and have looted the Gold Band. Otherwise, don't start the escort
    .complete 9491,1 --Pitted Gold Band (1)
step
    >>Run into the campfire room
    .goto Ghostlands,62.9,31.8
    .complete 9193,2 --Investigate the Amani Catacombs
step
    #label Lillyend
    #requires Lilatha
    >>ESCORT: Make sure you will complete all the quests on the way out before starting!!
    .goto Ghostlands,62.9,32.8
    .accept 9212 >> Accept Escape from the Catacombs
step << !Druid !Paladin !Priest
    >>She has 2 mobs spawn on her about 60 yards after leaving the catacombs. Ensure you finish burning corpses before leaving!
    .goto Ghostlands,67.8,28.9,40,0
    .goto Ghostlands,72.2,30.1
    .complete 9212,1 --Escort Ranger Lilatha back to the Farstrider Enclave
step << Druid/Paladin/Priest
    >>She has 2 mobs spawn on her about 60 yards after leaving the catacombs. Remember to buff her. Ensure you finish burning corpses before leaving!
    .goto Ghostlands,67.8,28.9,40,0
    .goto Ghostlands,72.1,31.8
    .complete 9212,1 --Escort Ranger Lilatha back to the Farstrider Enclave
step
    #requires Juju
    >> Talk to Captain Helios
    .goto Ghostlands,72.4,29.7
    .turnin 9212,1 >> Turn in Escape from the Catacombs << Paladin
    .turnin 9212 >> Turn in Escape from the Catacombs << !Paladin
step << Rogue
    >>Run back to Tranquillien
    .goto Ghostlands,47.2,34.3
    .turnin 9491 >>Turn in Greed
    .accept 10548 >>Accept The Sad Truth
    >> Check Eralan for Sinister Scimitar or Throat Piercers. Buy either if they're up if you didn't get them earlier
step
    >>Go to the top floor of the building. Talk to the book
    .goto Ghostlands,78.8,19.8,30,0
    .goto Ghostlands,79.6,17.6
    .turnin 9161 >> Turn in The Traitor's Shadow
    .accept 9162 >> Accept Hints of the Past
step << Rogue
    #sticky
    #completewith next
    >>Open the Primitive Chests around until you loot a Head
    .complete 10548,1 --Archaeologist's Shrunken Head (1)
step
    .goto Ghostlands,76.0,46.5
    >>Kill Trolls in the area. Loot them for Maces and Axes
    .complete 9276,1 --Kill Shadowpine Shadowcaster (x8)
    .complete 9276,2 --Kill Shadowpine Headhunter (x8)
    .complete 9214,2 --Collect Shadowcaster Mace (x3)
    .complete 9214,1 --Collect Headhunter Axe (x3)
step
    .goto Ghostlands,72.2,31.2
    .turnin 9276 >> Turn in Attack on Zeb'Tela
    .accept 9277 >> Accept Assault on Zeb'Nowa
step
    >> Head up the western ramp
    .goto Ghostlands,72.0,32.7
    .turnin 9162 >> Turn in Hints of the Past
    .accept 9172 >> Accept Report to Magister Kaendris
step << Rogue
    #completewith shrunkedheads
    #label ShrunkenHead
    >>Open the Primitive Chests around until you loot a Head.
    .complete 10548,1 --Archaeologist's Shrunken Head (1)
step
    #sticky
    #label Catlords
    .goto Ghostlands,63.0,75.0,0,0
    >>Kill Trolls in the area. Loot them for Staves and Claws
    .complete 9277,1 --Kill Shadowpine Catlord (x10)
    .complete 9277,2 --Kill Shadowpine Hexxer (x10)
    .complete 9214,3 --Collect Catlord Claws (x3)
    .complete 9214,4 --Collect Hexxer Stave (x3)
step
    .use 22796 >>In the building, behind the campfire use the Apothecary's Poison
    .goto Ghostlands,68.2,57.8
    .complete 9275,3 --Poison the Fresh Fish Rack (x1)
step
    .use 22796 >>In between the two huts use the Apothecary's Poison
    .goto Ghostlands,65.1,66.7
    .complete 9275,1 --Poison the Raw Meat Rack (x1)
step
    .use 22796 >>In between the two huts use the Apothecary's Poison
    .goto Ghostlands,63.0,75.0
    .complete 9275,2 --Poison the Smoked Meat Rack (x1)
step << Rogue
    #label shrunkedheads
    >>Finish opening the Primitive Chests around until you loot a Head.
    .complete 10548,1 --Archaeologist's Shrunken Head (1)
step
    .goto Ghostlands,65.1,66.7
    .xp 18 >> Grind til level 18
step << Priest/Mage/Druid/Paladin
    #completewith next
    >>Kill Kel'gash the Wicked. You should be able to solo him on every class by abusing line of sight (LoS) at the cylinder behind where he stands when he starts casting spells. Just be sure to have cooldowns available (and potions if you can). If you can't do it, then you can either look for a group, or skip. I HIGHLY recommend doing this quest
    .goto Ghostlands,65.1,79.2
    .complete 9215,1 --Collect Head of Kel'gash the Wicked (x1)
step << Rogue
    #sticky
    #requires ShrunkenHead
    #completewith next
    >>Kill Kel'gash the Wicked. Be sure to have potions, bandages and Evasion available. Kite him around the cylinder just behind where he stands to line of sight (LoS) his spells when he starts casting them. If you can't do it, then you can either look for a group, or skip. I HIGHLY recommend doing this quest.
    .goto Ghostlands,65.1,79.2
    .complete 9215,1 --Collect Head of Kel'gash the Wicked (x1)
step << Warlock
    #completewith next
    >>Kill Kel'gash the Wicked. You should be able to solo him by letting your pet build aggro, then loading dots up on him, as well as line of sight (LoS)ing his spells when he tries to cast on you. Be careful as he has a 100 damage instant-cast lightning shock he uses rarely. If you can't do it, then you can either look for a group, or skip. I HIGHLY recommend doing this quest
    .goto Ghostlands,65.1,79.2
    .complete 9215,1 --Collect Head of Kel'gash the Wicked (x1)
step << Hunter
    #completewith next
    >>Kill Kel'gash the Wicked. You should be able to solo him by line of sight (LoS)ing his spells when he tries to cast on you. Be careful as he has a 100 damage instant-cast lightning shock he uses rarely. If you can't do it, then you can either look for a group, or skip. I HIGHLY recommend doing this quest.
    .goto Ghostlands,65.1,79.2
    .complete 9215,1 --Collect Head of Kel'gash the Wicked (x1)
step
    #requires Catlords
    .goto Ghostlands,58.2,65.1
    >>Kill the Night Elves around the camp for a Crystal Controlling Orb.
    .collect 23191,1 --Collect Crystal Controlling Orb (x1)
step
    .use 23191 >>Use the Crystal Controlling Orb on the Moon Crystal.
    .goto Ghostlands,58.2,65.1
    .complete 9169,1 --Collect Night Elf Moon Crystal Deactivated (x1)
step
    >> Head back to Farstrider Enclave
    .goto Ghostlands,72.4,31.3
    .turnin 9277,1 >> Turn in Assault on Zeb'Nowa << Paladin
    .turnin 9277 >> Turn in Assault on Zeb'Nowa << !Paladin
step
    .isQuestComplete 9215
    .goto Ghostlands,72.4,29.7
    .turnin 9215,1 >> Turn in Bring Me Kel'gash's Head! << Hunter
    .turnin 9215 >> Turn in Bring Me Kel'gash's Head! << !Hunter
step
    .goto Ghostlands,72.4,29.7
    .turnin 9214 >> Turn in Shadowpine Weaponry
step
    >>Run up the east ramp
    .goto Ghostlands,72.6,31.5
    .turnin 9275 >> Turn in A Little Dash of Seasoning
step
    >> Head into the mountain camp above the Sanctum of the Sun
    .goto Ghostlands,65.0,41.2,60,0
    .goto Ghostlands,60.3,35.8
    .turnin 9169 >> Turn in Deactivate An'owyn
step << Rogue
    >>Run back to Tranquillien. Choose the Dagger on turnin. Save this dagger (or any dagger) as you'll need one for later
    .goto Ghostlands,47.2,34.3
    .turnin 10548 >>Turn in The Sad Truth
    >> Check Eralan for Sinister Scimitar or Throat Piercers again. Buy either if they're up if you didn't get them earlier
step
    #sticky
    #completewith endofsun
    >> Run back to Tranquillien. If Magister Darenis isn't there, come back to this step, he should respawn soon.
    .goto Ghostlands,45.9,32.1
    .accept 9151 >> Accept The Sanctum of the Sun
step
    .turnin 9193 >> Turn in Investigate the Amani Catacombs
    .goto Ghostlands,44.8,32.7
    .turnin 9199 >> Turn in Troll Juju
    .goto Ghostlands,44.8,32.3
step << Mage/Warlock/Priest
    .goto Ghostlands,47.7,32.3
    >> Purchase Apothecary's Robe. Equip it
    .collect 22986,1 --Collect Apothecary's Robe (1)
step << Rogue/Hunter/Druid/Shaman
    .goto Ghostlands,47.7,32.3
    >> Purchase Deathstalker's Vest. Equip it
    .collect 22987,1 --Collect Deathstalker's Vest (1)
step << Druid
    .cast 18960 >>Teleport to Moonglade
    .goto Moonglade,52.5,40.6
    .trainer >> Train your class spells
step << Mage/Priest/Warlock/Hunter/Shaman
    #completewith next
    .goto Ghostlands,45.4,30.5
    .fly Silvermoon >> Fly to Silvermoon City
step << Shaman wotlk
    .goto Silvermoon City,71.8,56.6
    .trainer >> Train your class spells
step << BloodElf Mage
    .goto Eversong Woods,54.4,50.7
    .turnin 9134 >> Turn in Skymistress Gloaming
    .accept 9135 >> Accept Return to Quartermaster Lymel
step << Priest
    >>You can also check for a Greater Magic Wand from the AH after training if you wish
    .goto Silvermoon City,55.4,26.8
    .trainer >> Train your class spells
step << Mage
    .goto Silvermoon City,57.2,18.9
    .trainer >> Train your class spells
step << Warlock
    .goto Silvermoon City,75.5,45.1,10,0
    .goto Silvermoon City,74.4,47.2
    >> Head into the building then go downstairs
    .trainer >> Train your class spells
step << Warlock tbc
    .goto Silvermoon City,74.0,44.8
    >> Buy books for your Voidwalker
    .collect 16357 --Collect Grimoire of Consume Shadows (x1)
    .collect 16351 --Collect Grimoire of Sacrifice (x1)
step << Hunter
    .goto Silvermoon City,82.4,26.0
    .trainer >> Train your class spells
step << Hunter tbc
    .goto Silvermoon City,82.2,28.1
    .trainer >> Train your pet's spells
step << Mage/Priest/Warlock/Hunter/Druid/Shaman
    #completewith next
    .hs >> Hearth to Tranquillien
step << BloodElf Mage
    .goto Ghostlands,47.3,29.3
    .turnin 9135 >> Turn in Return to Quartermaster Lymel
step
    #label endofsun
    .goto Ghostlands,55.1,48.7
    .turnin 9172 >> Turn in Report to Magister Kaendris
    .accept 9176 >> Accept The Twin Ziggurats
step
    >>Go upstairs in the Sanctum
    .goto Ghostlands,54.8,48.4
    .turnin 9151 >> Turn in The Sanctum of the Sun
    .isOnQuest 9151
step
    >>Go upstairs in the Sanctum
    .goto Ghostlands,54.8,48.4
    .accept 9220 >> Accept War on Deatholme
step
    >>Loot the chest in the middle of the Ziggurat
    .goto Ghostlands,40.4,49.7
    .complete 9176,1 --Collect Stone of Flame (x1)
step
    >>Loot the chest in the middle of the Ziggurat
    .goto Ghostlands,34.3,47.7
    .complete 9176,2 --Collect Stone of Light (x1)
step << !Rogue !Hunter
    .goto Ghostlands,37.8,51.9,60,0
    .goto Ghostlands,36.3,70.4,60,0
    .goto Ghostlands,37.8,51.9,60,0
    .goto Ghostlands,37.8,51.9,60,0
    .goto Ghostlands,36.3,70.4,60,0
    .goto Ghostlands,37.8,51.9,60,0
    .goto Ghostlands,37.8,51.9,60,0
    .goto Ghostlands,36.3,70.4,60,0
    .goto Ghostlands,37.8,51.9
    >>Grind down The Dead Scar, killing mobs and looting them for Rotting Hearts and Spinal Dust. Be aware that Dreadbone Sentinels interrupt (Shield Bash)
    *Deathcage Sorcerer and Dreadbone Sentinels drop the Spinal Dust. Risen Stalkers and Ghouls drop the Hearts.
    .collect 22641,10 --Collect Rotting Heart (x10)
    .collect 22642,10 --Collect Spinal Dust (x10)
step
    .goto Ghostlands,31.7,74.3,40,0
    .goto Ghostlands,38.4,77.5,40,0
    .goto Ghostlands,31.7,74.3,40,0
    .goto Ghostlands,31.7,74.3,40,0
    .goto Ghostlands,38.4,77.5,40,0
    .goto Ghostlands,31.7,74.3,40,0
    .goto Ghostlands,31.7,74.3,40,0
    .goto Ghostlands,38.4,77.5,40,0
    .goto Ghostlands,31.7,74.3
    >>Kill Eyes, Nerubis and Wailers in Deatholme
    .complete 9220,1 --Kill Eye of Dar'Khan (x5)
    .complete 9220,2 --Kill Nerubis Centurion (x6)
    .complete 9220,3 --Kill Wailer (x6)
step
    #completewith next
    .hs >> Hearth to Tranquillien
    .cooldown item,6948,>0
step
    >>Return to Tranquillien. Go upstairs
    .goto Ghostlands,48.9,31.3
    .accept 9216 >>Accept Rotting Hearts
    .accept 9218 >>Accept Spinal Dust
    .turnin 9216 >>Turn in Rotting Hearts
    .turnin 9218 >>Turn in Spinal Dust
step
    .goto Ghostlands,55.1,48.8
    .turnin 9176 >> Turn in The Twin Ziggurats
    .accept 9167 >> Accept The Traitor's Destruction
step
    >>Go Upstairs
    .goto Ghostlands,54.8,48.6
    .turnin 9220 >> Turn in War on Deatholme
    .accept 9170 >> Accept Dar'Khan's Lieutenants
    .accept 9877 >> Accept A Restorative Draught
step
    >>Return to Tranquillien
    .goto Ghostlands,47.6,34.9
    .turnin 9877 >> Turn in A Restorative Draught
    .accept 9164 >>Accept Captives at Deatholme
step
    .goto Ghostlands,46.4,56.5
    .turnin 9281 >> Turn in Clearing the Way
step
    #completewith Jurion
    >>If you're able to find a group, kill Knucklerot. He spawns at the Howling Ziggurat, Patrols west to Windrunner Village, then across the river toward Goldenmist Village.
    .complete 9156,1 --Collect Knucklerot's Head (x1)
    .unitscan Knucklerot
step
    #completewith next
    >>Kill and loot Luzran for his Head. If you're unable to find a group or solo him, skip this quest. He patrols up and down The Dead Scar
    .unitscan Luzran
    .complete 9156,2 --Collect Luzran's Head (x1)
step
    #label Jurion
    >>Go inside the crypt. Kill Jurion inside. Talk to Enith (the corpse on the ground)
    .complete 9170,3 --Kill Jurion the Deceiver (x1)
    .goto Ghostlands,32.1,74.5,-1
    .complete 9164,1 --Apothecary Enith Rescued
    .goto Ghostlands,32.1,73.9,-1
    .skipgossip
step
    >>Kill Mirdoran
    .goto Ghostlands,37.4,79.3
    .complete 9170,1 --Kill Mirdoran the Fallen (x1)
step
    .goto Ghostlands,38.4,84.0,20 >>Go toward the Slaughterhouses
step
    #label Varnis
    .goto Ghostlands,41.0,83.2
    >>Talk to Apprentice Varnis (the corpse on the table)
    .complete 9164,2 --Apprentice Varnis Rescued
    .skipgossip
step
    #label Vedoran
    .goto Ghostlands,32.8,89.9,0,0
    >>Talk to Ranger Vedoran (the corpse on the table)
    .complete 9164,3 --Ranger Vedoran Rescued
    .skipgossip
step
    #completewith next
    >> Kill Borgoth. He's a big abomination that can spawn inside of one of the two Slaughterhouses
    .goto Ghostlands,41.3,83.0,30,0
    .complete 9170,2 --Kill Borgoth the Bloodletter (x1)
    .unitscan Borgoth the Bloodletter
step
    >> Kill Masophet the Black. He's inside one of the ziggurats
    .goto Ghostlands,35.8,89.1,30,0
    .goto Ghostlands,29.3,88.9
    .complete 9170,4 --Kill Masophet the Black (x1)
    .unitscan Masophet the Black
step
    >> Kill Borgoth. He's a big abomination that can spawn inside of one of the two Slaughterhouses
    .goto Ghostlands,32.7,90.3,30,0
    .goto Ghostlands,41.3,83.0,30,0
    .goto Ghostlands,32.7,90.3
    .complete 9170,2 --Kill Borgoth the Bloodletter (x1)
    .unitscan Borgoth the Bloodletter
step
    #requires Vedoran
    >>Kill Dar'Khan inside the Ziggurat. You may need a group for this quest. You can skip it, but we HIGHLY recommend doing this quest due to how much of an upgrade the weapons are. You can LoS his abilities around the bottom of the staircase in the main room
    *You can use mana tap to ranged pull mobs out of the room << BloodElf tbc
    *Be sure to use the weapon you got from an earlier quest then swap to your normal weapon
    .goto Ghostlands,33.0,81.3
    .complete 9167,1 --Collect Dar'Khan's Head (x1)
step
    #completewith next
    .deathskip >> Die and respawn at the Spirit Healer
step
    >>Choose the 2h sword as it's incredible for melee damage/melee weaving (and the bow is too fast) << Hunter tbc
    .goto Ghostlands,55.2,48.8
    .turnin 9167 >> Turn in The Traitor's Destruction << !Paladin
    .turnin 9167,4 >> Turn in The Traitor's Destruction << Paladin
    .isQuestComplete 9167
step << BloodElf
    .accept 9328 >> Accept Hero of the Sin'dorei
    .isQuestTurnedIn 9167
step << !BloodElf
    .accept 9811 >> Accept Friend of the Sin'dorei
    .isQuestTurnedIn 9167
step
    #label borgothturnin
    .goto Ghostlands,54.9,48.5
    >> Head upstairs
    .turnin 9170 >> Turn in Dar'Khan's Lieutenants
    .turnin 9164 >>Turn in Captives at Deatholme
step
    #sticky
    #completewith WantedOverrideFix
    .hs >> Hearth or run to Tranquillien
    .cooldown item,6948,>0
step
    .isQuestComplete 9156
    .goto Ghostlands,46.1,33.5
    .turnin 9156,1 >> Turn in Wanted: Knucklerot and Luzran << Warlock/Priest/Mage
    .turnin 9156,2 >> Turn in Wanted: Knucklerot and Luzran << Rogue/Paladin
    .turnin 9156 >> Turn in Wanted: Knucklerot and Luzran << !Warlock !Priest !Mage !Rogue !Paladin
    .isQuestComplete 9156
step
    .goto Ghostlands,47.7,32.3
    >> Buy the Tranquillien Champion's Cloak. Equip it
    .collect 22990,1 --Collect Tranquillien Champion's Cloak (1)
    .isQuestTurnedIn 9167
step
    .goto Ghostlands,31.7,74.3
    .xp 20 >>Grind to 20
step
    #label WantedOverrideFix
step
    #completewith next
    .goto Ghostlands,45.5,30.5
    .fly Silvermoon >> Fly to Silvermoon City
step << Shaman
    .goto Silvermoon City,71.8,56.6
    .trainer >> Train your class spells
step << BloodElf Paladin
    .goto Silvermoon City,54.0,71.0
    .turnin 9134 >> Turn in Skymistress Gloaming
step << Druid
    .goto Silvermoon City,71.5,55.8
    .trainer >> Train your class spells
.train 5188 >>Train Healing Touch r4
step << Priest
    .goto Silvermoon City,55.4,26.8
    .trainer >> Train your class spells
step << Mage
    .goto Silvermoon City,57.2,18.9
    .trainer >> Train your class spells
step << Mage
    .goto Silvermoon City,58.1,20.9
    .money <0.4000
    .train 32272 >> Train Teleport: Silvermoon
step << Rogue
    .goto Silvermoon City,79.7,52.1
    .trainer >> Train your class spells
    .train 8676 >>Train Ambush, You need this for a quest later
    .train 1943 >>Train Rupture, You need this for a quest later
--ZX come back to this later
step << Warlock
    .goto Silvermoon City,75.3,44.5,20,0
    .goto Silvermoon City,73.1,46.9
    >>Enter the building. Go downstairs
    .trainer >> Train your class spells
step << Warlock tbc
    >> Purchase Grimoire of Torment (Rank 2)
    .collect 16346,1
step << Hunter
    .goto Silvermoon City,82.2,28.1
    .trainer >> Train your pet spells
step << Hunter
    .goto Silvermoon City,82.4,26.0
    .trainer >> Train your class spells
step << Hunter
    .money <0.6032
    .goto Silvermoon City,86.2,35.4
    >>Buy a Heavy Recurve Bow from Celana
    .collect 3027,1 --Heavy Recurve Bow
step << Paladin
    .goto Silvermoon City,89.3,35.2
    .turnin 9685 >>Turn in Redeeming the Dead
step << Paladin
    .goto Silvermoon City,91.2,36.9
    .trainer >> Train your class spells
step
    #label Hero
    .goto Silvermoon City,53.8,20.5
    .turnin 9328 >> Turn in Hero of the Sin'dorei << BloodElf
    .accept 9621 >> Accept Envoy to the Horde << BloodElf
    .turnin 9811 >> Turn in Friend of the Sin'dorei << !BloodElf
    .accept 9812 >> Accept Envoy to the Horde << !BloodElf
    .isQuestTurnedIn 9167
step
    .goto Silvermoon City,49.47,15.03
    .cast 25649 >>Enter Silvermoon. Take the Orb of Translocation to Undercity
step << Warlock
    .isOnQuest 10605
    .abandon 10605 >>Abandon Carendin Summons
step << Warlock
    #completewith Envoy
    +Do NOT take your warlock quest in Undercity. You're going to do it in Orgrimmar as the questline is a lot better
step
    #completewith next
    .goto Undercity,66.0,44.0,35 >>Take one of the lifts down to Undercity
step << !Scourge
    .goto Undercity,63.3,48.6
    .fp Undercity >> Get the Undercity flight path
step << Mage
    .goto Undercity,84.2,15.6
    .train 3563 >>Train Teleport: Undercity
step << BloodElf
    #label Envoy
    .goto Undercity,52.0,64.6,30,0
    .goto Undercity,57.8,91.8
     >>Enter the Royal Quarter. Speak to Lady Sylvanas Windrunner
    .turnin 9621 >> Turn in Envoy to the Horde
    .accept 9626 >> Accept Meeting the Warchief
    .isQuestTurnedIn 9167
step << BloodElf
    .goto Undercity,57.8,91.8
     >> Speak to Lady Sylvanas Windrunner
    .accept 9425 >> Accept Report to Tarren Mill
    .turnin 9180 >> Turn in Journey to Undercity
step << !BloodElf
    .goto Undercity,57.8,91.8
    >> Speak to Lady Sylvanas Windrunner
    .turnin 9812 >> Turn in Envoy to the Horde
    .accept 9813 >> Accept Meeting the Orcs
    .turnin 9177 >> Turn in Journey to Undercity
    .isQuestTurnedIn 9167
step
    .goto Undercity,55.20,90.91
    .goto Undercity,67.88,14.97,30 >>Go to the edge of the main platform and perform a Logout Skip by positioning your character until it looks like they're floating, then logging out and back in.
    .link https://www.youtube.com/watch?v=jj85AXyF1XE >> Open this tab when running to the turn in. CLICK HERE for an example
step
    .goto Tirisfal Glades,60.7,58.8
    .zone Durotar >> Exit Undercity and go to the Zeppelin tower. Take the zeppelin to Durotar
]])
