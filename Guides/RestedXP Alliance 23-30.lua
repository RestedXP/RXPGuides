RXPGuides.RegisterGuide("RestedXP Alliance 20-32",[[
<< Alliance
#name 23-24 Wetlands
#next 24-27 Redridge/Duskwood
step << Dwarf/Gnome/Human
    .goto Wetlands,10.7,60.9
    .home >> Set your Hearthstone to Deepwater Tavern
step
    .goto Wetlands,8.6,55.8
    .accept 484 >> Accept Young Crocolisk Skins
step
    .goto Wetlands,8.3,58.5
    .accept 279 >> Accept Claws from the Deep
step << Draenei/NightElf
    .goto Wetlands,9.5,59.7
    .fp >> Get the Menethil Harbor flight path
step
    .goto Wetlands,10.8,59.6
    .accept 288 >> Accept The Third Fleet
    .accept 463 >> Accept The Greenwarden
step
    .goto Wetlands,10.7,60.9
	>> Buy a Flagon of Mead from the Innkeeper
    .complete 288,1 --Collect Flagon of Mead (x1)
step << !Hunter !NightElf !Rogue
	>>Go upstairs and talk to Archaeologist Flagongut
	.turnin 942 >>Turn in The Absent Minded Prospector
	.accept 943 >>Accept The Absent Minded Prospector
step
    .goto Wetlands,10.8,59.7
    .turnin 288 >> Turn in The Third Fleet
step
    #sticky
    #completewith exit1
    .vendor 1448>>Head to the keep and buy a Bronze Tube from Neal Allen (limited supply), skip this step if he doesn't have it or if you already have one
    .goto Wetlands,10.6,56.8
    .collect 4371,1,175
step
    .goto Wetlands,11.7,58.0
    .accept 470 >> Accept Digging Through the Ooze
step
    .goto Wetlands,9.9,57.4
	>>Go upstairs inside the keep
    .accept 464 >> Accept War Banners
step
    .goto Wetlands,11.5,52.1
    .accept 305 >> Accept In Search of The Excavation Team
step
	#sticky
	#label crocs
	Kill Young Wetlands Crocolisks
    .complete 484,1 --Collect Young Crocolisk Skin (x4)
step
    #label exit1
    .goto Wetlands,17.5,40.0
    >>Kill Gobbler, he patrols around the southern murloc camps
    .complete 279,2 --Collect Gobbler's Head (x1)
    .complete 279,1 --Kill Bluegill Murloc (x12)
step
    #sticky
    #completewith next
    .vendor 2682>>Buy a Bronze Tube from Fradd Swiftgear (limited supply), skip this step if he doesn't have it or if you already have one
    .goto Wetlands,26.4,25.8
    .collect 4371,1,175
step
    .goto Wetlands,38.2,50.9
    .accept 294 >> Accept Ormer's Revenge
step
    .goto Wetlands,38.8,52.3
    .turnin 305 >> Turn in In Search of The Excavation Team
    .accept 306 >> Accept In Search of The Excavation Team
step << Hunter/Warlock
    .goto Wetlands,24.7,48.6
    .complete 294,1 --Kill Mottled Raptor (x10)
    .complete 294,2 --Kill Mottled Screecher (x10)
step << Hunter/Warlock
    .goto Wetlands,38.2,50.9
    .turnin 294 >> Turn in Ormer's Revenge
    .accept 295 >> Accept Ormer's Revenge
step << Hunter/Warlock
    .goto Wetlands,34.6,48.0
    .complete 295,1 --Kill Mottled Scytheclaw (x10)
    .complete 295,2 --Kill Mottled Razormaw (x10)
step << Hunter/Warlock
    .goto Wetlands,38.2,50.9
    .turnin 295 >> Turn in Ormer's Revenge
    .accept 296 >> Accept Ormer's Revenge
step << Hunter/Warlock
    .goto Wetlands,33.2,51.5
    .complete 296,1 --Collect Sarltooth's Talon (x1)
step << Hunter/Warlock
    .goto Wetlands,38.2,50.9
    .turnin 296 >> Turn in Ormer's Revenge
step
    .goto Wetlands,44.8,43.9
	>>Kill Dragonmaw Orcs
    .complete 464,1 --Collect Dragonmaw War Banner (x8)
step
    .goto Wetlands,49.9,39.4
    .accept 469 >> Accept Daily Delivery
step << Warrior
    #sticky
    #completewith next
    .goto Wetlands,50.2,37.8
    >>Check the herb vendor and buy some Liferoot, you will need 8 for a quest later, skip this step if you already have it
    .collect 3357,8 --Collect Liferoot (x8)
step
    .goto Wetlands,56.4,40.4
    .turnin 463 >> Turn in The Greenwarden
    .accept 276 >> Accept Tramping Paws
step
    .goto Wetlands,62.9,69.4
    .complete 276,1 --Kill Mosshide Gnoll (x15)
    .complete 276,2 --Kill Mosshide Mongrel (x10)
step
    .goto Wetlands,56.4,40.3
    .turnin 276 >> Turn in Tramping Paws
    .accept 277 >> Accept Fire Taboo
step << Dwarf/Gnome/Human
	#requires crocs
    .hs >> Hearth to Menethil Harbor
step << NightElf/Draenei
	#requires crocs
    .goto Loch Modan,33.9,50.9
    .fp >> Get the Thelsamar flight path
step << NightElf/Draenei
    #completewith exit2
    .zone Dun Morogh >>Head to Dun Morogh
    >>Death warp to Kharanos as soon as you get to Dun Morogh
step << NightElf/Draenei
    #sticky
    #completewith exit2
    .vendor 1694>>Buy a Bronze Tube from Loslor Rudge (limited supply), skip this step if he doesn't have it or if you already have one
    .goto Dun Morogh,50.4,49.4
    .collect 4371,1,175
step << Mage
    goto Ironforge,25.5,7.1
    .train 3562>>Train Teleport: Ironforge
step
    .goto Ironforge,55.5,47.7
    .fp >> Get the Ironforge flight path
step
    #sticky
    #completewith exit2
    .vendor 5175>>Buy a Bronze Tube from Gearcutter Cogspinner (limited supply), skip this step if he doesn't have it or if you already have one
    .goto Ironforge,67.86,42.87
    .collect 4371,1,175
step
    #label exit2
    .zone Stormwind City >>Head to Ironforge and take the tram to Stormwind
]])

