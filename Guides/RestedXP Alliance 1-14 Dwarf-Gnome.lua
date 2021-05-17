RXPGuides.RegisterGuide("RestedXP Alliance 1-20",[[
<< Alliance !Warlock !Hunter !Rogue
#name 1-11 Dun Morogh
#next 11-14 Darkshore
step
    >>Drop your Hearthstone
    .goto Dun Morogh,29.9,71.2
    .accept 179 >> Accept Dwarven Outfitters
step << Warrior
#sticky
#completewith next
.goto Dun Morogh,28.6,72.2
.vendor >>Kill 2 Wolves for 10c+ vendor trash. (if you get less, sell 1-2 pieces of gear, not weapon). Then, enter the building
step << Warrior
    .goto Dun Morogh,28.8,69.2,20,0
    .goto Dun Morogh,28.7,67.7
    .vendor >> vendor trash
step << Warrior
    .goto Dun Morogh,28.8,67.2
    .train 6673 >>Train Battle Shout
step
    >>Kill Wolves for Meat
.goto Dun Morogh,28.7,74.8
    .complete 179,1 --Collect Tough Wolf Meat (x8)
step
    .xp 2 >> Grind to 2
step << Priest/Mage
    #completewith next
    .goto Dun Morogh,30.0,71.5
    .vendor >>vendor trash, repair. Buy 15 Water. Grind extra wolves if you don't have enough money
    .collect 159,15 --Collect Refreshing Spring Water (x15)
step << Paladin/Warrior
    #completewith next
    #sticky
    .goto Dun Morogh,30.0,71.5
    .vendor >>Vendor trash
step
    .goto Dun Morogh,29.9,71.2
    .turnin 179 >> Turn in Dwarven Outfitters
    .accept 233 >> Accept Coldridge Valley Mail Delivery
    .accept 3112 >> Accept Simple Memorandum << Gnome Warrior
    .accept 3106 >> Accept Simple Rune << Dwarf Warrior
    .accept 3107 >> Accept Consecrated Rune << Dwarf Paladin
    .accept 3114 >> Accept Glyphic Memorandum << Gnome Mage
    .accept 3110 >> Accept Hallowed Rune << Dwarf Priest
step
    .goto Dun Morogh,29.7,71.2
    .accept 170 >> Accept A New Threat
step
    #sticky
    #completewith Rockjaw
    >>Kill Normal Rockjaw Troggs that you see
    .complete 170,1 --Kill Rockjaw Trogg (x6)
step
    .goto Dun Morogh,26.8,72.6
    >>Kill Burly Rockjaw Troggs en route west
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
step
    .goto Dun Morogh,22.6,71.4
    .turnin 233 >> Turn in Coldridge Valley Mail Delivery
    .accept 183 >> Accept The Boar Hunter
    .accept 234 >> Accept Coldridge Valley Mail Delivery
step
    .goto Dun Morogh,21.8,70.1
    >>Kill Boars
    .complete 183,1 --Kill Small Crag Boar (x12)
step
    .xp 3
step
    .goto Dun Morogh,22.6,71.4
    .turnin 183 >> Turn in The Boar Hunter
step << Paladin/Mage
    #label Rockjaw
    .xp 2+1150 >> Grind to 1150/1400, Killing mobs (troggs) en route
    .goto Dun Morogh,25.1,75.7
    .turnin 234 >> Turn in Coldridge Valley Mail Delivery
    .accept 182 >> Accept The Troll Cave
step << Paladin/Mage
    .goto Dun Morogh,25.0,76.0
    .accept 3364 >> Accept Scalding Mornbrew Delivery 
>> You now have 5m to do this quest.
step << !Paladin !Mage
    #label Rockjaw
    >>Kill Rockjaw Troggs en route
    .goto Dun Morogh,25.1,75.7
    .turnin 234 >> Turn in Coldridge Valley Mail Delivery
    .accept 182 >> Accept The Troll Cave
step << Paladin/Mage
    #completewith Rockjaw
    .goto Dun Morogh,28.7,77.5
    >>Go up here if you're not done with troggs by now
    .complete 170,1 --Kill Rockjaw Trogg (x6)
step << Paladin/Mage
 >> Die and respawn at the Spirit Healer, or just run back
    .goto Dun Morogh,29.5,69.8,70
step << Paladin/Mage
    #sticky
    #completewith Scalding1
    >>If you were too slow and failed the timed quest, go and pick it up again
    .goto Dun Morogh,25.0,76.0
    .accept 3364 >> Accept Scalding Mornbrew Delivery
    .goto Dun Morogh,28.8,66.4
    .turnin 3364 >> Turn in Scalding Mornbrew Delivery
step << Paladin/Mage
    #label Scalding1
    .goto Dun Morogh,28.8,66.4
    .turnin 3364 >> Turn in Scalding Mornbrew Delivery
    .accept 3365 >> Accept Bring Back the Mug
    .vendor >> vendor trash
step << Paladin
    .goto Dun Morogh,28.8,68.3
    .turnin 3107 >> Turn in Consecrated Rune
    .train 20271 >>Train Judgement
.train 19740 >>Train Blessing of Might
.train 465 >>Train Devotion Aura
step << Mage
    .goto Dun Morogh,28.7,66.4
    .turnin 3114 >> Turn in Glyphic Memorandum
    .train 1459 >>Train Arcane Intellect
    .train 116 >>Train Frostbolt
step << Paladin/Mage
    >>Exit the building
.goto Dun Morogh,28.8,69.2,20
step << Paladin/Mage
    .goto Dun Morogh,29.7,71.2
    .turnin 170 >> Turn in A New Threat
step << Mage
    #completewith next
    .goto Dun Morogh,30.0,71.5
    .vendor >>Vendor, buy 10 water
    .collect 159,10 --Collect Refreshing Spring Water (x10)
step << !Paladin !Mage
    #sticky
>>Kill any Rockjaw Troggs you see nearby whilst doing Trolls
    .complete 170,1 --Kill Rockjaw Trogg (x6)
step
    >>Kill Frostmane Troll Whelps
.goto Dun Morogh,22.6,79.2,60,0
    .goto Dun Morogh,21.0,76.0,60,0
    .goto Dun Morogh,25.1,75.7
.complete 182,1 --Kill Frostmane Troll Whelp (x14)
step << !Paladin !Mage
    .xp 4
step
    .turnin 182 >> Turn in The Troll Cave
    .accept 218 >> Accept The Stolen Journal
step << !Paladin !Mage
    .goto Dun Morogh,25.0,76.0
    .accept 3364 >> Accept Scalding Mornbrew Delivery
    >>You now have 5m to get the Journal. If you fail quest, pick it up again after dying
step << Paladin/Mage
    .goto Dun Morogh,25.0,76.0
    .turnin 3365 >> Turn in Bring Back the Mug
step
    .goto Dun Morogh,30.6,80.3
    >>Enter the troll cave, kill Grik'nir and loot His journal
    .complete 218,1 --Collect Grelin Whitebeard's Journal (x1)
step << !Paladin !Mage
    #completewith next
    .deathskip >> Die and respawn at Spirit Healer
step << !Paladin !Mage
#sticky
#completewith Scalding2
    >>If you were too slow and failed the timed quest, go and pick it up again
    .accept 3364 >> Accept Scalding Mornbrew Delivery
    .goto Dun Morogh,25.0,76.0,0
    .turnin 3364 >> Turn in Scalding Mornbrew Delivery
    .goto Dun Morogh,28.8,66.4
step << !Paladin !Mage
    #label Scalding2
    .goto Dun Morogh,28.8,66.4
    .turnin 3364 >> Turn in Scalding Mornbrew Delivery
    .accept 3365 >> Accept Bring Back the Mug
    .vendor >> vendor trash
step << !Paladin !Mage
    #sticky
    >>If you were too slow and failed the timed quest, go and pick it up again
.goto Dun Morogh,25.0,76.0,0
    .accept 3364 >> Accept Scalding Mornbrew Delivery
    .goto Dun Morogh,28.8,66.4
    .turnin 3364 >> Turn in Scalding Mornbrew Delivery
step << Priest
    .goto Dun Morogh,28.6,66.4
    .turnin 3110 >> Turn in Hallowed Rune
step << Gnome Warrior
    .goto Dun Morogh,28.8,67.2
    .turnin 3112 >> Turn in Simple Memorandum
step << Dwarf Warrior
    .goto Dun Morogh,28.8,67.2
    .turnin 3106 >> Turn in Simple Rune
step << !Paladin !Mage
    .goto Dun Morogh,29.7,71.2
    .turnin 170 >> Turn in A New Threat
step
    .goto Dun Morogh,25.1,75.8
    .turnin 218 >> Turn in The Stolen Journal
    .accept 282 >> Accept Senir's Observations
step  << !Paladin !Mage
    .goto Dun Morogh,25.0,76.0
    .turnin 3365 >> Turn in Bring Back the Mug
step
    .xp 5 >> Grind to 5
step
    .goto Dun Morogh,33.5,71.8
    .turnin 282 >> Turn in Senir's Observations
    .accept 420 >> Accept Senir's Observations
step
    .goto Dun Morogh,33.9,72.2
    .accept 2160 >> Accept Supplies to Tannok
step
    #completewith next
    .goto Dun Morogh,34.1,71.6,35 >> Go through the tunnel
step
    #sticky
    #label boars
    >>Kill boars in Dun Morogh
    .complete 317,1
    .complete 384,1
step
    .goto Dun Morogh,46.8,52.4
    >>Speak to Ragnar Thunderbrew
    .accept 384 >>Accept Beer Basted Boar Ribs
step
    .goto Dun Morogh,47.2,52.2
    >>Speak to Tannok Frosthammer
    .turnin 2160 >>Turn in Supplies to Tannok
step
    .goto Dun Morogh,47.3,52.5
    .home >> Set your Hearthstone to Kharanos
step
    .goto Dun Morogh,46.0,51.7
    >>Speak to Tharek Blackstone
    .accept 400 >>Accept Tools for Steelgrill
step
    .goto Dun Morogh,49.5,48.3
    >>Speak to Pilot Bellowfiz
    .accept 317 >>Accept Stocking Jetsteam
step
    .goto Dun Morogh,49.6,48.5
    >>Speak to Pilot Stonegear
    .accept 313 >>Accept The Grizzled Den
step
    .goto Dun Morogh,50.1,49.4
    >>Speak to Loslor Rudge
    .accept 5541 >>Accept Ammo for Rumbleshot
step
    .goto Dun Morogh,50.4,49.1
    >>Speak to Beldin Steelgrill
    .turnin 400 >>Turn in Tools for Steelgrill
step
    #sticky
    #label jetsteam1
    .goto Dun Morogh,50.3,51.9,0
    .goto Dun Morogh,44.1,51.7,0
    .goto Dun Morogh,42.5,58.5,0
    >>Prioritize killing bears/boars
    .complete 317,1 --Chunk of Boar Meat (4)
    .complete 317,2 --Thick Bear Fur (2)
step
    #requires jetsteam1
    #sticky
    #label jetsteam2
    .goto Dun Morogh,49.4,48.4
    >>Speak to Pilot Bellowfiz
    .turnin 317 >>Turn in Stocking Jetsteam
    .accept 318 >>Accept Evershine
step
    .xp 6
step << Hunter
    .goto Dun Morogh,45.8,53.1
    .train 3044 >> Train Arcane Shot
step
    .goto Dun Morogh,44.1,56.9
    .complete 5541,1 --Rumbleshot's Ammo (1)
step
    .goto Dun Morogh,40.7,65.1
    >>Speak to Hegnar Rumbleshot
    .turnin 5541 >>Turn in Ammo for Rumbleshot
step << Hunter
    .goto Dun Morogh,40.7,65.1
    >>Buy the level 4 gun upgrade, skip this step if you don't have the money for it
    .collect 2509,1
step
    .goto Dun Morogh,42.4,54.7
    .complete 313,1 --Wendigo Mane (8)
step
    .xp 7
step
    #requires jetsteam2
    .goto Dun Morogh,34.6,51.6
    >>Speak to Tundra MacGrann
    .accept 312 >>Accept Tundra MacGrann's Stolen Stash
step
    .goto Dun Morogh,38.5,54.0
    >>Wait until the level 11 yeti leaves the cave, then sneak in and loot the chest. Alternatively, do this
        .link https://www.youtube.com/watch?v=o55Y3LjgKoE >>CLICK HERE
    .complete 312,1 --MacGrann's Dried Meats (1)
step
    .goto Dun Morogh,34.6,51.6
    .turnin 312 >>Turn in Tundra MacGrann's Stolen Stash
step
    .goto Dun Morogh,30.2,45.8
    >>Speak to Rejold Barleybrew
    .turnin 318 >>Turn in Evershine
    .accept 319 >>Accept A Favor for Evershine
    .accept 315 >>Accept The Perfect Stout
step
    .goto Dun Morogh,30.2,45.4
    >>Speak to Marleth Barleybrew
    .accept 310 >>Accept Bitter Rivals
step
    #sticky
    #label favor
    >>Kill the following mobs as you quest:
    .complete 319,1 --Ice Claw Bear (6)
    .complete 319,2 --Elder Crag Boar (8)
    .complete 319,3 --Snow Leopard (8)
step
    #completewith next
    .goto Dun Morogh,31.1,32.4,25
    >>The path to Wetlands start here
step
    #completewith next
    .goto Dun Morogh,32.6,25.9,20 >> Climb the mountain until the general chat channel changes to Wetlands
    .goto Wetlands,11.3,43.5,30 >> Die on Purpose and respawn at the Wetlands graveyard
step
    .goto Wetlands,9.5,59.7
    >>Spirit rez and head to Menethil
    .fp >>Get the Menethil Harbor Flight Path
step
    #completewith next
    .hs >> Hearth back to Kharanos
step
    #requires boars
    .goto Dun Morogh,47.4,52.5
    >>Buy the following items from the innkeeper:
    .complete 384,2 --Rhapsody Malt (1)
    .collect 2686,1,311 --Thunder Ale
step
    .goto Dun Morogh,47.7,52.6
    >>Head downstairs, give the Thunder Ale to Jarven and then click on the Unguarded Barrel
    .turnin 310 >>Turn in Bitter Rivals
    .accept 311 >>Accept Return to Marleth
step
    .goto Dun Morogh,46.9,52.4
    >>Speak to Ragnar Thunderbrew
    .turnin 384 >>Turn in Beer Basted Boar Ribs
step
    .goto Dun Morogh,46.7,53.9
    .accept 287 >>Accept Frostmane Hold
step
    .goto Dun Morogh,49.6,48.5
    .turnin 313 >>Turn in The Grizzled Den
step
    .goto Dun Morogh,45.8,49.4
    .accept 412 >> Accept Operation Recombobulation
step
    #completewith next
    .goto Dun Morogh,42.4,45.3,15
    >>The path to Shimmer Ridge starts here
step
    .goto Dun Morogh,41.5,44.4
    >>Kill Frostmane Seers, loot baskets on the ground
    .complete 315,1 --Shimmerweed (6)
step
    .goto Dun Morogh,30.2,45.5
    .turnin 311 >>Turn in Return to Marleth
    .turnin 315 >>Turn in The Perfect Stout
    .accept 413 >>Accept Shimmer Stout
step
    #requires favor
    .goto Dun Morogh,30.2,45.7
    >>Speak to Rejold Barleybrew
    .turnin 319 >>Turn in A Favor for Evershine
    .accept 320 >>Accept Return to Bellowfiz
step
    #requires hh
    .goto Dun Morogh,26.0,41.8
    >>Kill Leper Gnomes
    .complete 412,1 --Restabilization Cog (8)
    .complete 412,2 --Gyromechanic Gear (8)
step
    .goto Dun Morogh,22.7,52.0
    .complete 287,1 --Fully explore Frostmane Hold (1)
    .complete 287,2 --Frostmane Headhunter (5)
step
    #completewith next
    .deathskip >> Die and respawn at Kharanos
step
    .goto Dun Morogh,46.7,53.7
    >>Speak to Senir Whitebeard
    .turnin 287 >>Turn in Frostmane Hold
    .accept 291 >>Accept The Reports
step
    .goto Dun Morogh,45.9,49.4
    >>Speak to Razzle Sprysprocket
    .turnin 412 >>Turn in Operation Recombobulation
step
    .goto Dun Morogh,49.4,48.3
    >>Speak to Pilot Bellowfiz
    .turnin 320 >>Turn in Return to Bellowfiz
step << Warrior
    .money <0.0950
    +Start grinding until you have 9s 50c of vendorables
step << Warrior
    >>Run to Ironforge
.goto Ironforge,61.2,89.5
    .train 199 >>Train 2h Maces
step
    .goto Dun Morogh,63.1,49.8
    .accept 314 >> Accept Protecting the Herd
step
    >>Kill Vagash
.goto Dun Morogh,62.6,46.1
    .complete 314,1 --Collect Fang of Vagash (x)
step
    .goto Dun Morogh,63.1,49.8
    .turnin 314 >> Turn in Protecting the Herd
step
    .goto Dun Morogh,68.7,56.0
    .accept 433 >> Accept The Public Servant
step
    #sticky
    .goto Dun Morogh,68.9,55.9
    .vendor >> vendor trash, repair
step
    .goto Dun Morogh,69.1,56.3
    .accept 432 >> Accept Those Blasted Troggs!
step
    >> Go in the cave and kill Rockjaws
    .goto Dun Morogh,71.0,52.1
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .complete 433,1 --Kill Rockjaw Bonesnapper (x10)
step
    .goto Dun Morogh,69.1,56.3
    .turnin 432 >> Turn in Those Blasted Troggs!
step
    .goto Dun Morogh,68.7,56.0
    .turnin 433 >> Turn in The Public Servant
step
.xp 10 >> Grind to 10
step << Priest
    .deathskip << Die and resurrect at Kharanos
step << Priest
    .goto Dun Morogh,47.3,52.2
    .trainer >> Train your level 10 spells
step
    .goto Dun Morogh,83.8,39.2
    .accept 419 >> Accept The Lost Pilot
step
    >>Grind en route
.goto Dun Morogh,79.7,36.2
    .turnin 419 >> Turn in The Lost Pilot
step
    >>Kill Mangeclaw
.goto Dun Morogh,80.0,36.4
    .complete 417,1 --Collect Mangy Claw (x1)
step
    .goto Dun Morogh,83.9,39.2
    .turnin 417 >> Turn in A Pilot's Revenge
step
    #completewith next
    >>Go back through the tunnel
    .goto Dun Morogh,81.2,42.7,25
step
    .goto Dun Morogh,86.3,48.8
    .turnin 413 >> Turn in Shimmer Stout
    .accept 414 >> Accept Stout to Kadrell
step
.goto Dun Morogh,86.2,51.3,20,0
    .zone Loch Modan >>Go through the tunnel into Loch Modan
step
    .goto Loch Modan,22.1,73.1
    .accept 224 >> Accept In Defense of the King's Lands
step
    .goto Loch Modan,23.2,73.7
    .accept 267 >> Accept The Trogg Threat
step
    .goto Loch Modan,32.7,76.5
    >>Kill Stonesplinter Troggs
    .complete 224,1 --Kill Stonesplinter Trogg (x10)
    .complete 224,2 --Kill Stonesplinter Scout (x10)
    .complete 267,1 --Collect Trogg Stone Tooth (x8)
step
    .goto Loch Modan,22.2,73.3
    .turnin 224 >> Turn in In Defense of the King's Lands
step
    .goto Loch Modan,23.2,73.7
    .turnin 267 >> Turn in The Trogg Threat
step
    .goto Loch Modan,32.0,47.2,150>>Run to Thelsamar

step << Mage
    .goto Loch Modan,35.5,48.4
    .vendor >> Buy 40 level 5 milk
step << Mage
    .goto Loch Modan,34.8,49.3
    .accept 418 >> Accept Thelsamar Blood Sausages
step << Mage
    .goto Loch Modan,34.8,48.6
    .vendor >> Buy max 3 6 slot bags
step << !Mage
    .goto Loch Modan,36.9,46.1
    >>Find Kadrell, he patrols along the main road
    .turnin 414 >> Turn in Stout to Kadrell
step << Mage
    .goto Loch Modan,36.9,46.1
    >>Find Kadrell, he patrols along the main road
    .turnin 414 >> Turn in Stout to Kadrell
    .accept 416 >> Accept Rat Catching
    .accept 1339 >> Accept Mountaineer Stormpike's Task
    --Mage needs 12 for r3 fireball
step
    >>Go downstairs, talk to Brock
    .goto Loch Modan,37.0,47.8
    .accept 6387 >> Accept Honor Students
step
    .xp 11 >> Grind to 11
step << Mage
#sticky
#completewith Thelsamar
>>Kill Spiders in the zone for Thelsamar Blood Sausages
.complete 418,3 --Collect Spider Ichor (x3)
step << Mage
    #sticky
    #completewith Thelsamar
>>Kill Bears in the zone for Thelsamar Blood Sausages
.complete 418,2 --Collect Bear Meat (x3)
step << Mage
    #sticky
    #completewith Thelsamar
>>Kill Boars in the zone for Thelsamar Blood Sausages
.complete 418,1 --Collect Boar Intestines (x3)
step << Mage
    .goto Loch Modan,24.1,18.2
    .vendor >> vendor trash, repair
step << Mage
    .goto Loch Modan,24.7,18.3
    .turnin 1339 >> Turn in Mountaineer Stormpike's Task
    .accept 307 >> Accept Filthy Paws
step << Mage
    #completewith next
    >>Go to the entrance of the cave whilst killing rats
    .goto Loch Modan,35.5,18.2,30
step << Mage
    >>Collect the crates you find in the cave. Be careful because this is sketch at level 11, and the geomancers flame ward (Fire immunity)
.goto Loch Modan,35.9,22.1
    .complete 307,1 --Collect Miners' Gear (x4)
step << Mage
    >>Go back out the cave
.goto Loch Modan,35.5,18.2,30
step << Mage
    #sticky
    #completewith Kobolds
    .goto Loch Modan,42.9,9.9
    .vendor >> Vendor, repair if needed (optional)
step << Mage
    #label Kobolds
    >> Kill Kobolds not inside the cave until you have 12 ears
.complete 416,1 --Collect Tunnel Rat Ear (x12)
step << Mage
    >>Run back to the bunker, grinding en route
.goto Loch Modan,23.3,17.9,15
step << Mage
    .goto Loch Modan,24.1,18.2
    .vendor >>Vendor and repair
step << Mage
    #label Thelsamar
.goto Loch Modan,24.7,18.3
    .turnin 307 >> Turn in Filthy Paws
step << Mage
    .xp 12 >> Grind to 12
step << Mage
    .goto Loch Modan,30.0,10.5
    >>Kill bears here for remaining bear meat
    .complete 418,2 --Collect Bear Meat (x3)
step << Mage
    .goto Loch Modan,33.8,40.7
    >>Kill spiders here for remaining ichor
    .complete 418,3 --Collect Spider Ichor (x3)
step << Mage
    .goto Loch Modan,37.3,36.9
    >>Kill boars here for remaining intestines
    .complete 418,1 --Collect Boar Intestines (x3)
step << Mage
    .goto Loch Modan,36.9,46.1
    .turnin 416 >> Turn in Rat Catching
step << Mage
    .goto Loch Modan,34.8,49.3
    .turnin 418 >> Turn in Thelsamar Blood Sausages
step
    .goto Loch Modan,33.9,51.0
    .turnin 6387 >> Turn in Honor Students
    .accept 6391 >> Accept Ride to Ironforge
step
    .fly Ironforge>> Fly to Ironforge
step
    .goto Ironforge,51.5,26.3
    .turnin 6391 >> Turn in Ride to Ironforge
    .accept 6388 >> Accept Gryth Thurden
step << Paladin
    .goto Ironforge,23.1,6.1
    .train 1022 >>Train Blessing of Protection
    .train 633 >>Train Lay on Hands
    .train 10290 >>Train Devotion Aura r2
step << Mage
    .goto Ironforge,27.2,8.6
    .train 145 >>Train Fireball r3
    .train 604 >>Train Dampen Magic
    .train 7300 >>Train Frost Armor r2
    .train 122 >>Train Frost Nova
    .train 5504 >>Train Conjure Water r1
    .train 5505 >>Train Conjure Water r2
step
    .goto Ironforge,39.5,57.5
    .turnin 291 >> Turn in The Reports
    --Do Bartleby's Mug way later
step << Warrior
    #sticky
    .goto Ironforge,65.9,88.4
    .train 2687 >>Train Bloodrage
    .train 6546 >>Train Rend r2
step << Warrior
    .goto Ironforge,70.9,89.9
    >>Speak to Muren Stormpike
    .accept 1678 >>Accept Vejrek
step << Warrior
    >>Head back to Dun Morogh
    .goto Dun Morogh,27.8,58.0
    .complete 1678,1 --Vejrek's Head (1) 
step << Warrior
    .goto Ironforge,70.8,90.2
    .turnin 1678 >>Turn in Vejrek
    .accept 1680 >>Accept Tormus Deepforge
step << Warrior
    .goto Ironforge,48.7,42.7
    .turnin 1680 >>Turn in Tormus Deepforge
step
    .goto Ironforge,55.5,47.8
    .turnin 6388 >> Turn in Gryth Thurden
    .fly Menethil>> Fly to Menethil
step
    .abandon 6392 >> Abandon Return to Brock
step
    .money <0.076
.goto Wetlands,10.7,56.8
    .vendor >> If you have 7.6s, Check for Bronze Tube from Neal Allen and buy it if it's there
step
    .money <0.0385
.goto Wetlands,8.1,56.3
    .vendor >> Check Dewin for Heal Potions, buy down to 1s
step
    #completewith Darkshore1
    .goto Wetlands,4.6,57.3
    .zone Darkshore >> Take the boat to Darkshore
]],"Gnome Warrior/Gnome Mage/Dwarf Warrior/Dwarf Paladin/Dwarf Priest")
RXPGuides.RegisterGuide("RestedXP Alliance 1-20",[[
<< Alliance Warlock
#name 1-12 Dun Morogh
#next 12-14 Loch Modan Gnome
step
    >>Drop your Hearthstone
    .goto Dun Morogh,29.9,71.2
    .accept 179 >> Accept Dwarven Outfitters
step
#sticky
#completewith next
.goto Dun Morogh,28.6,72.2
>>Kill 2 Wolves for 10c+ vendor trash. (if less, sell 1-2 pieces of gear, not weapon)
step
>>Enter the building
    .goto Dun Morogh,28.8,69.2,20
step 
    .goto Dun Morogh,28.8,66.2
    .vendor >> Talk to the Demon Book vendor, vendor trash
step
.goto Dun Morogh,28.6,66.1
    .train 348 >>Train Immolate
    .accept 1599 >> Accept Beginnings
step
>>Exit the building
    .goto Dun Morogh,28.8,69.2,20
step
>>Kill Wolves for all the Meat en route to next spot
    .complete 179,1 --Collect Tough Wolf Meat (x8)
    >>Grind a bit en route to here
.goto Dun Morogh,27.4,77.6,30
step
    .xp 2 >> Grind to 2
step
#sticky
#completewith next
 >>Kill some Wolves en route, then watch this
.link https://www.youtube.com/watch?v=iUvGsRbIVp8 >> CLICK HERE
    .goto Dun Morogh,26.8,79.8,20
    .goto Dun Morogh,30.1,82.4,30,0
step
    .goto Dun Morogh,30.1,82.4
    .complete 1599,1 --Collect Feather Charm (x3)
step
>> Die and respawn at the Spirit Healer
    .goto Dun Morogh,29.5,69.8,100
step
    .goto Dun Morogh,28.6,66.1
    .turnin 1599 >> Turn in Beginnings
step
>>Summon Imp, rebuff
.goto Dun Morogh,30.0,71.5
    .vendor >>vendor trash, buy 15 Water
    .collect 159,10 --Collect Refreshing Spring Water (x10)
step
    .goto Dun Morogh,29.9,71.2
    .turnin 179 >> Turn in Dwarven Outfitters
    .accept 233 >> Accept Coldridge Valley Mail Delivery
    .accept 3115 >> Accept Tainted Memorandum
step
    .goto Dun Morogh,29.7,71.2
    .accept 170 >> Accept A New Threat
step
    #sticky
    #completewith Rockjaw
    >>Kill Normal Rockjaw Troggs that you see
    .complete 170,1 --Kill Rockjaw Trogg (x6)
step
    .goto Dun Morogh,26.8,72.6
    >>Kill Burly Rockjaw Troggs en route west
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
step
    .goto Dun Morogh,22.6,71.4
    .turnin 233 >> Turn in Coldridge Valley Mail Delivery
    .accept 183 >> Accept The Boar Hunter
    .accept 234 >> Accept Coldridge Valley Mail Delivery
step
    .xp 3 >> Grind to 3
step
    .goto Dun Morogh,22.6,71.4
    .turnin 233 >> Turn in Coldridge Valley Mail Delivery
    .accept 183 >> Accept The Boar Hunter
    .accept 234 >> Accept Coldridge Valley Mail Delivery
step
    .goto Dun Morogh,21.8,70.1
    >>Kill Boars
    .complete 183,1 --Kill Small Crag Boar (x12)
step
    .goto Dun Morogh,22.6,71.4
    .turnin 183 >> Turn in The Boar Hunter
step
    .xp 4 >> Grind to 4
step
>>Kill mobs (troggs) en route
    .goto Dun Morogh,25.1,75.7
    .turnin 234 >> Turn in Coldridge Valley Mail Delivery
    .accept 182 >> Accept The Troll Cave
step
    #label Rockjaw
.goto Dun Morogh,25.0,76.0
    .accept 3364 >> Accept Scalding Mornbrew Delivery
    >> You now have 5m to do this quest.
step
    #sticky
    .goto Dun Morogh,28.7,77.5
    >>Go up here if you're not done with troggs by now
    .complete 170,1 --Kill Rockjaw Trogg (x6)
step
>> Die and respawn at the Spirit Healer, or run back to the bunker
.goto Dun Morogh,28.8,69.2,100
step
    #sticky
    >>If you were too slow and failed the timed quest, go and pick it up again
    .goto Dun Morogh,25.0,76.0,0
    .accept 3364 >> Accept Scalding Mornbrew Delivery
    .goto Dun Morogh,28.8,66.4
    .turnin 3364 >> Turn in Scalding Mornbrew Delivery
step
    .goto Dun Morogh,28.8,66.4
    .turnin 3364 >> Turn in Scalding Mornbrew Delivery
    .accept 3365 >> Accept Bring Back the Mug
    .vendor >>vendor trash
step
.goto Dun Morogh,28.6,66.1
    >Go upstairs
    .train 172 >>Train Corruption
    .turnin 3115 >> Turn in Tainted Memorandum
step
    .goto Dun Morogh,29.7,71.2
    .turnin 170 >> Turn in A New Threat
step
.goto Dun Morogh,30.0,71.5
    .vendor >>Vendor, buy x5 more water
step
    .goto Dun Morogh,29.4,79.0
    >>Kill Frostmane Whelps in the cave
    .complete 182,1 --Kill Frostmane Troll Whelp (x14)
step
    .goto Dun Morogh,25.0,76.0
    .turnin 3365 >> Turn in Bring Back the Mug
step
    .goto Dun Morogh,25.1,75.7
    .turnin 182 >> Turn in The Troll Cave
    .accept 218 >> Accept The Stolen Journal
step
    .xp 5 >> Grind to 5
step
.goto Dun Morogh,26.8,79.6,20
step
.goto Dun Morogh,28.4,79.7,20
step
    .goto Dun Morogh,30.6,80.3
    >>Kill Grik'nir and loot His journal
    .complete 218,1 --Collect Grelin Whitebeard's Journal (x1)
step
>>Run back out the cave
.goto Dun Morogh,28.4,79.7,20
step
.goto Dun Morogh,26.8,79.6,20
step
    .goto Dun Morogh,25.1,75.7
    .turnin 218 >> Turn in The Stolen Journal
    .accept 282 >> Accept Senir's Observations
step
>>Grind some mobs up to here
.goto Dun Morogh,33.2,72.1,30
step
    .goto Dun Morogh,33.5,71.8
    .turnin 282 >> Turn in Senir's Observations
    .accept 420 >> Accept Senir's Observations
step
    .goto Dun Morogh,33.9,72.2
    .accept 2160 >> Accept Supplies to Tannok
step
>>Go through the tunnel
.goto Dun Morogh,34.1,71.6,20
step
    #sticky
#completewith Stocking
>> Kill boars to get Boar Meat for later
.collect 769,4 --Collect Chunk of Boar Meat (x4)
step
    #sticky
#completewith BoarRibs
>> Kill boars to get Boar Ribs for later
.collect 2886,6 --Collect Crag Boar Rib (x6)
step
.goto Dun Morogh,36.4,62.9,45
step
    .goto Dun Morogh,37.7,60.5,45
step
grind boars north-east to Kharanos
    .goto Dun Morogh,43.9,55.7
    .xp 5+2415 >> Grind to 2415/+2800xp and 1s 90c+ vendorables+money
step
     >> Die and respawn at the Spirit Healer, or run to Kharanos
    .goto Dun Morogh,47.0,55.1,50
step
    #label Stocking
.goto Dun Morogh,46.7,53.8,100
step
    #label BoarRibs
.goto Dun Morogh,46.7,53.8,100
step
.goto Dun Morogh,46.7,53.8
    .turnin 420 >> Turn in Senir's Observations
step
    .xp 6 >> Grind to 6
step
    .goto Dun Morogh,46.7,53.5
    .vendor >>vendor trash
step
    #label BloodPact
.money <0.0285
.goto Dun Morogh,47.3,53.7
    .vendor >>go to Dannie, buy the Blood Pact book and use it
    >>Talk to Gimrizz
    .train 695 >>Train Shadow Bolt r2
    .train 1454 >>Train Life Tap
step
    .istrained 1454,686
.money <0.0190
.goto Dun Morogh,47.3,53.7
    >>Talk to Gimrizz
    .train 695 >>Train Shadow Bolt r2
    .train 1454 >>Train Life Tap
step
    .goto Dun Morogh,46.0,51.7
    .accept 400 >> Accept Tools for Steelgrill
step
    #sticky
#completewith Stocking2
>> Kill boars to get Boar Meat for later
.collect 769,4 --Collect Chunk of Boar Meat (x4)
step
    #label Stocking2
.goto Dun Morogh,49.4,48.4
    >>DON'T kill bears en route
    .accept 317 >> Accept Stocking Jetsteam
step
    .goto Dun Morogh,49.6,48.6
    .accept 313 >> Accept The Grizzled Den
step
    .goto Dun Morogh,50.4,49.1
    .turnin 400 >> Turn in Tools for Steelgrill
step
    .goto Dun Morogh,50.1,49.4
    .accept 5541 >> Accept Ammo for Rumbleshot
step
#label Stocking
>>Run up the ramp behind Loslor
    .goto Dun Morogh,50.3,49.9,15
    .goto Dun Morogh,50.4,50.3,15
step
    #sticky
#label BoarRibs2
>> Kill boars to get Boar Ribs for later
.collect 2886,6 --Collect Crag Boar Rib (x6)
step << Priest/Mage
    >>Get the items for Stocking Jetsteam
    .complete 317,1 --Collect Chunk of Boar Meat (x4)
    .goto Dun Morogh,51.5,53.4,0
    .goto Dun Morogh,50.2,53.7,0
    .goto Dun Morogh,49.9,51.0,0
.complete 317,2 --Collect Thick Bear Fur (x2)
    .goto Dun Morogh,48.2,49.2,0
    .goto Dun Morogh,48.3,46.8,0
    >>If you're unlucky, go here, then go back to previous spots if still not done. Don't worry about getting 6 ribs now as you can get them later
    .goto Dun Morogh,43.7,51.8,0
step
    .goto Dun Morogh,49.4,48.4
    .turnin 317 >> Turn in Stocking Jetsteam
    .accept 318 >> Accept Evershine
step
    .goto Dun Morogh,46.8,52.4
    .accept 384 >> Accept Beer Basted Boar Ribs
step
    .goto Dun Morogh,47.2,52.2
    .turnin 2160 >> Turn in Supplies to Tannok
step
.goto Dun Morogh,47.4,52.5
    .home >> Set your Hearthstone to Thunderbrew Distillery
    .vendor >> Buy as much level 5 drink as you can

step
    >> Go to the cave entrance, then go back and forth the inside of the cave, clearing Wendigos until you get all the 8 Manes
    .complete 313,1 --Collect Wendigo Mane (x8)
.goto Dun Morogh,42.5,54.5,30
    .goto Dun Morogh,41.7,51.4,0
    .goto Dun Morogh,42.5,54.5
step
    .goto Dun Morogh,44.1,56.9
    .complete 5541,1 --Collect Rumbleshot's Ammo (x1)
step
    >>Grind some mobs en route
    .goto Dun Morogh,40.6,62.6,30
step
    .goto Dun Morogh,40.7,65.1
    .turnin 5541 >> Turn in Ammo for Rumbleshot
    .vendor >>Vendor and repair
step
    .xp 7 >> Grind to 7
step
>>Grind some mobs en route
    .goto Dun Morogh,35.2,56.4,50
step
>>Grind some mobs en route
    .goto Dun Morogh,36.0,52.0,50
step
    .goto Dun Morogh,34.6,51.7
    .accept 312 >> Accept Tundra MacGrann's Stolen Stash
step
>>Drop down
    .goto Dun Morogh,34.0,51.0,20
step
.goto Dun Morogh,30.5,46.0
    .vendor >> Buy x10 level 5 drink from Kreg
step
    .goto Dun Morogh,30.2,45.8
    .turnin 318 >> Turn in Evershine
    .accept 319 >> Accept A Favor for Evershine
    .accept 315 >> Accept The Perfect Stout
step
    .goto Dun Morogh,30.2,45.5
    .accept 310 >> Accept Bitter Rivals
step
    >> Start running around killing all the mobs required for A Favor for Evershine
.complete 319,1 --Kill Ice Claw Bear (x6)
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .complete 319,3 --Kill Snow Leopard (x8)
.goto Dun Morogh,31.5,38.9,0
    .goto Dun Morogh,28.3,39.9,0
    .goto Dun Morogh,28.7,43.7,0
    .goto Dun Morogh,25.8,47.2,0
    .goto Dun Morogh,25.8,47.2,0
    .goto Dun Morogh,30.0,51.8,0
step
#completewith BoarRibsDone
>> Finish off getting the Boar Ribs
.complete 384,1 --Collect Crag Boar Rib (x6)
step
    .goto Dun Morogh,30.2,45.7
    .turnin 319 >> Turn in A Favor for Evershine
    .accept 320 >> Accept Return to Bellowfiz
step
.xp 7+3735 >>Grind until 3735+/4500xp, then go to here
    .goto Dun Morogh,30.3,37.5,50
    --Probably less than 3735 due to discovery exp, change later
step
    .isQuestTurnedIn 384
    .xp 7+4360 >>Grind until 4360+/4500xp, then go to here
    .goto Dun Morogh,30.3,37.5,50
step
    >>Run up the mountain north
    .goto Dun Morogh,30.9,33.1,15
step
>>Follow it up to here
    .goto Dun Morogh,32.4,29.1,15
step
.goto Dun Morogh,33.0,27.2,15
step
.deathskip >>Keep running straight north, then drop down and die, then respawn
    .goto Dun Morogh,33.0,25.2
    .goto Wetlands,11.6,43.4,45
step
.goto Wetlands,12.7,46.7,30
step
.goto Wetlands,10.6,55.0,30
step
.goto Wetlands,9.5,55.7,30
step
.goto Wetlands,9.5,59.7
    .fp >> Get the Menethil Harbor flight path
step
.hs >> Hearth to Kharanos
step
.goto Dun Morogh,47.4,52.5
.vendor >> Buy a Rhapsody Malt and Thunder Ale from Belm
    .complete 384,2 --Collect Rhapsody Malt (x1)
    .collect 2686,1 --Collect Thunder Ale (x1)
step
>>Go in the room behind the innkeeper
    .goto Dun Morogh,47.6,52.4,9
step
    >>Go downstairs, then talk to Jarven, and give him the Thunder Ale
    >>Wait for the barrel mouseover to become "unguarded", then handin
    .turnin 310 >> Turn in Bitter Rivals
    .accept 311 >> Accept Return to Marleth
step
.goto Dun Morogh,46.8,52.4
    .turnin 384 >> Turn in Beer Basted Boar Ribs
     >>Sell the recipe when you next vendor
step
    .xp 8 >> Grind to 8
step
    #completewith BloodPact
.money <0.0570
.goto Dun Morogh,47.3,53.7
    .vendor >>go to Dannie, buy the Blood Pact, Firebolt r2 books and use them
    >>Talk to Gimrizz
.train 980 >>Train Curse of Agony
    .train 5782 >>Train Fear
step
    .istrained 5782,980
.goto Dun Morogh,47.3,53.7
    .vendor >> buy the Firebolt r2 book from Dannie and use it
    .train 980 >>Train Curse of Agony
    .train 5782 >>Train Fear
step
    .goto Dun Morogh,46.7,53.8
    .accept 287 >> Accept Frostmane Hold
step
    .goto Dun Morogh,49.6,48.6
    .turnin 313 >> Turn in The Grizzled Den
step
    .goto Dun Morogh,49.4,48.4
    .turnin 320 >> Turn in Return to Bellowfiz
step
    .goto Dun Morogh,45.8,49.4
    .accept 412 >> Accept Operation Recombobulation
step
    >>Run over to Shimmerweed. Be careful of the wolves (big 30 yard aggro range) en route
.goto Dun Morogh,42.5,45.2,90
step
    >>Be careful of the headhunter patrol that runs on top of each seer. Loot the baskets you see
.goto Dun Morogh,42.5,45.2,25
step
    #sticky
    #completewith next
    >> If you get unlucky after killing all mobs except the ones in middle camp, go to the other area for shimmerweed
.goto Dun Morogh,39.7,40.1,30
.goto Dun Morogh,42.2,34.7
step
    .goto Dun Morogh,41.2,44.3,0
    >>Clear mobs in this area. Be careful if you need to clear the middle camp. You can pull the mobs in the huts and line of sight (LoS) them behind the huts if you need 2 more mobs
    .complete 315,1 --Collect Shimmerweed (x6)
step
>>Drop down
.goto Dun Morogh,40.5,46.7,20
step
.goto Dun Morogh,38.0,51.2,25
step
    >>Fear Old Icebeard, then loot the meat
.goto Dun Morogh,38.5,53.9
    .complete 312,1 --Collect MacGrann's Dried Meats (x1)
step
    .goto Dun Morogh,34.6,51.7
    .turnin 312 >> Turn in Tundra MacGrann's Stolen Stash
step
>>Drop down
    .goto Dun Morogh,34.0,51.0,20
step
.goto Dun Morogh,30.4,45.8
    .money <0.0125
.vendor >> Buy as much level 5 drink as you can afford
step
    .goto Dun Morogh,30.2,45.7
    .turnin 315 >> Turn in The Perfect Stout
    .accept 413 >> Accept Shimmer Stout
step
    .goto Dun Morogh,30.2,45.5
    .turnin 311 >> Turn in Return to Marleth
step
    >>Go west. Kill leper gnomes
    .complete 412,2 --Collect Gyromechanic Gear (x8)
    .complete 412,1 --Collect Restabilization Cog (x8)
.goto Dun Morogh,26.4,43.3,0
    .goto Dun Morogh,25.0,39.7,0
    .goto Dun Morogh,24.7,44.7,0
step
    .xp 9 >> Grind to 9
step
    >>Enter the cave
.goto Dun Morogh,24.5,50.8,30
step
    .goto Dun Morogh,23.3,51.6
    >>Kill Headhunters/mobs inside the cave
    .complete 287,1 --Kill Frostmane Headhunter (x5)
step
    >>Jump down, you die after
.goto Dun Morogh,23.0,52.2,12
step
    .goto Dun Morogh,22.7,52.2
    .complete 287,2 --Fully explore Frostmane Hold
step
.deathskip >> Die and respawn at the Spirit Healer
step
    .goto Dun Morogh,46.7,53.8
    .turnin 287 >> Turn in Frostmane Hold
    .accept 291 >> Accept The Reports
step
    .goto Dun Morogh,45.8,49.4
    .turnin 412 >> Turn in Operation Recombobulation
step
    >>Grind a little en route
    .goto Dun Morogh,63.1,49.8
    .accept 314 >> Accept Protecting the Herd
step
>>Run up this part of the mountain
.goto Dun Morogh,62.3,50.3,12
step
.goto Dun Morogh,62.4,49.9,5
step
    >>Kill Vagash
.goto Dun Morogh,62.6,46.1
    .complete 314,1 --Collect Fang of Vagash (x)
step
    .goto Dun Morogh,63.1,49.8
    .turnin 314 >> Turn in Protecting the Herd
step
    >>Grind a little en route
.goto Dun Morogh,68.6,54.7
    .vendor >>Vendor, buy x10 level 5 water/x5 level 5 food
step
    .goto Dun Morogh,68.7,56.0
    .accept 433 >> Accept The Public Servant
step
    .goto Dun Morogh,68.9,55.9
    .vendor >> vendor trash, repair
step
    .goto Dun Morogh,69.1,56.3
    .accept 432 >> Accept Those Blasted Troggs!
step
    >> Go in the cave and kill Rockjaws
.goto Dun Morogh,71.0,52.1
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .complete 433,1 --Kill Rockjaw Bonesnapper (x10)
step
    .goto Dun Morogh,69.1,56.3
    .turnin 432 >> Turn in Those Blasted Troggs!
step
    .goto Dun Morogh,68.9,55.9
    .vendor >> vendor trash, repair
step
    .goto Dun Morogh,68.7,56.0
    .turnin 433 >> Turn in The Public Servant
step
.xp 10 >> Grind to 10
step
    .goto Dun Morogh,68.6,54.7
    .vendor >>Vendor, buy x30 level 5 water/x15 level 5 food
step
    >>Run up the mountain here
    .goto Dun Morogh,68.2,53.7,12
step
    >>Grind a bit en route
    .goto Dun Morogh,77.8,48.2,30
step
    >>Grind a bit en route, go inside the tunnel
    .goto Dun Morogh,81.2,42.7,15
step
    .goto Dun Morogh,83.8,39.2
    .accept 419 >> Accept The Lost Pilot
step
    >>Grind en route
.goto Dun Morogh,79.7,36.2
    .turnin 419 >> Turn in The Lost Pilot
step
    >>Kill Mangeclaw
.goto Dun Morogh,80.0,36.4
    .complete 417,1 --Collect Mangy Claw (x1)
step
    .goto Dun Morogh,83.9,39.2
    .turnin 417 >> Turn in A Pilot's Revenge
step
    >>Go back through the tunnel
    .goto Dun Morogh,81.2,42.7,15
step
    >>Grind a bit en route
    .goto Dun Morogh,79.6,50.7,30
step
    >>Go through the tunnel
.goto Dun Morogh,82.3,53.5,15
step
    .goto Dun Morogh,86.3,48.8
    .turnin 413 >> Turn in Shimmer Stout
    .accept 414 >> Accept Stout to Kadrell
step
    .goto Dun Morogh,86.2,51.3,15
    >>Go through the tunnel
step
    .goto Loch Modan,22.1,73.1
    >>Stay your pet
    .accept 224 >> Accept In Defense of the King's Lands
step
    .goto Loch Modan,22.6,75.4,20
step
    .goto Loch Modan,23.2,73.7
    >>Go into the bunker
    .accept 267 >> Accept The Trogg Threat
step
>>Die and respawn at the Spirit Healer, or run to here
    .goto Loch Modan,32.0,47.2,150
step
    .goto Loch Modan,35.1,47.8,15
step
    .goto Loch Modan,35.5,48.4
    .home >> Set your Hearthstone to Thelsamar
step
    .goto Loch Modan,34.8,49.3
    .accept 418 >> Accept Thelsamar Blood Sausages
step
    .goto Loch Modan,34.0,46.5
    .vendor >>vendor trash, Repair
step
    .goto Loch Modan,36.9,46.1
    >>Find Kadrell, he patrols along the main road
    .turnin 414 >> Turn in Stout to Kadrell
    .accept 416 >> Accept Rat Catching
    .accept 1339 >> Accept Mountaineer Stormpike's Task
    --add more waypoints?
step
    >>Go inside the building
    .goto Loch Modan,37.2,46.9,15
step
    >>Go downstairs, talk to Brock
.goto Loch Modan,37.0,47.8
    .accept 6387 >> Accept Honor Students
step
#sticky
#completewith Thelsamar
>>Kill Spiders in the zone for Thelsamar Blood Sausages
.complete 418,3 --Collect Spider Ichor (x3)
step
    #sticky
    #completewith Thelsamar
>>Kill Bears in the zone for Thelsamar Blood Sausages
.complete 418,2 --Collect Bear Meat (x3)
step
    #sticky
    #completewith Thelsamar
>>Kill Boars in the zone for Thelsamar Blood Sausages
.complete 418,1 --Collect Boar Intestines (x3)
step
>>Grind some mobs for Boar Intestines, Bear Meat and Spider Ichor en route.    
.goto Loch Modan,23.3,17.9,15
    >>Enter the bunker
step
    .goto Loch Modan,24.1,18.2
    .vendor >>vendor trash, repair
step
.goto Loch Modan,24.7,18.3
    .turnin 1339 >> Turn in Mountaineer Stormpike's Task
    .accept 307 >> Accept Filthy Paws
    .accept 1338 >> Accept Stormpike's Order
step
#label Thelsamar
>> Die and respawn at the Spirit Healer, or run to here. Don't resummon your pet
    .goto Loch Modan,32.0,47.2,150
step
    .goto Loch Modan,33.9,51.0
    .fp >> Get the Thelsamar flight path
    .turnin 6387 >> Turn in Honor Students
    .accept 6391 >> Accept Ride to Ironforge
    .fly Ironforge>> Fly to Ironforge
step
    .goto Ironforge,51.5,26.3
    .turnin 6391 >> Turn in Ride to Ironforge
    .accept 6388 >> Accept Gryth Thurden
step
    .goto Ironforge,53.9,35.4,30
step
    .goto Ironforge,45.1,48.9,15
    >>Go inside the building
step
    .goto Ironforge,39.5,57.5
    .turnin 291 >> Turn in The Reports
step
    .goto Ironforge,55.5,47.8
    .turnin 6388 >> Turn in Gryth Thurden
    .accept 6392 >> Accept Return to Brock
step
    >>Jump up, then relog on the anvil
.goto Ironforge,49.7,43.7,9
step
    >>Enter the Deeprun Tram
.goto Ironforge,77.0,51.0,20
step
    .accept 6661 >> Accept Deeprun Rat Roundup
step
    >>Use your flute on the rats scattered around
    .complete 6661,1 --Rats Captured (x5)
step
    #sticky
#completewith Tram
.turnin 6661 >> Turn in Deeprun Rat Roundup
    >>If the tram isn't here, wait for the RP event and pick up the followup. Otherwise, skip
    .accept 6662 >> Accept Me Brother, Nipsy
step
    .xp 11 >> Should be 11 by now
step
    #label Tram
>>Take the Deeprun Tram and enter Stormwind
    .goto Stormwind City,62.4,10.1,20
step
    .goto Stormwind City,58.1,16.5
    .turnin 1338 >> Turn in Stormpike's Order
step
    .goto Stormwind City,59.7,51.6,30
step
    >>Go up the ramp
.goto Stormwind City,62.5,62.3,30
step
    .goto Stormwind City,66.3,62.1
    .fp >> Get the Trade District flight path
step
    .money <0.3040
.goto Stormwind City,57.1,57.7
    .train 227 >>Train Staves
.train 201 >>Train 1h Swords
step
    .istrained 227
.money <0.2090
.goto Stormwind City,57.1,57.7
    .train 227 >>Train Staves
step
    .goto Stormwind City,29.2,74.0,20
step
    >>Go downstairs
    .goto Stormwind City,27.7,76.1,20
step
    .goto Stormwind City,25.2,78.5
    .accept 1688 >> Accept Surena Caledon
    .train 1120 >>Train Drain Soul
    .train 6201 >> Train Create Healthstone
    .train 696 >>Train Demon Skin r2
    .train 707 >> Train Immolate r2
step
    .deathskip >> Die and respawn at the Spirit Healer by using Life Tap and standing on the Bonfire next to you
step
    .goto Elwynn Forest,41.7,65.9
    .vendor >>vendor trash, repair
step
    .goto Elwynn Forest,42.1,65.9
    .accept 62 >> Accept The Fargodeep Mine
step
    .goto Elwynn Forest,42.9,65.7
    .abandon 109 >> Abandon Report to Gryan Stoutmantle
step
    >>Go in the inn
    .goto Elwynn Forest,42.9,65.7,15
step
    .goto Elwynn Forest,43.3,65.7
    .accept 60 >> Accept Kobold Candles
step
    >>Exit the inn
    .goto Elwynn Forest,42.9,65.7,15
step
    .goto Elwynn Forest,42.1,67.3
    .accept 47 >> Accept Gold Dust Exchange
    .accept 40 >> Accept A Fishy Peril
step
    #sticky
#completewith Candles
    >> Get Candles from nearby Kobolds
    .complete 60,1 --Collect Kobold Candle (x8)
step
    #sticky
#completewith Dust
    >> Get Gold Dust from nearby Kobolds
    .complete 47,1 --Collect Gold Dust Candle (x10)
step
    >>Enter through the lower entrance
.goto Elwynn Forest,38.1,81.6,15
step
    .goto Elwynn Forest,40.5,82.3
    .complete 62,1 --Scout Through the Fargodeep Mine
step
    >>Exit through the lower entrance
.goto Elwynn Forest,38.1,81.6,15
step
    #label Candles
step
    #label Dust
step
    #completewith Kobolds2
.goto Elwynn Forest,38.4,83.4
    >>Kill all Kobolds you see
    .complete 60,1 --Collect Kobold Candle (x8)
    .complete 47,1 --Collect Gold Dust Candle (x10)
step
    .goto Elwynn Forest,34.7,84.5
    .accept 88 >> Accept Princess Must Die!
step
    .goto Elwynn Forest,24.6,78.2
    .accept 176 >> Accept Wanted:   "Hogger"
step
#sticky
#completewith Hogger
#label Collector
    >>Keep an eye out for the gold pickup schedule (lucky drop), or a 100% Drop from Gruff Swiftbite (rare). extra 210xp
    .accept 123 >> Accept The Collector
step
#label Hogger
.goto Elwynn Forest,27.6,93.0
    >>Hogger can be in multiple spots in the area. Keep him fear chained (away from other mobs. You can go in the water). Use /Target Hogger if you can't find him
    .goto Elwynn Forest,30.9,85.5,0 >> Kite Hogger to the fence if he's close and you know what you're doing
    .goto Elwynn Forest,24.4,80.7,0 >> Kite Hogger to the tower at 60% if you know what you're doing
    .complete 176,1 --Collect Huge Gnoll Claw (x1)
step
    .deathskip >> Die and respawn at the Spirit Healer
    .goto Elwynn Forest,39.5,60.5,30
step
    .goto Elwynn Forest,41.7,65.9
    .vendor >>vendor trash, repair
step
    #requires Collector
.goto Elwynn Forest,42.1,65.9
    >>Choose the Staff. Equip it
    .turnin 176 >> Turn in Wanted:    "Hogger"
    .turnin 40 >> Turn in A Fishy Peril
    .accept 35 >> Accept Further Concerns
    .turnin 62 >> Turn in The Fargodeep Mine
    .accept 76 >> Accept The Jasperlode Mine
    .turnin 123 >> Turn in The Collector >> Skip Followup
step
    .goto Elwynn Forest,42.1,65.9
    >>Choose the Staff. Equip it
    .turnin 176 >> Turn in Wanted:    "Hogger"
    .turnin 40 >> Turn in A Fishy Peril
    .accept 35 >> Accept Further Concerns
    .turnin 62 >> Turn in The Fargodeep Mine
    .accept 76 >> Accept The Jasperlode Mine
step
    .abandon 147 >> Abandon Manhunt
step
    .goto Elwynn Forest,42.1,67.3
    .turnin 47 >> Turn in Gold Dust Exchange
step
    >>Go in the inn
    .goto Elwynn Forest,42.9,65.7,15
step
    .goto Elwynn Forest,43.3,65.7
    .turnin 60 >> Turn in Kobold Candles
    .accept 61 >> Accept Shipment to Stormwind
step
>>Go to the room behind the innkeeper, then go downstairs.
    .goto Elwynn Forest,44.1,66.0,15
step
#label Level12
.goto Elwynn Forest,44.4,66.2
    .train 755 >>Train Health Funnel
    .train 705 >>Train Shadow Bolt r3
step
    #label Kobolds2
.goto Elwynn Forest,43.8,65.8
    .vendor >> Buy x10 level 5 drink
step
    >>Exit the inn
    .goto Elwynn Forest,42.9,65.7,15
step
.goto Elwynn Forest,47.6,63.3,60
step
>>Go toward the outside of the mine
.goto Elwynn Forest,61.8,54.0,20
step
    >>Go in the mine, and keep following the middle path
.goto Elwynn Forest,60.4,50.2
    .complete 76,1 --Scout through the Jasperlode Mine
step
>>Exit the mine
.goto Elwynn Forest,61.8,54.0,20
step
    .goto Elwynn Forest,74.0,72.2
    >>Grind a bit en route to here
    .turnin 35 >> Turn in Further Concerns
    .accept 37 >> Accept Find the Lost Guards
    .accept 52 >> Accept Protect the Frontier
step
    #sticky
#completewith Prowlers
    >>Kill Prowlers as you do other quests
    .complete 52,1 --Kill Prowler (x8)
step
    #sticky
#completewith Bears
    >>Kill Bears as you do other quests. Kill any you see
    .complete 52,2 --Kill Young Forest Bear (x5)
step
    .goto Elwynn Forest,72.7,60.3
    .turnin 37 >> Turn in Find the Lost Guards
    .accept 45 >> Accept Discover Rolf's Fate
step
    .goto Elwynn Forest,81.4,66.1
    .accept 5545 >> Accept A Bundle of Trouble
step
    .goto Elwynn Forest,83.3,66.1
    .vendor >> vendor trash, repair
step
    #sticky
    #completewith Bundles
>>Keep an eye out for the bundles of logs at the base of the trees.
    .collect 13872,8 --Collect Bundle of Wood (x8)
step
    #label Bundles
.goto Elwynn Forest,79.8,55.5
    >> Pull the mobs in front of the huts, move away then keep one feared, and try to keep dots on both. Then loot the carcass on the ground
    .turnin 45 >> Turn in Discover Rolf's Fate
    .accept 71 >> Accept Report to Thomas
step
    .goto Elwynn Forest,81.0,60.5
    >>Start running back, finish off the bundles
    .collect 13872,8 --Collect Bundle of Wood (x8)
step
    .goto Elwynn Forest,81.4,66.1
    .turnin 5545 >> Turn in A Bundle of Trouble
step
    .xp 12 >> Grind to 12
step
    #label Bears
.goto Elwynn Forest,79.5,68.8
    .accept 83 >> Accept Red Linen Goods
step
    #label Prowlers
.goto Elwynn Forest,79.5,68.8,10000
step
>>Kill the last mobs for Protect the Frontier here
.goto Elwynn Forest,79.8,84.0
    .complete 52,1 --Kill Prowler (x8)
    .complete 52,2 --Kill Young Forest Bear (x5)
step
    .goto Elwynn Forest,74.0,72.2
    .turnin 52 >> Turn in Protect the Frontier
    .turnin 71 >> Turn in Report to Thomas
    .accept 39 >> Accept Deliver Thomas' Report
step
    .goto Elwynn Forest,69.8,79.5
.abandon 109 >> Abandon Report to Gryan Stoutmantle
step
    >>Start circling the farm, killing defias for bandanas
    .complete 83,1 --Collect Red Linen Bandana (x6)
.goto Elwynn Forest,69.8,79.5
step
    >>Kill the mobs inside the house, keep Morgan feared (he gouges and kills pet), nuke Surena
    .goto Elwynn Forest,71.0,80.8
    .complete 1688,1 --Collect Surena's Choker (x)
step
#label Deed
.goto Elwynn Forest,69.8,79.5
    .goto Elwynn Forest,69.5,76.4,0
    .goto Elwynn Forest,71.3,79.2,0
    >>Kill Princess using the fence, jumping back and forth to abuse mob pathing
    .complete 88,1 --Collect Brass Collar (x1)
step
    .goto Elwynn Forest,79.5,68.9
    .turnin 83 >> Turn in Red Linen Goods
step
    .goto Elwynn Forest,83.3,66.1
    .vendor >> vendor trash, repair
step
.abandon 184 >> Abandon Furlbrow's Deed
step
    .goto Elwynn Forest,83.6,69.7,90
    .collect 6265,2 --Collect Soul Shard (x2)
    >>Grind en route, make sure to have at least 2 Soul Shards (using Drain Soul)
step
    .goto Redridge Mountains,17.4,69.6
    .accept 244 >> Accept Encroaching Gnolls
step
    >>Be careful of the mobs en route. If you die en route, just rez at the Spirit Healer
.goto Redridge Mountains,30.7,60.0
    .turnin 244 >> Turn in Encroaching Gnolls
step
    .goto Redridge Mountains,30.6,59.4
    .fp >> Get the Redridge Mountains flight path
    .fly Stormwind>> Fly to Stormwind
step
    >>Choose the rockets for more damage
    .goto Stormwind City,56.2,64.6
    .turnin 61 >> Turn in Shipment to Stormwind
step
    .goto Stormwind City,29.2,74.0,20
step
    >>Go downstairs
    .goto Stormwind City,27.7,76.1,20
step
#completewith Level12
.money <0.1140
.goto Stormwind City,25.3,78.2
    .train 755 >>Train Health Funnel
    .train 705 >>Train Shadow Bolt r3
step
    .goto Stormwind City,25.2,78.5
    .turnin 1688 >> Turn in Surena Caledon
    .accept 1689 >> Accept The Binding
step
    >>Go down into the basement
    .goto Stormwind City,25.2,80.7,15
step
    .goto Stormwind City,23.2,79.5,15
step
    >>Go right
    .goto Stormwind City,26.3,79.5,15
step
    >>Go left (downstairs)
    .goto Stormwind City,25.5,78.1
    >>Use the Bloodstone Choker
    .complete 1689,1 --Kill Summoned Voidwalker (x1)
step
    .goto Stormwind City,25.2,78.5
    >>Don't summon your voidwalker once you learn it
    .turnin 1689 >> Turn in The Binding
step
    .deathskip >> Die and respawn at the Spirit Healer by using Life Tap and standing on the Bonfire next to you
step
    .goto Elwynn Forest,41.7,65.9
    .vendor >>vendor trash, repair
step
    .goto Elwynn Forest,42.1,65.9
    .turnin 76 >> Turn in The Jasperlode Mine
    .turnin 39 >> Turn in Deliver Thomas' Report
step
    .abandon 59 >> Abandon Cloth and Leather Armor
step
    .goto Elwynn Forest,34.7,84.5
    .turnin 88 >> Turn in Princess Must Die!
step
    .hs >> Hearth to Loch Modan
    .goto Loch Modan,35.5,48.4,90
]],"Gnome Warlock")

