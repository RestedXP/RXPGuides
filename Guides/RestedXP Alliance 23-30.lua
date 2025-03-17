local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#tbc
#wotlk
<< Alliance
#name 23-24 Wetlands
#version 1
#group RestedXP Alliance 20-32
#next 24-27 Redridge/Duskwood
#xprate <1.5

step << Warrior tbc
    #sticky
    #completewith exit1
    .goto StormwindClassic,64.1,61.2,0
    .goto StormwindClassic,46.7,79.0,0
    >>Check the the AH, the flower shop at the trade district and the alchemy shop at the mage district and buy some Liferoot, you will need 8 for a quest later, skip this step if you already have it
    .collect 3357,8 --Collect Liferoot (x8)
    #xprate <1.5
step << Human !Warlock !Paladin wotlk
	.goto Elwynn Forest,84.3,64.9
	.train 33388 >> Head to Eastvale in Elwynn Forest and train/purchase your mount
	.money <5.0
    .skill riding,1,1
step << Human !Warlock !Paladin wotlk
    .goto Redridge Mountains,30.6,59.4
    .fp Redridge Mountains >> Get the Redridge Mountains flight path
    .fly Stormwind >> Fly to Stormwind City
step << Paladin wotlk
	.goto StormwindClassic,38.6,32.8
	.trainer >> Train your class spells
step << Priest wotlk
	.goto StormwindClassic,38.5,26.8
	.trainer >> Train your class spells. Skip this if you've just trained in the Temple of the Moon.
step << Paladin wotlk
    .goto StormwindClassic,40.1,30.0
    >>Speak to Duthorian Rall and right click on the Tome of Valor provided
    .accept 1649 >>Accept The Tome of Valor
>>Talk to |cRXP_FRIENDLY_Duthorian Rall|r
    .turnin 1649 >>Turn in The Tome of Valor
.target Duthorian Rall
    .accept 1650 >>Accept The Tome of Valor
step << Warlock wotlk
    .goto StormwindClassic,25.3,78.7
    .trainer >> Train your class spells
step << Warlock wotlk
    .isOnQuest 1738
    .goto StormwindClassic,25.3,78.7
>>Talk to |cRXP_FRIENDLY_Gakin the Darkbinder|r
    .turnin 1738 >>Turn in Heartswood
.target Gakin the Darkbinder
    .accept 1739 >>Accept The Binding
step << Warlock wotlk
    .isOnQuest 1739
    .goto StormwindClassic,25.2,77.5
    >>Go down into the crypt and use the quest item provided at the summoning circle
    .complete 1739,1 --Summoned Succubus (1)
step << Warlock wotlk
    .isQuestComplete 1739
    .goto StormwindClassic,25.4,78.7
.target Gakin the Darkbinder
>>Talk to |cRXP_FRIENDLY_Gakin the Darkbinder|r
    .turnin 1739 >>Turn in The Binding
step << Mage wotlk
    .goto StormwindClassic,39.6,79.6
    .train 3561>>Train Teleport: Stormwind
    .trainer >> Train your class spells
step << wotlk
    .goto StormwindClassic,52.61,65.71
    .home >> Set your Hearthstone to Stormwind City
step << !Human
    .goto Stormwind City,66.4,62.1
    .fp Stormwind >> Learn the Stormwind Flight Path
step << Rogue wotlk
	.goto StormwindClassic,74.6,52.8
	.trainer >> Train your class spells
step << Warrior wotlk
	.goto StormwindClassic,78.6,45.8
	.trainer >> Go upstairs. Train your class spells
step << Rogue tbc
    #sticky
    .goto StormwindClassic,75.8,60.1
    >> Make sure to train Lockpicking and Pick Pocket
.target Renzik "The Shiv"
>>Talk to |cRXP_FRIENDLY_Renzik "The Shiv"|r
    .accept 2281 >> Accept Redridge Rendezvous
.target Master Mathias Shaw
>>Talk to |cRXP_FRIENDLY_Master Mathias Shaw|r
    .accept 2360 >> Accept Mathias and the Defias
step << Rogue
	.goto StormwindClassic,78.3,57.0
    .train 1804>>Make sure to train lockpicking
step << Rogue tbc
    .goto StormwindClassic,52.6,65.6
    .home >> Set your Hearthstone to Stormwind City
step << Draenei wotlk
    .goto StormwindClassic,78.4,18.3
.target Emissary Taluun
>>Talk to |cRXP_FRIENDLY_Emissary Taluun|r
    .accept 9429 >> Accept Travel to Darkshire
step << Hunter wotlk
	.goto StormwindClassic,61.7,15.4
	.trainer >> Train your class spells
step << wotlk
    .goto StormwindClassic,53.62,59.76,30,0
    .goto StormwindClassic,55.25,7.08
    .vendor 5519>> Check Billibub in the Dwarven District for a Bronze Tube. Buy one if it's available
    .collect 4371,1,175,1,1
    .bronzetube
step << wotlk
    #label exit1
    .goto StormwindClassic,63.9,8.3
    .link https://www.youtube.com/watch?v=M_tXROi9nMQ >> Click here for a logout skip inside the tram
    .zone Ironforge >>Enter the Deeprun Tram and cross the Tram into Ironforge
    .zoneskip Dun Morogh
step << wotlk
    #sticky
    #completewith exit2
    .vendor 5175>>Buy a Bronze Tube from Gearcutter Cogspinner (limited supply), skip this step if he doesn't have it or if you already have one
    .goto Ironforge,67.86,42.87
    .collect 4371,1,175,1,1
	.bronzetube
step << !Dwarf wotlk !Gnome wotlk--Not needed, including just in case someone forgets to set HS to SW
    .goto Ironforge,55.501,47.742
    .fp Ironforge>> Get the Ironforge Flight Path
step << Hunter/Warrior/Paladin/Shaman/Rogue
	.goto Ironforge,61.34,89.25
	.train 197 >> Train 2H Axes << !Rogue
	.train 266 >> Train Guns << Hunter/Warrior/Rogue
    .train 199 >> Train 2H Maces << Warrior/Shaman
    .train 54 >> Train Maces << Rogue/Shaman/wotlk Warrior
    .train 44 >> Train Axes << Shaman/wotlk Warrior
step << Mage wotlk
    .goto Ironforge,25.5,7.1
    .train 3562>>Train Teleport: Ironforge
step << wotlk !Dwarf !Gnome
    #sticky
    .goto Dun Morogh,53.2,35.3
    .zone Dun Morogh >> Head outside to Dun Morogh
    .zoneskip Ironforge,1
step << wotlk !Dwarf !Gnome
    #completewith next
    .goto Dun Morogh,59.5,42.8,40,0
    .goto Dun Morogh,60.4,44.1,40,0
    .goto Dun Morogh,61.1,44.1,40,0
    .goto Dun Morogh,61.2,42.3,40,0
    .goto Dun Morogh,60.8,40.9,40,0
    .goto Dun Morogh,59.0,39.5,40,0
    .goto Dun Morogh,60.3,38.6,40,0
    .goto Dun Morogh,61.7,38.7,40,0
    .goto Dun Morogh,65.7,21.6,40,0
    .goto Dun Morogh,65.8,12.5,40,0
    .goto Dun Morogh,65.6,10.8,40,0
    .goto Dun Morogh,66.5,10.0,40,0
    .goto Dun Morogh,66.9,8.5,40,0
    .goto Wetlands,20.6,67.2,50,0
    .goto Wetlands,17.7,67.7,40,0
    .goto Wetlands,16.8,65.3,40,0
    .goto Wetlands,15.1,64.0,40,0
    .goto Wetlands,12.1,60.3,40,0
    >>Do the Deathless Dun Morogh -> Wetlands skip
    .link https://www.youtube.com/watch?v=9afQTimaiZQ >> CLICK HERE for video reference
    .goto Wetlands,12.1,60.3,80 >> Travel to Menethil Harbor
step << wotlk !Dwarf !Gnome
    .goto Wetlands,9.5,59.7
    .fp Menethil >> Get the Menethil Harbor flight path
step << Dwarf !Paladin wotlk
	#sticky
	#completewith next
	.goto Dun Morogh,63.5,50.6
	.money <5.00
	.skill riding,75 >> Head to Dun Morogh, train riding and purchase your mount.
step << Gnome !Warlock wotlk
	#sticky
	#completewith next
	.goto Dun Morogh,49.2,48.1
	.money <5.00
	.skill riding,75 >> Head to Dun Morogh, train riding and purchase your mount.
step << Gnome wotlk/Dwarf wotlk
    #completewith next
    .goto Ironforge,55.501,47.742
    .fly Wetlands >> Fly to Wetlands
step << Mage wotlk
    .goto Wetlands,10.7,60.9
    .home >> Set your Hearthstone to Deepwater Tavern
step
    .goto Wetlands,8.310,58.533
.target Karl Boran
>>Talk to |cRXP_FRIENDLY_Karl Boran|r
    .accept 279 >> Accept Claws from the Deep
step
    .goto Wetlands,8.6,55.8
.target James Halloran
>>Talk to |cRXP_FRIENDLY_James Halloran|r
    .accept 484 >> Accept Young Crocolisk Skins
step
    .goto Wetlands,10.8,59.6
.target First Mate Fitzsimmons
>>Talk to |cRXP_FRIENDLY_First Mate Fitzsimmons|r
    .accept 288 >> Accept The Third Fleet
    .accept 463 >> Accept The Greenwarden
step
    .goto Wetlands,10.7,60.9
	>> Buy a Flagon of Mead from the Innkeeper
    .complete 288,1 --Collect Flagon of Mead (x1)
step
    .goto Wetlands,10.84,60.43
	>>Go upstairs and talk to Archaeologist Flagongut
>>Talk to |cRXP_FRIENDLY_Archaeologist Flagongut|r
	.turnin 942 >>Turn in The Absent Minded Prospector
.target Archaeologist Flagongut
	.accept 943 >>Accept The Absent Minded Prospector
    .isQuestTurnedIn 741
step
    .goto Wetlands,10.8,59.7
.target First Mate Fitzsimmons
>>Talk to |cRXP_FRIENDLY_First Mate Fitzsimmons|r
    .turnin 288 >> Turn in The Third Fleet
step << Hunter
    .goto Wetlands,11.1,58.3
    .vendor >> Repair and restock on arrows
step
    .goto Wetlands,11.7,58.0
.target Sida
>>Talk to |cRXP_FRIENDLY_Sida|r
    .accept 470 >> Accept Digging Through the Ooze
step
    #sticky
    #completewith exit1
    .vendor 1448>>Head to the keep and buy a Bronze Tube from Neal Allen (limited supply), skip this step if he doesn't have it or if you already have one
    .goto Wetlands,10.6,56.8
    .collect 4371,1,175,1,1
    .bronzetube
step
    .goto Wetlands,9.9,57.4
	>>Go upstairs inside the keep
.target Captain Stoutfist
>>Talk to |cRXP_FRIENDLY_Captain Stoutfist|r
    .accept 464 >> Accept War Banners
step
    .goto Wetlands,11.503,52.134
.target Tarrel Rockweaver
>>Talk to |cRXP_FRIENDLY_Tarrel Rockweaver|r
    .accept 305 >> Accept In Search of The Excavation Team
step
	#sticky
	#label crocs
    #completewith endofcrocc
	>> Kill Young Wetlands Crocolisks between quests. Loot them for their Skin
    .complete 484,1 --Collect Young Crocolisk Skin (x4)

step
    #label exit1
    .goto Wetlands,14.1,41.5,70,0
    .goto Wetlands,16.7,39.7,70,0
    .goto Wetlands,18.8,40.0
    >>Kill Gobbler, he patrols around the southern murloc camps
    .complete 279,2 --Collect Gobbler's Head (x1)
    .complete 279,1 --Kill Bluegill Murloc (x12)
	.unitscan Gobbler
step
    #sticky
    #completewith next
    .vendor 2682>>Buy a Bronze Tube from Fradd Swiftgear (limited supply), skip this step if he doesn't have it or if you already have one
    .goto Wetlands,26.4,25.8
    .collect 4371,1,175,1,1
	.bronzetube
step
    #xprate <1.5
	.goto Wetlands,34.3,41.2,60,0
    .goto Wetlands,38.179,50.889
.target Ormer Ironbraid
>>Talk to |cRXP_FRIENDLY_Ormer Ironbraid|r
    .accept 294 >> Accept Ormer's Revenge
step
    .goto Wetlands,38.8,52.3
>>Talk to |cRXP_FRIENDLY_Merrin Rockweaver|r
    .turnin 305 >> Turn in In Search of The Excavation Team
.target Merrin Rockweaver
    .accept 306 >> Accept In Search of The Excavation Team
step << Hunter/Warlock
    .goto Wetlands,24.7,48.6
	>> Kill raptors in the area
    .complete 294,1 --Kill Mottled Raptor (x10)
    .complete 294,2 --Kill Mottled Screecher (x10)
step << Hunter/Warlock
	.goto Wetlands,34.3,41.4,80,0
    .goto Wetlands,38.179,50.889
>>Talk to |cRXP_FRIENDLY_Ormer Ironbraid|r
    .turnin 294 >> Turn in Ormer's Revenge
.target Ormer Ironbraid
    .accept 295 >> Accept Ormer's Revenge
step << Hunter/Warlock
	.goto Wetlands,34.3,41.4,80,0
    .goto Wetlands,34.6,48.0
	>> Kill raptors in the area
    .complete 295,1 --Kill Mottled Scytheclaw (x10)
    .complete 295,2 --Kill Mottled Razormaw (x10)
step << Hunter/Warlock
    .goto Wetlands,38.179,50.889
>>Talk to |cRXP_FRIENDLY_Ormer Ironbraid|r
    .turnin 295 >> Turn in Ormer's Revenge
.target Ormer Ironbraid
    .accept 296 >> Accept Ormer's Revenge
step << Hunter/Warlock
    .goto Wetlands,31.5,48.9,50,0
    .goto Wetlands,33.3,51.5
	>>Kill Sarltooth atop the hill. Loot him for his Talon. Be careful as he Thrashes and has a 6 minute respawn.
    *Note: He can very very rarely be found patroling the quarry below.
    .complete 296,1 --Collect Sarltooth's Talon (x1)
step << Hunter/Warlock
    .goto Wetlands,38.179,50.889
.target Ormer Ironbraid
>>Talk to |cRXP_FRIENDLY_Ormer Ironbraid|r
    .turnin 296 >> Turn in Ormer's Revenge
step
	.goto Wetlands,34.3,41.2,60,0
    .goto Wetlands,44.8,43.9
	>>Kill Dragonmaw Orcs
    .complete 464,1 --Collect Dragonmaw War Banner (x8)
step
    .goto Wetlands,49.915,39.367
.target Einar Stonegrip
>>Talk to |cRXP_FRIENDLY_Einar Stonegrip|r
    .accept 469 >> Accept Daily Delivery
step << Warrior
    #sticky
    #completewith next
    .goto Wetlands,50.2,37.8
    .vendor 8305>>Check the herb vendor and buy some Liferoot, you will need 8 for a quest later, skip this step if you already have it
    .collect 3357,8,0,1,1 --Collect Liferoot (x8)
    #xprate <1.5
step
    #requires crocs
    .goto Wetlands,56.371,40.401
.target Rethiel the Greenwarden
>>Talk to |cRXP_FRIENDLY_Rethiel the Greenwarden|r
    .turnin 463 >> Turn in The Greenwarden
step
    .goto Wetlands,56.371,40.401
.target Rethiel the Greenwarden
>>Talk to |cRXP_FRIENDLY_Rethiel the Greenwarden|r
    .accept 276 >> Accept Tramping Paws
    .maxlevel 23
step
    .goto Wetlands,63.9,62.7,70,0
    .goto Wetlands,62.4,69.5,70,0
    .goto Wetlands,61.5,72.2,70,0
    .goto Wetlands,55.7,75.1
	>>Kill Mosshide Gnolls and Mongrels in the area. The gnolls are more commonly found outside the camps
    .complete 276,1 --Kill Mosshide Gnoll (x15)
    .complete 276,2 --Kill Mosshide Mongrel (x10)
    .isOnQuest 276
step
    #requires crocs
    .goto Wetlands,56.4,40.3
.target Rethiel the Greenwarden
>>Talk to |cRXP_FRIENDLY_Rethiel the Greenwarden|r
    .turnin 276 >> Turn in Tramping Paws
    .isQuestComplete 276
step
    #label endofcrocc
    .goto Wetlands,56.4,40.3
.target Rethiel the Greenwarden
>>Talk to |cRXP_FRIENDLY_Rethiel the Greenwarden|r
    .accept 277 >> Accept Fire Taboo
    .isQuestTurnedIn 276
step << NightElf/Draenei/Human wotlk
    #completewith next
    .goto Wetlands,53.7,72.3,75 >> The path to Loch Modan starts here
step << NightElf/Draenei/Human wotlk
    .goto Loch Modan,25.4,10.6
    .zone Loch Modan >> Cross the tunnel into Loch Modan
step << NightElf/Draenei/Human wotlk
    .goto Loch Modan,46.0,13.3
.target Chief Engineer Hinderweir VII
>>Talk to |cRXP_FRIENDLY_Chief Engineer Hinderweir VII|r
    .accept 250 >> Accept A Dark Threat Looms
    .maxlevel 23
step << NightElf/Draenei/Human wotlk
    .goto Loch Modan,56.1,13.3
    >>Click on the Suspicious Barrel
    .turnin 250 >> Turn in A Dark Threat Looms
    .accept 199 >> Accept A Dark Threat Looms
    .maxlevel 23
step << NightElf/Draenei/Human wotlk
    .goto Loch Modan,46.0,13.3
.target Chief Engineer Hinderweir VII
>>Talk to |cRXP_FRIENDLY_Chief Engineer Hinderweir VII|r
    .turnin 199 >> Turn in A Dark Threat Looms
    .isOnQuest 199
step << NightElf/Draenei/Human wotlk
    .goto Loch Modan,33.938,50.954
    .fp Thelsamar >> Get the Thelsamar flight path
step << wotlk
    #label wettylandy
    .goto Wetlands,9.5,59.7
    .hs >> Hearth to Stormwind << !Mage
    .hs >> Hearth to Menethil << Mage
    .cooldown item,6948,>0
step << wotlk
    .goto Wetlands,9.5,59.7
    >>Return to Menethil Harbor
    .cooldown item,6948,<0
step
    .zoneskip Wetlands,1
    .goto Wetlands,8.4,58.5
>>Talk to |cRXP_FRIENDLY_Karl Boran|r
    .turnin 279 >> Turn in Claws from the Deep
.target Karl Boran
    .accept 281 >> Accept Reclaiming Goods
step
    .zoneskip Wetlands,1
    .goto Wetlands,8.6,55.8
.target James Halloran
>>Talk to |cRXP_FRIENDLY_James Halloran|r
    .turnin 469 >> Turn in Daily Delivery
    .isOnQuest 469
step
    .goto Wetlands,8.6,55.8
.target James Halloran
>>Talk to |cRXP_FRIENDLY_James Halloran|r
    .turnin 484 >> Turn in Young Crocolisk Skins
    .isOnQuest 484
    .zoneskip Wetlands,1
step
    .goto Wetlands,8.6,55.8
.target James Halloran
>>Talk to |cRXP_FRIENDLY_James Halloran|r
    .accept 471 >> Accept Apprentice's Duties
    .isQuestTurnedIn 484
    .zoneskip Wetlands,1
step << Mage wotlk
    .zone Stormwind City >> Teleport to Stormwind
step
    .zoneskip Wetlands,1
    .goto Wetlands,9.5,59.7
    >> Hearth if your hearthstone is set to Stormwind
    .fly Stormwind >> Fly to Stormwind City
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
<< Alliance
#name 24-27 Redridge/Duskwood
#version 1
#group RestedXP Alliance 20-32
#next 27-30 Wetlands/Hillsbrad;28-30 Duskwood
step << Warrior
    #sticky
    #completewith exit
    .goto StormwindClassic,64.1,61.2,0
    .goto StormwindClassic,46.7,79.0,0
    >>Check the the AH, the flower shop at the trade district and the alchemy shop at the mage district and buy some Liferoot, you will need 8 for a quest later, skip this step if you already have it
    .collect 3357,8 --Collect Liferoot (x8)
    #xprate <1.5
step << Paladin
	.goto StormwindClassic,38.6,32.8
	.trainer >> Train your class spells
step << Priest
	.goto StormwindClassic,38.5,26.8
	.trainer >> Train your class spells
step << Paladin
    .goto StormwindClassic,40.1,30.0
    >>Speak to Duthorian Rall and right click on the Tome of Valor provided
    .accept 1649 >>Accept The Tome of Valor
>>Talk to |cRXP_FRIENDLY_Duthorian Rall|r
    .turnin 1649 >>Turn in The Tome of Valor
.target Duthorian Rall
    .accept 1650 >>Accept The Tome of Valor
step << Warlock
    .goto StormwindClassic,25.3,78.7
    .trainer >> Train your class spells
step << Warlock
    .isOnQuest 1738
    .goto StormwindClassic,25.3,78.7
>>Talk to |cRXP_FRIENDLY_Gakin the Darkbinder|r
    .turnin 1738 >>Turn in Heartswood
.target Gakin the Darkbinder
    .accept 1739 >>Accept The Binding
step << Warlock
    .isOnQuest 1739
    .goto StormwindClassic,25.2,77.5
    >>Go down into the crypt and use the quest item provided at the summoning circle
    .complete 1739,1 --Summoned Succubus (1)
step << Warlock
    .isQuestComplete 1739
    .goto StormwindClassic,25.4,78.7
.target Gakin the Darkbinder
>>Talk to |cRXP_FRIENDLY_Gakin the Darkbinder|r
    .turnin 1739 >>Turn in The Binding
step << Mage
    .goto StormwindClassic,39.6,79.6
    .train 3561>>Train Teleport: Stormwind
    .trainer >> Train your class spells
step << Rogue
    >> Make sure you train lockpicking and pickpocketing
	.goto StormwindClassic,74.6,52.8
	.trainer >> Train your class spells
step << Warrior
	.goto StormwindClassic,78.6,45.8
	.trainer >> Go upstairs. Train your class spells
step << Rogue tbc
    #sticky
    .goto StormwindClassic,75.8,60.1
.target Renzik "The Shiv"
>>Talk to |cRXP_FRIENDLY_Renzik "The Shiv"|r
    .accept 2281 >> Accept Redridge Rendezvous
.target Master Mathias Shaw
>>Talk to |cRXP_FRIENDLY_Master Mathias Shaw|r
    .accept 2360 >> Accept Mathias and the Defias
step << Rogue tbc
	.goto StormwindClassic,78.3,57.0
    .train 1804>>Make sure to train lockpicking
step << Rogue tbc
    .goto StormwindClassic,52.6,65.6
    .home >> Set your Hearthstone to Stormwind City
step << Draenei
    .goto StormwindClassic,78.4,18.3
.target Emissary Taluun
>>Talk to |cRXP_FRIENDLY_Emissary Taluun|r
    .accept 9429 >> Accept Travel to Darkshire
step << Hunter
	.goto StormwindClassic,61.7,15.4
	.train 14323 >> Train your class spells
step
    .goto StormwindClassic,53.62,59.76,30,0
    .goto StormwindClassic,55.25,7.08
    .vendor 5519>> Check Billibub in the Dwarven District for a Bronze Tube. Buy one if it's available
    .collect 4371,1,175,1,1
    .bronzetube
step << skip --Not needed, going from SW -> Duskwood later in the guide after doing the Goldshire inn quest
	.goto StormwindClassic,62.5,62.3,30,0
	.goto StormwindClassic,66.3,62.1
    .fp Stormwind >> Get the Stormwind flight path
step << Shaman
	.goto StormwindClassic,61.9,84.0
	.trainer >> Train your class spells