RXPGuides.RegisterGuide("RestedXP Alliance 20-32",[[
<< Alliance
#name 24-27 Redridge/Duskwood
#next 27-30 Wetlands/Hillsbrad
step
	#sticky
	#completewith exit
	.trainer >> Train your class spells in Stormwind
step
    #sticky
    #completewith exit
    .vendor 5519>>Buy a Bronze Tube from Billibub Cogspinner (limited supply)
    .goto Ironforge,55.2,7.6
    .collect 4371,1,175
    >>Try to buy a bronze tube from the Auction House if you were unable to find one from a vendor
step
	.goto Stormwind City,62.5,62.3,30,0
	.goto Stormwind City,66.3,62.1
    .fp >> Get the Stormwind flight path
step << Warlock
    .goto Stormwind City,25.3,78.7
    .turnin 1738 >>Turn in Heartswood
    .accept 1739 >>Accept The Binding
step << Warlock
    .goto Stormwind City,25.2,77.5
    >>Go down into the crypt and use the quest item provided at the summoning circle
    .complete 1739,1 --Summoned Succubus (1)
step << Warlock
    .goto Stormwind City,25.4,78.7
    .turnin 1739 >>Turn in The Binding
step << Paladin
    .goto Stormwind City,40.1,30.0
    >>Speak to Duthorian Rall and right click on the Tome of Valor provided
    .accept 1649 >>Accept The Tome of Valor
    .turnin 1649 >>Turn in The Tome of Valor
    .accept 1650 >>Accept The Tome of Valor
step << Draenei
    .goto Stormwind City,78.4,18.3
    .accept 9429 >> Accept Travel to Darkshire
step << Mage
    .goto Stormwind City,39.6,79.6
    .train 3561>>Train Teleport: Stormwind
step << Rogue
    #sticky
    .goto Stormwind City,75.8,60.1
    .accept 2281 >> Accept Redridge Rendezvous
    .accept 2360 >> Accept Mathias and the Defias
step << Rogue
	.goto Stormwind City,78.3,57.0
    .train 1804>>Make sure to train lockpicking
step << Rogue
    .goto Stormwind City,52.6,65.6
    .home >> Set your Hearthstone to Stormwind City
step << Warrior
    #sticky
    #completewith next
    .goto Stormwind City,64.1,61.2
    .goto Stormwind City,46.7,79.0
    >>Check the the AH, the flower shop at the trade district and the alchemy shop at the mage district and buy some Liferoot, you will need 8 for a quest later, skip this step if you already have it
    .collect 3357,8 --Collect Liferoot (x8)
step
	#label exit
    .goto Elwynn Forest,65.2,69.8
	>>Head to the top of the Tower of Azora
    .accept 94 >> Accept A Watchful Eye
step
    .goto Redridge Mountains,17.4,69.6
    .accept 244 >> Accept Encroaching Gnolls
step
    .fp >> Get the Redridge Mountains flight path
step
    .goto Redridge Mountains,30.8,60.1
    .turnin 244 >> Turn in Encroaching Gnolls
step
    .goto Redridge Mountains,33.4,49.1
    .accept 20 >> Accept Blackrock Menace
step
    .goto Redridge Mountains,29.6,44.3
    .accept 91 >> Accept Solomon's Law
step
    .goto Redridge Mountains,27.7,47.3
    .accept 127 >> Accept Selling Fish
    .accept 150 >> Accept Murloc Poachers

step << Rogue
    .goto Redridge Mountains,28.1,52.1
    .turnin 2281 >> Turn in Redridge Rendezvous
    .accept 2282 >> Accept Alther's Mill
step
    #sticky
    #label orcs1
    .goto Redridge Mountains,61.0,43.1
    >>Kill blackrock orcs
    .complete 20,1 --Collect Battleworn Axe (x10)
step
    .goto Redridge Mountains,57.3,52.4
    .complete 127,1 --Collect Spotted Sunfish (x10)
    .complete 150,1 --Collect Murloc Fin (x8)
step << Rogue
    .goto Redridge Mountains,52.0,44.8
    .complete 2282,1 --Collect Token of Thievery (x1)
step << Rogue
    +Open the chests to train lockpicking, you will need 75 skill points for a quest later
step
    #requires orcs1
    .goto Redridge Mountains,33.6,48.7
    .turnin 20 >> Turn in Blackrock Menace
step
    .goto Redridge Mountains,27.8,47.4
    .turnin 127 >> Turn in Selling Fish
    .turnin 150 >> Turn in Murloc Poachers
step << Rogue
    .goto Redridge Mountains,28.1,52.1
    .turnin 2282 >> Turn in Alther's Mill
step
    .goto Redridge Mountains,26.7,46.5
	>>Click on the wanted poster outside the inn
    .accept 180 >> Accept Wanted: Lieutenant Fangore
step
    .goto Redridge Mountains,21.9,46.4
    .accept 34 >> Accept An Unwelcome Guest
step
    .goto Redridge Mountains,15.7,49.4
    .complete 34,1 --Collect Bellygrub's Tusk (x1)
step
    .goto Redridge Mountains,21.8,46.4
    .turnin 34 >> Turn in An Unwelcome Guest
step
    .goto Duskwood,75.7,45.3
    .accept 66 >> Accept The Legend of Stalvan
    .accept 101 >> Accept The Totem of Infliction
step << !Rogue
    .home >> Set your Hearthstone to Darkshire
step
    .goto Duskwood,73.6,46.8
    .accept 56 >> Accept The Night Watch
step
    .goto Duskwood,72.6,46.9
    .turnin 66 >> Turn in The Legend of Stalvan
    .accept 67 >> Accept The Legend of Stalvan
step << Draenei
    .goto Duskwood,71.8,46.4
    .turnin 9429 >> Turn in Travel to Darkshire
step
    .goto Duskwood,75.3,48.6
    .accept 163 >> Accept Raven Hill
    .accept 164 >> Accept Deliveries to Sven
    .accept 165 >> Accept The Hermit
step
    .goto Duskwood,75.4,48.0
    .accept 173 >> Accept Worgen in the Woods
step
    >>Buy a bronze tube from Herble Baubbletump (limited supply) if you don't have one
    .complete 174,1
    .goto Duskwood,77.8,48.2
    .accept 174 >> Accept Look To The Stars
    .turnin 174 >> Turn in Look To The Stars
    .goto Duskwood,79.8,47.9
    >>Skip this step if you don't have a bronze tube
step
    .goto Duskwood,79.8,47.9
    .accept 175 >> Accept Look To The Stars
    .isQuestTurnedIn 174
step
    .goto Duskwood,82.0,59.0
    .turnin 175 >> Turn in Look To The Stars
    .accept 177 >> Accept Look To The Stars
    .isQuestTurnedIn 174
step
    .goto Duskwood,80.9,71.8
    >>Kill the Insane Ghoul at the chapel
    .complete 177,1 --Collect Mary's Looking Glass (x1)
    .isQuestTurnedIn 174
step
    .goto Duskwood,79.3,70.3
    .complete 56,1 --Kill Skeletal Warrior (x8)
    .complete 56,2 --Kill Skeletal Mage (x6)
step
    .goto Duskwood,18.4,56.6
    .turnin 163 >> Turn in Raven Hill
    .accept 5 >> Accept Jitters' Growling Gut
step
    .goto Duskwood,7.8,34.1
    .turnin 164 >> Turn in Deliveries to Sven
    .accept 95 >> Accept Sven's Revenge
step
    .goto Duskwood,7.7,33.3
    .accept 226 >> Accept Wolves at Our Heels
step
    .goto Duskwood,28.0,31.5
    .turnin 165 >> Turn in The Hermit
    .accept 148 >> Accept Supplies from Darkshire
step
    >>Do the wolf quest if you're not yet level 25
    .xp 25
step
    .goto Duskwood,17.7,29.1
    .accept 225 >> Accept The Weathered Grave
step << Rogue/Druid
    .goto Westfall,56.6,52.6
    .fp >> Get the Sentinel Hill flight path
step << Rogue
    .goto Westfall,68.5,70.0
    .turnin 2360 >> Turn in Mathias and the Defias
    .accept 2359 >> Accept Klaven's Tower
step << Rogue
    .goto Westfall,70.6,72.8
    >>Pickpocket one of the Defias Drones and loot the tower key
    .complete 2359,2 --Collect Defias Tower Key (x1)
step << Rogue
    .goto Westfall,70.4,74.0
    >>Climb to the top of the tower and loot the small chest on the floor
    .complete 2359,1 --Collect Klaven Mortwake's Journal (x1)
step << Rogue/Druid
    .goto Westfall,41.5,66.8
    .turnin 67 >> Turn in The Legend of Stalvan
    .accept 68 >> Accept The Legend of Stalvan
step << Druid
    .goto Westfall,18.0,33.2
    >>Loot the lockbox located deep underwater
    .collect 15882,1 --Collect Half Pendant of Aquatic Endurance (x1)
step << Druid
    .goto Moonglade,36.0,41.4
    >>Teleport to moonglade
    >>Combine the 2 pendants at the Shrine of Remulos
    .complete 272,1 --Collect Pendant of the Sea Lion (x1)
step << Druid
    .goto Moonglade,56.2,30.6
    >>Teleport back to Nighthaven
    .turnin 272 >> Turn in Trial of the Sea Lion
    .accept 5061 >> Accept Aquatic Form
step << Druid
    #sticky
    #completewith next
    .goto Moonglade,44.1,45.2
    .fly Teldrassil>> Fly to Teldrassil
step << Druid
    .goto Darnassus,35.4,8.3
    .turnin 5061 >> Turn in Aquatic Form
step << Rogue/Druid
    #sticky
    #completewith next
    .hs >> Hearth back to town
step << Rogue
    .goto Stormwind City,75.9,59.9
    .turnin 2359 >> Turn in Klaven's Tower
    .accept 2607 >> Accept The Touch of Zanzil
step << Rogue
    .goto Stormwind City,78.1,59.0
    >>Head to the basement
    .turnin 2607 >> Turn in The Touch of Zanzil
    .accept 2608 >> Accept The Touch of Zanzil
step << Rogue
    .goto Stormwind City,78.1,59.0
    >>Type /lay on the chat and wait until the quest complete itself
    .complete 2608,1 --Diagnosis Complete
step << Rogue
    .goto Stormwind City,78.0,58.8
    .turnin 2608 >> Turn in The Touch of Zanzil
    .accept 2609 >> Accept The Touch of Zanzil
step << Rogue
    .goto Stormwind City,78.2,59.0
    >>Buy a Leaded Vial from the Shady Dealer
    .complete 2609,2 --Collect Leaded Vial (x1)
step << Rogue
    >>Head to the flower vendor
    .complete 2609,1 --Collect Simple Wildflowers (x1)
    .goto Stormwind City,64.3,60.8
step << Rogue
    >>Buy a Bronze Tube at the Auction House
    .complete 2609,3 --Collect Bronze Tube (x1)
    .goto Stormwind City,53.6,59.3
    >>Head to the shop next to the bridge between the Cathedral Square and the Park
    .complete 2609,4 --Collect Spool of Light Chartreuse Silk Thread (x1)
    .goto Stormwind City,39.8,46.5
    >>If you can't find a bronze tube, you will have to skip this quest, train First Aid to 80, farm a small venom sac from spiders in Duskwood, craft an Anti-Venom and remove the Zanzil poison.
step << Rogue
    .goto Stormwind City,78.0,58.9
    .turnin 2609 >> Turn in The Touch of Zanzil
step << Rogue
    .goto Stormwind City,66.2,62.2
    .fly Duskwood>> Fly to Duskwood
step << !Rogue !Druid
    .goto Duskwood,60.8,29.7
	>>Grind your way back to eastern Duskwood
    .complete 173,1 --Kill Nightbane Shadow Weaver (x6)
step
    .goto Duskwood,73.8,43.3
    .turnin 5 >> Turn in Jitters' Growling Gut
    .accept 93 >> Accept Dusky Crab Cakes
step
    .goto Duskwood,73.6,46.8
    .turnin 56 >> Turn in The Night Watch
    .accept 57 >> Accept The Night Watch

step
    .goto Duskwood,72.6,47.6
    .turnin 225 >> Turn in The Weathered Grave
    .accept 227 >> Accept Morgan Ladimore
step
    .goto Duskwood,73.5,46.9
    .turnin 227 >> Turn in Morgan Ladimore
    .accept 228 >> Accept Mor'Ladim
step
    .goto Duskwood,75.7,45.3
    .turnin 148 >> Turn in Supplies from Darkshire
    .accept 149 >> Accept Ghost Hair Thread
step
    .goto Duskwood,79.8,47.8
    .turnin 177 >> Turn in Look To The Stars
    .accept 181 >> Accept Look To The Stars
    .isQuestTurnedIn 174
step
    .goto Duskwood,81.9,59.1
    .turnin 149 >> Turn in Ghost Hair Thread
    .accept 154 >> Accept Return the Comb
step
    .goto Duskwood,75.7,45.3
    .turnin 154 >> Turn in Return the Comb
    .accept 157 >> Accept Deliver the Thread
step
    .goto Duskwood,49.9,77.8
    .turnin 95 >> Turn in Sven's Revenge
    .accept 230 >> Accept Sven's Camp
step
	#label spiders
	#sticky
	>>Kill spiders in duskwood
    .complete 93,1 --Collect Gooey Spider Leg (x6)
step
    .goto Duskwood,28.0,31.5
    .turnin 157 >> Turn in Deliver the Thread
    .accept 158 >> Accept Zombie Juice
step
    .goto Duskwood,17.6,24.6
    .complete 226,1 --Kill Starving Dire Wolf (x12)
    .complete 226,2 --Kill Rabid Dire Wolf (x8)
step << Hunter/Paladin
    .goto Duskwood,19.7,39.7
    >>Kill the level 30 elite roaming the cemetery
    .complete 228,1 --Collect Mor'Ladim's Skull (x1)
step
    .goto Duskwood,7.8,34.0
    .turnin 230 >> Turn in Sven's Camp
    .accept 262 >> Accept The Shadowy Figure
step
    .goto Duskwood,7.7,33.3
    .turnin 226 >> Turn in Wolves at Our Heels
step << !Rogue !Druid
	#requires spiders
    .goto Westfall,56.6,52.6
    .fp >> Get the Sentinel Hill flight path
step << !Rogue !Druid
    .goto Westfall,41.5,66.8
    .turnin 67 >> Turn in The Legend of Stalvan
    .accept 68 >> Accept The Legend of Stalvan
    
step << Paladin
    .goto Westfall,42.5,88.6
    .turnin 1650 >>Turn in The Tome of Valor
    .accept 1651 >>Accept The Tome of Valor
step << Paladin
    .goto Westfall,42.5,88.6
    .complete 1651,1 --Protect Daphne Stilwell (1)
    .turnin 1651 >>Turn in The Tome of Valor
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
    .turnin 262 >> Turn in The Shadowy Figure
    .accept 265 >> Accept The Shadowy Search Continues
step
    .goto Duskwood,72.6,46.9
    .turnin 265 >> Turn in The Shadowy Search Continues
    .accept 266 >> Accept Inquire at the Inn
step
    .goto Duskwood,73.9,44.4
    .turnin 158 >> Turn in Zombie Juice
    .accept 156 >> Accept Gather Rot Blossoms
    .turnin 266 >> Turn in Inquire at the Inn
    .accept 453 >> Accept Finding the Shadowy Figure
step
    .goto Duskwood,73.9,43.9
    .turnin 93 >> Turn in Dusky Crab Cakes
    .accept 240 >> Accept Return to Jitters
step << Hunter/Paladin
	.goto Duskwood,73.7,46.8
    .turnin 228 >> Turn in Mor'Ladim
    .accept 229 >> Accept The Daughter Who Lived
step << Hunter/Paladin
    .goto Duskwood,74.5,46.1
    .turnin 229 >> Turn in The Daughter Who Lived
    .accept 231 >> Accept A Daughter's Love
step
    .goto Duskwood,72.6,46.9
    .turnin 68 >> Turn in The Legend of Stalvan
    .accept 69 >> Accept The Legend of Stalvan
step
    .goto Duskwood,75.3,47.9
    .turnin 173 >> Turn in Worgen in the Woods
    .accept 221 >> Accept Worgen in the Woods
step
    .fly Redrige>> Fly to Redridge
step << Draenei
    .goto Redridge Mountains,31.6,57.9
    .accept 128 >> Accept Blackrock Bounty
step
    .goto Redridge Mountains,33.5,49.2
    .accept 19 >> Accept Tharil'zun
    .accept 115 >> Accept Shadow Magic
step
    .goto Redridge Mountains,80.3,37.2
    .complete 180,1 --Collect Fangore's Paw (x1)
step
    .goto Redridge Mountains,84.3,46.9
    .turnin 94 >> Turn in A Watchful Eye
    .accept 248 >> Accept Looking Further
step
    .goto Redridge Mountains,74.2,42.1
    .complete 91,1 --Collect Shadowhide Pendant (x10)
step
	#sticky
	#label tharilzun
    .goto Redridge Mountains,69.2,59.8
	Kill Tharil'zun (elite), skip this quest if you can't kill it
    .complete 19,1 --Collect Tharil'zun's Head (x1)
step
    .goto Redridge Mountains,66.6,55.4
	>>Kill 
    .complete 115,1 --Collect Midnight Orb (x3)
step
    .goto Redridge Mountains,63.2,49.7
	>>Climb to the top of the tower
    .turnin 248 >> Turn in Looking Further
step << Draenei
    .goto Redridge Mountains,32.8,6.8
    .complete 128,1 --Kill Blackrock Champion (x15)
step
    .goto Redridge Mountains,33.5,48.9
    .turnin 19 >> Turn in Tharil'zun
	.isQuestComplete 19
step
	.goto Redridge Mountains,33.5,48.9
    .turnin 115 >> Turn in Shadow Magic
step
    .goto Redridge Mountains,29.6,44.3
    .turnin 91 >> Turn in Solomon's Law
step
    .goto Redridge Mountains,29.8,44.5
    .turnin 180 >> Turn in Wanted: Lieutenant Fangore
step << Draenei
    .goto Redridge Mountains,31.6,58.0
    .turnin 128 >> Turn in Blackrock Bounty
step
    .fly Westfall>> Fly to Westfall
step
    .goto Duskwood,18.4,56.5
    .turnin 240 >> Turn in Return to Jitters
    .turnin 453 >> Turn in Finding the Shadowy Figure
    .accept 268 >> Accept Return to Sven
step << !Hunter !Paladin
    .goto Duskwood,21.6,45.1
    .complete 57,1 --Kill Skeletal Fiend (x15)
    .complete 57,2 --Kill Skeletal Horror (x15)
    .complete 156,1 --Collect Rot Blossom (x8)
    .complete 101,3 --Collect Skeleton Finger (x10)
step
    .goto Duskwood,7.7,34.1
    .turnin 268 >> Turn in Return to Sven
    .accept 323 >> Accept Proving Your Worth
step << Hunter/Paladin
    .goto Duskwood,17.7,29.2
    .turnin 231 >> Turn in A Daughter's Love
step << Hunter/Paladin
    .goto Duskwood,21.6,45.1
    .complete 57,1 --Kill Skeletal Fiend (x15)
    .complete 57,2 --Kill Skeletal Horror (x15)
    .complete 156,1 --Collect Rot Blossom (x8)
    .complete 101,3 --Collect Skeleton Finger (x10)
step
    .goto Duskwood,16.2,38.8
    .complete 323,1 --Kill Skeletal Raider (x15)
    .complete 323,2 --Kill Skeletal Healer (x3)
    .complete 323,3 --Kill Skeletal Warder (x3)
step << !Hunter !Paladin
    .goto Duskwood,19.7,39.7
    .complete 228,1 --Collect Mor'Ladim's Skull (x1)
step
    .goto Duskwood,7.9,34.1
    .turnin 323 >> Turn in Proving Your Worth
    .accept 269 >> Accept Seeking Wisdom
step
    #completewith next
    .deathskip >>Head to Elwynn Forest, aggro a bunch of low level mobs, die on purpose and respawn at Goldshire.
step
    .goto Elwynn Forest,43.7,65.9
    .turnin 69 >> Turn in The Legend of Stalvan
    .accept 70 >> Accept The Legend of Stalvan
step
    .goto Elwynn Forest,44.2,65.9
    .complete 70,1 --Collect An Undelivered Letter (x1)
step << !Rogue
	#sticky
	#completewith end
	.trainer >> Train your class spells in Stormwind
step << Mage
    #completewith end
    .zone Stormwind City >> Teleport to Stormwind
step << Warrior
    #sticky
    #completewith next
    .goto Stormwind City,64.1,61.2
    .goto Stormwind City,46.7,79.0
    >>Check the the AH, the flower shop at the trade district and the alchemy shop at the mage district and buy some Liferoot, you will need 8 for a quest later, skip this step if you already have it
    .collect 3357,8 --Collect Liferoot (x8)
step
    .goto Stormwind City,26.4,78.4
    .accept 335 >> Accept A Noble Brew
step
    .goto Stormwind City,29.8,61.8
    .turnin 70 >> Turn in The Legend of Stalvan
    .accept 72 >> Accept The Legend of Stalvan
step
    .goto Stormwind City,29.6,61.7
    .turnin 72 >> Turn in The Legend of Stalvan
    .accept 74 >> Accept The Legend of Stalvan
step <<!Mage
    .goto Stormwind City,40.8,30.8
    .accept 2923 >> Accept Tinkmaster Overspark
step << Paladin
    .goto Stormwind City,40.0,29.9
    .turnin 1652 >>Turn in The Tome of Valor
    .accept 1653 >>Accept The Test of Righteousness
step
    .goto Stormwind City,39.3,28.0
    .turnin 269 >> Turn in Seeking Wisdom
    .accept 270 >> Accept The Doomed Fleet
step <<!Mage
    .goto Ironforge,69.8,50.1
    >>Cross the Deeprun Tram
    .turnin 2923 >> Turn in Tinkmaster Overspark
step << Rogue
    #sticky
    #completewith end
    .trainer >> Train your class spells in ironforge
step << Rogue
    .goto Ironforge,45.2,6.6
    >>Buy the level 41 weapon upgrades (17dps)
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
    .train 54 >> Train Maces << Rogue/Shaman
    .train 44 >> Train Axes << Shaman
step << Hunter
	#sticky 
	#completewith next
	.goto Ironforge,61.34,89.25
	>>Go inside the building, head downstairs and buy a level 30 quiver from Thalgus Thunderfist
	.collect 7371,1
step << Paladin
    .goto Dun Morogh,52.5,36.8
    >> Head to the gates of Ironforge
    .turnin 1653 >>Turn in The Test of Righteousness
step
	#label end
    .fly Wetlands>> Fly to Wetlands
]])

