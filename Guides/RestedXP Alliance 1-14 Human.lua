local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#tbc
#wotlk
<< Alliance
#name 1-11 Elwynn Forest
#displayname 1-13 Elwynn Forest << Warlock
#version 1
#group RestedXP Alliance 1-20
#defaultfor Human
#next 12-14 Loch Modan;11-14 Darkshore;14-20 Bloodmyst
step << !Human
    #sticky
    #completewith next
    .goto Elwynn Forest,48.171,42.943
    +You have selected a guide meant for Humans. You should choose the same starter zone that you start in
step << Warlock tbc
    #sticky
    #completewith next
    +Kill |cRXP_LOOT_Wolves|r for 10 copper worth of vendor trash. It's worth training Immolate early
    .goto Elwynn Forest,49.4,45.6
step << Warlock tbc
    .goto Elwynn Forest,50.1,42.7
    >> Talk to |cRXP_FRIENDLY_Dane Winslow|r
    .vendor >> Vendor trash
    .target Dane Winslow
step << Warlock tbc
    .goto Elwynn Forest,49.873,42.649
    >> Talk to |cRXP_FRIENDLY_Drusilla La Salle|r
    .accept 1598 >> Accept The Stolen Tome
    .trainer >>Train Immolate
    .target Drusilla La Salle
step << Warlock tbc
    #hardcore
    .goto Elwynn Forest,52.9,44.3,60,0
    >>Kill some Wolves en route, |cRXP_WARN_then watch this video|r. Use your hearthstone after you loot the book.
    .link https://www.youtube.com/watch?v=_-KEke9Yeik >>CLICK HERE
    .goto Elwynn Forest,56.7,44.0
    .complete 1598,1 --Collect Powers of the Void (x1)
step << Warlock tbc
    .goto Elwynn Forest,52.9,44.3,60,0
    >>Kill some Wolves en route, |cRXP_WARN_then watch this video|r.
    .link https://www.youtube.com/watch?v=_-KEke9Yeik >>CLICK HERE
    .goto Elwynn Forest,56.7,44.0
    .complete 1598,1 --Collect Powers of the Void (x1)
step << Warlock tbc
    .deathskip >> Die and respawn at the Spirit Healer
step << Warlock tbc
    #hardcore
    #completewith next
    >>Make sure you're deep inside the tent so you don't reaggro
    .hs >> Hearth back to Northshire Valley
step << Warlock tbc
    >> Talk to |cRXP_FRIENDLY_Drusilla La Salle|r
    .goto Elwynn Forest,49.873,42.649
    .turnin 1598 >> Turn in The Stolen Tome
    .target Drusilla La Salle
step
    >>Summon Imp, rebuff Demon Skin << Warlock tbc
    >> Talk to |cRXP_FRIENDLY_Deputy Willem|r
    .target Deputy Willem
    .goto Elwynn Forest,48.17,42.94 << tbc
    .goto Elwynn Forest,48.05,43.55 << wotlk
    .accept 783 >> Accept A Threat Within
step << Warrior
    #sticky
    #completewith next
    +Kill |cRXP_LOOT_Wolves|r for 10c+ of vendor trash. It's worth training Battle Shout early
    .goto Elwynn Forest,46.4,40.3,60,0
step << Warrior
    >> Talk to |cRXP_FRIENDLY_Brother Danil|r
    .target Brother Danil
    .goto Elwynn Forest,47.5,41.6
    .vendor >>vendor trash
step
    >> Speak with |cRXP_FRIENDLY_Marshal McBridge|r inside the Abbey
    .target Marshal McBride
    .goto Elwynn Forest,48.923,41.606
    .turnin 783 >> Turn in A Threat Within
    .accept 7 >> Accept Kobold Camp Cleanup
step << Warrior
    >> Talk to |cRXP_FRIENDLY_Llane Beshere|r
    .target Llane Beshere
    .goto Elwynn Forest,50.242,42.287
    .trainer >>Train Battle Shout
step
    >>Run back outside << Warrior
    >> Talk to |cRXP_FRIENDLY_Deputy Willem|r again
    .target Deputy Willem
    .goto Elwynn Forest,48.17,42.94 << tbc
    .goto Elwynn Forest,48.05,43.55 << wotlk
    .accept 5261 >> Accept Eagan Peltskinner
step << Priest tbc/Mage tbc/Warlock tbc
    .goto Elwynn Forest,46.2,40.4
    .vendor >>Kill |cRXP_LOOT_Wolves|r until 50c worth of vendor trash. Vendor, then buy x10 water from |cRXP_FRIENDLY_Brother Danil|r.
    .target Brother Danil
    .collect 159,10 --Collect Refreshing Spring Water (x10)
step << Priest/Mage
    .goto Elwynn Forest,46.70,37.78
    .xp 2 >> Grind to 2
step
    >> Talk to |cRXP_FRIENDLY_Eagan Peltskinner|r outside the Abbey
    .target Eagan Peltskinner
    .goto Elwynn Forest,48.9,40.2
    .turnin 5261 >> Turn in Eagan Peltskinner
    .accept 33 >> Accept Wolves Across The Border
step << tbc
    .goto Elwynn Forest,46.70,37.78
    >>Kill |cRXP_LOOT_Young Wolves|r. Loot them for their |cRXP_LOOT_Meat|r
    .complete 33,1 --Collect Tough Wolf Meat (x8)
step << wotlk
    .goto Elwynn Forest,46.70,37.78
    >>Kill |cRXP_LOOT_Diseased Young Wolves|r. Loot them for their |cRXP_LOOT_Pelts|r
    .complete 33,1 --Collect Diseased Wolf Pelt (8)
step
    .goto Elwynn Forest,49.05,35.33
    >>Kill |cRXP_ENEMY_Kobold Vermin|r
    .complete 7,1 --Kill Kobold Vermin (x10)
step
    .goto Elwynn Forest,48.9,40.2
    >> Return to |cRXP_FRIENDLY_Eagan Peltskinner|r
    .target Eagan Peltskinner
    .turnin 33,2 >> Turn in Wolves Across The Border << Warrior/Paladin/Rogue
    .turnin 33 >> Turn in Wolves Across The Border << !Warrior !Paladin !Rogue
step << Priest tbc/Mage tbc/Warlock tbc
    .goto Elwynn Forest,47.6,41.5
    .vendor >>Vendor trash, then buy x10 more water from |cRXP_FRIENDLY_Brother Danil|r.
    .target Brother Danil
    .collect 159,10 --Collect Refreshing Spring Water (x10)
step << !Priest !Mage !Warlock/wotlk
    >> Talk to |cRXP_FRIENDLY_Brother Danil|r.
    .target Brother Danil
    .goto Elwynn Forest,47.6,41.5
    .vendor >>Vendor trash
step
    .goto Elwynn Forest,48.923,41.606
    >> Speak with |cRXP_FRIENDLY_Marshal McBridge|r inside the Abbey
    .target Marshal McBride
    .turnin 7 >> Turn in Kobold Camp Cleanup
    .accept 3100 >> Accept Simple Letter << Warrior
    .accept 3101 >> Accept Consecrated Letter << Paladin
    .accept 3102 >> Accept Encrypted Letter << Rogue
    .accept 3103 >> Accept Hallowed Letter << Priest
    .accept 3104 >> Accept Glyphic Letter << Mage
    .accept 3105 >> Accept Tainted Letter << Warlock
    .accept 15 >> Accept Investigate Echo Ridge
step << Warlock wotlk
    >> Talk to |cRXP_FRIENDLY_Drusilla La Salle|r
    .target Drusilla La Salle
    .goto Elwynn Forest,49.873,42.649
    .turnin 3105 >> Turn in Tainted Letter
    .train 688 >> Learn Summon Imp from your class trainer
    >>You'll need 95c, if you don't have the money yet, grind a little bit
step
    .goto Elwynn Forest,49.05,35.33
    .xp 3 >> Grind to 3
step
    .goto Elwynn Forest,47.42,32.68
    >>Kill |cRXP_ENEMY_Kobold Workers|r
    .complete 15,1 --Kill Kobold Worker (x10)
step
    #sticky
    #completewith thievesaccept
    #label xp3
    .xp 3+1110 >>Grind to 1110+/1400xp on your way back
step
    #completewith next
    >> Talk to |cRXP_FRIENDLY_Brother Danil|r
    .target Brother Danil
    .goto Elwynn Forest,47.7,41.4
    .vendor >> Vendor trash
step
    #requires xp3
    >> Speak with |cRXP_FRIENDLY_Marshal McBridge|r inside the Abbey
    .target Marshal McBride
    .goto Elwynn Forest,48.923,41.606
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
    >> Talk to |cRXP_FRIENDLY_Khelden Bremen|r
    .target Khelden Bremen
    .goto Elwynn Forest,49.661,39.402
    .turnin 3104 >> Turn in Glyphic Letter
    .trainer >> Train your class spells
step << Priest
    #sticky
    #completewith next
    .goto Elwynn Forest,49.8,40.2,15 >> Go through the doorway
step << Priest
    >> Talk to |cRXP_FRIENDLY_Priestess Anetta|r
    .target Priestess Anetta
    .goto Elwynn Forest,49.808,39.489
    .turnin 3103 >> Turn in Hallowed Letter
    .trainer >> Train your class spells
step << Warrior/Paladin
    #sticky
    #completewith next
    .goto Elwynn Forest,49.6,41.8,15 >>Stay downstairs
step << Warrior
    >> Talk to |cRXP_FRIENDLY_Llane Beshere|r
    .target Llane Beshere
    .goto Elwynn Forest,50.242,42.287
    .turnin 3100 >> Turn in Simple Letter
    .trainer >> Train your class spells
step << Paladin
    >> Talk to |cRXP_FRIENDLY_Brother Sammuel|r
    .target Brother Sammuel
    .goto Elwynn Forest,50.433,42.124
    .turnin 3101 >> Turn in Consecrated Letter
    .trainer >> Train your class spells
step
    #label thievesaccept
    >> Talk to |cRXP_FRIENDLY_Deputy Willem|r
    .target Deputy Willem
    .goto Elwynn Forest,48.17,42.94 << tbc
    .goto Elwynn Forest,48.05,43.55 << wotlk
    .accept 18 >> Accept Brotherhood of Thieves
step << Warlock
    >> Talk to |cRXP_FRIENDLY_Drusilla La Salle|r
    .target Drusilla La Salle
    .goto Elwynn Forest,49.873,42.649
    .turnin 3105 >> Turn in Tainted Letter
    .xp 4 >> Grind to 4
    .trainer >>Train Corruption
step
    .goto Elwynn Forest,54.57,49.03
    >>Kill |cRXP_LOOT_Defias Thugs|r. Loot them for |cRXP_LOOT_Bandanas|r
    .complete 18,1 --Collect Red Burlap Bandana (x12)
step << Rogue
    .xp 4 >> Grind to 4