RXPGuides.RegisterGuide("RestedXP Alliance 1-20",[[
<< Alliance Warlock
#name 12-14 Loch Modan Gnome
#next 14-20 Bloodmyst
step
    .goto Loch Modan,34.8,48.6
    .vendor >> Buy 6 slot bags until all bag slots full
step
    .goto Loch Modan,34.0,46.5
    .vendor >>vendor trash, repair
step
#sticky
#completewith Thelsamar
>>Kill Spiders in the zone for Thelsamar Blood Sausages
.complete 418,3 --Collect Spider Ichor (x3)
step
    #sticky
    #completewith Thelsamar
>>Kill Bears in the zone for Thelsamar Blood Sausages
.complete 418,2 --Collect Bear Meat (x3)
step
    #sticky
    #completewith Thelsamar
>>Kill Boars in the zone for Thelsamar Blood Sausages
.complete 418,1 --Collect Boar Intestines (x3)
step
    #label Thelsamar
>>Grind some mobs for Boar Intestines, Bear Meat and Spider Ichor en route
.goto Loch Modan,39.3,27.0,100
step
>>Go to the entrance of the cave whilst killing rats
    .goto Loch Modan,35.5,18.2,30
step
    >>Collect the crates you find in the cave. Be careful because this is area is very compact and it's hard to run, as the geomancers flame ward (Fire immunity)
.goto Loch Modan,35.9,22.1
    .complete 307,1 --Collect Miners' Gear (x4)
step
    >>Go back out the cave
.goto Loch Modan,35.5,18.2,30
step
    #sticky
    #completewith Kobolds
    .goto Loch Modan,42.9,9.9
    .vendor >> Vendor, repair if needed (optional)
step
    #label Kobolds
    >> Kill Kobolds not inside the cave until you have 12 ears
.complete 416,1 --Collect Tunnel Rat Ear (x12)
step
#sticky
#completewith Thelsamar1
>>Kill Spiders in the zone for Thelsamar Blood Sausages
.complete 418,3 --Collect Spider Ichor (x3)
step
    #sticky
    #completewith Thelsamar1
>>Kill Bears in the zone for Thelsamar Blood Sausages
.complete 418,2 --Collect Bear Meat (x3)
step
    #sticky
    #completewith Thelsamar1
>>Kill Boars in the zone for Thelsamar Blood Sausages
.complete 418,1 --Collect Boar Intestines (x3)
step
    >>Run back to the bunker, grinding en route. Stay your pet when you get there
.goto Loch Modan,23.3,17.9,15
step 
    .goto Loch Modan,24.1,18.2
    .vendor >>vendor and repair
step
    .goto Loch Modan,24.7,18.3
    .turnin 307 >> Turn in Filthy Paws
step
    .xp 13 >> Grind to 13
step
    #label Thelsamar1
    .goto Loch Modan,25.7,18.8,15
    >>Drop down, then make pet follow
step
    .goto Loch Modan,30.0,10.5
    >>Kill bears here for remaining bear meat
    .complete 418,2 --Collect Bear Meat (x3)
step
    .goto Loch Modan,33.8,40.7
    >>Kill spiders here for remaining ichor
    .complete 418,3 --Collect Spider Ichor (x3)
step
    .goto Loch Modan,37.3,36.9
    >>Kill boars here for remaining intestines
    .complete 418,1 --Collect Boar Intestines (x3)
step
    .goto Loch Modan,36.9,46.1
    .turnin 416 >> Turn in Rat Catching
step
    >>Go inside the building
    .goto Loch Modan,37.2,46.9,15
step
    .goto Loch Modan,37.0,47.8
    .turnin 6392 >> Turn in Return to Brock
step
    .goto Loch Modan,34.8,49.3
    .turnin 418 >> Turn in Thelsamar Blood Sausages
step
    .goto Loch Modan,29.9,68.2,30
step
    .goto Loch Modan,32.7,76.5
    >>Kill Stonesplinter Troggs
    .complete 224,1 --Kill Stonesplinter Trogg (x10)
    .complete 224,2 --Kill Stonesplinter Scout (x10)
    .complete 267,1 --Collect Trogg Stone Tooth (x8)
step
    #sticky
    #completewith FlyIF
    .money >0.5642
    .goto Loch Modan,32.7,76.5,0
    >>Grind until you have 56s 42c of vendorables+money
.goto Loch Modan,22.2,73.3
    .turnin 224 >> Turn in In Defense of the King's Lands
step
    #sticky
    .istrained 755,705
    .money >0.6782
    .goto Loch Modan,32.7,76.5,0
    >>Grind until you have 67s 82c of vendorables+money, then turnin
    .goto Loch Modan,22.2,73.3
    .turnin 224 >> Turn in In Defense of the King's Lands
step
.goto Loch Modan,32.7,76.5,0
.xp 13+9200 >>Grind until 9200+/11000xp
step
.goto Loch Modan,23.2,73.7
    .turnin 267 >> Turn in The Trogg Threat
step
    .xp 14 >>Grind to 14 at the troggs 
step
    #sticky
    #completewith FlyIF
>> Die and respawn at the Spirit Healer, or run to here
    .goto Loch Modan,32.0,47.2,150
step
    #label FlyIF
.goto Loch Modan,33.9,51.0
    .fly Ironforge>> Fly to Ironforge
step
    .goto Ironforge,55.5,47.8,30
step
    #sticky
    #label Wand1
    #completewith Wand2
.goto Ironforge,25.8,75.2,10 >> Optionally, buy a Greater Magic Wand from the AH if it costs <31s 73c
.collect 11288,1 --Collect Greater Magic Wand
step
    #label Wand2
    #completewith Wand1
.goto Ironforge,22.6,16.5
    .vendor >>Go downstairs, buy Smoldering Wand
    --Tell Zarant to add note to "equip wand" at 15 on his route, warlock only, maybe depends on other classes like priest too
step
    >>Enter the building
.goto Ironforge,51.1,8.7,18
step
    .istrained 755,705
.goto Ironforge,50.4,6.3
    .train 6222 >>Train Corruption r2
    .train 755 >>Train Health Funnel
    .train 705 >>Train Shadow Bolt r3
step
    .istrained 6222
.goto Ironforge,50.4,6.3
    .train 6222 >>Train Corruption r2
step
    >>Enter the building
.goto Ironforge,53.2,7.8,18
step
    .goto Ironforge,53.0,6.4
    .vendor >>Buy Consume Shadows r1, then Sacrifice r1
step
    .goto Ironforge,55.5,47.8
    .fly Menethil>> Fly to Menethil
step
    .money <0.076
.goto Wetlands,9.5,55.7,25
step
    .money <0.076
    .goto Wetlands,10.4,56.0,15
.goto Wetlands,10.1,56.9,15
.goto Wetlands,10.6,57.2,15
.goto Wetlands,10.7,56.8
    .vendor >> If you have 7.6s, Check for Bronze Tube from Neal Allen and buy it if it's there
step
    .goto Wetlands,9.5,55.7,25
step
    .money <0.0385
.goto Wetlands,8.1,56.3
    .vendor >> Check Dewin for Heal Potions, buy down to 1s
step
    #completewith Darkshore1
.goto Wetlands,4.6,57.3
    >>Get onto the boat when it comes
step
    #label Darkshore1
    .zone Darkshore >> Go to Darkshore
step
>>Jump into the water here from boat
.goto Darkshore,34.6,45.7,18
step
    >>Go up two floors
    .goto Darkshore,36.6,43.9,18
step
    .goto Darkshore,37.0,44.1
    .accept 983 >> Accept Buzzbox 827
step
    >>Jump down
    .goto Darkshore,38.8,43.4
    .accept 2118 >> Accept Plagued Lands
step
    .goto Darkshore,39.3,43.4
    .accept 984 >> Accept How Big a Threat?
step
    .goto Darkshore,36.6,45.6
    .accept 3524 >> Accept Washed Ashore
step
    .goto Darkshore,36.3,45.6
    .fp >> Get the Auberdine Flight Path
step
    >>Jump onto the corner and drop down
    .goto Darkshore,36.1,45.9,5
step
    #sticky
#completewith Darkshore2
>>Kill Crawlers whilst doing other quests
.goto Darkshore,36.2,50.3
    .complete 983,1 --Collect Crawler Leg (x6)
step
    .goto Darkshore,36.4,50.9
    .complete 3524,1 --Collect Sea Creature Bones (x1)
step
    .goto Darkshore,38.7,58.1
    >>Keep going south until you find a Rabid Bear, use Tharnariun's Hope when you aggro one
    .complete 2118,1 --Rabid Thistle Bear Captured
step
    #label Darkshore2
.goto Darkshore,39.0,53.2
    .complete 984,1 --Find a corrupt furbolg camp
step
    .goto Darkshore,36.6,46.3
    .turnin 983 >> Turn in Buzzbox 827
step
    .goto Darkshore,36.6,45.6
    .abandon 1001 >> Abandon Buzzbox 411
step
    .goto Darkshore,36.6,45.6
    .turnin 3524 >> Turn in Washed Ashore
step
    .goto Darkshore,30.8,41.0
.abandon 4681 >> Abandon Washed Ashore
step
    #completewith Azuremyst
>>Boat to Azuremyst
.goto Darkshore,30.8,41.0
step
    #label Azuremyst
    .zone Azuremyst Isle >> Go to Azuremyst Isle
]],"Gnome Warlock")
RXPGuides.RegisterGuide("RestedXP Alliance 1-20",[[
<< Alliance Rogue
#name 1-12 Dun Morogh Rogue
#next 11-14 Darkshore
step
    >>Drop your Hearthstone
.goto Dun Morogh,29.9,71.2
    .accept 179 >> Accept Dwarven Outfitters
step
    >>Kill Wolves for Meat
.goto Dun Morogh,28.7,74.8
    .complete 179,1 --Collect Tough Wolf Meat (x8)
step
.goto Dun Morogh,30.0,71.5
    .vendor >>vendor trash. Buy 5 food
    .collect 4540,5 --Collect Tough Hunk of Bread (x5)
step << Gnome
    .goto Dun Morogh,29.9,71.2
    .turnin 179 >> Turn in Dwarven Outfitters
    .accept 233 >> Accept Coldridge Valley Mail Delivery
    .accept 3113 >> Accept Encrypted Memorandum
step << Dwarf
    .goto Dun Morogh,29.9,71.2
    .turnin 179 >> Turn in Dwarven Outfitters
    .accept 233 >> Accept Coldridge Valley Mail Delivery
    .accept 3109 >> Accept Encrypted Rune
step
    .goto Dun Morogh,29.7,71.2
    .accept 170 >> Accept A New Threat
step
    #sticky
    #label Rockjaw
    >>Kill Normal Rockjaw Troggs that you see
    .complete 170,1 --Kill Rockjaw Trogg (x6)
step
    .goto Dun Morogh,26.8,72.6
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
step
    .goto Dun Morogh,22.6,71.4
    .turnin 233 >> Turn in Coldridge Valley Mail Delivery
    .accept 183 >> Accept The Boar Hunter
    .accept 234 >> Accept Coldridge Valley Mail Delivery
step
    .goto Dun Morogh,21.8,70.1
    >>Kill boars in the vicinity
.complete 183,1 --Kill Small Crag Boar (x12)
step
    .xp 3 >> Grind to 3
step
    .goto Dun Morogh,22.6,71.4
    .turnin 183 >> Turn in The Boar Hunter
step
    #label Rockjaw
>>Kill Rockjaw Troggs en route
    .goto Dun Morogh,25.1,75.7
    .turnin 234 >> Turn in Coldridge Valley Mail Delivery
    .accept 182 >> Accept The Troll Cave
step
    #sticky
>>Kill any Rockjaw Troggs you see nearby whilst doing Trolls
    .complete 170,1 --Kill Rockjaw Trogg (x6)
step
    >>Kill Frostmane Troll Whelps
.complete 182,1 --Kill Frostmane Troll Whelp (x14)
.goto Dun Morogh,22.6,79.2,60
    .goto Dun Morogh,21.0,76.0,60
    .goto Dun Morogh,25.1,75.7
step
    .xp 4 >> Grind to 4
step
    .goto Dun Morogh,25.1,75.7
    .turnin 182 >> Turn in The Troll Cave
    .accept 218 >> Accept The Stolen Journal
step
    .goto Dun Morogh,25.0,76.0
    .accept 3364 >> Accept Scalding Mornbrew Delivery
    >>When you accept, you have a 5m timer to get the Journal. If you fail quest, pick it up again after dying
step
    .goto Dun Morogh,26.8,79.6,20
step
    .goto Dun Morogh,28.4,79.7,20
step
    .goto Dun Morogh,30.6,80.3
    >>Kill Grik'nir and loot his journal
    .complete 218,1 --Collect Grelin Whitebeard's Journal (x1)
step
    >> Die and respawn at the Spirit Healer
    .goto Dun Morogh,29.5,69.8,100
step
    #sticky
    #completewith Scalding1
    >>If you were too slow and failed the timed quest, go and pick it up again
    .goto Dun Morogh,25.0,76.0,0
    .accept 3364 >> Accept Scalding Mornbrew Delivery
    .goto Dun Morogh,28.8,66.4
    .turnin 3364 >> Turn in Scalding Mornbrew Delivery
step
    #label Scalding1
.goto Dun Morogh,28.8,66.4
    .turnin 3364 >> Turn in Scalding Mornbrew Delivery
    .accept 3365 >> Accept Bring Back the Mug
    .vendor >> vendor trash
step << Gnome
.goto Dun Morogh,28.4,67.5
    .turnin 3113 >> Turn in Encrypted Memorandum
step << Dwarf
.goto Dun Morogh,28.4,67.5
    .turnin 3109 >> Turn in Encrypted Rune
step
    .goto Dun Morogh,29.7,71.2
    .turnin 170 >> Turn in A New Threat
step
    >>Grind a bit back to here
    .goto Dun Morogh,25.1,75.8
    .turnin 218 >> Turn in The Stolen Journal
    .accept 282 >> Accept Senir's Observations
step
    .goto Dun Morogh,25.0,76.0
    .turnin 3365 >> Turn in Bring Back the Mug
step
    .xp 5 >> Grind to 5
step
>>Grind some mobs up to here
.goto Dun Morogh,33.2,72.1,30
step
    .goto Dun Morogh,33.5,71.8
    .turnin 282 >> Turn in Senir's Observations
    .accept 420 >> Accept Senir's Observations
step
    .goto Dun Morogh,33.9,72.2
    .accept 2160 >> Accept Supplies to Tannok
step
>>Go through the tunnel
.goto Dun Morogh,34.1,71.6,20
step
    #sticky
#completewith Stocking
>> Kill boars to get Boar Meat for later
.collect 769,4 --Collect Chunk of Boar Meat (x4)
step
    #sticky
#completewith BoarRibs
>> Kill boars to get Boar Ribs for later
.collect 2886,6 --Collect Crag Boar Rib (x6)
step
.goto Dun Morogh,36.4,62.9,45
step
    .goto Dun Morogh,37.7,60.5,45
step
grind boars north-east to Kharanos
    .goto Dun Morogh,43.9,55.7
    .xp 5+2415 >> Grind to 2415/+2800xp
step
     >> Die and respawn at the Spirit Healer, or run to Kharanos
    .goto Dun Morogh,47.0,55.1,50
step
    #label Stocking
.goto Dun Morogh,46.7,53.8,100
step
    #label BoarRibs
.goto Dun Morogh,46.7,53.8,100
step
.goto Dun Morogh,46.7,53.8
    .turnin 420 >> Turn in Senir's Observations
step
    .xp 6 >> Grind to 6
step
    .goto Dun Morogh,46.8,52.4
    .accept 384 >> Accept Beer Basted Boar Ribs
step
    .goto Dun Morogh,47.2,52.2
    .turnin 2160 >> Turn in Supplies to Tannok
step
.goto Dun Morogh,47.2,52.4
    .money <0.0028
    .vendor >> Go to Kreg Bilmn, buy and equip a level 3 throw weapon, costs 28c
step
.goto Dun Morogh,47.4,52.5
    .home >> Set your Hearthstone to Thunderbrew Distillery
step
.goto Dun Morogh,47.6,52.6
    .train 1757 >>Train Sinister Strike r2
    .train 1776 >>Train Gouge
step
.goto Dun Morogh,45.8,51.8,20
    .money <0.0010
    >>Go into the building
step
    .goto Dun Morogh,45.3,52.2
.vendor >> vendor trash. Sell your weapon if it gives you enough money for Stiletto (3s 82c). You'll come back later if you don't have enough yet
step
.money <0.0382
    .goto Dun Morogh,45.3,52.2
    >>Buy Stiletto and equip it
    .collect 2494,1 --Collect Stiletto
step
.goto Dun Morogh,45.3,51.9
    .money <0.0010
    .train 2018 >>Train Blacksmithing
step
    .goto Dun Morogh,46.0,51.7
    .accept 400 >> Accept Tools for Steelgrill
step
    #sticky
#completewith Stocking2
>> Kill boars to get Boar Meat for later
.collect 769,4 --Collect Chunk of Boar Meat (x4)
step
    #label Stocking2
.goto Dun Morogh,49.4,48.4
    >>DON'T kill bears en route
    .accept 317 >> Accept Stocking Jetsteam
step
    .goto Dun Morogh,49.6,48.6
    .accept 313 >> Accept The Grizzled Den
step
    .goto Dun Morogh,50.4,49.1
    .turnin 400 >> Turn in Tools for Steelgrill
step
#label Stocking
.goto Dun Morogh,50.1,49.4
    .accept 5541 >> Accept Ammo for Rumbleshot
step 
    .money <0.0087
    .goto Dun Morogh,50.1,49.4
    .collect 2901,1 >> Buy a Mining Pick
step
    .money <0.0010
    .goto Dun Morogh,50.2,50.4
    >> Go inside the house.
.train 2580 >>Train Mining, cast Find Minerals
step
    >>Run up the ramp behind Loslor
    .goto Dun Morogh,50.3,49.9,15
    .goto Dun Morogh,50.4,50.3,15
step
    #sticky
#label BoarRibs2
>> Kill boars to get Boar Ribs for later
.collect 2886,6 --Collect Crag Boar Rib (x6)
step
    #sticky
    #completewith BoarMeat
>>Get the Boar Meat for Stocking Jetsteam as you quest
.complete 317,1 --Collect Chunk of Boar Meat (x4)
step
    #sticky
    #completewith BearFur
    >>Get the Bear Fur for Stocking Jetsteam as you quest
.complete 317,2 --Collect Thick Bear Fur (x2)
    >>Don't worry about getting 6 ribs now as you can get them later
step
    .goto Dun Morogh,47.4,52.5
    .money <0.0124
    .vendor >>Buy as much level 5 food as you can afford
step
    
    >> Go to the cave entrance, then go back and forth the inside of the cave, clearing Wendigos until you get all the 8 Manes. Keep an eye out for Veins to get rough stones for sharpening stones for your weapon
    .complete 313,1 --Collect Wendigo Mane (x8)
.goto Dun Morogh,42.5,54.5,30
    .goto Dun Morogh,41.7,51.4
step
    .goto Dun Morogh,44.1,56.9
    .complete 5541,1 --Collect Rumbleshot's Ammo (x1)
step
    >> Kill bears/boars en route
    .goto Dun Morogh,40.6,62.6,30
step
    #label BearFur
.goto Dun Morogh,40.7,65.1
    .turnin 5541 >> Turn in Ammo for Rumbleshot
    .vendor >> vendor trash, repair
step
    #label BoarMeat
    .goto Dun Morogh,40.7,65.1,100
--might be a better way of doing it?
step
    >>Get the rest of the items for Stocking Jetsteam now
    .complete 317,2 --Collect Thick Bear Fur (x2)
    .complete 317,1 --Collect Chunk of Boar Meat (x4)
.goto Dun Morogh,44.8,65.3,0
    .goto Dun Morogh,49.8,61.3,0
    .goto Dun Morogh,48.4,55.9,0
    .goto Dun Morogh,50.2,53.5,0
    .goto Dun Morogh,49.4,48.4,0
step
    
    .goto Dun Morogh,49.4,48.4
    .turnin 317 >> Turn in Stocking Jetsteam
    .accept 318 >> Accept Evershine
step
    .goto Dun Morogh,49.6,48.6
    .turnin 313 >> Turn in The Grizzled Den
step
    .xp 7 >> Grind to 7
step 
    .money <0.0087
    .goto Dun Morogh,50.1,49.4
    .collect 2901,1 >> Buy a Mining Pick
step
    .money <0.0010
    .istrained 2580
    >> Go inside the house. Train Mining, turn on "Find Minerals".
.goto Dun Morogh,50.2,50.4
step
    #requires BoarRibs2
    #completewith BoarRibsDone
    #label BoarRibsDone2
.money <0.0050
    .goto Dun Morogh,47.3,52.5,8
    .vendor >>Talk to Innkeeper Belm for Rhapsody Malt
    .complete 384,2 --Collect Rhapsody Malt (x1)
    .goto Dun Morogh,46.8,52.4,8
    .turnin 384 >> Turn in Beer Basted Boar Ribs
 >>Sell the recipe. Go back for more food/drink if you wish
step
    .goto Dun Morogh,45.3,52.2
.vendor >> vendor trash. Sell your weapon if it gives you enough money for Stiletto (3s 82c). You'll come back later if you don't have enough yet
step
.money <0.0382
    .goto Dun Morogh,45.3,52.2
    >>Buy Stiletto and equip it
    .collect 2494,1 --Collect Stiletto
step
    .istrained 2018
.goto Dun Morogh,45.3,51.9
    .money <0.0010
    .train 2018 >>Train Blacksmithing
step
    .goto Dun Morogh,47.4,52.5
    .vendor >>Buy as much level 5 food as you can afford
step
    .goto Dun Morogh,43.0,47.4,50
step
    .goto Dun Morogh,39.6,48.9,50
step
    .goto Dun Morogh,34.6,51.7
    .accept 312 >> Accept Tundra MacGrann's Stolen Stash
step
>>Drop down
    .goto Dun Morogh,34.0,51.0,20
step
.goto Dun Morogh,30.5,46.0
    .vendor >> vendor trash
step
.goto Dun Morogh,30.2,45.8
    .turnin 318 >> Turn in Evershine
    .accept 319 >> Accept A Favor for Evershine
    .accept 315 >> Accept The Perfect Stout
step
    .goto Dun Morogh,30.2,45.5
    .accept 310 >> Accept Bitter Rivals
step
    >> Start running around killing all the mobs required for A Favor for Evershine
.complete 319,1 --Kill Ice Claw Bear (x6)
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .complete 319,3 --Kill Snow Leopard (x8)
.goto Dun Morogh,31.5,38.9,0
    .goto Dun Morogh,28.3,39.9,0
    .goto Dun Morogh,28.7,43.7,0
    .goto Dun Morogh,25.8,47.2,0
    .goto Dun Morogh,25.8,47.2,0
    .goto Dun Morogh,30.0,51.8,0
step
     >> Finish off getting the Boar Ribs
.complete 384,1 --Collect Crag Boar Rib (x6)
step
.goto Dun Morogh,30.2,45.7
    .turnin 319 >> Turn in A Favor for Evershine
    .accept 320 >> Accept Return to Bellowfiz
step
.xp 7+3735 >>Grind until 3735+/4500xp, then go to here
    .goto Dun Morogh,30.3,37.5,50
    --Probably less than 3735 due to discovery exp, change later
step
    .isQuestTurnedIn 384
    Xp 7+4360 >>Grind until 4360+/4500xp, then go to here
    .goto Dun Morogh,30.3,37.5,50
step
    >>Run up the mountain north
    .goto Dun Morogh,30.9,33.1,15
step
>>Follow it up to here
    .goto Dun Morogh,32.4,29.1,15
step
.goto Dun Morogh,33.0,27.2,15
step
.deathskip >>Keep running straight north, then drop down and die, then respawn
    .goto Dun Morogh,33.0,25.2
    .goto Wetlands,11.6,43.4,45
step
.goto Wetlands,12.7,46.7,30
step
.goto Wetlands,10.6,55.0,30
step
.goto Wetlands,9.5,55.7,30
step
.goto Wetlands,9.5,59.7
    .fp >> Get the Menethil Harbor flight path
step
.hs >> Hearth to Kharanos
.goto Dun Morogh,47.4,52.5,100
step
.goto Dun Morogh,47.4,52.5
.vendor >> Buy a Rhapsody Malt and Thunder Ale from Belm
    .complete 384,2 --Collect Rhapsody Malt (x1)
    .collect 2686,1 --Collect Thunder Ale (x1)
step
.goto Dun Morogh,46.8,52.4
    .turnin 384 >> Turn in Beer Basted Boar Ribs
     >>Sell the recipe. Go back for more food/drink if you wish
step
>>Go in the room behind the innkeeper
    .goto Dun Morogh,47.6,52.4,9
step
    >>Go downstairs
    >>Talk to Jarven, give him the Thunder Ale
    >>Wait for the barrel mouseover to become "unguarded", then handin
    .turnin 310 >> Turn in Bitter Rivals
    .accept 311 >> Accept Return to Marleth
step
    .xp 8 >> Grind to 8
step
    .goto Dun Morogh,47.6,52.6
    .train 6760 >>Train Eviscerate r2
    .train 5277 >>Train Evasion
step
    .istrained 3273
.goto Dun Morogh,47.2,52.6
    .money <0.0095
    .train 3273 >>Train First Aid
step
.money <0.0392
    .goto Dun Morogh,45.3,52.2
    .vendor >>Buy Stiletto and equip it
    .collect 2494,1 --Collect Stiletto
step
    .istrained 2018
.goto Dun Morogh,45.3,51.9
    .money <0.0010
    .train 2018 >>Train Blacksmithing
step
    .goto Dun Morogh,47.4,52.5
    .vendor >>Buy as much level 5 food as you can from the innkeeper
step
    .goto Dun Morogh,46.7,53.8
    .accept 287 >> Accept Frostmane Hold
step
    .goto Dun Morogh,49.6,48.6
    .turnin 313 >> Turn in The Grizzled Den
step
    .goto Dun Morogh,49.4,48.4
    >>Choose the camping knife, save it for later
    .turnin 320 >> Turn in Return to Bellowfiz
step
    >>Run over to Shimmerweed. Be careful of the wolves (big 30 yard aggro range) en route
.goto Dun Morogh,42.5,45.2,90
step
    >>Be careful of the headhunter patrol that runs on top of each seer. Loot the baskets you see
.goto Dun Morogh,42.5,45.2,25
step
    #sticky
    #completewith next
    >> If you get unlucky after killing all mobs except the ones in middle camp, go to the other area for shimmerweed
.goto Dun Morogh,39.7,40.1,30
.goto Dun Morogh,42.2,34.7
step
    .goto Dun Morogh,41.2,44.3,0
    >>Clear mobs in this area. Be careful if you need to clear the middle camp. You can pull the mobs in the huts and line of sight (LoS) them behind the huts if you need 2 more mobs
    .complete 315,1 --Collect Shimmerweed (x6)
step
>>Drop down
.goto Dun Morogh,40.5,46.7,20
step
    .goto Dun Morogh,38.5,54.0
    >>Wait until the level 11 yeti leaves the cave, then sneak in and loot the chest. Alternatively, do this
        .link https://www.youtube.com/watch?v=o55Y3LjgKoE >>CLICK HERE
    .complete 312,1 --MacGrann's Dried Meats (1)
step
    .goto Dun Morogh,34.6,51.7
    .turnin 312 >> Turn in Tundra MacGrann's Stolen Stash
step
>>Drop down
    .goto Dun Morogh,34.0,51.0,20
step
    .goto Dun Morogh,30.4,45.8
.vendor >> Vendor
step
    .goto Dun Morogh,30.2,45.7
    .turnin 315 >> Turn in The Perfect Stout
    .accept 413 >> Accept Shimmer Stout
step
    .goto Dun Morogh,30.2,45.5
    .turnin 311 >> Turn in Return to Marleth
step
    >>Go west. Kill leper gnomes
    .complete 412,2 --Collect Gyromechanic Gear (x8)
    .complete 412,1 --Collect Restabilization Cog (x8)
.goto Dun Morogh,26.4,43.3,0
    .goto Dun Morogh,25.0,39.7,0
    .goto Dun Morogh,24.7,44.7,0
step
    .xp 9 >> Grind to 9
step
    >>Enter the cave
.goto Dun Morogh,24.5,50.8,30
step
    .goto Dun Morogh,23.3,51.6
    >>Kill Headhunters/mobs inside the cave
    .complete 287,1 --Kill Frostmane Headhunter (x5)
step
    >>Jump down, you die after
.goto Dun Morogh,23.0,52.2,12
step
    .goto Dun Morogh,22.7,52.2
    .complete 287,2 --Fully explore Frostmane Hold
step
.deathskip >> Die and respawn at the Spirit Healer
step
    .goto Dun Morogh,46.7,53.8
    .turnin 287 >> Turn in Frostmane Hold
    .accept 291 >> Accept The Reports
step
    .goto Dun Morogh,45.8,49.4
    .turnin 412 >> Turn in Operation Recombobulation
step
    >>Grind a little en route
    .goto Dun Morogh,63.1,49.8
    .accept 314 >> Accept Protecting the Herd
step
>>Run up this part of the mountain
.goto Dun Morogh,62.3,50.3,12
step
.goto Dun Morogh,62.3,49.4,6
step
    >>Kill Vagash
.goto Dun Morogh,62.6,46.1
    .complete 314,1 --Collect Fang of Vagash (x)
step
    .goto Dun Morogh,63.1,49.8
    .turnin 314 >> Turn in Protecting the Herd
step << Mage/Priest
    >>Grind a little en route
.goto Dun Morogh,68.6,54.7
    .vendor >>Vendor, buy x10 level 5 water/x5 level 5 food
step << Warrior
    >>Grind a little en route
.goto Dun Morogh,68.6,54.7
    .vendor >>Vendor, buy x15 level 5 food
step << Paladin
    >>Grind a little en route
.goto Dun Morogh,68.7,56.0
    .accept 433 >> Accept The Public Servant
step << !Paladin
    .goto Dun Morogh,68.7,56.0
    .accept 433 >> Accept The Public Servant
step
    .goto Dun Morogh,68.9,55.9
    .vendor >> vendor trash, repair
step
    .goto Dun Morogh,69.1,56.3
    .accept 432 >> Accept Those Blasted Troggs!
step
    >> Go in the cave and kill Rockjaws
.goto Dun Morogh,71.0,52.1
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .complete 433,1 --Kill Rockjaw Bonesnapper (x10)
step
>>Run up the mountain here
    .goto Dun Morogh,70.2,56.0,20
step
    .goto Dun Morogh,69.1,56.3
    .turnin 432 >> Turn in Those Blasted Troggs!
step
    .goto Dun Morogh,68.9,55.9
    .vendor >> vendor trash, repair
step
    .goto Dun Morogh,68.7,56.0
    .turnin 433 >> Turn in The Public Servant
step
    .goto Dun Morogh,68.4,54.5
    .vendor >> buy x5 level 5 food
step
.xp 10 >> Grind to 10 on the nearby Troggs
step
    >>Die and respawn at Spirit Healer
    .goto Dun Morogh,47.1,55.1,100
step
    .goto Dun Morogh,47.6,52.5
    .accept 2218 >> Accept Road to Salvation
    .train 2983 >>Train Sprint
    .train 674 >>Train Dual Wield
    .train 6770 >>Train Sap
    .train 1784 >>Train Stealth
    >>Equip Camping Knife
step
    .goto Dun Morogh,83.8,39.2
    .accept 419 >> Accept The Lost Pilot
step
    >>Kill Mangeclaw
.goto Dun Morogh,80.0,36.4
    .complete 417,1 --Collect Mangy Claw (x1)
step
    >>Grind a bit en route
    .goto Dun Morogh,77.8,48.2,30
step
    >>Grind a bit en route, go inside the tunnel
    .goto Dun Morogh,81.2,42.7,15
step
    .goto Dun Morogh,83.8,39.2
    .accept 419 >> Accept The Lost Pilot
step
    >>Grind en route
.goto Dun Morogh,79.7,36.2
    .turnin 419 >> Turn in The Lost Pilot
step
    >>Kill Mangeclaw
.goto Dun Morogh,80.0,36.4
    .complete 417,1 --Collect Mangy Claw (x1)
step
    .goto Dun Morogh,83.9,39.2
    .turnin 417 >> Turn in A Pilot's Revenge
step
    >>Go back through the tunnel
    .goto Dun Morogh,81.2,42.7,15
step
    >>Grind a bit en route
    .goto Dun Morogh,79.6,50.7,30
step
    >>Go through the tunnel
.goto Dun Morogh,82.3,53.5,15
step
    .goto Dun Morogh,86.3,48.8
    .turnin 413 >> Turn in Shimmer Stout
    .accept 414 >> Accept Stout to Kadrell
step
    >>Go through the tunnel
.goto Dun Morogh,86.2,51.3,15
step
    .goto Loch Modan,22.9,70.9,30
step
    >>Run to Thelsamar
.goto Loch Modan,35.3,46.9,150
step
    .goto Loch Modan,35.3,47.7,15
step
    .goto Loch Modan,35.5,48.4
    .home >> Set your Hearthstone to Thelsamar
step
    .goto Loch Modan,36.9,46.1
    >>Find Kadrell, he patrols along the main road
    .turnin 414 >> Turn in Stout to Kadrell
    .accept 1339 >> Accept Mountaineer Stormpike's Task
step
    >>Go inside the building
    .goto Loch Modan,37.2,46.9,15
step
    >>Go downstairs, talk to Brock
.goto Loch Modan,37.0,47.8
    .accept 6387 >> Accept Honor Students
step
    >>Grind some mobs en route
    .goto Loch Modan,23.3,17.9,15
step
    .goto Loch Modan,24.1,18.2
    .vendor >>Vendor and repair
step
    .goto Loch Modan,24.7,18.3
    .turnin 1339 >> Turn in Mountaineer Stormpike's Task
    .accept 1338 >> Accept Stormpike's Order
step
>>Die and respawn at the Spirit Healer, or run to here
    .goto Loch Modan,32.0,47.2,150
step
    .goto Loch Modan,33.9,51.0
    .fp >> Get the Thelsamar flight path
    .turnin 6387 >> Turn in Honor Students
    .accept 6391 >> Accept Ride to Ironforge
    .fly Ironforge>> Fly to Ironforge
step
    .istrained 3273
    .money <0.0095
.goto Ironforge,54.8,58.6
    .train 3273 >> Train First Aid
step
    .goto Ironforge,51.5,26.3
    .turnin 6391 >> Turn in Ride to Ironforge
    .accept 6388 >> Accept Gryth Thurden
step
    .goto Ironforge,53.9,35.4,15
step
    >>Go inside the building
.goto Ironforge,45.1,48.9,15
step
    .goto Ironforge,39.5,57.5
    .turnin 291 >> Turn in The Reports
step
    .goto Ironforge,55.5,47.8
    .turnin 6388 >> Turn in Gryth Thurden
    .accept 6392 >> Accept Return to Brock
step
    >>Jump up, then relog on the anvil
.goto Ironforge,49.7,43.7,9
step
    >>Enter the Deeprun Tram
.goto Ironforge,77.0,51.0,20
step
    .accept 6661 >> Accept Deeprun Rat Roundup
step
    >>Use your flute on the rats scattered around
    .complete 6661,1 --Rats Captured (x5)
step
    .turnin 6661 >> Turn in Deeprun Rat Roundup
step
    .xp 11 >> Should be 11 by now
step
    >>Take the Deeprun Tram and enter Stormwind
    .goto Stormwind City,62.4,10.1,20
step
    .goto Stormwind City,58.1,16.5
    .turnin 1338 >> Turn in Stormpike's Order
step
    .goto Stormwind City,57.1,57.7
    .train 201 >>Train 1h Swords
step
    .goto Stormwind City,57.6,57.1
    .vendor >> Buy a Cutlass from Gunther and equip it, Craftsman's Dagger in OH
step
    .hs >> Hearth to Thelsamar
    .goto Loch Modan,35.5,48.4,100
step
    .goto Loch Modan,37.0,47.8
.turnin 6392 >> Turn in Return to Brock
step
    .goto Loch Modan,33.9,51.0
    .fly Menethil>> Fly to Menethil
step
    .money <0.076
    .goto Wetlands,10.4,56.0,15
.goto Wetlands,10.1,56.9,15
.goto Wetlands,10.6,57.2,15
.goto Wetlands,10.7,56.8
    .vendor >> If you have 7.6s, Check for Bronze Tube from Neal Allen and buy it if it's there
step
    .goto Wetlands,9.5,55.7,25
step
    .money <0.0385
.goto Wetlands,8.1,56.3
    .vendor >> Check Dewin for Heal Potions, buy down to 1s
step
    #completewith Darkshore1
>>Get onto the boat when it comes
.goto Wetlands,4.6,57.3
step
    #label Darkshore1
    .zone Darkshore >> Go to Darkshore
step
>>Jump into the water here from boat
.goto Darkshore,34.6,45.7,40
]],"Gnome Rogue/Dwarf Rogue")