RXPGuides.RegisterGuide("RestedXP Alliance 20-32",[[
<< Alliance
#name 27-30 Wetlands/Hillsbrad
#next 30-32 Duskwood/STV
step
    .goto Wetlands,8.4,58.5
    .turnin 279 >> Turn in Claws from the Deep
    .accept 281 >> Accept Reclaiming Goods
step
    .goto Wetlands,8.6,55.8
    .turnin 469 >> Turn in Daily Delivery
    .turnin 484 >> Turn in Young Crocolisk Skins
    .accept 471 >> Accept Apprentice's Duties
step
    .goto Wetlands,10.8,59.6
    .accept 289 >> Accept The Cursed Crew
step
    .goto Wetlands,10.6,60.5
    .turnin 270 >> Turn in The Doomed Fleet
    .accept 321 >> Accept Lightforge Iron
step
      .goto Wetlands,10.7,60.9
.home >> Set your Hearthstone to Deepwater Tavern
step
    .goto Wetlands,10.9,55.9
    .accept 472 >> Accept Fall of Dun Modr
step
    .goto Wetlands,9.9,57.4
    .turnin 464 >> Turn in War Banners
    .accept 465 >> Accept Nek'rosh's Gambit
step
    .goto Wetlands,11.7,58.0
    .accept 470 >> Accept Digging Through the Ooze
step
    .goto Wetlands,11.5,52.2
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
    .complete 289,3 --Collect Snellig's Snuffbox (x1)
    .complete 289,1 --Kill Cursed Sailor (x13)
    .complete 289,2 --Kill Cursed Marine (x5)
step
    .goto Wetlands,17.8,26.3
    .complete 471,1 --Collect Giant Crocolisk Skin (x6)
step
    .goto Wetlands,38.2,50.9
    .accept 294 >> Accept Ormer's Revenge
step << !NighElf !Hunter !Rogue
	#label fossil
	#sticky
	>>Kill raptors in Wetlands
	.complete 943,1
step
    .goto Wetlands,24.7,48.6
    .complete 294,1 --Kill Mottled Raptor (x10)
    .complete 294,2 --Kill Mottled Screecher (x10)
step
    .goto Wetlands,38.2,50.9
    .turnin 294 >> Turn in Ormer's Revenge
    .accept 295 >> Accept Ormer's Revenge
step
    .goto Wetlands,38.8,52.3
    .turnin 305 >> Turn in In Search of The Excavation Team
    .accept 306 >> Accept In Search of The Excavation Team
step
	.goto Wetlands,38.81,52.39
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
    .goto Wetlands,38.2,50.9
    .turnin 295 >> Turn in Ormer's Revenge
    .accept 296 >> Accept Ormer's Revenge
step
    .goto Wetlands,33.2,51.5
    .complete 296,1 --Collect Sarltooth's Talon (x1)
step
	#requires relics
    .goto Wetlands,38.2,50.9
    .turnin 296 >> Turn in Ormer's Revenge
step
	#requires relics
	.goto Wetlands,38.81,52.39
	.turnin 299 >>Turn in Uncovering the Past
step << !Hunter !NightElf !Rogue
	.goto Wetlands,38.81,52.39
	>>Loot the fossil on the ground
	.complete 943,2
step << !Hunter !NightElf !Rogue
	>>Keep killing raptors
	.complete 943,1
step
    .goto Wetlands,44.2,25.8
    >>Kill slimes around the crypt
    .complete 470,1 --Collect Sida's Bag (x1)
step
    .goto Wetlands,44.2,33.9
	>>Kill gnolls
    .complete 277,1 --Collect Crude Flint (x9)
step
    .goto Wetlands,56.3,40.5
    .turnin 277 >> Turn in Fire Taboo
    .accept 275 >> Accept Blisters on The Land
step
    .goto Wetlands,64.8,75.3
    >>Loot the tree root at the base of the waterfall
    .complete 335,2 --Collect Musquash Root (x1)
step
    .hs >> Hearth to Menethil Harbor
step
    .goto Wetlands,10.8,59.6
    .turnin 289 >> Turn in The Cursed Crew
    .accept 290 >> Accept Lifting the Curse
step << !Hunter !NightElf !Rogue
	>>Go upstairs and talk to Archaeologist Flagongut
	.turnin 943 >>Turn in The Absent Minded Prospector
step
    .goto Wetlands,11.7,58.1
    .turnin 470 >> Turn in Digging Through the Ooze
step
    .goto Wetlands,8.3,58.5
    .turnin 286 >> Turn in Return the Statuette
step
    .goto Wetlands,8.6,55.8
    .turnin 471 >> Turn in Apprentice's Duties
step
    .goto Wetlands,15.5,23.5
    >>Kill Captain Halyndor by entering the ship through the broken mast
    .complete 290,1 --Collect Intrepid Strongbox Key (x1)
step
    .goto Wetlands,14.4,24.0
    .turnin 290 >> Turn in Lifting the Curse
    .accept 292 >> Accept The Eye of Paleth
step
	#sticky
    >>Kill Fen Creepers, they are stealth mobs lurking along the river stream
    .complete 275,1 --Kill Fen Creeper (x8)--O
step
    .goto Wetlands,47.3,46.9
    .turnin 465 >> Turn in Nek'rosh's Gambit
    .accept 474 >> Accept Defeat Nek'rosh
step
    .goto Wetlands,53.5,54.6
    .complete 474,1 --Collect Nek'rosh's Head (x1)
step << Warrior
    #sticky
	#completewith next
    .goto Wetlands,50.2,37.8
    >>Check the herb vendor and buy some Liferoot, you will need 8 for a quest later, skip this step if you already have it
    .collect 3357,8 --Collect Liferoot (x8)
step
    .goto Wetlands,56.4,40.5
	>>Finish off Fen Creepers if you haven't
    .turnin 275 >> Turn in Blisters on The Land
step
    .goto Wetlands,49.9,18.3
    .accept 631 >> Accept The Thandol Span
    .turnin 472 >> Turn in Fall of Dun Modr
    .accept 304 >> Accept A Grim Task
    .accept 303 >> Accept The Dark Iron War
step
    >>Kill Balgaras the Foul, he can spawn in the camp far to the east or inside one of the houses in Dun Modr
    .complete 304,1 --Collect Ear of Balgaras (x1)
    .goto Wetlands,47.4,15.4
    .goto Wetlands,61.8,31.0
    .goto Wetlands,46.8,16.0
step--?
    .goto Wetlands,47.3,16.6
    .complete 303,1 --Kill Dark Iron Dwarf (x10)
    .complete 303,2 --Kill Dark Iron Tunneler (x5)
    .complete 303,3 --Kill Dark Iron Saboteur (x5)
    .complete 303,4 --Kill Dark Iron Demolitionist (x5)
step
    .goto Wetlands,49.7,18.3
    .turnin 303 >> Turn in The Dark Iron War
    .turnin 304 >> Turn in A Grim Task
step
    .goto Wetlands,51.2,8.0
    .turnin 631 >> Turn in The Thandol Span
    .accept 632 >> Accept The Thandol Span
step
    .goto Wetlands,49.9,18.3
    .turnin 632 >> Turn in The Thandol Span
    .accept 633 >> Accept The Thandol Span
step
    .goto Arathi Highlands,43.3,92.6
    .accept 647 >> Accept MacKreel's Moonshine
    >>You can still get this quest if you don't have any kind of speed increase or slow fall
    .link https://www.twitch.tv/videos/646111384 >>Click here for reference
step
    .goto Arathi Highlands,44.3,93.0
	>>Jump down and loot the letter from the corpse underwater
    .accept 637 >> Accept Sully Balloo's Letter
step
    .goto Arathi Highlands,48.7,87.9
    .complete 633,1 --Collect Cache of Explosives Destroyed (x1)
step
    .goto Wetlands,49.9,18.3
    .turnin 633 >> Turn in The Thandol Span
    .accept 634 >> Accept Plea To The Alliance
step
    .goto Arathi Highlands,45.9,47.5
    .turnin 634 >> Turn in Plea To The Alliance
step
    .goto Arathi Highlands,45.8,46.1
    .fp >> Get the Arathi Highlands flight path
step
	#sticky
	#completewith next
	+If you're doing First Aid, buy the First Aid manuals, potions, and scrolls from Deneb. Otherwise, skip this step
    .goto Arathi Highlands,26.8,51.0,30,0
    .goto Arathi Highlands,23.9,60.6,30,0
    .goto Arathi Highlands,27.0,58.8
	.collect 16084,1 
	.collect 16112,1
	.collect 16113,1 
step
    .goto Hillsbrad Foothills,50.5,57.2
    .turnin 538 >> Turn in Southshore
	.isOnQuest 538
step
.isOnQuest 647    
.goto Hillsbrad Foothills,52.2,58.6
    .turnin 647 >> Turn in MacKreel's Moonshine
step
    .goto Hillsbrad Foothills,51.9,58.7
    .accept 555 >> Accept Soothing Turtle Bisque
step << Hunter
    .goto Hillsbrad Foothills,51.4,58.5
    .accept 536 >> Accept Down the Coast
step
    .goto Hillsbrad Foothills,50.3,59.0
    .accept 659 >> Accept Hints of a New Plague?
step
    .goto Hillsbrad Foothills,50.9,58.8
    .accept 9435 >> Accept Missing Crystals
step << Hunter
    .goto Hillsbrad Foothills,44.0,67.6
    .complete 536,1 --Kill Torn Fin Tidehunter (x10)
    .complete 536,2 --Kill Torn Fin Oracle (x10)
step << Hunter
    .goto Hillsbrad Foothills,51.4,58.5
    .turnin 536 >> Turn in Down the Coast
    .accept 559 >> Accept Farren's Proof
step << Hunter
    .goto Hillsbrad Foothills,42.3,68.3
    .complete 559,1 --Collect Murloc Head (x10)
step << Hunter
    .goto Hillsbrad Foothills,51.4,58.5
    .turnin 559 >> Turn in Farren's Proof
    .accept 560 >> Accept Farren's Proof
step << Hunter
    .goto Hillsbrad Foothills,49.5,58.8
    .turnin 560 >> Turn in Farren's Proof
    .accept 561 >> Accept Farren's Proof
step << Hunter
    .goto Hillsbrad Foothills,51.4,58.4
    .turnin 561 >> Turn in Farren's Proof
    .accept 562 >> Accept Stormwind Ho!
step << Hunter
    .goto Hillsbrad Foothills,57.1,67.4
    .complete 562,1 --Kill Daggerspine Shorehunter (x10)
    .complete 562,2 --Kill Daggerspine Siren (x10)
step << Hunter
    .goto Hillsbrad Foothills,51.4,58.5
    .turnin 562 >> Turn in Stormwind Ho!
    .accept 563 >> Accept Reassignment
step
    .fp >> Get the Southshore flight path
step
    .goto Western Plaguelands,42.9,85.0
    >>Head north farming turtle meat along the river, once you get at the end of the river, head northwest into WPL
    .fp >> Get the Chillwind Camp flight path
step
    .fly Wetlands>> Fly to Wetlands
step
    .goto Wetlands,10.6,60.5
    .turnin 292 >> Turn in The Eye of Paleth
    .accept 293 >> Accept Cleansing the Eye
step
    .goto Wetlands,12.1,64.1
    .turnin 321 >> Turn in Lightforge Iron
    .accept 324 >> Accept The Lost Ingots
step
    .goto Wetlands,10.1,69.5
    .complete 324,1 --Collect Lightforge Ingot (x5)
step
    .goto Wetlands,10.6,60.4
    .turnin 324 >> Turn in The Lost Ingots
    .accept 322 >> Accept Blessed Arm
step
    .goto Wetlands,9.9,57.4
    .turnin 474 >> Turn in Defeat Nek'rosh
step << !Mage
    .fly Ironforge>> Fly to Ironforge
step << Mage
    .zone Ironforge >> Teleport to Ironforge
step
    .goto Ironforge,63.8,67.8
    .turnin 637 >> Turn in Sully Balloo's Letter
    .accept 683 >> Accept Sara Balloo's Plea
step
    .goto Ironforge,39.3,55.9
    .turnin 683 >> Turn in Sara Balloo's Plea
    .accept 686 >> Accept A King's Tribute
step
    .goto Ironforge,38.7,87.2
    .turnin 686 >> Turn in A King's Tribute
]])