step
    >> Talk to |cRXP_FRIENDLY_Deputy Willem|r
    .target Deputy Willem
    .goto Elwynn Forest,48.17,42.94 << tbc
    .goto Elwynn Forest,48.05,43.55 << wotlk
    .turnin 18,4 >> Turn in Brotherhood of Thieves << Paladin
    .turnin 18,1 >> Turn in Brotherhood of Thieves << Rogue/Warlock
    .turnin 18,5 >> Turn in Brotherhood of Thieves << Mage
    .turnin 18,2 >> Turn in Brotherhood of Thieves << Priest
    .turnin 18,3 >> Turn in Brotherhood of Thieves << Warrior
    .turnin 18 >> Turn in Brotherhood of Thieves << !Warrior !Priest !Mage !Rogue !Warlock !Paladin
    .accept 6 >> Accept Bounty on Garrick Padfoot
    .accept 3903 >> Accept Milly Osworth
step
    >> Talk to |cRXP_FRIENDLY_Brother Danil|r
    .target Brother Danil
    .goto Elwynn Forest,47.7,41.4
    .vendor >> Vendor trash, repair
step
    .goto Elwynn Forest,47.66,31.88,40,0
    .goto Elwynn Forest,48.61,27.63
    >>Kill |cRXP_ENEMY_Laborers|r in the mine
    .complete 21,1 --Kill Kobold Laborer (x12)
step
    .xp 5 >> Grind to 5
step
#xprate >1.69
    >> Speak with |cRXP_FRIENDLY_Milly Osworth|r
    .target Milly Osworth
    .goto Elwynn Forest,50.7,39.2
    .turnin 3903 >> Turn in Milly Osworth
step
#xprate <1.7
    >> Speak with |cRXP_FRIENDLY_Milly Osworth|r
    .target Milly Osworth
    .goto Elwynn Forest,50.7,39.2
    .turnin 3903 >> Turn in Milly Osworth
    .accept 3904 >> Accept Milly's Harvest
step << Rogue
    >> Speak with |cRXP_FRIENDLY_Jorik Kerridan|r
    .target Jorik Kerridan
    .goto Elwynn Forest,50.314,39.916
    >>You don't need to train any spells
    .turnin 3102 >> Turn in Encrypted Letter
step
#xprate <1.7
    >>Loot the |cRXP_PICK_Buckets of Grapes|r in the field
    .goto Elwynn Forest,54.5,49.4
    .complete 3904,1 --Collect Milly's Harvest (x8)
step
    .goto Elwynn Forest,57.5,48.2
    >>Grind en route. Kill |cRXP_LOOT_Garrick|r and loot his |cRXP_LOOT_Head|r
    .complete 6,1 --Collect Garrick's Head (x1)
step
    .xp 5+1175 >> Grind on your way back to 1175+/2800xp
    .goto Elwynn Forest,50.7,39.2
step
#xprate <1.7
    >> Speak with |cRXP_FRIENDLY_Milly Osworth|r
    .target Milly Osworth
    .goto Elwynn Forest,50.7,39.2
    .turnin 3904 >> Turn in Milly's Harvest
    .accept 3905 >>Accept Grape Manifest
step
    >> Talk to |cRXP_FRIENDLY_Deputy Willem|r
    .target Deputy Willem
    .goto Elwynn Forest,48.17,42.94 << tbc
    .goto Elwynn Forest,48.05,43.55 << wotlk
    .turnin 6,2 >> Turn in Bounty on Garrick Padfoot << Warrior/Rogue/Paladin
    .turnin 6 >> Turn in Bounty on Garrick Padfoot << !Warrior !Rogue !Paladin
step
    >> Speak with |cRXP_FRIENDLY_Marshal McBridge|r inside the Abbey
    .target Marshal McBride
    .goto Elwynn Forest,48.923,41.606
    .turnin 21,2 >> Turn in Skirmish at Echo Ridge << Warrior/Paladin
    .turnin 21 >> Turn in Skirmish at Echo Ridge << !Warrior !Paladin
    .accept 54 >> Accept Report to Goldshire
step
    #sticky
    #completewith next
    .goto Elwynn Forest,49.6,41.6,15,0
    .goto Elwynn Forest,48.9,41.3,10 >>Go upstairs
step
#xprate <1.7
    >> Talk to |cRXP_FRIENDLY_Brother Neals|r
    .target Brother Neals
    .goto Elwynn Forest,49.471,41.586
    .turnin 3905 >>Turn in Grape Manifest
step << Priest
    >> Talk to |cRXP_FRIENDLY_Priestess Anetta|r
    .target Priestess Anetta
    .goto Elwynn Forest,49.808,39.489
    .accept 5623 >> Accept In Favor of the Light
step
    >> Leave Northshire Valley and talk to |cRXP_FRIENDLY_Falkhaan Isenstrider|r
    .target Falkhaan Isenstrider
    .goto Elwynn Forest,45.6,47.7
    .accept 2158 >> Accept Rest and Relaxation
step
    #hardcore
    >> Talk to |cRXP_FRIENDLY_Marshall Dughan|r
    .target Marshal Dughan
    .goto Elwynn Forest,42.105,65.927
    .turnin 54 >> Turn in Report to Goldshire
    .accept 62 >> Accept The Fargodeep Mine
step
    #softcore
    #completewith Goldshire
    .deathskip >> Die and respawn at the Spirit Healer
step << Rogue
    .goto Elwynn Forest,41.706,65.544
    .target Smith Argus
    .train 2018 >> Train Blacksmithing from Argus. This will allow you to make +2 damage sharpening stones for your weapon which are very strong. Make them until level 20ish << Rogue