step << Human !Warlock wotlk !Paladin wotlk
    .goto Elwynn Forest,65.2,69.8
	>>Head to the top of the Tower of Azora in Elwynn Forest
.target Theocritus
>>Talk to |cRXP_FRIENDLY_Theocritus|r
    .accept 94 >> Accept A Watchful Eye
step << Human !Warlock !Paladin wotlk
	.goto Elwynn Forest,84.3,64.9
	.train 33388 >> Head to Eastvale Logging Camp in Elwynn Forest and train/purchase your mount
	.money <5.0
    .skill riding,1,1
step << Human Paladin/Human Warlock
	.goto StormwindClassic,62.5,62.3,30,0
	.goto StormwindClassic,66.3,62.1
    .fly Redridge >> Fly to Redridge Mountains
    .zoneskip Elwynn Forest
step << !Human
    .goto Elwynn Forest,65.2,69.8
	>>Head to the top of the Tower of Azora. You do NOT need to get the Stormwind Flight Path. We will get it later.
.target Theocritus
>>Talk to |cRXP_FRIENDLY_Theocritus|r
    .accept 94 >> Accept A Watchful Eye
step
    #label exit
    .goto Redridge Mountains,17.4,69.6
	>>Talk to Guard Parker in Redridge Mountains
.target Guard Parker
>>Talk to |cRXP_FRIENDLY_Guard Parker|r
    .accept 244 >> Accept Encroaching Gnolls
step
	#sticky
	#label LakeshireFP
	.goto Redridge Mountains,30.5,59.4,-1
    .fp Redridge >> Get the Redridge Mountains flight path
step
    .goto Redridge Mountains,30.8,60.1,-1
.target Deputy Feldon
>>Talk to |cRXP_FRIENDLY_Deputy Feldon|r
    .turnin 244 >> Turn in Encroaching Gnolls
step
	#requires LakeshireFP
    .goto Redridge Mountains,33.4,49.1
.target Marshal Marris
>>Talk to |cRXP_FRIENDLY_Marshal Marris|r
    .accept 20 >> Accept Blackrock Menace
step << !Warlock
    >> Head into the town hall
    .goto Redridge Mountains,29.6,44.3
.target Bailiff Conacher
>>Talk to |cRXP_FRIENDLY_Bailiff Conacher|r
    .accept 91 >> Accept Solomon's Law
step << Hunter
	.goto Redridge Mountains,28.8,47.3
	.vendor >> Restock on arrows, note you will get level 25 arrows soon.
step
    .goto Redridge Mountains,27.723,47.381
.target Dockmaster Baren
>>Talk to |cRXP_FRIENDLY_Dockmaster Baren|r
    .accept 127 >> Accept Selling Fish
    .accept 150 >> Accept Murloc Poachers
step << Rogue tbc
    .goto Redridge Mountains,28.062,52.037
>>Talk to |cRXP_FRIENDLY_Lucius|r
    .turnin 2281 >> Turn in Redridge Rendezvous
.target Lucius
    .accept 2282 >> Accept Alther's Mill
step
    #sticky
    #label orcs1
    .goto Redridge Mountains,61.0,43.1
    >>Kill Blackrock orcs
    .complete 20,1 --Collect Battleworn Axe (x10)
step
    .goto Redridge Mountains,57.3,52.4
	>> Kill murlocs. Loot them for their Sunfish and Fins
    .complete 127,1 --Collect Spotted Sunfish (x10)
    .collect 1468,8,150,1 --Collect Murloc Fin (x8)
step << Rogue tbc
	#completewith next
    +Open the chests to train lockpicking, you will need 75 skill points for a quest later. Do NOT open the brown chest until you've done this
step << Rogue tbc
    .goto Redridge Mountains,52.0,44.8
    .complete 2282,1 --Collect Token of Thievery (x1)
step
    #requires orcs1
    .goto Redridge Mountains,33.6,48.7
.target Marshal Marris
>>Talk to |cRXP_FRIENDLY_Marshal Marris|r
    .turnin 20 >> Turn in Blackrock Menace
step
    .goto Redridge Mountains,27.8,47.4
.target Dockmaster Baren
>>Talk to |cRXP_FRIENDLY_Dockmaster Baren|r
    .turnin 127 >> Turn in Selling Fish
    .turnin 150 >> Turn in Murloc Poachers
step << Rogue tbc
    .goto Redridge Mountains,28.062,52.037
.target Lucius
>>Talk to |cRXP_FRIENDLY_Lucius|r
    .turnin 2282 >> Turn in Alther's Mill
step << Rogue tbc
    #completewith next
    .destroy 7907 >> Delete the Certificate of Thievery
step
    .goto Redridge Mountains,26.7,46.5
	>>Click on the wanted poster outside the inn
    .accept 180 >> Accept Wanted: Lieutenant Fangore
step
    .goto Redridge Mountains,21.858,46.329
.target Martie Jainrose
>>Talk to |cRXP_FRIENDLY_Martie Jainrose|r
    .accept 34 >> Accept An Unwelcome Guest
step
    .goto Redridge Mountains,15.7,49.4
	>> Kill Bellygrub and loot her for her tusk
    .complete 34,1 --Collect Bellygrub's Tusk (x1)
step
    .goto Redridge Mountains,21.8,46.4
.target Martie Jainrose
>>Talk to |cRXP_FRIENDLY_Martie Jainrose|r
    .turnin 34 >> Turn in An Unwelcome Guest
step
    >>Run to Duskwood
	.goto Duskwood,75.7,45.3
.target Madame Eva
>>Talk to |cRXP_FRIENDLY_Madame Eva|r
    .accept 66 >> Accept The Legend of Stalvan
    .accept 101 >> Accept The Totem of Infliction
step << Rogue wotlk/!Rogue
    .goto Duskwood,73.9,44.5
    .home >> Set your Hearthstone to Darkshire
step
    .goto Duskwood,73.6,46.8
.target Commander Althea Ebonlocke
>>Talk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
    .accept 56 >> Accept The Night Watch
step
    .goto Duskwood,72.6,46.9
>>Talk to |cRXP_FRIENDLY_Clerk Daltry|r
    .turnin 66 >> Turn in The Legend of Stalvan
.target Clerk Daltry
    .accept 67 >> Accept The Legend of Stalvan
step << Draenei
    .goto Duskwood,71.816,46.369
.target Anchorite Delan
>>Talk to |cRXP_FRIENDLY_Anchorite Delan|r
    .turnin 9429 >> Turn in Travel to Darkshire
step
    .goto Duskwood,75.3,48.6
.target Elaine Carevin
>>Talk to |cRXP_FRIENDLY_Elaine Carevin|r
    .accept 163 >> Accept Raven Hill
    .accept 164 >> Accept Deliveries to Sven
    .accept 165 >> Accept The Hermit
step
    .goto Duskwood,75.4,48.0
.target Calor
>>Talk to |cRXP_FRIENDLY_Calor|r
    .accept 173 >> Accept Worgen in the Woods
step
    .goto Duskwood,77.8,48.2
    .vendor >>Buy a bronze tube from Herble Baubbletump (limited supply) if you don't have one
    .bronzetube
step
    .goto Duskwood,79.8,47.9
.target Viktori Prism'Antras
>>Talk to |cRXP_FRIENDLY_Viktori Prism'Antras|r
    .accept 174 >> Accept Look To The Stars
    .turnin 174 >> Turn in Look To The Stars
    .itemcount 4371,<1
step << Rogue
    .goto Duskwood,77.5,44.4
    .fp Duskwood >> Get the Duskwood flight point
step
    .goto Duskwood,79.8,47.9
.target Viktori Prism'Antras
>>Talk to |cRXP_FRIENDLY_Viktori Prism'Antras|r
    .accept 175 >> Accept Look To The Stars
    .isQuestTurnedIn 174
step
	#sticky
	#completewith HistoryB
	.use 2794 >>Keep an eye out for the book (zone-wide drop). You'll need this for later
	.collect 2794,1,337
	.accept 337 >> Accept An Old History Book
step
    .goto Duskwood,82.0,59.0
>>Talk to |cRXP_FRIENDLY_Blind Mary|r
    .turnin 175 >> Turn in Look To The Stars
.target Blind Mary
    .accept 177 >> Accept Look To The Stars
    .isQuestTurnedIn 174
step
    .goto Duskwood,80.9,71.8
    >>Kill the Insane Ghoul at the chapel. He can patrol outside as well.
    .complete 177,1 --Collect Mary's Looking Glass (x1)
    .isQuestTurnedIn 174
	.unitscan Insane Ghoul
step
    .goto Duskwood,79.3,70.3
    >> Kill skeletal mobs in the area
    .complete 56,1 --Kill Skeletal Warrior (x8)
    .complete 56,2 --Kill Skeletal Mage (x6)
step
    .goto Duskwood,18.4,56.6
>>Talk to |cRXP_FRIENDLY_Jitters|r
    .turnin 163 >> Turn in Raven Hill
.target Jitters
    .accept 5 >> Accept Jitters' Growling Gut
step
    .goto Duskwood,7.781,34.069
>>Talk to |cRXP_FRIENDLY_Sven Yorgen|r
    .turnin 164 >> Turn in Deliveries to Sven
.target Sven Yorgen
    .accept 95 >> Accept Sven's Revenge
step
    .goto Duskwood,7.7,33.3
.target Lars
>>Talk to |cRXP_FRIENDLY_Lars|r
    .accept 226 >> Accept Wolves at Our Heels
    .maxlevel 26
step
    .goto Duskwood,28.0,31.5
>>Talk to |cRXP_FRIENDLY_Abercrombie|r
    .turnin 165 >> Turn in The Hermit
.target Abercrombie
    .accept 148 >> Accept Supplies from Darkshire
step
    .isOnQuest 226
    >>Run up the coast killing wolves
    .xp 25,1
    .goto Duskwood,17.6,24.6
    .complete 226,1 --Kill Starving Dire Wolf (x12)
    .complete 226,2 --Kill Rabid Dire Wolf (x8)
step << Rogue/Druid
    #label HistoryB
	.goto Duskwood,17.7,29.1
    .accept 225 >> Accept The Weathered Grave
    .xp <25,1
step << !Rogue !Druid
	.goto Duskwood,17.7,29.1
    .accept 225 >> Accept The Weathered Grave
    .xp <25,1
step << Rogue/Druid
    .goto Westfall,56.6,52.6
    .fp Sentinel >> Get the Sentinel Hill flight path
step << Rogue tbc
    .goto Westfall,68.5,70.0
>>Talk to |cRXP_FRIENDLY_Agent Kearnen|r
    .turnin 2360 >> Turn in Mathias and the Defias
.target Agent Kearnen
    .accept 2359 >> Accept Klaven's Tower
step << Rogue tbc
    .goto Westfall,70.6,72.8
    >>Pickpocket one of the Defias Drones and loot the tower key
    .complete 2359,2 --Collect Defias Tower Key (x1)
step << Rogue tbc
    .goto Westfall,70.4,74.0
    >>Climb to the top of the tower and loot the small chest on the floor
    .complete 2359,1 --Collect Klaven Mortwake's Journal (x1)
step << Rogue/Druid
    .goto Westfall,41.5,66.8
    .turnin 67 >> Turn in The Legend of Stalvan
    .accept 68 >> Accept The Legend of Stalvan
step << Druid tbc
    .goto Westfall,18.0,33.2
    >>Loot the lockbox located deep underwater
    .collect 15882,1 --Collect Half Pendant of Aquatic Endurance (x1)
step << Druid tbc
    .goto Moonglade,36.0,41.4
    >>Teleport to moonglade
    >>Combine the 2 pendants at the Shrine of Remulos
    .complete 272,1 --Collect Pendant of the Sea Lion (x1)
step << Druid tbc
    .goto Moonglade,56.209,30.636
    >>Teleport back to Nighthaven
>>Talk to |cRXP_FRIENDLY_Dendrite Starblaze|r
    .turnin 272 >> Turn in Trial of the Sea Lion
.target Dendrite Starblaze
    .accept 5061 >> Accept Aquatic Form
step << Druid tbc
    #sticky
    #completewith next
    .goto Moonglade,44.1,45.2
    .fly Teldrassil>> Fly to Teldrassil
step << Druid tbc
    .goto Darnassus,35.375,8.405
.target Mathrengyl Bearwalker
>>Talk to |cRXP_FRIENDLY_Mathrengyl Bearwalker|r
    .turnin 5061 >> Turn in Aquatic Form
step << Rogue/Druid
    #sticky
    #completewith next
    .hs >> Hearth back to town
step << Rogue tbc
    .goto StormwindClassic,75.9,59.9
>>Talk to |cRXP_FRIENDLY_Master Mathias Shaw|r
    .turnin 2359 >> Turn in Klaven's Tower
.target Master Mathias Shaw
    .accept 2607 >> Accept The Touch of Zanzil
step << Rogue tbc
    .goto StormwindClassic,78.1,59.0
    >>Head to the basement
>>Talk to |cRXP_FRIENDLY_Doc Mixilpixil|r
    .turnin 2607 >> Turn in The Touch of Zanzil
.target Doc Mixilpixil
    .accept 2608 >> Accept The Touch of Zanzil
step << Rogue tbc
    .goto StormwindClassic,78.1,59.0
    >>Type /lay on the chat and wait until the quest complete itself
    .complete 2608,1 --Diagnosis Complete
step << Rogue tbc
    .goto StormwindClassic,78.0,58.8
>>Talk to |cRXP_FRIENDLY_Doc Mixilpixil|r
    .turnin 2608 >> Turn in The Touch of Zanzil
.target Doc Mixilpixil
    .accept 2609 >> Accept The Touch of Zanzil
step << Rogue tbc
    .goto StormwindClassic,78.2,59.0
    >>Buy a Leaded Vial from the Shady Dealer
    .complete 2609,2 --Collect Leaded Vial (x1)
step << Rogue tbc
    >>Head to the flower vendor
    .complete 2609,1 --Collect Simple Wildflowers (x1)
    .goto StormwindClassic,64.3,60.8
step << Rogue tbc
    #sticky
    #completewith next
    >>Buy a Bronze Tube at the Auction House. This is for your rogue quest, not Look to the Stars!
    .complete 2609,3 --Collect Bronze Tube (x1)
step << Rogue tbc
    .goto StormwindClassic,53.6,59.3
    >>Head to the shop next to the bridge between the Cathedral Square and the Park. This is an object on the ground you must pickup.
    .complete 2609,4 --Collect Spool of Light Chartreuse Silk Thread (x1)
    .goto StormwindClassic,39.8,46.5
    >>If you can't find a bronze tube, you will have to skip this quest, train First Aid to 80, farm a small venom sac from spiders in Duskwood, craft an Anti-Venom and remove the Zanzil poison.
step << Rogue tbc
    .goto StormwindClassic,78.0,58.9
.target Doc Mixilpixil
>>Talk to |cRXP_FRIENDLY_Doc Mixilpixil|r
    .turnin 2609 >> Turn in The Touch of Zanzil
step << Rogue tbc
    .goto StormwindClassic,78.2,59.0
    .vendor >>Buy Dust of Decay and Empty Vials so you can make poisons
step << Rogue tbc
    #sticky
    #completewith next
    .use 8432 >> Use the antidote to the poison.
    .destroy 8046 >> Destroy Kearnen's Journal
step << Rogue tbc
    .goto StormwindClassic,66.2,62.2
    .fly Duskwood>> Fly to Duskwood
step << !Rogue !Druid !Priest !Warlock
    .goto Duskwood,60.8,29.7
	>>Grind your way back to eastern Duskwood. If killing Shadow Weavers is too difficult right now skip this step, you will complete it later
    .complete 173,1 --Kill Nightbane Shadow Weaver (x6)
step
    .goto Duskwood,73.8,43.3
>>Talk to |cRXP_FRIENDLY_Chef Grual|r
    .turnin 5 >> Turn in Jitters' Growling Gut
.target Chef Grual
    .accept 93 >> Accept Dusky Crab Cakes
step
    .goto Duskwood,73.6,46.8
>>Talk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
    .turnin 56 >> Turn in The Night Watch
.target Commander Althea Ebonlocke
    .accept 57 >> Accept The Night Watch
step
    .goto Duskwood,72.642,47.613
.target Sirra Von'Indi
>>Talk to |cRXP_FRIENDLY_Sirra Von'Indi|r
    .turnin 225 >> Turn in The Weathered Grave
    .isOnQuest 225
step
.target Sirra Von'Indi
>>Talk to |cRXP_FRIENDLY_Sirra Von'Indi|r
    .accept 227 >> Accept Morgan Ladimore
    .goto Duskwood,72.642,47.613
>>Talk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
    .turnin 227 >> Turn in Morgan Ladimore
    .goto Duskwood,73.5,46.9
.target Commander Althea Ebonlocke
    .accept 228 >> Accept Mor'Ladim
    .goto Duskwood,73.5,46.9
    .isQuestTurnedIn 225
step
	#sticky
	#completewith next
	.destroy 2154 >> You can delete "The Story of Morgan Ladimore" from your inventory, as it's not needed
step
    .goto Duskwood,75.7,45.3
>>Talk to |cRXP_FRIENDLY_Madame Eva|r
    .turnin 148 >> Turn in Supplies from Darkshire
.target Madame Eva
    .accept 149 >> Accept Ghost Hair Thread
step
    .goto Duskwood,75.3,47.9
>>Talk to |cRXP_FRIENDLY_Calor|r
    .turnin 173 >> Turn in Worgen in the Woods
.target Calor
    .accept 221 >> Accept Worgen in the Woods
    .isQuestComplete 173
step
    #label HistoryB
	.goto Duskwood,79.8,47.8
>>Talk to |cRXP_FRIENDLY_Viktori Prism'Antras|r
    .turnin 177 >> Turn in Look To The Stars
.target Viktori Prism'Antras
    .accept 181 >> Accept Look To The Stars
    .isQuestTurnedIn 174
step
	#sticky
	#completewith HistoryB2
	>>Keep an eye out for Old History book (zone-wide drop). You'll need this for later
	.collect 2794,1,337
	.accept 337 >> Accept An Old History Book
step
    .goto Duskwood,81.9,59.1
>>Talk to |cRXP_FRIENDLY_Blind Mary|r
    .turnin 149 >> Turn in Ghost Hair Thread
.target Blind Mary
    .accept 154 >> Accept Return the Comb
step
    .goto Duskwood,75.7,45.3
>>Talk to |cRXP_FRIENDLY_Madame Eva|r
    .turnin 154 >> Turn in Return the Comb
.target Madame Eva
    .accept 157 >> Accept Deliver the Thread
step
    .goto Duskwood,49.9,77.8
    .turnin 95 >> Turn in Sven's Revenge
    .accept 230 >> Accept Sven's Camp
step
	#label spiders
	#sticky
	#completewith spiderend12
	>>Kill spiders in duskwood
    .complete 93,1 --Collect Gooey Spider Leg (x6)
	.maxlevel 27
step
	.goto Duskwood,17.7,29.1
    .accept 225 >> Accept The Weathered Grave
step
    .goto Duskwood,28.0,31.5
>>Talk to |cRXP_FRIENDLY_Abercrombie|r
    .turnin 157 >> Turn in Deliver the Thread
.target Abercrombie
    .accept 158 >> Accept Zombie Juice
step
    .goto Duskwood,17.6,24.6
    .complete 226,1 --Kill Starving Dire Wolf (x12)
    .complete 226,2 --Kill Rabid Dire Wolf (x8)
    .isOnQuest 226
step << Hunter/Paladin
    .goto Duskwood,19.7,39.7
    >>Kill the level 30 elite roaming the cemetery. Kite him around the big trees in the area.
    >> Run away and heal when he enrages, use the big trees to make space. Don't try to tank him during the enrage << Paladin
    .complete 228,1 --Collect Mor'Ladim's Skull (x1)
    .isOnQuest 228
step
    .goto Duskwood,7.781,34.069
>>Talk to |cRXP_FRIENDLY_Sven Yorgen|r
    .turnin 230 >> Turn in Sven's Camp
.target Sven Yorgen
    .accept 262 >> Accept The Shadowy Figure
step
    #label HistoryB2
	.goto Duskwood,7.7,33.3
.target Lars
>>Talk to |cRXP_FRIENDLY_Lars|r
    .turnin 226 >> Turn in Wolves at Our Heels
    .isOnQuest 226
step << !Rogue !Druid
	#requires spiders
    .goto Westfall,56.6,52.6
    .fp Sentinel >> Get the Sentinel Hill flight path
step << !Rogue !Druid
    .goto Westfall,41.5,66.8
    .turnin 67 >> Turn in The Legend of Stalvan
    .accept 68 >> Accept The Legend of Stalvan
step << Paladin
    .goto Westfall,42.5,88.6
>>Talk to |cRXP_FRIENDLY_Daphne Stilwell|r
    .turnin 1650 >>Turn in The Tome of Valor
.target Daphne Stilwell
    .accept 1651 >>Accept The Tome of Valor
step << Paladin
    .goto Westfall,42.5,88.6
    .complete 1651,1 --Protect Daphne Stilwell (1)
>>Talk to |cRXP_FRIENDLY_Daphne Stilwell|r
    .turnin 1651 >>Turn in The Tome of Valor
.target Daphne Stilwell
    .accept 1652 >>Accept The Tome of Valor
step << !Rogue !Druid
    #sticky
    #completewith next
    .hs >> Hearth back to Duskwood
step << Rogue/Druid
	#requires spiders
    .goto Duskwood,60.8,29.7
	>>Grind your way back to eastern Duskwood
    .complete 173,1 --Kill Nightbane Shadow Weaver (x6)
step
    .goto Duskwood,75.7,45.3
>>Talk to |cRXP_FRIENDLY_Madame Eva|r
    .turnin 262 >> Turn in The Shadowy Figure
.target Madame Eva
    .accept 265 >> Accept The Shadowy Search Continues
step
    .goto Duskwood,72.6,46.9
>>Talk to |cRXP_FRIENDLY_Clerk Daltry|r
    .turnin 265 >> Turn in The Shadowy Search Continues
.target Clerk Daltry
    .accept 266 >> Accept Inquire at the Inn
    .turnin 68 >> Turn in The Legend of Stalvan
    .accept 69 >> Accept The Legend of Stalvan
step
    .goto Duskwood,72.642,47.613
.target Sirra Von'Indi
>>Talk to |cRXP_FRIENDLY_Sirra Von'Indi|r
    .turnin 225 >> Turn in The Weathered Grave
    .isOnQuest 225
step
.target Sirra Von'Indi
>>Talk to |cRXP_FRIENDLY_Sirra Von'Indi|r
    .accept 227 >> Accept Morgan Ladimore
    .goto Duskwood,72.642,47.613
>>Talk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
    .turnin 227 >> Turn in Morgan Ladimore
    .goto Duskwood,73.5,46.9
.target Commander Althea Ebonlocke
    .accept 228 >> Accept Mor'Ladim
    .goto Duskwood,73.5,46.9
    .isQuestTurnedIn 225
step
	#completewith next
	.vendor >> Remember to buy level 25 food and water
step
    .goto Duskwood,73.9,44.4
>>Talk to |cRXP_FRIENDLY_Tavernkeep Smitts|r
    .turnin 158 >> Turn in Zombie Juice
.target Tavernkeep Smitts
    .accept 156 >> Accept Gather Rot Blossoms
    .turnin 266 >> Turn in Inquire at the Inn
    .accept 453 >> Accept Finding the Shadowy Figure
step
    .goto Duskwood,73.9,43.9
.target Chef Grual
>>Talk to |cRXP_FRIENDLY_Chef Grual|r
    .turnin 93 >> Turn in Dusky Crab Cakes
    .isQuestComplete 93
step
    .goto Duskwood,73.9,43.9