RXPGuides.RegisterGuide("RestedXP Alliance 20-32",[[
<< Alliance
#name 30-32 Duskwood/STV
#next RestedXP Alliance 32-47\32-33 Shimmering Flats
step
    .zone Stormwind City>>Head to Stormwind
step
    #sticky
    #completewith exit
    >>Buy a Bronze Tube from the Auction House
    .complete 174,1
step << Human Paladin
    #sticky
    >>Buy 10 linen cloth at the Auction House if you don't have it already
    .collect 2589,10,1644
step
	#sticky
	#completewith exit
	.trainer >> Train your level 30 spells
step << Hunter
	.train 14924>> Train Growl 4 at the pet trainer
step
    .goto Stormwind City,51.7,12.3
    .turnin 322 >> Turn in Blessed Arm
    .accept 325 >> Accept Armed and Ready
step
    .goto Stormwind City,39.7,27.6
    .turnin 293 >> Turn in Cleansing the Eye
step
    .goto Stormwind City,41.5,31.7
    .accept 1274 >> Accept The Missing Diplomat
step << Paladin
    .goto Stormwind City,39.9,29.8
    >>Speak to Duthorian Rall
    .accept 4486 >>Accept The Tome of Nobility
    .turnin 4486 >>Turn in The Tome of Nobility
step << Human Paladin
    .goto Stormwind City,39.8,30.1
    >>Speak to Duthorian Rall and click on the Tome of Divinity provided
    .accept 1642 >>Accept The Tome of Divinity
    .turnin 1642 >>Turn in The Tome of Divinity
    .accept 1643 >>Accept The Tome of Divinity
step
    .goto Stormwind City,74.1,7.6
    >>Skip this step if you don't have the item in your bags
    .accept 337 >> Accept An Old History Book
    .turnin 337 >> Turn in An Old History Book
    .accept 538 >> Accept Southshore
step
    .goto Stormwind City,78.1,25.1
    .turnin 1274 >> Turn in The Missing Diplomat
    .accept 1241 >> Accept The Missing Diplomat
step << Hunter
    .goto Stormwind City,72.8,16.1
    .turnin 563 >> Turn in Reassignment
    .isOnQuest 563
step << Warrior
    #sticky
    #completewith next
    .goto Stormwind City,64.1,61.2
    .goto Stormwind City,46.7,79.0
    >>Check the the AH, the flower shop at the trade district and the alchemy shop at the mage district and buy some Liferoot, you will need 8 for a quest later, skip this step if you already have it
    .collect 3357,8 --Collect Liferoot (x8)
step << Human Paladin
    .goto Stormwind City,56.9,61.9
    .turnin 1643 >>Turn in The Tome of Divinity
    .accept 1644 >>Accept The Tome of Divinity
step << Human Paladin
    .goto Stormwind City,56.9,61.9
    .complete 1644,1
    .turnin 1644 >>Turn in The Tome of Divinity
    .accept 1780 >>Accept The Tome of Divinity
step << Shaman
    .goto Stormwind City,61.9,83.9
    .accept 10491 >> Accept Call of Air
step
    .goto Stormwind City,73.1,78.3
    .turnin 1241 >> Turn in The Missing Diplomat
    .accept 1242 >> Accept The Missing Diplomat
step
    .goto Stormwind City,60.1,64.4
    .turnin 1242 >> Turn in The Missing Diplomat
    .accept 1243 >> Accept The Missing Diplomat
step << Human Paladin
    .goto Stormwind City,40.1,29.9
    .turnin 1780 >>Turn in The Tome of Divinity
    .accept 1781 >>Accept The Tome of Divinity
step << Human Paladin
    .goto Stormwind City,38.7,26.6
    .turnin 1781 >>Turn in The Tome of Divinity
    .accept 1786 >>Accept The Tome of Divinity
step
	#label exit
    .fly Duskwood>> Fly to Duskwood
step
    .goto Duskwood,79.8,47.9
    .accept 174 >> Accept Look To The Stars
    .turnin 174 >> Turn in Look To The Stars
    >>Skip this step if you don't have a Bronze Tube
step
    .goto Duskwood,79.8,47.9
    .accept 175 >> Accept Look To The Stars
    .isQuestTurnedIn 174
step
    .goto Duskwood,82.0,59.0
    .turnin 175 >> Turn in Look To The Stars
    .accept 177 >> Accept Look To The Stars
    .isQuestTurnedIn 174
step
    .goto Duskwood,80.9,71.8
    >>Kill the Insane Ghoul at the chapel
    .complete 177,1 --Collect Mary's Looking Glass (x1)
    .isQuestTurnedIn 174
step
    .goto Duskwood,79.8,47.8
    .turnin 177 >> Turn in Look To The Stars
    .accept 181 >> Accept Look To The Stars
    .isQuestTurnedIn 174
step
    .goto Duskwood,73.8,44.5
    .turnin 156 >> Turn in Gather Rot Blossoms
    .accept 159 >> Accept Juice Delivery
step
    .home >> Set your Hearthstone to Darkshire
step
    .goto Duskwood,73.7,46.8
    .turnin 57 >> Turn in The Night Watch
    .accept 58 >> Accept The Night Watch
step << !Hunter !Paladin
	.goto Duskwood,73.7,46.8
    .turnin 228 >> Turn in Mor'Ladim
    .accept 229 >> Accept The Daughter Who Lived
step << !Hunter !Paladin
    .goto Duskwood,74.5,46.1
    .turnin 229 >> Turn in The Daughter Who Lived
    .accept 231 >> Accept A Daughter's Love
step
    .goto Duskwood,72.6,33.9
    .turnin 1243 >> Turn in The Missing Diplomat
    .accept 1244 >> Accept The Missing Diplomat
step
    .goto Elwynn Forest,84.6,69.5
    .turnin 74 >> Turn in The Legend of Stalvan
    .accept 75 >> Accept The Legend of Stalvan
step
    .goto Elwynn Forest,85.6,69.6
    >>Loot the chest upstairs
    .complete 75,1 --Collect A Faded Journal Page (x1)
step
    .goto Elwynn Forest,84.7,69.4
    .turnin 75 >> Turn in The Legend of Stalvan
    .accept 78 >> Accept The Legend of Stalvan
step << Shaman
    #completewith next
    .hs >> Hearth to Darkshire
step << Shaman
    .goto Duskwood,73.9,44.5
    .turnin 78 >> Turn in The Legend of Stalvan
    .accept 79 >> Accept The Legend of Stalvan
step << Shaman
    .goto Duskwood,73.6,46.7
    .turnin 79 >> Turn in The Legend of Stalvan
    .accept 80 >> Accept The Legend of Stalvan
step << Shaman
    .goto Duskwood,72.6,46.9
    .turnin 80 >> Turn in The Legend of Stalvan
    .accept 97 >> Accept The Legend of Stalvan
step << Shaman
    .goto Duskwood,73.5,46.8
    .turnin 97 >> Turn in The Legend of Stalvan
    .accept 98 >> Accept The Legend of Stalvan
step << Shaman
    .goto Duskwood,72.6,33.9
    .turnin 1244 >> Turn in The Missing Diplomat
    .accept 1245 >> Accept The Missing Diplomat
step << Shaman
    .goto Duskwood,77.4,36.1
    .complete 98,1 --Collect Mistmantle Family Ring (x1)
step << Shaman
    .goto Duskwood,78.4,35.9
    >>Look for a small flower on the ground
    .complete 335,1 --Collect Tear of Tilloa (x1)
step << Shaman
    .goto Duskwood,75.7,45.3
    .turnin 98 >> Turn in The Legend of Stalvan
step << Shaman
    #completewith next
    .fly Westfall>> Fly to Westfall
step << Human Paladin
    .goto Elwynn Forest,72.7,51.5
    >>Use the Symbol of Life on Henze Faulk
    .turnin 1786 >>Turn in The Tome of Divinity
    .accept 1787 >>Accept The Tome of Divinity
step << Human Paladin
    .goto Elwynn Forest,73.5,51.3
    >>Kill Defias Wizards around the island
    .complete 1787,1 --Defias Script (1)
step
    .goto Duskwood,28.0,31.6
    .turnin 159 >> Turn in Juice Delivery
    .accept 133 >> Accept Ghoulish Effigy
step
    .goto Duskwood,23.6,35.0
    .complete 133,1 --Collect Ghoul Rib (x7)
    .complete 58,1 --Kill Plague Spreader (x20)
    .complete 101,1 --Collect Ghoul Fang (x10)
step
    .goto Duskwood,28.0,31.5
    .turnin 133 >> Turn in Ghoulish Effigy
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
    >>Kill Zzarc' Vul
    .complete 181,1 --Collect Ogre's Monocle (x1)
step
    .goto Duskwood,31.6,45.4
    .complete 101,2 --Collect Vial of Spider Venom (x5)
step
    .goto Duskwood,28.1,31.5
    .turnin 134 >> Turn in Ogre Thieves
    .accept 160 >> Accept Note to the Mayor
step << !Hunter !Paladin
    .goto Duskwood,17.7,29.2
    .turnin 231 >> Turn in A Daughter's Love
step << !Dwarf/!Paladin
    .goto Duskwood,7.8,34.1
    .turnin 325 >> Turn in Armed and Ready
    .accept 55 >> Accept Morbent Fel
step << !Dwarf/!Paladin
    .goto Duskwood,17.2,33.4
    >>Use the provided off-hand weapon to weaken Morbent Fel
    .complete 55,1 --Kill Weakened Morbent Fel (x1)
step << !Dwarf/!Paladin
    .goto Duskwood,7.8,34.3
    .turnin 55 >> Turn in Morbent Fel
step << Shaman/Dwarf Paladin
    #sticky
    #completewith next
    .hs >> Hearth to Darkshire
step << Druid/Hunter/Mage/!Dwarf Paladin/Priest/Rogue/Warlock/Warrior
    .goto Westfall,56.5,52.6,12
    .fly Darkshire>> Fly to Darkshire
step
    .goto Duskwood,79.8,47.9
    .turnin 181 >> Turn in Look To The Stars
step
    .goto Duskwood,75.7,45.3
    .turnin 101 >> Turn in The Totem of Infliction
step << !Shaman
    .goto Duskwood,73.9,44.5
    .turnin 78 >> Turn in The Legend of Stalvan
    .accept 79 >> Accept The Legend of Stalvan
step << !Shaman
    .goto Duskwood,73.6,46.7
    .turnin 58 >> Turn in The Night Watch
    .turnin 79 >> Turn in The Legend of Stalvan
    .accept 80 >> Accept The Legend of Stalvan
step << !Shaman
    .goto Duskwood,72.6,46.9
    .turnin 80 >> Turn in The Legend of Stalvan
    .accept 97 >> Accept The Legend of Stalvan
step
    .goto Duskwood,71.9,46.6
    .turnin 160 >> Turn in Note to the Mayor
    .accept 251 >> Accept Translate Abercrombie's Note
step
    .goto Duskwood,72.6,47.7
    .turnin 251 >> Turn in Translate Abercrombie's Note
    .accept 401 >> Accept Wait for Sirra to Finish
    .turnin 401 >> Turn in Wait for Sirra to Finish
    .accept 252 >> Accept Translation to Ello
step
    .goto Duskwood,71.9,46.6
    .turnin 252 >> Turn in Translation to Ello
    .accept 253 >> Accept Bride of the Embalmer
step << !Shaman
    .goto Duskwood,73.5,46.8
    .turnin 97 >> Turn in The Legend of Stalvan
    .accept 98 >> Accept The Legend of Stalvan
step << !Shaman
    .goto Duskwood,72.6,33.9
    .turnin 1244 >> Turn in The Missing Diplomat
    .accept 1245 >> Accept The Missing Diplomat
step << !Shaman
    .goto Duskwood,77.4,36.1
    .complete 98,1 --Collect Mistmantle Family Ring (x1)
step << !Shaman
    .goto Duskwood,78.4,35.9
    >>Look for a small flower on the ground
    .complete 335,1 --Collect Tear of Tilloa (x1)
step << !Shaman
    .goto Duskwood,75.7,45.3
    .turnin 98 >> Turn in The Legend of Stalvan
step
    .goto Duskwood,64.7,49.7
    .complete 221,1 --Kill Nightbane Dark Runner (x12)
step
    .goto Duskwood,75.3,48.1
    .turnin 221 >> Turn in Worgen in the Woods
    .accept 222 >> Accept Worgen in the Woods
step
    .goto Duskwood,73.0,75.0
    .complete 222,1 --Kill Nightbane Vile Fang (x8)
    .complete 222,2 --Kill Nightbane Tainted One (x8)
step
    .goto Stranglethorn Vale,38.2,4.1
    .fp >> Get the Rebel Camp flight path
step
	#sticky
	#completewith thorsen
	>>Look out for Private Thorsen's RP event while you quest, he patrols down the road every ~30 minutes
	.accept 215 >> Accept Jungle Secrets
step
    .goto Stranglethorn Vale,35.6,10.5
    .accept 583 >> Accept Welcome to the Jungle
step
    .goto Stranglethorn Vale,35.7,10.8
    .turnin 583 >> Turn in Welcome to the Jungle
    .accept 185 >> Accept Tiger Mastery
    .accept 190 >> Accept Panther Mastery
step
	#sticky
	#label tigers
    .complete 185,1 --Kill Young Stranglethorn Tiger (x10)
step
    .goto Stranglethorn Vale,42.1,11.2
    .complete 190,1 --Kill Young Panther (x10)
step
	#requires tigers
	#label thorsen
    .goto Stranglethorn Vale,35.6,10.6
    .turnin 185 >> Turn in Tiger Mastery
    .accept 186 >> Accept Tiger Mastery
    .turnin 190 >> Turn in Panther Mastery
    .accept 191 >> Accept Panther Mastery
step
    .goto Duskwood,28.8,30.9
    >>Run back to Duskwood, click on the dirt mound to summon Eliza
    .complete 253,1 --Collect The Embalmer's Heart (x1)
step << !Dwarf/!Paladin
    #sticky
    #completewith next
    .hs >> Hearth to Darkshire
step << Dwarf Paladin
    .goto Duskwood,7.8,34.1
    .turnin 325 >> Turn in Armed and Ready
    .accept 55 >> Accept Morbent Fel
step << Dwarf Paladin
    .goto Duskwood,17.2,33.4
    >>Use the provided off-hand weapon to weaken Morbent Fel
    .complete 55,1 --Kill Weakened Morbent Fel (x1)
step << Dwarf Paladin
    .goto Duskwood,7.8,34.3
    .turnin 55 >> Turn in Morbent Fel
step << Dwarf Paladin
    .goto Westfall,56.5,52.6,12
    .fly Darkshire>> Fly to Darkshire
step
    .goto Duskwood,72.0,46.6
    .turnin 253 >> Turn in Bride of the Embalmer
step
    .goto Duskwood,75.7,47.6
    .turnin 222 >> Turn in Worgen in the Woods
    .accept 223 >> Accept Worgen in the Woods
step
    .goto Duskwood,75.3,48.9
    .turnin 223 >> Turn in Worgen in the Woods
step << !Mage
    .fly Stormwind>> Fly to Stormwind
step << Mage
    .zone Stormwind City >>Teleport to Stormwind
step
    #sticky
    #completewith exit1
    .trainer >> Train your class spells in Stormwind
step << Dwarf Paladin
    #sticky
    >>Buy 10 Linen Cloth from the Auction House
    .complete 1648,1
step
    .goto Stormwind City,60.1,64.4
    .turnin 1245 >> Turn in The Missing Diplomat
    .accept 1246 >> Accept The Missing Diplomat
step << Warrior
    #sticky
    #completewith next
    .goto Stormwind City,64.1,61.2
    .goto Stormwind City,46.7,79.0
    >>Check the the AH, the flower shop at the trade district and the alchemy shop at the mage district and buy some Liferoot, you will need 8 for a quest later, skip this step if you already have it
    .collect 3357,8 --Collect Liferoot (x8)
step << Warrior
    .goto Stormwind City,78.8,45.3
    .accept 1718 >> Accept The Islander
step
    .goto Stormwind City,70.3,44.8
    >>Beat Dashel Stonefist
    .turnin 1246 >> Turn in The Missing Diplomat
    .accept 1447 >> Accept The Missing Diplomat
    .turnin 1447 >> Turn in The Missing Diplomat
    .accept 1247 >> Accept The Missing Diplomat
step
    .goto Stormwind City,60.1,63.9
    .turnin 1247 >> Turn in The Missing Diplomat
    .accept 1248 >> Accept The Missing Diplomat
step
    .goto Stormwind City,39.9,81.3
    .accept 690 >> Accept Malin's Request
step
    .goto Stormwind City,40.6,91.7
    .accept 1301 >> Accept James Hyal
step
    .goto Stormwind City,26.4,78.3
    .turnin 335 >> Turn in A Noble Brew
    .accept 336 >> Accept A Noble Brew
step << Warlock
    .goto Stormwind City,25.3,78.5
    .accept 4738 >>Accept In Search of Menara Voidrender
    .accept 1798 >>Accept Seeking Strahad
step << Human Paladin
    .goto Stormwind City,38.6,26.7
    .turnin 1787 >>Turn in The Tome of Divinity
    .accept 1788 >>Accept The Tome of Divinity
step << Human Paladin
    .goto Stormwind City,39.9,29.8
    .turnin 1788 >>Turn in The Tome of Divinity
step
    .goto Stormwind City,74.3,30.3
    .accept 543 >> Accept The Perenolde Tiara
step
    .goto Stormwind City,75.1,31.4
    .turnin 336 >> Turn in A Noble Brew
step
    .goto Stormwind City,74.1,7.6
    .accept 337 >> Accept An Old History Book
    .turnin 337 >> Turn in An Old History Book
    .accept 538 >> Accept Southshore
step << Dwarf Paladin/Mage
    #sticky
    .zone Ironforge >> Head to Ironforge
step << Dwarf Paladin
    .goto Ironforge,18.5,51.6
    .home >>Set your HS to Ironforge
step << Dwarf Paladin
    .goto Ironforge,23.3,6.1
    .accept 2999 >>Accept Tome of Divinity
step << Dwarf Paladin
    .goto Ironforge,27.4,12.1
    >>Go upstairs and speak to Tiza Battleforge
    .turnin 2999 >>Turn in Tome of Divinity
    .accept 1645 >>Accept The Tome of Divinity
    .turnin 1645 >>Turn in The Tome of Divinity
    .accept 1646 >>Accept The Tome of Divinity
    .turnin 1646 >>Turn in The Tome of Divinity
    .accept 1647 >>Accept The Tome of Divinity
step << Dwarf Paladin
    >>Speak to John Turner, he walks around the outer ring of the city
    .turnin 1647 >>Turn in The Tome of Divinity
    .accept 1648 >>Accept The Tome of Divinity
    .turnin 1648 >>Turn in The Tome of Divinity
    .accept 1778 >>Accept The Tome of Divinity
step << Dwarf Paladin
    .goto Ironforge,27.7,12.3
    >>Return to Tiza Battleforge
    .turnin 1778 >>Turn in The Tome of Divinity
    .accept 1779 >>Accept The Tome of Divinity
step << Dwarf Paladin
    .goto Ironforge,23.6,8.6
    >>Speak to Muiredon Battleforge
    .turnin 1779 >>Turn in The Tome of Divinity
    .accept 1783 >>Accept The Tome of Divinity
step << Dwarf Paladin
    #completewith next
    .goto Dun Morogh,53.2,35.3
    .zone Dun Morogh >> Head outside to Dun Morogh
step << Dwarf Paladin
    .goto Dun Morogh,78.3,58.1
    >>Use the Symbol of Life on Narm Faulk
    .turnin 1783 >>Turn in The Tome of Divinity
    .accept 1784 >>Accept The Tome of Divinity
step << Dwarf Paladin
    .goto Dun Morogh,77.3,60.5
    >>Kill Dark Iron Spies
    .complete 1784,1 --Dark Iron Script (1)
step << Dwarf Paladin
    #completewith next
    .hs >> Hearth to Ironforge
step << Dwarf Paladin
    .goto Ironforge,23.6,8.5
    >>Speak to Muiredon upstairs
    .turnin 1784 >>Turn in The Tome of Divinity
    .accept 1785 >>Accept The Tome of Divinity
step << Dwarf Paladin
    .goto Ironforge,27.4,11.9
    .turnin 1785 >>Turn in The Tome of Divinity
step
    #label exit1
    .fly Wetlands>> Fly to Wetlands
step
    .goto Wetlands,10.6,60.7
    .home >> Set your Hearthstone to Wetlands
step
    .goto Wetlands,10.6,60.7
    .turnin 1248 >> Turn in The Missing Diplomat
    .accept 1249 >> Accept The Missing Diplomat
step
    >>Once you accept the quest, you have to engage Tapoke Jhan while he tries to escape the inn
    .complete 1249,1 --Defeat Tapoke Jahn
step
    .goto Wetlands,10.6,60.7
    .turnin 1249 >> Turn in The Missing Diplomat
step
    .goto Wetlands,10.6,60.3
    .accept 1250 >> Accept The Missing Diplomat
step
    .goto Wetlands,10.6,60.7
    .turnin 1250 >> Turn in The Missing Diplomat
    .accept 1264 >> Accept The Missing Diplomat
step
    .goto Wetlands,8.4,61.6
    .turnin 1301 >> Turn in James Hyal
    .accept 1302 >> Accept James Hyal
step << Shaman
    #sticky
    #completewith next
    .zone The Exodar>>Take the boat to Darkshore and then to The Exodar
step << Shaman
    .goto The Exodar,29.9,33.0
    .turnin 10491 >> Turn in Call of Air
    .accept 9552 >> Accept Call of Air
step << Shaman
    .fly Bloodmyst Isle>> Fly to Bloodmyst Isle
step << Shaman
    .goto Bloodmyst Isle,32.3,16.2
    .turnin 9504 >> Turn in Call of Water
    .accept 9508 >> Accept Call of Water
step << Shaman
    .goto Bloodmyst Isle,26.0,40.9
	>>Kill Tel'athion
    .complete 9508,1 --Collect Head of Tel'athion (x1)
step << Shaman
    .goto Bloodmyst Isle,32.2,16.1
    .turnin 9508 >> Turn in Call of Water
    .accept 9509 >> Accept Call of Water
step << Shaman
	#sticky
	#completewith next
	.deathskip >> Drown yourself and spirit rez
step << Shaman
	.goto Bloodmyst Isle,57.7,53.9
	>>Run back to Blood Watch
    .fly The Exodar>> Fly to The Exodar
step << Shaman
    .goto Azuremyst Isle,26.8,27.3,42
    >>Exit The Exodar from the main entrance and travel along the mountain to your left until you get to the Wildwind Path
step << Shaman
    .goto Azuremyst Isle,24.9,35.9
    .turnin 9552 >> Turn in Call of Air
    .accept 9553 >> Accept Call of Air
step << Shaman
    .goto Azuremyst Isle,22.3,32.5
    .turnin 9553 >> Turn in Call of Air
    .accept 9554 >> Accept Call of Air
step << Shaman
    #sticky
    #completewith next
    .zone The Exodar>>Speak with Susurrus again so he can send you back flying to The Exodar
step << Shaman
    .goto The Exodar,30.0,33.1
    .turnin 9509 >> Turn in Call of Water
step << Shaman
    .goto The Exodar,29.6,33.4
    .turnin 9554 >> Turn in Call of Air
step << Shaman
    #sticky
    #completewith next
    .hs >> Hearth to Wetlands
]])