step << Warrior
    .goto Elwynn Forest,41.5,65.9
    .money <0.0509
    .target Corina Steele
    >>Repair your weapon. If you have enough money (5s 9c) buy a Gladius from Corina. Otherwise, skip this step (you'll come back later)
    .collect 2488,1 --Collect Gladius
step << Rogue
    .goto Elwynn Forest,41.5,65.9
    .money <0.0382
    .target Corina Steele
    >>Repair your weapon. If you have enough money (3s 82c) buy a Stiletto from Corina. Otherwise, skip this step (you'll come back later)
    .collect 2494,1 --Collect Stiletto
step << Paladin
    .goto Elwynn Forest,41.5,65.9
    .money <0.0666
    .target Corina Steele
    >>Repair your weapon. If you have enough money (6s 66c) buy a Wooden Mallet from Corina. Otherwise, skip this step (you'll come back later)
    .collect 2493,1 --Collect Wooden Mallet
step << Mage/Priest/Warlock
    #completewith next
    >> Talk to |cRXP_FRIENDLY_Andrew Krighton|r
    .target Andrew Krighton
    .goto Elwynn Forest,41.7,65.9
    .vendor >> Vendor trash, repair
step
    #label Goldshire
    >> Talk to |cRXP_FRIENDLY_Marshall Dughan|r
    .target Marshal Dughan
    .goto Elwynn Forest,42.105,65.927
    .turnin 54 >> Turn in Report to Goldshire
    .accept 62 >> Accept The Fargodeep Mine
step
    >>On your close left as you go in the Inn talk to |cRXP_FRIENDLY_William Pestle|r
    .target William Pestle
    .goto Elwynn Forest,42.9,65.7,15,0
    .goto Elwynn Forest,43.283,65.721
    .accept 60 >> Accept Kobold Candles
step
    .goto Elwynn Forest,43.771,65.803
    >> Talk to |cRXP_FRIENDLY_Innkeeper Farley|r
    .target Innkeeper Farley
    >>Do NOT buy any food/drink here << Warlock
    .turnin 2158 >> Turn in Rest and Relaxation
    .home >> Set your Hearthstone to Goldshire
step
    .xp 6 >> Grind to 6
step << Rogue
    >> Talk to |cRXP_FRIENDLY_Brog Hamfist|r
    .target Brog Hamfist
    .goto Elwynn Forest,43.96,65.92
    .vendor 151 >> Buy the level 3 thrown from Brog. Equip it
step << Warlock
    #completewith next
    .goto Elwynn Forest,44.1,66.0,10 >>Go to the room behind the innkeeper, then go downstairs.
step << Warlock
    >> Talk to |cRXP_FRIENDLY_Maximillian Crowe|r and |cRXP_FRIENDLY_Cylina Darkheart|r
    .target Maximillian Crowe
    .target Cylina Darkheart
    .goto Elwynn Forest,44.4,66.2
    .trainer >> Train your class spells. It is in the basement.
    .goto Elwynn Forest,44.4,66.0
    .vendor >> Buy the Blood Pact book if you have money after training (otherwise buy it later) << tbc
step << Mage/Priest/Rogue
    #completewith next
    .goto Elwynn Forest,43.7,66.4,12 >>Go upstairs
step << Mage
    .goto Elwynn Forest,43.2,66.2
    .trainer >> Train your class spells
step << Priest
    .goto Elwynn Forest,43.283,65.721
>>Talk to |cRXP_FRIENDLY_Priestess Josetta|r
    .turnin 5623 >> Turn in In Favor of the Light
.target Priestess Josetta
    .accept 5624 >> Accept Garments of the Light
    .trainer >> Train your class spells
step << Rogue
    .money <0.01
    >> Talk to |cRXP_FRIENDLY_Keryn Sylvius|r
    .target Keryn Sylvius
    .goto Elwynn Forest,43.9,65.9
    .trainer >> Train your class spells
step << Rogue/Warrior
    .money <0.01
    >> Talk to |cRXP_FRIENDLY_Michelle Belle|r
    .target Michelle Belle
    .goto Elwynn Forest,43.4,65.5
    .train 3273 >> Train First Aid - Don't make all your bandages at once, better time to make them later
step << Warrior tbc
    .goto Elwynn Forest,43.771,65.803
    .vendor >> Buy level 5 food down to 1 Silver
step << Rogue tbc
    .goto Elwynn Forest,43.771,65.803
    .vendor >> Buy up to 20 level 5 food
step << Warrior/Paladin
    .goto Elwynn Forest,41.706,65.544
    .target Smith Argus
    .train 2018 >> Train Blacksmithing from Argus. This will allow you to make +2 damage sharpening stones for your weapon << Warrior
    .train 2018 >> Train Blacksmithing from Argus. This will allow you to make +2 damage weightstones for your weapon << Paladin
step << Warrior
    >> Talk to |cRXP_FRIENDLY_Lyria Du Lac|r
    .target Lyria Du Lac
    .goto Elwynn Forest,41.087,65.768
    .trainer >> Train your class spells
step << Paladin
    >> Talk to |cRXP_FRIENDLY_Brother Wilhelm|r
    .target Brother Wilhelm
    .goto Elwynn Forest,41.1,66.0
    .trainer >> Train your class spells
step
    >> Speak with |cRXP_FRIENDLY_Remy "Two Times"|r
    .target Remy "Two Times"
    .goto Elwynn Forest,42.1,67.3
    .accept 47 >> Accept Gold Dust Exchange
step << Priest
    >>Use Lesser Heal Rank 2 and then Power Word: Fortitude on |cRXP_FRIENDLY_Guard Roberts|r
    .target Guard Roberts
    .goto Elwynn Forest,48.2,68.0
    .complete 5624,1 --Heal and fortify Guard Roberts
step
    #completewith BoarMeat1
    >>Start killing |cRXP_LOOT_Boars|r you see for |T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r
    .collect 769,4 --Collect Chunk of Boar Meat (x4)
step
    >> Talk to |cRXP_FRIENDLY_Ma Stonefield|r and |cRXP_FRIENDLY_"Auntie" Bernice Stonefield|r
    .target "Auntie" Bernice Stonefield
    .goto Elwynn Forest,34.486,84.253
    .accept 85 >> Accept Lost Necklace
    .goto Elwynn Forest,34.660,84.482
    .accept 88 >> Accept Princess Must Die!
step
    #completewith Candles
    >> Kill |cRXP_LOOT_Kobolds|r and loot them for |cRXP_LOOT_Candles|r
    .complete 60,1 --Collect Kobold Candle (x8)
step
    #label Candles
    #completewith next
    >> Kill |cRXP_LOOT_Kobolds|r and loot them for |cRXP_LOOT_Gold Dust|r
    .complete 47,1 --Collect Gold Dust (x10)
step << Priest/Mage/Warlock
    #label Dust
    >>Grind mobs east and talk to |cRXP_FRIENDLY_Billy Maclure|r
    .target Billy Maclure
    .goto Elwynn Forest,43.132,85.722
    .turnin 85 >> Turn in Lost Necklace
    .accept 86 >> Accept Pie for Billy
step << Warrior
    #label Dust
    >>Grind mobs east and talk to |cRXP_FRIENDLY_Billy Maclure|r
    .target Billy Maclure
    >> If you get a Rough Stone at any point, make it into a Sharpening Stone via Blacksmithing, and apply it on your sword
    .goto Elwynn Forest,43.132,85.722
    .turnin 85 >> Turn in Lost Necklace
    .accept 86 >> Accept Pie for Billy
step << Rogue
    #label Dust
    >>Grind mobs east and talk to |cRXP_FRIENDLY_Billy Maclure|r
    .target Billy Maclure
    >> If you get a Rough Stone at any point, make it into a Sharpening Stone via Blacksmithing, and apply it on your dagger
    .goto Elwynn Forest,43.132,85.722
    .turnin 85 >> Turn in Lost Necklace
    .accept 86 >> Accept Pie for Billy
step << Paladin
    #label Dust
    >>Grind mobs east and talk to |cRXP_FRIENDLY_Billy Maclure|r
    .target Billy Maclure
    >> If you get a Rough Stone at any point, Make it into a Weightstone via Blacksmithing, and apply it to your mace
    .goto Elwynn Forest,43.132,85.722
    .turnin 85 >> Turn in Lost Necklace
    .accept 86 >> Accept Pie for Billy
step
    #label BoarMeat1
    >> Talk to |cRXP_FRIENDLY_Maybell Maclure|r in the small house
    .target Maybell Maclure
    .goto Elwynn Forest,43.2,89.6
    .accept 106 >> Accept Young Lovers
step << Mage tbc/Priest tbc/Warlock tbc
    .goto Elwynn Forest,42.4,89.4
    >> Talk to |cRXP_FRIENDLY_Joshua Maclure|r
    .target Joshua Maclure
    .vendor >>Vendor, buy as much milk as you can
step << !Mage !Priest !Warlock tbc
    >> Talk to |cRXP_FRIENDLY_Joshua Maclure|r
    .target Joshua Maclure
    .goto Elwynn Forest,42.4,89.4
    .vendor >>vendor trash
step
    #completewith next
    >>Grind |cRXP_LOOT_Boars|r you see for |T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r en route
    .collect 769,4 --Collect Chunk of Boar Meat (x4)
step
    >> Head back to the Stonefield farm, then keep going to the river. Talk to |cRXP_FRIENDLY_Tommy Joe Stonefield|r
    .target Tommy Joe Stonefield
    .goto Elwynn Forest,29.840,85.997
    .turnin 106 >> Turn in Young Lovers
    .accept 111 >> Accept Speak with Gramma
step
    .goto Elwynn Forest,32.5,85.5
    >>Finish killing |cRXP_LOOT_Boars|r you see for |T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r
    .complete 86,1 --Collect Chunk of Boar Meat (x4)
step
    >> Return to |cRXP_FRIENDLY_"Auntie" Bernice Stonefield|r
    .target "Auntie" Bernice Stonefield
    .goto Elwynn Forest,34.486,84.253
    .turnin 86 >> Turn in Pie for Billy
    .accept 84 >> Accept Back to Billy
step
    >> Speak with |cRXP_FRIENDLY_Gramma Stonefield|r inside the house
    .target Gramma Stonefield
    .goto 1429,34.945,83.855
    .turnin 111 >> Turn in Speak with Gramma
    .accept 107 >> Accept Note to William
step
    #sticky
    #completewith next
    >> Kill |cRXP_LOOT_Kobolds|r and loot them for |cRXP_LOOT_Candles|r and |cRXP_LOOT_Gold Dust|r
    .complete 47,1 --Collect Gold Dust (x10)
    .complete 60,1 --Collect Kobold Candle (x8)
step
    >>Grind mobs east through the outside of the mine and talk to |cRXP_FRIENDLY_Billy Maclure|r on the farm
    .target Billy Maclure
    .goto Elwynn Forest,43.132,85.722
    .turnin 84 >> Turn in Back to Billy
    .accept 87 >> Accept Goldtooth
step
    #completewith next
    >> Kill |cRXP_LOOT_Kobolds|r and loot them for |cRXP_LOOT_Candles|r and |cRXP_LOOT_Gold Dust|r
    .complete 47,1 --Collect Gold Dust (x10)
    .complete 60,1 --Collect Kobold Candle (x8)
step
    >>Go into the mine
    .goto Elwynn Forest,40.5,82.3
    .complete 62,1 --Scout Through the Fargodeep Mine
step << Warrior
    >>|cRXP_WARN_Pool as much rage as you can|r (grind Rage off of other mobs) then kill |cRXP_LOOT_Goldtooth|r for |cRXP_LOOT_Bernice's Necklace|r
    .goto Elwynn Forest,41.7,78.1
    .complete 87,1 --Collect Bernice's Necklace  (x1)
    .unitscan Goldtooth
step << !Warrior
    >>Kill |cRXP_LOOT_Goldtooth|r for |cRXP_LOOT_Bernice's Necklace|r
    .goto Elwynn Forest,41.7,78.1
    .complete 87,1 --Collect Bernice's Necklace  (x1)
    .unitscan Goldtooth
step << Warrior
    #sticky
    #completewith Goldtooth
    +|cRXP_WARN_Try to save a single healing potion from now on as you will need it for Rolf's Corpse later|r
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
step
    #label KoboldTurnins
    .goto Elwynn Forest,40.5,82.3
    >> Kill |cRXP_LOOT_Kobolds|r and loot them for |cRXP_LOOT_Candles|r and |cRXP_LOOT_Gold Dust|r
    .complete 47,1 --Collect Gold Dust (x10)
    .complete 60,1 --Collect Kobold Candle (x8)
step
    #label Goldtooth
    #requires KoboldTurnins
    >> Head back to |cRXP_FRIENDLY_"Auntie" Bernice Stonefield|r
    .target "Auntie" Bernice Stonefield
    .goto Elwynn Forest,34.486,84.253
    .turnin 87 >> Turn in Goldtooth
step
    >>Grind some mobs back to Goldshire
    .xp 7+2690 >>Grind until 2690+/4500xp << !Priest
    .xp 7+2350 >>Grind until 2350+/4500xp << Priest
    .goto Elwynn Forest,42.1,67.3
step << wotlk
    #completewith next
    .hs >> Hearth or run back to Goldshire
step
    >> Talk to |cRXP_FRIENDLY_Remy "Two Times"|r
    .target Remy "TWo Times"
    .goto Elwynn Forest,42.1,67.3
    .turnin 47 >> Turn in Gold Dust Exchange
    .accept 40 >> Accept A Fishy Peril
step << Rogue
    .goto Elwynn Forest,41.5,65.9
    >>Repair your weapon. If you have enough money (3s 82c) buy a Stiletto from Corina. Otherwise, skip this step (you'll come back later)
    .collect 2494,1
step
    >> Talk to |cRXP_FRIENDLY_Marshal Dughan|r
    .target Marshal Dughan
    .goto Elwynn Forest,42.105,65.927
    .turnin 40 >> Turn in A Fishy Peril
    .accept 35 >> Accept Further Concerns
    .turnin 62 >> Turn in The Fargodeep Mine
    .accept 76 >> Accept The Jasperlode Mine
step
    #completewith next
    .goto Elwynn Forest,41.7,65.9
    .vendor >>vendor trash, repair
step
    >> Head into the inn and talk to William
    .goto Elwynn Forest,43.283,65.721
>>Talk to |cRXP_FRIENDLY_William Pestle|r
    .turnin 60 >> Turn in Kobold Candles
.target William Pestle
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
    .vendor >> Buy the Firebolt book if you have money after training (otherwise buy it later) << tbc
step
    .money <0.1250
    .goto Elwynn Forest,44.0,65.9
    .vendor >>Buy a 6 slot bag from Brog
step << Warrior
    .goto Elwynn Forest,41.087,65.768
    .trainer >> Train your class spells
step << Paladin
    .goto Elwynn Forest,41.1,66.0
    .trainer >> Train your class spells
step << Warrior
    .goto Elwynn Forest,41.5,65.9
    >>Repair your weapon. If you have enough money (5s 9c) buy a Gladius from Corina. Otherwise, skip this step (you'll come back later)
    .collect 2488,1
step << Paladin
    .goto Elwynn Forest,41.5,65.9
    >>Repair your weapon. If you have enough money (6s 66c) buy a Wooden Mallet from Corina. Otherwise, skip this step (you'll come back later)
    .collect 2493,1 --Collect Wooden Mallet
step << Mage/Priest/Rogue/Warrior
    #completewith next
    .goto Elwynn Forest,43.7,66.4,15 >>Go upstairs
step << Mage
    .goto Elwynn Forest,43.2,66.2
    .trainer >> Train your class spells
step << Priest
    .goto Elwynn Forest,43.283,65.721
.target Priestess Josetta
>>Talk to |cRXP_FRIENDLY_Priestess Josetta|r
    .turnin 5624 >> Turn in Garments of the Light
    .trainer >> Train your class spells
step << Rogue
    .goto Elwynn Forest,43.9,65.9
    .trainer >> Train your class spells
step << Rogue/Warrior
    .money <0.01
    .goto Elwynn Forest,43.4,65.5
    .trainer >> Train First Aid - Don't make all your bandages at once, better time to make them later
step << !Warrior !Rogue tbc
    .goto Elwynn Forest,43.771,65.803
    .vendor >>Buy level 5 Water up to 40
step << Warrior/Rogue tbc
    .goto Elwynn Forest,43.771,65.803
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
step << wotlk
    #completewith next
    .deathskip >> Die on purpose and respawn at The Tower of Azora
step
    >> Speak to Guard Thomas by the bridge
    .goto Elwynn Forest,73.973,72.179
>>Talk to |cRXP_FRIENDLY_Guard Thomas|r
    .turnin 35 >> Turn in Further Concerns
.target Guard Thomas
    .accept 37 >> Accept Find the Lost Guards
    .accept 52 >> Accept Protect the Frontier
step
    #sticky
    #completewith Prowlers
    #label prowling
    >>Kill Prowlers as you do other quests
    .complete 52,1 --Kill Prowler (x8)
step
    #sticky
    #completewith Prowlers
    >>Kill Bears as you do other quests. Kill any you see
    .complete 52,2 --Kill Young Forest Bear (x5)
step
    .goto Elwynn Forest,72.7,60.3
    .turnin 37 >> Turn in Find the Lost Guards
    .accept 45 >> Accept Discover Rolf's Fate
step
#xprate <1.7
    .goto Elwynn Forest,81.382,66.112
    >> Run to Eastvale Logging Camp and pick up this quest as soon as possible!
.target Supervisor Raelen
>>Talk to |cRXP_FRIENDLY_Supervisor Raelen|r
    .accept 5545 >> Accept A Bundle of Trouble
step << Paladin tbc
    #sticky
    #completewith Bundles
    +Complete all quests before heading to the murlocs, we are going to do a deathskip.
step
#xprate <1.7
    #sticky
    #completewith next
    .goto Elwynn Forest,76.8,62.4,100,0
    .goto Elwynn Forest,83.7,59.4,100,0
    .goto Elwynn Forest,76.8,62.4,100,0
    .goto Elwynn Forest,83.7,59.4,100,0
    .goto Elwynn Forest,76.8,62.4
    >>Get bundles of wood at the base of the trees. Prioritize this quest
    .complete 5545,1 --Collect Bundle of Wood (x8)
step
    #label Bundles
    .goto Elwynn Forest,79.8,55.5,90 >> Go toward the guard's corpse
    .isOnQuest 45
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
step << Paladin tbc
    #softcore
    .goto Elwynn Forest,79.8,55.5
    >> Run on top of the corpse, then use Divine Protection and IMMEDIATELY loot the corpse, handin, and accept the quest. You'll die after
    .turnin 45 >> Turn in Discover Rolf's Fate
    .accept 71 >> Accept Report to Thomas
step << Paladin wotlk
    .goto Elwynn Forest,79.8,55.5
    >> Kill mobs surrounding the corpse. Pull the 2 mobs in front of the huts, move away, and nuke one of the hut mobs. Use Divine Protection once both are on you, heal/run away if needed, then come back and kill the other mob
    >> Be careful as this quest is difficult
    .turnin 45 >> Turn in Discover Rolf's Fate
    .accept 71 >> Accept Report to Thomas
step << Paladin tbc
    #softcore
    #sticky
    #completewith Prowlers
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
    .goto Elwynn Forest,81.382,66.112
.target Supervisor Raelen
>>Talk to |cRXP_FRIENDLY_Supervisor Raelen|r
    .turnin 5545 >> Turn in A Bundle of Trouble
step
    #label Prowlers
    .xp 9 >> Grind to 9
step
#xprate <1.7
    #label Bears
    .goto Elwynn Forest,79.457,68.789
.target Sara Timberlain
>>Talk to |cRXP_FRIENDLY_Sara Timberlain|r
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
    >> Return to Guard Thomas
    .goto Elwynn Forest,73.973,72.179
>>Talk to |cRXP_FRIENDLY_Guard Thomas|r
    .turnin 52 >> Turn in Protect the Frontier
    .turnin 71 >> Turn in Report to Thomas
.target Guard Thomas
    .accept 39 >> Accept Deliver Thomas' Report
.target Deputy Rainer
.target Marshal Haggard
.target Marshal Dughan
.target Farmer Furlbrow
.target Farmer Saldean
>>Talk to |cRXP_FRIENDLY_Farmer Saldean|r
-->>Talk to |cRXP_FRIENDLY_Farmer Furlbrow|r
-->>Talk to |cRXP_FRIENDLY_Marshal Dughan|r
--
-->>Talk to |cRXP_FRIENDLY_Marshal Haggard|r
-->>Talk to |cRXP_FRIENDLY_Deputy Rainer|r
    .accept 109 >> Accept Report to Gryan Stoutmantle
step
#xprate <1.7
    #completewith Deed
    .use 1972 >>Keep an eye out for Westfall Deed from the Defias (lucky drop)
    .collect 1972,1,184,1 --Collect Westfall Deed (x1)
    .accept 184 >> Accept Furlbrow's Deed
step
#xprate <1.7
    #completewith Grindxp
    .goto Elwynn Forest,69.53,79.47
    >>Start circling the farm, killing Defias and looting them for Bandanas.
    >> Try to get low on health for the last one, we're deathskipping afterwards << tbc
    .complete 83,1 --Collect Red Linen Bandana (x6)
    .isOnQuest 83
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
step << !Warlock
    #label Grindxp
    .xp 9+3695 >> Grind to 3695+/6500xp
step << Warlock
    #label Grindxp
    .xp 9+3400 >> Grind to 3400+/6500xp
step
#xprate <1.7
    .goto Elwynn Forest,69.53,79.47
    >>Start circling the farm, killing Defias and looting them for Bandanas.
    >> Try to get low on health for the last one, we're deathskipping afterwards << tbc
    .complete 83,1 --Collect Red Linen Bandana (x6)
    .isOnQuest 83
step << tbc
    #completewith next
    .deathskip >>Die and respawn at the Spirit Healer if you're low health, otherwise just run back and handin
step
#xprate <1.7
    #label Deed
    >> Talk to Sara Timberlain
    .goto Elwynn Forest,79.5,68.9
.target Sara Timberlain
>>Talk to |cRXP_FRIENDLY_Sara Timberlain|r
    .turnin 83 >> Turn in Red Linen Goods
    .isQuestComplete 83
step << !Warlock
    .goto Redridge Mountains,8.5,72.0
    .xp 9+4475 >> Grind until 4475+/6500xp
step << Paladin
    .goto Redridge Mountains,8.5,72.0
    .zone Redridge Mountains >> Travel east to Redridge Mountains
step << Paladin
    #sticky
    #completewith next
    .deathskip >> Die to the mobs here then resurrect at the Spirit Healer
    .goto Redridge Mountains,11.2,78.4
step << Paladin
    #softcore
    .goto Redridge Mountains,30.6,59.4
    .fp Redridge Mountains >> Get the Redridge Mountains flight path
step << Paladin
    #hardcore
    >>Run toward the Flight Path. Be exceedingly careful to not aggro or die to any mobs en route. Try sticking to the road and keeping an eye out
    .goto Redridge Mountains,30.6,59.4
    .fp Redridge Mountains >> Get the Redridge Mountains flight path
step
    .hs >> Hearth to Goldshire
step
    .money <0.1250
    .goto Elwynn Forest,44.0,65.9
    .vendor >>Buy two 6 slot bags from Brog
step
    .goto Elwynn Forest,43.283,65.721
    >>Turn in the quest but don't wait for the roleplay to finish
.target William Pestle
>>Talk to |cRXP_FRIENDLY_William Pestle|r
    .turnin 112 >> Turn in Collecting Kelp
step << Warrior/Rogue
    .goto Elwynn Forest,43.4,65.6
    >>Speak with the first aid trainer upstairs
    .train 3273 >> Train First Aid
step
    >> Head outside and talk to Marshal Dughan
    .goto Elwynn Forest,42.2,65.8
>>Talk to |cRXP_FRIENDLY_Marshal Dughan|r
    .turnin 39 >> Turn in Deliver Thomas' Report
    .turnin 76 >> Turn in The Jasperlode Mine
.target Marshal Dughan
    .accept 239 >> Accept Westbrook Garrison Needs Help!
    .accept 59 >>Accept Cloth and Leather Armor << Warlock
step << tbc/Warlock wotlk
    >> Talk to Smith Argus in the blacksmithery
    .goto Elwynn Forest,41.706,65.544
.target Smith Argus
.target Verner Osgood
>>Talk to |cRXP_FRIENDLY_Verner Osgood|r
-->>Talk to |cRXP_FRIENDLY_Smith Argus|r
    .accept 1097 >> Accept Elmore's Task
step
    .xp 10 >> Grind to 10
step
    #softcore
    .goto Elwynn Forest,41.7,65.9
    .vendor >>vendor trash, repair
step << Warrior
    .goto Elwynn Forest,41.087,65.768
.target Ilsa Corbin
.target Lyria Du Lac
>>Talk to |cRXP_FRIENDLY_Lyria Du Lac|r
-->>Talk to |cRXP_FRIENDLY_Ilsa Corbin|r
    .accept 1638 >> Accept A Warrior's Training
    .trainer >> Train your class spells
step << Paladin
    .goto Elwynn Forest,41.1,66.0
    .trainer >> Train your class spells
step
    >> Return to William in the inn
    .goto Elwynn Forest,43.283,65.721
.target William Pestle
>>Talk to |cRXP_FRIENDLY_William Pestle|r
    .accept 114 >> Accept The Escape
step << Warlock
    >>Go back down into the basement
    .goto Elwynn Forest,44.4,66.2
.target Remen Marcot
>>Talk to |cRXP_FRIENDLY_Remen Marcot|r
    .accept 1685 >> Accept Gakin's Summons
    .trainer >> Train your class spells
step << Mage/Priest/Rogue tbc
    #sticky
    #completewith next
    .goto Elwynn Forest,43.7,66.4,10 >>Go Upstairs
step << Priest
    .goto Elwynn Forest,43.283,65.721
.target Priestess Josetta
>>Talk to |cRXP_FRIENDLY_Priestess Josetta|r
    .accept 5635 >> Accept Desperate Prayer << tbc
    .trainer >> Train your class spells
step << Mage
    .goto Elwynn Forest,43.2,66.2
    .trainer >> Train your class spells
step << Rogue tbc
    .goto Elwynn Forest,43.9,65.9
    >>Don't worry about not having 2 weapons, we'll get another soon
    >>Be VERY careful about your money when training here. You will need 31s 52c by next level. Make sure you train Dual Wield and Sprint though.
    .trainer >> Train your class spells
step << Rogue tbc
    .goto Elwynn Forest,41.7,65.9
    .money >0.3152
    .vendor >>You don't have enough money, so buy Stiletto for your Offhand
step
    >>Run out of the inn and go south back to Maybell Maclure
    .goto Elwynn Forest,43.2,89.6
.target Maybell Maclure
>>Talk to |cRXP_FRIENDLY_Maybell Maclure|r
    .turnin 114 >> Turn in The Escape
step
    >> Head back to the Stonefield farm
    .goto Elwynn Forest,34.660,84.482
.target Ma Stonefield
>>Talk to |cRXP_FRIENDLY_Ma Stonefield|r
    .turnin 88,2 >> Turn in Princess Must Die! << Warrior/Paladin
    .turnin 88 >> Turn in Princess Must Die! << !Warrior !Paladin
step << Warlock/Mage wotlk
#xprate >1.3 << Mage
    >>Click any of the wanted posters around
    .goto Elwynn Forest,24.6,74.7
    .accept 176 >> Accept Wanted:   "Hogger"
step
    >> Speak with Deputy Rainer
    .goto Elwynn Forest,24.2,74.5
.target Deputy Rainer
>>Talk to |cRXP_FRIENDLY_Deputy Rainer|r
    .turnin 239 >> Turn in Westbrook Garrison Needs Help!
step << Warlock/Mage wotlk
#xprate >1.3 << Mage
    .goto Elwynn Forest,24.2,74.5
.target Deputy Rainer
>>Talk to |cRXP_FRIENDLY_Deputy Rainer|r
    .accept 11 >> Accept Riverpaw Gnoll Bounty << Warlock
step << Warrior
    .money >0.2099
    >>Grind a bit until you have 20s 99c+ of vendorables/money
    >>This is for thrown, 2h mace, 2h sword training, and flying to Stormwind
    .goto Elwynn Forest,27.6,93.0
step << Warlock/Mage wotlk
#xprate >1.3 << Mage
    #completewith Armbands
    >>Keep an eye out for the gold pickup schedule (lucky drop), or a 100% Drop from Gruff Swiftbite (rare). Extra 210xp
    .collect 1307,1,123 --Collect Gold Pickup Schedule (x1)
    .accept 123 >> Accept The Collector
step << Warlock/Mage wotlk
#xprate >1.3 << Mage
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
    #label Armbands
    .money >0.3152
    .goto Elwynn Forest,24.2,74.5
.target Deputy Rainer
>>Talk to |cRXP_FRIENDLY_Deputy Rainer|r
    .accept 11 >> Accept Riverpaw Gnoll Bounty
step << Rogue
    .goto Elwynn Forest,27.0,93.9
    >> Kill Gnolls. Loot them for Armbands
    .complete 11,1 --Collect Painted Gnoll Armband (x8)
    .isOnQuest 11
step << Warlock/Rogue/Mage wotlk
#xprate >1.3 << Mage
    .goto Elwynn Forest,24.2,74.5
.target Deputy Rainer
>>Talk to |cRXP_FRIENDLY_Deputy Rainer|r
    .turnin 11 >> Turn in Riverpaw Gnoll Bounty
    .isOnQuest 11
step << Mage wotlk
#xprate >1.3
    #completewith next
    .deathskip >> Die and respawn at Goldshire
step << Mage wotlk
#xprate >1.3
    .goto Elwynn Forest,42.105,65.927
    >>Choose the Staff. Equip it
.target Marshal Dughan
>>Talk to |cRXP_FRIENDLY_Marshal Dughan|r
    .turnin 176 >> Turn in Wanted:    "Hogger"
    .isQuestComplete 176
step << Rogue
    .abandon 123 >>Abandon The Collector
step
    >> Talk to the Furlbrows
    .goto Westfall,60.0,19.4
    .turnin -184 >> Turn in Furlbrow's Deed
.target Verna Furlbrow
>>Talk to |cRXP_FRIENDLY_Verna Furlbrow|r
    .accept 36 >> Accept Westfall Stew
step
    >> Head to Saldean's Farm and go inside the house
    .goto Westfall,56.416,30.519
.target Salma Saldean
>>Talk to |cRXP_FRIENDLY_Salma Saldean|r
    .turnin 36 >> Turn in Westfall Stew
step
    #completewith next
    .goto Westfall,51.7,49.4,150 >> Die and respawn at the Spirit Healer, or run to Sentinel Hill
step << Warlock wotlk
#xprate >1.3
    .goto Westfall,52.8,53.6
    .home >> Set your Hearthstone to Sentinel Hill
step << Mage wotlk/Warlock wotlk
#xprate >1.3
    .goto Westfall,54.00,53.00
.target Scout Galiaan
>>Talk to |cRXP_FRIENDLY_Scout Galiaan|r
    .accept 153 >> Accept Red Leather Bandanas
step
    >> Talk to Gryan at the tower
    .goto Westfall,56.327,47.520
.target Gryan Stoutmantle
>>Talk to |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .turnin 109 >> Turn in Report to Gryan Stoutmantle
step << Mage wotlk/Warlock wotlk
#xprate >1.3
    .goto Westfall,56.327,47.520
.target Gryan Stoutmantle
>>Talk to |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .accept 12 >> Accept The People's Militia
step << Human
    >> Talk to Quartermaster Lewis in the tower
    .goto Westfall,57.002,47.169
.target Quartermaster Lewis
>>Talk to |cRXP_FRIENDLY_Quartermaster Lewis|r
    .accept 6181 >> Accept A Swift Message
step << Mage wotlk
#xprate >1.3
    >> Kill the Defias. Loot them for their bandanas
   .goto Westfall,48.21,46.70,60,0
   .goto Westfall,46.74,52.87,60,0
   .goto Westfall,48.21,46.70,-1
   .goto Westfall,46.74,52.87,-1
   .complete 12,1
   .complete 12,2
   .complete 153,1

step << Mage wotlk
#xprate >1.3
    .goto Westfall,54.00,52.90
.target Scout Galiaan
>>Talk to |cRXP_FRIENDLY_Scout Galiaan|r
    .turnin 153 >> Turn in Red Leather Bandanas
step << Mage wotlk
#xprate >1.3
    .goto Westfall,56.30,47.50
.target Gryan Stoutmantle
>>Talk to |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .turnin 12 >> Turn in The People's Militia
step << Rogue tbc
    .money >0.3152
    +Grind until you have 31s 52c of vendorables/money
step << Human
    >> Head to the flight master
    .goto Westfall,56.6,52.6
>>Talk to |cRXP_FRIENDLY_Thor|r
    .turnin 6181 >> Turn in A Swift Message
.target Thor
    .accept 6281 >> Accept Continue To Stormwind
step << Mage wotlk
#xprate >1.3
    .xp 12 >> Grind to level 12
step
    .goto Westfall,56.6,52.6
    .fly Stormwind >> Fly to Stormwind
step << Rogue/Warrior tbc
    >>Go inside the building
    .goto StormwindClassic,57.32,62.08,20,0
    .goto StormwindClassic,58.37,61.69
    .collect 25873,1 >> Buy the Keen Throwing Knife from Thurman. Equip it
step
    .goto StormwindClassic,56.2,64.6
    >>Talk to Morgan Pestle in the building. Use the rockets for AoE damage or to splitpull packs
    .link https://www.youtube.com/watch?v=H-IwZ6P-ldY >> Click here for a guide on splitpulling (long but informative)
.target Morgan Pestle
>>Talk to |cRXP_FRIENDLY_Morgan Pestle|r
    .turnin 61,1 >> Turn in Shipment to Stormwind
step << wotlk
    .goto StormwindClassic,52.61,65.71
    .home >> Set your Hearthstone to Stormwind City
step << Warrior tbc
    .goto StormwindClassic,57.1,57.7
    .trainer >> Train 2h Swords
step << Priest
    .goto StormwindClassic,57.1,57.7
    .trainer >>Train Staves
step << Mage/Warlock tbc
    .goto StormwindClassic,57.1,57.7
    .trainer >> Train Staves, then 1h Swords if you still have money
step << Rogue
    .goto StormwindClassic,57.1,57.7
    .trainer >>Train 1h Swords
step << Rogue
    .goto StormwindClassic,57.6,57.1
    .vendor >>Buy a Cutlass from Gunther and equip it
step << Paladin
    .goto StormwindClassic,57.1,57.7
    .trainer >>Train 2h Swords
step << Warlock/wotlk
    >> Head into the Dwarven District
    .goto StormwindClassic,74.3,47.2
>>Talk to |cRXP_FRIENDLY_Osric Strang|r
    .turnin 6281 >> Turn in Continue to Stormwind
.target Osric Strang
    .accept 6261 >> Accept Dungar Longdrink << Warlock
step << Warlock
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> Go into The Slaughtered Lamb and go downstairs
step << Warlock
    .goto StormwindClassic,25.2,78.5
>>Talk to |cRXP_FRIENDLY_Gakin the Darkbinder|r
    .turnin 1685 >> Turn in Gakin's Summons
.target Gakin the Darkbinder
    .accept 1688 >> Accept Surena Caledon
step << Warlock
    .deathskip >> Die and respawn at the Spirit Healer by using Life Tap and standing on the Bonfire next to the Warlock trainers
    .zoneskip Elwynn Forest
step << Warlock
    .isOnQuest 123
    .goto Elwynn Forest,42.105,65.927
    >>Choose the Staff then equip it
.target Marshal Dughan
>>Talk to |cRXP_FRIENDLY_Marshal Dughan|r
    .turnin 176 >> Turn in Wanted:    "Hogger"
    .turnin 123 >> Turn in The Collector
step << Warlock
    .goto Elwynn Forest,42.105,65.927
    >>Choose the Staff then equip it
.target Marshal Dughan
>>Talk to |cRXP_FRIENDLY_Marshal Dughan|r
    .turnin 176 >> Turn in Wanted:    "Hogger"
step << Warlock
    .xp 11 >> Grind to 11
step << Warlock
    >>Grind en route, try to level your staves skill for later
    >>Kill the mobs inside the house, keep Morgan feared (he gouges and kills pet), nuke Surena. Loot her for her Choker
    .goto Elwynn Forest,71.0,80.8
    .complete 1688,1 --Collect Surena's Choker (x1)
step << Warlock
    .goto Elwynn Forest,79.457,68.789
.target Sara Timberlain
>>Talk to |cRXP_FRIENDLY_Sara Timberlain|r
    .turnin 59 >> Turn in Cloth and Leather Armor
step << Warlock wotlk
#xprate >1.3
    .xp 12
step << Warlock
    #sticky
    #completewith next
    .goto Redridge Mountains,17.4,69.6
    .zone Redridge Mountains >> Grind en route to Redridge, make sure to have at least 2 Soul Shards (using Drain Soul)
    .collect 6265,2 --Soul Shard (2)
step << Warlock
    .goto Redridge Mountains,17.4,69.6
.target Guard Parker
>>Talk to |cRXP_FRIENDLY_Guard Parker|r
    .accept 244 >> Accept Encroaching Gnolls
step << Warlock
    >>Be careful of the mobs en route
    .goto Redridge Mountains,30.733,59.996
.target Deputy Feldon
>>Talk to |cRXP_FRIENDLY_Deputy Feldon|r
    .turnin 244 >> Turn in Encroaching Gnolls
step << Warlock wotlk
#xprate >1.3
    .goto Redridge Mountains,29.30,53.60
.target Shawn
>>Talk to |cRXP_FRIENDLY_Shawn|r
    .accept 3741 >> Accept Hilary's Necklace
step << Warlock wotlk
#xprate >1.3
    >>Look for Hilary's Necklace underwater. It's in a brown patch of dirt
    .goto Redridge Mountains,27.80,56.05,0
    .goto Redridge Mountains,26.56,50.63,0
    .goto Redridge Mountains,23.96,55.17,0
    .goto Redridge Mountains,19.16,51.75,0
    .goto Redridge Mountains,31.12,54.21,0
    .goto Redridge Mountains,34.03,55.34,0
    .goto Redridge Mountains,38.09,54.49,0
    .goto Redridge Mountains,19.16,51.75,70,0
    .goto Redridge Mountains,38.09,54.49,70,0
    .complete 3741,1 --Hilary's Necklace (1)
step << Warlock wotlk
#xprate >1.3
    .goto Redridge Mountains,29.20,53.60
.target Hilary
>>Talk to |cRXP_FRIENDLY_Hilary|r
    .turnin 3741 >> Turn in Hilary's Necklace
step << Warlock
    .goto Redridge Mountains,30.6,59.4
    .fly Stormwind >> Fly to Stormwind
step << Warlock
    .goto StormwindClassic,66.3,62.1
    .turnin -6261 >> Turn in Dungar Longdrink
step << Warlock wotlk
#xprate >1.3
    .goto StormwindClassic,66.3,62.1
    .accept 6262 >> Accept Return to Lewis
    .isQuestTurnedIn 6261
step << Warlock
    #sticky
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> Go into The Slaughtered Lamb and go downstairs
step << Warlock
    .goto StormwindClassic,25.2,78.5
>>Talk to |cRXP_FRIENDLY_Gakin the Darkbinder|r
    .turnin 1688 >> Turn in Surena Caledon
.target Gakin the Darkbinder
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
.target Gakin the Darkbinder
>>Talk to |cRXP_FRIENDLY_Gakin the Darkbinder|r
    .turnin 1689 >> Turn in The Binding
step << Human
    .goto StormwindClassic,74.3,47.2
.target Osric Strang
>>Talk to |cRXP_FRIENDLY_Osric Strang|r
    .turnin 6281 >> Turn in Continue to Stormwind
    --.accept 6261 >> Accept Dungar Longdrink
step << Warrior
    .goto StormwindClassic,74.3,37.3
    #completewith next
     >>Enter the inn
.target Harry Burlguard
>>Talk to |cRXP_FRIENDLY_Harry Burlguard|r
     .turnin 1638 >> Turn in A Warrior's Training
step << Warrior
     .goto StormwindClassic,71.7,39.9,20,0
    .goto StormwindClassic,74.3,37.3
.target Harry Burlguard
>>Talk to |cRXP_FRIENDLY_Harry Burlguard|r
    .accept 1639 >> Accept Bartleby the Drunk
step << Warrior
    .goto StormwindClassic,73.8,36.3
>>Talk to |cRXP_FRIENDLY_Bartleby|r
    .turnin 1639 >> Turn in Bartleby the Drunk
.target Bartleby
    .accept 1640 >> Accept Beat Bartleby
    .complete 1640,1 --Beat Bartleby
step << Warrior
    .goto StormwindClassic,73.8,36.3
>>Talk to |cRXP_FRIENDLY_Bartleby|r
    .turnin 1640 >> Turn in Beat Bartleby
.target Bartleby
    .accept 1665 >> Accept Bartleby's Mug
step << Warrior
    >>You'll now learn Defensive Stance and Sunder Armor
    .goto StormwindClassic,74.3,37.3
.target Harry Burlguard
>>Talk to |cRXP_FRIENDLY_Harry Burlguard|r
    .turnin 1665 >> Turn in Bartleby's Mug
step << Priest tbc
    #completewith next
    .goto StormwindClassic,38.8,26.4
.target High Priestess Laurena
>>Talk to |cRXP_FRIENDLY_High Priestess Laurena|r
    .turnin 5635 >> Turn in Desperate Prayer
step << Priest tbc
    .goto StormwindClassic,38.62,26.10
    .train 13908 >> Train Desperate Prayer
step << Warrior/Paladin/Rogue
    #completewith StormpikeDelivery
    >>Put Sunder Armor on your bars (it's better damage than Heroic Strike) << Warrior tbc
    .goto StormwindClassic,56.3,17.0
    .collect 2901,1 >>Buy a Mining Pick. You'll train Mining later
step << tbc/Warlock wotlk
    #xprate >1.119 << Warlock wotlk
    #completewith next
    .goto StormwindClassic,51.8,12.1
.target Grimand Elmore
>>Talk to |cRXP_FRIENDLY_Grimand Elmore|r
    .turnin 1097 >> Turn in Elmore's Task
step << tbc
    #label StormpikeDelivery
    .goto StormwindClassic,51.8,12.1
.target Grimand Elmore
>>Talk to |cRXP_FRIENDLY_Grimand Elmore|r
    .accept 353 >> Accept Stormpike's Delivery
step << tbc/Warlock wotlk
#xprate >1.119 << Warlock wotlk
    #completewith next
    .goto StormwindClassic,63.9,8.3,25 >>Enter the Deeprun Tram
step << skip -- tbc/Warlock wotlk
#xprate >1.119 << Warlock wotlk
    >>Take the tram when it arrives, then get off when it arrives on the other side << !Rogue !Warrior !Paladin !Warlock
    .link https://www.youtube.com/watch?v=M_tXROi9nMQ >> Click here for a logout skip inside the tram
    >>Take the tram when it arrives. Make bandages whilst waiting for the tram and when you get on it. Accept q when you get to the other side << Rogue/Warrior/Paladin
    >>Take the tram when it arrives. Cast Summon Voidwalker and Create Healthstone. Get off the tram on the other side << Warlock
.target Monty
>>Talk to |cRXP_FRIENDLY_Monty|r
    .accept 6661 >> Accept Deeprun Rat Roundup
step << tbc/Warlock wotlk
#xprate >1.119 << Warlock wotlk
    >>Use your flute on the rats scattered around
    .complete 6661,1 --Rats Captured (x5)
step << tbc/Warlock wotlk
#xprate >1.119 << Warlock wotlk
.target Monty
>>Talk to |cRXP_FRIENDLY_Monty|r
    .turnin 6661 >> Turn in Deeprun Rat Roundup
step << Warlock wotlk
#xprate >1.119
    .hs >> Hearth to Sentinel Hill
step << Warlock wotlk
#xprate >1.119
    >> Kill the Defias. Loot them for their bandanas
    .goto Westfall,48.21,46.70,60,0
    .goto Westfall,46.74,52.87,60,0
    .goto Westfall,48.21,46.70,-1
    .goto Westfall,46.74,52.87,-1
    .complete 12,1
    .complete 12,2
    .complete 153,1
step << Warlock wotlk
#xprate >1.119
    .goto Westfall,54.00,52.90
.target Scout Galiaan
>>Talk to |cRXP_FRIENDLY_Scout Galiaan|r
    .turnin 153 >> Turn in Red Leather Bandanas
step << Warlock wotlk
#xprate >1.119
    .goto Westfall,56.30,47.50
.target Gryan Stoutmantle
>>Talk to |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .turnin 12 >> Turn in The People's Militia
step << Warlock wotlk
#xprate >1.119
    .xp 14 >> Grind to level 14
step << Warlock wotlk
#xprate >1.119
    .goto Westfall,56.6,52.6
    .fly Stormwind >> Fly to Stormwind
step << Warlock wotlk
#xprate >1.119
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> Go into The Slaughtered Lamb and go downstairs
step << Warlock wotlk
#xprate >1.119
    .train 6222 >> Train Corruption rank 2 and drain life from the warlock trainer
step << Warlock wotlk
#xprate >1.119
    >>Go in the building. Buy a Smoldering Wand if you have the money for it
    .goto StormwindClassic,42.65,67.16,14,0
    .goto StormwindClassic,42.84,65.14
    .collect 5208,1 --Smoldering Wand (1)
    .money >0.3174
step << wotlk
#xprate >1.119
    .goto StormwindNew,21.8,56.2
    .zone Darkshore >> Take the boat to Darkshore at the Harbor
    .zoneskip Darnassus
    .zoneskip Teldrassil
    .zoneskip Darkshore
step << tbc
    .goto Ironforge,77.0,51.0
    .zone Ironforge >>Enter Ironforge
step << tbc
    .goto Ironforge,55.501,47.742
    .fp Ironforge >> Get the Ironforge flight path
step << Warlock tbc
    .goto Ironforge,20.93,53.19,20,0
    .goto Ironforge,18.16,51.46
    .home >> Set your Hearthstone to Ironforge
step << Warrior tbc
    .goto Ironforge,61.2,89.5
    .trainer >>Train 2h Maces
step << tbc
    #completewith next
    .goto Dun Morogh,53.5,34.9,100 >>Run out of Ironforge

--TBC only part:
step << tbc
#xprate >1.3
    .goto Dun Morogh,30.9,33.1,15 >>Run up the mountain north
step << tbc
#xprate >1.3
    .goto Dun Morogh,32.4,29.1,15 >>Follow it up to here
step << tbc
#xprate >1.3
    .goto Dun Morogh,33.0,27.2,15,0
    .goto Dun Morogh,33.0,25.2,15,0
    .goto Wetlands,11.6,43.4,60,0
    .deathskip >>Keep running straight north, when the General Chat changes to Wetlands, drop down and die, then respawn
step << tbc
#xprate >1.3
    .goto Wetlands,12.7,46.7,30 >> Swim to shore
step << tbc
#xprate >1.3
    .money <0.076
    .goto Wetlands,10.4,56.0,15,0
    .goto Wetlands,10.1,56.9,15,0
    .goto Wetlands,10.6,57.2,15,0
    .goto 1437,10.760,56.721
    .vendor >> If you have 7.6s, Check for Bronze Tube from Neal Allen and buy it if it's there
    .bronzetube
step << tbc
#xprate >1.3
    .goto Wetlands,9.5,59.7
    .fp Menethil >> Get the Menethil Harbor flight path
step << tbc
#xprate >1.3
    .money <0.0385
    .goto Wetlands,8.1,56.3
    .vendor >> Check Dewin for Heal Potions, buy down to 1s
step << tbc
#xprate >1.3
    .goto Wetlands,4.7,57.3
    .zone Darkshore >>Get onto the boat when it comes. Take it to Darkshore.
    >> Use this time to level your first aid or make weapon stones. << Warrior/Rogue/Paladin
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
<< Alliance
-- Alliance tbc/Alliance Warlock
#name 11-12 Loch Modan << !Warlock
#name 12-14 Loch Modan << Warlock
#xprate <1.2 << wotlk
#version 1
#group RestedXP Alliance 1-20
#defaultfor Human
#next 14-14 Darkshore << Warlock
#next 11-14 Darkshore << !Warlock
step
    #xprate <1.2
    #completewith next
    .isOnQuest 1097
    .goto StormwindClassic,51.8,12.1
.target Grimand Elmore
>>Talk to |cRXP_FRIENDLY_Grimand Elmore|r
    .turnin 1097 >> Turn in Elmore's Task
step
    #label StormpikeDelivery
    #xprate <1.2
    .goto StormwindClassic,51.8,12.1
.target Grimand Elmore
>>Talk to |cRXP_FRIENDLY_Grimand Elmore|r
    .accept 353 >> Accept Stormpike's Delivery
step
#xprate <1.2
    #completewith next
    .goto StormwindClassic,63.9,8.3,25 >>Enter the Deeprun Tram
step << skip
#xprate <1.2
    >>Take the tram when it arrives, then get off when it arrives on the other side << !Rogue !Warrior !Paladin !Warlock
    .link https://www.youtube.com/watch?v=M_tXROi9nMQ >> Click here for a logout skip inside the tram
    >>Take the tram when it arrives. Make bandages whilst waiting for the tram and when you get on it. Accept q when you get to the other side << Rogue/Warrior/Paladin
    >>Take the tram when it arrives. Cast Summon Voidwalker and Create Healthstone. Get off the tram on the other side << Warlock
.target Monty
>>Talk to |cRXP_FRIENDLY_Monty|r
    .accept 6661 >> Accept Deeprun Rat Roundup
step
#xprate <1.2
    >>Use your flute on the rats scattered around
    .complete 6661,1 --Rats Captured (x5)
step
    #xprate <1.2
    .isOnQuest 6661
.target Monty
>>Talk to |cRXP_FRIENDLY_Monty|r
    .turnin 6661 >> Turn in Deeprun Rat Roundup
step
    #xprate <1.2
    .goto Ironforge,77.0,51.0
    .zone Ironforge >>Enter Ironforge
    .zoneskip Dun Morogh
step
    #xprate <1.2
    .goto Ironforge,55.501,47.742
    .fp Ironforge >> Get the Ironforge flight path
    .zoneskip Ironforge,1
step << Warrior tbc
    #xprate <1.2
    .goto Ironforge,61.2,89.5
    .trainer >>Train 2h Maces
step
    #xprate <1.2
    #completewith next
    .goto Dun Morogh,53.5,34.9,100 >>Run out of Ironforge
    .zoneskip Ironforge,1
step
    #xprate <1.2
    .goto Dun Morogh,60.1,52.6,50,0
    .goto Dun Morogh,63.1,49.8
.target Rudra Amberstill
>>Talk to |cRXP_FRIENDLY_Rudra Amberstill|r
    .accept 314 >> Accept Protecting the Herd
step
    #xprate <1.2
    #completewith next
    .goto Dun Morogh,62.3,50.3,14,0
    .goto Dun Morogh,62.2,49.4,12 >>Run up this part of the mountain
step
    #xprate <1.2
    >>Kill Vagash. Loot him for his Fang.
    .goto Dun Morogh,62.6,46.1
    .complete 314,1 --Collect Fang of Vagash (1)
step
    #xprate <1.2
    .goto Dun Morogh,63.1,49.8
.target Rudra Amberstill
>>Talk to |cRXP_FRIENDLY_Rudra Amberstill|r
    .turnin 314 >> Turn in Protecting the Herd
step
    #xprate <1.2
    .goto Dun Morogh,68.7,56.0
.target Senator Mehr Stonehallow
>>Talk to |cRXP_FRIENDLY_Senator Mehr Stonehallow|r
    .accept 433 >> Accept The Public Servant
step
    #xprate <1.2
    .goto Dun Morogh,69.084,56.330
.target Foreman Stonebrow
>>Talk to |cRXP_FRIENDLY_Foreman Stonebrow|r
    .accept 432 >> Accept Those Blasted Troggs!
step
    #xprate <1.2
    .goto Dun Morogh,70.7,56.4,40,0
    .goto Dun Morogh,70.62,52.39
    >>Kill Troggs in the cave
    .complete 432,1 --Kill Rockjaw Skullthumper (6)
    .complete 433,1 --Kill Rockjaw Bonesnapper (10)
step << !Warlock
    .xp 10+6350 >>Grind until 6350+/7600
step << Warlock
    .xp 12
step
    #xprate <1.2
    .goto Dun Morogh,69.084,56.330
.target Foreman Stonebrow
>>Talk to |cRXP_FRIENDLY_Foreman Stonebrow|r
    .turnin 432 >> Turn in Those Blasted Troggs!
step
    #xprate <1.2
    .goto Dun Morogh,68.7,56.0
.target Senator Mehr Stonehallow
>>Talk to |cRXP_FRIENDLY_Senator Mehr Stonehallow|r
    .turnin 433 >> Turn in The Public Servant
step << !Warlock
    .xp 11
step << Mage/Warlock/Priest
    #xprate <1.2
    .goto Dun Morogh,68.6,54.7
    .vendor >>Vendor, buy level 5 drink
step
    #xprate <1.2
    .goto Dun Morogh,78.1,49.5,30,0
    .goto Dun Morogh,81.2,42.7,45,0
    .goto Dun Morogh,83.892,39.188
.target Pilot Hammerfoot
>>Talk to |cRXP_FRIENDLY_Pilot Hammerfoot|r
    .accept 419 >> Accept The Lost Pilot
step
    #xprate <1.2
    >>Click the Dwarf Corpse
    .goto Dun Morogh,79.7,36.2
    .turnin 419 >> Turn in The Lost Pilot
    .accept 417 >> Accept A Pilot's Revenge
step
    #xprate <1.2
    >>Kill Mangeclaw. Loot him for his Claw
    .goto Dun Morogh,78.9,37.0
    .complete 417,1 --Collect Mangy Claw (x1)
step
    #xprate <1.2
    #label LochEntrance
    .goto Dun Morogh,83.892,39.188
    >>Choose the dagger, use it as your offhand << Rogue
.target Pilot Hammerfoot
>>Talk to |cRXP_FRIENDLY_Pilot Hammerfoot|r
    .turnin 417 >> Turn in A Pilot's Revenge
step
    #xprate <1.2
    #completewith next
    .goto Dun Morogh,84.4,31.1
    .zoneskip Loch Modan >>Go through the tunnel to Loch Modan
step
    .goto Loch Modan,24.764,18.397
.target Mountaineer Stormpike
>>Talk to |cRXP_FRIENDLY_Mountaineer Stormpike|r
    .turnin 353 >> Turn in Stormpike's Delivery
step << Warlock/Mage/Rogue
    #xprate <1.5
    .goto Loch Modan,24.764,18.397
.target Mountaineer Stormpike
>>Talk to |cRXP_FRIENDLY_Mountaineer Stormpike|r
    .accept 307 >> Accept Filthy Paws
step << !Mage !Rogue
#xprate >1.3 << Warlock
    #softcore
    #completewith next
    .goto Loch Modan,28.14,18.29
    .deathskip >> Die and respawn to Thelsamar
step << Warlock/Mage/Rogue
#xprate <1.5
    #completewith next
    >>Kill Spiders in the zone for Spider Ichor
    .collect 3174,3 --Collect Spider Ichor (x3)
    >>Kill Bears in the zone for Bear Meat
    .collect 3173,3 --Collect Bear Meat (x3)
    >>Kill Boars in the zone for Boar Intestines.
    .collect 3172,3 --Collect Boar Intestines (x3)
step << Warlock/Mage/Rogue
#xprate <1.5
    .goto Loch Modan,34.828,49.283
.target Vidra Hearthstove
>>Talk to |cRXP_FRIENDLY_Vidra Hearthstove|r
    .accept 418 >> Accept Thelsamar Blood Sausages
step << Warlock/Mage/Rogue
#xprate <1.5
    #sticky
    #label StormpikeO
    .abandon 1338 >> Abandon Stormpike's Order. This is to unlock Mountaineer Stormpike's Task
step << Warlock/Mage/Rogue
    .goto Loch Modan,34.8,48.6
    .vendor >>Buy 1-2 6 slot bags
step << Warlock/Mage/Rogue
    .goto Loch Modan,35.5,48.4
    .vendor >> Buy food/water (try to have 40 level 5 drink, 20 level 5 food) << Mage/Warlock
    .vendor >> Buy food, try to have about 40 level 5 food << Rogue
step << Warlock/Mage/Rogue
#xprate <1.5
    #requires StormpikeO
    .goto Loch Modan,32.6,49.9,80.0,0
    .goto Loch Modan,37.2,46.1,80.0,0
    .goto Loch Modan,36.7,41.6
    >>Find Kadrell. He patrols along the Thelsamar road
.target Mountaineer Kadrell
>>Talk to |cRXP_FRIENDLY_Mountaineer Kadrell|r
    .accept 416 >> Accept Rat Catching
    .accept 1339 >> Accept Mountaineer Stormpike's Task
step << Warlock/Mage/Rogue
#xprate <1.5
    #completewith Thelsamar1
    >>Kill Spiders in the zone for Thelsamar Blood Sausages
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
step << Warlock/Mage/Rogue
#xprate <1.5
    #completewith Thelsamar1
    >>Kill Bears in the zone for Thelsamar Blood Sausages
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
step << Warlock/Mage/Rogue
#xprate <1.5
    #completewith Thelsamar1
    >>Kill Boars in the zone for Thelsamar Blood Sausages.
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
step << Warlock/Mage/Rogue
#xprate <1.5
    #label Thelsamar1
    .goto Loch Modan,39.3,27.0,130 >>Grind some mobs for Boar Intestines, Bear Meat and Spider Ichor en route
step << Warlock/Mage/Rogue
#xprate <1.5
    .goto Loch Modan,35.5,18.2,45 >>Go to the entrance of the cave whilst killing rats
step << Warlock/Mage/Rogue
#xprate <1.5
    .goto Loch Modan,36.3,24.7
    >>Collect the crates you find in the cave. Be careful because this is difficult at level 11
    >>Be careful as the Geomancers cast Flame Ward (Fire immunity) after a few seconds << Mage/Warlock
    >>You can backtrack after looting one further in the cave, as the crates can respawn behind you
    .complete 307,1 --Collect Miners' Gear (x4)
step << Warlock/Mage/Rogue
#xprate <1.5
    >> Kill Kobolds. Loot them for their Ears
    .goto Loch Modan,36.3,24.7
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .collect 2589,10 << Paladin
step << Warlock/Mage/Rogue
#xprate <1.5
    #completewith Ichor9
    >>Kill Spiders in the zone for Thelsamar Blood Sausages
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
step << Warlock/Mage/Rogue
#xprate <1.5
    #completewith Meat9
    >>Kill Bears in the zone for Thelsamar Blood Sausages
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
step << Warlock/Mage/Rogue
#xprate <1.5
    #completewith Intest9
    >>Kill Boars in the zone for Thelsamar Blood Sausages
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
step << Warlock/Mage/Rogue
#xprate <1.5
    .goto Loch Modan,23.3,17.9,45 >>Run back to the bunker, grinding en route
step << Warlock/Mage/Rogue
#xprate <1.5
    #completewith next
    .goto Loch Modan,24.1,18.2
    .vendor >>vendor and repair - Do NOT sell any items used for Thelsamar Blood Sausages
step << Warlock/Mage/Rogue
#xprate <1.5
    .goto Loch Modan,24.7,18.3
.target Mountaineer Stormpike
>>Talk to |cRXP_FRIENDLY_Mountaineer Stormpike|r
    .turnin 307 >> Turn in Filthy Paws
    .turnin 1339 >> Turn in Mountaineer Stormpike's Task
step << Warlock/Mage/Rogue
#xprate <1.5
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
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
step << Warlock/Mage/Rogue
#xprate <1.5
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
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
step << Warlock/Mage/Rogue
#xprate <1.5
    #label Intest9
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
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
step << Warlock/Mage/Rogue
#xprate <1.5
    #requires Meat9
step << Warlock/Mage/Rogue
#xprate <1.5
    #label RatCatching
    #requires Ichor9
    .goto Loch Modan,32.6,49.9,80.0,0
    .goto Loch Modan,37.2,46.1,80.0,0
    .goto Loch Modan,36.7,41.6
    >>Find Kadrell. He patrols along the Thelsamar road
.target Mountaineer Kadrell
>>Talk to |cRXP_FRIENDLY_Mountaineer Kadrell|r
    .turnin 416 >> Turn in Rat Catching
    .unitscan Mountaineer Kadrell
step << Warlock/Mage/Rogue
#xprate <1.2
    .goto Loch Modan,34.828,49.283
.target Vidra Hearthstove
>>Talk to |cRXP_FRIENDLY_Vidra Hearthstove|r
    .turnin 418 >> Turn in Thelsamar Blood Sausages
step
    #xprate <1.2
    .goto Loch Modan,33.938,50.954
    .fp Thelsamar >> Get the Thelsamar flight path
    .hs >> Hearth to Stormwind << !Warlock
step << Warlock
    .goto Loch Modan,22.071,73.127
.target Mountaineer Cobbleflint
>>Talk to |cRXP_FRIENDLY_Mountaineer Cobbleflint|r
    .accept 224 >> Accept In Defense of the King's Lands
step << Warlock
    .goto Loch Modan,23.233,73.675
    >>Go into the bunker from behind
.target Captain Rugelfuss
>>Talk to |cRXP_FRIENDLY_Captain Rugelfuss|r
    .accept 267 >> Accept The Trogg Threat
step << Warlock
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
#xprate <1.2
    #completewith TroggT
    .money >0.7150
    .goto Loch Modan,32.7,76.5,0
    +Grind here until you have 71s 50c of vendorables+money, then turnin
step << Warlock
#xprate <1.2
    .goto Loch Modan,32.7,76.5,0
    .xp 14-1820 >>Grind until you are 1800xp away from level 14
step << Warlock
#xprate >1.499
    .goto Loch Modan,32.7,76.5,0
    .xp 14-2730 >>Grind until you are 2730xp away from level 14

step << Warlock
    .goto Loch Modan,22.2,73.3
.target Mountaineer Cobbleflint
>>Talk to |cRXP_FRIENDLY_Mountaineer Cobbleflint|r
    .turnin 224 >> Turn in In Defense of the King's Lands
step << Warlock
    #label TroggT
    .goto Loch Modan,23.233,73.675
.target Captain Rugelfuss
>>Talk to |cRXP_FRIENDLY_Captain Rugelfuss|r
    .turnin 267 >> Turn in The Trogg Threat
step << Warlock
    .xp 14 >> Grind to 14
step << Warlock
    #label HearthIF
    .zone Ironforge >> Hearth to Ironforge << tbc
    .hs >> Hearth to Stormwind << wotlk
step << !Warlock wotlk
        .hs >> Hearth to Stormwind
step << Warlock wotlk
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> Go into The Slaughtered Lamb and go downstairs
step << Warlock wotlk
    .train 6222 >> Train Corruption rank 2 and drain life from the warlock trainer
step << Warlock wotlk
    >>Go in the building. Buy a Smoldering Wand if you have the money for it
    .goto StormwindClassic,42.65,67.16,14,0
    .goto StormwindClassic,42.84,65.14
    .collect 5208,1 --Smoldering Wand (1)
    .money >0.3174
step << wotlk
    #xprate <1.2
    .goto StormwindNew,21.8,56.2
    .zone Darkshore >> Take the boat to Darkshore
    .zoneskip Darnassus
    .zoneskip Teldrassil
    .zoneskip Darkshore
step << Warlock tbc
    #label Wand1
    #completewith Wand2
    .goto Ironforge,25.8,75.2,0 >> Alternatively, buy a Greater Magic Wand from the AH if it costs <30s 6c
    .collect 11288,1 --Collect Greater Magic Wand
step << Warlock tbc
    #label Wand2
    #completewith Wand1
    .goto Ironforge,24.0,16.7,20,0
    .goto Ironforge,22.6,16.5
    .vendor >>Go in the building, then downstairs. Buy a Smoldering Wand
step << Warlock tbc
    #requires Wand2
    .goto Ironforge,51.1,8.7,15,0 >> Enter the building
    .goto Ironforge,50.4,6.3
    .trainer >> Train your class spells
step << Warlock tbc
    .goto Ironforge,53.2,7.8,15,0 >> Enter the building
    .goto Ironforge,53.0,6.4
    .vendor >>Buy Consume Shadows r1, then Sacrifice r1
step << !Warlock
    .goto Ironforge,65.90,88.41 << Warrior
    .goto Ironforge,51.50,15.34 << Rogue
    .goto Ironforge,25.21,10.75 << Priest
    .goto Ironforge,27.17,8.57 << Mage
    .goto Ironforge,24.55,4.46 << Paladin
     .trainer >> Train your class spells
step << tbc
    .goto Dun Morogh,53.5,34.9,60 >>Exit Ironforge
step << tbc
    #hardcore
    #completewith next
    .goto Dun Morogh,59.43,42.85,150 >> Travel to the skip spot
step << tbc
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
step << tbc
    #softcore
    .goto Dun Morogh,30.9,33.1,15 >>Run up the mountain north
step << tbc
    #softcore
    .goto Dun Morogh,32.4,29.1,15 >>Follow it up to here
step << tbc
    #softcore
    .goto Dun Morogh,33.0,27.2,15,0
    .goto Dun Morogh,33.0,25.2,15,0
    .goto Wetlands,11.6,43.4,60,0
    .deathskip >>Keep running straight north, drop down and die, then respawn at the Spirit Healer.
step << tbc
    #softcore
    .goto Wetlands,12.7,46.7,30 >> Swim to shore
step << tbc
    .money <0.076
    .goto Wetlands,10.4,56.0,15,0
    .goto Wetlands,10.1,56.9,15,0
    .goto Wetlands,10.6,57.2,15,0
    .goto 1437,10.760,56.721
    .vendor >> If you have 7.6s, Check for Bronze Tube from Neal Allen and buy it if it's there
    .bronzetube
step << tbc
    .goto Wetlands,9.5,59.7
    .fp Menethil >> Get the Menethil Harbor flight path
step << tbc
    .money <0.0385
    .goto Wetlands,8.1,56.3
    .vendor >> Check Dewin for Heal Potions, buy down to 1s
step << tbc
    .goto Wetlands,4.7,57.3
    .zone Darkshore >>Get onto the boat when it comes. Take it to Darkshore.
    >> Use this time to level your first aid or make weapon stones. << Warrior/Rogue/Paladin
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
<< Alliance Warlock
#name 14-14 Darkshore
#version 1
#group RestedXP Alliance 1-20
#defaultfor Human Warlock
#next 14-20 Bloodmyst
#xprate <1.5 << wotlk

step
    .maxlevel 13
    #completewith next
    .goto Darkshore,36.8,44.3,0
    .vendor >> You can buy cheap food from Laird on the bottom floor of the inn if you wish (20c level 5 food).
step
    .maxlevel 13
    >>Top floor of the Inn
    .goto Darkshore,37.0,44.1
.target Wizbang Cranktoggle
>>Talk to |cRXP_FRIENDLY_Wizbang Cranktoggle|r
    .accept 983 >> Accept Buzzbox 827
step
    .maxlevel 13
    >> Accept quests around Auberdine
.target Tharnariun Treetender
>>Talk to |cRXP_FRIENDLY_Tharnariun Treetender|r
    .accept 2118 >> Accept Plagued Lands
    .goto Darkshore,38.8,43.4
.target Terenthis
>>Talk to |cRXP_FRIENDLY_Terenthis|r
    .accept 984 >> Accept How Big a Threat?
    .goto Darkshore,39.3,43.4
.target Gwennyth Bly'Leggonde
>>Talk to |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .accept 3524 >> Accept Washed Ashore
    .goto Darkshore,36.621,45.594
step
    .maxlevel 13
    .goto Darkshore,36.3,45.6
    .fp Auberdine >> Get the Auberdine flight path
step
    .isOnQuest 983
    #completewith Darkshore2
    >>Kill Crawlers. Loot them for their Legs whilst doing other quests
    .complete 983,1 --Collect Crawler Leg (x6)
step
    .isOnQuest 3524
    .goto Darkshore,36.4,50.9
    .complete 3524,1 --Collect Sea Creature Bones (x1)
step
    .isOnQuest 2118
    .goto Darkshore,38.3,52.7,70,0
    .goto Darkshore,38.9,62.0,70,0
    .goto Darkshore,38.3,52.7,70,0
    .goto Darkshore,38.9,62.0,70,0
    .goto Darkshore,38.3,52.7
    >>Keep going south until you find a Rabid Bear, use Tharnariun's Hope in your bags when you aggro one
    .complete 2118,1 --Rabid Thistle Bear Captured
    .unitscan Rabid Thistle Bear
step
    .isOnQuest 984
    #label Darkshore2
.goto Darkshore,39.0,53.2
    .complete 984,1 --Find a corrupt furbolg camp
step
    .isOnQuest 983
    .goto Darkshore,36.7,52.4,70,0
    .goto Darkshore,35.6,47.6,70,0
    .goto Darkshore,36.2,44.5,70,0
    .goto Darkshore,36.7,52.4
    >>Kill Crawlers. Loot them for their Legs
    .complete 983,1 --Collect Crawler Leg (x6)
step
    .isOnQuest 983
    .goto Darkshore,36.6,46.3
    .turnin 983 >> Turn in Buzzbox 827
step
    .isOnQuest 3524
    .goto Darkshore,36.621,45.594
.target Gwennyth Bly'Leggonde
>>Talk to |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 3524 >> Turn in Washed Ashore
step
    .isOnQuest 2118
    .goto Darkshore,38.8,43.4
.target Tharnariun Treetender
>>Talk to |cRXP_FRIENDLY_Tharnariun Treetender|r
    .turnin 2118 >> Turn in Plagued Lands
step
    .isOnQuest 984
    .goto Darkshore,39.3,43.4
.target Terenthis
>>Talk to |cRXP_FRIENDLY_Terenthis|r
    .turnin 984 >> Turn in How Big a Threat?
step
    .goto Darkshore,36.621,45.594
    .abandon 1001 >> Abandon Buzzbox 411
step
    .goto Darkshore,30.8,41.0
    .abandon 4681 >> Abandon Washed Ashore
step
    #label Azuremyst
        .goto Darkshore,30.8,41.0
    .zone Azuremyst Isle >> Wait for the boat here. Get onto the boat when it comes.
    >> Level first aid or make weapon stones while waiting. << Warrior/Rogue/Paladin
]])