.target Chef Grual
>>Talk to |cRXP_FRIENDLY_Chef Grual|r
    .accept 240 >> Accept Return to Jitters
    .isQuestTurnedIn 93
step << Hunter/Paladin
	.goto Duskwood,73.7,46.8
>>Talk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
    .turnin 228 >> Turn in Mor'Ladim
.target Commander Althea Ebonlocke
    .accept 229 >> Accept The Daughter Who Lived
step << Hunter/Paladin
    .goto Duskwood,74.543,46.085
>>Talk to |cRXP_FRIENDLY_Watcher Ladimore|r
    .turnin 229 >> Turn in The Daughter Who Lived
.target Watcher Ladimore
    .accept 231 >> Accept A Daughter's Love
step << !Rogue !Druid
    .isOnQuest 173
    .goto Duskwood,60.8,29.7
	>>Kill Shadow Weavers above Darkshire
    .complete 173,1 --Kill Nightbane Shadow Weaver (x6)
step
    .goto Duskwood,75.3,47.9
>>Talk to |cRXP_FRIENDLY_Calor|r
    .turnin 173 >> Turn in Worgen in the Woods
.target Calor
    .accept 221 >> Accept Worgen in the Woods
    .isQuestComplete 173
step
    #label spiderend12
    .goto Duskwood,77.5,44.3
 .fly Redridge >> Fly to Redridge
step
    #xprate <1.2
    .goto Redridge Mountains,31.537,57.852
.target Guard Howe
>>Talk to |cRXP_FRIENDLY_Guard Howe|r
    .accept 128 >> Accept Blackrock Bounty
    .maxlevel 26 << Paladin/Hunter
step
    .goto Redridge Mountains,33.5,49.2
.target Marshal Marris
>>Talk to |cRXP_FRIENDLY_Marshal Marris|r
    .accept 19 >> Accept Tharil'zun
    .accept 115 >> Accept Shadow Magic
step
    .goto Redridge Mountains,80.3,37.2
	>> Kill Fangore, and loot him for his Paw. Be careful as lots of gnolls patrol around him, he is shadow immune, and can social aggro all gnolls at any time within 40 yards.
    .complete 180,1 --Collect Fangore's Paw (x1)
step
    .isOnQuest 94
    .goto Redridge Mountains,84.3,46.9
    .turnin 94 >> Turn in A Watchful Eye
step
    .goto Redridge Mountains,84.3,46.9
    .accept 248 >> Accept Looking Further
    .isQuestTurnedIn 94
step << !Warlock
    .goto Redridge Mountains,74.2,42.1
	>> Kill gnolls in the area
    .complete 91,1 --Collect Shadowhide Pendant (x10)
step
	#sticky
	#label tharilzun
    .goto Redridge Mountains,69.2,59.8
	>> Kill Tharil'zun and loot his head.
    .complete 19,1 --Collect Tharil'zun's Head (x1)
step
    .goto Redridge Mountains,66.6,55.4
	>>Kill Blackrock Shadowcasters. Loot them for Midnight Orbs
    .complete 115,1 --Collect Midnight Orb (x3)
step
    .isOnQuest 248
    .goto Redridge Mountains,63.2,49.7
	>>Climb to the top of the tower
    .turnin 248 >> Turn in Looking Further
step
    .goto Redridge Mountains,32.8,6.8
    .complete 128,1 --Kill Blackrock Champion (x15)
    .isOnQuest 128
step
    .goto Redridge Mountains,33.504,48.969
.target Marshal Marris
>>Talk to |cRXP_FRIENDLY_Marshal Marris|r
    .turnin 19 >> Turn in Tharil'zun
	.isQuestComplete 19
step
	.goto Redridge Mountains,33.504,48.969
.target Marshal Marris
>>Talk to |cRXP_FRIENDLY_Marshal Marris|r
    .turnin 115 >> Turn in Shadow Magic
step << !Warlock
    .goto Redridge Mountains,29.6,44.3
.target Bailiff Conacher
>>Talk to |cRXP_FRIENDLY_Bailiff Conacher|r
    .turnin 91 >> Turn in Solomon's Law
step
    .goto Redridge Mountains,29.8,44.5
.target Magistrate Solomon
>>Talk to |cRXP_FRIENDLY_Magistrate Solomon|r
    .turnin 180 >> Turn in Wanted: Lieutenant Fangore
step
    .goto Redridge Mountains,31.6,58.0
.target Guard Howe
>>Talk to |cRXP_FRIENDLY_Guard Howe|r
    .turnin 128 >> Turn in Blackrock Bounty
    .isQuestComplete 128
step
    #completewith fpwfend
	.goto Redridge Mountains,30.5,59.3
    .fly Westfall>> Fly to Westfall
step
	#sticky
	#completewith HistoryB3
	.use 2794 >>Keep an eye out for Old History book (zone-wide drop). You'll need this for later
	.collect 2794,1,337
	.accept 337 >> Accept An Old History Book
step
    #completewith fpwfend
    .goto Duskwood,18.4,56.5
>>Talk to |cRXP_FRIENDLY_Jitters|r
    .turnin 453 >> Turn in Finding the Shadowy Figure
.target Jitters
    .accept 268 >> Accept Return to Sven
step
    .goto Duskwood,18.4,56.5
.target Jitters
>>Talk to |cRXP_FRIENDLY_Jitters|r
    .turnin 240 >> Turn in Return to Jitters
    .isOnQuest 240
step
    .goto Duskwood,7.7,34.1
>>Talk to |cRXP_FRIENDLY_Sven Yorgen|r
    .turnin 268 >> Turn in Return to Sven
.target Sven Yorgen
    .accept 323 >> Accept Proving Your Worth
step
    #sticky
    #completewith nomoreraidernote
    .goto Duskwood,16.2,38.8,0
    >> Kill Skeletal Raiders around the crypt and house on the hill as you complete other quests. You typically cannot get all 15 in one go and want to keep them respawning.
    .complete 323,1 --Kill Skeletal Raider (x15)
step << !Hunter !Paladin
    .goto Duskwood,21.6,45.1
	>> Kill undead in the area and loot them
    .complete 57,1 --Kill Skeletal Fiend (x15)
    .complete 57,2 --Kill Skeletal Horror (x15)
    .complete 156,1 --Collect Rot Blossom (x8)
    .complete 101,3 --Collect Skeleton Finger (x10)
step << Hunter/Paladin
    .goto Duskwood,17.7,29.2
    >> Click on the gravestone
    .turnin 231 >> Turn in A Daughter's Love
step << Hunter/Paladin
    .goto Duskwood,21.6,45.1
	>> Kill undead in the area and loot them
    .complete 57,1 --Kill Skeletal Fiend (x15)
    .complete 57,2 --Kill Skeletal Horror (x15)
    .complete 156,1 --Collect Rot Blossom (x8)
    .complete 101,3 --Collect Skeleton Finger (x10)
step
    #label nomoreraidernote
step
    .goto Duskwood,16.2,38.8
    >>Kill mobs around the crypt, you might need to go inside it to kill the 3 warders you need
    .complete 323,1 --Kill Skeletal Raider (x15)
    .complete 323,2 --Kill Skeletal Healer (x3)
    .complete 323,3 --Kill Skeletal Warder (x3)
step
	 .goto Duskwood,23.8,35.0
	.xp 27+12000 >> Grind to 12000+/32200xp
step
    .goto Duskwood,19.7,39.7
    >>Kill the level 30 elite roaming the cemetery. Skip this step if you cannot solo her or find a group.
    >> Run away when he enrages, use the big trees to kite and make space. Don't try to tank him during the enrage
    .unitscan Mor'Ladim
    .complete 228,1 --Collect Mor'Ladim's Skull (x1)
step
    #label HistoryB3
	.goto Duskwood,7.9,34.1
>>Talk to |cRXP_FRIENDLY_Sven Yorgen|r
    .turnin 323 >> Turn in Proving Your Worth
.target Sven Yorgen
    .accept 269 >> Accept Seeking Wisdom
step
    >> Run to Goldshire
    .goto Elwynn Forest,43.7,65.9
>>Talk to |cRXP_FRIENDLY_Innkeeper Farley|r
    .turnin 69 >> Turn in The Legend of Stalvan
.target Innkeeper Farley
    .accept 70 >> Accept The Legend of Stalvan
step
    >>Go upstairs in the room behind the rogue trainer. Loot the chest
	.goto Elwynn Forest,44.2,65.9
    .complete 70,1 --Collect An Undelivered Letter (x1)
step << Shaman
	.goto StormwindClassic,61.9,84.0
	.trainer >> Train your class spells
step << Warrior
    .goto Elwynn Forest,41.087,65.768
    .trainer >> Train your class spells
step << Mage
    .goto StormwindClassic,39.6,79.6
	>> Teleport to stormwind
	.trainer >> Train your class spells
step
    #xprate <1.5
    .goto StormwindClassic,26.4,78.4
.target Zardeth of the Black Claw
>>Talk to |cRXP_FRIENDLY_Zardeth of the Black Claw|r
    .accept 335 >> Accept A Noble Brew
step << Warlock
    .goto StormwindClassic,26.4,78.4
	.trainer >> Train your class spells
step
    .goto StormwindClassic,29.8,61.8
>>Talk to |cRXP_FRIENDLY_Caretaker Folsom|r
    .turnin 70 >> Turn in The Legend of Stalvan
.target Caretaker Folsom
    .accept 72 >> Accept The Legend of Stalvan
step
    .goto StormwindClassic,29.6,61.7
    .turnin 72 >> Turn in The Legend of Stalvan
    .accept 74 >> Accept The Legend of Stalvan
step <<!Mage
    .goto StormwindClassic,40.8,30.8
.target Brother Sarno
>>Talk to |cRXP_FRIENDLY_Brother Sarno|r
    .accept 2923 >> Accept Tinkmaster Overspark
step << Paladin
    .goto StormwindClassic,40.0,29.9
>>Talk to |cRXP_FRIENDLY_Duthorian Rall|r
    .turnin 1652 >>Turn in The Tome of Valor
.target Duthorian Rall
    .accept 1653 >>Accept The Test of Righteousness
step
    .goto StormwindClassic,39.3,28.0
>>Talk to |cRXP_FRIENDLY_Bishop Farthing|r
    .turnin 269 >> Turn in Seeking Wisdom
.target Bishop Farthing
    .accept 270 >> Accept The Doomed Fleet
step
    #xprate >1.3
    .xp <28,1
    .goto StormwindClassic,41.5,31.7
	>>Talk to the patrolling kid
.target Thomas
>>Talk to |cRXP_FRIENDLY_Thomas|r
    .accept 1274 >> Accept The Missing Diplomat
step << Paladin
#xprate <1.5
	.goto StormwindClassic,38.6,32.8
	.trainer >> Train your class spells
step << Priest
#xprate <1.5
	.goto StormwindClassic,38.5,26.8
	.trainer >> Train your class spells
step << Hunter
#xprate <1.5
	.goto StormwindClassic,61.7,15.4
	.trainer >> Train your class spells
--????

]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
<< Alliance
#name 27-30 Wetlands/Hillsbrad
#version 1
#group RestedXP Alliance 20-32
#next 30-32 Duskwood/STV
#xprate <1.5

step
    .goto StormwindClassic,60.5,12.3,40,0
    .goto StormwindClassic,60.5,12.3,0
    .link https://www.youtube.com/watch?v=M_tXROi9nMQ >> Click here for a logout skip inside the tram
    .zone Ironforge >> Take the tram to Ironforge
step <<!Mage
    .goto Ironforge,69.8,50.1
.target Tinkmaster Overspark
>>Talk to |cRXP_FRIENDLY_Tinkmaster Overspark|r
    .turnin 2923 >> Turn in Tinkmaster Overspark
step << Rogue
    #sticky
    #completewith next
    .trainer >> Train your class spells in Ironforge. Skip if you just trained in Stormwind.
step << Rogue
    .goto Ironforge,45.2,6.6
    >>Buy the level 31 weapon upgrades (17dps)
    .collect 2520,1
    .collect 2526,1
    >>Skip this step if you can find a better weapon at the Auction House
step << Mage
    #completewith next
    .zone Ironforge >> Teleport to Ironforge
step << Hunter/Warrior/Paladin/Shaman/Rogue
	.goto Ironforge,61.34,89.25
	.train 197 >> Train 2H Axes << !Rogue
	.train 266 >> Train Guns << Hunter/Warrior/Rogue
    .train 199 >> Train 2H Maces << Warrior/Shaman
    .train 54 >> Train Maces << Rogue/Shaman/wotlk Warrior
    .train 44 >> Train Axes << Shaman/wotlk Warrior
step << Hunter tbc
	#sticky
	#completewith next
	.goto Ironforge,61.34,89.25
	>>Go inside the building, head downstairs and buy a level 30 quiver from Thalgus Thunderfist
	.collect 7371,1
step << Paladin
    .goto Dun Morogh,52.5,36.8
    >> Head to the gates of Ironforge
.target Jordan Stilwell
>>Talk to |cRXP_FRIENDLY_Jordan Stilwell|r
    .turnin 1653 >>Turn in The Test of Righteousness
step << Dwarf !Paladin wotlk
	#sticky
	#completewith next
	.goto Dun Morogh,63.5,50.6
	.money <5.00
	.train 152 >> Head to Dun Morogh, train riding and purchase your mount.
step << Gnome !Warlock wotlk
	#sticky
	#completewith next
	.goto Dun Morogh,49.2,48.1
	.money <5.00
	.train 553 >> Head to Dun Morogh, train riding and purchase your mount.
step
	#label end
	.goto Ironforge,56.2,46.8
    .fly Wetlands>> Fly to Wetlands
step
    .goto Wetlands,8.4,58.5
>>Talk to |cRXP_FRIENDLY_Karl Boran|r
    .turnin 279 >> Turn in Claws from the Deep
.target Karl Boran
    .accept 281 >> Accept Reclaiming Goods
step
    .goto Wetlands,8.6,55.8
.target James Halloran
>>Talk to |cRXP_FRIENDLY_James Halloran|r
    .turnin 469 >> Turn in Daily Delivery
    .isOnQuest 469
step
    .goto Wetlands,8.6,55.8
.target James Halloran
>>Talk to |cRXP_FRIENDLY_James Halloran|r
    .turnin 484 >> Turn in Young Crocolisk Skins
    .isOnQuest 484
step
    .goto Wetlands,8.6,55.8
.target James Halloran
>>Talk to |cRXP_FRIENDLY_James Halloran|r
    .accept 471 >> Accept Apprentice's Duties
    .isQuestTurnedIn 484
step
    .goto Wetlands,10.8,59.6
.target First Mate Fitzsimmons
>>Talk to |cRXP_FRIENDLY_First Mate Fitzsimmons|r
    .accept 289 >> Accept The Cursed Crew
step
    .goto Wetlands,10.6,60.5
>>Talk to |cRXP_FRIENDLY_Glorin Steelbrow|r
    .turnin 270 >> Turn in The Doomed Fleet
.target Glorin Steelbrow
    .accept 321 >> Accept Lightforge Iron
step
      .goto Wetlands,10.7,60.9
	>> Restock on food/water if needed.
.home >> Set your Hearthstone to Deepwater Tavern
step
    .goto Wetlands,10.9,55.9
.target Harlo Barnaby
>>Talk to |cRXP_FRIENDLY_Harlo Barnaby|r
    .accept 472 >> Accept Fall of Dun Modr
step
    .goto Wetlands,9.9,57.4
>>Talk to |cRXP_FRIENDLY_Captain Stoutfist|r
    .turnin 464 >> Turn in War Banners
.target Captain Stoutfist
    .accept 465 >> Accept Nek'rosh's Gambit
step
    .goto Wetlands,11.7,58.0
.target Sida
>>Talk to |cRXP_FRIENDLY_Sida|r
    .accept 470 >> Accept Digging Through the Ooze
step
    .goto Wetlands,11.500,52.174
.target Tarrel Rockweaver
>>Talk to |cRXP_FRIENDLY_Tarrel Rockweaver|r
    .turnin 306 >> Turn in In Search of The Excavation Team
step
    .goto Wetlands,13.5,41.5
    .turnin 281 >> Turn in Reclaiming Goods
    .accept 284 >> Accept The Search Continues
step
    .goto Wetlands,13.5,38.4
    .turnin 284 >> Turn in The Search Continues
    .accept 285 >> Accept Search More Hovels
step
    .goto Wetlands,13.9,34.8
    .turnin 285 >> Turn in Search More Hovels
    .accept 286 >> Accept Return the Statuette
step
    .goto Wetlands,13.9,30.4
    >>To find Snellig, enter the ship by the hole on the hull close to the shore
	>> The ship to the north usually has more Marines if you're having trouble finding some.
    .complete 289,3 --Collect Snellig's Snuffbox (x1)
    .complete 289,1 --Kill Cursed Sailor (x13)
    .complete 289,2 --Kill Cursed Marine (x5)
step
    .goto Wetlands,17.8,26.3
	>> Kill Giant Crocolisks along the coast and loot them for skins
    .complete 471,1 --Collect Giant Crocolisk Skin (x6)
    .isQuestTurnedIn 484
step
    .goto Wetlands,38.179,50.889
.target Ormer Ironbraid
>>Talk to |cRXP_FRIENDLY_Ormer Ironbraid|r
    .accept 294 >> Accept Ormer's Revenge
step
	#label fossil
	#sticky
	#completewith Relu1
	>>Kill raptors in Wetlands
	.complete 943,1
    .isOnQuest 943
step
    .goto Wetlands,24.7,48.6
    .complete 294,1 --Kill Mottled Raptor (x10)
    .complete 294,2 --Kill Mottled Screecher (x10)
step
    .goto Wetlands,38.179,50.889
>>Talk to |cRXP_FRIENDLY_Ormer Ironbraid|r
    .turnin 294 >> Turn in Ormer's Revenge
.target Ormer Ironbraid
    .accept 295 >> Accept Ormer's Revenge
step
    .goto Wetlands,38.8,52.3
>>Talk to |cRXP_FRIENDLY_Merrin Rockweaver|r
    .turnin 305 >> Turn in In Search of The Excavation Team
.target Merrin Rockweaver
step
	.goto Wetlands,38.81,52.39
.target Prospector Whelgar
>>Talk to |cRXP_FRIENDLY_Prospector Whelgar|r
	.accept 299 >>Accept Uncovering the Past
step
	#label relics
	#sticky
	.goto Wetlands,34.3,49.5,0
	>>Loot the 4 relics around the dig site
	.complete 299,1
	.complete 299,2
	.complete 299,3
	.complete 299,4
step
    .goto Wetlands,34.6,48.0
    .complete 295,1 --Kill Mottled Scytheclaw (x10)
    .complete 295,2 --Kill Mottled Razormaw (x10)
step
    .goto Wetlands,38.179,50.889
>>Talk to |cRXP_FRIENDLY_Ormer Ironbraid|r
    .turnin 295 >> Turn in Ormer's Revenge
.target Ormer Ironbraid
    .accept 296 >> Accept Ormer's Revenge
step
    .goto Wetlands,31.5,48.9,50,0
    .goto Wetlands,33.3,51.5
	>>Kill Sarltooth atop the hill. Loot him for his Talon. Be careful as he Thrashes and has a 6 minute respawn
    .complete 296,1 --Collect Sarltooth's Talon (x1)
step
	#requires relics
    .goto Wetlands,38.179,50.889
.target Ormer Ironbraid
>>Talk to |cRXP_FRIENDLY_Ormer Ironbraid|r
    .turnin 296 >> Turn in Ormer's Revenge
step
	#requires relics
	.goto Wetlands,38.81,52.39
.target Prospector Whelgar
>>Talk to |cRXP_FRIENDLY_Prospector Whelgar|r
	.turnin 299 >>Turn in Uncovering the Past
step
	#label Relu1
	.goto Wetlands,38.81,52.39
	>>Loot the fossil on the ground
	.complete 943,2
    .isOnQuest 943
step
	.goto Wetlands,34.6,48.0
	>>Keep killing raptors until you loot the Stone of Relu
	.complete 943,1
    .isOnQuest 943
step
    .goto Wetlands,44.2,25.8
    >>Kill slimes around the crypt
    .complete 470,1 --Collect Sida's Bag (x1)
step
    .goto Wetlands,44.2,33.9
	>>Kill gnolls
    .complete 277,1 --Collect Crude Flint (x9)
    .isQuestTurnedIn 276
step
    .goto Wetlands,56.3,40.5
>>Talk to |cRXP_FRIENDLY_Rethiel the Greenwarden|r
    .turnin 277 >> Turn in Fire Taboo
.target Rethiel the Greenwarden
    .accept 275 >> Accept Blisters on The Land
    .isQuestTurnedIn 276
step
    .isOnQuest 465
    .goto Wetlands,47.3,46.9
    .turnin 465 >> Turn in Nek'rosh's Gambit
    .accept 474 >> Accept Defeat Nek'rosh
step
    .isOnQuest 474
    .goto Wetlands,53.5,54.6
	>> Kill Nek'rosh and loot him for his head
    .complete 474,1 --Collect Nek'rosh's Head (x1)
step
    .goto Wetlands,64.8,75.3
    >>Loot the tree root at the base of the waterfall
    .complete 335,2 --Collect Musquash Root (x1)
    .isOnQuest 335
step << Druid
    #completewith next
    >>Teleport to Moonglade
    .goto Moonglade,52.4,40.6
    .trainer 12042 >> Train spells
step
    .hs >> Hearth to Menethil Harbor
step
    .goto Wetlands,10.8,59.6
>>Talk to |cRXP_FRIENDLY_First Mate Fitzsimmons|r
    .turnin 289 >> Turn in The Cursed Crew
.target First Mate Fitzsimmons
    .accept 290 >> Accept Lifting the Curse
step
    .goto Wetlands,10.828,60.398
	>>Go upstairs and talk to Archaeologist Flagongut
.target Archaeologist Flagongut
>>Talk to |cRXP_FRIENDLY_Archaeologist Flagongut|r
	.turnin 943 >>Turn in The Absent Minded Prospector
    .isOnQuest 943
step
    .goto Wetlands,11.7,58.1
.target Sida
>>Talk to |cRXP_FRIENDLY_Sida|r
    .turnin 470 >> Turn in Digging Through the Ooze
    .isQuestComplete 470
step
    .goto Wetlands,8.310,58.533
.target Karl Boran
>>Talk to |cRXP_FRIENDLY_Karl Boran|r
    .turnin 286 >> Turn in Return the Statuette
step
    .goto Wetlands,8.6,55.8
.target James Halloran
>>Talk to |cRXP_FRIENDLY_James Halloran|r
    .turnin 471 >> Turn in Apprentice's Duties
    .isQuestTurnedIn 484
step
    .goto Wetlands,15.5,23.5
    >>Kill Captain Halyndor by entering the ship through the broken mast
    >>|cRXP_WARN_Be careful he can cast|r |T136232:0|t[Ward of the Eye]|cRXP_WARN_ making him|r |cRXP_ENEMY_REFLECT SPELLS|r |cRXP_WARN_for 6 seconds|r
    .complete 290,1 --Collect Intrepid Strongbox Key (x1)
step
    .goto Wetlands,14.4,24.0
	>> Dive underwater. Theres a hole in the hull of the north side of the ship. Do NOT delete the Cursed Eye of Paleth, it's used for a later quest.
    .turnin 290 >> Turn in Lifting the Curse
    .accept 292 >> Accept The Eye of Paleth
step
	#sticky
    #completewith Nekkywekky
    >>Kill Fen Creepers, they are stealth mobs lurking along the river stream
    .complete 275,1 --Kill Fen Creeper (x8)--O
    .isOnQuest 275
step
    .goto Wetlands,47.3,46.9
    .turnin 465 >> Turn in Nek'rosh's Gambit
    .accept 474 >> Accept Defeat Nek'rosh