RXPGuides.RegisterGuide("RestedXP Alliance 1-20",[[
<< Alliance Hunter
#name 1-11 Dun Morogh
#next 11-14 Darkshore
step
    .goto Dun Morogh,29.9,71.2
    >>Speak to Sten Stoutarm
    .accept 179 >>Accept Dwarven Outfitters
step
    .goto Dun Morogh,29.0,74.4
    .complete 179,1 --Tough Wolf Meat (8)
step
    .goto Dun Morogh,29.9,71.3
    .turnin 179 >>Turn in Dwarven Outfitters
    .accept 233 >>Accept Coldridge Valley Mail Delivery
    .accept 3108 >>Accept Etched Rune
step
    .goto Dun Morogh,29.7,71.3
    >>Speak to Balir Frosthammer
    .accept 170 >>Accept A New Threat
step
    #label troggs
    #sticky
    .goto Dun Morogh,29.0,76.4
    .complete 170,1 --Rockjaw Trogg (6)
step
    .goto Dun Morogh,25.8,72.0
    .complete 170,2 --Burly Rockjaw Trogg (6)
step
    #requires troggs
    .goto Dun Morogh,22.6,71.4
    >>Speak to Talin Keeneye
    .turnin 233 >>Turn in Coldridge Valley Mail Delivery
    .accept 234 >>Accept Coldridge Valley Mail Delivery
    .accept 183 >>Accept The Boar Hunter
step
    .goto Dun Morogh,21.5,71.0
    .complete 183,1 --Small Crag Boar (12)
step
    .goto Dun Morogh,22.6,71.4
    .turnin 183 >>Turn in The Boar Hunter
step
    .goto Dun Morogh,25.1,75.7
    >>Speak to Grelin Whitebeard
    .turnin 234 >>Turn in Coldridge Valley Mail Delivery
    .accept 182 >>Accept The Troll Cave
step
    #sticky
    #label ftrolls
    .goto Dun Morogh,23.1,79.9,0
    .goto Dun Morogh,26.6,79.3,0
    .complete 182,1 --Frostmane Troll Whelp (14)
step
    #level 4
    .goto Dun Morogh,25.0,75.9
    .accept 3364 >>Accept Scalding Mornbrew Delivery
step
    #completewith next
    .hs >> Hearth back to the starting area
step
    .goto Dun Morogh,29.7,71.3
    >>Speak to Balir Frosthammer
    .turnin 170 >>Turn in A New Threat
step
    .goto Dun Morogh,29.1,67.5
    >>Speak to Thorgas Grimson
    .turnin 3108 >>Turn in Etched Rune
	.train 1978 >> Train Serpent Sting
step
    .goto Dun Morogh,28.8,66.5
    >>Speak to Durnan Furcutter
    .turnin 3364 >>Turn in Scalding Mornbrew Delivery
    .accept 3365 >>Accept Bring Back the Mug
step
    .goto Dun Morogh,25.0,75.9
    .turnin 3365 >>Turn in Bring Back the Mug
step
    #requires ftrolls
    .goto Dun Morogh,25.0,75.9
    .turnin 182 >>Turn in The Troll Cave
    .accept 218 >>Accept The Stolen Journal
step
    .goto Dun Morogh,30.5,80.1
    .complete 218,1 --Grelin Whitebeard's Journal (1)
step
    .goto Dun Morogh,25.1,75.8
    .accept 282 >>Accept Senir's Observations

step
    .goto Dun Morogh,33.5,71.8
    >>Speak to Mountaineer Thalos
    .turnin 282 >>Turn in Senir's Observations
    .accept 420 >>Accept Senir's Observations
step
    .goto Dun Morogh,33.8,72.2
    >>Speak to Hands Springsprocket
    .accept 2160 >>Accept Supplies to Tannok
step
    #sticky
    #label boars
    >>Kill boars in Dun Morogh
    .complete 317,1
    .complete 384,1
step
    .goto Dun Morogh,46.8,52.4
    >>Speak to Ragnar Thunderbrew
    .accept 384 >>Accept Beer Basted Boar Ribs
step
    .goto Dun Morogh,47.2,52.2
    >>Speak to Tannok Frosthammer
    .turnin 2160 >>Turn in Supplies to Tannok
step
    .goto Dun Morogh,46.0,51.7
    >>Speak to Tharek Blackstone
    .accept 400 >>Accept Tools for Steelgrill
step
    .goto Dun Morogh,49.5,48.3
    >>Speak to Pilot Bellowfiz
    .accept 317 >>Accept Stocking Jetsteam
step
    .goto Dun Morogh,49.6,48.5
    >>Speak to Pilot Stonegear
    .accept 313 >>Accept The Grizzled Den
step
    .goto Dun Morogh,50.1,49.4
    >>Speak to Loslor Rudge
    .accept 5541 >>Accept Ammo for Rumbleshot
step
    .goto Dun Morogh,50.4,49.1
    >>Speak to Beldin Steelgrill
    .turnin 400 >>Turn in Tools for Steelgrill
step
    #sticky
    #label jetsteam1
    .goto Dun Morogh,50.3,51.9,0
    .goto Dun Morogh,44.1,51.7,0
    .goto Dun Morogh,42.5,58.5,0
    >>Prioritize killing bears/boars
    .complete 317,1 --Chunk of Boar Meat (4)
    .complete 317,2 --Thick Bear Fur (2)
step
    #requires jetsteam1
    #sticky
    #label jetsteam2
    .goto Dun Morogh,49.4,48.4
    >>Speak to Pilot Bellowfiz
    .turnin 317 >>Turn in Stocking Jetsteam
    .accept 318 >>Accept Evershine
step
    .xp 6
step << Hunter
    .goto Dun Morogh,45.8,53.1
    .train 3044 >> Train Arcane Shot
step
    .goto Dun Morogh,44.1,56.9
    .complete 5541,1 --Rumbleshot's Ammo (1)
step
    .goto Dun Morogh,40.7,65.1
    >>Speak to Hegnar Rumbleshot
    .turnin 5541 >>Turn in Ammo for Rumbleshot
step << Hunter
    .goto Dun Morogh,40.7,65.1
    >>Buy the level 4 gun upgrade, skip this step if you don't have the money for it
    .collect 2509,1
step
    .goto Dun Morogh,42.4,54.7
    .complete 313,1 --Wendigo Mane (8)
step
    .xp 7
step
    #requires jetsteam2
    .goto Dun Morogh,34.6,51.6
    >>Speak to Tundra MacGrann
    .accept 312 >>Accept Tundra MacGrann's Stolen Stash
step
    .goto Dun Morogh,38.5,54.0
    >>Wait until the level 11 yeti leaves the cave to sneak in and loot the chest
    .complete 312,1 --MacGrann's Dried Meats (1)
step
    .goto Dun Morogh,34.6,51.6
    .turnin 312 >>Turn in Tundra MacGrann's Stolen Stash
step
    .goto Dun Morogh,30.2,45.8
    >>Speak to Rejold Barleybrew
    .turnin 318 >>Turn in Evershine
    .accept 319 >>Accept A Favor for Evershine
    .accept 315 >>Accept The Perfect Stout
step
    .goto Dun Morogh,30.2,45.4
    >>Speak to Marleth Barleybrew
    .accept 310 >>Accept Bitter Rivals
step
    #sticky
    #label favor
    >>Kill the following mobs as you quest:
    .complete 319,1 --Ice Claw Bear (6)
    .complete 319,2 --Elder Crag Boar (8)
    .complete 319,3 --Snow Leopard (8)
step << Hunter
    >>Grind your way back to Kharanos
    .xp 8-1400
step << !Hunter
    #requires boars
    #completewith next
    .deathskip >> Die on purpose and respawn at Kharanos
step << Hunter
    #requries boars
    .goto Dun Morogh,49.6,48.5
    .turnin 313 >>Turn in The Grizzled Den
step
    #requires boars
    .goto Dun Morogh,47.4,52.5
    >>Buy the following items from the innkeeper:
    .complete 384,2 --Rhapsody Malt (1)
    .collect 2686,1,311 --Thunder Ale
step
    .goto Dun Morogh,47.7,52.6
    >>Head downstairs, give the Thunder Ale to Jarven and then click on the Unguarded Barrel
    .turnin 310 >>Turn in Bitter Rivals
    .accept 311 >>Accept Return to Marleth
step
    .goto Dun Morogh,47.3,52.5
    .hs >> Set your Hearthstone to Kharanos
step
    .goto Dun Morogh,46.9,52.4
    >>Speak to Ragnar Thunderbrew
    .turnin 384 >>Turn in Beer Basted Boar Ribs
step
    .goto Dun Morogh,46.7,53.9
    .accept 287 >>Accept Frostmane Hold
step << !Hunter
    .goto Dun Morogh,49.6,48.5
    .turnin 313 >>Turn in The Grizzled Den
step << Hunter
    .goto Dun Morogh,45.8,53.0
    .train 5116>> Train Concussive Shot
step
    .goto Dun Morogh,63.1,49.8
    >>Speak to Rudra Amberstill
    .accept 314 >>Accept Protecting the Herd
step
    .goto Dun Morogh,62.3,46.7
    .complete 314,1 --Fang of Vagash (1)
step
    .goto Dun Morogh,63.1,49.9
    .turnin 314 >>Turn in Protecting the Herd
step
    .goto Dun Morogh,69.1,56.3
    >>Speak to Foreman Stonebrow
    .accept 432 >>Accept Those Blasted Troggs!
step
    .goto Dun Morogh,69.8,58.1
    .complete 432,1 --Rockjaw Skullthumper (6)
step
    .goto Dun Morogh,69.1,56.4
    .turnin 432 >>Turn in Those Blasted Troggs!
step
    .goto Dun Morogh,83.9,39.1
    >>Speak to Pilot Hammerfoot
    .accept 419 >>Accept The Lost Pilot
step
    .goto Dun Morogh,79.7,36.2
    >>Make sure you have 1 empty bag slot before accepting this quest
    .turnin 419 >>Turn in The Lost Pilot
    .accept 417 >>Accept A Pilot's Revenge
step
    .goto Dun Morogh,78.4,37.7
    .complete 417,1 --Mangy Claw (1)
step
    .goto Dun Morogh,83.9,39.1
    >>Speak to Pilot Hammerfoot
    .turnin 417 >>Turn in A Pilot's Revenge
step
    #sticky
    .deathskip >> Die on purpose and respawn at Kharanos
step
    .goto Dun Morogh,45.8,49.4
    .accept 412 >> Accept Operation Recombobulation
step
    #completewith next
    .goto Dun Morogh,42.4,45.3,15
    >>The path to Shimmer Ridge starts here
step
    .goto Dun Morogh,41.5,44.4
    >>Kill Frostmane Seers, loot baskets on the ground
    .complete 315,1 --Shimmerweed (6)
step
    .goto Dun Morogh,30.2,45.5
    .turnin 311 >>Turn in Return to Marleth
    .turnin 315 >>Turn in The Perfect Stout
    .accept 413 >>Accept Shimmer Stout
step
    #requires favor
    .goto Dun Morogh,30.2,45.7
    >>Speak to Rejold Barleybrew
    .turnin 319 >>Turn in A Favor for Evershine
    .accept 320 >>Accept Return to Bellowfiz
step
    .goto Dun Morogh,22.7,52.0
    .complete 287,1 --Fully explore Frostmane Hold (1)
    .complete 287,2 --Frostmane Headhunter (5)
step
    .goto Dun Morogh,26.0,41.8
    >>Kill Leper Gnomes
    .complete 412,1 --Restabilization Cog (8)
    .complete 412,2 --Gyromechanic Gear (8)

step
    #completewith next
    .goto Dun Morogh,31.1,32.4,25>>The path to Wetlands start here
    
step
    #completewith next
    .goto Dun Morogh,32.6,25.9,20 >> Climb the mountain until the general chat channel changes to Wetlands
    .goto Wetlands,11.3,43.5,30 >> Die on Purpose and respawn at the Wetlands graveyard
step
    .goto Wetlands,9.5,59.7
    >>Spirit rez and head to Menethil
    .fp >>Get the Menethil Harbor Flight Path
step
    #completewith next
    .hs >> Hearth back to Kharanos
step
    .goto Dun Morogh,46.7,53.7
    >>Speak to Senir Whitebeard
    .turnin 287 >>Turn in Frostmane Hold
    .accept 291 >>Accept The Reports
step
    .goto Dun Morogh,45.9,49.4
    >>Speak to Razzle Sprysprocket
    .turnin 412 >>Turn in Operation Recombobulation
step
    .goto Dun Morogh,49.4,48.3
    >>Speak to Pilot Bellowfiz
    .turnin 320 >>Turn in Return to Bellowfiz
step
    .goto Dun Morogh,45.8,53.0
    >>Speak to Grif Wildheart
    .accept 6064 >>Accept Taming the Beast
step
    .goto Dun Morogh,48.3,56.9
    .complete 6064,1 --Tame a Large Crag Boar (1)
step
    .goto Dun Morogh,45.8,53.0
    .turnin 6064 >>Turn in Taming the Beast
    .accept 6084 >>Accept Taming the Beast
step
    .goto Dun Morogh,49.4,59.4
    .complete 6084,1 --Tame a Snow Leopard (1)
step
    .goto Dun Morogh,45.8,53.0
    .turnin 6084 >>Turn in Taming the Beast
    .accept 6085 >>Accept Taming the Beast
step
    .goto Dun Morogh,50.4,59.7
    .complete 6085,1 --Tame an Ice Claw Bear (1)
step
    .goto Dun Morogh,45.8,53.0
    .turnin 6085 >>Turn in Taming the Beast
    .accept 6086 >>Accept Training the Beast
step
    #completewith next
    .goto Dun Morogh,53.4,34.0
    .zone Ironforge >> Head to Ironforge
    >>Tame an Ice Claw Bear or a Winter Wolf on your way there
step
    .goto Ironforge,39.6,56.9
    .turnin 291 >>Turn in The Reports
step
    #sticky
    .goto Ironforge,61.5,89.2
    >>Buy the level 9 gun upgrade
    .collect 2511,1
    >>Skip this step if you have less than 15 silver
    .money <0.15
step
    .goto Ironforge,70.8,85.8
    >>Speak to Belia Thundergranite
    .turnin 6086 >>Turn in Training the Beast
step
    #completewith next
    .goto Ironforge,76.1,51.1,50 >> Head to the Deeprun Tram
step
    >>Speak to Monty at the middle platform
    .accept 6661 >>Accept Deeprun Rat Roundup
step
    >>Use the flute provided to catch rats
    .complete 6661,1 --Rats Captured (5)
step
    .turnin 6661 >>Turn in Deeprun Rat Roundup
step
    .goto Ironforge,55.5,47.8
    .fly Wetlands >> Fly to Wetlands
step
    .goto Wetlands,4.6,57.2
    .zone Darkshore >> Take the boat to Darkshore
]],"Dwarf Hunter")


