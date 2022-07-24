RXPGuides.RegisterGuide([[
#classic
#era/som
<< Alliance
#name 1-11 Elwynn Forest
#version 1
#group RestedXP Alliance 1-20
#defaultfor Human
#next 11-13 Loch Modan
step << !Human
    #sticky
    #completewith next
    .goto Elwynn Forest,48.2,42.9
    +You have selected a guide meant for Humans. You should choose the same starter zone that you start in
step << Mage
    #completewith next
    +Note that you have selected the single target mage guide. Single target is a lot safer than AoE Mage, but a LOT slower
step << Warlock
    #sticky
    #completewith next
    +Kill Wolves for 10c+ of vendor trash
    .goto Elwynn Forest,49.4,45.6,60,0
step << Warlock
    .goto Elwynn Forest,50.1,42.7
    .vendor >>vendor trash
step << Warlock
    .goto Elwynn Forest,49.9,42.6
    .accept 1598 >> Accept The Stolen Tome
    .trainer >>Train Immolate
step << Warlock
    #hardcore
    .goto Elwynn Forest,52.9,44.3,60,0
    >>Kill some Wolves en route, then watch this
    .link https://www.youtube.com/watch?v=_-KEke9Yeik >>CLICK HERE
    >>Use your Hearthstone inside the camp when you loot it
    .goto Elwynn Forest,56.7,44.0
    .complete 1598,1 --Collect Powers of the Void (x1)
step << Warlock
    #softcore
    .goto Elwynn Forest,52.9,44.3,60,0
    >>Kill some Wolves en route, then watch this
    .link https://www.youtube.com/watch?v=_-KEke9Yeik >>CLICK HERE
    .goto Elwynn Forest,56.7,44.0
    .complete 1598,1 --Collect Powers of the Void (x1)
step << Warlock
    #softcore
    .deathskip >> Die and respawn at the Spirit Healer
step << Warlock
    #hardcore
    #completewith next
    >>Make sure you're deep inside the tent so you don't reaggro
    .hs >> Hearth back to Northshire Valley
step << Warlock
    .goto Elwynn Forest,49.9,42.6
    .turnin 1598 >> Turn in The Stolen Tome
step
    >>Summon Imp, rebuff Demon Skin << Warlock
    >>Delete your Hearthstone
    .goto Elwynn Forest,48.2,42.9
    .accept 783 >> Accept A Threat Within
step << Warrior
    #sticky
    #completewith next
    +Kill Wolves for 10c+ of vendor trash
    .goto Elwynn Forest,46.4,40.3,60,0
step << Warrior
    .goto Elwynn Forest,47.5,41.6
    .vendor >>vendor trash
step
    .goto Elwynn Forest,48.9,41.6
    .turnin 783 >> Turn in A Threat Within
    .accept 7 >> Accept Kobold Camp Cleanup
step << Warrior
    .goto Elwynn Forest,50.2,42.3
    .trainer >>Train Battle Shout
step
    >>Run back outside << Warrior
    .goto Elwynn Forest,48.2,42.9
    .accept 5261 >> Accept Eagan Peltskinner
step << Priest/Mage/Warlock
    .goto Elwynn Forest,46.2,40.4
    .vendor >>Kill wolves until 50c worth of vendor trash. Vendor, then buy x10 water from Brother Danil.
    .collect 159,10 --Collect Refreshing Spring Water (x10)
step << Priest/Mage
    .xp 2 >> Grind to 2
step
    .goto Elwynn Forest,48.9,40.2
    .turnin 5261 >> Turn in Eagan Peltskinner
    .accept 33 >> Accept Wolves Across The Border
step
    .goto Elwynn Forest,46.70,37.78
    >>Kill Young Wolves. Loot them for Meat
    .complete 33,1 --Collect Tough Wolf Meat (x8)
step
    .goto Elwynn Forest,49.05,35.33
    >>Kill Kobold Vermin
    .complete 7,1 --Kill Kobold Vermin (x10)
step
    .goto Elwynn Forest,48.9,40.2
    .turnin 33 >> Turn in Wolves Across The Border
step << Priest/Mage/Warlock
    .goto Elwynn Forest,47.6,41.5
    .vendor >>vendor trash, then buy x10 more water from Brother Danil
step << !Priest !Mage !Warlock
    .goto Elwynn Forest,47.6,41.5
    .vendor >>vendor trash
step
    .goto Elwynn Forest,48.9,41.6
    .turnin 7 >> Turn in Kobold Camp Cleanup
    .accept 15 >> Accept Investigate Echo Ridge
    .accept 3100 >> Accept Simple Letter << Warrior
    .accept 3101 >> Accept Consecrated Letter << Paladin
    .accept 3102 >> Accept Encrypted Letter << Rogue
    .accept 3103 >> Accept Hallowed Letter << Priest
    .accept 3104 >> Accept Glyphic Letter << Mage
    .accept 3105 >> Accept Tainted Letter << Warlock
step
    .xp 3 >> Grind to 3
step
    .goto Elwynn Forest,47.42,32.68
    >>Kill Kobold Workers
    .complete 15,1 --Kill Kobold Worker (x10)
step
    #sticky
    #label xp3
    .xp 3+1110 >>Grind to 1110+/1400xp on your way back
step
    .goto Elwynn Forest,47.7,41.4
    .vendor >>vendor trash
--N need SoM xp note
step
    #requires xp3
    .goto Elwynn Forest,48.9,41.6
    .turnin 15 >> Turn in Investigate Echo Ridge
    .accept 21 >> Accept Skirmish at Echo Ridge
step << Priest/Mage
    #sticky
    #completewith next
    .goto Elwynn Forest,49.3,40.7,15 >> Go here
step << Mage
    #sticky
    #completewith next
    .goto Elwynn Forest,49.5,40.0,15 >>Go upstairs
step << Mage
    .goto Elwynn Forest,49.7,39.4
    .turnin 3104 >> Turn in Glyphic Letter
    .trainer >> Train your class spells
step << Priest
    #sticky
    #completewith next
    .goto Elwynn Forest,49.8,40.2,15 >> Go through the doorway
step << Priest
    .goto Elwynn Forest,49.8,39.5
    .turnin 3103 >> Turn in Hallowed Letter
    .trainer >> Train your class spells
step << Warrior/Paladin
    #sticky
    #completewith next
    .goto Elwynn Forest,49.6,41.8,15 >>Stay downstairs
step << Warrior
    .goto Elwynn Forest,50.2,42.3
    .turnin 3100 >> Turn in Simple Letter
    .trainer >> Train your class spells
step << Paladin
    .goto Elwynn Forest,50.4,42.1
    .turnin 3101 >> Turn in Consecrated Letter
    .trainer >> Train your class spells
step
    .goto Elwynn Forest,48.2,42.9
    .accept 18 >> Accept Brotherhood of Thieves
step << Warlock
    .goto Elwynn Forest,49.9,42.6
    .turnin 3105 >> Turn in Tainted Letter
    .xp 4 >> Grind to 4
    .trainer >>Train Corruption
step
    .goto Elwynn Forest,54.57,49.03
    >>Kill Defias Thugs. Loot them for Bandanas
    .complete 18,1 --Collect Red Burlap Bandana (x12)
step << Rogue
    .xp 4 >> Grind to 4
step
    .goto Elwynn Forest,48.2,42.9
    .turnin 18 >> Turn in Brotherhood of Thieves
    .accept 6 >> Accept Bounty on Garrick Padfoot
    .accept 3903 >> Accept Milly Osworth
step
    .goto Elwynn Forest,47.7,41.4
    .vendor >>vendor trash, repair
step
    .goto Elwynn Forest,47.66,31.88,40,0
    .goto Elwynn Forest,48.61,27.63
    >>Kill Laborers in the mine
    .complete 21,1 --Kill Kobold Laborer (x12)
step
    .xp 5 >> Grind to 5
step << !Priest !Mage
    .goto Elwynn Forest,50.7,39.2
    .turnin 3903 >> Turn in Milly Osworth. Skip followup
step << Priest/Mage
    .goto Elwynn Forest,50.7,39.2
    .turnin 3903 >> Turn in Milly Osworth
    .accept 3904 >> Accept Milly's Harvest
step << Rogue
    .goto Elwynn Forest,50.3,39.9
    >>You don't need to train
    .turnin 3102 >> Turn in Encrypted Letter
step << Priest/Mage
    >>Loot the Buckets of Grapes in the field
    .goto Elwynn Forest,54.5,49.4
    .complete 3904,1 --Collect Milly's Harvest (x8)
step
    .goto Elwynn Forest,57.5,48.2
    >>Grind en route. Kill Garrick and loot his Head
    .complete 6,1 --Collect Garrick's Head (x1)
step << !Priest !Mage
    #sticky
    .abandon 3904 >> Abandon Milly's Harvest
step << !Priest !Mage
    .xp 5+1715 >> Grind on your way back to 1715+/2800xp
    .goto Elwynn Forest,48.2,42.9
--N SoM xp values
step << Priest/Mage
    .xp 5+1175 >> Grind on your way back to 1175+/2800xp
    .goto Elwynn Forest,50.7,39.2
step << Priest/Mage
    .goto Elwynn Forest,50.7,39.2
    .turnin 3904 >> Turn in Milly's Harvest
    .accept 3905 >>Accept Grape Manifest
step
    .goto Elwynn Forest,48.2,42.9
    .turnin 6 >> Turn in Bounty on Garrick Padfoot
step
    .goto Elwynn Forest,48.9,41.6
    .turnin 21 >> Turn in Skirmish at Echo Ridge
    .accept 54 >> Accept Report to Goldshire
step << Priest/Mage
    #sticky
    #completewith next
    .goto Elwynn Forest,49.6,41.6,15,0
    .goto Elwynn Forest,48.9,41.3,10 >>Go upstairs
step << Priest/Mage
    .goto Elwynn Forest,49.5,41.6
    .turnin 3905 >>Turn in Grape Manifest
step << Priest
    .goto Elwynn Forest,49.8,39.5
    .accept 5623 >> Accept In Favor of the Light
step
    .goto Elwynn Forest,45.6,47.7
    .accept 2158 >> Accept Rest and Relaxation
step
    #hardcore
    .goto Elwynn Forest,42.1,65.9
    .turnin 54 >> Turn in Report to Goldshire
    .accept 62 >> Accept The Fargodeep Mine
step
    #softcore
    #sticky
    #completewith Goldshire
    .goto Elwynn Forest,39.5,60.5,200 >> Die and respawn at the Spirit Healer, or run to Goldshire
step << Warrior/Paladin/Rogue
    .goto Elwynn Forest,41.7,65.5
    .trainer >> Train Blacksmithing from Argus. This will allow you to make +2 damage sharpening stones for your weapon which are very strong. << Warrior/Rogue
    .trainer >> Train Blacksmithing from Argus. This will allow you to make +2 damage weightstones for your weapon which are very strong. << Paladin
step << Warrior
    .goto Elwynn Forest,41.5,65.9
    >>Repair your weapon. If you have enough money (5s 36c) buy a Gladius from Corina. Otherwise, skip this step (you'll come back later)
    .collect 2488,1
step << Rogue
    .goto Elwynn Forest,41.5,65.9
    >>Repair your weapon. If you have enough money (4s 1c) buy a Stiletto from Corina. Otherwise, skip this step (you'll come back later)
    .collect 2494,1
step << Paladin
    .goto Elwynn Forest,41.5,65.9
    >>Repair your weapon. If you have enough money (7s 1c) buy a Wooden Mallet from Corina. Otherwise, skip this step (you'll come back later)
    .collect 2493,1 --Collect Wooden Mallet
step << Mage/Priest/Warlock
    #completewith next
    .goto Elwynn Forest,41.7,65.9
    .vendor >> vendor trash, repair
step
    #label Goldshire
    .goto Elwynn Forest,42.1,65.9
    .turnin 54 >> Turn in Report to Goldshire
    .accept 62 >> Accept The Fargodeep Mine
step
    >>On your close left as you go in the Inn
    .goto Elwynn Forest,42.9,65.7,15,0
    .goto Elwynn Forest,43.3,65.7
    .accept 60 >> Accept Kobold Candles
step
    .goto Elwynn Forest,43.8,65.8
    >>Do NOT buy any food/drink here << Warlock
    .turnin 2158 >> Turn in Rest and Relaxation
    .home >> Set your Hearthstone to Goldshire
step
    .xp 6 >> Grind to 6
step << Rogue
    .goto Elwynn Forest,43.96,65.92
    .vendor 151 >> Buy the level 3 thrown from Brog. Equip it
step << Warlock
    #sticky
    #completewith next
    .goto Elwynn Forest,44.1,66.0,10 >>Go to the room behind the innkeeper, then go downstairs.
step << Warlock
    .goto Elwynn Forest,44.4,66.2
    .trainer >> Train your class spells
    .goto Elwynn Forest,44.4,66.0
    .vendor >> Buy the Blood Pact book if you have money after training (otherwise buy it later)
step << Mage/Priest/Rogue
    #sticky
    #completewith next
    .goto Elwynn Forest,43.7,66.4,12 >>Go upstairs
step << Mage
    .goto Elwynn Forest,43.2,66.2
    .trainer >> Train your class spells
step << Priest
    .goto Elwynn Forest,43.3,65.7
    .turnin 5623 >> Turn in In Favor of the Light
    .accept 5624 >> Accept Garments of the Light
    .trainer >> Train your class spells
step << Rogue
    .money <0.01
    .goto Elwynn Forest,43.9,65.9
    .trainer >> Train your class spells
step << Rogue/Warrior
    .money <0.01
    .goto Elwynn Forest,43.4,65.5
    .train 3273 >> Train First Aid - Don't make all your bandages at once, better time to make them later
step << Warrior
    .goto Elwynn Forest,43.8,65.8
    .vendor >> Buy level 5 food down to 1 Silver
step << Rogue
    .goto Elwynn Forest,43.8,65.8
    .vendor >> Buy up to 20 level 5 food
step << Warrior
    .goto Elwynn Forest,41.1,65.8
    .trainer >> Train your class spells
step << Paladin
    .goto Elwynn Forest,41.1,66.0
    .trainer >> Train your class spells
step
    .goto Elwynn Forest,42.1,67.3
    .accept 47 >> Accept Gold Dust Exchange
step << Priest
    >>Use Lesser Heal Rank 2 and then Power Word: Fortitude on Guard Roberts
    .goto Elwynn Forest,48.2,68.0
    .complete 5624,1 --Heal and fortify Guard Roberts
step
    #sticky
    #completewith BoarMeat1
    >>Start killing some boars you see for Boar Meat
    .collect 769,4 --Collect Chunk of Boar Meat (x4)
step
    .goto Elwynn Forest,34.5,84.3
    .accept 85 >> Accept Lost Necklace
    .goto Elwynn Forest,34.7,84.5
    .accept 88 >> Accept Princess Must Die!
step
    #sticky
    #completewith Candles
    >> Get some Candles from nearby Kobolds
    .complete 60,1 --Collect Kobold Candle (x8)
step
    #sticky
    #label Candles
    #completewith next
    >> Get some Gold Dust from nearby Kobolds
    .complete 47,1 --Collect Gold Dust (x10)
step << Priest/Mage/Warlock
    #label Dust
    >>Grind mobs east through the outside of the mine
    .goto Elwynn Forest,43.1,85.7
    .turnin 85 >> Turn in Lost Necklace
    .accept 86 >> Accept Pie for Billy
step << Warrior
    #label Dust
    >>Grind mobs east through the outside of the mine. If you get a Rough Stone at any point, make it into a Sharpening Stone via Blacksmithing, and apply it on your sword
    .goto Elwynn Forest,43.1,85.7
    .turnin 85 >> Turn in Lost Necklace
    .accept 86 >> Accept Pie for Billy
step << Rogue
    #label Dust
    >>Grind mobs east through the outside of the mine. If you get a Rough Stone at any point, make it into a Sharpening Stone via Blacksmithing, and apply it on your dagger
    .goto Elwynn Forest,43.1,85.7
    .turnin 85 >> Turn in Lost Necklace
    .accept 86 >> Accept Pie for Billy
step << Paladin
    #label Dust
    >>Grind mobs east through the outside of the mine. If you get a Rough Stone at any point, Make it into a Weightstone via Blacksmithing, and apply it to your mace
    .goto Elwynn Forest,43.1,85.7
    .turnin 85 >> Turn in Lost Necklace
    .accept 86 >> Accept Pie for Billy
step
    #label BoarMeat1
    .goto Elwynn Forest,43.2,89.6
    .accept 106 >> Accept Young Lovers
step << Mage/Priest/Warlock
    .goto Elwynn Forest,42.4,89.4
    .vendor >>Vendor, buy as much milk as you can
step << !Mage !Priest !Warlock
    .goto Elwynn Forest,42.4,89.4
    .vendor >>vendor trash
step
    #completewith next
    >>Grind boars for Boar Meat en route
    .collect 769,4 --Collect Chunk of Boar Meat (x4)
step
    .goto Elwynn Forest,29.8,86.0
    .turnin 106 >> Turn in Young Lovers
    .accept 111 >> Accept Speak with Gramma
step
    .goto Elwynn Forest,32.5,85.5
    >>Finish off getting the Boar Meat
    .complete 86,1 --Collect Chunk of Boar Meat (x4)
step
    .goto Elwynn Forest,34.5,84.3
    .turnin 86 >> Turn in Pie for Billy
    .accept 84 >> Accept Back to Billy
step
    .goto Elwynn Forest,34.9,83.9
    .turnin 111 >> Turn in Speak with Gramma
    .accept 107 >> Accept Note to William
step
    #sticky
    #label KoboldCandles
    >> Get some Candles from nearby Kobolds
    .complete 60,1 --Collect Kobold Candle (x8)
step
    #sticky
    #label GoldDust
    >> Get some Gold Dust from nearby Kobolds
    .complete 47,1 --Collect Gold Dust (x10)
step
    >>Grind mobs east through the outside of the mine
    .goto Elwynn Forest,43.1,85.7
    .turnin 84 >> Turn in Back to Billy
    .accept 87 >> Accept Goldtooth
step
    >>Go into the mine
    .goto Elwynn Forest,40.5,82.3
    .complete 62,1 --Scout Through the Fargodeep Mine
step << Warrior
    >>Pool as much rage as you can (grind Rage off of other mobs) then kill Goldtooth for Bernice's Necklace
    .goto Elwynn Forest,41.7,78.1
    .complete 87,1 --Collect Bernice's Necklace  (x1)
step << !Warrior
    >>Kill Goldtooth for Bernice's Necklace
    .goto Elwynn Forest,41.7,78.1
    .complete 87,1 --Collect Bernice's Necklace  (x1)
step << Warrior
    #sticky
    #completewith Goldtooth
    +Try to save a single healing potion from now on as you will need it for Rolf's Corpse later
step << Warrior/Rogue
    >>Remember to make Sharpening Stones if you picked up a Rough Stone
    .xp 7+1600 >>Grind until 1600+/4500xp
step << Paladin
    >>Remember to make Weightstones if you picked up a Rough Stone
    .xp 7+1600 >>Grind until 1600+/4500xp
step << !Priest !Paladin !Warrior !Rogue
    .xp 7+1600 >>Grind until 1600+/4500xp
step << Priest
    .xp 7+1260 >>Grind until 1260+/4500xp
--N SoM xp values
step
    #requires KoboldCandles
step
    #label Goldtooth
    #requires GoldDust
    .goto Elwynn Forest,34.5,84.3
    .turnin 87 >> Turn in Goldtooth
step
    >>Grind some mobs back to Goldshire
    .xp 7+2690 >>Grind until 2690+/4500xp << !Priest
    .xp 7+2350 >>Grind until 2350+/4500xp << Priest
    .goto Elwynn Forest,42.1,67.3
step
    .goto Elwynn Forest,42.1,67.3
    .turnin 47 >> Turn in Gold Dust Exchange
    .accept 40 >> Accept A Fishy Peril
step
    .goto Elwynn Forest,42.1,65.9
    .turnin 40 >> Turn in A Fishy Peril
    .accept 35 >> Accept Further Concerns
    .turnin 62 >> Turn in The Fargodeep Mine
    .accept 76 >> Accept The Jasperlode Mine
step
    #completewith next
    .goto Elwynn Forest,41.7,65.9
    .vendor >>vendor trash, repair
step << Warrior
    .goto Elwynn Forest,41.5,65.9
    >>Repair your weapon. If you have enough money (5s 36c) buy a Gladius from Corina. Otherwise, skip this step (you'll come back later)
    .collect 2488,1
step << Rogue
    .goto Elwynn Forest,41.5,65.9
    >>Repair your weapon. If you have enough money (4s 1c) buy a Stiletto from Corina. Otherwise, skip this step (you'll come back later)
    .collect 2494,1
step << Paladin
    .goto Elwynn Forest,41.5,65.9
    >>Repair your weapon. If you have enough money (7s 1c) buy a Wooden Mallet from Corina. Otherwise, skip this step (you'll come back later)
    .collect 2493,1 --Collect Wooden Mallet
step
    .goto Elwynn Forest,43.3,65.7
    .turnin 60 >> Turn in Kobold Candles
    .accept 61 >> Accept Shipment to Stormwind
    .turnin 107 >> Turn in Note to William
    .accept 112 >> Accept Collecting Kelp
step
    .xp 8 >> Grind to 8
step << Warlock
    >>Go back into the basement
    .goto Elwynn Forest,44.4,66.2
    .trainer >> Train your class spells
    .goto Elwynn Forest,44.4,66.0
    .vendor >> Buy the Firebolt book if you have money after training (otherwise buy it later)
step
    .money <0.1250
    .goto Elwynn Forest,44.0,65.9
    .vendor >>Buy a 6 slot bag from Brog
step << Warrior
    .goto Elwynn Forest,41.1,65.8
    .trainer >> Train your class spells
step << Paladin
    .goto Elwynn Forest,41.1,66.0
    .trainer >> Train your class spells
step << Mage/Priest/Rogue/Warrior
    #completewith next
    .goto Elwynn Forest,43.7,66.4,15 >>Go upstairs
step << Mage
    .goto Elwynn Forest,43.2,66.2
    .trainer >> Train your class spells
step << Priest
    .goto Elwynn Forest,43.3,65.7
    .turnin 5624 >> Turn in Garments of the Light
    .trainer >> Train your class spells
step << Rogue
    .goto Elwynn Forest,43.9,65.9
    .trainer >> Train your class spells
step << Rogue/Warrior/Paladin
    .money <0.01
    .goto Elwynn Forest,43.4,65.5
    .trainer >> Train First Aid - Don't make all your bandages at once, better time to make them later
step << !Warrior !Rogue
    .goto Elwynn Forest,43.8,65.8
    .vendor >>Buy level 5 Water up to 40
step << Warrior/Rogue
    .goto Elwynn Forest,43.8,65.8
    .vendor 295 >>Buy level 5 Food up to 40
step
    >>Grind Murlocs toward the east and loot them for Kelp Frond. kill mobs on the island if you still need some
    .goto Elwynn Forest,47.6,63.3,100,0
    .goto Elwynn Forest,51.4,64.6,100,0
    .goto Elwynn Forest,57.6,62.8,100,0
    .goto Elwynn Forest,56.4,66.6,100,0
    .goto Elwynn Forest,53.8,66.8,100,0
    .goto Elwynn Forest,57.6,62.8
    .complete 112,1 --Collect Crystal Kelp Frond (x4)
step
    >>Go in the mine, and keep following the middle path
    >>Grind mobs en route
    .goto Elwynn Forest,61.8,54.0,70,0
    .goto Elwynn Forest,60.4,50.2
    .complete 76,1 --Scout through the Jasperlode Mine
step
    .goto Elwynn Forest,74.0,72.2
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
step << Paladin
    #softcore
    .goto Elwynn Forest,76.8,62.4,100,0
    .goto Elwynn Forest,83.7,59.4,100,0
    .goto Elwynn Forest,76.8,62.4,100,0
    .goto Elwynn Forest,83.7,59.4,100,0
    .goto Elwynn Forest,76.8,62.4
    >>Get bundles of wood at the base of the trees
    .complete 5545,1 --Collect Bundle of Wood (x8)
step << Paladin
    #hardcore
    #completewith Bundles
    >>Keep an eye out for the bundles of logs at the base of the trees
    .complete 5545,1 --Collect Bundle of Wood (x8)
step << !Paladin
    #sticky
    #completewith next
    >>Keep an eye out for the bundles of logs at the base of the trees
    .complete 5545,1 --Collect Bundle of Wood (x8)
step
    #label Bundles
    .goto Elwynn Forest,79.8,55.5,90 >> Go toward the guard's corpse
step << Priest
    .goto Elwynn Forest,79.8,55.5
    >> Kill mobs surrounding the corpse. Precast Renew and Shield, get full mana, then pull the 2 mobs in front of the huts, move away, then nuke one. Run away when you kill one, then kill the other. Loot the carcass on the ground
    >> Be careful as this quest is difficult
    .turnin 45 >> Turn in Discover Rolf's Fate
    .accept 71 >> Accept Report to Thomas
step << !Paladin
    .goto Elwynn Forest,79.8,55.5
    >> Kill mobs surrounding the corpse. Pull the 2 mobs in front of the huts, move away and sheep one whilst killing the other, then kill the sheeped mob. Loot the carcass on the ground << Mage
    >> Pool Rage, then kill the 2 mobs surrounding the corpse. Pull the 2 mobs in front of the huts, move away and keep one hamstrung whilst killing the other. Run away when you kill one (use marbles on it), then pull and kill the other. Loot the carcass on the ground << Warrior
    >> Kill mobs surrounding the corpse. Pull the 2 mobs in front of the huts, move away and nuke one mob. Use Evasion. Run away when you kill one, then kill the other. Loot the carcass on the ground << Rogue
     >>Kill mobs surrounding the corpse. Pull the 2 mobs in front of the huts, move away then keep one feared, and try to keep dots on both. Then loot the carcass on the ground << Warlock
    >> Be careful as this quest is difficult
    .turnin 45 >> Turn in Discover Rolf's Fate
    .accept 71 >> Accept Report to Thomas
step << Paladin
    #softcore
    .goto Elwynn Forest,79.8,55.5
    >> Run on top of the corpse, then use Divine Protection and IMMEDIATELY loot the corpse, handin, and accept the quest. You'll die after
    .turnin 45 >> Turn in Discover Rolf's Fate
    .accept 71 >> Accept Report to Thomas
step << Paladin
    #hardcore
    .goto Elwynn Forest,79.8,55.5
    >> Kill mobs surrounding the corpse. Pull the 2 mobs in front of the huts, move away, and nuke one of the hut mobs. Bubble, heal/run away if needed, then come back and kill the other mob
    >> Be careful as this quest is difficult
    .turnin 45 >> Turn in Discover Rolf's Fate
    .accept 71 >> Accept Report to Thomas
step << Paladin
    #softcore
    #sticky
    #completewith Bundles2
    .goto Elwynn Forest,83.6,69.7,120 >>Die and respawn at the Spirit Healer, or start running back if someone cleared the corpse prior
step
    .goto Elwynn Forest,76.8,62.4,90,0
    .goto Elwynn Forest,83.7,59.4,90,0
    .goto Elwynn Forest,76.8,62.4,90,0
    .goto Elwynn Forest,83.7,59.4,90,0
    .goto Elwynn Forest,76.8,62.4,90,0
    .goto Elwynn Forest,83.7,59.4,90,0
    .goto Elwynn Forest,76.8,62.4
    >>Start running back, finish off the bundles
    .complete 5545,1 --Collect Bundle of Wood (x8)
step
    #label Bundles2
    .goto Elwynn Forest,81.4,66.1
    .turnin 5545 >> Turn in A Bundle of Trouble
step
    #label Prowlers
    .xp 9 >> Grind to 9
step
    #label Bears
    .goto Elwynn Forest,79.5,68.8
    .accept 83 >> Accept Red Linen Goods
step
    .goto Elwynn Forest,76.7,75.6,100,0
    .goto Elwynn Forest,79.7,83.7,100,0
    .goto Elwynn Forest,82.0,76.8,100,0
    .goto Elwynn Forest,76.7,75.6,100,0
    .goto Elwynn Forest,79.7,83.7,100,0
    .goto Elwynn Forest,82.0,76.8,100,0
    .goto Elwynn Forest,76.7,75.6
    >>Kill the last mobs for Protect the Frontier
    .complete 52,1 --Kill Prowler (x8)
    .complete 52,2 --Kill Young Forest Bear (x5)
step
    .goto Elwynn Forest,74.0,72.2
    .turnin 52 >> Turn in Protect the Frontier
    .turnin 71 >> Turn in Report to Thomas
    .accept 39 >> Accept Deliver Thomas' Report
    .accept 109 >> Accept Report to Gryan Stoutmantle
step
    #sticky
    #completewith Deed
    >>Keep an eye out for Westfall Deed from the Defias (lucky drop)
    .collect 1972,1,184 --Collect Westfall Deed (x1)
    .accept 184 >> Accept Furlbrow's Deed
step
    .goto Elwynn Forest,69.53,79.47
    >>Start circling the farm, killing Defias and looting them for Bandanas
    .complete 83,1 --Collect Red Linen Bandana (x6)
step << Warrior
    .goto Elwynn Forest,69.4,79.2
    >>Pool Rage, then kill Princess. Use a Lesser Heal Potion from before if needed. Loot her for the Collar
    .complete 88,1 --Collect Brass Collar (x1)
step << Rogue
    .goto Elwynn Forest,69.4,79.2
    >>Make sure Evasion is up, then kill Princess. Use a Lesser Heal Potion from before if needed. Loot her for the Collar
    .complete 88,1 --Collect Brass Collar (x1)
step << !Rogue !Warrior
    .goto Elwynn Forest,69.4,79.2
    >>Kill Princess. Use a Lesser Heal Potion from before if needed. Loot her for the Collar
    >>If you're struggling, you can use the Fence to abuse pathing and buy time
    .complete 88,1 --Collect Brass Collar (x1)
    .link https://www.youtube.com/watch?v=GRrXOV-UvD4 >> Click here if struggling
step
    .xp 9+3400 >> Grind to 3400+/6500xp
step
    #softcore
    #sticky
    #completewith next
    .goto Elwynn Forest,83.6,69.7,120 >>Die and respawn at the Spirit Healer if you're low health, otherwise just run back and handin
step
    #label Deed
    .goto Elwynn Forest,79.5,68.9
    .turnin 83 >> Turn in Red Linen Goods
step << !Warlock
    #softcore
    .goto Elwynn Forest,83.3,66.1
    .vendor >> vendor trash, repair
step << !Warlock
    .goto Redridge Mountains,8.5,72.0
    .xp 9+4475 >> Grind until 4475+/6500xp
step << !Warlock
    .goto Redridge Mountains,8.5,72.0
    .zone Redridge Mountains >> Travel east to Redridge Mountains
step << !Warlock
    #softcore
    #sticky
    #completewith next
    +Die to the mobs here
    .goto Redridge Mountains,11.2,78.4
step << !Warlock
    #softcore
    .goto Redridge Mountains,20.8,56.6,100 >>Respawn at the Spirit Healer
step << !Warlock
    #softcore
    .goto Redridge Mountains,30.6,59.4
    .fp Redridge Mountains >> Get the Redridge Mountains flight path
step << !Warlock
    #hardcore
    >>Run toward the Flight Path. Be exceedingly careful to not aggro or die to any mobs en route. Try sticking to the road and keeping an eye out
    .goto Redridge Mountains,30.6,59.4
    .fp Redridge Mountains >> Get the Redridge Mountains flight path
step
    .hs >> Hearth to Goldshire
step
    .goto Elwynn Forest,43.3,65.7
    >>Don't wait for his rp event
    .turnin 112 >> Turn in Collecting Kelp
step << Warrior/Rogue
    .goto Elwynn Forest,43.4,65.6
    >>Speak with the first aid trainer upstairs
    .train 3273 >> Train First Aid
step
    .goto Elwynn Forest,42.2,65.8
    .turnin 39 >> Turn in Deliver Thomas' Report
    .turnin 76 >> Turn in The Jasperlode Mine
    .accept 239 >> Accept Westbrook Garrison Needs Help!
    .accept 59 >>Accept Cloth and Leather Armor << Warlock
step
    .goto Elwynn Forest,41.7,65.5
    .accept 1097 >> Accept Elmore's Task
step
    .xp 10 >> Grind to 10
step
    #softcore
    .goto Elwynn Forest,41.7,65.9
    .vendor >>vendor trash, repair
step << Warrior
    .goto Elwynn Forest,41.1,65.8
    .accept 1638 >> Accept A Warrior's Training
    .trainer >> Train your class spells
step << Paladin
    .goto Elwynn Forest,41.1,66.0
    .trainer >> Train your class spells
step
    .goto Elwynn Forest,43.3,65.7
    .accept 114 >> Accept The Escape
step << Warlock
    >>Go back down into the basement
    .goto Elwynn Forest,44.4,66.2
    .accept 1685 >> Accept Gakin's Summons
    .trainer >> Train your class spells
step << Mage/Priest/Rogue
    #sticky
    #completewith next
    .goto Elwynn Forest,43.7,66.4,10 >>Go Upstairs
step << Priest
    .goto Elwynn Forest,43.3,65.7
    .accept 5635 >> Accept Desperate Prayer
    .trainer >> Train your class spells
step << Mage
    .goto Elwynn Forest,43.2,66.2
    .trainer >> Train your class spells
step << Rogue
    .goto Elwynn Forest,43.9,65.9
    >>Don't worry about not having 2 weapons, we'll get another soon
    >>Be VERY careful about your money when training here. Make sure you train Dual Wield and Sprint though
    .trainer >> Train your class spells
step << Rogue
    #som
    .goto Elwynn Forest,41.7,65.9
    .money >0.3197
    .vendor >>You don't have enough money, so buy Stiletto for your Offhand
step << Rogue
    #era
    .goto Elwynn Forest,41.7,65.9
    .money >0.3152
    .vendor >>You don't have enough money, so buy Stiletto for your Offhand
step
    >>Run out of the inn and go south
    .goto Elwynn Forest,43.2,89.6
    .turnin 114 >> Turn in The Escape
step
    .goto Elwynn Forest,34.7,84.5
    .turnin 88 >> Turn in Princess Must Die!
step << Warlock
    >>Click any of the wanted posters around
    .goto Elwynn Forest,24.6,74.7
    .accept 176 >> Accept Wanted:   "Hogger"
step
    .goto Elwynn Forest,24.2,74.5
    .turnin 239 >> Turn in Westbrook Garrison Needs Help!
    .accept 11 >> Accept Riverpaw Gnoll Bounty << Warlock
step << Warrior
    .money >0.3174
    #som
    >>Grind a bit until you have 31s 74c+ of vendorables/money
    >>This is for thrown, 2h mace, and 2h sword training. It's also for level 11 thrown, and flying to Stormwind
    .goto Elwynn Forest,27.6,93.0
step << Warrior
    .money >0.3129
    #era
    >>Grind a bit until you have 31s 29c+ of vendorables/money
    >>This is for thrown, 2h mace, and 2h sword training. It's also for level 3 thrown, and flying to Stormwind
    .goto Elwynn Forest,27.6,93.0
step << Warlock
    #sticky
    #completewith Armbands
    >>Keep an eye out for the gold pickup schedule (lucky drop), or a 100% Drop from Gruff Swiftbite (rare). extra 210xp
    .collect 1307,1,123 --Collect Gold Pickup Schedule (x1)
    .accept 123 >> Accept The Collector
step << Warlock
    #label Hogger
    .unitscan Hogger
    .goto Elwynn Forest,27.0,86.7,80,0
    .goto Elwynn Forest,26.1,89.9,80,0
    .goto Elwynn Forest,25.2,92.7,80,0
    .goto Elwynn Forest,27.0,93.9,80,0
    .goto Elwynn Forest,27.0,86.7,80,0
    .goto Elwynn Forest,26.1,89.9,80,0
    .goto Elwynn Forest,25.2,92.7,80,0
    .goto Elwynn Forest,27.0,93.9,80,0
    .goto Elwynn Forest,27.0,86.7,80,0
    .goto Elwynn Forest,26.1,89.9,80,0
    .goto Elwynn Forest,25.2,92.7,80,0
    .goto Elwynn Forest,27.0,93.9,80,0
    .goto Elwynn Forest,24.24,80.67,0
    >>Hogger can be in multiple spots in the area. Keep him fear chained, and/or kite him at <60% hp to the tower at 24,80. Loot him for his Claw
    >>Be careful as he can be feared into other mobs, hits hard, and can stun
    .complete 176,1 --Collect Huge Gnoll Claw (1)
step << Warlock
    #label Armbands
    .goto Elwynn Forest,27.0,93.9
    >> Kill Gnolls. Loot them for Armbands
    .complete 11,1 --Collect Painted Gnoll Armband (8)
step << Rogue
    #era
    #label Armbands
    .money >0.3152
    .goto Elwynn Forest,24.2,74.5
    .accept 11 >> Accept Riverpaw Gnoll Bounty
step << Rogue
    #som
    #label Armbands
    .money >0.3197
    .goto Elwynn Forest,24.2,74.5
    .accept 11 >> Accept Riverpaw Gnoll Bounty
step << Rogue
    .goto Elwynn Forest,27.0,93.9
    >> Kill Gnolls. Loot them for Armbands
    .complete 11,1 --Collect Painted Gnoll Armband (x8)
    .isOnQuest 11
step << Warlock/Rogue
    .goto Elwynn Forest,24.2,74.5
    .turnin 11 >> Turn in Riverpaw Gnoll Bounty
    .isOnQuest 11
step << Rogue
    .abandon 123 >>Abandon The Collector
step
    .goto Westfall,60.0,19.4
    .turnin 184 >> Turn in Furlbrow's Deed
    .isOnQuest 184
step
    .goto Westfall,59.95,19.36
    .accept 64 >>Accept The Forgotten Heirloom
step
    .goto Westfall,59.9,19.4
    .accept 36 >> Accept Westfall Stew
    .accept 151 >>Accept Poor Old Blanchy
step
    .goto Westfall,56.04,31.22
    .accept 9 >>Accept The Killing Fields
step
    .goto Westfall,56.4,30.5
    .turnin 36 >> Turn in Westfall Stew
    .accept 38 >> Accept Westfall Stew
    .accept 22 >>Accept Goretusk Liver Pie
step
    #softcore
    #sticky
    #completewith next
    .goto Westfall,51.7,49.4,150 >> Die and respawn at the Spirit Healer, or run to Sentinel Hill
step
    .goto Westfall,56.3,47.5
    .turnin 109 >> Turn in Report to Gryan Stoutmantle
    .accept 12 >> Accept The People's Militia
step
    #era
    .goto Westfall,56.3,47.5
    .accept 102 >> Accept Patrolling Westfall
step << Human
    .goto Westfall,57.0,47.2
    .vendor >>vendor trash
    .accept 6181 >> Accept A Swift Message
step << Rogue
    #era
    .money >0.3152
    +Grind until you have 31s 52c of vendorables/money
step << Rogue
    #som
    .money >0.3197
    +Grind until you have 31s 97c of vendorables/money
--Not taking into account Shipment q turnin money so its insurance money
step
    .goto Westfall,56.6,52.6
    .turnin 6181 >> Turn in A Swift Message << Human
    .accept 6281 >> Accept Continue To Stormwind << Human
step
    .goto Westfall,56.6,52.6
    .fly Stormwind >> Fly to Stormwind
step << Rogue
    #som
    >>Go inside the building
    .goto StormwindClassic,57.32,62.08,20,0
    .goto StormwindClassic,58.37,61.69
    .vendor >> Buy the level 11 thrown from Thurman. Equip it when you're level 11
step << Rogue
    #era
    >>Go inside the building
    .goto StormwindClassic,57.32,62.08,20,0
    .goto StormwindClassic,58.37,61.69
    .vendor >> Buy the level 3 thrown from Thurman. Equip it
step
    .goto StormwindClassic,56.2,64.6
    >>Choose the Rockets as the reward. These have very good damage, and can be used for splitpulling
    .turnin 61 >> Turn in Shipment to Stormwind
step << !Warlock
    .goto StormwindClassic,52.61,65.71
    .home >> Set your Hearthstone to Stormwind City
step << Warrior
    .goto StormwindClassic,57.1,57.7
    .trainer >> Train 2h Swords if you have enough money. You must save 20s for later
step << Priest
    .goto StormwindClassic,57.1,57.7
    .trainer >>Train Staves
step << Mage/Warlock
    .goto StormwindClassic,57.1,57.7
    .trainer >> Train Staves, then 1h Swords if you still have money
step << Rogue
    .goto StormwindClassic,57.1,57.7
    .trainer >>Train 1h Swords
step << Rogue
    .goto StormwindClassic,57.6,57.1
    .vendor >>Buy a Cutlass from Gunther and equip it, Stiletto in Offhand
step << Paladin
    .goto StormwindClassic,57.1,57.7
    .trainer >>Train 2h Swords
step << Warlock
    .goto StormwindClassic,52.61,65.71
    .home >> Set your Hearthstone to Stormwind City
step << Warlock
    #sticky
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> Go into The Slaughtered Lamb and go downstairs
step << Warlock
    .goto StormwindClassic,25.2,78.5
    .turnin 1685 >> Turn in Gakin's Summons
    .accept 1688 >> Accept Surena Caledon
step << Warlock
    #softcore
    .deathskip >> Die and respawn at the Spirit Healer by using Life Tap and standing on the Bonfire next to you
step << Warlock
    .goto Elwynn Forest,42.1,65.9
    .zone Elwynn Forest >> Run back out of Stormwind to Elwynn
step << Warlock
    .isOnQuest 123
    .goto Elwynn Forest,42.1,65.9
    >>Choose the Staff then equip it
    .turnin 176 >> Turn in Wanted:    "Hogger"
    .turnin 123 >> Turn in The Collector
step << Warlock
    .goto Elwynn Forest,42.1,65.9
    >>Choose the Staff then equip it
    .turnin 176 >> Turn in Wanted:    "Hogger"
step << Warlock
    .xp 11 >> Grind to 11
step << Warlock
    >>Grind en route, try to level your staves skill for later
    >>Kill the mobs inside the house, keep Morgan feared (he gouges and kills pet), nuke Surena. Loot her for her Choker
    .goto Elwynn Forest,71.0,80.8
    .complete 1688,1 --Collect Surena's Choker (x1)
step << Warlock
    .goto Elwynn Forest,79.5,68.8
    .turnin 59 >> Turn in Cloth and Leather Armor
step << Warlock
    #sticky
    #completewith next
    .goto Redridge Mountains,17.4,69.6
    .zone Redridge Mountains >> Grind en route to Redridge, make sure to have at least 2 Soul Shards (using Drain Soul)
    .collect 6265,2 --Soul Shard (2)
step << Warlock
    .goto Redridge Mountains,17.4,69.6
    .accept 244 >> Accept Encroaching Gnolls
step << Warlock
    >>Be careful of the mobs en route
    .goto Redridge Mountains,30.7,60.0
    .turnin 244 >> Turn in Encroaching Gnolls
step << Warlock
    .goto Redridge Mountains,30.6,59.4
    .fp Redridge Mountains >> Get the Redridge Mountains flight path
    .fly Stormwind >> Fly to Stormwind
step << Warlock
    #sticky
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> Go into The Slaughtered Lamb and go downstairs
step << Warlock
    .goto StormwindClassic,25.2,78.5
    .turnin 1688 >> Turn in Surena Caledon
    .accept 1689 >> Accept The Binding
step << Warlock
    .goto StormwindClassic,25.2,80.7,14,0
    .goto StormwindClassic,23.2,79.5,14,0
    .goto StormwindClassic,26.3,79.5,14,0
    .goto StormwindClassic,25.5,78.1
    >>Go to the bottom of the crypt. Summon the Voidwalker using the Bloodstone Choker and kill it
    .complete 1689,1 --Kill Summoned Voidwalker (x1)
step << Warlock
    .goto StormwindClassic,25.2,78.5
    >>Don't summon your voidwalker once you learn it
    .turnin 1689 >> Turn in The Binding
step << Human
    .goto StormwindClassic,74.3,47.2
    .turnin 6281 >> Turn in Continue to Stormwind
    .accept 6261 >> Accept Dungar Longdrink
step << Warrior
     >>Enter the inn
    .goto StormwindClassic,71.7,39.9,20,0
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
step << Priest
    #completewith next
    .goto StormwindClassic,38.8,26.4
    .turnin 5635 >> Turn in Desperate Prayer
step << Priest
    .goto StormwindClassic,38.62,26.10
    .train 13908 >> Train Desperate Prayer
step
    #completewith next
    .goto StormwindClassic,51.8,12.1
    .turnin 1097 >> Turn in Elmore's Task
step
    .goto StormwindClassic,51.8,12.1
    .accept 353 >> Accept Stormpike's Delivery
step << Warrior/Paladin/Rogue
    >>Put Sunder Armor on your bars (it's better damage than Heroic Strike) << Warrior
    .goto StormwindClassic,56.3,17.0
    .vendor >>Buy a Mining Pick. You'll train Mining later
step
    #sticky
    #completewith next
    .goto StormwindClassic,63.9,8.3,20 >>Enter the Deeprun Tram
step
    >>Take the tram when it arrives, then get off when it arrives on the other side << !Rogue !Warrior !Paladin !Warlock
    >>Take the tram when it arrives. Make bandages whilst waiting for the tram and when you get on it. Accept q when you get to the other side << Rogue/Warrior/Paladin
    >>Take the tram when it arrives. Cast Summon Voidwalker and Create Healthstone. Get off the tram on the other side << Warlock
    .accept 6661 >> Accept Deeprun Rat Roundup
step
    >>Use your flute on the rats scattered around
    .complete 6661,1 --Rats Captured (x5)
step
    .turnin 6661 >> Turn in Deeprun Rat Roundup
step
    .goto Ironforge,77.0,51.0
    .zone Ironforge >>Enter Ironforge
step
    .goto Ironforge,55.5,47.7
    .fp Ironforge >> Get the Ironforge flight path
step << Warrior
    .goto Ironforge,61.2,89.5
    .trainer >>Train 2h Maces and Thrown
step
    #sticky
    #som
    #completewith next
    .goto Dun Morogh,53.5,34.9,100 >>Run out of Ironforge
    >>Equip your level 11 thrown << Warrior
step
    #sticky
    #era
    #completewith next
    .goto Dun Morogh,53.5,34.9,100 >>Run out of Ironforge
    >>Equip your level 3 thrown << Warrior
step
    .goto Dun Morogh,60.1,52.6,50,0
    .goto Dun Morogh,63.1,49.8
    .accept 314 >> Accept Protecting the Herd
step
    #sticky
    #completewith next
    .goto Dun Morogh,62.3,50.3,14,0
    .goto Dun Morogh,62.2,49.4,12 >>Run up this part of the mountain
step
    >>Kill Vagash. Loot him for his Fang
    >>Kite him to the guard south of the ranch. Make sure you do 51%+ damage to him
    >>Be careful as this quest can be difficult
    .goto Dun Morogh,62.6,46.1
    .goto Dun Morogh,62.78,54.60,0
    .complete 314,1 --Collect Fang of Vagash (1)
    .link https://www.youtube.com/watch?v=ZJX6sCkm5JY >> CLICK HERE for a guide on how to solo Vagash
step
    .goto Dun Morogh,63.1,49.8
    .turnin 314 >> Turn in Protecting the Herd
step
    #sticky
    #label Cooking
    .goto Dun Morogh,68.4,54.5
    .trainer >> Train Cooking from Ghilm
step
    .goto Dun Morogh,68.6,54.7
    .vendor >>Vendor, buy food+water << !Rogue !Warrior
    .vendor >>Vendor, buy food << Rogue/Warrior
step
    #requires Cooking
    .goto Dun Morogh,68.7,56.0
    .accept 433 >> Accept The Public Servant
step
    .goto Dun Morogh,69.1,56.3
    .accept 432 >> Accept Those Blasted Troggs!
step << Warrior/Paladin/Rogue
    .goto Dun Morogh,69.3,55.5
    .train 2575 >>Train Mining, cast Find Minerals
step
    .goto Dun Morogh,70.7,56.4,40,0
    .goto Dun Morogh,70.62,52.39
    >>Kill Troggs in the cave
    >>Keep an eye out for nodes to get more rough stones. << Rogue/Warrior/Paladin
    .complete 432,1 --Kill Rockjaw Skullthumper (6)
    .complete 433,1 --Kill Rockjaw Bonesnapper (10)
step << !Warlock
    .xp 10+6350 >>Grind until 6350+/7600
step << Warlock
    .xp 12
step
    .goto Dun Morogh,69.1,56.3
    .turnin 432 >> Turn in Those Blasted Troggs!
step
    .goto Dun Morogh,68.9,55.9
    .vendor >> vendor trash, repair
step
    .goto Dun Morogh,68.7,56.0
    .turnin 433 >> Turn in The Public Servant
step << !Warlock
    .xp 11
step
    .goto Dun Morogh,68.6,54.7
    .vendor >>Vendor, buy x30 level 5 drink << Mage/Warlock/Priest
step
    .goto Dun Morogh,81.2,42.7,45,0
    .goto Dun Morogh,83.9,39.2
    .accept 419 >> Accept The Lost Pilot
step
    >>Click the Dwarf Corpse
    .goto Dun Morogh,79.7,36.2
    .turnin 419 >> Turn in The Lost Pilot
    .accept 417 >> Accept A Pilot's Revenge
step
    >>Kill Mangeclaw. Loot him for his Claw
    .goto Dun Morogh,78.9,37.0
    .complete 417,1 --Collect Mangy Claw (x1)
step
    #som
    .goto Dun Morogh,83.9,39.2
    >>Choose the dagger, use it as your offhand until you get a vendor sword << Rogue
    .turnin 417 >> Turn in A Pilot's Revenge
step
    #era
    .goto Dun Morogh,83.9,39.2
    >>Choose the dagger, use it as your offhand << Rogue
    .turnin 417 >> Turn in A Pilot's Revenge
step
    .goto Dun Morogh,84.4,31.1,25 >>Go through the tunnel to Loch Modan
]])

RXPGuides.RegisterGuide([[
#classic
#era/som
<< Alliance
#name 11-13 Loch Modan
#version 1
#group RestedXP Alliance 1-20
#defaultfor Human
#next 13-15 Westfall

step
    #completewith next
    .goto Loch Modan,24.1,18.2
    .vendor >>Vendor and repair
step
    .goto Loch Modan,24.8,18.4
    .turnin 353 >> Turn in Stormpike's Delivery
    .accept 307 >> Accept Filthy Paws
step
    #sticky
    #completewith next
    >>Kill Spiders in the zone for Spider Ichor
    .collect 3174,3 --Collect Spider Ichor (x3)
    >>Kill Bears in the zone for Bear Meat
    .collect 3173,3 --Collect Bear Meat (x3)
    >>Kill Boars in the zone for Boar Intestines. Save all of the Chunks of Boar Meat you get too
    .collect 3172,3 --Collect Boar Intestines (x3)
step
    .goto Loch Modan,35.1,47.8,130 >>Grind mobs en route for cooking quest later
step
    .goto Loch Modan,34.8,49.3
    .accept 418 >> Accept Thelsamar Blood Sausages
step
    #sticky
    #label StormpikeO
    .abandon 1338 >> Abandon Stormpike's Order. This is to unlock Mountaineer Stormpike's Task
step
    .goto Loch Modan,34.8,48.6
    .vendor >>Buy 1-2 6 slot bags
step
    .goto Loch Modan,35.5,48.4
    .vendor >> Buy food/water (try to have 40 level 5 drink, 20 level 5 food) << Priest/Mage/Warlock/Paladin
    .vendor >> Buy food, try to have about 40 level 5 food << Rogue/Warrior
step
    #requires StormpikeO
    .goto Loch Modan,32.6,49.9,80.0,0
    .goto Loch Modan,37.2,46.1,80.0,0
    .goto Loch Modan,36.7,41.6
    >>Find Kadrell. He patrols along the Thelsamar road
    .accept 416 >> Accept Rat Catching
    .accept 1339 >> Accept Mountaineer Stormpike's Task
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
    #label Thelsamar1
    .goto Loch Modan,39.3,27.0,130 >>Grind some mobs for Boar Intestines, Bear Meat and Spider Ichor en route
step
    .goto Loch Modan,35.5,18.2,45 >>Go to the entrance of the cave whilst killing rats
step
    .goto Loch Modan,36.3,24.7
    >>Collect the crates you find in the cave. Be careful because this is difficult at level 11
    >>Be careful as the Geomancers cast Flame Ward (Fire immunity) after a few seconds << Mage/Warlock
    >>You can backtrack after looting one further in the cave, as the crates can respawn behind you
    .complete 307,1 --Collect Miners' Gear (x4)
step << Paladin/Warrior
    #sticky
    #label Mace
    .goto Loch Modan,42.9,9.9
    .vendor >> Check the vendor for the green 2h mace he can sell. If it's up and you have enough money, buy it. Otherwise, grind money from kobolds here until you have enough << Paladin/Warrior
    >>If the weapon isn't there by the time you have 80 silver, skip this step
step
    >> Kill Kobolds. Loot them for their Ears
    >> Make sure to save 10 Linen Cloth for later. do NOT vendor it << Paladin
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .collect 2589,10 << Paladin
step << Paladin/Warrior
    #requires Mace
step
    #sticky
    #completewith Thelsamar2
    >>Kill Spiders in the zone for Thelsamar Blood Sausages
    .complete 418,3 --Collect Spider Ichor (x3)
step
    #sticky
    #completewith Thelsamar2
    >>Kill Bears in the zone for Thelsamar Blood Sausages
    .complete 418,2 --Collect Bear Meat (x3)
step
    #sticky
    #completewith Thelsamar2
    >>Kill Boars in the zone for Thelsamar Blood Sausages
    .complete 418,1 --Collect Boar Intestines (x3)
step
    #label Thelsamar2
    .goto Loch Modan,23.3,17.9,45 >>Run back to the bunker, grinding en route
step
    #completewith next
    .goto Loch Modan,24.1,18.2
    .vendor >>vendor and repair
step
    .goto Loch Modan,24.7,18.3
    .turnin 307 >> Turn in Filthy Paws
    .accept 1338 >> Accept Stormpike's Order
    .turnin 1339 >> Turn in Mountaineer Stormpike's Task
step
    #sticky
    #label Meat9
    .goto Loch Modan,26.9,10.7,100,0
    .goto Loch Modan,30.9,10.6,100,0
    .goto Loch Modan,28.6,15.4,100,0
    .goto Loch Modan,30.5,26.6,100,0
    .goto Loch Modan,33.4,30.3,100,0
    .goto Loch Modan,39.4,33.3,100,0
    .goto Loch Modan,26.9,10.7,100,0
    .goto Loch Modan,30.9,10.6,100,0
    .goto Loch Modan,28.6,15.4,100,0
    .goto Loch Modan,30.5,26.6,100,0
    .goto Loch Modan,33.4,30.3,100,0
    .goto Loch Modan,39.4,33.3,100,0
    .goto Loch Modan,26.9,10.7
    >>Kill Bears. Loot them for Meat
    .complete 418,2 --Collect Bear Meat (x3)
step
    #sticky
    #label Ichor9
    .goto Loch Modan,31.9,16.4,100,0
    .goto Loch Modan,28.0,20.6,100,0
    .goto Loch Modan,33.8,40.5,100,0
    .goto Loch Modan,36.2,30.9,100,0
    .goto Loch Modan,39.0,32.1,100,0
    .goto Loch Modan,31.9,16.4,100,0
    .goto Loch Modan,28.0,20.6,100,0
    .goto Loch Modan,33.8,40.5,100,0
    .goto Loch Modan,36.2,30.9,100,0
    .goto Loch Modan,39.0,32.1,100,0
    .goto Loch Modan,31.9,16.4
    >>Kill Spiders. Loot them for Ichor
    .complete 418,3 --Collect Spider Ichor (x3)
step
    .goto Loch Modan,38.0,34.9,100,0
    .goto Loch Modan,37.1,39.8,100,0
    .goto Loch Modan,29.8,35.9,100,0
    .goto Loch Modan,27.7,25.3,100,0
    .goto Loch Modan,28.6,22.6,100,0
    .goto Loch Modan,38.0,34.9,100,0
    .goto Loch Modan,37.1,39.8,100,0
    .goto Loch Modan,29.8,35.9,100,0
    .goto Loch Modan,27.7,25.3,100,0
    .goto Loch Modan,28.6,22.6,100,0
    .goto Loch Modan,38.0,34.9
    >>Kill Boars. Loot them for Intestines
    .complete 418,1 --Collect Boar Intestines (x3)
step
    #requires Meat9
step
    #label RatCatching
    #requires Ichor9
    .goto Loch Modan,32.6,49.9,80.0,0
    .goto Loch Modan,37.2,46.1,80.0,0
    .goto Loch Modan,36.7,41.6
    >>Find Kadrell. He patrols along the Thelsamar road
    .turnin 416 >> Turn in Rat Catching
step
    .goto Loch Modan,34.8,49.3
    .turnin 418 >> Turn in Thelsamar Blood Sausages
step
    .goto Loch Modan,34.8,48.6
    .vendor >> Buy 1 Flint and Tinder, and 1 Simple Wood. Buy more 6 slots if needed
    .collect 4470,1 --Simple Wood (1)
    .collect 4471,1 --Flint and Tinder (1)
step
    .goto Loch Modan,33.9,51.0
    .fp Thelsamar >> Get the Thelsamar flight path
step
    .goto Loch Modan,22.1,73.1
    .accept 224 >> Accept In Defense of the King's Lands
step
    .goto Loch Modan,23.2,73.7
    >>Go into the bunker from behind
    .accept 267 >> Accept The Trogg Threat
step
    .goto Loch Modan,29.9,68.2,45 >> Run to the Troggs Entrance
step
    .goto Loch Modan,30.0,72.4,100,0
    .goto Loch Modan,34.7,71.6,100,0
    .goto Loch Modan,30.9,81.1,100,0
    .goto Loch Modan,30.0,72.4,100,0
    .goto Loch Modan,34.7,71.6,100,0
    .goto Loch Modan,30.9,81.1,100,0
    >>Kill Stonesplinter Troggs. Loot them for their Teeth
    .complete 224,1 --Kill Stonesplinter Trogg (x10)
    .complete 224,2 --Kill Stonesplinter Scout (x10)
    .complete 267,1 --Collect Trogg Stone Tooth (x8)
step << Warlock
    #sticky
    #completewith TroggT
    .money >0.7579
    .goto Loch Modan,32.7,76.5,0
    +Grind here until you have 75s 79c of vendorables+money, then turnin
step << Warlock
    #era
    .goto Loch Modan,32.7,76.5,0
    .xp 13+9600 >>Grind until 9600+/11400xp
step << Warlock
    #som
    .xp 14-2520 >> Grind until you are 8880xp into level 13
step
    .goto Loch Modan,22.2,73.3
    .turnin 224 >> Turn in In Defense of the King's Lands
step
    #label TroggT
    .goto Loch Modan,23.2,73.7
    .turnin 267 >> Turn in The Trogg Threat
step << Warlock
    .xp 14 >> Grind to 14
step
    .hs >> Hearth to Stormwind City
    .vendor >> vendor trash << !Paladin
    .vendor >> vendor trash. Make sure to save 10 Linen << Paladin
step << Warlock/Priest
    #softcore
    #label Wand1
    #completewith Wand2
     >>Alternatively, buy a Greater Magic Wand from the AH if it costs <33s 40c
    .goto StormwindClassic,53.60,59.77
    .collect 11288,1 --Greater Magic Wand (1)
step << Warlock/Priest
    #softcore
    #label Wand2
    #completewith Wand1
     >>Go in the building. Buy a Smoldering Wand
    .goto StormwindClassic,42.65,67.16,14,0
    .goto StormwindClassic,42.84,65.14
    .collect 5208,1 --Smoldering Wand (1)
step << Warlock/Priest
    #hardcore
     >>Go in the building. Buy a Smoldering Wand
    .goto StormwindClassic,42.65,67.16,14,0
    .goto StormwindClassic,42.84,65.14
    .collect 5208,1 --Smoldering Wand (1)
step << Warlock
    #sticky
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> Go into The Slaughtered Lamb and go downstairs
step << Warlock
    .goto StormwindClassic,26.11,77.20
    .trainer >> Train your class spells
    .goto StormwindClassic,25.65,77.63
    .vendor >> Buy Consume Shadows r1 then Sacrifice r1 books (if you have money)
step << Mage
    .goto StormwindClassic,37.69,82.09,10 >> Go up the tower, then through the portal
    .trainer >> Train your class spells
step << Paladin
    >>Do the quests for Duthorian Rall
    .goto StormwindClassic,39.80,29.77
    .turnin 1641 >> Turn in The Tome of Divinity
    .collect 6775,1,1642 --Tome of Divinity (1)
    .accept 1642 >> Accept The Tome of Divinity
    .turnin 1642 >> Turn in The Tome of Divinity
    .accept 1643 >> Accept The Tome of Divinity
step << Paladin
    .goto StormwindClassic,38.68,32.85
    .trainer >> Train your class spells
step << Priest
    .goto StormwindClassic,38.54,26.86
    .trainer >> Train your class spells
step
    .goto StormwindClassic,58.08,16.52
    .turnin 1338 >> Turn in Stormpike's Order
step << Rogue
   .goto StormwindClassic,74.65,52.83
    .trainer >> Train your class spells
step << Warrior
    #completewith next
    .goto StormwindClassic,74.91,51.55,20 >> Enter the Command Center
step << Warrior
    .goto StormwindClassic,78.67,45.80
    .trainer >> Go upstairs. Train your class spells
step << Paladin
    .goto StormwindClassic,57.08,61.74
    .turnin 1643 >> Turn in The Tome of Divinity
    .accept 1644 >> Accept The Tome of Divinity
    .turnin 1644 >> Turn in The Tome of Divinity
    .accept 1780 >> Accept The Tome of Divinity
step
    .goto StormwindClassic,66.28,62.13
    .turnin 6261 >> Turn in Dungar Longdrink
    .accept 6285 >> Accept Return to Lewis
step
    .goto StormwindClassic,66.28,62.13
    .fly Westfall >> Fly to Westfall
]])

RXPGuides.RegisterGuide([[
#som
#phase 3-6
#classic
<< Alliance
#name 1-13 Elwynn Forest
#version 1
#group RestedXP Alliance 1-20
#defaultfor Human
#next 13-14 Loch Modan
step << !Human
    #sticky
    #completewith next
    .goto Elwynn Forest,48.2,42.9
    +You have selected a guide meant for Humans. You should choose the same starter zone that you start in
step << Mage
    #completewith next
    +Note that you have selected the single target mage guide. Single target is a lot safer than AoE Mage, and with the recent 100% quest xp changes in SoM, is generally also faster
step << Warlock
    #sticky
    #completewith next
    +Kill Wolves for 10c+ of vendor trash
    .goto Elwynn Forest,49.4,45.6,60,0
step << Warlock
    .goto Elwynn Forest,50.1,42.7
    .vendor >>vendor trash
step << Warlock
    .goto Elwynn Forest,49.9,42.6
    .accept 1598 >> Accept The Stolen Tome
    .trainer >>Train Immolate
step << Warlock
    #hardcore
    .goto Elwynn Forest,52.9,44.3,60,0
    >>Kill some Wolves en route, then watch this
    .link https://www.youtube.com/watch?v=_-KEke9Yeik >>CLICK HERE
    >>Use your Hearthstone inside the camp when you loot it
    .goto Elwynn Forest,56.7,44.0
    .complete 1598,1 --Collect Powers of the Void (x1)
step << Warlock
    #softcore
    .goto Elwynn Forest,52.9,44.3,60,0
    >>Kill some Wolves en route, then watch this
    .link https://www.youtube.com/watch?v=_-KEke9Yeik >>CLICK HERE
    .goto Elwynn Forest,56.7,44.0
    .complete 1598,1 --Collect Powers of the Void (x1)
step << Warlock
    #softcore
    .deathskip >> Die and respawn at the Spirit Healer
step << Warlock
    #hardcore
    #completewith next
    >>Make sure you're deep inside the tent so you don't reaggro
    .hs >> Hearth back to Northshire Valley
step << Warlock
    .goto Elwynn Forest,49.9,42.6
    .turnin 1598 >> Turn in The Stolen Tome
step
    >>Summon Imp, rebuff Demon Skin << Warlock
    >>Delete your Hearthstone
    .goto Elwynn Forest,48.2,42.9
    .accept 783 >> Accept A Threat Within
step << Warrior
    #sticky
    #completewith next
    +Kill Wolves for 10c+ of vendor trash
    .goto Elwynn Forest,46.4,40.3,60,0
step << Warrior
    .goto Elwynn Forest,47.5,41.6
    .vendor >>vendor trash
step
    .goto Elwynn Forest,48.9,41.6
    .turnin 783 >> Turn in A Threat Within
    .accept 7 >> Accept Kobold Camp Cleanup
step << Warrior
    .goto Elwynn Forest,50.2,42.3
    .trainer >>Train Battle Shout
step
    >>Run back outside << Warrior
    .goto Elwynn Forest,48.2,42.9
    .accept 5261 >> Accept Eagan Peltskinner
step << Priest/Mage/Warlock
    .goto Elwynn Forest,46.2,40.4
    .vendor >>Kill wolves until 50c worth of vendor trash. Vendor, then buy x10 water from Brother Danil.
    .collect 159,10 --Collect Refreshing Spring Water (x10)
step << Priest/Mage
    .xp 2 >> Grind to 2
step
    .goto Elwynn Forest,48.9,40.2
    .turnin 5261 >> Turn in Eagan Peltskinner
    .accept 33 >> Accept Wolves Across The Border
step
    .goto Elwynn Forest,46.70,37.78
    >>Kill Young Wolves. Loot them for Meat
    .complete 33,1 --Collect Tough Wolf Meat (x8)
step
    .goto Elwynn Forest,49.05,35.33
    >>Kill Kobold Vermin
    .complete 7,1 --Kill Kobold Vermin (x10)
step
    .goto Elwynn Forest,48.9,40.2
    .turnin 33 >> Turn in Wolves Across The Border
step << Priest/Mage/Warlock
    .goto Elwynn Forest,47.6,41.5
    .vendor >>vendor trash, then buy x10 more water from Brother Danil
step << !Priest !Mage !Warlock
    .goto Elwynn Forest,47.6,41.5
    .vendor >>vendor trash
step
    .goto Elwynn Forest,48.9,41.6
    .turnin 7 >> Turn in Kobold Camp Cleanup
    .accept 15 >> Accept Investigate Echo Ridge
    .accept 3100 >> Accept Simple Letter << Warrior
    .accept 3101 >> Accept Consecrated Letter << Paladin
    .accept 3102 >> Accept Encrypted Letter << Rogue
    .accept 3103 >> Accept Hallowed Letter << Priest
    .accept 3104 >> Accept Glyphic Letter << Mage
    .accept 3105 >> Accept Tainted Letter << Warlock
step
    .xp 3 >> Grind to 3
step
    .goto Elwynn Forest,47.42,32.68
    >>Kill Kobold Workers
    .complete 15,1 --Kill Kobold Worker (x10)
step << !Rogue
    #sticky
    #label xp3
    .xp 3+820 >>Grind to 820+/1400xp on your way back
step
    .goto Elwynn Forest,47.7,41.4
    .vendor >>vendor trash
step
    #requires xp3
    .goto Elwynn Forest,48.9,41.6
    .turnin 15 >> Turn in Investigate Echo Ridge
    .accept 21 >> Accept Skirmish at Echo Ridge
step << Priest/Mage
    #sticky
    #completewith next
    .goto Elwynn Forest,49.3,40.7,15 >> Go here
step << Mage
    #sticky
    #completewith next
    .goto Elwynn Forest,49.5,40.0,15 >>Go upstairs
step << Mage
    .goto Elwynn Forest,49.7,39.4
    .turnin 3104 >> Turn in Glyphic Letter
    .trainer >> Train your class spells
step << Priest
    #sticky
    #completewith next
    .goto Elwynn Forest,49.8,40.2,15 >> Go through the doorway
step << Priest
    .goto Elwynn Forest,49.8,39.5
    .turnin 3103 >> Turn in Hallowed Letter
    .trainer >> Train your class spells
step << Warrior/Paladin
    #sticky
    #completewith next
    .goto Elwynn Forest,49.6,41.8,15 >>Stay downstairs
step << Warrior
    .goto Elwynn Forest,50.2,42.3
    .turnin 3100 >> Turn in Simple Letter
    .trainer >> Train your class spells
step << Paladin
    .goto Elwynn Forest,50.4,42.1
    .turnin 3101 >> Turn in Consecrated Letter
    .trainer >> Train your class spells
step
    .goto Elwynn Forest,48.2,42.9
    .accept 18 >> Accept Brotherhood of Thieves
step << Warlock
    .goto Elwynn Forest,49.9,42.6
    .turnin 3105 >> Turn in Tainted Letter
    .xp 4 >> Grind to 4
    .trainer >>Train Corruption
step
    .goto Elwynn Forest,54.57,49.03
    >>Kill Defias Thugs. Loot them for Bandanas
    .complete 18,1 --Collect Red Burlap Bandana (x12)
step << Rogue
    .xp 4 >> Grind to 4
step
    .goto Elwynn Forest,48.2,42.9
    .turnin 18 >> Turn in Brotherhood of Thieves
    .accept 6 >> Accept Bounty on Garrick Padfoot
    .accept 3903 >> Accept Milly Osworth
step
    .goto Elwynn Forest,47.7,41.4
    .vendor >>vendor trash, repair
step
    .goto Elwynn Forest,47.66,31.88,40,0
    .goto Elwynn Forest,48.61,27.63
    >>Kill Laborers in the mine
    .complete 21,1 --Kill Kobold Laborer (x12)
step
    .xp 5 >> Grind to 5
step
    .goto Elwynn Forest,50.7,39.2
    .turnin 3903 >> Turn in Milly Osworth. Skip followup
step << Rogue
    .goto Elwynn Forest,50.3,39.9
    >>You don't need to train
    .turnin 3102 >> Turn in Encrypted Letter
step
    .goto Elwynn Forest,57.5,48.2
    >>Grind en route. Kill Garrick and loot his Head
    .complete 6,1 --Collect Garrick's Head (x1)
step
    #sticky
    .abandon 3904 >> Abandon Milly's Harvest
step
    .xp 5+1220 >> Grind on your way back to 1220+/2800xp
    .goto Elwynn Forest,48.2,42.9
step
    .goto Elwynn Forest,48.2,42.9
    .turnin 6 >> Turn in Bounty on Garrick Padfoot
step
    .goto Elwynn Forest,48.9,41.6
    .turnin 21 >> Turn in Skirmish at Echo Ridge
    .accept 54 >> Accept Report to Goldshire
step << Priest
    .goto Elwynn Forest,49.8,39.5
    .accept 5623 >> Accept In Favor of the Light
step
    .goto Elwynn Forest,45.6,47.7
    .accept 2158 >> Accept Rest and Relaxation
step
    #hardcore
    .goto Elwynn Forest,42.1,65.9
    .turnin 54 >> Turn in Report to Goldshire
    .accept 62 >> Accept The Fargodeep Mine
step
    #softcore
    #sticky
    #completewith Goldshire
    .goto Elwynn Forest,39.5,60.5,200 >> Die and respawn at the Spirit Healer, or run to Goldshire
step << Warrior/Paladin/Rogue
    .goto Elwynn Forest,41.7,65.5
    .trainer >> Train Blacksmithing from Argus. This will allow you to make +2 damage sharpening stones for your weapon which are very strong. << Warrior/Rogue
    .trainer >> Train Blacksmithing from Argus. This will allow you to make +2 damage weightstones for your weapon which are very strong. << Paladin
step << Warrior
    .goto Elwynn Forest,41.5,65.9
    >>Repair your weapon. If you have enough money (5s 36c) buy a Gladius from Corina. Otherwise, skip this step (you'll come back later)
    .collect 2488,1
step << Rogue
    .goto Elwynn Forest,41.5,65.9
    >>Repair your weapon. If you have enough money (4s 1c) buy a Stiletto from Corina. Otherwise, skip this step (you'll come back later)
    .collect 2494,1
step << Paladin
    .goto Elwynn Forest,41.5,65.9
    >>Repair your weapon. If you have enough money (7s 1c) buy a Wooden Mallet from Corina. Otherwise, skip this step (you'll come back later)
    .collect 2493,1 --Collect Wooden Mallet
step << Mage/Priest/Warlock
    #completewith next
    .goto Elwynn Forest,41.7,65.9
    .vendor >> vendor trash, repair
step
    #label Goldshire
    .goto Elwynn Forest,42.1,65.9
    .turnin 54 >> Turn in Report to Goldshire
    .accept 62 >> Accept The Fargodeep Mine
step
    >>On your close left as you go in the Inn
    .goto Elwynn Forest,42.9,65.7,15,0
    .goto Elwynn Forest,43.3,65.7
    .accept 60 >> Accept Kobold Candles
step
    .goto Elwynn Forest,43.8,65.8
    >>Do NOT buy any food/drink here << Warlock
    .turnin 2158 >> Turn in Rest and Relaxation
    .home >> Set your Hearthstone to Goldshire
step
    .xp 6 >> Grind to 6
step << Rogue
    .goto Elwynn Forest,43.96,65.92
    .vendor 151 >> Buy the level 3 thrown from Brog. Equip it
step << Warlock
    #completewith next
    .goto Elwynn Forest,44.1,66.0,10 >>Go to the room behind the innkeeper, then go downstairs.
step << Warlock
    .goto Elwynn Forest,44.4,66.2
    .trainer >> Train your class spells
    .goto Elwynn Forest,44.4,66.0
    .vendor >> Buy the Blood Pact book if you have money after training (otherwise buy it later)
step << Mage/Priest/Rogue
    #sticky
    #completewith next
    .goto Elwynn Forest,43.7,66.4,12 >>Go upstairs
step << Mage
    .goto Elwynn Forest,43.2,66.2
    .trainer >> Train your class spells
step << Priest
    .goto Elwynn Forest,43.3,65.7
    .turnin 5623 >> Turn in In Favor of the Light
    .accept 5624 >> Accept Garments of the Light
    .trainer >> Train your class spells
step << Rogue
    .money <0.01
    .goto Elwynn Forest,43.9,65.9
    .trainer >> Train your class spells
step << Rogue/Warrior
    .money <0.01
    .goto Elwynn Forest,43.4,65.5
    .train 3273 >> Train First Aid - Don't make all your bandages at once, better time to make them later
step << Warrior
    .goto Elwynn Forest,43.8,65.8
    .vendor >> Buy level 5 food down to 1 Silver
step << Rogue
    .goto Elwynn Forest,43.8,65.8
    .vendor >> Buy up to 20 level 5 food
step << Warrior
    .goto Elwynn Forest,41.1,65.8
    .trainer >> Train your class spells
step << Paladin
    .goto Elwynn Forest,41.1,66.0
    .trainer >> Train your class spells
step
    .goto Elwynn Forest,42.1,67.3
    .accept 47 >> Accept Gold Dust Exchange
step << Priest
    >>Use Lesser Heal Rank 2 and then Power Word: Fortitude on Guard Roberts
    .goto Elwynn Forest,48.2,68.0
    .complete 5624,1 --Heal and fortify Guard Roberts
step
    #sticky
    #completewith BoarMeat1
    >>Start killing some boars you see for Boar Meat
    .collect 769,4 --Collect Chunk of Boar Meat (x4)
step
    .goto Elwynn Forest,34.5,84.3
    .accept 85 >> Accept Lost Necklace
    .goto Elwynn Forest,34.7,84.5
    .accept 88 >> Accept Princess Must Die!
step
    #sticky
    #completewith Candles
    >> Get some Candles from nearby Kobolds
    .complete 60,1 --Collect Kobold Candle (x8)
step
    #sticky
    #label Candles
    #completewith next
    >> Get some Gold Dust from nearby Kobolds
    .complete 47,1 --Collect Gold Dust (x10)
step << Priest/Mage/Warlock
    #label Dust
    >>Grind mobs east through the outside of the mine
    .goto Elwynn Forest,43.1,85.7
    .turnin 85 >> Turn in Lost Necklace
    .accept 86 >> Accept Pie for Billy
step << Warrior
    #label Dust
    >>Grind mobs east through the outside of the mine. If you get a Rough Stone at any point, make it into a Sharpening Stone via Blacksmithing, and apply it on your sword
    .goto Elwynn Forest,43.1,85.7
    .turnin 85 >> Turn in Lost Necklace
    .accept 86 >> Accept Pie for Billy
step << Rogue
    #label Dust
    >>Grind mobs east through the outside of the mine. If you get a Rough Stone at any point, make it into a Sharpening Stone via Blacksmithing, and apply it on your dagger
    .goto Elwynn Forest,43.1,85.7
    .turnin 85 >> Turn in Lost Necklace
    .accept 86 >> Accept Pie for Billy
step << Paladin
    #label Dust
    >>Grind mobs east through the outside of the mine. If you get a Rough Stone at any point, Make it into a Weightstone via Blacksmithing, and apply it to your mace
    .goto Elwynn Forest,43.1,85.7
    .turnin 85 >> Turn in Lost Necklace
    .accept 86 >> Accept Pie for Billy
step
    #label BoarMeat1
    .goto Elwynn Forest,43.2,89.6
    .accept 106 >> Accept Young Lovers
step << Mage/Priest/Warlock
    .goto Elwynn Forest,42.4,89.4
    .vendor >>Vendor, buy as much milk as you can
step << !Mage !Priest !Warlock
    .goto Elwynn Forest,42.4,89.4
    .vendor >>vendor trash
step
    #completewith next
    >>Grind boars for Boar Meat en route
    .collect 769,4 --Collect Chunk of Boar Meat (x4)
step
    .goto Elwynn Forest,29.8,86.0
    .turnin 106 >> Turn in Young Lovers
    .accept 111 >> Accept Speak with Gramma
step
    .goto Elwynn Forest,32.5,85.5
    >>Finish off getting the Boar Meat
    .complete 86,1 --Collect Chunk of Boar Meat (x4)
step
    .goto Elwynn Forest,34.5,84.3
    .turnin 86 >> Turn in Pie for Billy
    .accept 84 >> Accept Back to Billy
step
    .goto Elwynn Forest,34.9,83.9
    .turnin 111 >> Turn in Speak with Gramma
    .accept 107 >> Accept Note to William
step
    #sticky
    #label KoboldCandles
    >> Get some Candles from nearby Kobolds
    .complete 60,1 --Collect Kobold Candle (x8)
step
    #sticky
    #label GoldDust
    >> Get some Gold Dust from nearby Kobolds
    .complete 47,1 --Collect Gold Dust (x10)
step
    >>Grind mobs east through the outside of the mine
    .goto Elwynn Forest,43.1,85.7
    .turnin 84 >> Turn in Back to Billy
    .accept 87 >> Accept Goldtooth
step
    >>Go into the mine
    .goto Elwynn Forest,40.5,82.3
    .complete 62,1 --Scout Through the Fargodeep Mine
step << Warrior
    >>Pool as much rage as you can (grind Rage off of other mobs) then kill Goldtooth for Bernice's Necklace
    .goto Elwynn Forest,41.7,78.1
    .complete 87,1 --Collect Bernice's Necklace  (x1)
step << !Warrior
    >>Kill Goldtooth for Bernice's Necklace
    .goto Elwynn Forest,41.7,78.1
    .complete 87,1 --Collect Bernice's Necklace  (x1)
step << Warrior
    #sticky
    #completewith Goldtooth
    +Try to save a single healing potion from now on as you will need it for Rolf's Corpse later
step << Warrior/Rogue
    >>Remember to make Sharpening Stones if you picked up a Rough Stone
    .xp 7+880 >>Grind until 880+/4500xp
step << Paladin
    >>Remember to make Weightstones if you picked up a Rough Stone
    .xp 7+880 >>Grind until 880+/4500xp
step << !Priest !Paladin !Warrior !Rogue
    .xp 7+880 >>Grind until 880+/4500xp
step << Priest
    .xp 7+200 >>Grind until 200+/4500xp
step
    #requires KoboldCandles
step
    #softcore
    #requires GoldDust
    #completewith next
    .deathskip >> Die and respawn in Goldshire
step
    #requires GoldDust
    #label Goldtooth
    .goto Elwynn Forest,42.1,67.3
    .turnin 47 >> Turn in Gold Dust Exchange
    .accept 40 >> Accept A Fishy Peril
step
    .goto Elwynn Forest,42.1,65.9
    .turnin 40 >> Turn in A Fishy Peril
    .accept 35 >> Accept Further Concerns
    .turnin 62 >> Turn in The Fargodeep Mine
    .accept 76 >> Accept The Jasperlode Mine
step
    #completewith next
    .goto Elwynn Forest,41.7,65.9
    .vendor >>vendor trash, repair
step << Warrior
    .goto Elwynn Forest,41.5,65.9
    >>Repair your weapon. If you have enough money (5s 36c) buy a Gladius from Corina. Otherwise, skip this step (you'll come back later)
    .collect 2488,1
step << Rogue
    .goto Elwynn Forest,41.5,65.9
    >>Repair your weapon. If you have enough money (4s 1c) buy a Stiletto from Corina. Otherwise, skip this step (you'll come back later)
    .collect 2494,1
step << Paladin
    .goto Elwynn Forest,41.5,65.9
    >>Repair your weapon. If you have enough money (7s 1c) buy a Wooden Mallet from Corina. Otherwise, skip this step (you'll come back later)
    .collect 2493,1 --Collect Wooden Mallet
step
    .goto Elwynn Forest,43.3,65.7
    .turnin 60 >> Turn in Kobold Candles
    .accept 61 >> Accept Shipment to Stormwind
    .turnin 107 >> Turn in Note to William
    .accept 112 >> Accept Collecting Kelp
step
    .xp 8 >> Grind to 8
step << Warlock
    >>Go back into the basement
    .goto Elwynn Forest,44.4,66.2
    .trainer >> Train your class spells
    .goto Elwynn Forest,44.4,66.0
    .vendor >> Buy the Firebolt book if you have money after training (otherwise buy it later)
step
    .money <0.1250
    .goto Elwynn Forest,44.0,65.9
    .vendor >>Buy a 6 slot bag from Brog
step << Warrior
    .goto Elwynn Forest,41.1,65.8
    .trainer >> Train your class spells
step << Paladin
    .goto Elwynn Forest,41.1,66.0
    .trainer >> Train your class spells
step << Mage/Priest/Rogue/Warrior
    #completewith next
    .goto Elwynn Forest,43.7,66.4,15 >>Go upstairs
step << Mage
    .goto Elwynn Forest,43.2,66.2
    .trainer >> Train your class spells
step << Priest
    .goto Elwynn Forest,43.3,65.7
    .turnin 5624 >> Turn in Garments of the Light
    .trainer >> Train your class spells
step << Rogue
    .goto Elwynn Forest,43.9,65.9
    .trainer >> Train your class spells
step << Rogue/Warrior/Paladin
    .money <0.01
    .goto Elwynn Forest,43.4,65.5
    .trainer >> Train First Aid - Don't make all your bandages at once, better time to make them later
step << !Warrior !Rogue
    .goto Elwynn Forest,43.8,65.8
    .vendor >>Buy level 5 Water up to 40
step << Warrior/Rogue
    .goto Elwynn Forest,43.8,65.8
    .vendor 295 >>Buy level 5 Food up to 40
step
    >>Grind Murlocs toward the east and loot them for Kelp Frond. kill mobs on the island if you still need some
    .goto Elwynn Forest,47.6,63.3,100,0
    .goto Elwynn Forest,51.4,64.6,100,0
    .goto Elwynn Forest,57.6,62.8,100,0
    .goto Elwynn Forest,56.4,66.6,100,0
    .goto Elwynn Forest,53.8,66.8,100,0
    .goto Elwynn Forest,57.6,62.8
    .complete 112,1 --Collect Crystal Kelp Frond (x4)
step
    >>Go in the mine, and keep following the middle path
    .goto Elwynn Forest,61.8,54.0,70,0
    .goto Elwynn Forest,60.4,50.2
    .complete 76,1 --Scout through the Jasperlode Mine
step
    .goto Elwynn Forest,74.0,72.2
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
step << Paladin
    #softcore
    .goto Elwynn Forest,76.8,62.4,100,0
    .goto Elwynn Forest,83.7,59.4,100,0
    .goto Elwynn Forest,76.8,62.4,100,0
    .goto Elwynn Forest,83.7,59.4,100,0
    .goto Elwynn Forest,76.8,62.4
    >>Get bundles of wood at the base of the trees
    .complete 5545,1 --Collect Bundle of Wood (x8)
step << Paladin
    #hardcore
    #completewith Bundles
    >>Keep an eye out for the bundles of logs at the base of the trees
    .complete 5545,1 --Collect Bundle of Wood (x8)
step << !Paladin
    #sticky
    #completewith next
    >>Keep an eye out for the bundles of logs at the base of the trees
    .complete 5545,1 --Collect Bundle of Wood (x8)
step
    #label Bundles
    .goto Elwynn Forest,79.8,55.5,90 >> Go toward the guard's corpse
step << Priest
    .goto Elwynn Forest,79.8,55.5
    >> Kill mobs surrounding the corpse. Precast Renew and Shield, get full mana, then pull the 2 mobs in front of the huts, move away, then nuke one. Run away when you kill one, then kill the other. Loot the carcass on the ground
    >> Be careful as this quest is difficult
    .turnin 45 >> Turn in Discover Rolf's Fate
    .accept 71 >> Accept Report to Thomas
step << !Paladin
    .goto Elwynn Forest,79.8,55.5
    >> Kill mobs surrounding the corpse. Pull the 2 mobs in front of the huts, move away and sheep one whilst killing the other, then kill the sheeped mob. Loot the carcass on the ground << Mage
    >> Pool Rage, then kill the 2 mobs surrounding the corpse. Pull the 2 mobs in front of the huts, move away and keep one hamstrung whilst killing the other. Run away when you kill one (use marbles on it), then pull and kill the other. Loot the carcass on the ground << Warrior
    >> Kill mobs surrounding the corpse. Pull the 2 mobs in front of the huts, move away and nuke one mob. Use Evasion. Run away when you kill one, then kill the other. Loot the carcass on the ground << Rogue
     >>Kill mobs surrounding the corpse. Pull the 2 mobs in front of the huts, move away then keep one feared, and try to keep dots on both. Then loot the carcass on the ground << Warlock
    >> Be careful as this quest is difficult
    .turnin 45 >> Turn in Discover Rolf's Fate
    .accept 71 >> Accept Report to Thomas
step << Paladin
    #softcore
    .goto Elwynn Forest,79.8,55.5
    >> Run on top of the corpse, then use Divine Protection and IMMEDIATELY loot the corpse, handin, and accept the quest. You'll die after
    .turnin 45 >> Turn in Discover Rolf's Fate
    .accept 71 >> Accept Report to Thomas
step << Paladin
    #hardcore
    .goto Elwynn Forest,79.8,55.5
    >> Kill mobs surrounding the corpse. Pull the 2 mobs in front of the huts, move away, and nuke one of the hut mobs. Bubble, heal/run away if needed, then come back and kill the other mob
    >> Be careful as this quest is difficult
    .turnin 45 >> Turn in Discover Rolf's Fate
    .accept 71 >> Accept Report to Thomas
step << Paladin
    #softcore
    #sticky
    #completewith Bundles2
    .goto Elwynn Forest,83.6,69.7,120 >>Die and respawn at the Spirit Healer, or start running back if someone cleared the corpse prior
step
    .goto Elwynn Forest,76.8,62.4,90,0
    .goto Elwynn Forest,83.7,59.4,90,0
    .goto Elwynn Forest,76.8,62.4,90,0
    .goto Elwynn Forest,83.7,59.4,90,0
    .goto Elwynn Forest,76.8,62.4,90,0
    .goto Elwynn Forest,83.7,59.4,90,0
    .goto Elwynn Forest,76.8,62.4
    >>Start running back, finish off the bundles
    .complete 5545,1 --Collect Bundle of Wood (x8)
step
    #label Bundles2
    .goto Elwynn Forest,81.4,66.1
    .turnin 5545 >> Turn in A Bundle of Trouble
step
    #label Prowlers
    .xp 9 >> Grind to 9
step
    #label Bears
    .goto Elwynn Forest,79.5,68.8
    .accept 83 >> Accept Red Linen Goods
step
    .goto Elwynn Forest,76.7,75.6,100,0
    .goto Elwynn Forest,79.7,83.7,100,0
    .goto Elwynn Forest,82.0,76.8,100,0
    .goto Elwynn Forest,76.7,75.6,100,0
    .goto Elwynn Forest,79.7,83.7,100,0
    .goto Elwynn Forest,82.0,76.8,100,0
    .goto Elwynn Forest,76.7,75.6
    >>Kill the last mobs for Protect the Frontier
    .complete 52,1 --Kill Prowler (x8)
    .complete 52,2 --Kill Young Forest Bear (x5)
step
    .goto Elwynn Forest,74.0,72.2
    .turnin 52 >> Turn in Protect the Frontier
    .turnin 71 >> Turn in Report to Thomas
    .accept 39 >> Accept Deliver Thomas' Report
    .accept 109 >> Accept Report to Gryan Stoutmantle
step
    #sticky
    #completewith Deed
    >>Keep an eye out for Westfall Deed from the Defias (lucky drop)
    .collect 1972,1,184 --Collect Westfall Deed (x1)
    .accept 184 >> Accept Furlbrow's Deed
step
    .goto Elwynn Forest,69.53,79.47
    >>Start circling the farm, killing Defias and looting them for Bandanas
    .complete 83,1 --Collect Red Linen Bandana (x6)
step << Warrior
    .goto Elwynn Forest,69.4,79.2
    >>Pool Rage, then kill Princess. Use a Lesser Heal Potion from before if needed. Loot her for the Collar
    .complete 88,1 --Collect Brass Collar (x1)
step << Rogue
    .goto Elwynn Forest,69.4,79.2
    >>Make sure Evasion is up, then kill Princess. Use a Lesser Heal Potion from before if needed. Loot her for the Collar
    .complete 88,1 --Collect Brass Collar (x1)
step << !Rogue !Warrior
    .goto Elwynn Forest,69.4,79.2
    >>Kill Princess. Use a Lesser Heal Potion from before if needed. Loot her for the Collar
    >>If you're struggling, you can use the Fence to abuse pathing and buy time
    .complete 88,1 --Collect Brass Collar (x1)
    .link https://www.youtube.com/watch?v=GRrXOV-UvD4 >> Click here if struggling
step << !Warlock !Warrior
    .goto Elwynn Forest,69.4,79.2
    .xp 10+200 >> Grind until 200+/7600xp into level 10
step
    #softcore
    #sticky
    #completewith next
    .goto Elwynn Forest,83.6,69.7,120 >>Die and respawn at the Spirit Healer if you're low health, otherwise just run back and handin
step
    #label Deed
    .goto Elwynn Forest,79.5,68.9
    .turnin 83 >> Turn in Red Linen Goods
step << !Warlock
    #softcore
    .goto Elwynn Forest,83.3,66.1
    .vendor >> vendor trash, repair
step << !Warlock !Warrior
    .goto Redridge Mountains,8.5,72.0
    .xp 10+1800 >> Grind until 1800+/7600xp into level 10
step << !Warlock
    .goto Redridge Mountains,8.5,72.0
    .zone Redridge Mountains >> Travel east to Redridge Mountains
step << !Warlock
    #softcore
    #sticky
    #completewith next
    +Die to the mobs here
    .goto Redridge Mountains,11.2,78.4
step << !Warlock
    #softcore
    .goto Redridge Mountains,20.8,56.6,100 >>Respawn at the Spirit Healer
step << !Warlock
    #softcore
    .goto Redridge Mountains,30.6,59.4
    .fp Redridge Mountains >> Get the Redridge Mountains flight path
step << !Warlock
    #hardcore
    >>Run toward the Flight Path. Be exceedingly careful to not aggro or die to any mobs en route. Try sticking to the road and keeping an eye out
    .goto Redridge Mountains,30.6,59.4
    .fp Redridge Mountains >> Get the Redridge Mountains flight path
step
    .hs >> Hearth to Goldshire
step
    .goto Elwynn Forest,43.3,65.7
    >>Don't wait for his rp event
    .turnin 112 >> Turn in Collecting Kelp
step << Warrior/Rogue
    .goto Elwynn Forest,43.4,65.6
    >>Speak with the first aid trainer upstairs
    .train 3273 >> Train First Aid
step
    .goto Elwynn Forest,42.2,65.8
    .turnin 39 >> Turn in Deliver Thomas' Report
    .turnin 76 >> Turn in The Jasperlode Mine
    .accept 239 >> Accept Westbrook Garrison Needs Help!
    .accept 59 >>Accept Cloth and Leather Armor << Warlock
step
    .goto Elwynn Forest,41.7,65.5
    .accept 1097 >> Accept Elmore's Task
step
    #softcore
    .goto Elwynn Forest,41.7,65.9
    .vendor >>vendor trash, repair
step << Warrior
    .goto Elwynn Forest,41.1,65.8
    .accept 1638 >> Accept A Warrior's Training
    .trainer >> Train your class spells
step << Paladin
    .goto Elwynn Forest,41.1,66.0
    .trainer >> Train your class spells
step
    .goto Elwynn Forest,43.3,65.7
    .accept 114 >> Accept The Escape
step << Warlock
    >>Go back down into the basement
    .goto Elwynn Forest,44.4,66.2
    .accept 1685 >> Accept Gakin's Summons
    .trainer >> Train your class spells
step << Mage/Priest/Rogue
    #sticky
    #completewith next
    .goto Elwynn Forest,43.7,66.4,10 >>Go Upstairs
step << Priest
    .goto Elwynn Forest,43.3,65.7
    .accept 5635 >> Accept Desperate Prayer
    .trainer >> Train your class spells
step << Mage
    .goto Elwynn Forest,43.2,66.2
    .trainer >> Train your class spells
step << Rogue
    .goto Elwynn Forest,43.9,65.9
    >>Don't worry about not having 2 weapons, we'll get another soon
    >>Be VERY careful about your money when training here. Make sure you train Dual Wield and Sprint and skip others
    .trainer >> Train your class spells
step << Rogue
    .goto Elwynn Forest,41.7,65.9
    .vendor >>Buy Stiletto for your Offhand
step
    >>Run out of the inn and go south
    .goto Elwynn Forest,43.2,89.6
    .turnin 114 >> Turn in The Escape
step
    .goto Elwynn Forest,34.7,84.5
    .turnin 88 >> Turn in Princess Must Die!
step
    .goto Elwynn Forest,34.5,84.3
    .turnin 87 >> Turn in Goldtooth
step << Warlock
    >>Click any of the wanted posters around
    .goto Elwynn Forest,24.6,74.7
    .accept 176 >> Accept Wanted:   "Hogger"
step
    .goto Elwynn Forest,24.2,74.5
    .turnin 239 >> Turn in Westbrook Garrison Needs Help!
    .accept 11 >> Accept Riverpaw Gnoll Bounty << Warlock/Warrior
step << Warrior
    >>If you have 31s 74c+ of vendorables/money, skip the Painted Gnoll Armband quest
    >>If you have less, skip this step
    >>This is for thrown, 2h mace, and 2h sword training. It's also for level 11 thrown, and flying to Stormwind
    .abandon 11 >> Abandon Riverpaw Gnoll Bounty
    .goto Elwynn Forest,27.6,93.0
step << Warlock/Warrior
    #sticky
    #completewith Armbands
    >>Keep an eye out for the gold pickup schedule (lucky drop), or a 100% Drop from Gruff Swiftbite (rare). extra 210xp
    .collect 1307,1,123 --Collect Gold Pickup Schedule (x1)
    .accept 123 >> Accept The Collector
step << Warlock
    #label Hogger
    .unitscan Hogger
    .goto Elwynn Forest,27.0,86.7,80,0
    .goto Elwynn Forest,26.1,89.9,80,0
    .goto Elwynn Forest,25.2,92.7,80,0
    .goto Elwynn Forest,27.0,93.9,80,0
    .goto Elwynn Forest,27.0,86.7,80,0
    .goto Elwynn Forest,26.1,89.9,80,0
    .goto Elwynn Forest,25.2,92.7,80,0
    .goto Elwynn Forest,27.0,93.9,80,0
    .goto Elwynn Forest,27.0,86.7,80,0
    .goto Elwynn Forest,26.1,89.9,80,0
    .goto Elwynn Forest,25.2,92.7,80,0
    .goto Elwynn Forest,27.0,93.9,80,0
    .goto Elwynn Forest,24.24,80.67,0
    >>Hogger can be in multiple spots in the area. Keep him fear chained, and/or kite him at <60% hp to the tower at 24,80. Loot him for his Claw
    >>Be careful as he can be feared into other mobs, hits hard, and can stun
    .complete 176,1 --Collect Huge Gnoll Claw (1)
step << Warlock/Warrior
    #label Armbands
    .goto Elwynn Forest,27.0,93.9
    >> Kill Gnolls. Loot them for Armbands
    .complete 11,1 --Collect Painted Gnoll Armband (8)
    .isOnQuest 11
step << Warrior
    .money >0.3174
    >>Grind a bit until you have 31s 74c+ of vendorables/money
    >>This is for thrown, 2h mace, and 2h sword training. It's also for level 11 thrown, and flying to Stormwind
    .goto Elwynn Forest,27.6,93.0
step << Warlock/Warrior
    .goto Elwynn Forest,24.2,74.5
    .turnin 11 >> Turn in Riverpaw Gnoll Bounty
    .isOnQuest 11
step
    .goto Westfall,60.0,19.4
    .turnin 184 >> Turn in Furlbrow's Deed
    .isOnQuest 184
step
    .goto Westfall,59.9,19.4
    .accept 36 >> Accept Westfall Stew
step
    .goto Westfall,56.4,30.5
    .turnin 36 >> Turn in Westfall Stew
step
    #softcore
    #sticky
    #completewith next
    .goto Westfall,51.7,49.4,150 >> Die and respawn at the Spirit Healer, or run to Sentinel Hill
step
    .goto Westfall,56.3,47.5
    .turnin 109 >> Turn in Report to Gryan Stoutmantle
step << Human
    .goto Westfall,57.0,47.2
    .vendor >>vendor trash
    .accept 6181 >> Accept A Swift Message
step
    .goto Westfall,56.6,52.6
    .turnin 6181 >> Turn in A Swift Message << Human
    .accept 6281 >> Accept Continue To Stormwind << Human
step
    .goto Westfall,56.6,52.6
    .fly Stormwind >> Fly to Stormwind
step << Rogue/Warrior
    >>Go inside the building
    .goto StormwindClassic,57.32,62.08,20,0
    .goto StormwindClassic,58.37,61.69
    .vendor >> Buy the level 11 thrown from Thurman. Equip it << Rogue
    .vendor >> Buy the level 11 thrown from Thurman. You'll equip it later << Warrior
step
    .goto StormwindClassic,56.2,64.6
    >>Choose the Rockets as the reward. These have very good damage, and can be used for splitpulling
    .turnin 61 >> Turn in Shipment to Stormwind
step << Warrior
    .goto StormwindClassic,57.1,57.7
    .trainer >> Train 2h Swords if you have spare money. You must save 20s for later
step << Priest/Mage/Warlock
    .goto StormwindClassic,57.1,57.7
    .trainer >>Train Staves
step << Rogue
    .goto StormwindClassic,57.1,57.7
    .trainer >>Train 1h Swords
step << Rogue
    .goto StormwindClassic,57.6,57.1
    .vendor >>Buy a Cutlass from Gunther and equip it, Stiletto in Offhand
    >>If you don't have enough money, skip this step
step << Paladin
    .goto StormwindClassic,57.1,57.7
    .trainer >>Train 2h Swords
step << Warlock
    #sticky
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> Go into The Slaughtered Lamb and go downstairs
step << Warlock
    .goto StormwindClassic,25.2,78.5
    .turnin 1685 >> Turn in Gakin's Summons
    .accept 1688 >> Accept Surena Caledon
step << Warlock
    .goto StormwindClassic,26.44,78.66
     .trainer >> Train your class spells << Warlock
step << Warlock
    #softcore
    .deathskip >> Die and respawn at the Spirit Healer by using Life Tap and standing on the Bonfire next to you
step << Warlock
    .goto Elwynn Forest,42.1,65.9
    .zone Elwynn Forest >> Run back out of Stormwind to Elwynn
step << Warlock
    .isOnQuest 123
    .goto Elwynn Forest,42.1,65.9
    >>Choose the Staff then equip it
    .turnin 176 >> Turn in Wanted:    "Hogger"
    .turnin 123 >> Turn in The Collector
step << Warlock
    .goto Elwynn Forest,42.1,65.9
    >>Choose the Staff then equip it
    .turnin 176 >> Turn in Wanted:    "Hogger"
step << Warlock
    .xp 11 >> Grind to 11
step << Warlock
    >>Grind en route, try to level your staves skill for later
    >>Kill the mobs inside the house, keep Morgan feared (he gouges and kills pet), nuke Surena. Loot her for her Choker
    .goto Elwynn Forest,71.0,80.8
    .complete 1688,1 --Collect Surena's Choker (x1)
step << Warlock
    .goto Elwynn Forest,79.5,68.8
    .turnin 59 >> Turn in Cloth and Leather Armor
step << Warlock
    #sticky
    #completewith next
    .goto Redridge Mountains,17.4,69.6
    .zone Redridge Mountains >> Grind en route to Redridge, make sure to have at least 2 Soul Shards (using Drain Soul)
    .collect 6265,2 --Soul Shard (2)
step << Warlock
    .goto Redridge Mountains,17.4,69.6
    .accept 244 >> Accept Encroaching Gnolls
step << Warlock
    >>Be careful of the mobs en route
    .goto Redridge Mountains,30.7,60.0
    .turnin 244 >> Turn in Encroaching Gnolls
step << Warlock
    .goto Redridge Mountains,30.6,59.4
    .fp Redridge Mountains >> Get the Redridge Mountains flight path
    .fly Stormwind >> Fly to Stormwind
step << Warlock
    #sticky
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> Go into The Slaughtered Lamb and go downstairs
step << Warlock
    .goto StormwindClassic,25.2,78.5
    .turnin 1688 >> Turn in Surena Caledon
    .accept 1689 >> Accept The Binding
step << Warlock
    .goto StormwindClassic,25.2,80.7,14,0
    .goto StormwindClassic,23.2,79.5,14,0
    .goto StormwindClassic,26.3,79.5,14,0
    .goto StormwindClassic,25.5,78.1
    >>Go to the bottom of the crypt. Summon the Voidwalker using the Bloodstone Choker and kill it
    .complete 1689,1 --Kill Summoned Voidwalker (x1)
step << Warlock
    .goto StormwindClassic,25.2,78.5
    >>Don't summon your voidwalker once you learn it
    .turnin 1689 >> Turn in The Binding
step << Human
    .goto StormwindClassic,74.3,47.2
    .turnin 6281 >> Turn in Continue to Stormwind
step << !Mage !Warlock
    .goto StormwindClassic,42.66,33.75,30,0 << Paladin/Priest
     .goto StormwindClassic,38.68,32.85 << Paladin
    .goto StormwindClassic,38.54,26.86 << Priest
    .goto StormwindClassic,74.91,51.55,20,0 << Warrior
    .goto StormwindClassic,78.67,45.80 << Warrior
    .goto StormwindClassic,74.64,52.82 << Rogue
    .trainer >> Train your class spells
step << Warrior
     >>Enter the inn
    .goto StormwindClassic,71.7,39.9,20,0
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
step << Priest
    #completewith next
    .goto StormwindClassic,38.8,26.4
    .turnin 5635 >> Turn in Desperate Prayer
step << Priest
    .goto StormwindClassic,38.62,26.10
    .train 13908 >> Train Desperate Prayer
step
    #completewith next
    .goto StormwindClassic,51.8,12.1
    .turnin 1097 >> Turn in Elmore's Task
step
    .goto StormwindClassic,51.8,12.1
    .accept 353 >> Accept Stormpike's Delivery
step << Warrior/Paladin/Rogue
    >>Put Sunder Armor on your bars (it's better damage than Heroic Strike) << Warrior
    .goto StormwindClassic,56.3,17.0
    .vendor >>Buy a Mining Pick. You'll train Mining later
step
    #sticky
    #completewith next
    .goto StormwindClassic,63.9,8.3,20 >>Enter the Deeprun Tram
step
    >>Take the tram when it arrives, then get off when it arrives on the other side << !Rogue !Warrior !Paladin !Warlock
    >>Take the tram when it arrives. Make bandages whilst waiting for the tram and when you get on it. Accept q when you get to the other side << Rogue/Warrior/Paladin
    >>Take the tram when it arrives. Cast Summon Voidwalker and Create Healthstone. Get off the tram on the other side << Warlock
    .accept 6661 >> Accept Deeprun Rat Roundup
step
    >>Use your flute on the rats scattered around
    .complete 6661,1 --Rats Captured (x5)
step
    .turnin 6661 >> Turn in Deeprun Rat Roundup
step
    .goto Ironforge,77.0,51.0
    .zone Ironforge >>Enter Ironforge
step
    .goto Ironforge,55.5,47.7
    .fp Ironforge >> Get the Ironforge flight path
step << Mage
    .goto Ironforge,27.17,8.57
    .trainer >> Train your class spells
step << Warrior
    .goto Ironforge,61.2,89.5
    .trainer >>Train 2h Maces and Thrown
step
    .goto Ironforge,18.22,51.44
    .home >> Set your Hearthstone to Ironforge
step
    #sticky
    #som
    #completewith next
    .goto Dun Morogh,53.5,34.9,100 >>Run out of Ironforge
    >>Equip your level 11 thrown << Warrior
step
    .goto Dun Morogh,60.1,52.6,50,0
    .goto Dun Morogh,63.1,49.8
    .accept 314 >> Accept Protecting the Herd
step
    #sticky
    #completewith next
    .goto Dun Morogh,62.3,50.3,14,0
    .goto Dun Morogh,62.2,49.4,12 >>Run up this part of the mountain
step
    >>Kill Vagash. Loot him for his Fang
    >>Kite him to the guard south of the ranch. Make sure you do 51%+ damage to him
    >>Be careful as this quest can be difficult
    .goto Dun Morogh,62.6,46.1
    .goto Dun Morogh,62.78,54.60,0
    .complete 314,1 --Collect Fang of Vagash (1)
    .link https://www.youtube.com/watch?v=ZJX6sCkm5JY >> CLICK HERE for a guide on how to solo Vagash
step
    .goto Dun Morogh,63.1,49.8
    .turnin 314 >> Turn in Protecting the Herd
step
    .goto Dun Morogh,68.6,54.7
    .vendor >>Vendor, buy food+water << !Rogue !Warrior
    .vendor >>Vendor, buy food << Rogue/Warrior
step
    #requires Cooking
    .goto Dun Morogh,68.7,56.0
    .accept 433 >> Accept The Public Servant
step
    .goto Dun Morogh,69.1,56.3
    .accept 432 >> Accept Those Blasted Troggs!
step << Warrior/Paladin/Rogue
    .goto Dun Morogh,69.3,55.5
    .train 2575 >>Train Mining, cast Find Minerals
step
    .goto Dun Morogh,70.7,56.4,40,0
    .goto Dun Morogh,70.62,52.39
    >>Kill Troggs in the cave
    >>Keep an eye out for nodes to get more rough stones. << Rogue/Warrior/Paladin
    .complete 432,1 --Kill Rockjaw Skullthumper (6)
    .complete 433,1 --Kill Rockjaw Bonesnapper (10)
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
    .goto Dun Morogh,68.6,54.7
    .vendor >>Vendor, buy x30 level 5 drink << Mage/Warlock/Priest
step
    .goto Dun Morogh,81.2,42.7,45,0
    .goto Dun Morogh,83.9,39.2
    .accept 419 >> Accept The Lost Pilot
step
    >>Click the Dwarf Corpse
    .goto Dun Morogh,79.7,36.2
    .turnin 419 >> Turn in The Lost Pilot
    .accept 417 >> Accept A Pilot's Revenge
step
    >>Kill Mangeclaw. Loot him for his Claw
    .goto Dun Morogh,78.9,37.0
    .complete 417,1 --Collect Mangy Claw (x1)
step
    .goto Dun Morogh,83.9,39.2
    >>Choose the dagger, use it as your offhand until you get a vendor sword << Rogue
    .turnin 417 >> Turn in A Pilot's Revenge
step
    .goto Dun Morogh,84.4,31.1,25 >>Go through the tunnel to Loch Modan
]])

RXPGuides.RegisterGuide([[
#classic
#som
#phase 3-6
<< Alliance
#name 13-14 Loch Modan
#version 1
#group RestedXP Alliance 1-20
#defaultfor Human
#next 14-19 Darkshore
step
    #completewith next
    .goto Loch Modan,24.1,18.2
    .vendor >>Vendor and repair
step
    .goto Loch Modan,24.8,18.4
    .turnin 353 >> Turn in Stormpike's Delivery
    .accept 307 >> Accept Filthy Paws
step
    .goto Loch Modan,33.9,51.0
    .fp Thelsamar >> Get the Thelsamar flight path
step
    #sticky
    #label StormpikeO
    .abandon 1338 >> Abandon Stormpike's Order. This is to unlock Mountaineer Stormpike's Task
step
    .goto Loch Modan,34.8,48.6
    >>Run to the Inn inside Thelsamar
    .vendor >>Buy 1-2 6 slot bags
step
    .goto Loch Modan,35.5,48.4
    .vendor >> Buy food/water (try to have 20 level 5 drink, 10 level 5 food) << Priest/Mage/Warlock/Paladin
    .vendor >> Buy food, try to have about 20 level 5 food << Rogue/Warrior
step
    #requires StormpikeO
    .goto Loch Modan,32.6,49.9,80.0,0
    .goto Loch Modan,37.2,46.1,80.0,0
    .goto Loch Modan,36.7,41.6
    >>Find Kadrell. He patrols along the Thelsamar road
    .accept 416 >> Accept Rat Catching
    .accept 1339 >> Accept Mountaineer Stormpike's Task
step
    #completewith Gearbois
    .goto Loch Modan,38.66,18.72,0
    >> Kill Kobolds. Loot them for their Ears
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .collect 2589,10 << Paladin
step
    .goto Loch Modan,35.5,18.2,45 >>Go to the entrance of the cave whilst killing rats
step
    #label Gearbois
    .goto Loch Modan,36.3,24.7
    >>Collect the crates you find in the cave. Be careful because this is difficult at level 11
    >>Be careful as the Geomancers cast Flame Ward (Fire immunity) after a few seconds << Mage/Warlock
    >>You can backtrack after looting one further in the cave, as the crates can respawn behind you
    .complete 307,1 --Collect Miners' Gear (x4)
step
    .goto Loch Modan,38.66,18.72
    >> Kill Kobolds. Loot them for their Ears
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .collect 2589,10 << Paladin
step
    .goto Loch Modan,38.66,18.72
    .xp 13+5850 >> Grind Kobolds to 5850+/11400xp
step
    .goto Loch Modan,23.3,17.9,45 >>Run back to the bunker
step
    #completewith next
    .goto Loch Modan,24.1,18.2
    .vendor >>vendor and repair
step
    .goto Loch Modan,24.7,18.3
    .turnin 307 >> Turn in Filthy Paws
    .accept 1338 >> Accept Stormpike's Order
    .turnin 1339 >> Turn in Mountaineer Stormpike's Task
step
    #softcore
    #completewith next
    .deathskip >> Die and respawn back at Thelsamar
step
    .goto Loch Modan,32.6,49.9,80.0,0
    .goto Loch Modan,37.2,46.1,80.0,0
    .goto Loch Modan,36.7,41.6
    >>Find Kadrell. He patrols along the Thelsamar road
    .turnin 416 >> Turn in Rat Catching
step
    .hs >> Hearth to Ironforge
    .vendor >> vendor trash
step << Warlock/Priest
    #softcore
    #label Wand1
    #completewith Wand2
     >>Alternatively, buy a Greater Magic Wand from the AH if it costs <33s 40c
    .goto Ironforge,25.77,75.43
    .collect 11288,1 --Greater Magic Wand (1)
step << Warlock/Priest
    #softcore
    #label Wand2
    #completewith Wand1
     >>Go in the building. Buy a Smoldering Wand
    >>If you don't have at least 33s 40c and can't afford the Greater Magic Wand, skip this step
    .goto Ironforge,23.32,17.62,20,0
    .goto Ironforge,23.12,15.93
    .collect 5208,1 --Smoldering Wand (1)
step << Warlock/Priest
    #hardcore
    .money <0.3340
     >>Go in the building. Buy a Smoldering Wand
    .goto Ironforge,23.32,17.62,20,0
    .goto Ironforge,23.12,15.93
    .collect 5208,1 --Smoldering Wand (1)
step << Warlock
    .goto Ironforge,51.1,8.7,18 >>Enter the building
    .goto Ironforge,50.4,6.3
    .trainer >> Train your class spells
step << Warlock
    .goto Ironforge,53.2,7.8,18 >>Enter the building
    .goto Ironforge,53.0,6.4
    .vendor >>Buy Consume Shadows r1, then Sacrifice r1
step << !Druid
    .goto Ironforge,69.88,82.90 << Hunter
    .goto Ironforge,65.90,88.41 << Warrior
    .goto Ironforge,50.34,5.67 << Warlock
    .goto Ironforge,51.50,15.34 << Rogue
    .goto Ironforge,25.21,10.75 << Priest
    .goto Ironforge,27.17,8.57 << Mage
    .goto Ironforge,24.55,4.46 << Paladin
     .trainer >> Train your class spells
step
    .goto Dun Morogh,53.5,34.9
    .zone Dun Morogh>>Exit Ironforge
step
    #hardcore
    #completewith next
    .goto Dun Morogh,59.43,42.85,150 >> Travel to the skip spot
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
    >>Open this link and follow it on another screen.
    >>Do the Deathless Dun Morogh -> Wetlands skip
    >>Avoid the Crocodiles when crossing the sea
    .link https://www.youtube.com/watch?v=9afQTimaiZQ >> CLICK HERE for reference
    .goto Wetlands,12.1,60.3,80 >> Travel to Menethil Harbor
step
    #softcore
    #completewith next
    .goto Dun Morogh,30.9,33.1,20 >>Run up the mountain north
step
    #softcore
    .goto Dun Morogh,32.4,29.1,20 >>Follow it up to here
step
    #softcore
    .goto Dun Morogh,33.0,27.2,20,0
    .goto Dun Morogh,33.0,25.2,20,0
    .goto Wetlands,11.6,43.4,60,0
    .deathskip >>Keep running straight north, drop down and die, then respawn
step
    #softcore
    .goto Wetlands,12.7,46.7,80 >> Swim to shore
step
    .money <0.08
    .goto Wetlands,10.4,56.0,15,0
    .goto Wetlands,10.1,56.9,15,0
    .goto Wetlands,10.6,57.2,15,0
    .goto Wetlands,10.7,56.8
    .vendor >> If you have 8s, Check for Bronze Tube from Neal Allen and buy it if it's there
step
    .goto Wetlands,9.5,59.7
    .fp Menethil Harbor >> Get the Menethil Harbor flight path
step
    .money <0.04
    .goto Wetlands,8.1,56.3
    .vendor >> In the building, check Dewin for Heal Potions, buy down to 1s
step
    .goto Wetlands,4.7,57.3
    .zone Darkshore >>Get onto the boat when it comes. Take it to Darkshore.
    >>Train first aid while waiting for the boat if you have linen, you'll need 80 points in first aid for a level 24 quest later down the road << Rogue
]])