step
    #label Nekkywekky
    .goto Wetlands,53.5,54.6
	>> Kill Nek'rosh and loot him for his head
    .complete 474,1 --Collect Nek'rosh's Head (x1)
step << Warrior tbc
    #sticky
	#completewith next
    .goto Wetlands,50.2,37.8
    >>Check the herb vendor and buy some Liferoot, you will need 8 for a quest later, skip this step if you already have it
    .collect 3357,8 --Collect Liferoot (x8)
    #xprate <1.5
step
    .isOnQuest 275
    .goto Wetlands,56.4,40.5
	>>Finish off Fen Creepers in the rivers
    .complete 275,1 --Kill Fen Creeper (x8)
step
    .goto Wetlands,56.4,40.5
.target Rethiel the Greenwarden
>>Talk to |cRXP_FRIENDLY_Rethiel the Greenwarden|r
    .turnin 275 >> Turn in Blisters on The Land
    .isOnQuest 275
step
    .goto Wetlands,49.9,18.3
    .turnin -472 >> Turn in Fall of Dun Modr
.target Rhag Garmason
>>Talk to |cRXP_FRIENDLY_Rhag Garmason|r
    .accept 631 >> Accept The Thandol Span
.target Longbraid the Grim
>>Talk to |cRXP_FRIENDLY_Longbraid the Grim|r
    .accept 304 >> Accept A Grim Task
.target Motley Garmason
>>Talk to |cRXP_FRIENDLY_Motley Garmason|r
    .accept 303 >> Accept The Dark Iron War
step
	#sticky
    #label balgaras
    >>Kill Balgaras the Foul, he can spawn in the camp far to the east or inside one of the houses in Dun Modr. Head east after checking Dun Modir. Loot him for his ear.
    .complete 304,1 --Collect Ear of Balgaras (x1)
	.unitscan Balgaras the Foul
    .goto Wetlands,47.4,15.4,40,0
    .goto Wetlands,61.8,31.0,80,0
    .goto Wetlands,46.8,16.0
step--?
    .goto Wetlands,47.3,16.6
	>> Kill Dark Iron dwarves in the area
    .complete 303,1 --Kill Dark Iron Dwarf (x10)
    .complete 303,2 --Kill Dark Iron Tunneler (x5)
    .complete 303,3 --Kill Dark Iron Saboteur (x5)
    .complete 303,4 --Kill Dark Iron Demolitionist (x5)
step
    #requires balgaras
    .goto Wetlands,49.7,18.3
.target Motley Garmason
>>Talk to |cRXP_FRIENDLY_Motley Garmason|r
    .turnin 303 >> Turn in The Dark Iron War
.target Longbraid the Grim
>>Talk to |cRXP_FRIENDLY_Longbraid the Grim|r
    .turnin 304 >> Turn in A Grim Task
step
    .goto Wetlands,51.2,8.0
	>> Go downstairs and click on the dwarf corpse. Ignore all the mobs.
    .turnin 631 >> Turn in The Thandol Span
    .accept 632 >> Accept The Thandol Span
step
    .goto Wetlands,49.9,18.3
>>Talk to |cRXP_FRIENDLY_Rhag Garmason|r
    .turnin 632 >> Turn in The Thandol Span
.target Rhag Garmason
    .accept 633 >> Accept The Thandol Span
step
    .goto Arathi Highlands,43.3,92.6
.target Foggy MacKreel
>>Talk to |cRXP_FRIENDLY_Foggy MacKreel|r
    .accept 647 >> Accept MacKreel's Moonshine
    >>You can still get this quest if you don't have any kind of speed increase or slow fall
    .link https://www.twitch.tv/videos/646111384 >>Click here for reference
step
#xprate <1.5
    .goto Arathi Highlands,44.3,93.0
	.use 4433 >>Jump down and loot the letter from the corpse underwater
    .accept 637 >> Accept Sully Balloo's Letter
step
    #completewith next
    .goto Arathi Highlands,52.5,90.4,30 >> Swim east toward the ramp here
step
    .goto Arathi Highlands,48.7,87.9
    .complete 633,1 --Collect Cache of Explosives Destroyed (x1)
step
    .goto Wetlands,49.9,18.3
>>Talk to |cRXP_FRIENDLY_Rhag Garmason|r
    .turnin 633 >> Turn in The Thandol Span
.target Rhag Garmason
    .accept 634 >> Accept Plea To The Alliance
step
    .goto Arathi Highlands,45.9,47.5
.target Captain Nials
>>Talk to |cRXP_FRIENDLY_Captain Nials|r
    .turnin 634 >> Turn in Plea To The Alliance
step
    #xprate >1.3
    .goto Arathi Highlands,46.6,47.0
.target Skuerto
>>Talk to |cRXP_FRIENDLY_Skuerto|r
    .turnin 690 >> Turn in Malin's Request
    .isOnQuest 690
step
    .goto Arathi Highlands,45.8,46.1
    .fp Arathi >> Get the Arathi Highlands flight path
step
.isOnQuest 647
>>Run to Southshore and go downstairs in the inn. Turn in before the timer is up. Watch out for the courier on the road.
	.unitscan Forsaken Bodyguard
.goto Hillsbrad Foothills,52.2,58.6
.target Brewmeister Bilger
>>Talk to |cRXP_FRIENDLY_Brewmeister Bilger|r
    .turnin 647 >> Turn in MacKreel's Moonshine
step
	.goto Hillsbrad Foothills,50.5,57.2
.target Loremaster Dibbs
>>Talk to |cRXP_FRIENDLY_Loremaster Dibbs|r
    .turnin 538 >> Turn in Southshore
	.isOnQuest 538
step
    .xp <30,1
    .goto Hillsbrad Foothills,51.4,58.5
.target Lieutenant Farren Orinelle
>>Talk to |cRXP_FRIENDLY_Lieutenant Farren Orinelle|r
    .accept 536 >> Accept Down the Coast
step
    .goto Hillsbrad Foothills,50.9,58.8
.target Huraan
>>Talk to |cRXP_FRIENDLY_Huraan|r
    .accept 9435 >> Accept Missing Crystals
step <<  Hunter tbc
     #completewith next
    .goto Hillsbrad Foothills,50.2,58.8
     .stable >> Stable your pet and head east
step << Hunter tbc
    .xp <30,1
    .goto Hillsbrad Foothills,56.6,53.8
    .train 17264 >> Tame an Elder Moss Creeper, attack mobs with it to learn bite rank 4
	.unitscan Elder Moss Creeper
step
    .xp <30,1
    .goto Hillsbrad Foothills,44.0,67.6
	>> Kill murlocs in the area
    .complete 536,1 --Kill Torn Fin Tidehunter (x10)
    .complete 536,2 --Kill Torn Fin Oracle (x10)
step
    .xp <30,1
    .goto Hillsbrad Foothills,51.4,58.5
>>Talk to |cRXP_FRIENDLY_Lieutenant Farren Orinelle|r
    .turnin 536 >> Turn in Down the Coast
.target Lieutenant Farren Orinelle
    .accept 559 >> Accept Farren's Proof
step
    .xp <30,1
    .goto Hillsbrad Foothills,42.3,68.3
	>> Kill murlocs and loot them for their head
    .complete 559,1 --Collect Murloc Head (x10)
step
    .xp <30,1
    .goto Hillsbrad Foothills,51.4,58.5
>>Talk to |cRXP_FRIENDLY_Lieutenant Farren Orinelle|r
    .turnin 559 >> Turn in Farren's Proof
.target Lieutenant Farren Orinelle
    .accept 560 >> Accept Farren's Proof
step
    .xp <30,1
    .goto Hillsbrad Foothills,49.5,58.8
>>Talk to |cRXP_FRIENDLY_Marshal Redpath|r
    .turnin 560 >> Turn in Farren's Proof
.target Marshal Redpath
    .accept 561 >> Accept Farren's Proof
step
    .xp <30,1
    .goto Hillsbrad Foothills,51.4,58.4
>>Talk to |cRXP_FRIENDLY_Lieutenant Farren Orinelle|r
    .turnin 561 >> Turn in Farren's Proof
.target Lieutenant Farren Orinelle
    .accept 562 >> Accept Stormwind Ho!
step
    .xp <30,1
    .goto Hillsbrad Foothills,57.1,67.4
	>> Kill naga in the area, you may need to go in the water if you get unlucky spawns
    .complete 562,1 --Kill Daggerspine Shorehunter (x10)
    .complete 562,2 --Kill Daggerspine Siren (x10)
step
    .xp <30,1
    .goto Hillsbrad Foothills,51.4,58.5
>>Talk to |cRXP_FRIENDLY_Lieutenant Farren Orinelle|r
    .turnin 562 >> Turn in Stormwind Ho!
.target Lieutenant Farren Orinelle
    .accept 563 >> Accept Reassignment
step
    .goto Hillsbrad Foothills,49.3,52.3
    .fp Southshore >> Get the Southshore flight path
step
    .goto Western Plaguelands,42.9,85.0
    >>Head north farming turtle meat along the river, once you get at the end of the river, head northwest into WPL. You don't need all 10 meat yet.
    .fp Chillwind >> Get the Chillwind Camp flight path
step
    .goto Western Plaguelands,42.9,85.0,-1
    .goto Hillsbrad Foothills,49.3,52.3,-1
    .fly Wetlands>> Fly to Wetlands
step
    .goto Wetlands,10.6,60.5
>>Talk to |cRXP_FRIENDLY_Glorin Steelbrow|r
    .turnin 292 >> Turn in The Eye of Paleth
.target Glorin Steelbrow
    .accept 293 >> Accept Cleansing the Eye
step
    .goto Wetlands,12.1,64.1
    .turnin 321 >> Turn in Lightforge Iron
    .accept 324 >> Accept The Lost Ingots
step
    .goto Wetlands,10.1,69.5
	>> Kill murlocs and loot them for ingots. The droprate can be very low.
    .complete 324,1 --Collect Lightforge Ingot (x5)
step
    .goto Wetlands,10.6,60.4
>>Talk to |cRXP_FRIENDLY_Glorin Steelbrow|r
    .turnin 324 >> Turn in The Lost Ingots
.target Glorin Steelbrow
    .accept 322 >> Accept Blessed Arm
step
    .goto Wetlands,9.9,57.4
.target Captain Stoutfist
>>Talk to |cRXP_FRIENDLY_Captain Stoutfist|r
    .turnin 474 >> Turn in Defeat Nek'rosh
step << !Mage
	.goto Wetlands,9.3,59.4
    .fly Ironforge>> Fly to Ironforge
step << Mage
    .zone Ironforge >> Teleport to Ironforge
step
    .goto Ironforge,63.8,67.8
>>Talk to |cRXP_FRIENDLY_Sara Balloo|r
    .turnin 637 >> Turn in Sully Balloo's Letter
.target Sara Balloo
    .accept 683 >> Accept Sara Balloo's Plea
step
    .goto Ironforge,39.3,55.9
>>Talk to |cRXP_FRIENDLY_King Magni Bronzebeard|r
    .turnin 683 >> Turn in Sara Balloo's Plea
.target King Magni Bronzebeard
    .accept 686 >> Accept A King's Tribute
step
    .goto Ironforge,38.7,87.2
>>Talk to |cRXP_FRIENDLY_Grand Mason Marblesten|r
    .turnin 686 >> Turn in A King's Tribute
.target Grand Mason Marblesten
    .accept 689 >> Accept A King's Tribute
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
<< Alliance
#name 30-32 Duskwood/STV
#version 1
#group RestedXP Alliance 20-32
#next RestedXP Alliance 32-47\32-33 Shimmering Flats
#xprate <1.5
step << !Mage
	.goto Ironforge,74.5,50.5,20,0
	.goto StormwindClassic,51.7,12.3
    .link https://www.youtube.com/watch?v=M_tXROi9nMQ >> Click here for a logout skip inside the tram
    .zone Stormwind City>> Take the tram and head to Stormwind
step << Mage
	>> Teleport to stormwind
    .goto StormwindClassic,39.6,79.6
	.trainer >> Train your class spells
step << Hunter
	.goto StormwindClassic,61.7,15.4
	.trainer >> Train your class spells
	.train 14924>> Train Growl 4 at the pet trainer << tbc
step
    #sticky
    #completewith exit
    >>Buy a Bronze Tube from the Auction House
    .complete 174,1
	.bronzetube
step << Human Paladin
    #sticky
	#completewith next
    >>Buy 10 linen cloth at the Auction House if you don't have it already
    .collect 2589,10,1644
step << Paladin
    .goto StormwindClassic,40.0,29.9
>>Talk to |cRXP_FRIENDLY_Duthorian Rall|r
    .turnin 1652 >>Turn in The Tome of Valor
.target Duthorian Rall
    .accept 1653 >>Accept The Test of Righteousness
step << Paladin
	.goto StormwindClassic,38.6,32.8
	.trainer >> Train your class spells
step << Priest
	.goto StormwindClassic,38.5,26.8
	.trainer >> Train your class spells
step
    .isOnQuest 322
    .goto StormwindClassic,51.7,12.3
>>Talk to |cRXP_FRIENDLY_Grimand Elmore|r
    .turnin 322 >> Turn in Blessed Arm
.target Grimand Elmore
    .accept 325 >> Accept Armed and Ready
step
	#sticky
	#label MDiplomats
	#completewith nomorekid
    .xp <28,1
    .goto StormwindClassic,41.5,31.7
	>>Talk to Thomas, the patrolling kid
.target Thomas
>>Talk to |cRXP_FRIENDLY_Thomas|r
    .accept 1274 >> Accept The Missing Diplomat
step
    .goto StormwindClassic,39.7,27.6
    .turnin -293 >> Turn in Cleansing the Eye
step
	#label nomorekid
	#requires MDiplomats
	.zone Stormwind City >> Exit the Chapel
step << Human Paladin
    .goto StormwindClassic,39.8,30.1
    >>Speak to Duthorian Rall and click on the Tome of Divinity provided
    .accept 1642 >>Accept The Tome of Divinity
>>Talk to |cRXP_FRIENDLY_Duthorian Rall|r
    .turnin 1642 >>Turn in The Tome of Divinity
.target Duthorian Rall
    .accept 1643 >>Accept The Tome of Divinity
step << Warlock
    .goto StormwindClassic,25.3,78.7
	.trainer >> Train your class spells
step
    .itemcount 2794,1
    >> Head into Stormwind Keep
	.goto StormwindClassic,74.1,7.6
    .accept 337 >> Accept An Old History Book
.target Milton Sheaf
>>Talk to |cRXP_FRIENDLY_Milton Sheaf|r
    .turnin 337 >> Turn in An Old History Book
step
    .isQuestTurnedIn 337
    .goto StormwindClassic,74.1,7.6
.target Milton Sheaf
>>Talk to |cRXP_FRIENDLY_Milton Sheaf|r
    .accept 538 >> Accept Southshore
step
    .isOnQuest 1274
    .goto StormwindClassic,78.1,25.1
>>Talk to |cRXP_FRIENDLY_Bishop DeLavey|r
    .turnin 1274 >> Turn in The Missing Diplomat
.target Bishop DeLavey
    .accept 1241 >> Accept The Missing Diplomat
step << Hunter
    .goto StormwindClassic,72.8,16.1
.target Major Samuelson
>>Talk to |cRXP_FRIENDLY_Major Samuelson|r
    .turnin 563 >> Turn in Reassignment
    .isOnQuest 563
step << Human Paladin
    .goto StormwindClassic,56.9,61.9
>>Talk to |cRXP_FRIENDLY_Stephanie Turner|r
    .turnin 1643 >>Turn in The Tome of Divinity
.target Stephanie Turner
    .accept 1644 >>Accept The Tome of Divinity
step << Human Paladin
    .goto StormwindClassic,56.9,61.9
    .complete 1644,1
>>Talk to |cRXP_FRIENDLY_Stephanie Turner|r
    .turnin 1644 >>Turn in The Tome of Divinity
.target Stephanie Turner
    .accept 1780 >>Accept The Tome of Divinity
step << Shaman
    .goto StormwindClassic,61.9,83.9
.target Farseer Umbrua
>>Talk to |cRXP_FRIENDLY_Farseer Umbrua|r
    .accept 10491 >> Accept Call of Air
	.trainer >> Train your class spells
step << Warrior
	.goto StormwindClassic,78.6,45.8
	.trainer >> Go upstairs. Train your class spells
step << Rogue
	.goto StormwindClassic,74.6,52.8
	.trainer >> Train your class spells
step
    .isOnQuest 1241
    .goto StormwindClassic,73.1,78.3
>>Talk to |cRXP_FRIENDLY_Jorgen|r
    .turnin 1241 >> Turn in The Missing Diplomat
.target Jorgen
    .accept 1242 >> Accept The Missing Diplomat
step
    .isOnQuest 1242
    .goto StormwindClassic,60.1,64.4
>>Talk to |cRXP_FRIENDLY_Elling Trias|r
    .turnin 1242 >> Turn in The Missing Diplomat
.target Elling Trias
    .accept 1243 >> Accept The Missing Diplomat
step << Human Paladin
    .goto StormwindClassic,40.1,29.9
>>Talk to |cRXP_FRIENDLY_Duthorian Rall|r
    .turnin 1780 >>Turn in The Tome of Divinity
.target Duthorian Rall
    .accept 1781 >>Accept The Tome of Divinity
step << Human Paladin
    .goto StormwindClassic,38.7,26.6
>>Talk to |cRXP_FRIENDLY_Gazin Tenorm|r
    .turnin 1781 >>Turn in The Tome of Divinity
.target Gazin Tenorm
    .accept 1786 >>Accept The Tome of Divinity
step
	#label exit
	.goto StormwindClassic,66.2,62.1
    .fly Duskwood>> Fly to Duskwood
step
	#completewith notubeandy
    .goto Duskwood,79.8,47.9
    .itemcount 4371,<1
.target Viktori Prism'Antras
>>Talk to |cRXP_FRIENDLY_Viktori Prism'Antras|r
    .accept 174 >> Accept Look To The Stars
    .turnin 174 >> Turn in Look To The Stars
step
    .goto Duskwood,79.8,47.9
.target Viktori Prism'Antras
>>Talk to |cRXP_FRIENDLY_Viktori Prism'Antras|r
    .accept 175 >> Accept Look To The Stars
    .isQuestTurnedIn 174
step
    .goto Duskwood,82.0,59.0
>>Talk to |cRXP_FRIENDLY_Blind Mary|r
    .turnin 175 >> Turn in Look To The Stars
.target Blind Mary
    .accept 177 >> Accept Look To The Stars
    .isQuestTurnedIn 174
step
    .goto Duskwood,80.9,71.8
    >>Kill the Insane Ghoul at the chapel
    .complete 177,1 --Collect Mary's Looking Glass (x1)
    .isQuestTurnedIn 174
	.unitscan Insane Ghoul
step
    .goto Duskwood,79.8,47.8
>>Talk to |cRXP_FRIENDLY_Viktori Prism'Antras|r
    .turnin 177 >> Turn in Look To The Stars
.target Viktori Prism'Antras
    .accept 181 >> Accept Look To The Stars
    .isQuestTurnedIn 174
step
	#label notubeandy
    .goto Duskwood,73.778,44.485
>>Talk to |cRXP_FRIENDLY_Tavernkeep Smitts|r
    .turnin 156 >> Turn in Gather Rot Blossoms
.target Tavernkeep Smitts
    .accept 159 >> Accept Juice Delivery
step
    .home >> Set your Hearthstone to Darkshire
step
    .goto Duskwood,73.7,46.8
>>Talk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
    .turnin 57 >> Turn in The Night Watch
.target Commander Althea Ebonlocke
    .accept 58 >> Accept The Night Watch
    .turnin 228 >> Turn in Mor'Ladim
    .accept 229 >> Accept The Daughter Who Lived
step << Paladin/Hunter
    .goto Duskwood,73.7,46.8
>>Talk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
    .turnin 57 >> Turn in The Night Watch
.target Commander Althea Ebonlocke
    .accept 58 >> Accept The Night Watch
step
	.goto Duskwood,73.7,46.8
>>Talk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
    .turnin 228 >> Turn in Mor'Ladim
.target Commander Althea Ebonlocke
    .accept 229 >> Accept The Daughter Who Lived
step << !Hunter !Paladin
    .goto Duskwood,74.543,46.085
>>Talk to |cRXP_FRIENDLY_Watcher Ladimore|r
    .turnin 229 >> Turn in The Daughter Who Lived
.target Watcher Ladimore
    .accept 231 >> Accept A Daughter's Love
step
    .isOnQuest 1243
    .goto Duskwood,72.6,33.9
>>Talk to |cRXP_FRIENDLY_Watcher Backus|r
    .turnin 1243 >> Turn in The Missing Diplomat
.target Watcher Backus
    .accept 1244 >> Accept The Missing Diplomat
step
    .goto Duskwood,60.8,29.7
    .complete -173,1 --Kill Nightbane Shadow Weaver (x6)
step
    .goto Elwynn Forest,84.6,69.5
	>> Run north to Eastvale Logging Camp in Elwynn Forest
>>Talk to |cRXP_FRIENDLY_Marshal Haggard|r
    .turnin 74 >> Turn in The Legend of Stalvan
.target Marshal Haggard
    .accept 75 >> Accept The Legend of Stalvan
step
    .goto Elwynn Forest,85.6,69.6
    >>Loot the chest upstairs
    .complete 75,1 --Collect A Faded Journal Page (x1)
step
    .goto Elwynn Forest,84.7,69.4
>>Talk to |cRXP_FRIENDLY_Marshal Haggard|r
    .turnin 75 >> Turn in The Legend of Stalvan
.target Marshal Haggard
    .accept 78 >> Accept The Legend of Stalvan
step << Human !Paladin !Warlock tbc
	.xp <30,1
	.goto Elwynn Forest,84.2,65.2
	.train 148 >> Train riding and purchase your mount.
	.money <35.00
    .skill riding,1,1
step << Shaman
    #completewith next
    .hs >> Hearth to Darkshire
step << Shaman
    .goto Duskwood,73.9,44.5
>>Talk to |cRXP_FRIENDLY_Tavernkeep Smitts|r
    .turnin 78 >> Turn in The Legend of Stalvan
.target Tavernkeep Smitts
    .accept 79 >> Accept The Legend of Stalvan
step << Shaman
    .goto Duskwood,73.6,46.7
>>Talk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
    .turnin 79 >> Turn in The Legend of Stalvan
.target Commander Althea Ebonlocke
    .accept 80 >> Accept The Legend of Stalvan
step << Shaman
    .goto Duskwood,72.6,46.9
>>Talk to |cRXP_FRIENDLY_Clerk Daltry|r
    .turnin 80 >> Turn in The Legend of Stalvan
.target Clerk Daltry
    .accept 97 >> Accept The Legend of Stalvan
step << Shaman
    .goto Duskwood,73.540,46.824
>>Talk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
    .turnin 97 >> Turn in The Legend of Stalvan
.target Commander Althea Ebonlocke
    .accept 98 >> Accept The Legend of Stalvan
step << Shaman
    #sticky
	#label TearT
	.goto Duskwood,78.4,35.9
    >>Look for a small flower on the ground
    .complete 335,1 --Collect Tear of Tilloa (x1)
    .isOnQuest 335
step << Shaman
    .goto Duskwood,77.4,36.1
	>> Kill Stalvan in the house and loot him for his ring
    .complete 98,1 --Collect Mistmantle Family Ring (x1)
step << Shaman
    #requires TearT
	.goto Duskwood,75.7,45.3
.target Madame Eva
>>Talk to |cRXP_FRIENDLY_Madame Eva|r
    .turnin 98 >> Turn in The Legend of Stalvan
step << Shaman
    #completewith next
	.goto Duskwood,77.6,44.6
    .fly Westfall>> Fly to Westfall
