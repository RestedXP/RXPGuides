RXPGuides.RegisterGuide([[
#classic
#era/som
<< Alliance !Hunter
#name 1-6 Coldridge Valley
#version 1
#group RestedXP Alliance 1-20
#defaultfor Dwarf/Gnome
#next 6-11 Dun Morogh
step << !Gnome !Dwarf
    #sticky
    #completewith next
    .goto Dun Morogh,29.9,71.2
    +You have selected a guide meant for Gnomes and Dwarves. You should choose the same starter zone that you start in
step << Mage
    #completewith next
    +Note that you have selected the single target mage guide. Single target is a lot safer than AoE Mage, but a LOT slower
step
    >>Delete your Hearthstone << !Warlock
    .goto Dun Morogh,29.9,71.2
    .accept 179 >> Accept Dwarven Outfitters
step << Warrior/Warlock
    #sticky
    #completewith next
    .goto Dun Morogh,28.6,72.2,20,0
    +Kill Wolves for 10c+ of vendor trash, then enter the building
step << Warrior/Warlock
    .goto Dun Morogh,28.8,69.2,30 >>Enter the building
step << Warrior
    .goto Dun Morogh,28.7,67.7
    .vendor >> vendor trash
step << Warrior
    .goto Dun Morogh,28.8,67.2
    .trainer >>Train Battle Shout
step << Warlock
    .goto Dun Morogh,28.8,66.2
    .vendor >> Go to the back, upstairs, then talk to the Demon Trainer. Vendor trash
step << Warlock
    .goto Dun Morogh,28.6,66.1
    .trainer >>Train Immolate
    .accept 1599 >> Accept Beginnings
step
    >>Kill Wolves. Loot them for Meat
    .goto Dun Morogh,28.7,74.8
    .complete 179,1 --Collect Tough Wolf Meat (x8)
step
    .xp 2 >> Grind to 2
step << Warlock
    #softcore
    #sticky
    #completewith next
    .goto Dun Morogh,26.8,79.8,40,0
    .goto Dun Morogh,30.1,82.4,30 >> Kill some Wolves en route, then watch this
    .link https://www.youtube.com/watch?v=iUvGsRbIVp8 >> CLICK HERE
step << Warlock
    >>Kill Frostmane Novices inside the cave. Loot them for Feather Charms
    .goto Dun Morogh,29.0,82.6,50,0
    .goto Dun Morogh,29.0,81.2,60,0
    .goto Dun Morogh,30.1,82.4
    .complete 1599,1 --Collect Feather Charm (x3)
step << Warlock
    #softcore
    .goto Dun Morogh,29.5,69.8,100 >> Die and respawn at the Spirit Healer
step << Warlock
    #hardcore
    .hs >> Hearth back to Coldridge Valley
step << Warlock
    >>Go back to the Warlock Trainer
    .goto Dun Morogh,28.6,66.1
    .turnin 1599 >> Turn in Beginnings
step << Priest/Mage/Warlock
    .goto Dun Morogh,30.0,71.5
    >>Summon your Imp and rebuff Demon Skin en route << Warlock
    .vendor >>vendor trash, repair. Buy 15 Water. Grind extra wolves if you don't have enough money
    .collect 159,15 --Collect Refreshing Spring Water (x15)
step << Paladin/Warrior
    .goto Dun Morogh,30.0,71.5
    .vendor >>vendor trash
step
    .goto Dun Morogh,29.9,71.2
    .turnin 179 >> Turn in Dwarven Outfitters
    .accept 233 >> Accept Coldridge Valley Mail Delivery
    .accept 3106 >> Accept Simple Rune << Dwarf Warrior
    .accept 3107 >> Accept Consecrated Rune << Paladin
    .accept 3109 >> Accept Encrypted Rune << Dwarf Rogue
    .accept 3110 >> Accept Hallowed Rune << Priest
    .accept 3112 >> Accept Simple Memorandum << Gnome Warrior
    .accept 3113 >> Accept Encrypted Memorandum << Gnome Rogue
    .accept 3114 >> Accept Glyphic Memorandum << Mage
    .accept 3115 >> Accept Tainted Memorandum << Gnome Warlock
step
    #era
    .goto Dun Morogh,29.7,71.2
    .accept 170 >> Accept A New Threat
step
    #sticky
    #completewith Rockjaw
    #era
    >>Kill Normal Rockjaw Troggs that you see
    .complete 170,1 --Kill Rockjaw Trogg (x6)
step
    #era
    .goto Dun Morogh,26.9,72.7,80,0
    .goto Dun Morogh,25.1,72.1,80,0
    .goto Dun Morogh,26.9,72.7
    >>Kill Burly Rockjaw Troggs
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
step
    .goto Dun Morogh,22.6,71.4
    .turnin 233 >> Turn in Coldridge Valley Mail Delivery
    .accept 183 >> Accept The Boar Hunter
    .accept 234 >> Accept Coldridge Valley Mail Delivery
step
    .goto Dun Morogh,22.2,72.5,100,0
    .goto Dun Morogh,20.5,71.4,100,0
    .goto Dun Morogh,21.1,69.0,100,0
    .goto Dun Morogh,22.8,69.6,100,0
    .goto Dun Morogh,22.2,72.5,100,0
    .goto Dun Morogh,20.5,71.4,100,0
    .goto Dun Morogh,21.1,69.0
    >>Kill Boars in the area
    .complete 183,1 --Kill Small Crag Boar (x12)
step
    .goto Dun Morogh,22.6,71.4
    .turnin 183 >> Turn in The Boar Hunter
step << Paladin/Mage/Warlock
    #era
    .xp 3+1130 >> Grind to 1130+/1400xp
    .goto Dun Morogh,23.0,75.0,100,0
    .goto Dun Morogh,24.2,72.5,100,0
    .goto Dun Morogh,27.7,76.3,100,0
    .goto Dun Morogh,23.0,75.0,100,0
    .goto Dun Morogh,24.2,72.5
step << Paladin/Mage/Warlock
    #som
    .xp 3+1022 >> Grind to 1022+/1400xp
    .goto Dun Morogh,23.0,75.0,100,0
    .goto Dun Morogh,24.2,72.5,100,0
    .goto Dun Morogh,27.7,76.3,100,0
    .goto Dun Morogh,23.0,75.0,100,0
    .goto Dun Morogh,24.2,72.5
step
    #label Rockjaw
    .goto Dun Morogh,25.1,75.7
    .turnin 234 >> Turn in Coldridge Valley Mail Delivery
    .accept 182 >> Accept The Troll Cave
step << Paladin/Mage/Warlock
    .goto Dun Morogh,25.0,76.0
    .accept 3364 >> Accept Scalding Mornbrew Delivery
    >> Once accepted, a 5 minute timer will start. Relax and follow the guide
step << Paladin/Mage/Warlock
    #era
    .goto Dun Morogh,28.7,77.5
    >>Kill Troggs here if you're not done with them by now
    .complete 170,1 --Kill Rockjaw Trogg (x6)
step << Paladin/Mage/Warlock
    #sticky
    #completewith Scalding1
    >>If you were too slow and failed the timed quest, go and pick it up again
    .goto Dun Morogh,25.0,76.0,0
    .accept 3364 >> Accept Scalding Mornbrew Delivery
    .goto Dun Morogh,28.8,66.4
    .turnin 3364 >> Turn in Scalding Mornbrew Delivery
step << Paladin/Mage/Warlock
    #label Scalding1
    .goto Dun Morogh,28.8,66.4
    .turnin 3364 >> Turn in Scalding Mornbrew Delivery
    .accept 3365 >> Accept Bring Back the Mug
    .vendor >> vendor trash
step << Dwarf Paladin
    .goto Dun Morogh,28.8,68.3
    .turnin 3107 >> Turn in Consecrated Rune
    .trainer >> Train your class spells
step << Gnome Mage
    .goto Dun Morogh,28.7,66.4
    .turnin 3114 >> Turn in Glyphic Memorandum
    .trainer >> Train your class spells
step << Warlock
    .goto Dun Morogh,28.6,66.1
    .trainer >> Go Upstairs. Train your Corruption
    .turnin 3115 >> Turn in Tainted Memorandum
step << Paladin/Mage/Warlock
    #era
    .goto Dun Morogh,29.7,71.2
    .turnin 170 >> Turn in A New Threat
step << Mage/Warlock
    .goto Dun Morogh,30.0,71.5
    .vendor >>Vendor, buy 10 water
    .collect 159,10 --Collect Refreshing Spring Water (x10)
step << !Paladin !Mage
    #era
    #sticky
    #label TrollTroggs
    >>Kill any Rockjaw Troggs you see nearby whilst doing Trolls
    .complete 170,1 --Kill Rockjaw Trogg (x6)
step << Paladin/Mage/Warlock
    .goto Dun Morogh,26.3,79.2,90,0
    .goto Dun Morogh,22.7,79.3,90,0
    .goto Dun Morogh,20.9,75.7,90,0
    .goto Dun Morogh,22.7,79.3,90,0
    .goto Dun Morogh,20.9,75.7
    >>Kill Frostmane Troll Whelps
    .complete 182,1 --Kill Frostmane Troll Whelp (x14)
    .goto Dun Morogh,25.1,75.7
step << !Paladin !Mage !Warlock
    .goto Dun Morogh,22.7,79.3,90,0
    .goto Dun Morogh,20.9,75.7,90,0
    .goto Dun Morogh,22.7,79.3,90,0
    .goto Dun Morogh,20.9,75.7,90,0
    .goto Dun Morogh,22.7,79.3,90,0
    .goto Dun Morogh,20.9,75.7,90,0
    .goto Dun Morogh,22.7,79.3
    >>Kill Frostmane Troll Whelps
    .complete 182,1 --Kill Frostmane Troll Whelp (x14)
    .goto Dun Morogh,25.1,75.7
step << !Paladin !Mage !Warlock
    .goto Dun Morogh,25.0,76.0
    .abandon 3364 >> Abandon Scalding Mornbrew Delivery - You don't need it yet
step << !Paladin !Mage !Warlock
    .xp 4 >> Grind to 4
step << !Paladin !Mage !Warlock
    #era
    #requires TrollTroggs
    .goto Dun Morogh,25.1,75.7
    .turnin 182 >> Turn in The Troll Cave
    .accept 218 >> Accept The Stolen Journal
step << !Paladin !Mage !Warlock
    #som
    .goto Dun Morogh,25.1,75.7
    .turnin 182 >> Turn in The Troll Cave
    .accept 218 >> Accept The Stolen Journal
step << Paladin/Mage/Warlock
    .goto Dun Morogh,25.1,75.7
    .turnin 182 >> Turn in The Troll Cave
    .accept 218 >> Accept The Stolen Journal
step << !Paladin !Mage !Warlock
    #softcore
    .goto Dun Morogh,25.0,76.0
    .accept 3364 >> Accept Scalding Mornbrew Delivery
    >>You now have 5m to get the Journal, then turnin the Mornbrew. If you fail quest, pick it up again after dying
step << Paladin/Mage/Warlock
    .goto Dun Morogh,25.0,76.0
    .turnin 3365 >> Turn in Bring Back the Mug
step
    .goto Dun Morogh,26.8,79.9,30,0
    .goto Dun Morogh,29.0,79.0,15,0
    .goto Dun Morogh,30.6,80.3
    >>Enter the Troll cave. Kill Grik'nir, then loot him for Grelin's journal
    .complete 218,1 --Collect Grelin Whitebeard's Journal (x1)
step << !Paladin !Mage !Warlock
    #hardcore
    .goto Dun Morogh,25.0,76.0
    .accept 3364 >> Accept Scalding Mornbrew Delivery
step << !Paladin !Mage !Warlock
    #hardcore
    >>Grind a bit back to here
    .goto Dun Morogh,25.1,75.8
    .turnin 218 >> Turn in The Stolen Journal
    .accept 282 >> Accept Senir's Observations
step << !Paladin !Mage !Warlock
    #softcore
    .goto Dun Morogh,29.5,69.8,100 >> Die and respawn at Spirit Healer
step << !Paladin !Mage !Warlock
    #sticky
    #completewith Scalding2
    >>If you were too slow and failed the timed quest, go and pick it up again
    .goto Dun Morogh,25.0,76.0,0
    .accept 3364 >> Accept Scalding Mornbrew Delivery
    .goto Dun Morogh,28.8,66.4
    .turnin 3364 >> Turn in Scalding Mornbrew Delivery
step << !Paladin !Mage !Warlock
    #label Scalding2
    .goto Dun Morogh,28.8,66.4
    .turnin 3364 >> Turn in Scalding Mornbrew Delivery
    .accept 3365 >> Accept Bring Back the Mug
step << Rogue
    .goto Dun Morogh,28.4,67.5
    .turnin 3113 >> Turn in Encrypted Memorandum << Gnome Rogue
    .turnin 3109 >> Turn in Encrypted Rune << Dwarf Rogue
step << Dwarf Priest
    .goto Dun Morogh,28.6,66.4
    .turnin 3110 >> Turn in Hallowed Rune
    .trainer >> Train your class spells
step << Warrior
    .goto Dun Morogh,28.8,67.2
    .turnin 3106 >> Turn in Simple Rune << Dwarf Warrior
    .turnin 3112 >> Turn in Simple Memorandum << Gnome Warrior
    .trainer >> Train your class spells
step << !Paladin !Mage !Warlock
    #era
    .goto Dun Morogh,29.7,71.2
    .turnin 170 >> Turn in A New Threat
step << Priest
    .money <0.0025
    .goto Dun Morogh,30.0,71.5
    .vendor >> Buy up to 10 water
step
    >>Grind a bit back to here
    .goto Dun Morogh,25.1,75.8
    .turnin 218 >> Turn in The Stolen Journal
    .accept 282 >> Accept Senir's Observations
step << !Paladin !Mage !Warlock
    .goto Dun Morogh,25.0,76.0
    .turnin 3365 >> Turn in Bring Back the Mug
step
    .goto Dun Morogh,33.5,71.8
    .turnin 282 >> Turn in Senir's Observations
    .accept 420 >> Accept Senir's Observations
step
    .goto Dun Morogh,33.9,72.2
    .accept 2160 >> Accept Supplies to Tannok
step
    .goto Dun Morogh,34.1,71.6,20,0
    .goto Dun Morogh,35.7,66.0,0
    .goto Dun Morogh,35.7,66.0,20 >>Go through the tunnel

]])