step << Human Paladin
    .goto Elwynn Forest,72.7,51.5
    >>Use the Symbol of Life on Henze Faulk
>>Talk to |cRXP_FRIENDLY_Henze Faulk|r
    .turnin 1786 >>Turn in The Tome of Divinity
.target Henze Faulk
    .accept 1787 >>Accept The Tome of Divinity
    .use 6866
step << Human Paladin
    .goto Elwynn Forest,73.5,51.3
    >>Kill Defias Wizards around the island
    .complete 1787,1 --Defias Script (1)
step
    .goto Duskwood,28.0,31.6
	>> Head back to Duskwood
>>Talk to |cRXP_FRIENDLY_Abercrombie|r
    .turnin 159 >> Turn in Juice Delivery
.target Abercrombie
    .accept 133 >> Accept Ghoulish Effigy
step
	#sticky
	#completewith HistoryB4
	>>Keep an eye out for Old History book (zone-wide drop). You'll need this for later
	.collect 2794,1,337
	.accept 337 >> Accept An Old History Book
step
    .goto Duskwood,23.6,35.0
	>> Kill Plague Spreaders in the crypt and loot them
    .complete 133,1 --Collect Ghoul Rib (x7)
    .complete 58,1 --Kill Plague Spreader (x20)
    .complete 101,1 --Collect Ghoul Fang (x10)
step
    .goto Duskwood,28.0,31.5
>>Talk to |cRXP_FRIENDLY_Abercrombie|r
    .turnin 133 >> Turn in Ghoulish Effigy
.target Abercrombie
    .accept 134 >> Accept Ogre Thieves
step
    .goto Duskwood,23.9,72.0
    >>Loot the chest inside the small house
    .complete 1244,1 --Collect Defias Docket (x1)
step
    .goto Duskwood,33.5,76.3
    >>Loot the crate next to the cave entrance
    .complete 134,1 --Collect Abercrombie's Crate (x1)
step
    .goto Duskwood,36.8,83.8
    .isOnQuest 181
    >>Kill Zzarc' Vul and loot him for his monocle
	.unitscan Zzarc' Vul
    .complete 181,1 --Collect Ogre's Monocle (x1)
step
    .goto Duskwood,31.6,45.4
	>> Kill spiders and loot them for their venom
    .complete 101,2 --Collect Vial of Spider Venom (x5)
step
    .goto Duskwood,28.109,31.463
>>Talk to |cRXP_FRIENDLY_Abercrombie|r
    .turnin 134 >> Turn in Ogre Thieves
.target Abercrombie
    .accept 160 >> Accept Note to the Mayor
step << !Hunter !Paladin
    .goto Duskwood,17.7,29.2
    >> Click on the gravestone
    .turnin 231 >> Turn in A Daughter's Love
step << !Dwarf/!Paladin
    .goto Duskwood,7.781,34.069
>>Talk to |cRXP_FRIENDLY_Sven Yorgen|r
    .turnin 325 >> Turn in Armed and Ready
.target Sven Yorgen
    .accept 55 >> Accept Morbent Fel
step << !Dwarf/!Paladin
    .goto Duskwood,17.2,33.4
    >>Use the provided off-hand weapon to weaken Morbent Fel
    .complete 55,1 --Kill Weakened Morbent Fel (x1)
step << !Dwarf/!Paladin
    .goto Duskwood,7.8,34.3
.target Sven Yorgen
>>Talk to |cRXP_FRIENDLY_Sven Yorgen|r
    .turnin 55 >> Turn in Morbent Fel
step << Shaman/Dwarf Paladin/wotlk
    #sticky
    #completewith ds1
    .hs >> Hearth to Darkshire
step << !Shaman !Paladin/!Dwarf Paladin
    .goto Westfall,56.5,52.6
    >>Fly to Darkshire if your HS is on cooldown << wotlk
    .fly Darkshire>> Fly to Darkshire
    .cooldown item,6948,<1 << wotlk
step
    .goto Duskwood,79.8,47.9
    .isOnQuest 181
.target Viktori Prism'Antras
>>Talk to |cRXP_FRIENDLY_Viktori Prism'Antras|r
    .turnin 181 >> Turn in Look To The Stars
step
    .goto Duskwood,75.3,47.9
>>Talk to |cRXP_FRIENDLY_Calor|r
    .turnin 173 >> Turn in Worgen in the Woods
.target Calor
    .accept 221 >> Accept Worgen in the Woods
step
    #label ds1
    .goto Duskwood,75.7,45.3
.target Madame Eva
>>Talk to |cRXP_FRIENDLY_Madame Eva|r
    .turnin 101 >> Turn in The Totem of Infliction
step << !Shaman
    .goto Duskwood,73.9,44.5
>>Talk to |cRXP_FRIENDLY_Tavernkeep Smitts|r
    .turnin 78 >> Turn in The Legend of Stalvan
.target Tavernkeep Smitts
    .accept 79 >> Accept The Legend of Stalvan
step
    .goto Duskwood,73.6,46.7
>>Talk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
    .turnin 58 >> Turn in The Night Watch
    .turnin 79 >> Turn in The Legend of Stalvan << !Shaman
.target Commander Althea Ebonlocke
    .accept 80 >> Accept The Legend of Stalvan << !Shaman
step << !Shaman
    .goto Duskwood,72.6,46.9
>>Talk to |cRXP_FRIENDLY_Clerk Daltry|r
    .turnin 80 >> Turn in The Legend of Stalvan
.target Clerk Daltry
    .accept 97 >> Accept The Legend of Stalvan
step
    .goto Duskwood,71.9,46.6
>>Talk to |cRXP_FRIENDLY_Lord Ello Ebonlocke|r
    .turnin 160 >> Turn in Note to the Mayor
.target Lord Ello Ebonlocke
    .accept 251 >> Accept Translate Abercrombie's Note
step
    .goto Duskwood,72.617,47.624
>>Talk to |cRXP_FRIENDLY_Sirra Von'Indi|r
    .turnin 251 >> Turn in Translate Abercrombie's Note
.target Sirra Von'Indi
    .accept 401 >> Accept Wait for Sirra to Finish
    .turnin 401 >> Turn in Wait for Sirra to Finish
    .accept 252 >> Accept Translation to Ello
step
    .goto Duskwood,71.9,46.6
>>Talk to |cRXP_FRIENDLY_Lord Ello Ebonlocke|r
    .turnin 252 >> Turn in Translation to Ello
.target Lord Ello Ebonlocke
    .accept 253 >> Accept Bride of the Embalmer
step
	#sticky
	#completewith next
	.destroy 3248 >> You can delete "Translated Letter From The Embalmer" from your bags, as it's no longer needed
step << !Shaman
    .goto Duskwood,73.540,46.824
>>Talk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
    .turnin 97 >> Turn in The Legend of Stalvan
.target Commander Althea Ebonlocke
    .accept 98 >> Accept The Legend of Stalvan
step
    .isOnQuest 1244
    .goto Duskwood,72.6,33.9
>>Talk to |cRXP_FRIENDLY_Watcher Backus|r
    .turnin 1244 >> Turn in The Missing Diplomat
.target Watcher Backus
    .accept 1245 >> Accept The Missing Diplomat
step << !Shaman
    .goto Duskwood,77.4,36.1
    >> Kill Stalvan in the house for his ring
    .complete 98,1 --Collect Mistmantle Family Ring (x1)
step << !Shaman
    .goto Duskwood,78.4,35.9
    >>Look for a small flower on the ground
    .complete 335,1 --Collect Tear of Tilloa (x1)
    .isOnQuest 335
step << !Shaman
    .goto Duskwood,75.7,45.3
.target Madame Eva
>>Talk to |cRXP_FRIENDLY_Madame Eva|r
    .turnin 98 >> Turn in The Legend of Stalvan
step
    .goto Duskwood,64.7,49.7
    .complete 221,1 --Kill Nightbane Dark Runner (x12)
step
    .goto Duskwood,75.3,48.1
>>Talk to |cRXP_FRIENDLY_Calor|r
    .turnin 221 >> Turn in Worgen in the Woods
.target Calor
    .accept 222 >> Accept Worgen in the Woods
step
    #label HistoryB4
	.goto Duskwood,73.0,75.0
    .complete 222,1 --Kill Nightbane Vile Fang (x8)
    .complete 222,2 --Kill Nightbane Tainted One (x8)
step
    .goto Stranglethorn Vale,38.2,4.1
    .fp Rebel >> Get the Rebel Camp flight path
step
    .goto Stranglethorn Vale,37.8,3.3
.target Corporal Kaleb
>>Talk to |cRXP_FRIENDLY_Corporal Kaleb|r
    .accept 210 >> Accept Krazek's Cookery
step
	#sticky
	#completewith thorsen
	    .goto Stranglethorn Vale,40.4,8.4,0
	>>Look out for Private Thorsen's roleplay event while you quest, he patrols down the road every ~30 minutes. Wait for the two guards to attack him, if you rescue him you'll get the quest.
.target Private Thorsen
>>Talk to |cRXP_FRIENDLY_Private Thorsen|r
	.accept 215 >> Accept Jungle Secrets
step
    .goto Stranglethorn Vale,35.6,10.5
.target Barnil Stonepot
>>Talk to |cRXP_FRIENDLY_Barnil Stonepot|r
    .accept 583 >> Accept Welcome to the Jungle
step
    .goto Stranglethorn Vale,35.7,10.8
.target Hemet Nesingwary Jr.
>>Talk to |cRXP_FRIENDLY_Hemet Nesingwary Jr.|r
    .turnin 583 >> Turn in Welcome to the Jungle
.target Ajeck Rouack
>>Talk to |cRXP_FRIENDLY_Ajeck Rouack|r
    .accept 185 >> Accept Tiger Mastery
.target Sir S. J. Erlgadin
>>Talk to |cRXP_FRIENDLY_Sir S. J. Erlgadin|r
    .accept 190 >> Accept Panther Mastery
step
	#label tigers
    .goto Stranglethorn Vale,37.6,11.6,20,0
    .goto Stranglethorn Vale,35.616,10.619,20,0
    .goto Stranglethorn Vale,36.4,13.6,20,0
    .goto Stranglethorn Vale,37.6,11.6
    >> Kill young tigers around the hunting camp
    .complete 185,1 --Kill Young Stranglethorn Tiger (x10)
step
    >> Cross the bridge and kill young panthers
    .goto Stranglethorn Vale,42.1,11.2
    .complete 190,1 --Kill Young Panther (x10)
step
	#requires tigers
	#label thorsen
    .goto Stranglethorn Vale,35.616,10.619
>>Talk to |cRXP_FRIENDLY_Ajeck Rouack|r
    .turnin 185 >> Turn in Tiger Mastery
>>Talk to |cRXP_FRIENDLY_Sir S. J. Erlgadin|r
    .turnin 190 >> Turn in Panther Mastery
.target Ajeck Rouack
    .accept 186 >> Accept Tiger Mastery
.target Sir S. J. Erlgadin
    .accept 191 >> Accept Panther Mastery
step
    .isOnQuest 215
    .goto Stranglethorn Vale,38.0,3.0
    .turnin 215 >> Turn in Jungle Secrets
    >>Skip this quest if you haven't managed to get it earlier
step
    .goto Duskwood,28.8,30.9
    >>Run back to Duskwood, click on the dirt mound to summon Eliza
    .complete 253,1 --Collect The Embalmer's Heart (x1)
step << Druid
    >>Teleport to Moonglade
    .goto Moonglade,52.4,40.6
    .trainer 12042 >> Train spells
step << !Dwarf/!Paladin
    #sticky
    #completewith next
    .hs >> Hearth to Darkshire
step << Dwarf Paladin
    .goto Duskwood,7.781,34.069
>>Talk to |cRXP_FRIENDLY_Sven Yorgen|r
    .turnin 325 >> Turn in Armed and Ready
.target Sven Yorgen
    .accept 55 >> Accept Morbent Fel
step << Dwarf Paladin
    .goto Duskwood,17.2,33.4
    >>Use the provided off-hand weapon to weaken Morbent Fel
    .complete 55,1 --Kill Weakened Morbent Fel (x1)
step << Dwarf Paladin
    .goto Duskwood,7.8,34.3
.target Sven Yorgen
>>Talk to |cRXP_FRIENDLY_Sven Yorgen|r
    .turnin 55 >> Turn in Morbent Fel
step << Dwarf Paladin
    .goto Westfall,56.5,52.6,12
    .fly Darkshire>> Fly to Darkshire
step
    .goto Duskwood,72.0,46.6
.target Lord Ello Ebonlocke
>>Talk to |cRXP_FRIENDLY_Lord Ello Ebonlocke|r
    .turnin 253 >> Turn in Bride of the Embalmer
step
    .goto Duskwood,75.752,47.569
>>Talk to |cRXP_FRIENDLY_Calor|r
    .turnin 222 >> Turn in Worgen in the Woods
.target Calor
    .accept 223 >> Accept Worgen in the Woods
step
    .goto Duskwood,75.3,48.9
.target Jonathan Carevin
>>Talk to |cRXP_FRIENDLY_Jonathan Carevin|r
    .turnin 223 >> Turn in Worgen in the Woods
step << !Mage
	.goto Duskwood,77.5,44.2
    .fly Stormwind>> Fly to Stormwind
step << Mage
	>> Teleport to stormwind
    .goto StormwindClassic,39.6,79.6
	.trainer >> Train your class spells
step << Dwarf Paladin
    #sticky
	#completewith next
    >>Buy 10 Linen Cloth from the Auction House
    .complete 1648,1
step
    .isOnQuest 1245
    .goto StormwindClassic,60.1,64.4
>>Talk to |cRXP_FRIENDLY_Elling Trias|r
    .turnin 1245 >> Turn in The Missing Diplomat
.target Elling Trias
    .accept 1246 >> Accept The Missing Diplomat
step << Paladin
	.goto StormwindClassic,38.6,32.8
	.trainer >> Train your class spells
step << Priest
	.goto StormwindClassic,38.5,26.8
	.trainer >> Train your class spells
step << Warrior
    #sticky
    #completewith next
    .goto StormwindClassic,64.1,61.2
    .goto StormwindClassic,46.7,79.0
    >>Check the the AH, the flower shop at the trade district and the alchemy shop at the mage district and buy some Liferoot, you will need 8 for a quest later, skip this step if you already have it
    .collect 3357,8 --Collect Liferoot (x8)
    #xprate <1.5
step << Warrior
    .goto StormwindClassic,78.8,45.3
.target Darnath Bladesinger
.target Wu Shen
.target Kelv Sternhammer
.target Baltus Fowler
.target Sorek
.target Torm Ragetotem
>>Talk to |cRXP_FRIENDLY_Torm Ragetotem|r
-->>Talk to |cRXP_FRIENDLY_Sorek|r
-->>Talk to |cRXP_FRIENDLY_Baltus Fowler|r
-->>Talk to |cRXP_FRIENDLY_Kelv Sternhammer|r
-->>Talk to |cRXP_FRIENDLY_Wu Shen|r
-->>Talk to |cRXP_FRIENDLY_Darnath Bladesinger|r
    .accept 1718 >> Accept The Islander
	.trainer >> Train class spells
step << Shaman
    .goto StormwindClassic,61.9,83.9
	.trainer >> Train your class spells
step << Rogue
	.goto StormwindClassic,74.6,52.8
	.trainer >> Train your class spells
step
    .isOnQuest 1246
    .goto StormwindClassic,70.3,44.8
    >>Beat Dashel Stonefist
.target Dashel Stonefist
>>Talk to |cRXP_FRIENDLY_Dashel Stonefist|r
    .turnin 1246 >> Turn in The Missing Diplomat
step
    .isQuestTurnedIn 1246
    .goto StormwindClassic,70.3,44.8
.target Dashel Stonefist
>>Talk to |cRXP_FRIENDLY_Dashel Stonefist|r
    .accept 1447 >> Accept The Missing Diplomat
    .turnin 1447 >> Turn in The Missing Diplomat
step
    .isQuestTurnedIn 1447
    .goto StormwindClassic,70.3,44.8
.target Dashel Stonefist
>>Talk to |cRXP_FRIENDLY_Dashel Stonefist|r
    .accept 1247 >> Accept The Missing Diplomat
step
    .isOnQuest 1247
    .goto StormwindClassic,60.1,63.9
>>Talk to |cRXP_FRIENDLY_Elling Trias|r
    .turnin 1247 >> Turn in The Missing Diplomat
.target Elling Trias
    .accept 1248 >> Accept The Missing Diplomat
step << Shaman wotlk
    .goto StormwindClassic,52.61,65.71
    .home >> Set your Hearthstone to Stormwind City
step
   	#sticky
	#completewith next
	.goto StormwindClassic,55.4,68.3,20 >> Bank here if you need to
step
    .goto StormwindClassic,39.9,81.3
.target Archmage Malin
>>Talk to |cRXP_FRIENDLY_Archmage Malin|r
    .accept 690 >> Accept Malin's Request
step
    .goto StormwindClassic,40.6,91.7
.target Connor Rivers
>>Talk to |cRXP_FRIENDLY_Connor Rivers|r
    .accept 1301 >> Accept James Hyal
step
    .goto StormwindClassic,26.4,78.3
.target Zardeth of the Black Claw
>>Talk to |cRXP_FRIENDLY_Zardeth of the Black Claw|r
    .turnin 335 >> Turn in A Noble Brew
    .isQuestComplete 335
step
    .goto StormwindClassic,26.4,78.3
.target Zardeth of the Black Claw
>>Talk to |cRXP_FRIENDLY_Zardeth of the Black Claw|r
    .accept 336 >> Accept A Noble Brew
    .isQuestTurnedIn 335
step << Warlock
    .goto StormwindClassic,25.3,78.5
.target Demisette Cloyce
>>Talk to |cRXP_FRIENDLY_Demisette Cloyce|r
    .accept 4738 >>Accept In Search of Menara Voidrender
    .xp <31,1
step << Warlock
    .goto StormwindClassic,25.3,78.5
.target Gakin the Darkbinder
.target Lago Blackwrench
>>Talk to |cRXP_FRIENDLY_Lago Blackwrench|r
-->>Talk to |cRXP_FRIENDLY_Gakin the Darkbinder|r
    .accept 1798 >>Accept Seeking Strahad
	.trainer >> Train your class spells

step << Shaman wotlk
    .goto StormwindNew,21.8,56.2
    .zone Darkshore >> Take the boat to Darkshore
    .zoneskip Darnassus
    .zoneskip Teldrassil
step << Shaman wotlk
    #sticky
    #completewith next
    .zone The Exodar >> Take the boat to Darkshore and then to The Exodar.
    >>If you have 35g purchase your mount and training otherwise skip this step. << tbc
	.goto The Exodar,81.5,52.5,40,0
step << Shaman wotlk
    .goto The Exodar,29.9,33.0
>>Talk to |cRXP_FRIENDLY_Farseer Nobundo|r
    .turnin 10491 >> Turn in Call of Air
.target Farseer Nobundo
    .accept 9552 >> Accept Call of Air
step << Shaman wotlk
    #completewith next
    .fly Bloodmyst Isle>> Fly to Bloodmyst Isle
step << Shaman wotlk
    .goto Bloodmyst Isle,32.300,16.132
>>Talk to |cRXP_FRIENDLY_Aqueous|r
    .turnin 9504 >> Turn in Call of Water
.target Aqueous
    .accept 9508 >> Accept Call of Water
step << Shaman wotlk
    .goto Bloodmyst Isle,26.0,40.9
	>>Kill Tel'athion and loot him for his head
    .complete 9508,1 --Collect Head of Tel'athion (x1)
step << Shaman wotlk
    .goto Bloodmyst Isle,32.2,16.1
>>Talk to |cRXP_FRIENDLY_Aqueous|r
    .turnin 9508 >> Turn in Call of Water
.target Aqueous
    .accept 9509 >> Accept Call of Water
step << Shaman wotlk
	#sticky
	#completewith ZExodar
	.deathskip >> Drown yourself and spirit rez
step << Shaman wotlk
	#sticky
	#completewith next
	.goto Bloodmyst Isle,57.7,53.9
	>>Run back to Blood Watch, then fly to The Exodar
    .fly The Exodar>> Fly to The Exodar
step << Shaman wotlk
	#label ZExodar
	.zone The Exodar >> Go to The Exodar
step << Shaman wotlk
    .goto Azuremyst Isle,26.8,27.3,42
    >>Exit The Exodar from the main entrance and travel along the mountain to your left until you get to the Wildwind Path
step << Shaman wotlk
    .goto Azuremyst Isle,24.897,35.918
>>Talk to |cRXP_FRIENDLY_Velaada|r
    .turnin 9552 >> Turn in Call of Air
.target Velaada
    .accept 9553 >> Accept Call of Air
step << Shaman wotlk
    .goto Azuremyst Isle,22.312,32.547
>>Talk to |cRXP_FRIENDLY_Susurrus|r
    .turnin 9553 >> Turn in Call of Air
.target Susurrus
    .accept 9554 >> Accept Call of Air
step << Shaman wotlk
    #sticky
    #completewith next
    .zone The Exodar>>Speak with Susurrus again so he can send you back flying to The Exodar
step << Shaman wotlk
    .goto The Exodar,30.0,33.1
.target Farseer Nobundo
>>Talk to |cRXP_FRIENDLY_Farseer Nobundo|r
    .turnin 9509 >> Turn in Call of Water
step << Shaman wotlk
    .goto The Exodar,29.6,33.4
.target Farseer Nobundo
>>Talk to |cRXP_FRIENDLY_Farseer Nobundo|r
    .turnin 9554 >> Turn in Call of Air
	>>This will give you a 1 hour-long buff giving 40% movespeed and 30% attack speed. Be careful to not AFK with it
step << Shaman wotlk
    .hs >> Hearth to Stormwind

step << Human Paladin
    .goto StormwindClassic,38.6,26.7
>>Talk to |cRXP_FRIENDLY_Gazin Tenorm|r
    .turnin 1787 >>Turn in The Tome of Divinity
.target Gazin Tenorm
    .accept 1788 >>Accept The Tome of Divinity
step << Human Paladin
    .goto StormwindClassic,39.9,29.8
.target Duthorian Rall
>>Talk to |cRXP_FRIENDLY_Duthorian Rall|r
    .turnin 1788 >>Turn in The Tome of Divinity
step
    .goto StormwindClassic,74.3,30.3
.target Count Remington Ridgewell
>>Talk to |cRXP_FRIENDLY_Count Remington Ridgewell|r
    .accept 543 >> Accept The Perenolde Tiara
step
    .goto StormwindClassic,75.1,31.4
.target Lord Baurles K. Wishock
>>Talk to |cRXP_FRIENDLY_Lord Baurles K. Wishock|r
    .turnin 336 >> Turn in A Noble Brew
    .isOnQuest 336
step
    .goto StormwindClassic,74.1,7.6
    .accept 337 >> Accept An Old History Book
>>Talk to |cRXP_FRIENDLY_Milton Sheaf|r
    .turnin 337 >> Turn in An Old History Book
.target Milton Sheaf
    .accept 538 >> Accept Southshore
step << Dwarf Paladin/Mage
    #sticky
	#completewith next
    .zone Ironforge >> Head to Ironforge
step << Dwarf Paladin
    .goto Ironforge,18.5,51.6
    .home >>Set your HS to Ironforge
step << Dwarf Paladin
    .goto Ironforge,23.131,6.143
.target Brandur Ironhammer
>>Talk to |cRXP_FRIENDLY_Brandur Ironhammer|r
    .accept 2999 >>Accept Tome of Divinity
step << Dwarf Paladin
    .goto Ironforge,27.4,12.1
    >>Go upstairs and speak to Tiza Battleforge
>>Talk to |cRXP_FRIENDLY_Tiza Battleforge|r
    .turnin 2999 >>Turn in Tome of Divinity
.target Tiza Battleforge
    .accept 1645 >>Accept The Tome of Divinity
    .turnin 1645 >>Turn in The Tome of Divinity
    .accept 1646 >>Accept The Tome of Divinity
    .turnin 1646 >>Turn in The Tome of Divinity
    .accept 1647 >>Accept The Tome of Divinity
step << Dwarf Paladin
    >>Speak to John Turner, he walks around the outer ring of the city
>>Talk to |cRXP_FRIENDLY_John Turner|r
    .turnin 1647 >>Turn in The Tome of Divinity
.target John Turner
    .accept 1648 >>Accept The Tome of Divinity
    .turnin 1648 >>Turn in The Tome of Divinity
    .accept 1778 >>Accept The Tome of Divinity
step << Dwarf Paladin
    .goto Ironforge,27.628,12.183
    >>Return to Tiza Battleforge
>>Talk to |cRXP_FRIENDLY_Tiza Battleforge|r
    .turnin 1778 >>Turn in The Tome of Divinity
.target Tiza Battleforge
    .accept 1779 >>Accept The Tome of Divinity
step << Dwarf Paladin
    .goto Ironforge,23.6,8.6
    >>Speak to Muiredon Battleforge
>>Talk to |cRXP_FRIENDLY_Muiredon Battleforge|r
    .turnin 1779 >>Turn in The Tome of Divinity
.target Muiredon Battleforge
    .accept 1783 >>Accept The Tome of Divinity
step << Dwarf Paladin
    #completewith next
    .goto Dun Morogh,53.2,35.3
    .zone Dun Morogh >> Head outside to Dun Morogh
step << Dwarf Paladin
    .goto Dun Morogh,78.321,58.088
    >>Use the Symbol of Life on Narm Faulk
>>Talk to |cRXP_FRIENDLY_Narm Faulk|r
    .turnin 1783 >>Turn in The Tome of Divinity
.target Narm Faulk
    .accept 1784 >>Accept The Tome of Divinity
step << Dwarf Paladin
    .goto Dun Morogh,77.3,60.5
    >>Kill Dark Iron Spies
    .complete 1784,1 --Dark Iron Script (1)
step << Dwarf Paladin
    #completewith next
    .hs >> Hearth to Ironforge
step << Dwarf Paladin
    .goto Ironforge,23.539,8.300
    >>Speak to Muiredon upstairs
>>Talk to |cRXP_FRIENDLY_Muiredon Battleforge|r
    .turnin 1784 >>Turn in The Tome of Divinity
.target Muiredon Battleforge
    .accept 1785 >>Accept The Tome of Divinity
step << Dwarf Paladin
    .goto Ironforge,27.4,11.9
.target Tiza Battleforge
>>Talk to |cRXP_FRIENDLY_Tiza Battleforge|r
    .turnin 1785 >>Turn in The Tome of Divinity
step << Dwarf !Paladin tbc
	.skill riding,75,1
	.money <35.0
	.goto StormwindClassic,66.2,62.2
	.fly Ironforge >> Fly to Ironforge, we're going to train our mount.
step << Dwarf !Paladin tbc
	.money <35.0
	.goto Dun Morogh,63.5,50.6
	.train 152 >> Train riding and buy your mount
step << Gnome !Warlock tbc
	.skill riding,75,1
	.money <35.0
	.goto StormwindClassic,66.2,62.2
	.fly Ironforge >> Fly to Ironforge, we're going to train our mount.
step << Gnome !Warlock tbc
	.money <35.0
	.goto Dun Morogh,49.2,48.1
	.train 553 >> Train riding and buy your mount
step << Gnome !Warlock/Dwarf
	.zoneskip Wetlands
	.skill riding,75,1
	.goto Ironforge,55.5,47.2
	.fly Wetlands>> Fly to Wetlands
step << !Gnome Warlock/!Dwarf
	.skill riding,<75,1
	.zoneskip Wetlands
	.goto StormwindClassic,66.2,62.2
	.fly Wetlands>> Fly to Wetlands
step << Gnome !Warlock/Dwarf !Paladin
	.zoneskip Wetlands
	.goto StormwindClassic,66.2,62.2
	.fly Wetlands>> Fly to Wetlands
step
    .goto Wetlands,10.6,60.7
    .home >> Set your Hearthstone to Wetlands
step
    .isOnQuest 1248
    .goto Wetlands,10.6,60.7
>>Talk to |cRXP_FRIENDLY_Mikhail|r
    .turnin 1248 >> Turn in The Missing Diplomat
.target Mikhail
    .accept 1249 >> Accept The Missing Diplomat
step
    >>Once you accept the quest, you have to engage Tapoke Jhan while he tries to escape the inn. He's by the door.
    .complete 1249,1 --Defeat Tapoke Jahn
step
    .isOnQuest 1249
    .goto Wetlands,10.6,60.7
.target Mikhail
>>Talk to |cRXP_FRIENDLY_Mikhail|r
    .turnin 1249 >> Turn in The Missing Diplomat
step
    .isOnQuest 1250
    .goto Wetlands,10.6,60.3
.target Tapoke "Slim" Jahn
>>Talk to |cRXP_FRIENDLY_Tapoke "Slim" Jahn|r
    .accept 1250 >> Accept The Missing Diplomat
step
    .isOnQuest 1250
    .goto Wetlands,10.6,60.7
>>Talk to |cRXP_FRIENDLY_Mikhail|r
    .turnin 1250 >> Turn in The Missing Diplomat
.target Mikhail
    .accept 1264 >> Accept The Missing Diplomat
step
    .goto Wetlands,8.4,61.6
>>Talk to |cRXP_FRIENDLY_Vincent Hyal|r
    .turnin 1301 >> Turn in James Hyal
.target Vincent Hyal
    .accept 1302 >> Accept James Hyal
step << Draenei !Shaman tbc
	.goto Wetlands,4.8,57.3,50,0
	.goto Darkshore,31.0,41.1,30.0
	.goto The Exodar,81.5,52.5,40,0
	.goto Wetlands,5.2,63.3,50,0
	.money <35.00
	>> Take the boat to Darkshore then the boat to the Exodar and buy your mount. Otherwise skip this step
	.hs >>Then hearth to Menethil Harbor and take the boat to Theramore.
step << NightElf tbc
	.goto Wetlands,4.8,57.3,50,0
	.goto Darkshore,33.1,40.3,30,0
	.goto Darnassus,38.1,15.3,30,0
	.goto Wetlands,5.2,63.3,50,0
	.money <35.00
	.train 150 >> Take the boat to Darkshore then to Darnassus and buy your mount.
	.hs >> Then hearth back to Menethil Harbor and take the boat to Theramore.
step << Shaman tbc
    #sticky
    #completewith next
    .zone The Exodar >> Take the boat to Darkshore and then to The Exodar.
    >>If you have 35g purchase your mount and training otherwise skip this step. << tbc
	.goto The Exodar,81.5,52.5,40,0
step << Shaman tbc
    .goto The Exodar,29.9,33.0
>>Talk to |cRXP_FRIENDLY_Farseer Nobundo|r
    .turnin 10491 >> Turn in Call of Air
.target Farseer Nobundo
    .accept 9552 >> Accept Call of Air
step << Shaman tbc
    #completewith next
    .fly Bloodmyst Isle>> Fly to Bloodmyst Isle
step << Shaman tbc
    .goto Bloodmyst Isle,32.300,16.132
>>Talk to |cRXP_FRIENDLY_Aqueous|r
    .turnin 9504 >> Turn in Call of Water
.target Aqueous
    .accept 9508 >> Accept Call of Water
step << Shaman tbc
    .goto Bloodmyst Isle,26.0,40.9
	>>Kill Tel'athion and loot him for his head
    .complete 9508,1 --Collect Head of Tel'athion (x1)
step << Shaman tbc
    .goto Bloodmyst Isle,32.2,16.1
>>Talk to |cRXP_FRIENDLY_Aqueous|r
    .turnin 9508 >> Turn in Call of Water
.target Aqueous
    .accept 9509 >> Accept Call of Water
step << Shaman tbc
	#sticky
	#completewith ZExodar
	.deathskip >> Drown yourself and spirit rez
step << Shaman tbc
	#sticky
	#completewith next
	.goto Bloodmyst Isle,57.7,53.9
	>>Run back to Blood Watch, then fly to The Exodar
    .fly The Exodar>> Fly to The Exodar
step << Shaman tbc
	#label ZExodar
	.zone The Exodar >> Go to The Exodar
step << Shaman tbc
    .goto Azuremyst Isle,26.8,27.3,42
    >>Exit The Exodar from the main entrance and travel along the mountain to your left until you get to the Wildwind Path
step << Shaman tbc
    .goto Azuremyst Isle,24.897,35.918
>>Talk to |cRXP_FRIENDLY_Velaada|r
    .turnin 9552 >> Turn in Call of Air
.target Velaada
    .accept 9553 >> Accept Call of Air
step << Shaman tbc
    .goto Azuremyst Isle,22.312,32.547
>>Talk to |cRXP_FRIENDLY_Susurrus|r
    .turnin 9553 >> Turn in Call of Air
.target Susurrus
    .accept 9554 >> Accept Call of Air
step << Shaman tbc
    #sticky
    #completewith next
    .zone The Exodar>>Speak with Susurrus again so he can send you back flying to The Exodar
step << Shaman tbc
    .goto The Exodar,30.0,33.1
.target Farseer Nobundo
>>Talk to |cRXP_FRIENDLY_Farseer Nobundo|r
    .turnin 9509 >> Turn in Call of Water
step << Shaman tbc
    .goto The Exodar,29.6,33.4
.target Farseer Nobundo
>>Talk to |cRXP_FRIENDLY_Farseer Nobundo|r
    .turnin 9554 >> Turn in Call of Air
	>>This will give you a 1 hour-long buff giving 40% movespeed and 30% attack speed. Be careful to not AFK with it
step << Shaman tbc
    .hs >> Hearth to Wetlands
]])

--1.5x guides:


RXPGuides.RegisterGuide([[
#tbc
#wotlk
<< Alliance
#name 28-30 Duskwood
#version 1
#group RestedXP Alliance 20-32
#next 30-32 Hillsbrad
#xprate >1.3
step
    #sticky
    #completewith exit
    >>Buy a Bronze Tube from the Auction House
    .complete 174,1
	.bronzetube
step << Paladin
    .goto StormwindClassic,40.0,29.9
>>Talk to |cRXP_FRIENDLY_Duthorian Rall|r
    .turnin 1652 >>Turn in The Tome of Valor
.target Duthorian Rall
    .accept 1653 >>Accept The Test of Righteousness
step << Paladin
	.goto StormwindClassic,38.6,32.8
	.trainer >> Train your class spells
step << Priest
	.goto StormwindClassic,38.5,26.8
	.trainer >> Train your class spells
step
    .goto StormwindClassic,39.3,28.0
>>Talk to |cRXP_FRIENDLY_Bishop Farthing|r
    .turnin 269 >> Turn in Seeking Wisdom
.target Bishop Farthing
    .accept 270 >> Accept The Doomed Fleet
step
    .isOnQuest 322
    .goto StormwindClassic,51.7,12.3
>>Talk to |cRXP_FRIENDLY_Grimand Elmore|r
    .turnin 322 >> Turn in Blessed Arm
.target Grimand Elmore
    .accept 325 >> Accept Armed and Ready
step
	#sticky
	#label MDiplomats
	#completewith nomorekid
    .xp <28,1
    .goto StormwindClassic,41.5,31.7
	>>Talk to the patrolling kid
.target Thomas
>>Talk to |cRXP_FRIENDLY_Thomas|r
    .accept 1274 >> Accept The Missing Diplomat
step
    .goto StormwindClassic,39.7,27.6
    .turnin -293 >> Turn in Cleansing the Eye
step
	#label nomorekid
	#requires MDiplomats
	.zone Stormwind City >> Exit the Chapel
step << Human Paladin
    .goto StormwindClassic,39.8,30.1
    >>Speak to Duthorian Rall and click on the Tome of Divinity provided
    .accept 1642 >>Accept The Tome of Divinity
>>Talk to |cRXP_FRIENDLY_Duthorian Rall|r
    .turnin 1642 >>Turn in The Tome of Divinity
.target Duthorian Rall
    .accept 1643 >>Accept The Tome of Divinity
step << Warlock
    .goto StormwindClassic,25.3,78.7
	.trainer >> Train your class spells
step
   .isOnQuest 337
	.goto StormwindClassic,74.1,7.6
    .accept 337 >> Accept An Old History Book
>>Talk to |cRXP_FRIENDLY_Milton Sheaf|r
    .turnin 337 >> Turn in An Old History Book
.target Milton Sheaf
    .accept 538 >> Accept Southshore
step
    .isOnQuest 1274
    .goto StormwindClassic,78.1,25.1
>>Talk to |cRXP_FRIENDLY_Bishop DeLavey|r
    .turnin 1274 >> Turn in The Missing Diplomat
.target Bishop DeLavey
    .accept 1241 >> Accept The Missing Diplomat
step << Hunter
    .goto StormwindClassic,72.8,16.1
.target Major Samuelson
>>Talk to |cRXP_FRIENDLY_Major Samuelson|r
    .turnin 563 >> Turn in Reassignment
    .isOnQuest 563
step << Human Paladin
    #completewith linen
    >>Buy 10 linen cloth at the Auction House if you don't have it already
    .collect 2589,10,1644,1
step << Human Paladin
    .goto StormwindClassic,56.9,61.9
>>Talk to |cRXP_FRIENDLY_Stephanie Turner|r
    .turnin 1643 >>Turn in The Tome of Divinity
.target Stephanie Turner
    .accept 1644 >>Accept The Tome of Divinity
step << Human Paladin
    #label linen
    .goto StormwindClassic,56.9,61.9
    .complete 1644,1
>>Talk to |cRXP_FRIENDLY_Stephanie Turner|r
    .turnin 1644 >>Turn in The Tome of Divinity
.target Stephanie Turner
    .accept 1780 >>Accept The Tome of Divinity
step << Warrior
	.goto StormwindClassic,78.6,45.8
	.trainer >> Go upstairs. Train your class spells
step << Rogue
	.goto StormwindClassic,74.6,52.8
	.trainer >> Train your class spells
step
    .isOnQuest 1241
    .goto StormwindClassic,73.1,78.3
>>Talk to |cRXP_FRIENDLY_Jorgen|r
    .turnin 1241 >> Turn in The Missing Diplomat
.target Jorgen
    .accept 1242 >> Accept The Missing Diplomat
step
    .isOnQuest 1242
    .goto StormwindClassic,60.1,64.4
>>Talk to |cRXP_FRIENDLY_Elling Trias|r
    .turnin 1242 >> Turn in The Missing Diplomat
.target Elling Trias
    .accept 1243 >> Accept The Missing Diplomat
step << Human Paladin
    .goto StormwindClassic,40.1,29.9
>>Talk to |cRXP_FRIENDLY_Duthorian Rall|r
    .turnin 1780 >>Turn in The Tome of Divinity
.target Duthorian Rall
    .accept 1781 >>Accept The Tome of Divinity
step << Human Paladin
    .goto StormwindClassic,38.7,26.6
>>Talk to |cRXP_FRIENDLY_Gazin Tenorm|r
    .turnin 1781 >>Turn in The Tome of Divinity
.target Gazin Tenorm
    .accept 1786 >>Accept The Tome of Divinity
step
	#label exit
	.goto StormwindClassic,66.2,62.1
    .fly Duskwood>> Fly to Duskwood
step
    #completewith next
    .skill riding,75 >>If you have more gold on this server, mail yourself atleast 5 gold, we're buying our mounts soon.
    .money >5.00
step
	#completewith notubeandy
    .goto Duskwood,79.8,47.9
    .itemcount 4371,<1
.target Viktori Prism'Antras
>>Talk to |cRXP_FRIENDLY_Viktori Prism'Antras|r
    .accept 174 >> Accept Look To The Stars
    .turnin 174 >> Turn in Look To The Stars
step
    .goto Duskwood,79.8,47.9
.target Viktori Prism'Antras
>>Talk to |cRXP_FRIENDLY_Viktori Prism'Antras|r
    .accept 175 >> Accept Look To The Stars
    .isQuestTurnedIn 174
step
    .goto Duskwood,82.0,59.0
>>Talk to |cRXP_FRIENDLY_Blind Mary|r
    .turnin 175 >> Turn in Look To The Stars
.target Blind Mary
    .accept 177 >> Accept Look To The Stars
    .isQuestTurnedIn 174
step
    .goto Duskwood,80.9,71.8
    >>Kill the Insane Ghoul at the chapel
    .complete 177,1 --Collect Mary's Looking Glass (x1)
    .isQuestTurnedIn 174
	.unitscan Insane Ghoul
step
    .goto Duskwood,79.8,47.8
>>Talk to |cRXP_FRIENDLY_Viktori Prism'Antras|r
    .turnin 177 >> Turn in Look To The Stars
.target Viktori Prism'Antras
    .accept 181 >> Accept Look To The Stars
    .isQuestTurnedIn 174
step
	#label notubeandy
    .goto Duskwood,73.778,44.485
>>Talk to |cRXP_FRIENDLY_Tavernkeep Smitts|r
    .turnin 156 >> Turn in Gather Rot Blossoms
.target Tavernkeep Smitts
    .accept 159 >> Accept Juice Delivery
step << !NightElf !Draenei
    .home >> Set your Hearthstone to Darkshire
step << Shaman
    .home >> Set your Hearthstone to Darkshire
step
    .goto Duskwood,73.7,46.8
>>Talk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
    .turnin 57 >> Turn in The Night Watch
.target Commander Althea Ebonlocke
    .accept 58 >> Accept The Night Watch
    .turnin 228 >> Turn in Mor'Ladim
    .accept 229 >> Accept The Daughter Who Lived
step << Paladin/Hunter
    .goto Duskwood,73.7,46.8
>>Talk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
    .turnin 57 >> Turn in The Night Watch
.target Commander Althea Ebonlocke
    .accept 58 >> Accept The Night Watch
step
	.goto Duskwood,73.7,46.8
>>Talk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
    .turnin 228 >> Turn in Mor'Ladim
.target Commander Althea Ebonlocke
    .accept 229 >> Accept The Daughter Who Lived
step << !Hunter !Paladin
    .goto Duskwood,74.543,46.085
>>Talk to |cRXP_FRIENDLY_Watcher Ladimore|r
    .turnin 229 >> Turn in The Daughter Who Lived
.target Watcher Ladimore
    .accept 231 >> Accept A Daughter's Love
step
    .isOnQuest 1243
    .goto Duskwood,72.6,33.9
>>Talk to |cRXP_FRIENDLY_Watcher Backus|r
    .turnin 1243 >> Turn in The Missing Diplomat
.target Watcher Backus
    .accept 1244 >> Accept The Missing Diplomat
step
    .goto Duskwood,60.8,29.7
    .complete -173,1 --Kill Nightbane Shadow Weaver (x6)
step
    .goto Elwynn Forest,84.6,69.5
	>> Run north to Eastvale Logging Camp in Elwynn Forest
>>Talk to |cRXP_FRIENDLY_Marshal Haggard|r
    .turnin 74 >> Turn in The Legend of Stalvan
.target Marshal Haggard
    .accept 75 >> Accept The Legend of Stalvan
step
    .goto Elwynn Forest,85.6,69.6
    >>Loot the chest upstairs
    .complete 75,1 --Collect A Faded Journal Page (x1)
step
    .goto Elwynn Forest,84.7,69.4
>>Talk to |cRXP_FRIENDLY_Marshal Haggard|r
    .turnin 75 >> Turn in The Legend of Stalvan
.target Marshal Haggard
    .accept 78 >> Accept The Legend of Stalvan
step << Human !Paladin !Warlock tbc
	.xp <30,1
	.goto Elwynn Forest,84.2,65.2
	.train 148 >> Train riding and purchase your mount.
	.money <35.00
    .skill riding,1,1
step << Human !Paladin !Warlock wotlk
	.goto Elwynn Forest,84.2,65.2
	.train 148 >> Train riding and purchase your mount.
	.money <5.00
step << Shaman
    #completewith next
    .hs >> Hearth to Darkshire
step << Shaman
    .goto Duskwood,73.9,44.5
>>Talk to |cRXP_FRIENDLY_Tavernkeep Smitts|r
    .turnin 78 >> Turn in The Legend of Stalvan
.target Tavernkeep Smitts
    .accept 79 >> Accept The Legend of Stalvan
step << Shaman
    .goto Duskwood,73.6,46.7
>>Talk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
    .turnin 79 >> Turn in The Legend of Stalvan
.target Commander Althea Ebonlocke
    .accept 80 >> Accept The Legend of Stalvan
step << Shaman
    .goto Duskwood,72.6,46.9
>>Talk to |cRXP_FRIENDLY_Clerk Daltry|r
    .turnin 80 >> Turn in The Legend of Stalvan
.target Clerk Daltry
    .accept 97 >> Accept The Legend of Stalvan
step << Shaman
    .goto Duskwood,73.540,46.824
>>Talk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
    .turnin 97 >> Turn in The Legend of Stalvan
.target Commander Althea Ebonlocke
    .accept 98 >> Accept The Legend of Stalvan
step << Shaman
    #sticky
	#label TearT
	.goto Duskwood,78.4,35.9
    >>Look for a small flower on the ground
    .complete 335,1 --Collect Tear of Tilloa (x1)
    .isOnQuest 335
step << Shaman
    .goto Duskwood,77.4,36.1
	>> Kill the undead in the house and loot him for his ring
    .complete 98,1 --Collect Mistmantle Family Ring (x1)
step << Shaman
    #requires TearT
	.goto Duskwood,75.7,45.3
.target Madame Eva
>>Talk to |cRXP_FRIENDLY_Madame Eva|r
    .turnin 98 >> Turn in The Legend of Stalvan
step << Shaman
    #completewith next
	.goto Duskwood,77.6,44.6
    .fly Westfall>> Fly to Westfall
step << Human Paladin
    .goto Elwynn Forest,72.7,51.5
    >>Use the Symbol of Life on Henze Faulk
>>Talk to |cRXP_FRIENDLY_Henze Faulk|r
    .turnin 1786 >>Turn in The Tome of Divinity
.target Henze Faulk
    .accept 1787 >>Accept The Tome of Divinity
    .use 6866
step << Human Paladin
    .goto Elwynn Forest,73.5,51.3
    >>Kill Defias Wizards around the island
    .complete 1787,1 --Defias Script (1)
step
    .goto Duskwood,28.0,31.6
	>> Head back to Duskwood
>>Talk to |cRXP_FRIENDLY_Abercrombie|r
    .turnin 159 >> Turn in Juice Delivery
.target Abercrombie
    .accept 133 >> Accept Ghoulish Effigy
step
	#sticky
	#completewith HistoryB4
	>>Keep an eye out for Old History book (zone-wide drop). You'll need this for later
	.collect 2794,1,337
	.accept 337 >> Accept An Old History Book
step
    .goto Duskwood,23.6,35.0
	>> Kill Plague Spreaders in the crypt and loot them
    .complete 133,1 --Collect Ghoul Rib (x7)
    .complete 58,1 --Kill Plague Spreader (x20)
    .complete 101,1 --Collect Ghoul Fang (x10)
step
    .goto Duskwood,28.0,31.5
>>Talk to |cRXP_FRIENDLY_Abercrombie|r
    .turnin 133 >> Turn in Ghoulish Effigy
.target Abercrombie
    .accept 134 >> Accept Ogre Thieves
step
    .goto Duskwood,23.9,72.0
    >>Loot the chest inside the small house
    .complete 1244,1 --Collect Defias Docket (x1)
step
    .goto Duskwood,33.5,76.3
    >>Loot the crate next to the cave entrance
    .complete 134,1 --Collect Abercrombie's Crate (x1)
step
    .goto Duskwood,36.8,83.8
    >>Kill Zzarc' Vul and loot him for his monocle
	.unitscan Zzarc' Vul
    .isOnQuest 181
    .complete 181,1 --Collect Ogre's Monocle (x1)
step
    .goto Stranglethorn Vale,38.2,4.1
    >>Head out of the cave and then south to STV. Alternatively do the logout skip by hopping on the banner.
    .link https://www.youtube.com/watch?v=i5dIhfOmyd8 >> Click here for a video on how to do the logout skip
    .fp Rebel >> Get the Rebel Camp flight path
step
    .goto Stranglethorn Vale,35.6,10.5
.target Barnil Stonepot
>>Talk to |cRXP_FRIENDLY_Barnil Stonepot|r
    .accept 583 >> Accept Welcome to the Jungle
step
    .goto Stranglethorn Vale,35.7,10.8
.target Hemet Nesingwary Jr.
>>Talk to |cRXP_FRIENDLY_Hemet Nesingwary Jr.|r
    .turnin 583 >> Turn in Welcome to the Jungle
.target Ajeck Rouack
>>Talk to |cRXP_FRIENDLY_Ajeck Rouack|r
    .accept 185 >> Accept Tiger Mastery
.target Sir S. J. Erlgadin
>>Talk to |cRXP_FRIENDLY_Sir S. J. Erlgadin|r
    .accept 190 >> Accept Panther Mastery
step
	#sticky
	#completewith thorsen
	#label tigers
    .complete 185,1 --Kill Young Stranglethorn Tiger (x10)
step
    .goto Stranglethorn Vale,42.1,11.2
    .complete 190,1 --Kill Young Panther (x10)
step
	#requires tigers
	#label thorsen
    .goto Stranglethorn Vale,35.616,10.619
>>Talk to |cRXP_FRIENDLY_Ajeck Rouack|r
    .turnin 185 >> Turn in Tiger Mastery
.target Ajeck Rouack
    .accept 186 >> Accept Tiger Mastery
>>Talk to |cRXP_FRIENDLY_Sir S. J. Erlgadin|r
    .turnin 190 >> Turn in Panther Mastery
.target Sir S. J. Erlgadin
    .accept 191 >> Accept Panther Mastery
step
    .goto Duskwood,31.6,45.4
	>> Kill spiders and loot them for their venom
    .complete 101,2 --Collect Vial of Spider Venom (x5)
step
    .goto Duskwood,28.109,31.463
>>Talk to |cRXP_FRIENDLY_Abercrombie|r
    .turnin 134 >> Turn in Ogre Thieves
.target Abercrombie
    .accept 160 >> Accept Note to the Mayor
step << !Hunter !Paladin
    .goto Duskwood,17.7,29.2
    >> Click on the gravestone
    .turnin 231 >> Turn in A Daughter's Love
step << Shaman tbc/Dwarf Paladin tbc/wotlk
    #sticky
    #completewith ds2
    .hs >> Hearth to Darkshire
step
#completewith next
    .goto Westfall,56.5,52.6
    >>Fly to Darkshire if your HS is on cooldown << wotlk
    .fly Darkshire>> Fly to Darkshire
    .cooldown item,6948,<1 << wotlk
step
    .goto Duskwood,79.8,47.9
    .isOnQuest 181
.target Viktori Prism'Antras
>>Talk to |cRXP_FRIENDLY_Viktori Prism'Antras|r
    .turnin 181 >> Turn in Look To The Stars
step
    .goto Duskwood,75.3,47.9
>>Talk to |cRXP_FRIENDLY_Calor|r
    .turnin 173 >> Turn in Worgen in the Woods
.target Calor
    .accept 221 >> Accept Worgen in the Woods
step
    #label ds2
    .goto Duskwood,75.7,45.3
.target Madame Eva
>>Talk to |cRXP_FRIENDLY_Madame Eva|r
    .turnin 101 >> Turn in The Totem of Infliction
step << !Shaman
    .goto Duskwood,73.9,44.5
>>Talk to |cRXP_FRIENDLY_Tavernkeep Smitts|r
    .turnin 78 >> Turn in The Legend of Stalvan
.target Tavernkeep Smitts
    .accept 79 >> Accept The Legend of Stalvan
step
    .goto Duskwood,73.6,46.7
>>Talk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
    .turnin 58 >> Turn in The Night Watch
    .turnin 79 >> Turn in The Legend of Stalvan << !Shaman
.target Commander Althea Ebonlocke
    .accept 80 >> Accept The Legend of Stalvan << !Shaman
step << !Shaman
    .goto Duskwood,72.6,46.9
>>Talk to |cRXP_FRIENDLY_Clerk Daltry|r
    .turnin 80 >> Turn in The Legend of Stalvan
.target Clerk Daltry
    .accept 97 >> Accept The Legend of Stalvan
step
    .goto Duskwood,71.9,46.6
>>Talk to |cRXP_FRIENDLY_Lord Ello Ebonlocke|r
    .turnin 160 >> Turn in Note to the Mayor
.target Lord Ello Ebonlocke
    .accept 251 >> Accept Translate Abercrombie's Note
step
    .goto Duskwood,72.617,47.624
>>Talk to |cRXP_FRIENDLY_Sirra Von'Indi|r
    .turnin 251 >> Turn in Translate Abercrombie's Note
.target Sirra Von'Indi
    .accept 401 >> Accept Wait for Sirra to Finish
    .turnin 401 >> Turn in Wait for Sirra to Finish
    .accept 252 >> Accept Translation to Ello
step
    .goto Duskwood,71.9,46.6
.target Lord Ello Ebonlocke
>>Talk to |cRXP_FRIENDLY_Lord Ello Ebonlocke|r
    .turnin 252 >> Turn in Translation to Ello
step
#xprate <1.7
    .goto Duskwood,71.9,46.6
.target Lord Ello Ebonlocke
>>Talk to |cRXP_FRIENDLY_Lord Ello Ebonlocke|r
    .accept 253 >> Accept Bride of the Embalmer
step
	#sticky
	#completewith next
	.destroy 3248 >> You can delete "Translated Letter From The Embalmer" from your bags, as it's no longer needed
step << !Shaman
    .goto Duskwood,73.540,46.824
>>Talk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
    .turnin 97 >> Turn in The Legend of Stalvan
.target Commander Althea Ebonlocke
    .accept 98 >> Accept The Legend of Stalvan
step
    .isOnQuest 1244
    .goto Duskwood,72.6,33.9
    >> He patrols along the north road
>>Talk to |cRXP_FRIENDLY_Watcher Backus|r
    .turnin 1244 >> Turn in The Missing Diplomat
.target Watcher Backus
    .accept 1245 >> Accept The Missing Diplomat
step << !Shaman
    .goto Duskwood,77.4,36.1
    >> Kill and loot Stalvan Mistmantle
    .complete 98,1 --Collect Mistmantle Family Ring (x1)
step << !Shaman
    .isOnQuest 335
    .goto Duskwood,78.4,35.9
    >>Look for a small flower on the ground
    .complete 335,1 --Collect Tear of Tilloa (x1)
step << !Shaman
    .goto Duskwood,75.7,45.3
.target Madame Eva
>>Talk to |cRXP_FRIENDLY_Madame Eva|r
    .turnin 98 >> Turn in The Legend of Stalvan
step
    .goto Duskwood,64.7,49.7
    >> Kill worgen in the area
    .complete 221,1 --Kill Nightbane Dark Runner (x12)
step
    .goto Duskwood,75.3,48.1
>>Talk to |cRXP_FRIENDLY_Calor|r
    .turnin 221 >> Turn in Worgen in the Woods
.target Calor
    .accept 222 >> Accept Worgen in the Woods
step
    #label HistoryB4
    >> Kill Worgen in the area
	.goto Duskwood,73.0,75.0
    .complete 222,1 --Kill Nightbane Vile Fang (x8)
    .complete 222,2 --Kill Nightbane Tainted One (x8)
step
    .xp 30-10575 << !Shaman
    .xp 30-7460 << Shaman
step
    .goto Duskwood,75.752,47.569
>>Talk to |cRXP_FRIENDLY_Calor|r
    .turnin 222 >> Turn in Worgen in the Woods
.target Calor
    .accept 223 >> Accept Worgen in the Woods
step
    .goto Duskwood,75.3,48.9
.target Jonathan Carevin
>>Talk to |cRXP_FRIENDLY_Jonathan Carevin|r
    .turnin 223 >> Turn in Worgen in the Woods
step << Shaman
    .xp 30
step << !Mage
	.goto Duskwood,77.5,44.2
    .fly Stormwind>> Fly to Stormwind
step << Shaman
    .goto StormwindClassic,61.9,83.9
.target Farseer Umbrua
>>Talk to |cRXP_FRIENDLY_Farseer Umbrua|r
    .accept 10491 >> Accept Call of Air
    .trainer >> Train your class spells
    .xp <30,1
step << Mage
	>> Teleport to stormwind
    .goto StormwindClassic,39.6,79.6
	.trainer >> Train your class spells
step << Dwarf Paladin
    #sticky
	#completewith next
    >>Buy 10 Linen Cloth from the Auction House
    .complete 1648,1
step
    .isOnQuest 1245
    .goto StormwindClassic,60.1,64.4
>>Talk to |cRXP_FRIENDLY_Elling Trias|r
    .turnin 1245 >> Turn in The Missing Diplomat
.target Elling Trias
    .accept 1246 >> Accept The Missing Diplomat
step << Paladin
	.goto StormwindClassic,38.6,32.8
	.trainer >> Train your class spells
step << Priest
	.goto StormwindClassic,38.5,26.8
	.trainer >> Train your class spells
step << Warrior
    #sticky
    #completewith next
    .goto StormwindClassic,64.1,61.2
    .goto StormwindClassic,46.7,79.0
    >>Check the the AH, the flower shop at the trade district and the alchemy shop at the mage district and buy some Liferoot, you will need 8 for a quest later, skip this step if you already have it
    .collect 3357,8 --Collect Liferoot (x8)
    #xprate <1.5
step << Warrior
    .goto StormwindClassic,78.8,45.3
.target Darnath Bladesinger
.target Wu Shen
.target Kelv Sternhammer
.target Baltus Fowler
.target Sorek
.target Torm Ragetotem
>>Talk to |cRXP_FRIENDLY_Torm Ragetotem|r
-->>Talk to |cRXP_FRIENDLY_Sorek|r
-->>Talk to |cRXP_FRIENDLY_Baltus Fowler|r
-->>Talk to |cRXP_FRIENDLY_Kelv Sternhammer|r
-->>Talk to |cRXP_FRIENDLY_Wu Shen|r
-->>Talk to |cRXP_FRIENDLY_Darnath Bladesinger|r
    .accept 1718 >> Accept The Islander
	.trainer >> Train class spells
    .xp <30,1
step << Rogue
	.goto StormwindClassic,74.6,52.8
	.trainer >> Train your class spells
step
    .isOnQuest 1246
    .goto StormwindClassic,70.3,44.8
    >>Beat Dashel Stonefist
>>Talk to |cRXP_FRIENDLY_Dashel Stonefist|r
    .turnin 1246 >> Turn in The Missing Diplomat
.target Dashel Stonefist
    .accept 1447 >> Accept The Missing Diplomat
    .turnin 1447 >> Turn in The Missing Diplomat
    .accept 1247 >> Accept The Missing Diplomat
step
    .isOnQuest 1247
    .goto StormwindClassic,60.1,63.9
>>Talk to |cRXP_FRIENDLY_Elling Trias|r
    .turnin 1247 >> Turn in The Missing Diplomat
.target Elling Trias
    .accept 1248 >> Accept The Missing Diplomat
step << NightElf/Draenei
    #sticky
    .goto StormwindClassic,52.61,65.71
    .home >> Set your hearthstone in Stormwind
step
    .goto StormwindClassic,39.9,81.3
.target Archmage Malin
>>Talk to |cRXP_FRIENDLY_Archmage Malin|r
    .accept 690 >> Accept Malin's Request
step
    .goto StormwindClassic,40.6,91.7
.target Connor Rivers
>>Talk to |cRXP_FRIENDLY_Connor Rivers|r
    .accept 1301 >> Accept James Hyal
step << Warlock
    .goto StormwindClassic,25.3,78.5
.target Demisette Cloyce
>>Talk to |cRXP_FRIENDLY_Demisette Cloyce|r
    .accept 4738 >>Accept In Search of Menara Voidrender
    .xp <31,1
step << Warlock
    .goto StormwindClassic,25.3,78.5
.target Gakin the Darkbinder
.target Lago Blackwrench
>>Talk to |cRXP_FRIENDLY_Lago Blackwrench|r
-->>Talk to |cRXP_FRIENDLY_Gakin the Darkbinder|r
    .accept 1798 >>Accept Seeking Strahad
	.trainer >> Train your class spells

step << Shaman wotlk
    .goto StormwindNew,21.8,56.2
    .zone Darkshore >> Take the boat to Darkshore
    .zoneskip Darnassus
    .zoneskip Teldrassil
step << Shaman wotlk
    #sticky
    #completewith next
    .zone The Exodar >> Take the boat to Darkshore and then to The Exodar.
    >>If you have 35g purchase your mount and training otherwise skip this step. << tbc
	.goto The Exodar,81.5,52.5,40,0
step << Shaman wotlk
    .goto The Exodar,29.9,33.0
>>Talk to |cRXP_FRIENDLY_Farseer Nobundo|r
    .turnin 10491 >> Turn in Call of Air
.target Farseer Nobundo
    .accept 9552 >> Accept Call of Air
step << Shaman wotlk
    #completewith next
    .fly Bloodmyst Isle>> Fly to Bloodmyst Isle
step << Shaman wotlk
    .goto Bloodmyst Isle,32.300,16.132
>>Talk to |cRXP_FRIENDLY_Aqueous|r
    .turnin 9504 >> Turn in Call of Water
.target Aqueous
    .accept 9508 >> Accept Call of Water
step << Shaman wotlk
    .goto Bloodmyst Isle,26.0,40.9
	>>Kill Tel'athion and loot him for his head
    .complete 9508,1 --Collect Head of Tel'athion (x1)
step << Shaman wotlk
    .goto Bloodmyst Isle,32.2,16.1
>>Talk to |cRXP_FRIENDLY_Aqueous|r
    .turnin 9508 >> Turn in Call of Water
.target Aqueous
    .accept 9509 >> Accept Call of Water
step << Shaman wotlk
	#sticky
	#completewith ZExodar
	.deathskip >> Drown yourself and spirit rez
step << Shaman wotlk
	#sticky
	#completewith next
	.goto Bloodmyst Isle,57.7,53.9
	>>Run back to Blood Watch, then fly to The Exodar
    .fly The Exodar>> Fly to The Exodar
step << Shaman wotlk
	#label ZExodar
	.zone The Exodar >> Go to The Exodar
step << Shaman wotlk
    .goto Azuremyst Isle,26.8,27.3,42
    >>Exit The Exodar from the main entrance and travel along the mountain to your left until you get to the Wildwind Path
step << Shaman wotlk
    .goto Azuremyst Isle,24.897,35.918
>>Talk to |cRXP_FRIENDLY_Velaada|r
    .turnin 9552 >> Turn in Call of Air
.target Velaada
    .accept 9553 >> Accept Call of Air
step << Shaman wotlk
    .goto Azuremyst Isle,22.312,32.547
>>Talk to |cRXP_FRIENDLY_Susurrus|r
    .turnin 9553 >> Turn in Call of Air
.target Susurrus
    .accept 9554 >> Accept Call of Air
step << Shaman wotlk
    #sticky
    #completewith next
    .zone The Exodar>>Speak with Susurrus again so he can send you back flying to The Exodar
step << Shaman wotlk
    .goto The Exodar,30.0,33.1
.target Farseer Nobundo
>>Talk to |cRXP_FRIENDLY_Farseer Nobundo|r
    .turnin 9509 >> Turn in Call of Water
step << Shaman wotlk
    .goto The Exodar,29.6,33.4
.target Farseer Nobundo
>>Talk to |cRXP_FRIENDLY_Farseer Nobundo|r
    .turnin 9554 >> Turn in Call of Air
	>>This will give you a 1 hour-long buff giving 40% movespeed and 30% attack speed. Be careful to not AFK with it
step << Shaman wotlk
    .hs >> Hearth to Stormwind

step << Human Paladin
    .goto StormwindClassic,38.6,26.7
>>Talk to |cRXP_FRIENDLY_Gazin Tenorm|r
    .turnin 1787 >>Turn in The Tome of Divinity
.target Gazin Tenorm
    .accept 1788 >>Accept The Tome of Divinity
step << Human Paladin
    .goto StormwindClassic,39.9,29.8
.target Duthorian Rall
>>Talk to |cRXP_FRIENDLY_Duthorian Rall|r
    .turnin 1788 >>Turn in The Tome of Divinity
step
    .goto StormwindClassic,74.1,7.6
    >>Click on the Old History Book in your bags, skip this step if you havent found it
    .accept 337 >> Accept An Old History Book
.target Milton Sheaf
>>Talk to |cRXP_FRIENDLY_Milton Sheaf|r
    .turnin 337 >> Turn in An Old History Book
    .use 2794
step
    .goto StormwindClassic,74.1,7.6
.target Milton Sheaf
>>Talk to |cRXP_FRIENDLY_Milton Sheaf|r
    .accept 538 >> Accept Southshore
    .isQuestTurnedIn 337
step << NightElf wotlk
	.goto Stormwind City,4.8,57.3,50,0
	.goto Darkshore,33.1,40.3,30,0
	.goto Darnassus,38.1,15.3,30,0
	.goto Wetlands,5.2,63.3,50,0
	.money <5.00
	.skill riding,75 >> Take the boat to Darkshore then to Darnassus and buy your mount. Then hearth back to Stormwind
step << Draenei !Shaman !Paladin wotlk
	.goto Stormwind City,4.8,57.3,50,0
	.goto Darkshore,31.0,41.1,30.0
	.goto The Exodar,81.5,52.5,40,0
	.goto Wetlands,5.2,63.3,50,0
	.money <5.00
	.skill riding,75 >> Take the boat to Darkshore then the boat to the Exodar and buy your mount. Then hearth to Stormwind
step
    #sticky
	#completewith next
    .goto StormwindClassic,60.5,12.3,40,0
    .goto StormwindClassic,60.5,12.3,0
    .link https://www.youtube.com/watch?v=M_tXROi9nMQ >> Click here for a logout skip inside the tram
    .zone Ironforge >> Take the tram to Ironforge
    >>Teleport to Ironforge instead if you have that spell trained << Mage
    .zoneskip Wetlands
step
    .goto Ironforge,69.8,50.1
.target Tinkmaster Overspark
>>Talk to |cRXP_FRIENDLY_Tinkmaster Overspark|r
    .turnin 2923 >> Turn in Tinkmaster Overspark
    .isOnQuest 2923
    .zoneskip Wetlands
step << Rogue
    #sticky
    #completewith end
    .trainer >> Train your class spells in ironforge
step << Rogue
    .goto Ironforge,45.2,6.6
    >>Buy the level 31 weapon upgrades (17dps)
    .collect 2520,1
    .collect 2526,1
    >>Skip this step if you can find a better weapon at the Auction House
step << Hunter/Warrior/Paladin/Shaman/Rogue
	.goto Ironforge,61.34,89.25
	.train 197 >> Train 2H Axes << !Rogue
	.train 266 >> Train Guns << Hunter/Warrior/Rogue
    .train 199 >> Train 2H Maces << Warrior/Shaman
    .train 198 >> Train Maces << Rogue/Shaman
    .train 44 >> Train Axes << Warrior wotlk/Shaman/Rogue wotlk
    .zoneskip Wetlands
step << Hunter tbc
	#sticky
	#completewith next
	.goto Ironforge,61.34,89.25
	>>Go inside the building, head downstairs and buy a level 30 quiver from Thalgus Thunderfist
	.collect 7371,1
step << !Dwarf !Gnome wotlk
    .goto Ironforge,55.501,47.742
    .fp Ironforge>> Get the Ironforge Flight Path
step
    .goto Ironforge,18.5,51.6
    .home >>Set your hearthstone to Ironforge
step << Dwarf Paladin
    .goto Ironforge,23.131,6.143
.target Brandur Ironhammer
>>Talk to |cRXP_FRIENDLY_Brandur Ironhammer|r
    .accept 2999 >>Accept Tome of Divinity
step << Dwarf Paladin
    .goto Ironforge,27.4,12.1
    >>Go upstairs and speak to Tiza Battleforge
>>Talk to |cRXP_FRIENDLY_Tiza Battleforge|r
    .turnin 2999 >>Turn in Tome of Divinity
.target Tiza Battleforge
    .accept 1645 >>Accept The Tome of Divinity
    .turnin 1645 >>Turn in The Tome of Divinity
    .accept 1646 >>Accept The Tome of Divinity
    .turnin 1646 >>Turn in The Tome of Divinity
    .accept 1647 >>Accept The Tome of Divinity
step << Dwarf Paladin
    >>Speak to John Turner, he walks around the outer ring of the city
>>Talk to |cRXP_FRIENDLY_John Turner|r
    .turnin 1647 >>Turn in The Tome of Divinity
.target John Turner
    .accept 1648 >>Accept The Tome of Divinity
    .turnin 1648 >>Turn in The Tome of Divinity
    .accept 1778 >>Accept The Tome of Divinity
step << Dwarf Paladin
    .goto Ironforge,27.628,12.183
    >>Return to Tiza Battleforge
>>Talk to |cRXP_FRIENDLY_Tiza Battleforge|r
    .turnin 1778 >>Turn in The Tome of Divinity
.target Tiza Battleforge
    .accept 1779 >>Accept The Tome of Divinity
step << Dwarf Paladin
    .goto Ironforge,23.6,8.6
    >>Speak to Muiredon Battleforge
>>Talk to |cRXP_FRIENDLY_Muiredon Battleforge|r
    .turnin 1779 >>Turn in The Tome of Divinity
.target Muiredon Battleforge
    .accept 1783 >>Accept The Tome of Divinity
step << Dwarf Paladin
    #completewith next
    .goto Dun Morogh,53.2,35.3
    .zone Dun Morogh >> Head outside to Dun Morogh
step << Paladin
    .goto Dun Morogh,52.5,36.8
    >> Head to the gates of Ironforge << !Dwarf
.target Jordan Stilwell
>>Talk to |cRXP_FRIENDLY_Jordan Stilwell|r
    .turnin 1653 >>Turn in The Test of Righteousness
step << Dwarf Paladin
    .goto Dun Morogh,78.321,58.088
    >>Use the Symbol of Life on Narm Faulk
>>Talk to |cRXP_FRIENDLY_Narm Faulk|r
    .turnin 1783 >>Turn in The Tome of Divinity
.target Narm Faulk
    .accept 1784 >>Accept The Tome of Divinity
step << Dwarf Paladin
    .goto Dun Morogh,77.3,60.5
    >>Kill Dark Iron Spies
    .complete 1784,1 --Dark Iron Script (1)
step << Dwarf Paladin
    #completewith next
    .hs >> Hearth to Ironforge
step << Dwarf Paladin
    .goto Ironforge,23.539,8.300
    >>Speak to Muiredon upstairs
>>Talk to |cRXP_FRIENDLY_Muiredon Battleforge|r
    .turnin 1784 >>Turn in The Tome of Divinity
.target Muiredon Battleforge
    .accept 1785 >>Accept The Tome of Divinity
step << Dwarf Paladin
    .goto Ironforge,27.4,11.9
.target Tiza Battleforge
>>Talk to |cRXP_FRIENDLY_Tiza Battleforge|r
    .turnin 1785 >>Turn in The Tome of Divinity
step << Dwarf !Paladin tbc
	.money <35.0
	.goto Dun Morogh,63.5,50.6
	.train 152 >> Train riding and buy your mount
step << Gnome !Warlock tbc
	.money <35.0
	.goto Dun Morogh,49.2,48.1
	.train 553 >> Train riding and buy your mount
step << Mage
    .goto Ironforge,25.5,7.1
    .train 3562>>Train Teleport: Ironforge
step << Gnome/Dwarf/tbc
    .goto Ironforge,55.501,47.742
    .fly Wetlands>> Fly to wetlands
step << wotlk !Dwarf !Gnome
    #sticky
    .goto Dun Morogh,53.2,35.3
    .zone Dun Morogh >> Head outside to Dun Morogh
    .zoneskip Ironforge,1
step << wotlk !Dwarf !Gnome
    #completewith next
    .goto Dun Morogh,59.5,42.8,40,0
    .goto Dun Morogh,60.4,44.1,40,0
    .goto Dun Morogh,61.1,44.1,40,0
    .goto Dun Morogh,61.2,42.3,40,0
    .goto Dun Morogh,60.8,40.9,40,0
    .goto Dun Morogh,59.0,39.5,40,0
    .goto Dun Morogh,60.3,38.6,40,0
    .goto Dun Morogh,61.7,38.7,40,0
    .goto Dun Morogh,65.7,21.6,40,0
    .goto Dun Morogh,65.8,12.5,40,0
    .goto Dun Morogh,65.6,10.8,40,0
    .goto Dun Morogh,66.5,10.0,40,0
    .goto Dun Morogh,66.9,8.5,40,0
    .goto Wetlands,20.6,67.2,50,0
    .goto Wetlands,17.7,67.7,40,0
    .goto Wetlands,16.8,65.3,40,0
    .goto Wetlands,15.1,64.0,40,0
    .goto Wetlands,12.1,60.3,40,0
    >>Do the Deathless Dun Morogh -> Wetlands skip
    .link https://www.youtube.com/watch?v=9afQTimaiZQ >> CLICK HERE for video reference
    .goto Wetlands,12.1,60.3,80 >> Travel to Menethil Harbor
step << wotlk !Dwarf !Gnome
    .goto Wetlands,9.5,59.7
    .fp Menethil >> Get the Menethil Harbor flight path
step << Dwarf !Paladin wotlk
	#sticky
	#completewith next
	.goto Dun Morogh,63.5,50.6
	.money <5.00
	.skill riding,75 >> Head to Dun Morogh, train riding and purchase your mount.
step << Gnome !Warlock wotlk
	#sticky
	#completewith next
	.goto Dun Morogh,49.2,48.1
	.money <5.00
	.skill riding,75 >> Head to Dun Morogh, train riding and purchase your mount.

]])