RXPGuides.RegisterGuide([[
#era/som
#classic
<< Alliance !Hunter
#name 6-11 Dun Morogh
#version 1
#group RestedXP Alliance 1-20
#defaultfor Dwarf/Gnome
#next 10-11 Elwynn (Dwarf/Gnome)
step << Paladin/Warrior/Rogue
    #sticky
    #completewith BearFur
    >> Kill Boars to get 4 Boar Meat for later
    .collect 769,4 --Collect Chunk of Boar Meat (x4)
step << !Paladin !Warrior !Rogue
    #sticky
    #completewith BoarMeat44
    >> Kill boars to get 4 Boar Meat for later
    .collect 769,4 --Collect Chunk of Boar Meat (x4)
step
    #sticky
    #completewith Ribs
    >> Kill boars to get 6 Boar Ribs for later
    .collect 2886,6 --Collect Crag Boar Rib (x6)
step << Priest
    >>grind boars north-east to Kharanos
    .goto Dun Morogh,36.4,62.9,45,0
    .goto Dun Morogh,37.7,60.5,45,0
    .goto Dun Morogh,43.9,55.7
    .xp 5+2145 >> Grind to 2145/+2800xp
step << !Priest
    >>grind boars north-east to Kharanos
    .goto Dun Morogh,36.4,62.9,45,0
    .goto Dun Morogh,37.7,60.5,45,0
    .goto Dun Morogh,43.9,55.7
    .xp 5+2415 >> Grind to 2415/+2800xp
step
    #completewith next
    #softcore
    .deathskip >> Die and respawn at the Spirit Healer, or run to Kharanos. Make sure your subzone is NOT Coldridge Pass
step
    #softcore
    .goto Dun Morogh,46.7,53.8
    .turnin 420 >> Turn in Senir's Observations
    .vendor >>vendor trash
step
    #hardcore
    >>Grind boars en route to Kharanos
    .goto Dun Morogh,46.7,53.8
    .turnin 420 >> Turn in Senir's Observations
    .vendor >>vendor trash
step << Warlock
    .goto Dun Morogh,47.3,53.7
    .trainer >> Train your class spells from Gimrizz
    .vendor >> Buy the Blood Pact book if you have money after training from Dannie (otherwise buy it later)
step << !Priest
    .goto Dun Morogh,48.3,57.0
    .xp 6 >> Grind to 6
step
    .goto Dun Morogh,46.8,52.4
    .accept 384 >> Accept Beer Basted Boar Ribs
step
    .goto Dun Morogh,47.2,52.2
    .turnin 2160 >> Turn in Supplies to Tannok
step << Rogue
    .goto Dun Morogh,47.2,52.4
    .vendor >> Buy the level 3 thrown from Kreg. Equip it
step << Rogue
    .goto Dun Morogh,47.6,52.6
    .trainer >> Train your class spells
step << Mage
    .goto Dun Morogh,47.5,52.1
    .trainer >> Train your class spells
step << Paladin
    .goto Dun Morogh,47.6,52.1
    .trainer >> Train your class spells
step << Priest
    .goto Dun Morogh,47.3,52.2
    .accept 5625 >> Accept Garments of the Light
step << Priest
    >>Use Lesser Heal Rank 2 and then Power Word: Fortitude on Mountaineer Dolf
    .goto Dun Morogh,45.8,54.6
     .complete 5625,1 --Heal and fortify Mountaineer Dolf
step << Priest
    .goto Dun Morogh,47.3,52.2
    .turnin 5625 >> Turn in Garments of the Light
    .trainer >> Train your class spells
step << Priest
    .xp 6 >> Grind to 6
step << Priest/Mage/Warlock
    .goto Dun Morogh,47.4,52.5
    .home >> Set your Hearthstone to Thunderbrew Distillery
    .vendor >> Buy as much level 5 drink as you can
step << !Mage !Priest !Warlock
    .goto Dun Morogh,47.4,52.5
    .home >> Set your Hearthstone to Thunderbrew Distillery
    .vendor >> vendor trash
step << Warrior
    .goto Dun Morogh,47.4,52.6
    .trainer >> Train your class spells
step << Paladin/Warrior
    .goto Dun Morogh,45.8,51.8,20 >> Go into the building
step << Gnome Warrior
    .goto Dun Morogh,45.3,52.2
    >>Repair your weapon. If you have enough money (5s 36c) buy a Gladius from Grawn. Otherwise, skip this step (you'll come back later)
    .collect 2488,1 --Collect Gladius (1)
step << Dwarf Warrior
    .goto Dun Morogh,45.3,52.2
     >>Repair your weapon. If you have enough money (4s 84c) buy a Large Axe from Grawn. Otherwise, skip this step (you'll come back later)
    .collect 2491,1 --Collect Large Axe (1)
step << Rogue
    .goto Dun Morogh,45.3,52.2
    >>Repair your weapon. If you have enough money (4s 1c) buy a Stiletto from Grawn. Otherwise, skip this step (you'll come back later)
    .collect 2494,1 --Collect Stiletto (1)
step << Paladin
    .goto Dun Morogh,45.3,52.2
    >>Repair your weapon. If you have enough money (7s 1c) buy a Wooden Mallet from Grawn. Otherwise, skip this step (you'll come back later)
    .collect 2493,1 --Collect Wooden Mallet (1)
step << Warrior/Rogue
    .goto Dun Morogh,45.3,51.9
    .trainer >> Train Blacksmithing. This will allow you to make +2 damage sharpening stones for your weapon which are very strong.
    >> If you want to go for your own professions, skip this step
step << Paladin
    .goto Dun Morogh,45.3,51.9
    .trainer >> Train Blacksmithing. This will allow you to make +2 damage weightstones for your weapon which are very strong.
    >> If you want to go for your own professions, skip this step
step
    .goto Dun Morogh,46.0,51.7
    .accept 400 >> Accept Tools for Steelgrill
step
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
    #label BoarMeat44
    .goto Dun Morogh,50.1,49.4
    .accept 5541 >> Accept Ammo for Rumbleshot
step << Warrior/Paladin/Rogue
    .money <0.0091
    .goto Dun Morogh,50.1,49.4
    .collect 2901,1 >> Buy a Mining Pick if you trained Blacksmithing
step << Warrior/Paladin/Rogue
    .goto Dun Morogh,50.01,50.31
    .trainer >>Go inside the house. Train Mining, cast Find Minerals
step << Paladin/Warrior/Rogue
    #sticky
    #completewith BearFur
    >>Get the Bear Fur for Stocking Jetsteam as you quest
    .complete 317,2 --Collect Thick Bear Fur (x2)
step << !Paladin !Warrior !Rogue
    .goto Dun Morogh,52.0,50.1,100,0
    .goto Dun Morogh,51.5,53.9,100,0
    .goto Dun Morogh,50.1,53.9,100,0
    .goto Dun Morogh,49.9,50.9,100,0
    .goto Dun Morogh,48.0,49.5,100,0
    .goto Dun Morogh,48.2,46.9,100,0
    .goto Dun Morogh,43.5,52.5,100,0
    .goto Dun Morogh,52.0,50.1,100,0
    .goto Dun Morogh,51.5,53.9,100,0
    .goto Dun Morogh,50.1,53.9,100,0
    .goto Dun Morogh,49.9,50.9,100,0
    .goto Dun Morogh,48.0,49.5,100,0
    .goto Dun Morogh,48.2,46.9,100,0
    .goto Dun Morogh,43.5,52.5,100,0
    .goto Dun Morogh,52.0,50.1,100,0
    .goto Dun Morogh,51.5,53.9,100,0
    .goto Dun Morogh,50.1,53.9,100,0
    .goto Dun Morogh,49.9,50.9,100,0
    .goto Dun Morogh,48.0,49.5,100,0
    .goto Dun Morogh,48.2,46.9,100,0
    .goto Dun Morogh,43.5,52.5,100,0
    .goto Dun Morogh,52.0,50.1,0
    .goto Dun Morogh,51.5,53.9,0
    .goto Dun Morogh,50.1,53.9,0
    .goto Dun Morogh,49.9,50.9,0
    .goto Dun Morogh,48.0,49.5,0
    .goto Dun Morogh,48.2,46.9,0
    .goto Dun Morogh,43.5,52.5
    >>Get the items for Stocking Jetsteam
    .complete 317,1 --Collect Chunk of Boar Meat (x4)
    .complete 317,2 --Collect Thick Bear Fur (x2)
step << !Paladin !Warrior !Rogue
    .goto Dun Morogh,49.4,48.4
    .turnin 317 >> Turn in Stocking Jetsteam
    .accept 318 >> Accept Evershine
step << Warrior
    .goto Dun Morogh,46.9,52.1,20,0
    .goto Dun Morogh,47.4,52.5
    .vendor >> Buy as much level 5 food as you can afford
step << Priest/Mage/Warlock
    .goto Dun Morogh,46.9,52.1,20,0
    .goto Dun Morogh,47.4,52.5
    .vendor >> Buy as much level 5 drink as you can afford
step
    .goto Dun Morogh,42.25,53.68,40,0
    .goto Dun Morogh,41.07,49.04,50,0
    .goto Dun Morogh,42.25,53.68
    >> Go into the cave. Kill Wendigos. Loot them for their Manes << !Warrior !Rogue !Paladin
    >> Kill Wendigos. Loot them for their Manes. Keep an eye out for Veins to get rough stones for Sharpening stones for your weapon << Warrior/Rogue
    >> Kill Wendigos. Loot them for their Manes. Keep an eye out for Veins to get rough stones for Weightstones for your weapon << Paladin
    .complete 313,1 --Collect Wendigo Mane (x8)
step
    >>Loot the crate
    .goto Dun Morogh,44.1,56.9
    .complete 5541,1 --Collect Rumbleshot's Ammo (x1)
step
    #label BearFur
    .goto Dun Morogh,40.6,62.6,50,0
    .goto Dun Morogh,40.7,65.1
    .turnin 5541 >> Turn in Ammo for Rumbleshot
    .vendor >> Vendor and repair
step << !Paladin !Warrior !Rogue
    .xp 7 >> Grind to 7
step << Paladin/Warrior/Rogue
    .goto Dun Morogh,51.4,50.4
    >>Kill Bears and Boars. Loot them for Fur and Meat
    .complete 317,2 --Collect Thick Bear Fur (x2)
    .complete 317,1 --Collect Chunk of Boar Meat (x4)
step << Warrior/Paladin/Rogue
    .goto Dun Morogh,49.4,48.4
    .turnin 317 >> Turn in Stocking Jetsteam
    .accept 318 >> Accept Evershine
step << Warrior/Paladin/Rogue
    .goto Dun Morogh,49.6,48.6
    .turnin 313 >> Turn in The Grizzled Den
step << Warrior/Paladin/Rogue
    .goto Dun Morogh,50.1,49.4
    .collect 2901,1 >> Buy a Mining Pick
step << Warrior/Paladin/Rogue
    #era
    .xp 7 >> Grind to 7
step << Warrior/Rogue
    #som
    .xp 8 >> Grind nearby mobs to 8
step << Rogue
    #som
    .goto Dun Morogh,47.6,52.6
    .trainer >> Train your class spells
step << Paladin
    #som
    #level 8
    .goto Dun Morogh,47.60,52.07
    .trainer >> Train your class spells
step << Warrior
    #som
    .goto Dun Morogh,47.4,52.6
    .trainer >> Train your class spells
step << Rogue
    .goto Dun Morogh,45.3,52.2
    >>Repair your weapon. If you have enough money (4s 1c) buy a Stiletto from Grawn. Otherwise, skip this step (you'll come back later)
    .collect 2494,1 --Collect Stiletto (1)
step << Gnome Warrior
    .goto Dun Morogh,45.3,52.2
    >>Repair your weapon. If you have enough money (5s 36c) buy a Gladius from Grawn. Otherwise, skip this step (you'll come back later)
    .collect 2488,1 --Collect Gladius (1)
step << Dwarf Warrior
    .goto Dun Morogh,45.3,52.2
     >>Repair your weapon. If you have enough money (4s 84c) buy a Large Axe from Grawn. Otherwise, skip this step (you'll come back later)
    .collect 2491,1 --Collect Large Axe (1)
step << Paladin
    .goto Dun Morogh,45.3,52.2
    >>Repair your weapon. If you have enough money (7s 1c) buy a Wooden Mallet from Grawn. Otherwise, skip this step (you'll come back later)
    .collect 2493,1 --Collect Wooden Mallet (1)
step << Warrior/Rogue
    .goto Dun Morogh,47.4,52.5
    .vendor >> Buy up to 20 level 5 food
step << Paladin
    .goto Dun Morogh,47.4,52.5
    .vendor >> Buy up to 10 level 5 food
step << Paladin/Warrior/Rogue
    >>Grind some mobs en route
    .goto Dun Morogh,43.0,47.4,100,0
    .goto Dun Morogh,39.6,48.9,100,0
    .goto Dun Morogh,34.6,51.7
    .accept 312 >> Accept Tundra MacGrann's Stolen Stash
step << !Paladin !Warrior !Rogue
    >>Grind some mobs en route
    .goto Dun Morogh,35.2,56.4,100,0
    .goto Dun Morogh,36.0,52.0,100,0
    .goto Dun Morogh,34.6,51.7
    .accept 312 >> Accept Tundra MacGrann's Stolen Stash
step << !Mage !Priest
    #completewith next
    .goto Dun Morogh,30.5,46.0
    .vendor >> vendor trash
step << Priest/Mage/Warlock
    #completewith next
    .goto Dun Morogh,30.5,46.0
    .vendor >> Vendor. Buy up to 20 level 5 drink
step
    .goto Dun Morogh,30.2,45.8
    .turnin 318 >> Turn in Evershine
    .accept 319 >> Accept A Favor for Evershine
    .accept 315 >> Accept The Perfect Stout
step
    .goto Dun Morogh,30.2,45.5
    .accept 310 >> Accept Bitter Rivals
step
    #label Ribs
    .goto Dun Morogh,31.5,38.9,100,0
    .goto Dun Morogh,28.3,39.9,100,0
    .goto Dun Morogh,28.7,43.7,100,0
    .goto Dun Morogh,25.8,47.2,100,0
    .goto Dun Morogh,25.8,47.2,100,0
    .goto Dun Morogh,30.0,51.8,100,0
    .goto Dun Morogh,31.5,38.9,100,0
    .goto Dun Morogh,28.3,39.9,100,0
    .goto Dun Morogh,28.7,43.7,100,0
    .goto Dun Morogh,25.8,47.2,100,0
    .goto Dun Morogh,25.8,47.2,100,0
    .goto Dun Morogh,30.0,51.8,100,0
    .goto Dun Morogh,28.7,43.7
    >> Kill Bears, Boars and Leopards
    .complete 319,1 --Kill Ice Claw Bear (x6)
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .complete 319,3 --Kill Snow Leopard (x8)
step
    >>Finish off getting the Boar Ribs
    .complete 384,1 --Collect Crag Boar Rib (x6)
step
    .goto Dun Morogh,30.2,45.7
    .turnin 319 >> Turn in A Favor for Evershine
    .accept 320 >> Accept Return to Bellowfiz
step
    .isQuestTurnedIn 384
    .xp 7+4360 >>Grind until 4360+/4500xp
step
    .xp 7+3735 >>Grind until 3735+/4500xp
    .goto Dun Morogh,31.5,38.9,100,0
    .goto Dun Morogh,28.3,39.9,100,0
    .goto Dun Morogh,28.7,43.7,100,0
    .goto Dun Morogh,25.8,47.2,100,0
    .goto Dun Morogh,25.8,47.2,100,0
    .goto Dun Morogh,30.0,51.8,100,0
    .goto Dun Morogh,31.5,38.9,100,0
    .goto Dun Morogh,28.3,39.9,100,0
    .goto Dun Morogh,28.7,43.7,100,0
    .goto Dun Morogh,25.8,47.2,100,0
    .goto Dun Morogh,25.8,47.2,100,0
    .goto Dun Morogh,30.0,51.8,100,0
step
    #softcore
    .goto Dun Morogh,30.3,37.5,60 >> Run to here
step
    #softcore
    .goto Dun Morogh,30.9,33.1,15 >>Run up the mountain north
step
    #softcore
    .goto Dun Morogh,32.4,29.1,15 >>Follow it up to here
step
    #softcore
    .goto Dun Morogh,33.0,27.2,15,0
    .goto Dun Morogh,33.0,25.2,15,0
    .goto Wetlands,11.6,43.4,60,0
    .goto Wetlands,11.6,43.4,0
    .deathskip >>Keep running straight north, jump down and die once the General Chat changes to Wetlands, then respawn at Menethil Harbor
step
    #softcore
    #completewith next
    .goto Wetlands,12.7,46.7,30 >> Swim to shore
step
    #softcore
    .goto Wetlands,9.5,59.7
    .fp Wetlands>> Get the Menethil Harbor flight path
step
	#completewith next
    .hs >> Hearth to Kharanos
step
    .goto Dun Morogh,47.4,52.5
    >> Buy a Rhapsody Malt and Thunder Ale from Belm
    .complete 384,2 --Collect Rhapsody Malt (x1)
    .collect 2686,1,311 --Collect Thunder Ale (x1)
step
    .goto Dun Morogh,47.6,52.4,15,0
    >>Go into the room behind the Innkeeper. Go downstairs, then talk to Jarven, and give him the Thunder Ale
    >>Wait for the barrel mouseover to become "unguarded", then handin
    .turnin 310 >> Turn in Bitter Rivals
    .accept 311 >> Accept Return to Marleth
step
    .goto Dun Morogh,46.8,52.4
    .turnin 384 >> Turn in Beer Basted Boar Ribs
     >>Sell the recipe when you next vendor
step << !Paladin !Rogue !Warrior
    .xp 8 >> Grind to 8
step << Warlock
    .goto Dun Morogh,47.3,53.7
    >>Talk to Gimrizz
    .trainer >> Train your class spells
    .vendor >> Buy the Firebolt book if you have money after training (otherwise buy it later)
step << Rogue
    .goto Dun Morogh,47.6,52.6
    .trainer >> Train your class spells
step << Mage
    .goto Dun Morogh,47.5,52.1
    .trainer >> Train your class spells
step << Paladin
    .goto Dun Morogh,47.60,52.07
    .trainer >> Train your class spells
step << Priest
    .goto Dun Morogh,47.3,52.2
    .trainer >> Train your class spells
step << Warrior
    .goto Dun Morogh,47.4,52.6
    .trainer >> Train your class spells
step << Warrior/Rogue/Paladin
    .money <0.01
    .goto Dun Morogh,47.2,52.6
    .trainer >> Train First Aid for bandages
step << Rogue
    .goto Dun Morogh,45.3,52.2
    >>Repair your weapon. If you have enough money (4s 1c) buy a Stiletto from Grawn. Otherwise, skip this step (you'll come back later)
    .collect 2494,1 --Collect Stiletto (1)
step << Paladin
    .goto Dun Morogh,45.3,52.2
    >>Repair your weapon. If you have enough money (7s 1c) buy a Wooden Mallet from Grawn. Otherwise, skip this step (you'll come back later)
    .collect 2493,1 --Collect Wooden Mallet (1)
step << Gnome Warrior
    .goto Dun Morogh,45.3,52.2
    >>Repair your weapon. If you have enough money (5s 36c) buy a Gladius from Grawn. Otherwise, skip this step (you'll come back later)
    .collect 2488,1 --Collect Gladius (1)
step << Dwarf Warrior
    .goto Dun Morogh,45.3,52.2
     >>Repair your weapon. If you have enough money (4s 84c) buy a Large Axe from Grawn. Otherwise, skip this step (you'll come back later)
    .collect 2491,1 --Collect Large Axe (1)
step << Warrior/Rogue
    .goto Dun Morogh,47.4,52.5
    .vendor >> Buy up to 30 level 5 food from the innkeeper
step << Paladin
    .goto Dun Morogh,47.4,52.5
    .vendor >> Buy up to 15 level 5 food from the innkeeper
step << Priest/Mage/Warlock
    .goto Dun Morogh,47.4,52.5
    .vendor >> Buy buy up to 30 level 5 drink from the innkeeper
step
    .goto Dun Morogh,46.7,53.8
    .accept 287 >> Accept Frostmane Hold
step
    .goto Dun Morogh,49.6,48.6
    .turnin 313 >> Turn in The Grizzled Den
step
    .goto Dun Morogh,49.4,48.4
    >>Choose the Camping Knife. Save it for later << Rogue
    .turnin 320 >> Turn in Return to Bellowfiz
step
    #era << Warlock
    >>Inside the building
    .goto Dun Morogh,45.8,49.4
    .accept 412 >> Accept Operation Recombobulation
step
    #completewith next
    .goto Dun Morogh,43.1,45.0,20,0
    .goto Dun Morogh,42.1,45.4,20 >> Run up the ramp to Shimmerweed
step
    .goto Dun Morogh,40.9,45.3,50,0
    .goto Dun Morogh,41.5,43.6,50,0
    .goto Dun Morogh,39.7,40.0,50,0
    .goto Dun Morogh,42.1,34.3,50,0
    .goto Dun Morogh,39.5,43.0
    .goto Dun Morogh,41.5,36.0
    >>Clear mobs in this area. Be careful if you need to clear the middle camp. You can pull the mobs in the huts and line of sight (LoS) them behind the huts if you need 2 more mobs. If you get unlucky, run to the other area
    >>Loot baskets on the ground
    >>Make Weightstones if you loot linen here << Paladin
    .complete 315,1 --Collect Shimmerweed (x6)
step << !Mage !Warlock
    .goto Dun Morogh,38.5,54.0
    >>Wait until Old Icebeard leaves the cave so you can sneak in and loot the chest, or do this
        .link https://www.youtube.com/watch?v=o55Y3LjgKoE >>Click here for video reference
    .complete 312,1 --MacGrann's Dried Meats (1)
step << Mage/Warlock
    >> Polymorph Old Icebeard, then loot the meats << Mage
    >> Fear Old Icebeard, then loot the meats << Warlock
    .goto Dun Morogh,38.5,53.9
    .complete 312,1 --Collect MacGrann's Dried Meats (x1)
step
    .goto Dun Morogh,34.6,51.7
    .turnin 312 >> Turn in Tundra MacGrann's Stolen Stash
step << Mage/Priest/Warlock
    #completewith next
    .goto Dun Morogh,30.4,45.8
    .vendor >> Buy up to 10 more level 5 drink
step << Warrior/Paladin/Rogue
    #completewith next
    .goto Dun Morogh,30.4,45.8
    .vendor >> vendor trash
step
    .goto Dun Morogh,30.2,45.7
    .turnin 315 >> Turn in The Perfect Stout
    .accept 413 >> Accept Shimmer Stout
step
    .goto Dun Morogh,30.2,45.5
    .turnin 311 >> Turn in Return to Marleth
step
    #era << Warlock
    .goto Dun Morogh,27.2,43.0,80,0
    .goto Dun Morogh,24.8,39.3,80,0
    .goto Dun Morogh,25.6,43.4,80,0
    .goto Dun Morogh,24.3,44.0,80,0
    .goto Dun Morogh,25.4,45.4,80,0
    .goto Dun Morogh,25.00,43.50
    >>Kill Leper Gnomes. Loot them for Gears and Cogs
    .complete 412,2 --Collect Gyromechanic Gear (x8)
    .complete 412,1 --Collect Restabilization Cog (x8)
step
    #era
    .xp 9 >> Grind to 9
step
    .goto Dun Morogh,24.5,50.8,40,0
    .goto Dun Morogh,22.1,50.3,40,0
    .goto Dun Morogh,21.3,52.9,40,0
    .goto Dun Morogh,24.5,50.8,0
    .goto Dun Morogh,22.1,50.3,0
    .goto Dun Morogh,21.3,52.9,0
    >>Kill Headhunters inside the cave
    .complete 287,1 --Kill Frostmane Headhunter (x5)
step
    #softcore
    .goto Dun Morogh,23.4,51.5,15 >>Go back up the cave
step
    #softcore
    >>Jump down into the nook below
    .goto Dun Morogh,23.0,52.2
    .complete 287,2 --Fully explore Frostmane Hold
step
    #softcore
    #completewith next
    .deathskip >> Die and respawn at Kharanos
step
    #hardcore
    >>Carefully grind down into this nook in the cave
    .goto Dun Morogh,23.0,52.2
    .complete 287,2 --Fully explore Frostmane Hold
step
    #hardcore
   .goto Dun Morogh,46.7,53.8,150 >> Hearth if its up, otherwise grind back to Kharanos
step
    .goto Dun Morogh,46.7,53.8
    .turnin 287 >> Turn in Frostmane Hold
    .accept 291 >> Accept The Reports
step << Rogue
    #level 10
    .goto Dun Morogh,47.6,52.6
    .accept 2218 >> Accept Road to Salvation
step << !Paladin !Priest
    .goto Dun Morogh,47.2,52.6
    .train 3273 >> Train First Aid
step
    #era << Warlock
    >>Inside the building
    .goto Dun Morogh,45.8,49.4
    .turnin 412 >> Turn in Operation Recombobulation
step << Warrior
    #sticky
    #completewith next
    .money >0.1000
    +Start grinding until you have 10s of vendorables, then run into Ironforge
step << Warrior
    .goto Dun Morogh,53.5,34.9,30 >> Run into Ironforge
step << Warrior
    >>Go into the building
    .goto Ironforge,61.2,89.5
    .trainer >>Train 2h Maces
step << Warrior
    #sticky
    #completewith next
    .goto Dun Morogh,53.5,34.9,100 >>Run out of Ironforge
step
    .goto Dun Morogh,60.1,52.6,50,0
    .goto Dun Morogh,63.1,49.8
    .accept 314 >> Accept Protecting the Herd
step
    #sticky
    #completewith next
    .goto Dun Morogh,62.3,50.3,14,0
    .goto Dun Morogh,62.2,49.4,10 >>Run up this part of the mountain
step
    >>Kill Vagash. Loot him for his Fang
    >>Kite him to the guard south of the ranch. Make sure you do 51%+ damage to him
    >>Be careful as this quest is HARD
    .goto Dun Morogh,62.6,46.1
    .complete 314,1 --Collect Fang of Vagash (1)
    .link https://www.youtube.com/watch?v=ZJX6sCkm5JY >> CLICK HERE for a guide on how to solo Vagash
step
    .goto Dun Morogh,63.1,49.8
    .turnin 314 >> Turn in Protecting the Herd
step
    >>Grind a little en route
    .goto Dun Morogh,68.6,54.7
    .vendor >>vendor trash. Buy some food if needed << Warrior/Rogue
    .vendor >>vendor trash. Buy some food/water if needed << !Warrior !Rogue
step
    .goto Dun Morogh,68.4,54.5
    .train 2550 >> Train Cooking from Ghilm
step
    .goto Dun Morogh,68.7,56.0
    .accept 433 >> Accept The Public Servant
step
    #completewith next
    .goto Dun Morogh,68.9,55.9
    .vendor >> vendor trash, repair
step
    .goto Dun Morogh,69.1,56.3
    .accept 432 >> Accept Those Blasted Troggs!
step
    .goto Dun Morogh,70.7,56.4,40,0
    .goto Dun Morogh,70.62,52.39,25,0
    .goto Dun Morogh,70.7,56.4
    >>Kill Troggs inside the cave
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .complete 433,1 --Kill Rockjaw Bonesnapper (x10)
step
    .goto Dun Morogh,69.1,56.3
    .turnin 432 >> Turn in Those Blasted Troggs!
step
    #completewith next
    .goto Dun Morogh,68.9,55.9
    .vendor >> vendor trash, repair
step
    .goto Dun Morogh,68.7,56.0
    .turnin 433 >> Turn in The Public Servant
step
    #era
    .goto Dun Morogh,67.1,59.7
    .xp 10 >> Grind to 10 at the troggs
step
    .goto Dun Morogh,83.8,39.2
    .accept 419 >> Accept The Lost Pilot
step
    >>Grind en route
    .goto Dun Morogh,79.7,36.2
    .turnin 419 >> Turn in The Lost Pilot
    .accept 417 >> Accept A Pilot's Revenge
step
    >>Kill Mangeclaw. Loot him for his Claw
    .goto Dun Morogh,78.97,37.14
    .complete 417,1 --Collect Mangy Claw (x1)
step
    .goto Dun Morogh,83.9,39.2
    .turnin 417 >> Turn in A Pilot's Revenge
step
    .goto Dun Morogh,79.6,50.7,50,0
    .goto Dun Morogh,82.3,53.5,25,0
    .goto Dun Morogh,86.3,48.8
    .turnin 413 >> Turn in Shimmer Stout
    .accept 414 >> Accept Stout to Kadrell
step
    >>Run through the tunnel into Loch
    .goto Loch Modan,22.1,73.1
    .accept 224 >> Accept In Defense of the King's Lands
step
    .goto Loch Modan,23.2,73.7
    >>Go into the bunker from behind
    .accept 267 >> Accept The Trogg Threat
step
    .goto Loch Modan,32.6,49.9,80.0,0
    .goto Loch Modan,37.2,46.1,80.0,0
    .goto Loch Modan,36.7,41.6
    >>Find Kadrell. He patrols along the Thelsamar road
    .turnin 414 >> Turn in Stout to Kadrell
    .accept 416 >> Accept Rat Catching
    .accept 1339 >> Accept Mountaineer Stormpike's Task
step
    >>Go inside the building, then go downstairs. Talk to Brock
    .goto Loch Modan,37.2,46.9,15,0
    .goto Loch Modan,37.0,47.8
    .accept 6387 >> Accept Honor Students
step
    .goto Loch Modan,34.8,49.3
    .accept 418 >> Accept Thelsamar Blood Sausages
step
    .goto Loch Modan,34.8,48.6
    .vendor >>Buy a 6 slot bag
step << !Paladin
    .goto Loch Modan,35.5,48.4
    .home >> Set your Hearthstone to Thelsamar
step << skip
    #sticky
    #completewith next
    +Grind mobs until you have at least 33 Silver worth of money and vendorables
--N rogue money gate for cutlass+1h swords
step
    #sticky
    #completewith Thelsamar1
    >>Kill Spiders in the zone for Thelsamar Blood Sausages
    .complete 418,1 --Collect Boar Intestines (x3)
    .complete 418,2 --Collect Bear Meat (x3)
    .complete 418,3 --Collect Spider Ichor (x3)
    >>Also save any Chunks of Boar Meat you get for cooking later
step
    >>Run up to the northern bunker
    .goto Loch Modan,24.8,18.4
    .accept 307 >> Accept Filthy Paws
    .turnin 1339 >> Turn in Mountaineer Stormpike's Task
    .accept 1338 >> Accept Stormpike's Order
step
    #completewith next
    .deathskip >> Die and respawn at Thelsamar
step
    #label Thelsamar1
    .goto Loch Modan,33.9,51.0
    .turnin 6387 >> Turn in Honor Students
    .accept 6391 >> Accept Ride to Ironforge
step
    .goto Loch Modan,33.9,51.0
    .fly Ironforge >> Fly to Ironforge
step
    .goto Ironforge,51.5,26.3
    .turnin 6391 >> Turn in Ride to Ironforge
    .accept 6388 >> Accept Gryth Thurden
step
    .goto Ironforge,39.5,57.5
    .turnin 291 >> Turn in The Reports
step
    >>do NOT fly anywhere
    .goto Ironforge,55.5,47.8
    .turnin 6388 >> Turn in Gryth Thurden
    .accept 6392 >> Accept Return to Brock
step
    #completewith next
    +Perform a Logout skip by jumping on top of one of the Gryphon's heads, and logging out, then back in
    .link https://www.youtube.com/watch?v=PWMJhodh6Bw >> CLICK HERE
step
    .goto Ironforge,74.40,51.10,30,0
    .goto Ironforge,74.40,51.10,0
     >> Enter the Deeprun Tram, speak with the gnome at the middle platform
    .accept 6661 >> Accept Deeprun Rat Roundup
step
    >>Use your flute on the rats scattered around
    .complete 6661,1 --Rats Captured (x5)
step
    .turnin 6661 >> Turn in Deeprun Rat Roundup
    .accept 6662 >> Accept Me Brother, Nipsy
step
     .isOnQuest 6662
    >> Take the tram to Stormwind, turn in when you arrive on the other side of the tram
    .turnin 6662 >> Turn in Me Brother, Nipsy
    >>Train first aid while wating/riding the tram, you'll need 80 points in first aid for a level 24 quest later down the road << Rogue
step
    #completewith next
    .goto StormwindClassic,60.5,12.3
    .zone Stormwind City >>Exit the tram into Stormwind
step
    .goto StormwindClassic,51.6,12.2
    .accept 353 >> Accept Stormpike's Delivery
step
    .goto StormwindClassic,58.1,16.5
    .turnin 1338 >> Turn in Stormpike's Order
step << Priest
    #completewith next
    >>Go into the Cathedral
    .goto StormwindClassic,38.54,26.86
    .trainer >> Train your class spells
    .turnin 5634 >> Turn in Desperate Prayer
step << Priest
    .goto StormwindClassic,38.62,26.10
    .train 13908 >> Train Desperate Prayer
step << Warrior
    #completewith next
    .goto StormwindClassic,74.91,51.55,20 >> Enter the Command Center
step << Warrior
    .goto StormwindClassic,78.67,45.80
    .trainer >> Go upstairs. Train your class spells
    .accept 1638 >> Accept A Warrior's Training
step << Warrior
    #sticky
    #completewith next
    .goto StormwindClassic,71.7,39.9,20 >>Enter the tavern
step << Warrior
    .goto StormwindClassic,74.3,37.3
    .turnin 1638 >> Turn in A Warrior's Training
    .accept 1639 >> Accept Bartleby the Drunk
step << Warrior
    .goto StormwindClassic,73.8,36.3
    .turnin 1639 >> Turn in Bartleby the Drunk
    .accept 1640 >> Accept Beat Bartleby
    .complete 1640,1 --Beat Bartleby
step << Warrior
    .goto StormwindClassic,73.8,36.3
    .turnin 1640 >> Turn in Beat Bartleby
    .accept 1665 >> Accept Bartleby's Mug
step << Warrior
    >>You'll now learn Defensive Stance and Sunder Armor
    .goto StormwindClassic,74.3,37.3
    .turnin 1665 >> Turn in Bartleby's Mug
step << Warlock
    #sticky
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> Go into The Slaughtered Lamb and go downstairs
step << Warlock
    .goto StormwindClassic,26.12,77.20
    .trainer >> Train your class spells
step << Warlock
    .goto StormwindClassic,25.2,78.5
    .accept 1688 >> Accept Surena Caledon
step
    .goto StormwindClassic,57.1,57.7
    .trainer >>Train 1h Swords << Rogue
    .trainer >>Train Staves << Priest
    .trainer >>Train 1h Swords and Staves << Warlock/Mage
    .trainer >>Train 2h Swords << Warrior/Paladin
step << Rogue
    .goto StormwindClassic,57.6,57.1
    .vendor >> If you have money, buy a Cutlass from Gunther and equip it. Equip the Craftsman's Dagger from earlier in your off-hand
step << Rogue
    >>Go inside the building
    .goto StormwindClassic,57.32,62.08,20,0
    .goto StormwindClassic,58.37,61.69
    .vendor >> Buy the level 11 thrown from Thurman. Equip it when you're level 11
]])

RXPGuides.RegisterGuide([[
#era/som
#classic
<< Alliance !Hunter
#name 10-11 Elwynn (Dwarf/Gnome)
#version 1
#group RestedXP Alliance 1-20
#defaultfor Gnome/Dwarf
#next 11-14 Loch Modan (Dwarf/Gnome)
--#era << !Warlock

step << Warlock
     #softcore
    #completewith next
     +Start life tapping on your way to the flight master
step
    .goto StormwindClassic,66.20,62.40
    .fp Stormwind City >> Get the Stormwind City flight path
step << Warlock
     #softcore
    #completewith next
     >> Jump down the ledge (NOT the water) next to the flight master and kill yourself, make sure to life tap before jumping
    .deathskip >>Spirit rez at Goldshire
step
    .goto Elwynn Forest,42.10,65.90
     >>Head to Goldshire
    .accept 62 >> Accept The Fargodeep Mine
step
    >>On your close left as you go in
    .goto Elwynn Forest,43.3,65.7
    .accept 60 >> Accept Kobold Candles
step << Mage
    .goto Elwynn Forest,43.25,66.19
    .trainer >> Go upstairs. Train your class spells
step << Rogue
    .goto Elwynn Forest,43.88,65.93
    .trainer >> Go upstairs. Train your class spells
step
    .goto Elwynn Forest,42.10,67.30
    .accept 40 >> Accept A Fishy Peril
    .accept 47 >> Accept Gold Dust Exchange
step << Warlock
    >>Click any of the wanted posters around
    .goto Elwynn Forest,24.6,74.7
    .accept 176 >> Accept Wanted:   "Hogger"
step << Warlock
    #sticky
    #completewith collector
    >>Keep an eye out for the gold pickup schedule (lucky drop), or a 100% Drop from Gruff Swiftbite (rare). extra 210xp
    .collect 1307,1,123 --Collect Gold Pickup Schedule (x1)
    .accept 123 >> Accept The Collector
step << Warlock
    #label Hogger
    .unitscan Hogger
    .goto Elwynn Forest,27.0,86.7,100,0
    .goto Elwynn Forest,26.1,89.9,100,0
    .goto Elwynn Forest,25.2,92.7,100,0
    .goto Elwynn Forest,27.0,93.9,100,0
    .goto Elwynn Forest,27.0,86.7,100,0
    .goto Elwynn Forest,26.1,89.9,100,0
    .goto Elwynn Forest,25.2,92.7,100,0
    .goto Elwynn Forest,27.0,93.9,100,0
    .goto Elwynn Forest,27.0,86.7,100,0
    .goto Elwynn Forest,26.1,89.9,100,0
    .goto Elwynn Forest,25.2,92.7,100,0
    .goto Elwynn Forest,27.0,93.9,100,0
    .goto Elwynn Forest,25.9,93.9
    >>Hogger can be in multiple spots in the area. Keep him fear chained, and/or kite him at <60% hp to the tower at 24,80. Loot him for his Claw
    >>Be careful as this can be difficult
    .complete 176,1 --Huge Gnoll Claw (1)
step
    .accept 88 >> Accept Princess Must Die!
    .goto Elwynn Forest,34.60,84.50
    .accept 85 >> Accept Lost Necklace
    .goto Elwynn Forest,34.40,84.2
step
    .goto Elwynn Forest,43.0,85.8
    .turnin 85 >> Turn in Lost Necklace
    .accept 86 >> Accept Pie for Billy
step
    #sticky
    #label Fargodeep
    >>Loot Candles and Dust from the Kobolds in the area
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
step
    .goto Elwynn Forest,40.5,82.3
    >>Go into the mine
    .complete 62,1 --Scout Through the Fargodeep Mine
step
    #softcore
    #requires Fargodeep
    #completewith next
    .deathskip >> Die and respawn in Goldshire
step << !Warlock
    #requires Fargodeep
    .goto Elwynn Forest,42.20,66.00
    .turnin 62 >> Turn in The Fargodeep Mine
    .turnin 40 >> Turn in A Fishy Peril
    .accept 35 >> Accept Further Concerns
step << Warlock
    #requires Fargodeep
    .goto Elwynn Forest,42.1,65.9
    >>Choose the Staff then equip it
    .turnin 176 >> Turn in Wanted:    "Hogger"
    .turnin 62 >> Turn in The Fargodeep Mine
    .turnin 40 >> Turn in A Fishy Peril
    .accept 35 >> Accept Further Concerns
step << Warlock
    #label collector
    .goto Elwynn Forest,42.1,65.9
    .turnin 123 >> Turn in The Collector
    .isOnQuest 123
step
    .goto Elwynn Forest,43.30,65.70
    .turnin 60 >> Turn in Kobold Candles
    .accept 61 >> Accept Shipment to Stormwind
step
    .goto Elwynn Forest,42.20,67.20
    .turnin 47 >> Turn in Gold Dust Exchange
step
    .goto Elwynn Forest,73.90,72.30
    .turnin 35 >> Turn in Further Concerns
step
    #era
    .goto Elwynn Forest,73.90,72.30
    .accept 37 >> Accept Find the Lost Guards
    .accept 52 >> Accept Protect the Frontier
step
    #era
    #sticky
    #completewith Prowlers
    >>Kill Prowlers as you do other quests
    .complete 52,1 --Kill Prowler (x8)
step
    #era
    #sticky
    #completewith Bears
    >>Kill Bears as you do other quests. Kill any you see
    .complete 52,2 --Kill Young Forest Bear (x5)
step
    #era
    >>Click the bones on the ground
    .goto Elwynn Forest,72.7,60.3
    .turnin 37 >> Turn in Find the Lost Guards
    .accept 45 >> Accept Discover Rolf's Fate
step
    #era
    .goto Elwynn Forest,81.38,66.11
    .accept 5545 >> Accept A Bundle of Trouble
step
    #era
    #sticky
    #completewith next
    >>Keep an eye out for the bundles of logs at the base of the trees
    .collect 13872,8,5545,1 --Collect Bundle of Wood (x8)
step
    #era
    .goto Elwynn Forest,79.80,55.50
     >> Click on the pile of bones. Be careful as you may have to deal with a 2 pull of murlocs in front of the huts to get to it
    .turnin 45 >> Turn in Discover Rolf's Fate
    .accept 71 >> Accept Report to Thomas
step
    #era
    .goto Elwynn Forest,76.8,62.4,40,0
    .goto Elwynn Forest,83.7,59.4,40,0
    .goto Elwynn Forest,76.8,62.4,40,0
    .goto Elwynn Forest,83.7,59.4,40,0
    .goto Elwynn Forest,76.8,62.4,40,0
    .goto Elwynn Forest,83.7,59.4,40,0
    >>Start running back, finish off the bundles
    .collect 13872,8,5545,1 --Collect Bundle of Wood (x8)
step
    #era
    #label Prowlers
    .goto Elwynn Forest,81.4,66.1
    .turnin 5545 >> Turn in A Bundle of Trouble
step
    #era
    #label Bears
    .goto Elwynn Forest,79.5,68.8
    .accept 83 >> Accept Red Linen Goods
step
    #era
    .goto Elwynn Forest,76.7,75.6,40,0
    .goto Elwynn Forest,79.7,83.7,40,0
    .goto Elwynn Forest,82.0,76.8,40,0
    .goto Elwynn Forest,76.7,75.6,40,0
    .goto Elwynn Forest,79.7,83.7,40,0
    .goto Elwynn Forest,82.0,76.8,40,0
    >>Kill the last mobs for Protect the Frontier
    .complete 52,1 --Kill Prowler (x8)
    .complete 52,2 --Kill Young Forest Bear (x5)
step
    #era
    .goto Elwynn Forest,74.0,72.2
    .turnin 52 >> Turn in Protect the Frontier
    .turnin 71 >> Turn in Report to Thomas
    .accept 39 >> Accept Deliver Thomas' Report
    .accept 109 >> Accept Report to Gryan Stoutmantle
step << Warlock
    >>Kill the mobs inside the house, keep Morgan feared (he gouges and kills pet), nuke Surena. Loot her for her Choker
    .goto Elwynn Forest,71.0,80.8
    .complete 1688,1 --Surena's Choker (1)
step
    .goto Elwynn Forest,69.3,79.0
    >>Kill Princess, be careful, she has 2 adds and her charge hits hard
    .complete 88,1
step
    #sticky
    #completewith next
    >>Keep an eye out for Westfall Deed from the Defias (lucky drop)
    .collect 1972,1,184 --Collect Westfall Deed (x1)
    .accept 184 >> Accept Furlbrow's Deed
step
    #era
    .goto Elwynn Forest,70.5,77.6,60,0
    .goto Elwynn Forest,68.1,77.5,60,0
    .goto Elwynn Forest,68.2,81.4,60,0
    .goto Elwynn Forest,70.8,80.9,60,0
    .goto Elwynn Forest,70.5,77.6,60,0
    .goto Elwynn Forest,68.1,77.5,60,0
    .goto Elwynn Forest,68.2,81.4,60,0
    .goto Elwynn Forest,70.8,80.9,60,0
    .goto Elwynn Forest,70.5,77.6,60,0
    .goto Elwynn Forest,68.1,77.5,60,0
    .goto Elwynn Forest,68.2,81.4,60,0
    .goto Elwynn Forest,70.8,80.9,60,0
    .goto Elwynn Forest,69.3,79.0
    >>Start circling the farm, killing Defias and looting them for Bandanas
    .complete 83,1 --Collect Red Linen Bandana (x6)
step
    #era
    #softcore
    #sticky
    #completewith next
    .goto Elwynn Forest,83.6,69.7,120 >>Die and respawn at the Spirit Healer if you're low health, otherwise just run back and handin
step
    #era
    #label Deed
    .goto Elwynn Forest,79.45,68.78
    .turnin 83 >> Turn in Red Linen Goods
step
    >>Head east to Redridge
    >>The guard patrols around the stumps a bit
    .goto Elwynn Forest,91.7,72.3,150,0
    .goto Redridge Mountains,17.4,69.6
    .accept 244 >> Accept Encroaching Gnolls
step
    >>Be careful of the high level mobs mobs en route
    .goto Redridge Mountains,30.7,60.0
    .turnin 244 >> Turn in Encroaching Gnolls
step
    .goto Redridge Mountains,30.6,59.4
    .fly Stormwind >> Fly to Stormwind
step
    .goto Elwynn Forest,26.21,39.66
    >>Choose the Rockets as the reward. These have very good damage, and can be used for splitpulling
    .turnin 61 >> Turn in Shipment to Stormwind
step << Warlock
    >>Go back to the Warlock Trainer
    .goto StormwindClassic,25.2,78.5
    .trainer >> Train your class spells
    .turnin 1688 >> Turn in Surena Caledon
    .accept 1689 >> Accept The Binding
step << Warlock
    .goto StormwindClassic,25.2,80.7,18,0
    .goto StormwindClassic,23.2,79.5,18,0
    .goto StormwindClassic,26.3,79.5,18,0
    .goto StormwindClassic,25.5,78.1
    >>Go to the bottom of the crypt. Summon the Voidwalker using the Bloodstone Choker and kill it
    .complete 1689,1 --Kill Summoned Voidwalker (x1)
step << Warlock
     #softcore
    >>Life tap on your way back to the warlock trainer
    .goto StormwindClassic,25.2,78.5
    .turnin 1689 >> Turn in The Binding
step << Warlock
     #hardcore
    .goto StormwindClassic,25.2,78.5
    .turnin 1689 >> Turn in The Binding
step << Warlock
    #softcore
    #completewith next
    .goto StormwindClassic,25.2,78.5
    .deathskip >> Die and respawn at the Spirit Healer by using Life Tap and standing on the Bonfire next to you
step << Warrior
    .goto Elwynn Forest,41.09,65.77
    >>Head to Goldshire
    .trainer >> Train your class spells
step
    #era
    .goto Elwynn Forest,42.10,65.92
    >>Head to Goldshire
    .turnin 39 >> Turn in Deliver Thomas' Report
step << Mage
    .goto Elwynn Forest,43.25,66.20
    >>Head to the Goldshire Inn
    .trainer >> Go upstairs. Train your class spells
step << Priest
    .goto Elwynn Forest,43.28,65.72
    >>Head to the Goldshire Inn
    .trainer >> Go upstairs. Train your class spells
step << Rogue
    .goto Elwynn Forest,43.87,65.94
    >>Head to the Goldshire Inn
    .trainer >> Go upstairs. Train your class spells
step
    .turnin 88 >> Turn in Princess Must Die!
    .goto Elwynn Forest,34.66,84.48
step
    .turnin 86 >> Turn in Pie for Billy
    .goto Elwynn Forest,34.40,84.2
    .isQuestComplete 86
step
    #sticky
    .abandon 86 >> Abandon Pie for Billy
step
    .goto Westfall,59.95,19.35
    .turnin 184>> Turn in Furlbrow's Deed
    .isOnQuest 184
step
    .goto Westfall,59.95,19.35
    .accept 64 >> Accept The Forgotten Heirloom
    .accept 36 >> Accept Westfall Stew
    .accept 151 >> Accept Poor Old Blanchy
step
    .goto Westfall,56.10,31.30
    .accept 9 >> Accept The Killing Fields
step
    .goto Westfall,56.40,30.50
    .turnin 36 >> Turn in Westfall Stew
    .accept 38 >> Accept Westfall Stew
    .accept 22 >> Accept Goretusk Liver Pie
step
    #softcore
    #sticky
    #completewith next
    .deathskip >> Die and respawn at the Spirit Healer, or run to Sentinel Hill
step
    #era
    .goto Westfall,56.40,47.60
    .turnin 109 >> Turn in Report to Gryan Stoutmantle
step
    .goto Westfall,56.40,47.60
    .accept 12 >> Accept The People's Militia
step
    #era
    .goto Westfall,56.40,47.60
    .accept 102 >> Accept Patrolling Westfall
step
    .goto Westfall,54.00,53.00
    .accept 153 >> Accept Red Leather Bandanas
step << Dwarf Paladin
    .goto Westfall,48.6,45.8
    >>Make sure you have 10 Linen Cloth for an upcoming Paladin quest
    .collect 2589,10,1648,1
step
    .goto Westfall,56.6,52.6
    .fp Sentinel Hill >> Get the Sentinel Hill flight path
    .fly Stormwind >> Fly to Stormwind << !Paladin
step << Paladin
    .goto StormwindClassic,60.5,12.3,40,0
    .goto StormwindClassic,60.5,12.3,0
    .zone Ironforge >> Take the tram back to Ironforge
step << !Paladin
    .hs >> Hearth to Loch Modan
]])

RXPGuides.RegisterGuide([[
#era/som
#classic
<< Alliance !Hunter
#name 11-14 Loch Modan (Dwarf/Gnome)
#version 1
#group RestedXP Alliance 1-20
#defaultfor Gnome/Dwarf
#next 13-15 Westfall

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
step << !Warlock
    #som << !Paladin
    .goto Ironforge,55.5,47.8
    .fly Loch >> Fly to Loch Modan
step
    .goto Loch Modan,34.76,48.62
    .vendor >> Buy 6 slot bags if you need them.
step
    #completewith next
    .goto Loch Modan,35.54,48.40
    .vendor >> Buy some food if needed << Warrior/Rogue
    .vendor >> Buy some food/water if needed << !Warrior !Rogue
step
    >>Go inside the building, then go downstairs. Talk to Brock
    .goto Loch Modan,37.2,46.9,15,0
    .goto Loch Modan,37.0,47.8
    .turnin 6392 >> Turn in Return to Brock
step
    #sticky
    #completewith next
    >>Kill Bears/Boars/Spiders in the zone for Thelsamar Blood Sausages
    .complete 418,1 --Collect Boar Intestines (x3)
    .complete 418,2 --Collect Bear Meat (x3)
    .complete 418,3 --Collect Spider Ichor (x3)
step
    #completewith next
    .goto Loch Modan,39.3,27.0,130 >>Grind some mobs for Boar Intestines, Bear Meat and Spider Ichor en route
step
    .goto Loch Modan,35.5,18.2,40,0
    .goto Loch Modan,35.75,22.42
    >>Go to the Kobold Cave. Collect the crates you find inside
    .complete 307,1 --Collect Miners' Gear (x4)
step << Paladin/Warrior
    #sticky
    #completewith Kobolds
    .goto Loch Modan,42.9,9.9
    .vendor >> Check the vendor for the green 2h mace he can sell. If it's up and you have enough money, buy it. Otherwise, grind money from kobolds here until you have enough
step
    #label Kobolds
    >> Kill Kobolds. Loot them for their Ears
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
step
    #completewith next
    .goto Loch Modan,24.1,18.2
    .vendor >>Run back to the bunker. Vendor and repair
step
    .goto Loch Modan,24.76,18.39
    .turnin 307 >> Turn in Filthy Paws
    .turnin 353 >> Turn in Stormpike's Delivery
step
    #sticky
    #label Meat9
    .goto Loch Modan,26.9,10.7,90,0
    .goto Loch Modan,30.9,10.6,90,0
    .goto Loch Modan,28.6,15.4,90,0
    .goto Loch Modan,30.5,26.6,90,0
    .goto Loch Modan,33.4,30.3,90,0
    .goto Loch Modan,39.4,33.3,90,0
    .goto Loch Modan,26.9,10.7,90,0
    .goto Loch Modan,30.9,10.6,90,0
    .goto Loch Modan,28.6,15.4,90,0
    .goto Loch Modan,30.5,26.6,90,0
    .goto Loch Modan,33.4,30.3,90,0
    .goto Loch Modan,39.4,33.3,90,0
    .goto Loch Modan,26.9,10.7
    >>Kill Bears. Loot them for Meat
    .complete 418,2 --Bear Meat (3)
step
    #sticky
    #label Ichor9
    .goto Loch Modan,31.9,16.4,90,0
    .goto Loch Modan,28.0,20.6,90,0
    .goto Loch Modan,33.8,40.5,90,0
    .goto Loch Modan,36.2,30.9,90,0
    .goto Loch Modan,39.0,32.1,90,0
    .goto Loch Modan,31.9,16.4,90,0
    .goto Loch Modan,28.0,20.6,90,0
    .goto Loch Modan,33.8,40.5,90,0
    .goto Loch Modan,36.2,30.9,90,0
    .goto Loch Modan,39.0,32.1,90,0
    .goto Loch Modan,31.9,16.4
    >>Kill Spiders. Loot them for Ichor
    .complete 418,3 --Spider Ichor (3)
step
    .goto Loch Modan,38.0,34.9,90,0
    .goto Loch Modan,37.1,39.8,90,0
    .goto Loch Modan,29.8,35.9,90,0
    .goto Loch Modan,27.7,25.3,90,0
    .goto Loch Modan,28.6,22.6,90,0
    .goto Loch Modan,38.0,34.9,90,0
    .goto Loch Modan,37.1,39.8,90,0
    .goto Loch Modan,29.8,35.9,90,0
    .goto Loch Modan,27.7,25.3,90,0
    .goto Loch Modan,28.6,22.6,90,0
    .goto Loch Modan,38.0,34.9
    >>Kill Boars. Loot them for Intestines
    .complete 418,1 --Boar Intestines (3)
step
    #requires Meat9
step
    #sticky
    #label RatCatching
    #requires Ichor9
    .goto Loch Modan,32.6,49.9,80.0,0
    .goto Loch Modan,37.2,46.1,80.0,0
    .goto Loch Modan,36.7,41.6
    >>Find Kadrell. He patrols along the Thelsamar road
    .turnin 416 >> Turn in Rat Catching
step
    .goto Loch Modan,34.82,49.28
    .turnin 418 >> Turn in Thelsamar Blood Sausages
step
    .goto Loch Modan,34.8,48.6
    .vendor >> Buy 1 Flint and Tinder, and 2 Simple Wood. Buy more 6 slots if needed
    .collect 4470,2 --Simple Wood (2)
    .collect 4471,1 --Flint and Tinder (1)
step
    #requires RatCatching
    .goto Loch Modan,27.4,48.4
    >>Kill Stonesplinter Troggs. Loot them for their Teeth
    .complete 224,1 --Kill Stonesplinter Trogg (x10)
    .complete 224,2 --Kill Stonesplinter Scout (x10)
    .complete 267,1 --Collect Trogg Stone Tooth (x8)
step
    #era
    .goto Loch Modan,27.4,48.4
    .xp 13+9600 >> Grind until 9600+/11400xp
step
    #som
    .goto Loch Modan,27.4,48.4
    .xp 14-2300 >> Grind until you are 2300xp away from level 14 (9100/11400)
step
    .goto Loch Modan,22.07,73.12
    .turnin 224 >> Turn in In Defense of the King's Lands
step
    .goto Loch Modan,23.23,73.67
    .turnin 267 >> Turn in The Trogg Threat
step << !Dwarf/!Paladin
    .goto Loch Modan,33.93,50.95
    .fly Ironforge>> Fly to Ironforge
step << Dwarf Paladin
    #completewith next
    .goto Dun Morogh,87.1,51.1
    .zone Dun Morogh >> Head to Dun Morogh
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
    .hs >> Hearth to Stormwind
step << Warrior
    .goto Ironforge,65.89,88.43
    .trainer >> Train your class spells
step << Warrior
    .goto Ironforge,62.0,89.6
    .train 176 >>Train Thrown
step << Mage
    .goto Ironforge,27.18,8.61
    .trainer >> Train your class spells
step << Mage/Priest/Warlock
    #softcore
    #sticky
    #label Wand1
    #completewith Wand2
     >>Try to buy a Greater Magic Wand from the AH if it costs <33s 40c
    .goto Ironforge,25.74,75.43
    .collect 11288,1 --Greater Magic Wand (1)
step << Mage/Priest/Warlock
    #softcore
    #label Wand2
    #completewith Wand1
     >>If you can't find a Greater Magic Wand for a good price, buy a Smoldering Wand from the wand vendor
    .goto Ironforge,24.09,16.63,14,0
    .goto Ironforge,23.13,15.96
    .collect 5208,1 --Smoldering Wand (1)
step << Mage/Priest/Warlock
    #hardcore
     >>Go in the building. Buy a Smoldering Wand
    .goto Ironforge,24.09,16.63,14,0
    .goto Ironforge,23.13,15.96
    .collect 5208,1 --Smoldering Wand (1)
step << Warlock
    #softcore
    #requires Wand2
    .goto Ironforge,51.1,8.7,15,0 >> Enter the building
    .goto Ironforge,50.4,6.3
    .trainer >> Train your class spells
step << Warlock
    #hardcore
    .goto Ironforge,51.1,8.7,15,0 >> Enter the building
    .goto Ironforge,50.4,6.3
    .trainer >> Train your class spells
step << Warlock
    .goto Ironforge,53.2,7.8,15,0 >> Enter the building
    .goto Ironforge,53.0,6.4
    .vendor >> Buy Consume Shadows r1, then Sacrifice r1 books (if you have money)
step << Rogue
    #sticky
    #label Salvation
    .isOnQuest 2218
    .goto Ironforge,51.50,15.34
    .turnin 2218 >> Turn in Road to Salvation
step << Rogue
    .goto Ironforge,51.50,15.34
    .trainer >> Go upstairs. Train your class spells
step << Priest
    .goto Ironforge,25.20,10.75
    .trainer >> Train your class spells
step << Paladin
   .goto StormwindClassic,42.66,33.75,30,0
    .goto StormwindClassic,38.68,32.85
    .trainer >> Train your class spells
step << Rogue
    #requires Salvation
    #completewith next
    +Perform a Logout skip by jumping on top of one of the Gryphon's heads, and logging out, then back in
    .link https://www.youtube.com/watch?v=PWMJhodh6Bw >> CLICK HERE
step << !Paladin !Rogue
    #completewith next
    +Perform a Logout skip by jumping on top of one of the Gryphon's heads, and logging out, then back in
    .link https://www.youtube.com/watch?v=PWMJhodh6Bw >> CLICK HERE
step << Rogue
    #requires Salvation
    .goto Ironforge,76.54,51.15,60,0
    .goto Ironforge,76.54,51.15,0
    .zone Stormwind City >> Take the tram to Stormwind City
    >>Train first aid while wating/riding the tram, you'll need 80 points in first aid for a level 24 quest later down the road << Rogue
step << !Paladin !Rogue
    .goto Ironforge,76.54,51.15,60,0
    .goto Ironforge,76.54,51.15,0
    .zone Stormwind City >> Take the tram to Stormwind City
]])

RXPGuides.RegisterGuide([[
#classic
#era/som
<< Alliance Hunter
#name 1-6 Coldridge Valley (Hunter)
#version 1
#group RestedXP Alliance 1-20
#defaultfor Dwarf
#next 6-11 Dun Morogh (Hunter)
step << !Gnome !Dwarf
    #sticky
    #completewith next
    .goto Dun Morogh,29.9,71.2
    +You have selected a guide meant for Gnomes and Dwarves. You should choose the same starter zone that you start in
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
    #sticky
    #label Rockjaw
    >>Kill Rockjaw Troggs
    .goto Dun Morogh,29.20,76.08,0
    .goto Dun Morogh,26.38,73.07,0
    .complete 170,1 --Kill Rockjaw Trogg (x6)
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
step
    .goto Dun Morogh,22.6,71.4
    >>Speak to Talin Keeneye
    .turnin 233 >>Turn in Coldridge Valley Mail Delivery
    .accept 234 >>Accept Coldridge Valley Mail Delivery
    .accept 183 >>Accept The Boar Hunter
step
    .goto Dun Morogh,22.2,72.5,100,0
    .goto Dun Morogh,20.5,71.4,100,0
    .goto Dun Morogh,21.1,69.0,100,0
    .goto Dun Morogh,22.8,69.6,100,0
    .goto Dun Morogh,22.2,72.5,100,0
    .goto Dun Morogh,20.5,71.4,100,0
    .goto Dun Morogh,21.1,69.0
    >>Kill Boars in the area
    .complete 183,1 --Kill Small Crag Boar (x12)
step
    .goto Dun Morogh,22.6,71.4
    .turnin 183 >>Turn in The Boar Hunter
step
    .goto Dun Morogh,25.1,75.7
    >>Speak to Grelin Whitebeard
    .turnin 234 >>Turn in Coldridge Valley Mail Delivery
    .accept 182 >>Accept The Troll Cave
step
    #completewith next
    .goto Dun Morogh,22.7,79.3
    .goto Dun Morogh,20.9,75.7,0
    .goto Dun Morogh,27.3,79.7,0
    >>Kill Frostmane Troll Whelps
    .complete 182,1 --Kill Frostmane Troll Whelp (x14)
step
    .xp 4 >> Grind to 4
step
    #requires Rockjaw
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
    #completewith next
    .goto Dun Morogh,30.09,71.58
    >>Buy 2 stacks of ammo
    .collect 2516,400
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
    .goto Dun Morogh,22.7,79.3
    .goto Dun Morogh,20.9,75.7,0
    .goto Dun Morogh,27.3,79.7,0
    >>Kill Frostmane Troll Whelps
    .complete 182,1 --Kill Frostmane Troll Whelp (x14)
    .goto Dun Morogh,25.1,75.7
step
    .goto Dun Morogh,25.0,75.9
    .turnin 182 >>Turn in The Troll Cave
    .accept 218 >>Accept The Stolen Journal
step
    .goto Dun Morogh,26.8,79.9,40,0
    .goto Dun Morogh,29.0,79.0,25,0
    .goto Dun Morogh,30.6,80.3
    >>Enter the Troll cave. Kill Grik'nir, then loot him for Grelin's journal
    .complete 218,1 --Collect Grelin Whitebeard's Journal (x1)
step
    #completewith next
    .goto Dun Morogh,28.4,79.7,35,0
    .goto Dun Morogh,26.8,79.6,25 >>Run back out the cave
step
    .goto Dun Morogh,25.1,75.7
    .turnin 218 >> Turn in The Stolen Journal
    .accept 282 >> Accept Senir's Observations
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
    .goto Dun Morogh,34.1,71.6,20,0
    .goto Dun Morogh,35.7,66.0,0
    .goto Dun Morogh,35.7,66.0,20 >>Go through the tunnel
]])

RXPGuides.RegisterGuide([[
#classic
#era/som
<< Alliance Hunter
#name 6-11 Dun Morogh (Hunter)
#version 1
#group RestedXP Alliance 1-20
#defaultfor Dwarf Hunter
#next 11-13 Loch Modan (Hunter)
step
    #completewith ribs1
    >> Kill Boars to get some Boar Meat/Ribs for later
    .collect 769,4 --Collect Chunk of Boar Meat (x4)
    .collect 2886,6 --Collect Crag Boar Rib (x6)
step
    .goto Dun Morogh,46.7,53.8
    .turnin 420 >> Turn in Senir's Observations
step
    #label ribs1
    .goto Dun Morogh,46.8,52.4
    .accept 384 >>Accept Beer Basted Boar Ribs
step
    .goto Dun Morogh,47.2,52.2
    .turnin 2160 >>Turn in Supplies to Tannok
step
    .goto Dun Morogh,46.0,51.7
    .accept 400 >>Accept Tools for Steelgrill
step
    .goto Dun Morogh,49.5,48.3
    .accept 317 >>Accept Stocking Jetsteam
step
    .goto Dun Morogh,49.6,48.5
    .accept 313 >>Accept The Grizzled Den
step
    .goto Dun Morogh,50.1,49.4
    .accept 5541 >>Accept Ammo for Rumbleshot
step
    .goto Dun Morogh,50.4,49.1
    .turnin 400 >>Turn in Tools for Steelgrill
step
    #sticky
    #completewith BoarRibs2
    >> Kill boars to get Boar Ribs for later
    .collect 2886,6 --Collect Crag Boar Rib (x6)
step
    .goto Dun Morogh,52.0,50.1,100,0
    .goto Dun Morogh,51.5,53.9,100,0
    .goto Dun Morogh,50.1,53.9,100,0
    .goto Dun Morogh,49.9,50.9,100,0
    .goto Dun Morogh,48.0,49.5,100,0
    .goto Dun Morogh,48.2,46.9,100,0
    .goto Dun Morogh,43.5,52.5,100,0
    .goto Dun Morogh,52.0,50.1,100,0
    .goto Dun Morogh,51.5,53.9,100,0
    .goto Dun Morogh,50.1,53.9,100,0
    .goto Dun Morogh,49.9,50.9,100,0
    .goto Dun Morogh,48.0,49.5,100,0
    .goto Dun Morogh,48.2,46.9,100,0
    .goto Dun Morogh,43.5,52.5,100,0
    .goto Dun Morogh,52.0,50.1,100,0
    .goto Dun Morogh,51.5,53.9,100,0
    .goto Dun Morogh,50.1,53.9,100,0
    .goto Dun Morogh,49.9,50.9,100,0
    .goto Dun Morogh,48.0,49.5,100,0
    .goto Dun Morogh,48.2,46.9,100,0
    .goto Dun Morogh,43.5,52.5,100,0
    .goto Dun Morogh,52.0,50.1,0
    .goto Dun Morogh,51.5,53.9,0
    .goto Dun Morogh,50.1,53.9,0
    .goto Dun Morogh,49.9,50.9,0
    .goto Dun Morogh,48.0,49.5,0
    .goto Dun Morogh,48.2,46.9,0
    .goto Dun Morogh,43.5,52.5
    >>Get the items for Stocking Jetsteam
    .complete 317,1 --Collect Chunk of Boar Meat (x4)
    .complete 317,2 --Collect Thick Bear Fur (x2)
step
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
    >>Loot the crate
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
    .goto Dun Morogh,42.25,53.68,40,0
    .goto Dun Morogh,41.07,49.04,50,0
    .goto Dun Morogh,42.25,53.68
    >> Go into the cave. Kill Wendigos. Loot them for their Manes
    .complete 313,1 --Collect Wendigo Mane (x8)
step
    .xp 7
step
    >>Grind some mobs en route
    .goto Dun Morogh,35.2,56.4,60,0
    .goto Dun Morogh,36.0,52.0,60,0
    .goto Dun Morogh,34.6,51.7
    .accept 312 >> Accept Tundra MacGrann's Stolen Stash
step << !Mage
    .goto Dun Morogh,38.5,54.0
    >>Wait until Old Icebeard leaves the cave so you can sneak in and loot the chest, or do this
        .link https://www.youtube.com/watch?v=o55Y3LjgKoE >>CLICK HERE
    .complete 312,1 --MacGrann's Dried Meats (1)
step
    .goto Dun Morogh,34.6,51.6
    .turnin 312 >>Turn in Tundra MacGrann's Stolen Stash
step
    .goto Dun Morogh,30.4,45.8
    .vendor >> vendor trash
step
    .goto Dun Morogh,30.2,45.8
    >>Speak to Rejold Barleybrew
    .turnin 318 >>Turn in Evershine
    .accept 319 >>Accept A Favor for Evershine
    .accept 315 >>Accept The Perfect Stout
step
    #label BoarRibs2
    .goto Dun Morogh,30.2,45.4
    >>Speak to Marleth Barleybrew
    .accept 310 >>Accept Bitter Rivals
step
    #completewith next
    >> Kill Bears, Boars and Leopards
    .complete 319,1 --Kill Ice Claw Bear (x6)
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .complete 319,3 --Kill Snow Leopard (x8)
step << Hunter
    #era
    .goto Dun Morogh,46.7,53.8
    .complete 384,1
    .xp 8-1400 >>Grind until you are 1400 xp away from level 8.
step << Hunter
    #som
    .goto Dun Morogh,46.7,53.8
    .complete 384,1
    .xp 8-1950 >>Grind until you are 1950 xp away from level 8.
step
    #completewith next
    .deathskip >> Die on purpose and respawn at Kharanos
step << Hunter
    .goto Dun Morogh,49.6,48.5
    .turnin 313 >>Turn in The Grizzled Den
step
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
    .home >> Set your Hearthstone to Kharanos
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
    #sticky
    #label favor
    >> Kill Bears, Boars and Leopards
    .complete 319,1 --Kill Ice Claw Bear (x6)
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .complete 319,3 --Kill Snow Leopard (x8)
step
    .goto Dun Morogh,63.1,49.8
    >>Speak to Rudra Amberstill
    .accept 314 >>Accept Protecting the Herd
step
    #sticky
    #completewith next
    .goto Dun Morogh,62.3,50.3,12,0
    .goto Dun Morogh,62.2,49.4,8 >>Run up this part of the mountain
step
    .goto Dun Morogh,62.6,46.1
    >>Kill Vagash. Loot him for his Fang, this quest is HARD, try to kite him to the guard parked at the intersection
    .complete 314,1 --Collect Fang of Vagash (x)
    .link https://www.youtube.com/watch?v=ZJX6sCkm5JY >> CLICK HERE for a guide on how to solo Vagash
step
    .goto Dun Morogh,63.1,49.8
    .turnin 314 >> Turn in Protecting the Herd
    .isQuestComplete 314
step
    .goto Dun Morogh,83.8,39.2
    .accept 419 >> Accept The Lost Pilot
step
    .goto Dun Morogh,79.7,36.2
    .turnin 419 >> Turn in The Lost Pilot
    .accept 417 >> Accept A Pilot's Revenge
step
    >>Kill Mangeclaw. Loot him for his Claw, this quest can be hard, kite him to the guard parked next to the quest giver
    .goto Dun Morogh,80.0,36.4
    .complete 417,1 --Collect Mangy Claw (x1)
step
    .goto Dun Morogh,83.9,39.2
    .turnin 417 >> Turn in A Pilot's Revenge
step
    #hardcore
    .hs >> Hearth to Kharanos
step
    #softcore
    .goto Dun Morogh,47.11,55.01
    .deathskip >> Die on purpose and respawn at Kharanos
step
    #era
    .goto Dun Morogh,45.8,49.4
    .accept 412 >> Accept Operation Recombobulation
step
    #completewith next
    .goto Dun Morogh,43.1,45.0,20,0
    .goto Dun Morogh,42.1,45.4,20 >> Run up the ramp to Shimmerweed
step
    .goto Dun Morogh,40.9,45.3,50,0
    .goto Dun Morogh,41.5,43.6,50,0
    .goto Dun Morogh,39.7,40.0,50,0
    .goto Dun Morogh,42.1,34.3,50,0
    .goto Dun Morogh,39.5,43.0
    .goto Dun Morogh,41.5,36.0
    >>Clear mobs in this area. Be careful if you need to clear the middle camp. You can pull the mobs in the huts and line of sight (LoS) them behind the huts if you need 2 more mobs. If you get unlucky, run to the other area
    .complete 315,1 --Collect Shimmerweed (x6)
step
    #sticky
    #requires favor
    #label return
    .goto Dun Morogh,30.2,45.7
    >>Speak to Rejold Barleybrew
    .turnin 319 >>Turn in A Favor for Evershine
    .accept 320 >>Accept Return to Bellowfiz
step
    .goto Dun Morogh,30.2,45.5
    .turnin 311 >>Turn in Return to Marleth
    .turnin 315 >>Turn in The Perfect Stout
    .accept 413 >>Accept Shimmer Stout
step
    #requires return
    >>Enter the troll cave
    >>Be very careful not to die here
    .goto Dun Morogh,22.3,50.7,30,0
    .goto Dun Morogh,22.5,51.5,30,0
    .goto Dun Morogh,22.7,52.0
    .complete 287,1 --Fully explore Frostmane Hold (1)
    .complete 287,2 --Frostmane Headhunter (5)
step
    #era
    .goto Dun Morogh,27.2,43.0,80,0
    .goto Dun Morogh,24.8,39.3,80,0
    .goto Dun Morogh,25.6,43.4,80,0
    .goto Dun Morogh,24.3,44.0,80,0
    .goto Dun Morogh,25.4,45.4,80,0
    .goto Dun Morogh,25.00,43.50
    >>Kill Leper Gnomes. Loot them for Cogs and Gears
    .complete 412,1 --Collect Restabilization Cog (x8)
    .complete 412,2 --Collect Gyromechanic Gear (x8)
step
    #hardcore
    #completewith next
    .goto Dun Morogh,46.3,52.1,200 >> Start running back to Kharanos
step
    #era
    .xp 10-1470 >> Grind until you are 1450xp away from level 10
step
    #som
    .xp 10-2050 >> Grind until you are 2050xp away from level 10
step
    #softcore
    .goto Dun Morogh,30.9,33.1,15 >>Run up the mountain north
step
    #softcore
    .goto Dun Morogh,32.4,29.1,15 >>Follow it up to here
step
    #softcore
    .goto Dun Morogh,33.0,27.2,25,0
    .goto Dun Morogh,33.0,25.2,25,0
    .goto Wetlands,11.6,43.4,60,0
    .goto Wetlands,11.6,43.4,0
    .deathskip >>Keep running straight north, Jump down and die once the General Chat changes to Wetlands, then respawn at Menethil Harbor
step
    #completewith next
    #softcore
    .goto Wetlands,12.7,46.7,80,0 >> Swim to shore
step
    #softcore
    .goto Wetlands,9.5,59.7
    .fp Menethil>> Get the Menethil Harbor flight path
step
    #softcore
    #completewith next
    .hs >> Hearth back to Kharanos
step
    .goto Dun Morogh,46.7,53.7
    .turnin 287 >>Turn in Frostmane Hold
    .accept 291 >>Accept The Reports
step
    #era
    .goto Dun Morogh,45.9,49.4
    .turnin 412 >>Turn in Operation Recombobulation
step
    .goto Dun Morogh,49.4,48.3
    .turnin 320 >>Turn in Return to Bellowfiz
step
    .goto Dun Morogh,45.8,53.0
    .accept 6064 >>Accept Taming the Beast
step
    .goto Dun Morogh,48.3,56.9
    >>Click the taming rod in your bag on a Large Crag Boar. Try to do it at max range (30 yards)
    .complete 6064,1 --Tame a Large Crag Boar (1)
step
    .goto Dun Morogh,45.8,53.0
    .turnin 6064 >>Turn in Taming the Beast
    .accept 6084 >>Accept Taming the Beast
step
    .goto Dun Morogh,49.4,59.4
    >>Click the taming rod in your bag on a Snow Leopard. Try to do it at max range (30 yards)
    .complete 6084,1 --Tame a Snow Leopard (1)
step
    .goto Dun Morogh,45.8,53.0
    .turnin 6084 >>Turn in Taming the Beast
    .accept 6085 >>Accept Taming the Beast
step
    .goto Dun Morogh,50.4,59.7
    >>Click the taming rod in your bag on an Ice Claw Bear. Try to do it at max range (30 yards)
    .complete 6085,1 --Tame an Ice Claw Bear (1)
step
    .goto Dun Morogh,45.8,53.0
    .turnin 6085 >>Turn in Taming the Beast
    .accept 6086 >>Accept Training the Beast
step
    .goto Dun Morogh,68.7,56.0
    .accept 433 >> Accept The Public Servant
step
    .goto Dun Morogh,69.1,56.3
    .accept 432 >> Accept Those Blasted Troggs!
step
    .goto Dun Morogh,70.7,56.4,50,0
    .goto Dun Morogh,70.62,52.39
    >>Kill Troggs in the cave
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .complete 433,1 --Kill Rockjaw Bonesnapper (x10)
step
    .goto Dun Morogh,69.1,56.3
    .turnin 432 >> Turn in Those Blasted Troggs!
step
    .goto Dun Morogh,68.7,56.0
    .turnin 433 >> Turn in The Public Servant
step << skip
    .goto Dun Morogh,68.4,54.5
    .train 2550 >> Train Cooking from Ghilm
step
    .goto Dun Morogh,86.3,48.8
    .turnin 413 >> Turn in Shimmer Stout
    .accept 414 >> Accept Stout to Kadrell
]])

RXPGuides.RegisterGuide([[
#classic
#era/som
<< Alliance Hunter
#name 11-13 Loch Modan (Hunter)
#version 1
#group RestedXP Alliance 1-20
#defaultfor Dwarf
#next 11-16 Darkshore

step
    .goto Loch Modan,22.07,73.12
    >>Head to Loch Modan
    .accept 224 >> Accept In Defense of the King's Lands
step
    .goto Loch Modan,23.23,73.67
    .accept 267 >> Accept The Trogg Threat
step
    #sticky
    #label ratcatching
     >> Talk to the guard patrolling Thelsamar
    .accept 416 >> Accept Rat Catching
    .accept 1339 >> Accept Mountaineer Stormpike's Task
step
    .goto Loch Modan,34.82,49.28
    .accept 418 >> Accept Thelsamar Blood Sausages
step
       .goto Loch Modan,35.5,48.4
    .home >> Set your Hearthstone to Loch Modan
step
    .goto Loch Modan,37.01,47.80
    .accept 6387 >> Accept Honor Students
step
    #requires ratcatching
    .goto Loch Modan,33.93,50.95
    .turnin 6387 >> Turn in Honor Students
    .accept 6391 >> Accept Ride to Ironforge
step
     #completewith next
    .fly Ironforge>> Fly to  Ironforge
step
    .goto Ironforge,51.52,26.31
    .turnin 6391 >> Turn in Ride to Ironforge
    .accept 6388 >> Accept Gryth Thurden
step
    .goto Dun Morogh,57.42,30.31
    .turnin 291 >> Turn in The Reports
step <<  Hunter
    .goto Ironforge,70.86,85.83
    .turnin 6086 >> Turn in Training the Beast
step
    .goto Ironforge,55.50,47.74
    .turnin 6388 >> Turn in Gryth Thurden
    .accept 6392 >> Accept Return to Brock
step
    #completewith next
    .fly Loch Modan>> Fly to Loch Modan
step
    .goto Loch Modan,37.0,47.8
    >>Go inside the building, then go downstairs. Talk to Brock
    .turnin 6392 >> Turn in Return to Brock
step
    .goto Loch Modan,35.8,43.5
    >>Buy a level 9 gun upgrade from Vrok Blunderblast if you have 13s to spare
    .collect 2511,1
step
    #completewith sausage
     >> Kill Spiders/Bears/Boars
    .complete 418,1
    .complete 418,2
    .complete 418,3
step
    .goto Loch Modan,24.76,18.39
    .turnin 1339 >> Turn in Mountaineer Stormpike's Task
step
    .goto Loch Modan,24.76,18.39
    .accept 307 >> Accept Filthy Paws
step
    .goto Loch Modan,24.76,18.39
    .accept 1338 >> Accept Stormpike's Order
step
    #sticky
    #label crates
    .goto Loch Modan,35.48,24.36
     >> Loot the crates inside the mine
    .complete 307,1
step
    #sticky
    #requires crates
    #label q307
    .goto Loch Modan,24.76,18.39
    .turnin 307 >> Turn in Filthy Paws
step
    .goto Loch Modan,24.3,30.3
    .goto Loch Modan,36.42,24.56
     >> Kill kobolds
    .complete 416,1
step
    #requires q307
    #label sausage
    >>Finish off Boars/Bears/Spiders on your way back to Thelsamar
    .turnin 418 >> Turn in Thelsamar Blood Sausages
    .goto Loch Modan,34.82,49.28
    .turnin 416 >> Turn in Rat Catching
    .goto Loch Modan,34.26,47.70
step
    .goto Loch Modan,32.55,74.61
    >>Kill Troggs
    .complete 224,1
    .complete 224,2
    .complete 267,1
step
    .goto Loch Modan,22.07,73.12
    .turnin 224 >> Turn in In Defense of the King's Lands
step
    .goto Loch Modan,23.23,73.67
    .turnin 267 >> Turn in The Trogg Threat
step
    .goto Loch Modan,65.93,65.62
    .accept 298 >> Accept Excavation Progress Report
step
    .goto Loch Modan,83.46,65.45
    .accept 257 >> Accept A Hunter's Boast
step
    .goto Loch Modan,77.30,61.45
    >>Kill birds around the hunting lodge, this is a difficult quest but it gives you a good weapon upgrade
    .complete 257,1
step
    .goto Loch Modan,83.46,65.45
    .turnin 257 >> Turn in A Hunter's Boast
step
    #sticky
    .goto Loch Modan,82.60,63.40
     >> Buy materials to make a campfire
    .collect 4470,1
    .collect 4471,1
step
    #hardcore
    .hs >> Hearth to Thelsamar
step
     #completewith next
    .deathskip >> Pull mobs and die on purpose, respawn at Thelsamar
step
    .goto Loch Modan,37.23,47.38
    .turnin 298 >> Turn in Excavation Progress Report
    .accept 301 >> Accept Report to Ironforge
step
    .goto Loch Modan,33.93,50.95
    .fly Ironforge>> Fly to Ironforge
step
    .goto Ironforge,60.0,36.8
    .train 2550 >> Make sure to train cooking in Ironforge
step
    .goto Ironforge,74.64,11.74
    .turnin 301 >> Turn in Report to Ironforge
step
    .goto Ironforge,74.40,51.10,30,0
    .goto Ironforge,74.40,51.10,0
     >> Enter the Deeprun Tram, speak with the gnome at the middle platform
    .accept 6661 >> Accept Deeprun Rat Roundup
step
    >>Use the flute provided on the rats around the station
    .complete 6661,1
step
    .turnin 6661 >> Turn in Deeprun Rat Roundup
    .accept 6662 >> Accept Me Brother, Nipsy
step
     >> Ride to the other side of the tram and turn in
    .turnin 6662 >> Turn in Me Brother, Nipsy
step
    #completewith next
    .goto StormwindClassic,60.5,12.3
    .zone Stormwind City >>Exit the tram into Stormwind
step
    #softcore
    .goto StormwindClassic,51.75,12.06
    .accept 353 >> Accept Stormpike's Delivery
step
    .goto StormwindClassic,58.08,16.52
    .turnin 1338 >> Turn in Stormpike's Order
step
    .goto StormwindClassic,57.23,57.29
    .trainer >> Train Staves
step
    #softcore
    .hs >> Hearth back
step
    #softcore
    .goto Loch Modan,24.76,18.39
    .turnin 353 >> Turn in Stormpike's Delivery
step
     #completewith next
     .deathskip >> Die and respawn at the graveyard
step
    #softcore
    #completewith next
    .goto Loch Modan,33.93,50.95
    .fly Wetlands>> Fly to Wetlands
step
    #hardcore
    .goto Dun Morogh,52.6,36.0
    .zone Dun Morogh >> Take the tram back to Ironforge and head out to Dun Morogh
step
    #hardcore
    #label skip1
    #completewith fp
    .goto Dun Morogh,60.6,44.1,25,0
    .goto Dun Morogh,62.1,41.5,20,0
    .goto Dun Morogh,61.3,32.5,20,0
    .goto Dun Morogh,61.8,17.0,20,0
    .goto Dun Morogh,61.1,13.6,15,0
    .goto Dun Morogh,60.7,9.8,15,0
    .goto Wetlands,18.9,71.8,40,0
    .zone >>Do the Wetlands mountain skip
    .goto Dun Morogh,60.6,44.1,0
    .goto Dun Morogh,62.1,41.5,0
    .goto Dun Morogh,61.3,32.5,0
    .goto Dun Morogh,61.8,17.0,0
    .goto Dun Morogh,61.1,13.6,0
    .goto Dun Morogh,60.7,9.8,0
    .goto Wetlands,18.9,71.8,0
    .link https://www.twitch.tv/videos/729674651 >> This skip is hard, click here for video reference
step
    #hardcore
    #label skip2
    #requires skip1
    #completewith fp
    .goto Wetlands,17.9,67.9,30,0
    .goto Wetlands,16.0,67.2,20,0
    .goto Wetlands,17.0,64.1,20,0
    .goto Wetlands,14.9,63.7,20,0
    +Head to Menethil Harbor, make sure to avoid aggroing the Crocolisks while crossing the sea.
    .goto Wetlands,17.9,67.9,0
    .goto Wetlands,16.0,67.2,0
    .goto Wetlands,17.0,64.1,0
    .goto Wetlands,14.9,63.7,0
    .link https://www.twitch.tv/videos/729674651 >> This skip is hard, click here for video reference
step
    #hardcore
    #label fp
    .goto Wetlands,9.5,59.7
    .fp Menethil Harbor >> Get the Menethil Harbor flight path
step
    .goto Wetlands,4.6,57.2
    .zone Darkshore >>Head to the Menethil Harbor docks and take the boat to Darkshore
    >>Make a campfire and level cooking while you wait
    >>Train first aid while waiting for the boat, you'll need 80 points in first aid for a level 24 quest later down the road << Rogue
]])

RXPGuides.RegisterGuide([[
#classic
#som
#phase 3-6
<< Alliance !Hunter
#name 1-6 Coldridge
#version 1
#group RestedXP Alliance 1-20
#defaultfor Dwarf/Gnome
#next 6-12 Dun Morogh
step << !Gnome !Dwarf
    #completewith next
    .goto Dun Morogh,29.9,71.2
    +You have selected a guide meant for Gnomes and Dwarves. You should choose the same starter zone that you start in
step << Mage
    #completewith next
    +Note that you have selected the single target mage guide. Single target is a lot safer than AoE Mage, and a lot faster with the new 100% Quest xp change
step
    >>Delete your Hearthstone << !Warlock
    .goto Dun Morogh,29.9,71.2
    .accept 179 >> Accept Dwarven Outfitters
step << Warrior/Warlock
    #sticky
    #completewith next
    .goto Dun Morogh,28.6,72.2,20,0
    +Kill Wolves for 10c+ of vendor trash, then enter the building
step << Warrior/Warlock
    .goto Dun Morogh,28.8,69.2,30 >>Enter the building
step << Warrior
    .goto Dun Morogh,28.7,67.7
    .vendor >> vendor trash
step << Warrior
    .goto Dun Morogh,28.8,67.2
    .trainer >>Train Battle Shout
step << Warlock
    .goto Dun Morogh,28.8,66.2
    .vendor >> Go to the back, upstairs, then talk to the Demon Trainer. Vendor trash
step << Warlock
    .goto Dun Morogh,28.6,66.1
    .trainer >>Train Immolate
    .accept 1599 >> Accept Beginnings
step
    >>Kill Wolves. Loot them for Meat
    .goto Dun Morogh,28.7,74.8
    .complete 179,1 --Collect Tough Wolf Meat (x8)
step
    .xp 2 >> Grind to 2
step << Warlock
    #softcore
    #sticky
    #completewith next
    .goto Dun Morogh,26.8,79.8,40,0
    .goto Dun Morogh,30.1,82.4,30 >> Kill some Wolves en route, then watch this
    .link https://www.youtube.com/watch?v=iUvGsRbIVp8 >> CLICK HERE
step << Warlock
    >>Kill Frostmane Novices inside the cave. Loot them for Feather Charms
    .goto Dun Morogh,29.0,82.6,50,0
    .goto Dun Morogh,29.0,81.2,60,0
    .goto Dun Morogh,30.1,82.4
    .complete 1599,1 --Collect Feather Charm (x3)
step << Warlock
    #softcore
    .goto Dun Morogh,29.5,69.8,100 >> Die and respawn at the Spirit Healer
step << Warlock
    #hardcore
    .hs >> Hearth back to Coldridge Valley
step << Warlock
    >>Go back to the Warlock Trainer
    .goto Dun Morogh,28.6,66.1
    .turnin 1599 >> Turn in Beginnings
step << Priest/Mage/Warlock
    .goto Dun Morogh,30.0,71.5
    >>Summon your Imp and rebuff Demon Skin en route << Warlock
    .vendor >>vendor trash, repair. Buy 15 Water. Grind extra wolves if you don't have enough money
    .collect 159,15 --Collect Refreshing Spring Water (x15)
step << Paladin/Warrior
    .goto Dun Morogh,30.0,71.5
    .vendor >>vendor trash
step
    .goto Dun Morogh,29.9,71.2
    .turnin 179 >> Turn in Dwarven Outfitters
    .accept 233 >> Accept Coldridge Valley Mail Delivery
    .accept 3106 >> Accept Simple Rune << Dwarf Warrior
    .accept 3107 >> Accept Consecrated Rune << Paladin
    .accept 3109 >> Accept Encrypted Rune << Dwarf Rogue
    .accept 3110 >> Accept Hallowed Rune << Priest
    .accept 3112 >> Accept Simple Memorandum << Gnome Warrior
    .accept 3113 >> Accept Encrypted Memorandum << Gnome Rogue
    .accept 3114 >> Accept Glyphic Memorandum << Mage
    .accept 3115 >> Accept Tainted Memorandum << Gnome Warlock
step
    .goto Dun Morogh,22.6,71.4
    .turnin 233 >> Turn in Coldridge Valley Mail Delivery
    .accept 183 >> Accept The Boar Hunter
    .accept 234 >> Accept Coldridge Valley Mail Delivery
step
    .goto Dun Morogh,22.2,72.5,100,0
    .goto Dun Morogh,20.5,71.4,100,0
    .goto Dun Morogh,21.1,69.0,100,0
    .goto Dun Morogh,22.8,69.6,100,0
    .goto Dun Morogh,22.2,72.5,100,0
    .goto Dun Morogh,20.5,71.4,100,0
    .goto Dun Morogh,21.1,69.0
    >>Kill Boars in the area
    .complete 183,1 --Kill Small Crag Boar (x12)
step
    .goto Dun Morogh,22.6,71.4
    .turnin 183 >> Turn in The Boar Hunter
step << Paladin/Mage/Warlock
    .xp 3+860 >> Grind to 860+/1400xp
    .goto Dun Morogh,23.0,75.0,100,0
    .goto Dun Morogh,24.2,72.5,100,0
    .goto Dun Morogh,27.7,76.3,100,0
    .goto Dun Morogh,23.0,75.0,100,0
    .goto Dun Morogh,24.2,72.5
step
    #label Rockjaw
    .goto Dun Morogh,25.1,75.7
    .turnin 234 >> Turn in Coldridge Valley Mail Delivery
    .accept 182 >> Accept The Troll Cave
step << Paladin/Mage/Warlock
    .goto Dun Morogh,25.0,76.0
    .accept 3364 >> Accept Scalding Mornbrew Delivery
    >> Once accepted, a 5 minute timer will start. Relax and follow the guide
step << Paladin/Mage/Warlock
    #sticky
    #completewith Scalding1
    >>If you were too slow and failed the timed quest, go and pick it up again
    .goto Dun Morogh,25.0,76.0,0
    .accept 3364 >> Accept Scalding Mornbrew Delivery
    .goto Dun Morogh,28.8,66.4
    .turnin 3364 >> Turn in Scalding Mornbrew Delivery
step << Paladin/Mage/Warlock
    #label Scalding1
    .goto Dun Morogh,28.8,66.4
    .turnin 3364 >> Turn in Scalding Mornbrew Delivery
    .accept 3365 >> Accept Bring Back the Mug
    .vendor >> vendor trash
step << Paladin/Mage/Warlock
    .goto Dun Morogh,28.55,67.64
    .accept 3361 >>Accept A Refugee's Quandary
step << Dwarf Paladin
    .goto Dun Morogh,28.8,68.3
    .turnin 3107 >> Turn in Consecrated Rune
    .trainer >> Train your class spells
step << Gnome Mage
    .goto Dun Morogh,28.7,66.4
    .turnin 3114 >> Turn in Glyphic Memorandum
    .trainer >> Train your class spells
step << Warlock
    .goto Dun Morogh,28.6,66.1
    .trainer >> Go Upstairs. Train your Corruption
    .turnin 3115 >> Turn in Tainted Memorandum
step << Mage/Warlock
    .goto Dun Morogh,30.0,71.5
    .vendor >>Vendor, buy 10 water
    .collect 159,10 --Collect Refreshing Spring Water (x10)
step << Paladin/Mage/Warlock
    #completewith FelixB
    .goto Dun Morogh,20.9,75.7,0
    >>Kill Frostmane Troll Whelps
    .complete 182,1 --Kill Frostmane Troll Whelp (x14)
step << Paladin/Mage/Warlock
    >>Loot the bucket on the ground
    .goto Dun Morogh,26.33,79.28
    .complete 3361,3 --Felix's Bucket of Bolts (1)
step << Paladin/Mage/Warlock
    >>Loot the chest on the ground
    .goto Dun Morogh,22.78,80.00
    .complete 3361,2 --Felix's Chest (1)
step << Paladin/Mage/Warlock
    #label FelixB
    >>Loot the box on the ground
    .goto Dun Morogh,20.88,76.07
    .complete 3361,1 --Felix's Box (1)
step << Paladin/Mage/Warlock
    .goto Dun Morogh,26.3,79.2,90,0
    .goto Dun Morogh,22.7,79.3,90,0
    .goto Dun Morogh,20.9,75.7,90,0
    .goto Dun Morogh,22.7,79.3,90,0
    .goto Dun Morogh,20.9,75.7
    >>Kill Frostmane Troll Whelps
    .complete 182,1 --Kill Frostmane Troll Whelp (x14)
    .goto Dun Morogh,25.1,75.7
step << !Paladin !Mage !Warlock
    .goto Dun Morogh,22.7,79.3,90,0
    .goto Dun Morogh,20.9,75.7,90,0
    .goto Dun Morogh,22.7,79.3,90,0
    .goto Dun Morogh,20.9,75.7,90,0
    .goto Dun Morogh,22.7,79.3,90,0
    .goto Dun Morogh,20.9,75.7,90,0
    .goto Dun Morogh,22.7,79.3
    >>Kill Frostmane Troll Whelps
    .complete 182,1 --Kill Frostmane Troll Whelp (x14)
    .goto Dun Morogh,25.1,75.7
step << !Paladin !Mage !Warlock
    .goto Dun Morogh,25.0,76.0
    .abandon 3364 >> Abandon Scalding Mornbrew Delivery - You don't need it yet
step << !Paladin !Mage !Warlock
    .xp 4 >> Grind to 4
step << !Paladin !Mage !Warlock
    .goto Dun Morogh,25.1,75.7
    .turnin 182 >> Turn in The Troll Cave
    .accept 218 >> Accept The Stolen Journal
step << Paladin/Mage/Warlock
    .goto Dun Morogh,25.1,75.7
    .turnin 182 >> Turn in The Troll Cave
    .accept 218 >> Accept The Stolen Journal
step << !Paladin !Mage !Warlock
    #softcore
    .goto Dun Morogh,25.0,76.0
    .accept 3364 >> Accept Scalding Mornbrew Delivery
    >>You now have 5m to get the Journal, then turnin the Mornbrew. If you fail quest, pick it up again after dying
step << Paladin/Mage/Warlock
    .goto Dun Morogh,25.0,76.0
    .turnin 3365 >> Turn in Bring Back the Mug
step
    #softcore
    .goto Dun Morogh,26.8,79.9,30,0
    .goto Dun Morogh,29.0,79.0,15,0
    .goto Dun Morogh,30.6,80.3
    >>Enter the Troll cave. Kill Grik'nir, then loot him for Grelin's journal
    >>After killing Grik'nir, prepare to die and respawn at the Spirit Healer
    .complete 218,1 --Collect Grelin Whitebeard's Journal (x1)
step
    #hardcore
    .goto Dun Morogh,26.8,79.9,30,0
    .goto Dun Morogh,29.0,79.0,15,0
    .goto Dun Morogh,30.6,80.3
    >>Enter the Troll cave. Kill Grik'nir, then loot him for Grelin's journal
    .complete 218,1 --Collect Grelin Whitebeard's Journal (x1)
step << !Paladin !Mage !Warlock
    #hardcore
    .goto Dun Morogh,25.0,76.0
    .accept 3364 >> Accept Scalding Mornbrew Delivery
step << !Paladin !Mage !Warlock
    #hardcore
    .goto Dun Morogh,25.1,75.8
    .turnin 218 >> Turn in The Stolen Journal
    .accept 282 >> Accept Senir's Observations
step
    #softcore
    .goto Dun Morogh,29.5,69.8,100 >> Die and respawn at Spirit Healer
step << !Paladin !Mage !Warlock
    #sticky
    #completewith Scalding2
    >>If you were too slow and failed the timed quest, go and pick it up again
    .goto Dun Morogh,25.0,76.0,0
    .accept 3364 >> Accept Scalding Mornbrew Delivery
    .goto Dun Morogh,28.8,66.4
    .turnin 3364 >> Turn in Scalding Mornbrew Delivery
step << !Paladin !Mage !Warlock
    #label Scalding2
    .goto Dun Morogh,28.8,66.4
    .turnin 3364 >> Turn in Scalding Mornbrew Delivery
    .accept 3365 >> Accept Bring Back the Mug
    .vendor >> vendor trash
step << Paladin/Mage/Warlock
    .goto Dun Morogh,28.55,67.64
    >>Go inside the building
    .turnin 3361 >>Turn in A Refugee's Quandary
step << Rogue
    .goto Dun Morogh,28.4,67.5
    .turnin 3113 >> Turn in Encrypted Memorandum << Gnome Rogue
    .turnin 3109 >> Turn in Encrypted Rune << Dwarf Rogue
step << Dwarf Priest
    .goto Dun Morogh,28.6,66.4
    .turnin 3110 >> Turn in Hallowed Rune
    .trainer >> Train your class spells
step << Warrior
    .goto Dun Morogh,28.8,67.2
    .turnin 3106 >> Turn in Simple Rune << Dwarf Warrior
    .turnin 3112 >> Turn in Simple Memorandum << Gnome Warrior
    .trainer >> Train your class spells
step << Priest
    .money <0.0025
    .goto Dun Morogh,30.0,71.5
    .vendor >> Buy up to 10 water
step
    .goto Dun Morogh,25.1,75.8
    .turnin 218 >> Turn in The Stolen Journal
    .accept 282 >> Accept Senir's Observations
step << !Paladin !Mage !Warlock
    .goto Dun Morogh,25.0,76.0
    .turnin 3365 >> Turn in Bring Back the Mug
step
    .goto Dun Morogh,33.5,71.8
    .turnin 282 >> Turn in Senir's Observations
    .accept 420 >> Accept Senir's Observations
step
    .goto Dun Morogh,33.9,72.2
    .accept 2160 >> Accept Supplies to Tannok
step
    .goto Dun Morogh,34.1,71.6,20,0
    .goto Dun Morogh,35.7,66.0,0
    .goto Dun Morogh,35.7,66.0,20 >>Go through the tunnel
]])

RXPGuides.RegisterGuide([[
#classic
#som
#phase 3-6
<< Alliance !Hunter
#name 6-12 Dun Morogh
#version 1
#group RestedXP Alliance 1-20
#defaultfor Dwarf/Gnome
#next 11-12 Elwynn Warlock << Warlock
#next 11-14 Loch Modan << !Warlock
step << Paladin/Warrior/Rogue
    #sticky
    #completewith BearFur
    >> Kill Boars to get 4 Boar Meat for later
    .collect 769,4 --Collect Chunk of Boar Meat (x4)
step << !Paladin !Warrior !Rogue
    #sticky
    #completewith BoarMeat44
    >> Kill boars to get 4 Boar Meat for later
    .collect 769,4 --Collect Chunk of Boar Meat (x4)
step
    #sticky
    #completewith Ribs
    >> Kill boars to get 6 Boar Ribs for later
    .collect 2886,6 --Collect Crag Boar Rib (x6)
step << Priest
    >>grind boars north-east to Kharanos
    .goto Dun Morogh,36.4,62.9,45,0
    .goto Dun Morogh,37.7,60.5,45,0
    .goto Dun Morogh,43.9,55.7
    .xp 5+2145 >> Grind to 2145/+2800xp
step << !Priest
    >>grind boars north-east to Kharanos
    .goto Dun Morogh,36.4,62.9,45,0
    .goto Dun Morogh,37.7,60.5,45,0
    .goto Dun Morogh,43.9,55.7
    .xp 5+2415 >> Grind to 2415/+2800xp
step
    #completewith next
    #softcore
    .deathskip >> Die and respawn at the Spirit Healer, or run to Kharanos. Make sure your subzone is NOT Coldridge Pass
step
    #softcore
    .goto Dun Morogh,46.7,53.8
    .turnin 420 >> Turn in Senir's Observations
    .vendor >>vendor trash
step
    #hardcore
    >>Grind boars en route to Kharanos
    .goto Dun Morogh,46.7,53.8
    .turnin 420 >> Turn in Senir's Observations
    .vendor >>vendor trash
step << Warlock
    .goto Dun Morogh,47.3,53.7
    .trainer >> Train your class spells from Gimrizz
    .vendor >> Buy the Blood Pact book if you have money after training from Dannie (otherwise buy it later)
step << !Priest
    .goto Dun Morogh,48.3,57.0
    .xp 6 >> Grind to 6
step
    .goto Dun Morogh,46.8,52.4
    .accept 384 >> Accept Beer Basted Boar Ribs
step
    .goto Dun Morogh,47.2,52.2
    .turnin 2160 >> Turn in Supplies to Tannok
step << Rogue
    .goto Dun Morogh,47.2,52.4
    .vendor >> Buy the level 3 thrown from Kreg. Equip it
step << Rogue
    .goto Dun Morogh,47.6,52.6
    .trainer >> Train your class spells
step << Mage
    .goto Dun Morogh,47.5,52.1
    .trainer >> Train your class spells
step << Paladin
    .goto Dun Morogh,47.6,52.1
    .trainer >> Train your class spells
step << Priest
    .goto Dun Morogh,47.3,52.2
    .accept 5625 >> Accept Garments of the Light
step << Priest
    >>Use Lesser Heal Rank 2 and then Power Word: Fortitude on Mountaineer Dolf
    .goto Dun Morogh,45.8,54.6
     .complete 5625,1 --Heal and fortify Mountaineer Dolf
step << Priest
    .goto Dun Morogh,47.3,52.2
    .turnin 5625 >> Turn in Garments of the Light
    .trainer >> Train your class spells
step << Priest
    .xp 6 >> Grind to 6
step << Priest/Mage/Warlock
    .goto Dun Morogh,47.4,52.5
    .home >> Set your Hearthstone to Thunderbrew Distillery
    .vendor >> Buy as much level 5 drink as you can
step << !Mage !Priest !Warlock
    .goto Dun Morogh,47.4,52.5
    .home >> Set your Hearthstone to Thunderbrew Distillery
    .vendor >> vendor trash
step << Warrior
    .goto Dun Morogh,47.4,52.6
    .trainer >> Train your class spells
step << Paladin/Warrior
    .goto Dun Morogh,45.8,51.8,20 >> Go into the building
step << Gnome Warrior
    .goto Dun Morogh,45.3,52.2
    >>Repair your weapon. If you have enough money (5s 36c) buy a Gladius from Grawn. Otherwise, skip this step (you'll come back later)
    .collect 2488,1 --Collect Gladius (1)
step << Dwarf Warrior
    .goto Dun Morogh,45.3,52.2
     >>Repair your weapon. If you have enough money (4s 84c) buy a Large Axe from Grawn. Otherwise, skip this step (you'll come back later)
    .collect 2491,1 --Collect Large Axe (1)
step << Rogue
    .goto Dun Morogh,45.3,52.2
    >>Repair your weapon. If you have enough money (4s 1c) buy a Stiletto from Grawn. Otherwise, skip this step (you'll come back later)
    .collect 2494,1 --Collect Stiletto (1)
step << Paladin
    .goto Dun Morogh,45.3,52.2
    >>Repair your weapon. If you have enough money (7s 1c) buy a Wooden Mallet from Grawn. Otherwise, skip this step (you'll come back later)
    .collect 2493,1 --Collect Wooden Mallet (1)
step << Warrior/Rogue
    .goto Dun Morogh,45.3,51.9
    .trainer >> Train Blacksmithing. This will allow you to make +2 damage sharpening stones for your weapon which are very strong.
    >> If you want to go for your own professions, skip this step
step << Paladin
    .goto Dun Morogh,45.3,51.9
    .trainer >> Train Blacksmithing. This will allow you to make +2 damage weightstones for your weapon which are very strong.
    >> If you want to go for your own professions, skip this step
step
    .goto Dun Morogh,46.0,51.7
    .accept 400 >> Accept Tools for Steelgrill
step
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
    #label BoarMeat44
    .goto Dun Morogh,50.1,49.4
    .accept 5541 >> Accept Ammo for Rumbleshot
step << Warrior/Paladin/Rogue
    .money <0.0091
    .goto Dun Morogh,50.1,49.4
    .collect 2901,1 >> Buy a Mining Pick if you trained Blacksmithing
step << Warrior/Paladin/Rogue
    .goto Dun Morogh,50.01,50.31
    .trainer >>Go inside the house. Train Mining, cast Find Minerals
step
    #sticky
    #completewith BearFur
    >>Get the Bear Fur for Stocking Jetsteam as you quest
    .complete 317,2 --Collect Thick Bear Fur (x2)
step << !Paladin !Warrior !Rogue
    .goto Dun Morogh,52.0,50.1,100,0
    .goto Dun Morogh,51.5,53.9,100,0
    .goto Dun Morogh,50.1,53.9,100,0
    .goto Dun Morogh,49.9,50.9,100,0
    .goto Dun Morogh,48.0,49.5,100,0
    .goto Dun Morogh,48.2,46.9,100,0
    .goto Dun Morogh,43.5,52.5,100,0
    .goto Dun Morogh,52.0,50.1,100,0
    .goto Dun Morogh,51.5,53.9,100,0
    .goto Dun Morogh,50.1,53.9,100,0
    .goto Dun Morogh,49.9,50.9,100,0
    .goto Dun Morogh,48.0,49.5,100,0
    .goto Dun Morogh,48.2,46.9,100,0
    .goto Dun Morogh,43.5,52.5,100,0
    .goto Dun Morogh,52.0,50.1,100,0
    .goto Dun Morogh,51.5,53.9,100,0
    .goto Dun Morogh,50.1,53.9,100,0
    .goto Dun Morogh,49.9,50.9,100,0
    .goto Dun Morogh,48.0,49.5,100,0
    .goto Dun Morogh,48.2,46.9,100,0
    .goto Dun Morogh,43.5,52.5,100,0
    .goto Dun Morogh,52.0,50.1,0
    .goto Dun Morogh,51.5,53.9,0
    .goto Dun Morogh,50.1,53.9,0
    .goto Dun Morogh,49.9,50.9,0
    .goto Dun Morogh,48.0,49.5,0
    .goto Dun Morogh,48.2,46.9,0
    .goto Dun Morogh,43.5,52.5
    >>Get the items for Stocking Jetsteam
    .complete 317,1 --Collect Chunk of Boar Meat (x4)
    .complete 317,2 --Collect Thick Bear Fur (x2)
step << !Paladin !Warrior !Rogue
    .goto Dun Morogh,49.4,48.4
    .turnin 317 >> Turn in Stocking Jetsteam
    .accept 318 >> Accept Evershine
step << Warrior
    .goto Dun Morogh,46.9,52.1,20,0
    .goto Dun Morogh,47.4,52.5
    .vendor >> Buy as much level 5 food as you can afford
step << Priest/Mage/Warlock
    .goto Dun Morogh,46.9,52.1,20,0
    .goto Dun Morogh,47.4,52.5
    .vendor >> Buy as much level 5 drink as you can afford
step
    .goto Dun Morogh,42.25,53.68,40,0
    .goto Dun Morogh,41.07,49.04,50,0
    .goto Dun Morogh,42.25,53.68
    >> Go into the cave. Kill Wendigos. Loot them for their Manes << !Warrior !Rogue !Paladin
    >> Kill Wendigos. Loot them for their Manes. Keep an eye out for Veins to get rough stones for Sharpening stones for your weapon << Warrior/Rogue
    >> Kill Wendigos. Loot them for their Manes. Keep an eye out for Veins to get rough stones for Weightstones for your weapon << Paladin
    .complete 313,1 --Collect Wendigo Mane (x8)
step
    >>Loot the crate
    .goto Dun Morogh,44.1,56.9
    .complete 5541,1 --Collect Rumbleshot's Ammo (x1)
step
    #label BearFur
    .goto Dun Morogh,40.6,62.6,50,0
    .goto Dun Morogh,40.7,65.1
    .turnin 5541 >> Turn in Ammo for Rumbleshot
    .vendor >> Vendor and repair
step << !Paladin !Warrior !Rogue
    .xp 7 >> Grind to 7
step << Paladin/Warrior/Rogue
    .goto Dun Morogh,51.4,50.4
    >>Kill Bears and Boars. Loot them for Fur and Meat
    .complete 317,2 --Collect Thick Bear Fur (x2)
    .complete 317,1 --Collect Chunk of Boar Meat (x4)
step << Warrior/Paladin/Rogue
    .goto Dun Morogh,49.4,48.4
    .turnin 317 >> Turn in Stocking Jetsteam
    .accept 318 >> Accept Evershine
step << Warrior/Paladin/Rogue
    .goto Dun Morogh,49.6,48.6
    .turnin 313 >> Turn in The Grizzled Den
step << Warrior/Paladin/Rogue
    .goto Dun Morogh,50.1,49.4
    .collect 2901,1 >> Buy a Mining Pick
step << Warrior/Rogue/Paladin
    .xp 8 >> Grind nearby mobs to 8
step << Rogue
    .goto Dun Morogh,47.6,52.6
    .trainer >> Train your class spells
step << Paladin
    .goto Dun Morogh,47.60,52.07
    .trainer >> Train your class spells
step << Warrior
    .goto Dun Morogh,47.4,52.6
    .trainer >> Train your class spells
step << Rogue
    .goto Dun Morogh,45.3,52.2
    >>Repair your weapon. If you have enough money (4s 1c) buy a Stiletto from Grawn. Otherwise, skip this step (you'll come back later)
    .collect 2494,1 --Collect Stiletto (1)
step << Gnome Warrior
    .goto Dun Morogh,45.3,52.2
    >>Repair your weapon. If you have enough money (5s 36c) buy a Gladius from Grawn. Otherwise, skip this step (you'll come back later)
    .collect 2488,1 --Collect Gladius (1)
step << Dwarf Warrior
    .goto Dun Morogh,45.3,52.2
     >>Repair your weapon. If you have enough money (4s 84c) buy a Large Axe from Grawn. Otherwise, skip this step (you'll come back later)
    .collect 2491,1 --Collect Large Axe (1)
step << Paladin
    .goto Dun Morogh,45.3,52.2
    >>Repair your weapon. If you have enough money (7s 1c) buy a Wooden Mallet from Grawn. Otherwise, skip this step (you'll come back later)
    .collect 2493,1 --Collect Wooden Mallet (1)
step << Warrior/Rogue
    .goto Dun Morogh,47.4,52.5
    .vendor >> Buy up to 20 level 5 food
step << Paladin
    .goto Dun Morogh,47.4,52.5
    .vendor >> Buy up to 10 level 5 food
step << Paladin/Warrior/Rogue
    .goto Dun Morogh,43.0,47.4,100,0
    .goto Dun Morogh,39.6,48.9,100,0
    .goto Dun Morogh,34.6,51.7
    .accept 312 >> Accept Tundra MacGrann's Stolen Stash
step << !Paladin !Warrior !Rogue
    .goto Dun Morogh,35.2,56.4,100,0
    .goto Dun Morogh,36.0,52.0,100,0
    .goto Dun Morogh,34.6,51.7
    .accept 312 >> Accept Tundra MacGrann's Stolen Stash
step << !Mage !Priest
    #completewith next
    .goto Dun Morogh,30.5,46.0
    .vendor >> vendor trash
step << Priest/Mage/Warlock
    #completewith next
    .goto Dun Morogh,30.5,46.0
    .vendor >> Vendor. Buy up to 20 level 5 drink
step
    .goto Dun Morogh,30.2,45.8
    .turnin 318 >> Turn in Evershine
    .accept 319 >> Accept A Favor for Evershine
    .accept 315 >> Accept The Perfect Stout
step
    .goto Dun Morogh,30.2,45.5
    .accept 310 >> Accept Bitter Rivals
step
    #label Ribs
    .goto Dun Morogh,31.5,38.9,100,0
    .goto Dun Morogh,28.3,39.9,100,0
    .goto Dun Morogh,28.7,43.7,100,0
    .goto Dun Morogh,25.8,47.2,100,0
    .goto Dun Morogh,25.8,47.2,100,0
    .goto Dun Morogh,30.0,51.8,100,0
    .goto Dun Morogh,31.5,38.9,100,0
    .goto Dun Morogh,28.3,39.9,100,0
    .goto Dun Morogh,28.7,43.7,100,0
    .goto Dun Morogh,25.8,47.2,100,0
    .goto Dun Morogh,25.8,47.2,100,0
    .goto Dun Morogh,30.0,51.8,100,0
    .goto Dun Morogh,28.7,43.7
    >> Kill Bears, Boars and Leopards
    .complete 319,1 --Kill Ice Claw Bear (x6)
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .complete 319,3 --Kill Snow Leopard (x8)
step
    >>Finish off getting the Boar Ribs
    .complete 384,1 --Collect Crag Boar Rib (x6)
step
    .goto Dun Morogh,30.2,45.7
    .turnin 319 >> Turn in A Favor for Evershine
    .accept 320 >> Accept Return to Bellowfiz
step
    #softcore
    .goto Dun Morogh,30.3,37.5,60 >> Run to here
step
    #softcore
    .goto Dun Morogh,30.9,33.1,15 >>Run up the mountain north
step
    #softcore
    .goto Dun Morogh,32.4,29.1,15 >>Follow it up to here
step
    #softcore
    .goto Dun Morogh,33.0,27.2,15,0
    .goto Dun Morogh,33.0,25.2,15,0
    .goto Wetlands,11.6,43.4,60,0
    .goto Wetlands,11.6,43.4
    .deathskip >>Keep running straight north, jump down and die once the General Chat changes to Wetlands, then respawn at Menethil Harbor
step
    #softcore
    #completewith next
    .goto Wetlands,12.7,46.7,30 >> Swim to shore
step
    #softcore
    .goto Wetlands,9.5,59.7
    .fp Wetlands>> Get the Menethil Harbor flight path
step
    .hs >> Hearth to Kharanos
step
    .goto Dun Morogh,47.4,52.5
    >> Buy a Rhapsody Malt and Thunder Ale from Belm
    .complete 384,2 --Collect Rhapsody Malt (x1)
    .collect 2686,1,311 --Collect Thunder Ale (x1)
step
    .goto Dun Morogh,47.6,52.4,15,0
    >>Go into the room behind the Innkeeper. Go downstairs, then talk to Jarven, and give him the Thunder Ale
    >>Wait for the barrel mouseover to become "unguarded", then handin
    .turnin 310 >> Turn in Bitter Rivals
    .accept 311 >> Accept Return to Marleth
step
    .goto Dun Morogh,46.8,52.4
    .turnin 384 >> Turn in Beer Basted Boar Ribs
     >>Sell the recipe when you next vendor
step << Warlock
    .goto Dun Morogh,47.3,53.7
    >>Talk to Gimrizz
    .trainer >> Train your class spells
    .vendor >> Buy the Firebolt book if you have money after training (otherwise buy it later)
step << Mage
    .goto Dun Morogh,47.5,52.1
    .trainer >> Train your class spells
step << Priest
    .goto Dun Morogh,47.3,52.2
    .trainer >> Train your class spells
step << Warrior/Rogue/Paladin
    .money <0.01
    .goto Dun Morogh,47.2,52.6
    .trainer >> Train First Aid for bandages
step << Rogue
    .goto Dun Morogh,45.3,52.2
    >>Repair your weapon. If you have enough money (4s 1c) buy a Stiletto from Grawn. Otherwise, skip this step (you'll come back later)
    .collect 2494,1 --Collect Stiletto (1)
step << Paladin
    .goto Dun Morogh,45.3,52.2
    >>Repair your weapon. If you have enough money (7s 1c) buy a Wooden Mallet from Grawn. Otherwise, skip this step (you'll come back later)
    .collect 2493,1 --Collect Wooden Mallet (1)
step << Gnome Warrior
    .goto Dun Morogh,45.3,52.2
    >>Repair your weapon. If you have enough money (5s 36c) buy a Gladius from Grawn. Otherwise, skip this step (you'll come back later)
    .collect 2488,1 --Collect Gladius (1)
step << Dwarf Warrior
    .goto Dun Morogh,45.3,52.2
     >>Repair your weapon. If you have enough money (4s 84c) buy a Large Axe from Grawn. Otherwise, skip this step (you'll come back later)
    .collect 2491,1 --Collect Large Axe (1)
step << Warrior/Rogue
    .goto Dun Morogh,47.4,52.5
    .vendor >> Buy up to 30 level 5 food from the innkeeper
step << Paladin
    .goto Dun Morogh,47.4,52.5
    .vendor >> Buy up to 15 level 5 food from the innkeeper
step << Priest/Mage/Warlock
    .goto Dun Morogh,47.4,52.5
    .vendor >> Buy buy up to 30 level 5 drink from the innkeeper
step
    .goto Dun Morogh,46.7,53.8
    .accept 287 >> Accept Frostmane Hold
step
    .goto Dun Morogh,49.6,48.6
    .turnin 313 >> Turn in The Grizzled Den
step
    .goto Dun Morogh,49.4,48.4
    >>Choose the Camping Knife. Save it for later << Rogue
    .turnin 320 >> Turn in Return to Bellowfiz
step << Warrior
    >>Inside the building
    .goto Dun Morogh,45.8,49.4
    .accept 412 >> Accept Operation Recombobulation
step
    #completewith next
    .goto Dun Morogh,43.1,45.0,20,0
    .goto Dun Morogh,42.1,45.4,20 >> Run up the ramp to Shimmerweed
step
    .goto Dun Morogh,40.9,45.3,50,0
    .goto Dun Morogh,41.5,43.6,50,0
    .goto Dun Morogh,39.7,40.0,50,0
    .goto Dun Morogh,42.1,34.3,50,0
    .goto Dun Morogh,39.5,43.0
    .goto Dun Morogh,41.5,36.0
    >>Clear mobs in this area. Be careful if you need to clear the middle camp. You can pull the mobs in the huts and line of sight (LoS) them behind the huts if you need 2 more mobs. If you get unlucky, run to the other area
    >>Loot baskets on the ground
    >>Make Weightstones if you loot linen here << Paladin
    .complete 315,1 --Collect Shimmerweed (x6)
step << !Mage !Warlock
    .goto Dun Morogh,38.5,54.0
    >>Wait until Old Icebeard leaves the cave so you can sneak in and loot the chest, or do this
        .link https://www.youtube.com/watch?v=o55Y3LjgKoE >>Click here for video reference
    .complete 312,1 --MacGrann's Dried Meats (1)
step << Mage/Warlock
    >> Polymorph Old Icebeard, then loot the meats << Mage
    >> Fear Old Icebeard, then loot the meats << Warlock
    .goto Dun Morogh,38.5,53.9
    .complete 312,1 --Collect MacGrann's Dried Meats (x1)
step
    .goto Dun Morogh,34.6,51.7
    .turnin 312 >> Turn in Tundra MacGrann's Stolen Stash
step << Mage/Priest/Warlock
    #completewith next
    .goto Dun Morogh,30.4,45.8
    .vendor >> Buy up to 10 more level 5 drink
step << Warrior/Paladin/Rogue
    #completewith next
    .goto Dun Morogh,30.4,45.8
    .vendor >> vendor trash
step
    .goto Dun Morogh,30.2,45.7
    .turnin 315 >> Turn in The Perfect Stout
    .accept 413 >> Accept Shimmer Stout
step
    .goto Dun Morogh,30.2,45.5
    .turnin 311 >> Turn in Return to Marleth
step << Warrior
    .goto Dun Morogh,27.2,43.0,80,0
    .goto Dun Morogh,24.8,39.3,80,0
    .goto Dun Morogh,25.6,43.4,80,0
    .goto Dun Morogh,24.3,44.0,80,0
    .goto Dun Morogh,25.4,45.4,80,0
    .goto Dun Morogh,25.00,43.50
    >>Kill Leper Gnomes. Loot them for Gears and Cogs
    .complete 412,2 --Collect Gyromechanic Gear (x8)
    .complete 412,1 --Collect Restabilization Cog (x8)
step << Paladin
    #completewith EndDM
    >>Keep 10 Linen Cloth in your bags for your paladin quest later
    .collect 2589,10 --Linen Cloth (10)
step
    .goto Dun Morogh,24.5,50.8,40,0
    .goto Dun Morogh,22.1,50.3,40,0
    .goto Dun Morogh,21.3,52.9,40,0
    .goto Dun Morogh,24.5,50.8,0
    .goto Dun Morogh,22.1,50.3,0
    .goto Dun Morogh,21.3,52.9,0
    >>Kill Headhunters inside the cave
    .complete 287,1 --Kill Frostmane Headhunter (x5)
step
    #softcore
    .goto Dun Morogh,23.4,51.5,15 >>Go back up the cave
step
    #softcore
    >>Jump down into the nook below
    .goto Dun Morogh,23.0,52.2
    .complete 287,2 --Fully explore Frostmane Hold
step
    #softcore
    #completewith next
    .deathskip >> Die and respawn at Kharanos
step
    #hardcore
    >>Carefully grind down into this nook in the cave
    .goto Dun Morogh,23.0,52.2
    .complete 287,2 --Fully explore Frostmane Hold
step
    #hardcore
   .goto Dun Morogh,46.7,53.8,150 >> Hearth if its up, otherwise grind back to Kharanos
step
    .goto Dun Morogh,46.7,53.8
    .turnin 287 >> Turn in Frostmane Hold
    .accept 291 >> Accept The Reports
step
    #completewith EndDM
    >>Kill boars en route to other quests for 8 Boar Meat for a quest later. Don't focus hard on this now
    .collect 769,8 --Collect Chunk of Boar Meat (x8)
step << Rogue
    .goto Dun Morogh,47.6,52.6
    .accept 2218 >> Accept Road to Salvation
    .trainer >> Train your class spells
    >>Equip your Camping Knife from earlier
step << Warlock
    .goto Dun Morogh,47.3,53.7
    >>Talk to Gimrizz
    .trainer >> Train your class spells
step << Mage
    .goto Dun Morogh,47.5,52.1
    .trainer >> Train your class spells
step << Priest
    .goto Dun Morogh,47.3,52.2
    .trainer >> Train your class spells
step << Paladin
    .goto Dun Morogh,47.60,52.07
    .trainer >> Train your class spells
step << Warrior
    .goto Dun Morogh,47.4,52.6
    .trainer >> Train your class spells
step << !Paladin !Priest
    .goto Dun Morogh,47.2,52.6
    .train 3273 >> Train First Aid
step << Warrior
    >>Inside the building
    .goto Dun Morogh,45.8,49.4
    .turnin 412 >> Turn in Operation Recombobulation
step << Warrior
    #sticky
    #completewith next
    .money >0.1000
    +Start grinding until you have 10s of vendorables, then run into Ironforge
step << Warrior
    .goto Dun Morogh,53.5,34.9,30 >> Run into Ironforge
step << Warrior
    >>Go into the building
    .goto Ironforge,61.2,89.5
    .trainer >>Train 2h Maces
step << Warrior
    #sticky
    #completewith next
    .goto Dun Morogh,53.5,34.9,100 >>Run out of Ironforge
step
    .goto Dun Morogh,60.1,52.6,50,0
    .goto Dun Morogh,63.1,49.8
    .accept 314 >> Accept Protecting the Herd
step
    #completewith next
    .goto Dun Morogh,62.3,50.3,14,0
    .goto Dun Morogh,62.2,49.4,10 >>Run up this part of the mountain
step
    >>Kill Vagash. Loot him for his Fang
    >>Kite him to the guard south of the ranch. Make sure you do 51%+ damage to him
    >>Be careful as this quest is HARD
    .goto Dun Morogh,62.6,46.1
    .complete 314,1 --Collect Fang of Vagash (1)
    .link https://www.youtube.com/watch?v=ZJX6sCkm5JY >> CLICK HERE for a guide on how to solo Vagash
step
    .goto Dun Morogh,63.1,49.8
    .turnin 314 >> Turn in Protecting the Herd
step
    >>Grind a little en route
    .goto Dun Morogh,68.6,54.7
    .vendor >>vendor trash. Buy some food if needed << Warrior/Rogue
    .vendor >>vendor trash. Buy some food/water if needed << !Warrior !Rogue
step
    .goto Dun Morogh,68.4,54.5
    .train 2550 >> Train Cooking from Ghilm
step
    .goto Dun Morogh,68.7,56.0
    .accept 433 >> Accept The Public Servant
step
    #completewith next
    .goto Dun Morogh,68.9,55.9
    .vendor >> vendor trash, repair
step
    .goto Dun Morogh,69.1,56.3
    .accept 432 >> Accept Those Blasted Troggs!
step
    .goto Dun Morogh,70.7,56.4,40,0
    .goto Dun Morogh,70.62,52.39,25,0
    .goto Dun Morogh,70.7,56.4
    >>Kill Troggs inside the cave
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .complete 433,1 --Kill Rockjaw Bonesnapper (x10)
step
    .goto Dun Morogh,69.1,56.3
    .turnin 432 >> Turn in Those Blasted Troggs!
step
    #completewith next
    .goto Dun Morogh,68.9,55.9
    .vendor >> vendor trash, repair
step
    .goto Dun Morogh,68.7,56.0
    .turnin 433 >> Turn in The Public Servant
step
    .goto Dun Morogh,83.8,39.2
    .accept 419 >> Accept The Lost Pilot
step
    .goto Dun Morogh,79.7,36.2
    .turnin 419 >> Turn in The Lost Pilot
    .accept 417 >> Accept A Pilot's Revenge
step
    >>Kill Mangeclaw. Loot him for his Claw
    .goto Dun Morogh,78.97,37.14
    .complete 417,1 --Collect Mangy Claw (x1)
step
    #label EndDM
    .goto Dun Morogh,83.9,39.2
    .turnin 417 >> Turn in A Pilot's Revenge
step
    .goto Dun Morogh,79.6,50.7,50,0
    .goto Dun Morogh,82.3,53.5,25,0
    .goto Dun Morogh,86.3,48.8
    .turnin 413 >> Turn in Shimmer Stout
    .accept 414 >> Accept Stout to Kadrell
]])

RXPGuides.RegisterGuide([[
#classic
#som
#phase 3-6
<< Alliance Warlock
#name 11-12 Elwynn Warlock
#version 1
#group RestedXP Alliance 1-20
#defaultfor Gnome/Dwarf
#next 12-14 Loch Modan
step
    >>Run through the tunnel into Loch
    .goto Loch Modan,22.1,73.1
    .accept 224 >> Accept In Defense of the King's Lands
step
    .goto Loch Modan,23.2,73.7
    >>Go into the bunker from behind
    .accept 267 >> Accept The Trogg Threat
step
    .goto Loch Modan,32.6,49.9,80.0,0
    .goto Loch Modan,37.2,46.1,80.0,0
    .goto Loch Modan,36.7,41.6
    >>Find Kadrell. He patrols along the Thelsamar road
    .turnin 414 >> Turn in Stout to Kadrell
    .accept 416 >> Accept Rat Catching
    .accept 1339 >> Accept Mountaineer Stormpike's Task
step
    >>Go inside the building, then go downstairs. Talk to Brock
    .goto Loch Modan,37.2,46.9,15,0
    .goto Loch Modan,37.0,47.8
    .accept 6387 >> Accept Honor Students
step
    .goto Loch Modan,34.82,49.28
    .accept 418 >> Accept Thelsamar Blood Sausages
step
    .goto Loch Modan,34.8,48.6
    .vendor >>Buy a 6 slot bag
step
    .goto Loch Modan,35.5,48.4
    .home >> Set your Hearthstone to Thelsamar
step
    #sticky
    #completewith Thelsamar1
    >>Kill Boars, Bears and Spiders in the zone for Intestines, Meat and Ichor
    .complete 418,1 --Collect Boar Intestines (x3)
    .complete 418,2 --Collect Bear Meat (x3)
    .complete 418,3 --Collect Spider Ichor (x3)
step
    >>Run up to the northern bunker
    .goto Loch Modan,24.8,18.4
    .accept 307 >> Accept Filthy Paws
    .turnin 1339 >> Turn in Mountaineer Stormpike's Task
    .accept 1338 >> Accept Stormpike's Order
step
    #label Thelsamar1
    .deathskip >> Die and respawn in Thelsamar
step
    .goto Loch Modan,33.9,51.0
    .turnin 6387 >> Turn in Honor Students
    .accept 6391 >> Accept Ride to Ironforge
step
    .goto Loch Modan,33.9,51.0
    .fly Ironforge >> Fly to Ironforge
step
    .goto Ironforge,51.5,26.3
    .turnin 6391 >> Turn in Ride to Ironforge
    .accept 6388 >> Accept Gryth Thurden
step
    .goto Ironforge,39.5,57.5
    .turnin 291 >> Turn in The Reports
step
    >>do NOT fly anywhere
    .goto Ironforge,55.5,47.8
    .turnin 6388 >> Turn in Gryth Thurden
    .accept 6392 >> Accept Return to Brock
step
    #completewith next
    +Perform a Logout skip by jumping on top of one of the Gryphon's heads, and logging out, then back in
    .link https://www.youtube.com/watch?v=PWMJhodh6Bw >> CLICK HERE
step
    .goto Ironforge,74.40,51.10,30,0
    .goto Ironforge,74.40,51.10,0
     >> Enter the Deeprun Tram, speak with the gnome at the middle platform
    .accept 6661 >> Accept Deeprun Rat Roundup
step
    >>Use your flute on the rats scattered around
    .complete 6661,1 --Rats Captured (x5)
step
    .turnin 6661 >> Turn in Deeprun Rat Roundup
    .accept 6662 >> Accept Me Brother, Nipsy
step
     .isOnQuest 6662
    >> Take the tram to Stormwind, turn in when you arrive on the other side of the tram
    .turnin 6662 >> Turn in Me Brother, Nipsy
    >>Train first aid while wating/riding the tram, you'll need 80 points in first aid for a level 24 quest later down the road << Rogue
step
    #completewith next
    .goto StormwindClassic,60.5,12.3
    .zone Stormwind City >>Exit the tram into Stormwind
step
    .goto StormwindClassic,51.6,12.2
    .accept 353 >> Accept Stormpike's Delivery
step
    .goto StormwindClassic,58.1,16.5
    .turnin 1338 >> Turn in Stormpike's Order
step
    #sticky
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> Go into The Slaughtered Lamb and go downstairs
step
    .goto StormwindClassic,26.12,77.20
    .trainer >> Train your class spells
step
    .goto StormwindClassic,25.2,78.5
    .accept 1688 >> Accept Surena Caledon
step
    .goto StormwindClassic,57.1,57.7
    .trainer >>Train Staves. Train 1h Swords if you have spare money
step
     #softcore
    #completewith next
     +Start life tapping on your way to the flight master
step
    .goto StormwindClassic,66.20,62.40
    .fp Stormwind City >> Get the Stormwind City flight path
step
     #softcore
    #completewith next
     >> Jump down the ledge (NOT the water) next to the flight master and kill yourself, make sure to life tap before jumping
    .deathskip >>Spirit rez at Goldshire
step
    .goto Elwynn Forest,42.10,65.90
     >>Head to Goldshire
    .accept 62 >> Accept The Fargodeep Mine
step
    >>On your close left as you go in
    .goto Elwynn Forest,43.3,65.7
    .accept 60 >> Accept Kobold Candles
step
    .goto Elwynn Forest,42.10,67.30
    .accept 40 >> Accept A Fishy Peril
    .accept 47 >> Accept Gold Dust Exchange
step
    >>Click any of the wanted posters around
    .goto Elwynn Forest,24.6,74.7
    .accept 176 >> Accept Wanted:   "Hogger"
step
    #sticky
    #completewith collector
    >>Keep an eye out for the gold pickup schedule (lucky drop), or a 100% Drop from Gruff Swiftbite (rare). extra 210xp
    .collect 1307,1,123 --Collect Gold Pickup Schedule (x1)
    .accept 123 >> Accept The Collector
step
    #label Hogger
    .unitscan Hogger
    .goto Elwynn Forest,27.0,86.7,100,0
    .goto Elwynn Forest,26.1,89.9,100,0
    .goto Elwynn Forest,25.2,92.7,100,0
    .goto Elwynn Forest,27.0,93.9,100,0
    .goto Elwynn Forest,27.0,86.7,100,0
    .goto Elwynn Forest,26.1,89.9,100,0
    .goto Elwynn Forest,25.2,92.7,100,0
    .goto Elwynn Forest,27.0,93.9,100,0
    .goto Elwynn Forest,27.0,86.7,100,0
    .goto Elwynn Forest,26.1,89.9,100,0
    .goto Elwynn Forest,25.2,92.7,100,0
    .goto Elwynn Forest,27.0,93.9,100,0
    .goto Elwynn Forest,25.9,93.9
    >>Hogger can be in multiple spots in the area. Keep him fear chained, and/or kite him at <60% hp to the tower at 24,80. Loot him for his Claw
    >>Be careful as this can be difficult
    .complete 176,1 --Huge Gnoll Claw (1)
step
    .accept 88 >> Accept Princess Must Die!
    .goto Elwynn Forest,34.60,84.50
    .accept 85 >> Accept Lost Necklace
    .goto Elwynn Forest,34.40,84.2
step
    .goto Elwynn Forest,43.0,85.8
    .turnin 85 >> Turn in Lost Necklace
    .accept 86 >> Accept Pie for Billy
step
    #sticky
    #label Fargodeep
    >>Loot Candles and Dust from the Kobolds in the area
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
step
    .goto Elwynn Forest,40.5,82.3
    >>Go into the mine
    .complete 62,1 --Scout Through the Fargodeep Mine
step
    #softcore
    #requires Fargodeep
    #completewith next
    .deathskip >> Die and respawn in Goldshire
step
    #requires Fargodeep
    .goto Elwynn Forest,42.1,65.9
    >>Choose the Staff then equip it
    .turnin 176 >> Turn in Wanted:    "Hogger"
    .turnin 62 >> Turn in The Fargodeep Mine
    .turnin 40 >> Turn in A Fishy Peril
    .accept 35 >> Accept Further Concerns
    .turnin 123 >> Turn in The Collector
    .isOnQuest 123
step
    #requires Fargodeep
    .goto Elwynn Forest,42.1,65.9
    >>Choose the Staff then equip it
    .turnin 176 >> Turn in Wanted:    "Hogger"
    .turnin 62 >> Turn in The Fargodeep Mine
    .turnin 40 >> Turn in A Fishy Peril
    .accept 35 >> Accept Further Concerns
step
    .goto Elwynn Forest,43.30,65.70
    .turnin 60 >> Turn in Kobold Candles
    .accept 61 >> Accept Shipment to Stormwind
step
    .goto Elwynn Forest,42.20,67.20
    .turnin 47 >> Turn in Gold Dust Exchange
step
    .goto Elwynn Forest,73.90,72.30
    .turnin 35 >> Turn in Further Concerns
step
    >>Kill the mobs inside the house, keep Morgan feared (he gouges and kills pet), nuke Surena. Loot her for her Choker
    .goto Elwynn Forest,71.0,80.8
    .complete 1688,1 --Surena's Choker (1)
step
    .goto Elwynn Forest,69.3,79.0
    >>Kill Princess, be careful, she has 2 adds and her charge hits hard
    .complete 88,1
step << skip
    #completewith next
    >>Keep an eye out for Westfall Deed from the Defias (lucky drop)
    .collect 1972,1,184 --Collect Westfall Deed (x1)
    .accept 184 >> Accept Furlbrow's Deed
step
    >>Head east to Redridge
    >>The guard patrols around the stumps a bit
    .goto Elwynn Forest,91.7,72.3,150,0
    .goto Redridge Mountains,17.4,69.6
    .accept 244 >> Accept Encroaching Gnolls
step
    >>Be careful of the high level mobs mobs en route
    .goto Redridge Mountains,30.7,60.0
    .turnin 244 >> Turn in Encroaching Gnolls
step
    .goto Redridge Mountains,30.6,59.4
    .fly Stormwind >> Fly to Stormwind
step
    .goto Elwynn Forest,26.21,39.66
    >>Choose the Rockets as the reward. These have very good damage, and can be used for splitpulling
    .turnin 61 >> Turn in Shipment to Stormwind
step << Warlock
    >>Go back to the Warlock Trainer
    .goto StormwindClassic,25.2,78.5
    .trainer >> Train your class spells
    .turnin 1688 >> Turn in Surena Caledon
    .accept 1689 >> Accept The Binding
step << Warlock
    .goto StormwindClassic,25.2,80.7,18,0
    .goto StormwindClassic,23.2,79.5,18,0
    .goto StormwindClassic,26.3,79.5,18,0
    .goto StormwindClassic,25.5,78.1
    >>Go to the bottom of the crypt. Summon the Voidwalker using the Bloodstone Choker and kill it
    .complete 1689,1 --Kill Summoned Voidwalker (x1)
step << Warlock
     #softcore
    >>Life tap on your way back to the warlock trainer
    .goto StormwindClassic,25.2,78.5
    .turnin 1689 >> Turn in The Binding
step << Warlock
     #hardcore
    .goto StormwindClassic,25.2,78.5
    .turnin 1689 >> Turn in The Binding
step << Warlock
    #softcore
    #completewith next
    .goto StormwindClassic,25.2,78.5
    .deathskip >> Die and respawn at the Spirit Healer by using Life Tap and standing on the Bonfire next to you
step
    .turnin 88 >> Turn in Princess Must Die!
    .goto Elwynn Forest,34.66,84.48
step
    .turnin 86 >> Turn in Pie for Billy
    .goto Elwynn Forest,34.40,84.2
    .isQuestComplete 86
step
    .hs >> Hearth to Thelsamar
]])

RXPGuides.RegisterGuide([[
#classic
#som
#phase 3-6
<< Alliance !Hunter
#name 12-14 Loch Modan
#version 1
#group RestedXP Alliance 1-20
#defaultfor Dwarf/Gnome
#next 14-19 Darkshore

step << Paladin
    #completewith TroggT
    >>Keep 10 Linen Cloth in your bags for your paladin quest later
    .collect 2589,10 --Linen Cloth (10)
step
    #completewith EndLoch
    >>Grind boars for 8 Boar Meat for a quest later
    .collect 769,8 --Collect Chunk of Boar Meat (x8)
step
    >>Run through the tunnel into Loch
    .goto Loch Modan,22.1,73.1
    .accept 224 >> Accept In Defense of the King's Lands
step
    #label TroggT
    .goto Loch Modan,23.2,73.7
    >>Go into the bunker from behind
    .accept 267 >> Accept The Trogg Threat
step << Paladin
    .goto Loch Modan,27.4,48.4
    >>Grind Troggs to get 10 Linen Cloth in your bags for your paladin quest later
    .collect 2589,10 --Linen Cloth (10)
step
    .goto Loch Modan,32.6,49.9,80.0,0
    .goto Loch Modan,37.2,46.1,80.0,0
    .goto Loch Modan,36.7,41.6
    >>Find Kadrell. He patrols along the Thelsamar road
    .turnin 414 >> Turn in Stout to Kadrell
    .accept 416 >> Accept Rat Catching
    .accept 1339 >> Accept Mountaineer Stormpike's Task
step
    >>Go inside the building, then go downstairs. Talk to Brock
    .goto Loch Modan,37.2,46.9,15,0
    .goto Loch Modan,37.0,47.8
    .accept 6387 >> Accept Honor Students
step
    .goto Loch Modan,34.82,49.28
    .accept 418 >> Accept Thelsamar Blood Sausages
step
    .goto Loch Modan,34.8,48.6
    .vendor >> Buy 1 Flint and Tinder, and 1 Simple Wood. Buy a 6 slot bag if needed
    .collect 4470,1 --Simple Wood (1)
    .collect 4471,1 --Flint and Tinder (1)
step << Mage
    .goto Loch Modan,35.5,48.4
    .home >> Set your Hearthstone to Thelsamar
step << Mage/Paladin
    #completewith next
    >>Kill Boars, Bears and Spiders in the zone for Intestines, Meat and Ichor
    .complete 418,1 --Collect Boar Intestines (x3)
    .complete 418,2 --Collect Bear Meat (x3)
    .complete 418,3 --Collect Spider Ichor (x3)
step << Mage/Paladin
    .xp 11+6615 >> Grind to 6615+/8800xp
    .goto Loch Modan,38.0,34.9,90,0
    .goto Loch Modan,37.1,39.8,90,0
    .goto Loch Modan,29.8,35.9,90,0
    .goto Loch Modan,27.7,25.3,90,0
    .goto Loch Modan,28.6,22.6,90,0
    .goto Loch Modan,38.0,34.9,90,0
    .goto Loch Modan,37.1,39.8,90,0
    .goto Loch Modan,29.8,35.9,90,0
    .goto Loch Modan,27.7,25.3,90,0
    .goto Loch Modan,28.6,22.6,90,0
    .goto Loch Modan,38.0,34.9
step << Mage/Paladin
    .goto Loch Modan,33.9,51.0
    .turnin 6387 >> Turn in Honor Students
    .accept 6391 >> Accept Ride to Ironforge
    .fp Thelsamar >> Get the Thelsamar Flight Path
    .fly Ironforge >> Fly to Ironforge
step << Mage/Paladin
    .goto Ironforge,51.5,26.3
    .turnin 6391 >> Turn in Ride to Ironforge
    .accept 6388 >> Accept Gryth Thurden
step << Mage/Paladin
    .goto Ironforge,39.5,57.5
    .turnin 291 >> Turn in The Reports
step << Mage/Paladin
    .goto Ironforge,27.17,8.57 << Mage
    .goto Ironforge,23.3,6.1 << Paladin
     .trainer >> Train your class spells
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
    .goto Ironforge,18.15,51.45
    .home >> Set your Hearthstone to Ironforge
step << Dwarf Paladin
    .goto Ironforge,21.40,50.25,60,0
    .goto Ironforge,45.40,84.65
    .unitscan John Turner
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
step << Mage/Paladin
    .goto Ironforge,55.5,47.8
    .turnin 6388 >> Turn in Gryth Thurden
    .accept 6392 >> Accept Return to Brock
    .fly Thelsamar >> Fly to Thelsamar
step << skip
    #sticky
    #completewith next
    +Grind mobs until you have at least 33 Silver worth of money and vendorables
--N rogue money gate for cutlass+1h swords
step
    #sticky
    #completewith Tunnel
    >>Kill Boars, Bears and Spiders in the zone for Intestines, Meat and Ichor
    .complete 418,1 --Collect Boar Intestines (x3)
    .complete 418,2 --Collect Bear Meat (x3)
    .complete 418,3 --Collect Spider Ichor (x3)
step
    >>Run up to the northern bunker
    .goto Loch Modan,24.8,18.4
    .accept 307 >> Accept Filthy Paws
    .turnin 1339 >> Turn in Mountaineer Stormpike's Task
    .accept 1338 >> Accept Stormpike's Order << !Warlock !Mage
    .turnin 353 >> Turn in Stormpike's Delivery << Warlock
step
    #label Tunnel
    #completewith next
    .goto Loch Modan,35.46,18.78,50 >>Grind some mobs for Boar Intestines, Bear Meat and Spider Ichor en route
step
    .goto Loch Modan,35.75,22.42
    >>Go to the Kobold Cave. Collect the crates you find inside.
    >>Crates can spawn behind you near the mouth of the cave after looting one, be sure to check after you've looted 2 or 3
    .complete 307,1 --Collect Miners' Gear (x4)
step
    .goto Loch Modan,35.46,18.78
    >> Kill Kobolds. Loot them for their Ears
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
step
    #completewith next
    .goto Loch Modan,24.1,18.2
    .vendor >>Run back to the bunker. Vendor and repair
step
    .goto Loch Modan,24.76,18.39
    .turnin 307 >> Turn in Filthy Paws
step
    #sticky
    #label Meat9
    .goto Loch Modan,26.9,10.7,90,0
    .goto Loch Modan,30.9,10.6,90,0
    .goto Loch Modan,28.6,15.4,90,0
    .goto Loch Modan,30.5,26.6,90,0
    .goto Loch Modan,33.4,30.3,90,0
    .goto Loch Modan,39.4,33.3,90,0
    .goto Loch Modan,26.9,10.7,90,0
    .goto Loch Modan,30.9,10.6,90,0
    .goto Loch Modan,28.6,15.4,90,0
    .goto Loch Modan,30.5,26.6,90,0
    .goto Loch Modan,33.4,30.3,90,0
    .goto Loch Modan,39.4,33.3,90,0
    .goto Loch Modan,26.9,10.7
    >>Kill Bears. Loot them for Meat
    .complete 418,2 --Bear Meat (3)
step
    #sticky
    #label Ichor9
    .goto Loch Modan,31.9,16.4,90,0
    .goto Loch Modan,28.0,20.6,90,0
    .goto Loch Modan,33.8,40.5,90,0
    .goto Loch Modan,36.2,30.9,90,0
    .goto Loch Modan,39.0,32.1,90,0
    .goto Loch Modan,31.9,16.4,90,0
    .goto Loch Modan,28.0,20.6,90,0
    .goto Loch Modan,33.8,40.5,90,0
    .goto Loch Modan,36.2,30.9,90,0
    .goto Loch Modan,39.0,32.1,90,0
    .goto Loch Modan,31.9,16.4
    >>Kill Spiders. Loot them for Ichor
    .complete 418,3 --Spider Ichor (3)
step
    .goto Loch Modan,38.0,34.9,90,0
    .goto Loch Modan,37.1,39.8,90,0
    .goto Loch Modan,29.8,35.9,90,0
    .goto Loch Modan,27.7,25.3,90,0
    .goto Loch Modan,28.6,22.6,90,0
    .goto Loch Modan,38.0,34.9,90,0
    .goto Loch Modan,37.1,39.8,90,0
    .goto Loch Modan,29.8,35.9,90,0
    .goto Loch Modan,27.7,25.3,90,0
    .goto Loch Modan,28.6,22.6,90,0
    .goto Loch Modan,38.0,34.9
    >>Kill Boars. Loot them for Intestines
    .complete 418,1 --Boar Intestines (3)
step
    #requires Meat9
step
    #sticky
    #label RatCatching
    #requires Ichor9
    .goto Loch Modan,32.6,49.9,80.0,0
    .goto Loch Modan,37.2,46.1,80.0,0
    .goto Loch Modan,36.7,41.6
    >>Find Kadrell. He patrols along the Thelsamar road
    .turnin 416 >> Turn in Rat Catching
step
    #requires RatCatching
    .goto Loch Modan,34.82,49.28
    .turnin 418 >> Turn in Thelsamar Blood Sausages
step
    .goto Loch Modan,34.8,48.6
    .vendor >> Buy more 6 slot bags if needed
step
    .goto Loch Modan,27.4,48.4
    >>Kill Stonesplinter Troggs. Loot them for their Teeth
    .complete 224,1 --Kill Stonesplinter Trogg (x10)
    .complete 224,2 --Kill Stonesplinter Scout (x10)
    .complete 267,1 --Collect Trogg Stone Tooth (x8)
step << !Mage !Paladin
    .goto Loch Modan,27.4,48.4
    .xp 13+5615 >> Grind until 5615+/11400xp
step << Mage/Paladin
    .goto Loch Modan,27.4,48.4
    .xp 13+7800 >> Grind until 7800+/11400xp
step << Rogue
    .goto Loch Modan,27.4,48.4
    .money >0.4315
    >>Grind until you have 43s 15c+ worth of money/vendorables. This is for Sinister Strike rank 3, 1h weapon skill training, Cutlass (weapon), and flying to Ironforge
step
    .goto Loch Modan,22.07,73.12
    .turnin 224 >> Turn in In Defense of the King's Lands
step
    .goto Loch Modan,23.23,73.67
    .turnin 267 >> Turn in The Trogg Threat
step << Dwarf Paladin
    #completewith next
    .goto Dun Morogh,87.1,51.1
    .zone Dun Morogh >> Head to Dun Morogh
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
    .goto Dun Morogh,70.66,56.70,40,0
    .goto Dun Morogh,70.60,54.87
    >>Perform a logout skip in the trogg cave to teleport back to Ironforge
    .link https://www.youtube.com/watch?v=kbUSo62CfAM >> CLICK HERE for reference
step << Mage
    .hs >> Hearth to Thelsamar
step << !Dwarf/!Paladin
    .goto Loch Modan,33.9,51.0
    .turnin 6387 >> Turn in Honor Students << !Mage
    .accept 6391 >> Accept Ride to Ironforge << !Mage
    .fp Thelsamar >> Get the Thelsamar Flight Path << !Mage
    .fly Ironforge >> Fly to Ironforge
step << !Mage !Paladin
    .goto Ironforge,51.5,26.3
    .turnin 6391 >> Turn in Ride to Ironforge
    .accept 6388 >> Accept Gryth Thurden
step << !Mage !Paladin !Warlock
    .goto Ironforge,18.15,51.45
    .home >> Set your Hearthstone to Ironforge
step << !Mage !Paladin
    .goto Ironforge,39.5,57.5
    .turnin 291 >> Turn in The Reports
step << !Mage !Paladin
    .goto Ironforge,55.5,47.8
    .turnin 6388 >> Turn in Gryth Thurden
-- .accept 6392 >> Accept Return to Brock
step << Warrior
    .goto Ironforge,62.0,89.6
    .train 176 >>Train Thrown
step << Mage/Priest/Warlock
    #softcore
    #sticky
    #label Wand1
    #completewith Wand2
     >>Try to buy a Greater Magic Wand from the AH if it costs <33s 40c
    .goto Ironforge,25.74,75.43
    .collect 11288,1 --Greater Magic Wand (1)
step << Mage/Priest/Warlock
    #softcore
    #label Wand2
    #completewith Wand1
     >>If you can't find a Greater Magic Wand for a good price, buy a Smoldering Wand from the wand vendor
    .goto Ironforge,24.09,16.63,14,0
    .goto Ironforge,23.13,15.96
    .collect 5208,1 --Smoldering Wand (1)
step << Mage/Priest/Warlock
    #hardcore
     >>Go in the building. Buy a Smoldering Wand if you have 33s 40c+
    .goto Ironforge,24.09,16.63,14,0
    .goto Ironforge,23.13,15.96
    .collect 5208,1 --Smoldering Wand (1)
step << Warlock
    #softcore
    #requires Wand2
    .goto Ironforge,51.1,8.7,15,0 >> Enter the building
    .goto Ironforge,50.4,6.3
    .trainer >> Train your class spells
step << Warlock
    #hardcore
    .goto Ironforge,51.1,8.7,15,0 >> Enter the building
    .goto Ironforge,50.4,6.3
    .trainer >> Train your class spells
step << Warlock
    .goto Ironforge,53.2,7.8,15,0 >> Enter the building
    .goto Ironforge,53.0,6.4
    .vendor >> Buy Consume Shadows r1, then Sacrifice r1 books (if you have money)
step << Rogue
    #sticky
    #completewith next
    .isOnQuest 2218
    .goto Ironforge,51.50,15.34
    .turnin 2218 >> Turn in Road to Salvation
step << !Druid !Warlock
    .goto Ironforge,65.90,88.41 << Warrior
    .goto Ironforge,51.50,15.34 << Rogue
    .goto Ironforge,25.21,10.75 << Priest
    .goto Ironforge,27.17,8.57 << Mage
    .goto Ironforge,24.55,4.46 << Paladin
     .trainer >> Train your class spells
step << !Warlock
    #completewith next
    +Perform a Logout skip by jumping on top of one of the Gryphon's heads, and logging out, then back in
    .link https://www.youtube.com/watch?v=PWMJhodh6Bw >> CLICK HERE
step << !Warlock
    .goto Ironforge,74.40,51.10,30,0
    .goto Ironforge,74.40,51.10,0
     >> Enter the Deeprun Tram, speak with the gnome at the middle platform
    .accept 6661 >> Accept Deeprun Rat Roundup
step << !Warlock
    >>Use your flute on the rats scattered around
    .complete 6661,1 --Rats Captured (x5)
step << !Warlock
    .turnin 6661 >> Turn in Deeprun Rat Roundup
    .accept 6662 >> Accept Me Brother, Nipsy << !Mage
    >>You can skip Nipsy if you don't need money (5s 60c) and the tram has arrived << !Mage
step << !Warlock !Mage
     .isOnQuest 6662
    >> Take the tram to Stormwind, turn in when you arrive on the other side of the tram
    .turnin 6662 >> Turn in Me Brother, Nipsy
    >>Train first aid while wating/riding the tram, you'll need 80 points in first aid for a level 24 quest later down the road << Rogue
step << !Warlock !Mage
    #completewith next
    .goto StormwindClassic,60.5,12.3
    .zone Stormwind City >>Exit the tram into Stormwind
step << skip
    .goto StormwindClassic,51.6,12.2
    .accept 353 >> Accept Stormpike's Delivery
step << !Warlock !Mage
    .goto StormwindClassic,58.1,16.5
    .turnin 1338 >> Turn in Stormpike's Order
step << Priest
    #completewith next
    >>Go into the Cathedral
    .goto StormwindClassic,38.54,26.86
    .trainer >> Train your class spells
    .turnin 5634 >> Turn in Desperate Prayer
step << Priest
    .goto StormwindClassic,38.62,26.10
    .train 13908 >> Train Desperate Prayer
step << Warrior
    #completewith next
    .goto StormwindClassic,74.91,51.55,20 >> Enter the Command Center
step << Warrior
    .goto StormwindClassic,78.67,45.80
    .trainer >> Go upstairs. Train your class spells
    .accept 1638 >> Accept A Warrior's Training
step << Warrior
    #sticky
    #completewith next
    .goto StormwindClassic,71.7,39.9,20 >>Enter the tavern
step << Warrior
    .goto StormwindClassic,74.3,37.3
    .turnin 1638 >> Turn in A Warrior's Training
    .accept 1639 >> Accept Bartleby the Drunk
step << Warrior
    .goto StormwindClassic,73.8,36.3
    .turnin 1639 >> Turn in Bartleby the Drunk
    .accept 1640 >> Accept Beat Bartleby
    .complete 1640,1 --Beat Bartleby
step << Warrior
    .goto StormwindClassic,73.8,36.3
    .turnin 1640 >> Turn in Beat Bartleby
    .accept 1665 >> Accept Bartleby's Mug
step << Warrior
    >>You'll now learn Defensive Stance and Sunder Armor
    .goto StormwindClassic,74.3,37.3
    .turnin 1665 >> Turn in Bartleby's Mug
step << !Warlock !Mage
    .goto StormwindClassic,57.1,57.7
    .trainer >>Train 1h Swords << Rogue
    .trainer >>Train Staves << Priest
    .trainer >>Train Staves. Train 1h swords if you have spare money << Warlock/Mage
    .trainer >>Train 2h Swords << Warrior/Paladin
step << Rogue
    .goto StormwindClassic,57.6,57.1
    .vendor >> If you have money, buy a Scimitar from Gunther and equip it. Equip the Craftsman's Dagger from earlier in your off-hand
step << Rogue/Warrior
    >>Go inside the building
    .goto StormwindClassic,57.32,62.08,20,0
    .goto StormwindClassic,58.37,61.69
    .vendor >> Buy the level 11 thrown from Thurman. Equip it
step << !Warlock !Mage
    .hs >> Hearth to Ironforge
step
    #softcore
    #completewith next
    .goto Ironforge,55.5,47.8
    .fly Wetlands>> Fly to Wetlands
step
    #hardcore
    .goto Dun Morogh,52.6,36.0
    .zone Dun Morogh >> Leave Ironforge and head out to Dun Morogh
step
    #hardcore
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
    +Open this link and follow it on another screen.
    >>Do the Deathless Dun Morogh -> Wetlands skip
    .link https://www.youtube.com/watch?v=9afQTimaiZQ >> CLICK HERE for reference
    .goto Wetlands,9.5,59.7,80 >> Travel to Menethil Harbor
step
    #hardcore
	#label EndLoch
    .goto Wetlands,9.5,59.7
    .fp Menethil Harbor >> Get the Menethil Harbor flight path
step
    .goto Wetlands,4.6,57.2
    .zone Darkshore >>Head to the Menethil Harbor docks and take the boat to Darkshore
	>>Make a campfire with the items from earlier and start cooking your Boar Meat until you have 10+ skill
    >>Train first aid while waiting for the boat, you'll need 80 points in first aid for a level 24 quest later down the road << Rogue
]])

RXPGuides.RegisterGuide([[
#classic
#som
#phase 3-6
<< Alliance Hunter
#name 1-7 Coldridge Valley (Hunter)
#version 1
#group RestedXP Alliance 1-20
#defaultfor Dwarf
#next 6-12 Dun Morogh (Hunter)
step << !Gnome !Dwarf
    #sticky
    #completewith next
    .goto Dun Morogh,29.9,71.2
    +You have selected a guide meant for Gnomes and Dwarves. You should choose the same starter zone that you start in
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
    #sticky
    #label Rockjaw
    >>Kill Rockjaw Troggs
    .goto Dun Morogh,29.20,76.08,0
    .goto Dun Morogh,26.38,73.07,0
    .complete 170,1 --Kill Rockjaw Trogg (x6)
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
step
    .goto Dun Morogh,22.6,71.4
    >>Speak to Talin Keeneye
    .turnin 233 >>Turn in Coldridge Valley Mail Delivery
    .accept 234 >>Accept Coldridge Valley Mail Delivery
    .accept 183 >>Accept The Boar Hunter
step
    .goto Dun Morogh,22.2,72.5,100,0
    .goto Dun Morogh,20.5,71.4,100,0
    .goto Dun Morogh,21.1,69.0,100,0
    .goto Dun Morogh,22.8,69.6,100,0
    .goto Dun Morogh,22.2,72.5,100,0
    .goto Dun Morogh,20.5,71.4,100,0
    .goto Dun Morogh,21.1,69.0
    >>Kill Boars in the area
    .complete 183,1 --Kill Small Crag Boar (x12)
step
    .goto Dun Morogh,22.6,71.4
    .turnin 183 >>Turn in The Boar Hunter
step
    .goto Dun Morogh,25.1,75.7
    >>Speak to Grelin Whitebeard
    .turnin 234 >>Turn in Coldridge Valley Mail Delivery
    .accept 182 >>Accept The Troll Cave
step
    .xp 4 >> Grind to 4
step
    .goto Dun Morogh,25.0,75.9
    .accept 3364 >>Accept Scalding Mornbrew Delivery
step
    #requires Rockjaw
    .goto Dun Morogh,29.7,71.3
    >>Speak to Balir Frosthammer
    .turnin 170 >>Turn in A New Threat
step
    #completewith next
    .goto Dun Morogh,30.09,71.58
    >>Buy 2 stacks of ammo
    .collect 2516,400
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
    .goto Dun Morogh,22.7,79.3
    .goto Dun Morogh,20.9,75.7,0
    .goto Dun Morogh,27.3,79.7,0
    >>Kill Frostmane Troll Whelps
    .complete 182,1 --Kill Frostmane Troll Whelp (x14)
    .goto Dun Morogh,25.1,75.7
step
    .goto Dun Morogh,25.0,75.9
    .turnin 182 >>Turn in The Troll Cave
    .accept 218 >>Accept The Stolen Journal
step
    .goto Dun Morogh,26.8,79.9,40,0
    .goto Dun Morogh,29.0,79.0,25,0
    .goto Dun Morogh,30.6,80.3
    >>Enter the Troll cave. Kill Grik'nir, then loot him for Grelin's journal
    .complete 218,1 --Collect Grelin Whitebeard's Journal (x1)
step
    #completewith next
    .goto Dun Morogh,28.4,79.7,35,0
    .goto Dun Morogh,26.8,79.6,25 >>Run back out the cave
step
    .goto Dun Morogh,25.1,75.7
    .turnin 218 >> Turn in The Stolen Journal
    .accept 282 >> Accept Senir's Observations
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
    .goto Dun Morogh,34.1,71.6,20,0
    .goto Dun Morogh,35.7,66.0,0
    .goto Dun Morogh,35.7,66.0,20 >>Go through the tunnel
]])

RXPGuides.RegisterGuide([[
#classic
#som
#phase 3-6
<< Alliance Hunter
#name 6-12 Dun Morogh (Hunter)
#version 1
#group RestedXP Alliance 1-20
#defaultfor Dwarf Hunter
#next 11-14 Loch Modan (Hunter)
step
    #completewith ribs1
    >> Kill Boars to get some Boar Meat/Ribs for later
    .collect 769,4 --Collect Chunk of Boar Meat (x4)
    .collect 2886,6 --Collect Crag Boar Rib (x6)
step
    .goto Dun Morogh,46.7,53.8
    .turnin 420 >> Turn in Senir's Observations
step
    #label ribs1
    .goto Dun Morogh,46.8,52.4
    .accept 384 >>Accept Beer Basted Boar Ribs
step
    .goto Dun Morogh,47.2,52.2
    .turnin 2160 >>Turn in Supplies to Tannok
step
    .goto Dun Morogh,46.0,51.7
    .accept 400 >>Accept Tools for Steelgrill
step
    .goto Dun Morogh,49.5,48.3
    .accept 317 >>Accept Stocking Jetsteam
step << skip
    .goto Dun Morogh,49.6,48.5
    .accept 313 >>Accept The Grizzled Den
step
    .goto Dun Morogh,50.1,49.4
    .accept 5541 >>Accept Ammo for Rumbleshot
step
    .goto Dun Morogh,50.4,49.1
    .turnin 400 >>Turn in Tools for Steelgrill
step
    #sticky
    #completewith BoarRibs2
    >> Kill boars to get Boar Ribs for later
    .collect 2886,6 --Collect Crag Boar Rib (x6)
step
    .goto Dun Morogh,52.0,50.1,100,0
    .goto Dun Morogh,51.5,53.9,100,0
    .goto Dun Morogh,50.1,53.9,100,0
    .goto Dun Morogh,49.9,50.9,100,0
    .goto Dun Morogh,48.0,49.5,100,0
    .goto Dun Morogh,48.2,46.9,100,0
    .goto Dun Morogh,43.5,52.5,100,0
    .goto Dun Morogh,52.0,50.1,100,0
    .goto Dun Morogh,51.5,53.9,100,0
    .goto Dun Morogh,50.1,53.9,100,0
    .goto Dun Morogh,49.9,50.9,100,0
    .goto Dun Morogh,48.0,49.5,100,0
    .goto Dun Morogh,48.2,46.9,100,0
    .goto Dun Morogh,43.5,52.5,100,0
    .goto Dun Morogh,52.0,50.1,100,0
    .goto Dun Morogh,51.5,53.9,100,0
    .goto Dun Morogh,50.1,53.9,100,0
    .goto Dun Morogh,49.9,50.9,100,0
    .goto Dun Morogh,48.0,49.5,100,0
    .goto Dun Morogh,48.2,46.9,100,0
    .goto Dun Morogh,43.5,52.5,100,0
    .goto Dun Morogh,52.0,50.1,0
    .goto Dun Morogh,51.5,53.9,0
    .goto Dun Morogh,50.1,53.9,0
    .goto Dun Morogh,49.9,50.9,0
    .goto Dun Morogh,48.0,49.5,0
    .goto Dun Morogh,48.2,46.9,0
    .goto Dun Morogh,43.5,52.5
    >>Get the items for Stocking Jetsteam
    .complete 317,1 --Collect Chunk of Boar Meat (x4)
    .complete 317,2 --Collect Thick Bear Fur (x2)
step
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
    >>Loot the crate
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
step << skip
    .goto Dun Morogh,42.25,53.68,40,0
    .goto Dun Morogh,41.07,49.04,50,0
    .goto Dun Morogh,42.25,53.68
    >> Go into the cave. Kill Wendigos. Loot them for their Manes
    .complete 313,1 --Collect Wendigo Mane (x8)
step
    .xp 7
step
    >>Grind some mobs en route
    .goto Dun Morogh,35.2,56.4,60,0
    .goto Dun Morogh,36.0,52.0,60,0
    .goto Dun Morogh,34.6,51.7
    .accept 312 >> Accept Tundra MacGrann's Stolen Stash
step << !Mage
    .goto Dun Morogh,38.5,54.0
    >>Wait until Old Icebeard leaves the cave so you can sneak in and loot the chest, or do this
        .link https://www.youtube.com/watch?v=o55Y3LjgKoE >>CLICK HERE
    .complete 312,1 --MacGrann's Dried Meats (1)
step
    .goto Dun Morogh,34.6,51.6
    .turnin 312 >>Turn in Tundra MacGrann's Stolen Stash
step
    .goto Dun Morogh,30.4,45.8
    .vendor >> vendor trash
step
    .goto Dun Morogh,30.2,45.8
    >>Speak to Rejold Barleybrew
    .turnin 318 >>Turn in Evershine
    .accept 319 >>Accept A Favor for Evershine
    .accept 315 >>Accept The Perfect Stout
step
    #label BoarRibs2
    .goto Dun Morogh,30.2,45.4
    >>Speak to Marleth Barleybrew
    .accept 310 >>Accept Bitter Rivals
step
    #completewith next
    >> Kill Bears, Boars and Leopards
    .complete 319,1 --Kill Ice Claw Bear (x6)
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .complete 319,3 --Kill Snow Leopard (x8)
step << Hunter
	#hardcore
    .goto Dun Morogh,46.7,53.8
    .complete 384,1
    .xp 8-1540 >>Grind until you are 1540 xp away from level 8.
step << Hunter
	#softcore
    .goto Dun Morogh,30.9,35.1
    .complete 384,1
    .xp 8-1540 >>Grind until you are 1540 xp away from level 8.
step
    #softcore
    .goto Dun Morogh,30.9,33.1,15 >>Run up the mountain north
step
    #softcore
    .goto Dun Morogh,32.4,29.1,15 >>Follow it up to here
step
    #softcore
    .goto Dun Morogh,33.0,27.2,25,0
    .goto Dun Morogh,33.0,25.2,25,0
    .goto Wetlands,11.6,43.4,60,0
    .goto Wetlands,11.6,43.4,0
    .deathskip >>Keep running straight north, Jump down and die once the General Chat changes to Wetlands, then respawn at Menethil Harbor
step
    #completewith next
    #softcore
    .goto Wetlands,12.7,46.7,80,0 >> Swim to shore
step
    #softcore
    .goto Wetlands,9.5,59.7
    .fp Menethil>> Get the Menethil Harbor flight path
step
    #softcore
    #completewith next
    .hs >> Hearth back to Kharanos
step << skip
    .goto Dun Morogh,49.6,48.5
    .turnin 313 >>Turn in The Grizzled Den
step
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
    .home >> Set your Hearthstone to Kharanos
step
    .goto Dun Morogh,46.9,52.4
    >>Speak to Ragnar Thunderbrew
    .turnin 384 >>Turn in Beer Basted Boar Ribs
step
    .goto Dun Morogh,46.7,53.9
    .accept 287 >>Accept Frostmane Hold
step  << skip
    .goto Dun Morogh,49.6,48.5
    .turnin 313 >>Turn in The Grizzled Den
step << Hunter
    .goto Dun Morogh,45.8,53.0
    .train 5116>> Train Concussive Shot
step
    #sticky
    #label favor
    >> Kill Bears, Boars and Leopards
    .complete 319,1 --Kill Ice Claw Bear (x6)
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .complete 319,3 --Kill Snow Leopard (x8)
step
    #completewith next
    .goto Dun Morogh,43.1,45.0,20,0
    .goto Dun Morogh,42.1,45.4,20 >> Run up the ramp to Shimmerweed
step
    .goto Dun Morogh,40.9,45.3,50,0
    .goto Dun Morogh,41.5,43.6,50,0
    .goto Dun Morogh,39.7,40.0,50,0
    .goto Dun Morogh,42.1,34.3,50,0
    .goto Dun Morogh,39.5,43.0
    .goto Dun Morogh,41.5,36.0
    >>Clear mobs in this area. Be careful if you need to clear the middle camp. You can pull the mobs in the huts and line of sight (LoS) them behind the huts if you need 2 more mobs. If you get unlucky, run to the other area
    .complete 315,1 --Collect Shimmerweed (x6)
step
    #sticky
    #requires favor
    #label return
    .goto Dun Morogh,30.2,45.7
    >>Speak to Rejold Barleybrew
    .turnin 319 >>Turn in A Favor for Evershine
    .accept 320 >>Accept Return to Bellowfiz
step
    .goto Dun Morogh,30.2,45.5
    .turnin 311 >>Turn in Return to Marleth
    .turnin 315 >>Turn in The Perfect Stout
    .accept 413 >>Accept Shimmer Stout
step
    #requires return
    >>Enter the troll cave
    >>Be very careful not to die here
    .goto Dun Morogh,22.3,50.7,30,0
    .goto Dun Morogh,22.5,51.5,30,0
    .goto Dun Morogh,22.7,52.0
    .complete 287,1 --Fully explore Frostmane Hold (1)
    .complete 287,2 --Frostmane Headhunter (5)
step
    #hardcore
    #completewith next
    .goto Dun Morogh,46.3,52.1,200 >> Start running back to Kharanos
step
    #era
    .xp 10-1470 >> Grind until you are 1450xp away from level 10
step
    #som
	#phase 1-2
    .xp 10-2050 >> Grind until you are 2050xp away from level 10
step
	#som
	#phase 3-6
	.xp 10-2950 >> Grind until you are 2950xp away from level 10
step
	#completewith next
	#hardcore
	.hs >> Hearth to Kharanos
step
	#completewith next
	#softcore
	.deathskip >> Die and respawn at Kharanos
step
    .goto Dun Morogh,46.7,53.7
    .turnin 287 >>Turn in Frostmane Hold
    .accept 291 >>Accept The Reports
step
    .goto Dun Morogh,49.4,48.3
    .turnin 320 >>Turn in Return to Bellowfiz
step
    .goto Dun Morogh,45.8,53.0
    .accept 6064 >>Accept Taming the Beast
step
    .goto Dun Morogh,48.3,56.9
    >>Click the taming rod in your bag on a Large Crag Boar. Try to do it at max range (30 yards)
    .complete 6064,1 --Tame a Large Crag Boar (1)
step
    .goto Dun Morogh,45.8,53.0
    .turnin 6064 >>Turn in Taming the Beast
    .accept 6084 >>Accept Taming the Beast
step
    .goto Dun Morogh,49.4,59.4
    >>Click the taming rod in your bag on a Snow Leopard. Try to do it at max range (30 yards)
    .complete 6084,1 --Tame a Snow Leopard (1)
step
    .goto Dun Morogh,45.8,53.0
    .turnin 6084 >>Turn in Taming the Beast
    .accept 6085 >>Accept Taming the Beast
step
    .goto Dun Morogh,50.4,59.7
    >>Click the taming rod in your bag on an Ice Claw Bear. Try to do it at max range (30 yards)
    .complete 6085,1 --Tame an Ice Claw Bear (1)
step
    .goto Dun Morogh,45.8,53.0
    .turnin 6085 >>Turn in Taming the Beast
    .accept 6086 >>Accept Training the Beast
step
    .goto Dun Morogh,63.1,49.8
    >>Speak to Rudra Amberstill
    .accept 314 >>Accept Protecting the Herd
step
    #sticky
    #completewith next
    .goto Dun Morogh,62.3,50.3,12,0
    .goto Dun Morogh,62.2,49.4,8 >>Run up this part of the mountain
step
    .goto Dun Morogh,62.6,46.1
    >>Kill Vagash. Loot him for his Fang, this quest is HARD, try to kite him to the guard parked at the intersection
    .complete 314,1 --Collect Fang of Vagash (x)
    .link https://www.youtube.com/watch?v=6PfhYU-9hoA >> Click here for video reference
step
    .goto Dun Morogh,63.1,49.8
    .turnin 314 >> Turn in Protecting the Herd
    .isQuestComplete 314
step
    .goto Dun Morogh,69.1,56.3
    .accept 432 >> Accept Those Blasted Troggs!
step
    .goto Dun Morogh,70.7,56.4,50,0
    .goto Dun Morogh,70.62,52.39
    >>Kill Troggs in the cave and around the quarry
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    --.complete 433,1 --Kill Rockjaw Bonesnapper (x10)
step
    .goto Dun Morogh,69.1,56.3
    .turnin 432 >> Turn in Those Blasted Troggs!
step << skip
    .goto Dun Morogh,68.4,54.5
    .train 2550 >> Train Cooking from Ghilm
step
    .goto Dun Morogh,83.8,39.2
    .accept 419 >> Accept The Lost Pilot
step
    .goto Dun Morogh,79.7,36.2
    .turnin 419 >> Turn in The Lost Pilot
    .accept 417 >> Accept A Pilot's Revenge
step
    >>Kill Mangeclaw. Loot him for his Claw, this quest can be hard, kite him to the guard parked next to the quest giver
    .goto Dun Morogh,80.0,36.4
    .complete 417,1 --Collect Mangy Claw (x1)
step
    .goto Dun Morogh,83.9,39.2
    .turnin 417 >> Turn in A Pilot's Revenge

step
    .goto Dun Morogh,86.3,48.8
    .turnin 413 >> Turn in Shimmer Stout
    .accept 414 >> Accept Stout to Kadrell
]])

RXPGuides.RegisterGuide([[
#classic
#som
#phase 3-6
<< Alliance Hunter
#name 11-14 Loch Modan (Hunter)
#version 1
#group RestedXP Alliance 1-20
#defaultfor Dwarf
#next 11-16 Darkshore

step
    .goto Loch Modan,22.07,73.12
    >>Head to Loch Modan
    .accept 224 >> Accept In Defense of the King's Lands
step
    .goto Loch Modan,23.23,73.67
    .accept 267 >> Accept The Trogg Threat
step
    #sticky
    #label ratcatching
     >> Talk to the guard patrolling Thelsamar
    --.accept 416 >> Accept Rat Catching
    .accept 1339 >> Accept Mountaineer Stormpike's Task
step
       .goto Loch Modan,35.5,48.4
    .home >> Set your Hearthstone to Loch Modan
step
    .goto Loch Modan,37.01,47.80
    .accept 6387 >> Accept Honor Students
step
    #requires ratcatching
    .goto Loch Modan,33.93,50.95
    .turnin 6387 >> Turn in Honor Students
    .accept 6391 >> Accept Ride to Ironforge
step
     #completewith next
    .fly Ironforge>> Fly to Ironforge
step
    .goto Ironforge,51.52,26.31
    .turnin 6391 >> Turn in Ride to Ironforge
    .accept 6388 >> Accept Gryth Thurden
step
    .goto Dun Morogh,57.42,30.31
    .turnin 291 >> Turn in The Reports
step <<  Hunter
    .goto Ironforge,70.86,85.83
    .turnin 6086 >> Turn in Training the Beast
step
    .goto Ironforge,55.50,47.74
    .turnin 6388 >> Turn in Gryth Thurden
    .accept 6392 >> Accept Return to Brock
step
    #completewith next
    .fly Loch Modan>> Fly to Loch Modan
step
    .goto Loch Modan,37.0,47.8
    >>Go inside the building, then go downstairs. Talk to Brock
    .turnin 6392 >> Turn in Return to Brock
step << Hunter
    .goto Loch Modan,35.8,43.5
    >>Buy a level 9 gun upgrade from Vrok Blunderblast if you have 13s to spare, skip this step otherwise
    .collect 2511,1
step
    .goto Loch Modan,32.55,74.61
    >>Kill Troggs
    .complete 224,1
    .complete 224,2
    .complete 267,1
step
    .goto Loch Modan,22.07,73.12
    .turnin 224 >> Turn in In Defense of the King's Lands
step
    .goto Loch Modan,23.23,73.67
    .turnin 267 >> Turn in The Trogg Threat
step
    .goto Loch Modan,24.76,18.39
    .turnin 1339 >> Turn in Mountaineer Stormpike's Task
step
    .goto Loch Modan,24.76,18.39
    .accept 1338 >> Accept Stormpike's Order
step
	#softcore
    #completewith next
    .deathskip >> Pull mobs and die on purpose, respawn at Thelsamar
step
    .goto Loch Modan,33.93,50.95
    .fly Ironforge>> Fly to Ironforge
step
    .goto Ironforge,60.0,36.8
    .train 2550 >> Make sure to train cooking in Ironforge
step
    .goto Ironforge,74.64,11.74
    .turnin 301 >> Turn in Report to Ironforge
step
    .goto Ironforge,74.40,51.10,30,0
    .goto Ironforge,74.40,51.10,0
     >> Enter the Deeprun Tram, speak with the gnome at the middle platform
    .accept 6661 >> Accept Deeprun Rat Roundup
step
    >>Use the flute provided on the rats around the station
    .complete 6661,1
step
    .turnin 6661 >> Turn in Deeprun Rat Roundup
    .accept 6662 >> Accept Me Brother, Nipsy
step
     >> Ride to the other side of the tram and turn in
    .turnin 6662 >> Turn in Me Brother, Nipsy
step
    #completewith next
    .goto StormwindClassic,60.5,12.3
    .zone Stormwind City >>Exit the tram into Stormwind
step
    #softcore
    .goto StormwindClassic,51.75,12.06
    .accept 353 >> Accept Stormpike's Delivery
step
    .goto StormwindClassic,58.08,16.52
    .turnin 1338 >> Turn in Stormpike's Order
step
    .goto StormwindClassic,57.23,57.29
    .trainer >> Train Staves
step
	#completewith next
    .hs >> Hearth back to Thelsamar, take the tram to Ironforge and fly to Loch Modan if your hearthstone is still on cooldown
step
    .goto Loch Modan,24.76,18.39
    .turnin 353 >> Turn in Stormpike's Delivery
step
	#softcore
     #completewith next
     .deathskip >> Die and respawn at the graveyard
step
    #softcore
    #completewith next
    .goto Loch Modan,33.93,50.95
    .fly Wetlands>> Fly to Wetlands
step
    #hardcore
    .goto Dun Morogh,52.6,36.0
    .zone Dun Morogh >> Take the tram back to Ironforge and head out to Dun Morogh
step
    #hardcore
    #label skip1
    #completewith fp
	+Do the Loch Modan - Wetlands run, you can save a lot of time by doing a series of mountain jumps, see the video below
    .link https://www.youtube.com/watch?v=q-yHviS7baQ >> This skip is hard, click here for video reference
step
    #hardcore
    #label fp
    .goto Wetlands,9.5,59.7
    .fp Menethil Harbor >> Get the Menethil Harbor flight path
step << Hunter
	.goto Wetlands,11.4,59.6
	>>Buy the level 16 weapon upgrade from Murndan Deth inside the blacksmith, skip this step if you don't have enough money
	.collect 3023,1
step
    .goto Wetlands,4.6,57.2
    .zone Darkshore >>Head to the Menethil Harbor docks and take the boat to Darkshore
    >>Make a campfire and level cooking while you wait
    >>Train first aid while waiting for the boat, you'll need 80 points in first aid for a level 24 quest later down the road << Rogue
]])