RXPGuides.RegisterGuide([[
#tbc
#wotlk
<< Alliance
#version 1
#group RestedXP Alliance 20-32
#name 30-32 Hillsbrad
#next RestedXP Alliance 32-47\32-33 Shimmering Flats
#xprate >1.3

step
    .goto Wetlands,10.8,59.6
.target First Mate Fitzsimmons
>>Talk to |cRXP_FRIENDLY_First Mate Fitzsimmons|r
    .accept 288 >> Accept The Third Fleet
step
    .goto Wetlands,10.6,60.5
>>Talk to |cRXP_FRIENDLY_Glorin Steelbrow|r
    .turnin 270 >> Turn in The Doomed Fleet
.target Glorin Steelbrow
    .accept 321 >> Accept Lightforge Iron
step
    #label mead
    #sticky
    .goto Wetlands,10.7,60.9
    >> Buy a Flagon of Mead from the Innkeeper
    .complete 288,1 --Collect Flagon of Mead (x1)
step
    .goto Wetlands,10.84,60.43
    >>Go upstairs and talk to Archaeologist Flagongut
.target Archaeologist Flagongut
>>Talk to |cRXP_FRIENDLY_Archaeologist Flagongut|r
    .turnin 942 >>Turn in The Absent Minded Prospector
    .isOnQuest 942
step << wotlk
    #completewith next
    + If you don't already have your mount, mail yourself 5g if you can. More opportunities soon.
step
    #requires mead
    .isOnQuest 1248
    .goto Wetlands,10.6,60.7
>>Talk to |cRXP_FRIENDLY_Mikhail|r
    .turnin 1248 >> Turn in The Missing Diplomat
.target Mikhail
    .accept 1249 >> Accept The Missing Diplomat
step
    >>Once you accept the quest, you have to engage Tapoke Jhan while he tries to escape the inn. Two level 34 enemies will attack you. You may need to skip this step and do it later if you cannot kill them.
    .complete 1249,1 --Defeat Tapoke Jahn
step
    .isOnQuest 1249
    .goto Wetlands,10.6,60.7
.target Mikhail
>>Talk to |cRXP_FRIENDLY_Mikhail|r
    .turnin 1249 >> Turn in The Missing Diplomat
.target Tapoke "Slim" Jahn
>>Talk to |cRXP_FRIENDLY_Tapoke "Slim" Jahn|r
    .accept 1250 >> Accept The Missing Diplomat
step
    .isOnQuest 1250
    .goto Wetlands,10.6,60.7
>>Talk to |cRXP_FRIENDLY_Mikhail|r
    .turnin 1250 >> Turn in The Missing Diplomat
.target Mikhail
    .accept 1264 >> Accept The Missing Diplomat
step
    .goto Wetlands,10.8,59.7
>>Talk to |cRXP_FRIENDLY_First Mate Fitzsimmons|r
    .turnin 288 >> Turn in The Third Fleet
.target First Mate Fitzsimmons
    .accept 289 >> Accept The Cursed Crew
step
    .goto Wetlands,8.4,61.6
>>Talk to |cRXP_FRIENDLY_Vincent Hyal|r
    .turnin 1301 >> Turn in James Hyal
.target Vincent Hyal
    .accept 1302 >> Accept James Hyal
step << Draenei !Shaman tbc
	.goto Wetlands,4.8,57.3,50,0
	.goto Darkshore,31.0,41.1,30.0
	.goto The Exodar,81.5,52.5,40,0
	.goto Wetlands,5.2,63.3,50,0
	.money <35.00
	>> Take the boat to Darkshore then the boat to the Exodar and buy your mount. Otherwise skip this step
	.hs >>Then hearth to Menethil Harbor and take the boat to Theramore.
step << NightElf tbc
	.goto Wetlands,4.8,57.3,50,0
	.goto Darkshore,33.1,40.3,30,0
	.goto Darnassus,38.1,15.3,30,0
	.goto Wetlands,5.2,63.3,50,0
	.money <35.00
	.train 150 >> Take the boat to Darkshore then to Darnassus and buy your mount.
	.hs >> Then hearth back to Menethil Harbor and take the boat to Theramore.
step << Shaman tbc
    #sticky
    #completewith next
    .zone The Exodar >> Take the boat to Darkshore and then to The Exodar. If you have 35g purchase your mount and training otherwise skip this step.
	.goto The Exodar,81.5,52.5,40,0
step << Shaman tbc
    .goto The Exodar,29.9,33.0
>>Talk to |cRXP_FRIENDLY_Farseer Nobundo|r
    .turnin 10491 >> Turn in Call of Air
.target Farseer Nobundo
    .accept 9552 >> Accept Call of Air
step << Shaman tbc
.isQuestTurnedIn 9508
    .fly Bloodmyst Isle>> Fly to Bloodmyst Isle
step << Shaman tbc
    .goto Bloodmyst Isle,32.300,16.132
>>Talk to |cRXP_FRIENDLY_Aqueous|r
    .turnin 9504 >> Turn in Call of Water
.target Aqueous
    .accept 9508 >> Accept Call of Water
step << Shaman tbc
    .goto Bloodmyst Isle,26.0,40.9
	>>Kill Tel'athion and loot him for his head
    .complete 9508,1 --Collect Head of Tel'athion (x1)
step << Shaman tbc
    .goto Bloodmyst Isle,32.2,16.1
>>Talk to |cRXP_FRIENDLY_Aqueous|r
    .turnin 9508 >> Turn in Call of Water
.target Aqueous
    .accept 9509 >> Accept Call of Water
step << Shaman tbc
	#sticky
	#completewith ZExodar
	.deathskip >> Drown yourself and spirit rez
step << Shaman tbc
	#sticky
	#completewith next
	.goto Bloodmyst Isle,57.7,53.9
	>>Run back to Blood Watch, then fly to The Exodar
    .fly The Exodar>> Fly to The Exodar
step << Shaman tbc
	#label ZExodar
	.zone The Exodar >> Go to The Exodar
step << Shaman tbc
    .goto Azuremyst Isle,26.8,27.3,42
    >>Exit The Exodar from the main entrance and travel along the mountain to your left until you get to the Wildwind Path
step << Shaman tbc
    .goto Azuremyst Isle,24.897,35.918
>>Talk to |cRXP_FRIENDLY_Velaada|r
    .turnin 9552 >> Turn in Call of Air
.target Velaada
    .accept 9553 >> Accept Call of Air
step << Shaman tbc
    .goto Azuremyst Isle,22.312,32.547
>>Talk to |cRXP_FRIENDLY_Susurrus|r
    .turnin 9553 >> Turn in Call of Air
.target Susurrus
    .accept 9554 >> Accept Call of Air
step << Shaman tbc
    #sticky
    #completewith next
    .zone The Exodar>>Speak with Susurrus again so he can send you back flying to The Exodar
step << Shaman tbc
    .goto The Exodar,30.0,33.1
.target Farseer Nobundo
>>Talk to |cRXP_FRIENDLY_Farseer Nobundo|r
    .turnin 9509 >> Turn in Call of Water
step << Shaman tbc
    .goto The Exodar,29.6,33.4
.target Farseer Nobundo
>>Talk to |cRXP_FRIENDLY_Farseer Nobundo|r
    .turnin 9554 >> Turn in Call of Air
	>>This will give you a 1 hour-long buff giving 40% movespeed and 30% attack speed. Be careful to not AFK with it
step << Shaman tbc
    .hs >> Hearth to Wetlands
step
    .goto Wetlands,12.1,64.1
    .turnin 321 >> Turn in Lightforge Iron
    .accept 324 >> Accept The Lost Ingots
step
    .goto Wetlands,10.1,69.5
	>> Kill murlocs and loot them for ingots. The droprate can be very low.
    .complete 324,1 --Collect Lightforge Ingot (x5)
step
    .goto Wetlands,10.6,60.4
>>Talk to |cRXP_FRIENDLY_Glorin Steelbrow|r
    .turnin 324 >> Turn in The Lost Ingots
.target Glorin Steelbrow
    .accept 322 >> Accept Blessed Arm
step
    .goto Wetlands,10.9,55.9
.target Harlo Barnaby
>>Talk to |cRXP_FRIENDLY_Harlo Barnaby|r
    .accept 472 >> Accept Fall of Dun Modr
step
    .isOnQuest 464
    .goto Wetlands,9.9,57.4
.target Captain Stoutfist
>>Talk to |cRXP_FRIENDLY_Captain Stoutfist|r
    .turnin 464 >> Turn in War Banners
step
    .isOnQuest 281
    .goto Wetlands,13.5,41.5
    .turnin 281 >> Turn in Reclaiming Goods
    .accept 284 >> Accept The Search Continues
step
    .isOnQuest 284
    .goto Wetlands,13.5,38.4
    .turnin 284 >> Turn in The Search Continues
    .accept 285 >> Accept Search More Hovels
step
    .isOnQuest 285
    .goto Wetlands,13.9,34.8
    .turnin 285 >> Turn in Search More Hovels
    .accept 286 >> Accept Return the Statuette
step
    .goto Wetlands,13.9,30.4
    >>To find Snellig, enter the ship by the hole on the hull close to the shore
    >> The ship to the north usually has more Marines if you're having trouble finding some.
    .complete 289,3 --Collect Snellig's Snuffbox (x1)
    .complete 289,1 --Kill Cursed Sailor (x13)
    .complete 289,2 --Kill Cursed Marine (x5)
step
    .isOnQuest 470
    .goto Wetlands,44.2,25.8
    >>Kill slimes around the crypt
    .complete 470,1 --Collect Sida's Bag (x1)
    step
    #completewith next
    .goto Wetlands,49.9,18.3
.target Longbraid the Grim
>>Talk to |cRXP_FRIENDLY_Longbraid the Grim|r
    .turnin 472 >> Turn in Fall of Dun Modr
step
    .goto Wetlands,49.9,18.3
.target Rhag Garmason
>>Talk to |cRXP_FRIENDLY_Rhag Garmason|r
    .accept 631 >> Accept The Thandol Span
.target Longbraid the Grim
>>Talk to |cRXP_FRIENDLY_Longbraid the Grim|r
    .accept 304 >> Accept A Grim Task
.target Motley Garmason
>>Talk to |cRXP_FRIENDLY_Motley Garmason|r
    .accept 303 >> Accept The Dark Iron War
step
	#sticky
    #label balgaras
    >>Kill Balgaras the Foul, he can spawn in the camp far to the east or inside one of the houses in Dun Modr. Head east after checking Dun Modir. Loot him for his ear.
    .complete 304,1 --Collect Ear of Balgaras (x1)
	.unitscan Balgaras the Foul
    .goto Wetlands,47.4,15.4,40,0
    .goto Wetlands,61.8,31.0,80,0
    .goto Wetlands,46.8,16.0
step--?
    .goto Wetlands,47.3,16.6
	>> Kill Dark Iron dwarves in the area
    .complete 303,1 --Kill Dark Iron Dwarf (x10)
    .complete 303,2 --Kill Dark Iron Tunneler (x5)
    .complete 303,3 --Kill Dark Iron Saboteur (x5)
    .complete 303,4 --Kill Dark Iron Demolitionist (x5)
step
    #requires balgaras
    .goto Wetlands,49.7,18.3
.target Motley Garmason
>>Talk to |cRXP_FRIENDLY_Motley Garmason|r
    .turnin 303 >> Turn in The Dark Iron War
.target Longbraid the Grim
>>Talk to |cRXP_FRIENDLY_Longbraid the Grim|r
    .turnin 304 >> Turn in A Grim Task
step
    .goto Wetlands,51.2,8.0
	>> Go downstairs and click on the dwarf corpse. Ignore all the mobs.
    .turnin 631 >> Turn in The Thandol Span
    .accept 632 >> Accept The Thandol Span
step
    .goto Wetlands,49.9,18.3
    >> Run back outside and turn in the quest
>>Talk to |cRXP_FRIENDLY_Rhag Garmason|r
    .turnin 632 >> Turn in The Thandol Span
.target Rhag Garmason
    .accept 633 >> Accept The Thandol Span
step
    .goto Arathi Highlands,43.3,92.6
.target Foggy MacKreel
>>Talk to |cRXP_FRIENDLY_Foggy MacKreel|r
    .accept 647 >> Accept MacKreel's Moonshine
    >>You can still get this quest if you don't have any kind of speed increase or slow fall
    .link https://www.twitch.tv/videos/646111384 >>Click here for reference
    .timer 900,Moonshine Expiration Time
step
    .goto Arathi Highlands,44.3,93.0
	>>Jump down and loot the letter from the corpse underwater
    .accept 637 >> Accept Sully Balloo's Letter
	.use 4433 >>Jump down and loot the letter from the corpse underwater
step
    #completewith next
    .goto Arathi Highlands,52.5,90.4,30 >> Swim east toward the ramp here
step
    .goto Arathi Highlands,48.7,87.9
    .complete 633,1 --Collect Cache of Explosives Destroyed (x1)
step
    .goto Wetlands,49.9,18.3
>>Talk to |cRXP_FRIENDLY_Rhag Garmason|r
    .turnin 633 >> Turn in The Thandol Span
.target Rhag Garmason
    .accept 634 >> Accept Plea To The Alliance
step
    .goto Arathi Highlands,45.9,47.5
.target Captain Nials
>>Talk to |cRXP_FRIENDLY_Captain Nials|r
    .turnin 634 >> Turn in Plea To The Alliance
step
    #xprate >1.3
    .goto Arathi Highlands,46.6,47.0
.target Skuerto
>>Talk to |cRXP_FRIENDLY_Skuerto|r
    .turnin 690 >> Turn in Malin's Request
    .isOnQuest 690
step
    .goto Arathi Highlands,45.8,46.1
    .fp Arathi >> Get the Arathi Highlands flight path
step
.isOnQuest 647
>>Run to Southshore and go downstairs in the inn. Turn in before the timer is up. Watch out for the courier on the road.
	.unitscan Forsaken Bodyguard
.goto Hillsbrad Foothills,52.2,58.6
.target Brewmeister Bilger
>>Talk to |cRXP_FRIENDLY_Brewmeister Bilger|r
    .turnin 647 >> Turn in MacKreel's Moonshine
step
    .xp <30,1
    .goto Hillsbrad Foothills,51.4,58.5
.target Lieutenant Farren Orinelle
>>Talk to |cRXP_FRIENDLY_Lieutenant Farren Orinelle|r
    .accept 536 >> Accept Down the Coast
step
    .goto Hillsbrad Foothills,50.9,58.8
.target Huraan
>>Talk to |cRXP_FRIENDLY_Huraan|r
    .accept 9435 >> Accept Missing Crystals
step <<  Hunter tbc
     #completewith next
    .goto Hillsbrad Foothills,50.2,58.8
     .stable >> Stable your pet and head east
step << Hunter tbc
    .xp <30,1
    .goto Hillsbrad Foothills,56.6,53.8
    .train 17264 >> Tame an Elder Moss Creeper, attack mobs with it to learn bite rank 4
	.unitscan Elder Moss Creeper
step
	.goto Hillsbrad Foothills,50.5,57.2
.target Loremaster Dibbs
>>Talk to |cRXP_FRIENDLY_Loremaster Dibbs|r
    .turnin 538 >> Turn in Southshore
	.isOnQuest 538
step
    .xp <30,1
    .goto Hillsbrad Foothills,44.0,67.6
	>> Kill murlocs in the area
    .complete 536,1 --Kill Torn Fin Tidehunter (x10)
    .complete 536,2 --Kill Torn Fin Oracle (x10)
step
    .xp <30,1
    .goto Hillsbrad Foothills,51.4,58.5
>>Talk to |cRXP_FRIENDLY_Lieutenant Farren Orinelle|r
    .turnin 536 >> Turn in Down the Coast
.target Lieutenant Farren Orinelle
    .accept 559 >> Accept Farren's Proof
step
    .xp <30,1
    .goto Hillsbrad Foothills,42.3,68.3
	>> Kill murlocs and loot them for their head
    .complete 559,1 --Collect Murloc Head (x10)
step
    .xp <30,1
    .goto Hillsbrad Foothills,51.4,58.5
>>Talk to |cRXP_FRIENDLY_Lieutenant Farren Orinelle|r
    .turnin 559 >> Turn in Farren's Proof
.target Lieutenant Farren Orinelle
    .accept 560 >> Accept Farren's Proof
step
    .xp <30,1
    .goto Hillsbrad Foothills,49.5,58.8
>>Talk to |cRXP_FRIENDLY_Marshal Redpath|r
    .turnin 560 >> Turn in Farren's Proof
.target Marshal Redpath
    .accept 561 >> Accept Farren's Proof
step
    .xp <30,1
    .goto Hillsbrad Foothills,51.4,58.4
>>Talk to |cRXP_FRIENDLY_Lieutenant Farren Orinelle|r
    .turnin 561 >> Turn in Farren's Proof
.target Lieutenant Farren Orinelle
    .accept 562 >> Accept Stormwind Ho!
step
    .xp <30,1
    .goto Hillsbrad Foothills,57.1,67.4
	>> Kill naga in the area, you may need to go in the water if you get unlucky spawns
    .complete 562,1 --Kill Daggerspine Shorehunter (x10)
    .complete 562,2 --Kill Daggerspine Siren (x10)
step
    .xp <30,1
    .goto Hillsbrad Foothills,51.4,58.5
>>Talk to |cRXP_FRIENDLY_Lieutenant Farren Orinelle|r
    .turnin 562 >> Turn in Stormwind Ho!
.target Lieutenant Farren Orinelle
    .accept 563 >> Accept Reassignment
step
    .goto Hillsbrad Foothills,50.9,58.8
.target Huraan
>>Talk to |cRXP_FRIENDLY_Huraan|r
    .accept 9435 >> Accept Missing Crystals
step
    .goto Hillsbrad Foothills,49.3,52.3
    .fp Southshore >> Get the Southshore flight path
step
    .goto Hillsbrad Foothills,55.6,35.1
    >>Look for a wooden box inside of the destroyed tower
    .complete 9435,1 --Collect Shipment of Rare Crystals (x1)
step
    .goto Alterac Mountains,58.4,67.9
	>>Click on the map on top of a small table
    .accept 510 >> Accept Foreboding Plans
    .accept 511 >> Accept Encrypted Letter
step
    .goto Western Plaguelands,42.9,85.0
    >>Head north to Western Plaguelands
    .fp Chillwind >> Get the Chillwind Camp flight path
step
    #completewith next
    .goto Western Plaguelands,42.9,85.0
    .fly Southshore>> Fly to Southshore
step
    .goto Hillsbrad Foothills,50.5,57.1
>>Talk to |cRXP_FRIENDLY_Loremaster Dibbs|r
    .turnin 511 >> Turn in Encrypted Letter
.target Loremaster Dibbs
    .accept 514 >> Accept Letter to Stormpike
step
    .goto Hillsbrad Foothills,48.2,59.3
.target Magistrate Henry Maleb
>>Talk to |cRXP_FRIENDLY_Magistrate Henry Maleb|r
    .turnin 510 >> Turn in Foreboding Plans
step
    .goto Hillsbrad Foothills,50.9,58.8
.target Huraan
>>Talk to |cRXP_FRIENDLY_Huraan|r
    .turnin 9435 >> Turn in Missing Crystals
step
    #completewith next
    .hs >> Hearth to Ironforge
step
    .goto Ironforge,63.79,67.78
.target Sara Balloo
>>Talk to |cRXP_FRIENDLY_Sara Balloo|r
    .turnin 637 >>Turn in Sully Balloo's Letter
step
    .goto Ironforge,74.64,11.74
.target Prospector Stormpike
>>Talk to |cRXP_FRIENDLY_Prospector Stormpike|r
    .turnin 514 >>Turn in Letter to Stormpike
step
    .goto Ironforge,63.79,67.78
.target Sara Balloo
>>Talk to |cRXP_FRIENDLY_Sara Balloo|r
    .accept 683 >>Accept Sara Balloo's Plea
step
    .goto Ironforge,39.10,56.19
>>Talk to |cRXP_FRIENDLY_King Magni Bronzebeard|r
    .turnin 683 >>Turn in Sara Balloo's Plea
.target King Magni Bronzebeard
    .accept 686 >>Accept A King's Tribute
step
    .goto Ironforge,38.75,87.04
.target Grand Mason Marblesten
>>Talk to |cRXP_FRIENDLY_Grand Mason Marblesten|r
    .turnin 686 >>Turn in A King's Tribute
step
	.goto Ironforge,69.875,82.895 << Hunter
	.goto Ironforge,66.4,88.7 << Warrior
	.goto Ironforge,24.7,8.8 << Priest
	.goto Ironforge,24.6,9.2 << Paladin
	.goto Ironforge,50.350,5.656 << Warlock
	.goto Ironforge,51.6,15.2 << Rogue
	.goto Ironforge,55.4,29.1 << Shaman
    .goto Ironforge,28.6,7.2 << Mage
	.trainer >> Train your spells
step
    .goto Ironforge,55.501,47.742
    .fly Wetlands>> Fly to Wetlands
step
    .goto Wetlands,10.8,59.6
.target First Mate Fitzsimmons
>>Talk to |cRXP_FRIENDLY_First Mate Fitzsimmons|r
    .turnin 289 >> Turn in The Cursed Crew
]])
