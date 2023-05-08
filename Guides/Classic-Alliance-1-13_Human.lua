local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#classic
<< Alliance
#name 1-6 Northshire
#version 1
#group RestedXP Alliance 1-20
#defaultfor Human
#next 6-11 Elwynn Forest; 6-13 Elwynn Forest
step << !Human
    #sticky
    #completewith next
    .goto Elwynn Forest,48.171,42.943
    +You have selected a guide meant for Humans. You should choose the same starter zone that you start in
step << Mage
    #completewith next
    +Note that you have selected the single target mage guide. Single target is a lot safer than AoE Mage, but a LOT slower
step << Warlock
    #sticky
    #completewith next
    +Kill |cFF00BCD4Wolves|r for 10 copper worth of vendor trash. It's worth training Immolate early
    .goto Elwynn Forest,49.4,45.6
step << Warlock
    .goto Elwynn Forest,50.1,42.7
    >> Talk to |cFF00FF25Dane Winslow|r
    .vendor >> Vendor trash
    .target Dane Winslow
step << Warlock
    .goto Elwynn Forest,49.873,42.649
    >> Talk to |cFF00FF25Drusilla La Salle|r
    .accept 1598 >> Accept The Stolen Tome
    .trainer >>Train Immolate
    .target Drusilla La Salle
step << Warlock
    #hardcore
    .goto Elwynn Forest,52.9,44.3,60,0
    >>Kill some Wolves en route, |cFFFCDC00then watch this video|r. |cFFFCDC00DO NOT DO THE DEATHSKIP.|r Use your hearthstone after you loot the book.
    .link https://www.youtube.com/watch?v=_-KEke9Yeik >>CLICK HERE
    .goto Elwynn Forest,56.7,44.0
    .complete 1598,1 --Collect Powers of the Void (x1)
step << Warlock
    #softcore
    .goto Elwynn Forest,52.9,44.3,60,0
    >>Kill some Wolves en route, |cFFFCDC00then watch this video|r.
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
    >> Talk to |cFF00FF25Drusilla La Salle|r
    .goto Elwynn Forest,49.873,42.649
    .turnin 1598 >> Turn in The Stolen Tome
    .target Drusilla La Salle
step
    >>Summon Imp, rebuff Demon Skin << Warlock
    >> Talk to |cFF00FF25Deputy Willem|r
    .target Deputy Willem
    .goto Elwynn Forest,48.17,42.94
    .accept 783 >> Accept A Threat Within
step << Warrior
    #sticky
    #completewith next
    +Kill |cFF00BCD4Wolves|r for 10c+ of vendor trash. It's worth training Battle Shout early
    .goto Elwynn Forest,46.4,40.3
step << Warrior
    >> Talk to |cFF00FF25Brother Danil|r
    .target Brother Danil
    .goto Elwynn Forest,47.5,41.6
    .vendor >> Vendor trash
step
    >> Speak with |cFF00FF25Marshal McBridge|r inside the Abbey
    .target Marshal McBride
    .goto Elwynn Forest,48.923,41.606
    .turnin 783 >> Turn in A Threat Within
    .accept 7 >> Accept Kobold Camp Cleanup
step << Warrior
    >> Talk to |cFF00FF25Llane Beshere|r
    .target Llane Beshere
    .goto Elwynn Forest,50.242,42.287
    .trainer >>Train Battle Shout
step
    >>Run back outside << Warrior
    >> Talk to |cFF00FF25Deputy Willem|r again
    .target Deputy Willem
    .goto Elwynn Forest,48.171,42.943
    .accept 5261 >> Accept Eagan Peltskinner
step << Priest/Mage/Warlock
    .goto Elwynn Forest,46.2,40.4
    .vendor >>Kill |cFF00BCD4Wolves|r until 50c worth of vendor trash. Vendor, then buy x10 water from |cFF00FF25Brother Danil|r.
    .target Brother Danil
    .collect 159,10 --Collect Refreshing Spring Water (x10)
step << Priest/Mage
    .xp 2 >> Grind to 2
step
    >> Talk to |cFF00FF25Eagan Peltskinner|r outside the Abbey
    .target Eagan Peltskinner
    .goto Elwynn Forest,48.9,40.2
    .turnin 5261 >> Turn in Eagan Peltskinner
    .accept 33 >> Accept Wolves Across The Border
step
    .goto Elwynn Forest,46.70,37.78
    >>Kill |cFF00BCD4Young Wolves|r. Loot them for their |cFF00BCD4Meat|r
	.target Young Wolf
	.target Timber Wolf
    .complete 33,1 --Collect Tough Wolf Meat (x8)
step
    .goto Elwynn Forest,49.05,35.33
    >>Kill |cFFFF5722Kobold Vermin|r
	.target Kobold Vermin
    .complete 7,1 --Kill Kobold Vermin (x10)
step
    .goto Elwynn Forest,48.9,40.2
    >> Return to |cFF00FF25Eagan Peltskinner|r
    .target Eagan Peltskinner
    .turnin 33,2 >> Turn in Wolves Across The Border << Warrior/Paladin/Rogue
    .turnin 33,1 >> Turn in Wolves Across The Border << !Warrior !Paladin !Rogue
step << Priest/Mage/Warlock
    .goto Elwynn Forest,47.6,41.5
    .vendor >>Vendor trash, then buy x10 more water from |cFF00FF25Brother Danil|r.
    .target Brother Danil
    .collect 159,10 --Collect Refreshing Spring Water (x10)
step << !Priest !Mage !Warlock !Rogue
    >> Talk to |cFF00FF25Godric Rothgar|r
    .target Godric Rothgar
    .goto Elwynn Forest,47.6,41.5
    .vendor >>Vendor trash
step << Rogue
    >> Talk to |cFF00FF25Janos|r
    .goto Elwynn Forest,47.2,41.8
    .vendor >>Vendor trash. Buy a |T135650:0|t[Dirk]
    .target Janos Hammerknuckle
step << Rogue
    #completewith next
    +Equip the |T135650:0|t[Dirk]
    .use 2139
    .itemcount 2139,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<1.3
step
    >> Speak with |cFF00FF25Marshal McBridge|r inside the Abbey
    .target Marshal McBride
    .goto Elwynn Forest,48.923,41.606
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
    >>Kill |cFFFF5722Kobold Workers|r
	.target Kobold Worker
    .complete 15,1 --Kill Kobold Worker (x10)
step
    #sticky
    #label xp3
    .xp 3+1110 >>Grind to 1110+/1400xp on your way back
step
    #completewith next
    >> Talk to |cFF00FF25Godric Rothgar|r.
    .target Godric Rothgar
    .vendor >> Vendor trash
--N need SoM xp note
step
    #requires xp3
    >> Speak with |cFF00FF25Marshal McBridge|r inside the Abbey
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
    >> Talk to |cFF00FF25Khelden Bremen|r
    .target Khelden Bremen
    .goto Elwynn Forest,49.661,39.402
    .turnin 3104 >> Turn in Glyphic Letter
    .trainer >> Train your class spells
    .target Khelden Bremen
step << Priest
    #sticky
    #completewith next
    .goto Elwynn Forest,49.8,40.2,15 >> Go through the doorway
step << Priest
    >> Talk to |cFF00FF25Priestess Anetta|r
    .target Priestess Anetta
    .goto Elwynn Forest,49.808,39.489
    .turnin 3103 >> Turn in Hallowed Letter
    .trainer >> Train your class spells
step << Warrior/Paladin
    #sticky
    #completewith next
    .goto Elwynn Forest,49.6,41.8,15 >>Stay downstairs
step << Warrior
    >> Talk to |cFF00FF25Llane Beshere|r
    .target Llane Beshere
    .goto Elwynn Forest,50.242,42.287
    .turnin 3100 >> Turn in Simple Letter
    .trainer >> Train your class spells
step << Paladin
    >> Talk to |cFF00FF25Brother Sammuel|r
    .target Brother Sammuel
    .goto Elwynn Forest,50.433,42.124
    .turnin 3101 >> Turn in Consecrated Letter
    .trainer >> Train your class spells
step
    >> Talk to |cFF00FF25Deputy Willem|r
    .target Deputy Willem
    .goto Elwynn Forest,48.171,42.943
    .accept 18 >> Accept Brotherhood of Thieves
step << Warlock
    >> Talk to |cFF00FF25Drusilla La Salle|r
    .target Drusilla La Salle
    .goto Elwynn Forest,49.873,42.649
    .turnin 3105 >> Turn in Tainted Letter
    .xp 4 >> Grind to 4
    .trainer >>Train Corruption
step
    .goto Elwynn Forest,54.57,49.03
    >>Kill |cFF00BCD4Defias Thugs|r. Loot them for |cFF00BCD4Bandanas|r
	.target Defias Thug
    .complete 18,1 --Collect Red Burlap Bandana (x12)
step << Rogue
    .xp 4 >> Grind to 4
step
    #completewith next
    #softcore
    .deathskip >> Die and respawn at the Spirit Healer
step
    >> Talk to |cFF00FF25Deputy Willem|r
    .target Deputy Willem
    .goto Elwynn Forest,48.17,42.94
    .turnin 18,4 >> Turn in Brotherhood of Thieves << Paladin
    .turnin 18,1 >> Turn in Brotherhood of Thieves << Rogue/Warlock
    .turnin 18,5 >> Turn in Brotherhood of Thieves << Mage
    .turnin 18,2 >> Turn in Brotherhood of Thieves << Priest
    .turnin 18,3 >> Turn in Brotherhood of Thieves << Warrior
    .turnin 18 >> Turn in Brotherhood of Thieves << !Warrior !Priest !Mage !Rogue !Warlock !Paladin
    .accept 6 >> Accept Bounty on Garrick Padfoot
    .accept 3903 >> Accept Milly Osworth
step << Paladin
    #completewith next
    +Equip the |T133052:0|t[Militia Warhammer]
    .use 5579
    .itemcount 5579,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.6
step << skip
    >> Talk to |cFF00FF25Godric Rothgar|r
    .target Godric Rothgar
    .goto Elwynn Forest,47.7,41.4
    .vendor >> Vendor trash, repair
step
    .goto Elwynn Forest,47.66,31.88,40,0
    .goto Elwynn Forest,48.61,27.63
    >>Kill |cFFFF5722Kobold Laborers|r in the mine
	.target Kobold Laborer
    .complete 21,1 --Kill Kobold Laborer (x12)
step
    .xp 5 >> Grind to 5
step << !Priest !Mage
    >> Speak with |cFF00FF25Milly Osworth|r
    .target Milly Osworth
    .goto Elwynn Forest,50.7,39.2
    .turnin 3903 >> Turn in Milly Osworth. Skip followup
step << Priest/Mage
    >> Speak with |cFF00FF25Milly Osworth|r
    .target Milly Osworth
    .goto Elwynn Forest,50.7,39.2
    .turnin 3903 >> Turn in Milly Osworth
    .accept 3904 >> Accept Milly's Harvest
step << Rogue
    >> Speak with |cFF00FF25Jorik Kerridan|r
    .target Jorik Kerridan
    .goto Elwynn Forest,50.314,39.916
    >>You don't need to train any spells
    .turnin 3102 >> Turn in Encrypted Letter
step << Priest/Mage
    >>Loot the |cFFDB2EEFBuckets of Grapes|r in the field
    .goto Elwynn Forest,54.5,49.4
    .complete 3904,1 --Collect Milly's Harvest (x8)
step
    .goto Elwynn Forest,57.5,48.2
    >>Grind en route. Kill |cFF00BCD4Garrick Padfoot|r and loot his |cFF00BCD4Head|r
	.unitscan Garrick Padfoot
    .complete 6,1 --Collect Garrick's Head (x1)
step << !Priest !Mage
    #sticky
    .abandon 3904 >> Abandon Milly's Harvest
step << !Priest !Mage
    .xp 5+1715 >> Grind on your way back to 1715+/2800xp
    .goto Elwynn Forest,48.171,42.943
--N SoM xp values
step << Priest/Mage
    .xp 5+1175 >> Grind on your way back to 1175+/2800xp
    .goto Elwynn Forest,50.7,39.2
step
    #completewith next
    #softcore
    .deathskip >> Die and respawn at the Spirit Healer
step << Priest/Mage
    >> Speak with |cFF00FF25Milly Osworth|r
    .target Milly Osworth
    .goto Elwynn Forest,50.7,39.2
    .turnin 3904 >> Turn in Milly's Harvest
    .accept 3905 >>Accept Grape Manifest
step
    >> Talk to |cFF00FF25Deputy Willem|r
    .target Deputy Willem
    .goto Elwynn Forest,48.17,42.94
    .turnin 6,2 >> Turn in Bounty on Garrick Padfoot << Warrior/Rogue/Paladin
    .turnin 6,1 >> Turn in Bounty on Garrick Padfoot << !Warrior !Rogue !Paladin
step
    >> Speak with |cFF00FF25Marshal McBridge|r inside the Abbey
    .target Marshal McBride
    .goto Elwynn Forest,48.923,41.606
    .turnin 21,1 >> Turn in Skirmish at Echo Ridge << Rogue
    .turnin 21,2 >> Turn in Skirmish at Echo Ridge << Warrior/Paladin
    .turnin 21,3 >> Turn in Skirmish at Echo Ridge << !Warrior !Paladin
    .accept 54 >> Accept Report to Goldshire
step << Priest/Mage
    #sticky
    #completewith next
    .goto Elwynn Forest,49.6,41.6,15,0
    .goto Elwynn Forest,48.9,41.3,10 >>Go upstairs
step << Priest/Mage
    >> Talk to |cFF00FF25Brother Neals|r
    .target Brother Neals
    .goto Elwynn Forest,49.471,41.586
    .turnin 3905,1 >>Turn in Grape Manifest
step << Priest
    >> Talk to |cFF00FF25Priestess Anetta|r
    .target Priestess Anetta
    .goto Elwynn Forest,49.808,39.489
    .accept 5623 >> Accept In Favor of the Light
step
    >> Leave Northshire Valley and talk to |cFF00FF25Falkhaan Isenstrider|r
    .target Falkhaan Isenstrider
    .goto Elwynn Forest,45.6,47.7
    .accept 2158 >> Accept Rest and Relaxation
]])


RXPGuides.RegisterGuide([[
#classic
#era/som
<< Alliance
#name 6-11 Elwynn Forest
#version 1
#group RestedXP Alliance 1-20
#defaultfor Human
#next 11-13 Loch Modan
step
    #hardcore
    >> Talk to |cFF00FF25Marshall Dughan|r
    .target Marshal Dughan
    .goto Elwynn Forest,42.105,65.927
    .turnin 54 >> Turn in Report to Goldshire
    .accept 62 >> Accept The Fargodeep Mine
step
    #softcore
    #completewith Goldshire
    .deathskip >> Die and respawn at the Spirit Healer
step
    #completewith next
    .goto Elwynn Forest,39.5,60.5,200 >> Run to Goldshire
step << Warrior/Paladin/Rogue
    .target Smith Argus
    .goto Elwynn Forest,41.706,65.544
    .trainer >> Train Blacksmithing from |cFF00FF25Smith Argus|r. This will allow you to make +2 damage sharpening stones for your weapon which are very strong. Make around 20 of them max. << Warrior/Rogue
    .trainer >> Train Blacksmithing from |cFF00FF25Smith Argus|r. This will allow you to make +2 damage weightstones for your weapon which are very strong. Make around 20 of them max. << Paladin
step << Warrior
    .target Corina Steele
    .goto Elwynn Forest,41.5,65.9
    >>Repair your weapon. If you have enough money (5s 36c) buy a Gladius from Corina. Otherwise, skip this step (you'll come back later)
    .collect 2488,1
step << Rogue
    .target Corina Steele
    .goto Elwynn Forest,41.5,65.9
    >>Repair your weapon. If you have enough money (4s 1c) buy a Stiletto from Corina. Otherwise, skip this step (you'll come back later)
    .collect 2494,1
step << Paladin
    .target Corina Steele
    .goto Elwynn Forest,41.5,65.9
    >>Repair your weapon. If you have enough money (7s 1c) buy a Wooden Mallet from Corina. Otherwise, skip this step (you'll come back later)
    .collect 2493,1 --Collect Wooden Mallet
step << Mage/Priest/Warlock
    #completewith next
    >> Talk to |cFF00FF25Andrew Krighton|r
    .target Andrew Krighton
    .goto Elwynn Forest,41.7,65.9
    .vendor >> Vendor trash, repair
step
    #label Goldshire
    >> Talk to |cFF00FF25Marshall Dughan|r
    .target Marshal Dughan
    .goto Elwynn Forest,42.105,65.927
    .turnin 54 >> Turn in Report to Goldshire
    .accept 62 >> Accept The Fargodeep Mine
step
    >>On your close left as you go in the Inn talk to |cFF00FF25William Pestle|r
    .target William Pestle
    .goto Elwynn Forest,42.9,65.7,15,0
    .goto Elwynn Forest,43.283,65.721
    .accept 60 >> Accept Kobold Candles
step
    .goto Elwynn Forest,43.771,65.803
    >> Talk to |cFF00FF25Innkeeper Farley|r
    .target Innkeeper Farley
    >>Do NOT buy any food/drink here << Warlock
    .turnin 2158,1 >> Turn in Rest and Relaxation << Rogue/Warrior
    .turnin 2158,2 >> Turn in Rest and Relaxation << !Rogue !Warrior
    .home >> Set your Hearthstone to Goldshire
step
    .xp 6 >> Grind to 6
step << Rogue
    >> Talk to |cFF00FF25Brog Hamfist|r
    .target Brog Hamfist
    .goto Elwynn Forest,43.96,65.92
    .vendor 151 >> Buy the level 3 thrown from Brog. Equip it
step << Warlock
    #sticky
    #completewith next
    .goto Elwynn Forest,44.1,66.0,10 >>Go to the room behind the innkeeper, then go downstairs.
step << Warlock
    >> Talk to |cFF00FF25Maximillian Crowe|r and |cFF00FF25Cylina Darkheart|r
    .target Maximillian Crowe
    .target Cylina Darkheart
    .goto Elwynn Forest,44.4,66.2
    .trainer >> Train your class spells. It is in the basement.
    .goto Elwynn Forest,44.4,66.0
    .vendor >> Buy the Blood Pact book if you have money after training (otherwise buy it later)
step << Mage/Priest/Rogue
    #sticky
    #completewith next
    .goto Elwynn Forest,43.7,66.4,12 >>Go upstairs
step << Mage
	>> Talk to |cFF00FF25Zaldimar Wefhellt|r
	.target Zaldimar Wefhellt
    .goto Elwynn Forest,43.2,66.2
    .trainer >> Train your class spells
step << Priest
	>> Talk to |cFF00FF25Priestess Josetta|r
	.target Priestess Josetta
    .goto Elwynn Forest,43.283,65.721
    .turnin 5623 >> Turn in In Favor of the Light
    .accept 5624 >> Accept Garments of the Light
    .trainer >> Train your class spells
step << Rogue
    .money <0.01
    >> Talk to |cFF00FF25Keryn Sylvius|r
    .target Keryn Sylvius
    .goto Elwynn Forest,43.9,65.9
    .trainer >> Train your class spells
step << Rogue/Warrior
    .money <0.01
    >> Talk to |cFF00FF25Michelle Belle|r
    .target Michelle Belle
    .goto Elwynn Forest,43.4,65.5
    .train 3273 >> Train First Aid - Don't make all your bandages at once, better time to make them later
step << Warrior
    .goto Elwynn Forest,43.771,65.803
    .vendor >> Buy level 5 food down to 1 Silver
step << Rogue
    .goto Elwynn Forest,43.771,65.803
    .vendor >> Buy up to 20 level 5 food
step << Warrior
    >> Talk to |cFF00FF25Lyria Du Lac|r
    .target Lyria Du Lac
    .goto Elwynn Forest,41.087,65.768
    .trainer >> Train your class spells
step << Paladin
    >> Talk to |cFF00FF25Brother Wilhelm|r
    .target Brother Wilhelm
    .goto Elwynn Forest,41.1,66.0
    .trainer >> Train your class spells
step
    >> Speak with |cFF00FF25Remy "Two Times"|r
    .target Remy "Two Times"
    .goto Elwynn Forest,42.1,67.3
    .accept 47 >> Accept Gold Dust Exchange
step << Priest
    >>Use Lesser Heal Rank 2 and then Power Word: Fortitude on |cFF00FF25Guard Roberts|r
    .target Guard Roberts
    .goto Elwynn Forest,48.2,68.0
    .complete 5624,1 --Heal and fortify Guard Roberts
step
    #completewith BoarMeat1
    >>Start killing |cFF00BCD4Boars|r you see for |cFF00BCD4Chunks of Boar Meat|r
    .collect 769,4 --Collect Chunk of Boar Meat (x4)
step
    >> Talk to |cFF00FF25Ma Stonefield|r and |cFF00FF25"Auntie" Bernice Stonefield|r
    .target "Auntie" Bernice Stonefield
    .accept 85 >> Accept Lost Necklace
    .goto Elwynn Forest,34.486,84.253
    .accept 88 >> Accept Princess Must Die!
	.goto Elwynn Forest,34.660,84.482
step
    #completewith Candles
    >> Kill |cFF00BCD4Kobolds|r and loot them for |cFF00BCD4Candles|r
    .complete 60,1 --Collect Kobold Candle (x8)
step
    #label Candles
    #completewith next
    >> Kill |cFF00BCD4Kobolds|r and loot them for |cFF00BCD4Gold Dust|r
    .complete 47,1 --Collect Gold Dust (x10)
step << Priest/Mage/Warlock
    #label Dust
    >>Grind mobs east and talk to |cFF00FF25Billy Maclure|r
    .target Billy Maclure
    .goto Elwynn Forest,43.132,85.722
    .turnin 85 >> Turn in Lost Necklace
    .accept 86 >> Accept Pie for Billy
step << Warrior
    #label Dust
    >>Grind mobs east and talk to |cFF00FF25Billy Maclure|r
    .target Billy Maclure
    >> If you get a Rough Stone at any point, make it into a Sharpening Stone via Blacksmithing, and apply it on your sword
    .goto Elwynn Forest,43.132,85.722
    .turnin 85 >> Turn in Lost Necklace
    .accept 86 >> Accept Pie for Billy
step << Rogue
    #label Dust
    >>Grind mobs east and talk to |cFF00FF25Billy Maclure|r
    .target Billy Maclure
    >> If you get a Rough Stone at any point, make it into a Sharpening Stone via Blacksmithing, and apply it on your dagger
    .goto Elwynn Forest,43.132,85.722
    .turnin 85 >> Turn in Lost Necklace
    .accept 86 >> Accept Pie for Billy
step << Paladin
    #label Dust
    >>Grind mobs east and talk to |cFF00FF25Billy Maclure|r
    .target Billy Maclure
    >> If you get a Rough Stone at any point, Make it into a Weightstone via Blacksmithing, and apply it to your mace
    .goto Elwynn Forest,43.132,85.722
    .turnin 85 >> Turn in Lost Necklace
    .accept 86 >> Accept Pie for Billy
step
    #label BoarMeat1
    >> Talk to |cFF00FF25Maybell Maclure|r in the small house
    .target Maybell Maclure
    .goto Elwynn Forest,43.2,89.6
    .accept 106 >> Accept Young Lovers
step << Mage tbc/Priest tbc/Warlock tbc
    .goto Elwynn Forest,42.4,89.4
    >> Talk to |cFF00FF25Joshua Maclure|r
    .target Joshua Maclure
    .vendor >>Vendor, buy as much milk as you can
step << !Mage !Priest !Warlock tbc
    >> Talk to |cFF00FF25Joshua Maclure|r
    .target Joshua Maclure
    .goto Elwynn Forest,42.4,89.4
    .vendor >>vendor trash
step
    #completewith next
    >>Grind |cFF00BCD4Boars|r you see for |cFF00BCD4Chunks of Boar Meat|r en route
    .collect 769,4 --Collect Chunk of Boar Meat (x4)
step
    >> Head back to the Stonefield farm, then keep going to the river. Talk to |cFF00FF25Tommy Joe Stonefield|r
    .target Tommy Joe Stonefield
    .goto Elwynn Forest,29.840,85.997
    .turnin 106 >> Turn in Young Lovers
    .accept 111 >> Accept Speak with Gramma
step
    .goto Elwynn Forest,32.5,85.5
    >>Finish killing |cFF00BCD4Boars|r you see for |cFF00BCD4Chunks of Boar Meat|r
    .complete 86,1 --Collect Chunk of Boar Meat (x4)
step
    >> Return to |cFF00FF25"Auntie" Bernice Stonefield|r
    .target "Auntie" Bernice Stonefield
    .goto Elwynn Forest,34.486,84.253
    .turnin 86 >> Turn in Pie for Billy
    .accept 84 >> Accept Back to Billy
step
    >> Speak with |cFF00FF25Gramma Stonefield|r inside the house
    .target Gramma Stonefield
    .goto Elwynn Forest,34.9,83.9
    .turnin 111 >> Turn in Speak with Gramma
    .accept 107 >> Accept Note to William
step
    #sticky
    #completewith next
    >> Kill |cFF00BCD4Kobolds|r and loot them for |cFF00BCD4Candles|r and |cFF00BCD4Gold Dust|r
    .complete 47,1 --Collect Gold Dust (x10)
    .complete 60,1 --Collect Kobold Candle (x8)
step
    >>Grind mobs east through the outside of the mine and talk to |cFF00FF25Billy Maclure|r on the farm
    .target Billy Maclure
    .goto Elwynn Forest,43.132,85.722
    .turnin 84 >> Turn in Back to Billy
    .accept 87 >> Accept Goldtooth
step
    #completewith next
    >> Kill |cFF00BCD4Kobolds|r and loot them for |cFF00BCD4Candles|r and |cFF00BCD4Gold Dust|r
    .complete 47,1 --Collect Gold Dust (x10)
    .complete 60,1 --Collect Kobold Candle (x8)
step
    >>Go into the mine
    .goto Elwynn Forest,40.5,82.3
    .complete 62,1 --Scout Through the Fargodeep Mine
step << Warrior
    >>|cFFFCDC00Pool as much rage as you can|r (grind Rage off of other mobs) then kill |cFF00BCD4Goldtooth|r for |cFF00BCD4Bernice's Necklace|r
    .goto Elwynn Forest,41.7,78.1
    .complete 87,1 --Collect Bernice's Necklace  (x1)
    .unitscan Goldtooth
step << !Warrior
    >>Kill |cFF00BCD4Goldtooth|r for |cFF00BCD4Bernice's Necklace|r
    .goto Elwynn Forest,41.7,78.1
    .complete 87,1 --Collect Bernice's Necklace  (x1)
    .unitscan Goldtooth
step << Warrior
    #sticky
    #completewith Goldtooth
    +|cFFFCDC00Try to save a single healing potion from now on as you will need it for Rolf's Corpse later|r
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
    >> Kill |cFF00BCD4Kobolds|r and loot them for |cFF00BCD4Candles|r and |cFF00BCD4Gold Dust|r
    .complete 47,1 --Collect Gold Dust (x10)
    .complete 60,1 --Collect Kobold Candle (x8)
step
    #label Goldtooth
    #requires KoboldTurnins
    >> Head back to |cFF00FF25"Auntie" Bernice Stonefield|r
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
    >> Talk to |cFF00FF25Remy "Two Times"|r
    .target Remy "TWo Times"
    .goto Elwynn Forest,42.1,67.3
    .turnin 47 >> Turn in Gold Dust Exchange
    .accept 40 >> Accept A Fishy Peril
step << Rogue
    .goto Elwynn Forest,41.5,65.9
    >>Repair your weapon. If you have enough money (3s 82c) buy a Stiletto from Corina. Otherwise, skip this step (you'll come back later)
    .collect 2494,1
step
    >> Talk to |cFF00FF25Marshal Dughan|r
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
    >> Talk to |cFF00FF25William Pestle|r
    .target William Pestle
    .goto Elwynn Forest,43.283,65.721
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
    .vendor >>Buy a 6 slot bag from |cFF00FF25Brog Hamfist|r
	.target Brogg
step << Warrior
    >> Talk to |cFF00FF25Lyria Du Lac|r
    .target Lyria Du Lac
    .goto Elwynn Forest,41.087,65.768
    .trainer >> Train your class spells
step << Paladin
    >> Talk to |cFF00FF25Brother Wilhelm|r
    .target Brother Wilhelm
    .goto Elwynn Forest,41.1,66.0
    .trainer >> Train your class spells
step << Mage/Priest/Rogue/Warrior
    #completewith next
    .goto Elwynn Forest,43.7,66.4,15 >>Go upstairs
step << Mage
	>> Talk to |cFF00FF25Zaldimar Wefhellt|r
	.target Zaldimar Wefhellt
    .goto Elwynn Forest,43.2,66.2
    .trainer >> Train your class spells
step << Priest
	>> Talk to |cFF00FF25Priestess Josetta|r
	.target Priestess Josetta
    .turnin 5624 >> Turn in Garments of the Light
    .trainer >> Train your class spells
step << Rogue
    >> Talk to |cFF00FF25Keryn Sylvius|r
    .target Keryn Sylvius
    .goto Elwynn Forest,43.9,65.9
    .trainer >> Train your class spells
step << Rogue/Warrior/Paladin
    .money <0.01
    >> Talk to |cFF00FF25Michelle Belle|r
    .target Michelle Belle
    .goto Elwynn Forest,43.4,65.5
    .train 3273 >> Train First Aid - Don't make all your bandages at once, better time to make them later
step << !Warrior !Rogue
    .goto Elwynn Forest,43.771,65.803
    .vendor >>Buy level 5 Water up to 40
step << Warrior/Rogue
    .goto Elwynn Forest,43.771,65.803
    .vendor 295 >>Buy level 5 Food up to 40
step
    >>Grind |cFF00BCD4Murlocs|r toward the east and loot them for |cFF00BCD4Crystal Kelp Frond|r.
	.target Murloc
	.target Murloc Streamrunner
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
    >> Talk to |cFF00FF25Guard Thomas|r
    .target Guard Thomas
    .goto Elwynn Forest,73.973,72.179
    .turnin 35 >> Turn in Further Concerns
    .accept 37 >> Accept Find the Lost Guards
    .accept 52 >> Accept Protect the Frontier
step
    #sticky
    #completewith Prowlers
    >>Kill |cFFFF5722Prowlers|r as you do other quests
	.target Prowler
    .complete 52,1 --Kill Prowler (x8)
step
    #sticky
    #completewith Bears
    >>Kill |cFFFF5722Young Forest Bears|r as you do other quests. Go out of your way for bears.
	.unitscan Young Forest Bear
    .complete 52,2 --Kill Young Forest Bear (x5)
step
	>> Click on the |cFFDB2EEFcorpse|r on the ground
    .goto Elwynn Forest,72.7,60.3
    .turnin 37 >> Turn in Find the Lost Guards
    .accept 45 >> Accept Discover Rolf's Fate
step
    >> Talk to |cFF00FF25Supervisor Raelen|r
    .target Supervisor Raelen
    .goto Elwynn Forest,81.382,66.112
    .accept 5545 >> Accept A Bundle of Trouble
step
    >> Talk to |cFF00FF25Rallic Finn|r
    .target Rallic Finn
    .goto Elwynn Forest,83.3,66.1
    .vendor >> Vendor trash, repair
step << Paladin
    #softcore
    .goto Elwynn Forest,76.8,62.4,100,0
    .goto Elwynn Forest,83.7,59.4,100,0
    .goto Elwynn Forest,76.8,62.4,100,0
    .goto Elwynn Forest,83.7,59.4,100,0
    .goto Elwynn Forest,76.8,62.4
    >>Collect the |cFFDB2EEFbundles of wood|r at the base of the trees
    .complete 5545,1 --Collect Bundle of Wood (x8)
step << Paladin
    #hardcore
    #completewith Bundles
    >>Collect the |cFFDB2EEFbundles of wood|r at the base of the trees
    .complete 5545,1 --Collect Bundle of Wood (x8)
step << !Paladin
    #sticky
    #completewith next
    >>Collect the |cFFDB2EEFbundles of wood|r at the base of the trees
    .complete 5545,1 --Collect Bundle of Wood (x8)
step
    #label Bundles
    .goto Elwynn Forest,79.8,55.5,90 >> Go toward the guard's corpse
step << Priest
    .goto Elwynn Forest,79.8,55.5
    >> Kill mobs surrounding the corpse. Precast Renew and Shield, get full mana, then pull the 2 mobs in front of the huts, move away, then nuke one. Run away when you kill one, then kill the other. Click on the |cFFDB2EEFcorpse|r on the ground
    >> Be careful as this quest is difficult
    .turnin 45 >> Turn in Discover Rolf's Fate
    .accept 71 >> Accept Report to Thomas
step << !Paladin
    .goto Elwynn Forest,79.8,55.5
    >> Kill mobs surrounding the corpse. Pull the 2 mobs in front of the huts, move away and sheep one whilst killing the other, then kill the sheeped mob. Click on the |cFFDB2EEFcorpse|r on the ground << Mage
    >> Pool Rage, then kill the 2 mobs surrounding the corpse. Pull the 2 mobs in front of the huts, move away and keep one hamstrung whilst killing the other. Run away when you kill one (use marbles on it), then pull and kill the other. Click on the |cFFDB2EEFcorpse|r on the ground << Warrior
    >> Kill mobs surrounding the corpse. Pull the 2 mobs in front of the huts, move away and nuke one mob. Use Evasion. Run away when you kill one, then kill the other. Click on the |cFFDB2EEFcorpse|r on the ground << Rogue
     >>Kill mobs surrounding the corpse. Pull the 2 mobs in front of the huts, move away then keep one feared, and try to keep dots on both. Click on the |cFFDB2EEFcorpse|r on the ground << Warlock
    >> |cFFFCDC00Be careful as this quest is difficult|r
    .turnin 45 >> Turn in Discover Rolf's Fate
    .accept 71 >> Accept Report to Thomas
step << Paladin
    #softcore
    .goto Elwynn Forest,79.8,55.5
    >> Run on top of the |cFFDB2EEFcorpse|r, then use Divine Protection and IMMEDIATELY loot the |cFFDB2EEFcorpse|r, handin, and accept the quest. You'll die after
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
    >>Start running back, finish off the turn|cFFDB2EEFbundles of wood|r
    .complete 5545,1 --Collect Bundle of Wood (x8)
step
    #label Bundles2
	 >> Talk to |cFF00FF25Supervisor Raelen|r
    .target Supervisor Raelen
    .goto Elwynn Forest,81.382,66.112
    .turnin 5545 >> Turn in A Bundle of Trouble
step
    #label Prowlers
	    .goto Elwynn Forest,76.8,62.4,90,0
    .goto Elwynn Forest,83.7,59.4,90,0
    .goto Elwynn Forest,76.8,62.4,90,0
    .goto Elwynn Forest,83.7,59.4,90,0
    .goto Elwynn Forest,76.8,62.4,90,0
    .goto Elwynn Forest,83.7,59.4,90,0
    .goto Elwynn Forest,76.8,62.4
    .xp 9 >> Grind to 9
step
    #label Bears
	>> Talk to |cFF00FF25Sara Timberlain|r
    .target Sara Timberlain
    .goto Elwynn Forest,79.457,68.789
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
	>> Talk to |cFF00FF25Guard Thomas|r
    .target Guard Thomas
    .goto Elwynn Forest,73.973,72.179
    .turnin 52 >> Turn in Protect the Frontier
    .turnin 71 >> Turn in Report to Thomas
    .accept 39 >> Accept Deliver Thomas' Report
    .accept 109 >> Accept Report to Gryan Stoutmantle
step
    #sticky
    #completewith Deed
    >>Keep an eye out for |cFF00BCD4Westfall Deed|r from the Defias (lucky drop)
    .collect 1972,1,184 --Collect Westfall Deed (x1)
    .accept 184 >> Accept Furlbrow's Deed
step
    .goto Elwynn Forest,69.53,79.47
    >>Start circling the farm, killing |cFF00BCD4Defias|r and looting them for |cFF00BCD4Red Linen Bandanas|r
	.target Defias Bandit
    .complete 83,1 --Collect Red Linen Bandana (x6)
step << Warrior
    .goto Elwynn Forest,69.4,79.2
    >>Pool Rage, then kill |cFF00BCD4Princess|r. Use a Lesser Heal Potion from before if needed. Loot her for the |cFF00BCD4Brass Collar|r
    .complete 88,1 --Collect Brass Collar (x1)
step << Rogue
    .goto Elwynn Forest,69.4,79.2
    >>Make sure Evasion is up, then kill |cFF00BCD4Princess|r. Use a Lesser Heal Potion from before if needed. Loot her for the |cFF00BCD4Brass Collar|r
	>>If you're struggling, you can use the Fence with Throwing Weapons to abuse pathing and buy time
    .complete 88,1 --Collect Brass Collar (x1)
step << !Rogue !Warrior
    .goto Elwynn Forest,69.4,79.2
    >>Kill |cFF00BCD4Princess|r. Use a Lesser Heal Potion from before if needed. Loot her for the |cFF00BCD4Brass Collar|r
    >>If you're struggling, you can use the Fence to abuse pathing and buy time
    .complete 88,1 --Collect Brass Collar (x1)
    .link https://www.youtube.com/watch?v=GRrXOV-UvD4 >> Click here if struggling
step
	.goto Elwynn Forest,69.53,79.47
    .xp 9+3400 >> Grind to 3400+/6500xp
step
    #softcore
    #sticky
    #completewith next
    .goto Elwynn Forest,83.6,69.7,120 >>Die and respawn at the Spirit Healer if you're low health, otherwise just run back and handin
step
    #label Deed
	>> Talk to |cFF00FF25Sara Timberlain|r
    .target Sara Timberlain
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
	>> Talk to |cFF00FF25William Pestle|r
    .target William Pestle
    .goto Elwynn Forest,43.283,65.721
    >>Don't wait for his rp event
    .turnin 112 >> Turn in Collecting Kelp
step << Warrior/Rogue
    >> Talk to |cFF00FF25Michelle Belle|r
    .target Michelle Belle
    .goto Elwynn Forest,43.4,65.6
    >>Speak with the first aid trainer upstairs
    .train 3273 >> Train First Aid
step
	>> Talk to |cFF00FF25Marshal Dughan|r
    .target Marshal Dughan
    .goto Elwynn Forest,42.2,65.8
    .turnin 39 >> Turn in Deliver Thomas' Report
    .turnin 76 >> Turn in The Jasperlode Mine
    .accept 239 >> Accept Westbrook Garrison Needs Help!
    .accept 59 >>Accept Cloth and Leather Armor << Warlock
step
	>> Talk to |cFF00FF25Smith Argus|r
    .target Smith Argus
    .goto Elwynn Forest,41.706,65.544
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
>>Talk to |cFF00FF25Lyria Du Lac|r
-->>Talk to |cFF00FF25Ilsa Corbin|r
    .accept 1638 >> Accept A Warrior's Training
    .trainer >> Train your class spells
step << Paladin
    .goto Elwynn Forest,41.1,66.0
    .trainer >> Train your class spells
step
	>> Talk to |cFF00FF25William Pestle|r
    .target William Pestle
    .goto Elwynn Forest,43.283,65.721
    .accept 114 >> Accept The Escape
step << Warlock
    >>Go back down into the basement
    .goto Elwynn Forest,44.4,66.2
.target Remen Marcot
>>Talk to |cFF00FF25Remen Marcot|r
    .accept 1685 >> Accept Gakin's Summons
    .trainer >> Train your class spells
step << Mage/Priest/Rogue
    #sticky
    #completewith next
    .goto Elwynn Forest,43.7,66.4,10 >>Go Upstairs
step << Priest
    .goto Elwynn Forest,43.283,65.721
.target Priestess Josetta
>>Talk to |cFF00FF25Priestess Josetta|r
    .accept 5635 >> Accept Desperate Prayer
    .trainer >> Train your class spells
step << Mage
    .goto Elwynn Forest,43.2,66.2
    .trainer >> Train your class spells
step << Rogue
    .goto Elwynn Forest,43.9,65.9
    >>Don't worry about not having 2 weapons, we'll get another soon
    >>|cFFFCDC00Be VERY careful about your money when training here.|r Make sure you train Dual Wield and Sprint though
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
	>> Talk to |cFF00FF25Maybell Maclure|r
    .target Maybell Maclure
    >>Run out of the inn and go south
    .goto Elwynn Forest,43.2,89.6
    .turnin 114 >> Turn in The Escape
step
    .goto Elwynn Forest,34.660,84.482
.target Ma Stonefield
>>Talk to |cFF00FF25Ma Stonefield|r
    .turnin 88,1 >> Turn in Princess Must Die! << Rogue/Hunter
    .turnin 88,2 >> Turn in Princess Must Die! << Warrior/Paladin
    .turnin 88,3 >> Turn in Princess Must Die! << !Rogue !Hunter !Warrior !Paladin
step << Warlock
    >>Click any of the wanted posters around
    .goto Elwynn Forest,24.6,74.7
    .accept 176 >> Accept Wanted:   "Hogger"
step
	>> Talk to |cFF00FF25Deputy Rainer|r
    .target Deputy Rainer
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
    >>Keep an eye out for the |cFF00BCD4Gold Pickup Schedule|r (lucky drop), or a 100% Drop from |cFFFF5722Gruff Swiftbite|r (rare).
	.unitscan Gruff Swiftbite
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
    >>|cFF00BCD4Hogger|r can be in multiple spots in the area. Keep him fear chained, and/or kite him at <60% hp to the tower at 24,80. Loot him for his |cFF00BCD4Huge Gnoll Claw|r
    >>Be careful as he can be feared into other mobs, hits hard, and can stun
    .complete 176,1 --Collect Huge Gnoll Claw (1)
step << Warlock
    #label Armbands
    .goto Elwynn Forest,27.0,93.9
    >> Kill |cFF00BCD4Gnolls|r. Loot them for |cFF00BCD4Painted Gnoll Armbands|r
	.target Riverpaw Outrunner
	.target Riverpaw Runt
    .complete 11,1 --Collect Painted Gnoll Armband (8)
step << Rogue
    #era
    #label Armbands
    .money >0.3152
	>> Talk to |cFF00FF25Deputy Rainer|r
    .target Deputy Rainer
    .goto Elwynn Forest,24.2,74.5
    .accept 11 >> Accept Riverpaw Gnoll Bounty
step << Rogue
    #som
    #label Armbands
	>> Talk to |cFF00FF25Deputy Rainer|r
    .target Deputy Rainer
    .money >0.3197
    .goto Elwynn Forest,24.2,74.5
    .accept 11 >> Accept Riverpaw Gnoll Bounty
step << Rogue
    .goto Elwynn Forest,27.0,93.9
    >> Kill |cFF00BCD4Gnolls|r. Loot them for |cFF00BCD4Painted Gnoll Armbands|r
	.target Riverpaw Outrunner
	.target Riverpaw Runt
    .complete 11,1 --Collect Painted Gnoll Armband (x8)
    .isOnQuest 11
step << Warlock/Rogue
	>> Talk to |cFF00FF25Deputy Rainer|r
    .target Deputy Rainer
    .goto Elwynn Forest,24.2,74.5
    .turnin 11 >> Turn in Riverpaw Gnoll Bounty
    .isOnQuest 11
step << Rogue
    .abandon 123 >>Abandon The Collector
step
    .goto Westfall,60.0,19.4
.target Farmer Furlbrow
>>Talk to |cFF00FF25Farmer Furlbrow|r
    .turnin 184 >> Turn in Furlbrow's Deed
    .isOnQuest 184
step
    .goto Westfall,59.95,19.36
.target Farmer Furlbrow
>>Talk to |cFF00FF25Farmer Furlbrow|r
    .accept 64 >>Accept The Forgotten Heirloom
step
    .goto Westfall,59.918,19.416
.target Verna Furlbrow
>>Talk to |cFF00FF25Verna Furlbrow|r
    .accept 36 >> Accept Westfall Stew
    .accept 151 >>Accept Poor Old Blanchy
step
    .goto Westfall,56.04,31.22
.target Farmer Saldean
>>Talk to |cFF00FF25Farmer Saldean|r
    .accept 9 >>Accept The Killing Fields
step
    .goto Westfall,56.416,30.519
>>Talk to |cFF00FF25Salma Saldean|r
    .turnin 36 >> Turn in Westfall Stew
.target Salma Saldean
    .accept 38 >> Accept Westfall Stew
    .accept 22 >>Accept Goretusk Liver Pie
step
    #softcore
    #completewith next
    .deathskip >> Die and respawn at the |cFF00FF25Spirit Healer|r
    .target Spirit Healer
step
    .goto Westfall,56.327,47.520
>>Talk to |cFF00FF25Gryan Stoutmantle|r
    .turnin 109 >> Turn in Report to Gryan Stoutmantle
.target Gryan Stoutmantle
    .accept 12 >> Accept The People's Militia
step
    #era
    .goto Westfall,56.327,47.520
.target Captain Danuvin
>>Talk to |cFF00FF25Captain Danuvin|r
    .accept 102 >> Accept Patrolling Westfall
step << Human
    .goto Westfall,57.002,47.169
    .vendor >>vendor trash
.target Quartermaster Lewis
>>Talk to |cFF00FF25Quartermaster Lewis|r
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
>>Talk to |cFF00FF25Thor|r
    .turnin 6181 >> Turn in A Swift Message << Human
.target Thor
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
.target Morgan Pestle
>>Talk to |cFF00FF25Morgan Pestle|r
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
>>Talk to |cFF00FF25Gakin the Darkbinder|r
    .turnin 1685 >> Turn in Gakin's Summons
.target Gakin the Darkbinder
    .accept 1688 >> Accept Surena Caledon
step << Warlock
    #softcore
    .deathskip >> Die and respawn at the Spirit Healer by using Life Tap and standing on the Bonfire next to you
step << Warlock
    .goto Elwynn Forest,42.105,65.927
    .zone Elwynn Forest >> Run back out of Stormwind to Elwynn
step << Warlock
    .isOnQuest 123
    .goto Elwynn Forest,42.105,65.927
    >>Choose the Staff then equip it
.target Marshal Dughan
>>Talk to |cFF00FF25Marshal Dughan|r
    .turnin 176 >> Turn in Wanted:    "Hogger"
    .turnin 123 >> Turn in The Collector
step << Warlock
    .goto Elwynn Forest,42.105,65.927
    >>Choose the Staff then equip it
.target Marshal Dughan
>>Talk to |cFF00FF25Marshal Dughan|r
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
>>Talk to |cFF00FF25Sara Timberlain|r
    .turnin 59 >> Turn in Cloth and Leather Armor
step << Warlock
    #sticky
    #completewith next
    .goto Redridge Mountains,17.4,69.6
    .zone Redridge Mountains >> Grind en route to Redridge, make sure to have at least 2 Soul Shards (using Drain Soul)
    .collect 6265,2 --Soul Shard (2)
step << Warlock
    .goto Redridge Mountains,17.4,69.6
.target Guard Parker
>>Talk to |cFF00FF25Guard Parker|r
    .accept 244 >> Accept Encroaching Gnolls
step << Warlock
    >>Be careful of the mobs en route
    .goto Redridge Mountains,30.733,59.996
.target Deputy Feldon
>>Talk to |cFF00FF25Deputy Feldon|r
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
>>Talk to |cFF00FF25Gakin the Darkbinder|r
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
>>Talk to |cFF00FF25Gakin the Darkbinder|r
    .turnin 1689 >> Turn in The Binding
step << Human
    .goto StormwindClassic,74.3,47.2
>>Talk to |cFF00FF25Osric Strang|r
    .turnin 6281 >> Turn in Continue to Stormwind
.target Osric Strang
    .accept 6261 >> Accept Dungar Longdrink
step << Warrior
     >>Enter the inn
    .goto StormwindClassic,71.7,39.9,20,0
    .goto StormwindClassic,74.3,37.3
>>Talk to |cFF00FF25Harry Burlguard|r
    .turnin 1638 >> Turn in A Warrior's Training
.target Harry Burlguard
    .accept 1639 >> Accept Bartleby the Drunk
step << Warrior
    .goto StormwindClassic,73.8,36.3
>>Talk to |cFF00FF25Bartleby|r
    .turnin 1639 >> Turn in Bartleby the Drunk
.target Bartleby
    .accept 1640 >> Accept Beat Bartleby
    .complete 1640,1 --Beat Bartleby
step << Warrior
    .goto StormwindClassic,73.8,36.3
>>Talk to |cFF00FF25Bartleby|r
    .turnin 1640 >> Turn in Beat Bartleby
.target Bartleby
    .accept 1665 >> Accept Bartleby's Mug
step << Warrior
    >>You'll now learn Defensive Stance and Sunder Armor
    .goto StormwindClassic,74.3,37.3
.target Harry Burlguard
>>Talk to |cFF00FF25Harry Burlguard|r
    .turnin 1665 >> Turn in Bartleby's Mug
step << Priest
    #completewith next
    .goto StormwindClassic,38.8,26.4
.target High Priestess Laurena
>>Talk to |cFF00FF25High Priestess Laurena|r
    .turnin 5635 >> Turn in Desperate Prayer
step << Priest
    .goto StormwindClassic,38.62,26.10
    .train 13908 >> Train Desperate Prayer
step
    #completewith next
    .goto StormwindClassic,51.8,12.1
.target Grimand Elmore
>>Talk to |cFF00FF25Grimand Elmore|r
    .turnin 1097 >> Turn in Elmore's Task
step
    .goto StormwindClassic,51.8,12.1
.target Grimand Elmore
>>Talk to |cFF00FF25Grimand Elmore|r
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
.target Monty
>>Talk to |cFF00FF25Monty|r
    .accept 6661 >> Accept Deeprun Rat Roundup
step
    >>Use your flute on the rats scattered around
    .complete 6661,1 --Rats Captured (x5)
step
.target Monty
>>Talk to |cFF00FF25Monty|r
    .turnin 6661 >> Turn in Deeprun Rat Roundup
step
    .goto Ironforge,77.0,51.0
    .zone Ironforge >>Enter Ironforge
step
    .goto Ironforge,55.501,47.742
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
.target Rudra Amberstill
>>Talk to |cFF00FF25Rudra Amberstill|r
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
.target Rudra Amberstill
>>Talk to |cFF00FF25Rudra Amberstill|r
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
.target Senator Mehr Stonehallow
>>Talk to |cFF00FF25Senator Mehr Stonehallow|r
    .accept 433 >> Accept The Public Servant
step
    .goto Dun Morogh,69.084,56.330
.target Foreman Stonebrow
>>Talk to |cFF00FF25Foreman Stonebrow|r
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
    .goto Dun Morogh,69.084,56.330
.target Foreman Stonebrow
>>Talk to |cFF00FF25Foreman Stonebrow|r
    .turnin 432 >> Turn in Those Blasted Troggs!
step
    .goto Dun Morogh,68.9,55.9
    .vendor >> vendor trash, repair
step
    .goto Dun Morogh,68.7,56.0
.target Senator Mehr Stonehallow
>>Talk to |cFF00FF25Senator Mehr Stonehallow|r
    .turnin 433 >> Turn in The Public Servant
step << !Warlock
    .xp 11
step
    .goto Dun Morogh,68.6,54.7
    .vendor >>Vendor, buy x30 level 5 drink << Mage/Warlock/Priest
step
    .goto Dun Morogh,81.2,42.7,45,0
    .goto Dun Morogh,83.892,39.188
.target Pilot Hammerfoot
>>Talk to |cFF00FF25Pilot Hammerfoot|r
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
    .goto Dun Morogh,83.892,39.188
    >>Choose the dagger, use it as your offhand until you get a vendor sword << Rogue
.target Pilot Hammerfoot
>>Talk to |cFF00FF25Pilot Hammerfoot|r
    .turnin 417 >> Turn in A Pilot's Revenge
step
    #era
    .goto Dun Morogh,83.892,39.188
    >>Choose the dagger, use it as your offhand << Rogue
.target Pilot Hammerfoot
>>Talk to |cFF00FF25Pilot Hammerfoot|r
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
    .goto Loch Modan,24.764,18.397
>>Talk to |cFF00FF25Mountaineer Stormpike|r
    .turnin 353 >> Turn in Stormpike's Delivery
.target Mountaineer Stormpike
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
    .goto Loch Modan,34.828,49.283
.target Vidra Hearthstove
>>Talk to |cFF00FF25Vidra Hearthstove|r
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
.target Mountaineer Kadrell
>>Talk to |cFF00FF25Mountaineer Kadrell|r
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
>>Talk to |cFF00FF25Mountaineer Stormpike|r
    .turnin 307 >> Turn in Filthy Paws
.target Mountaineer Stormpike
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
    #hidewindow
    #requires Meat9
step
    #label RatCatching
    #requires Ichor9
    .goto Loch Modan,32.6,49.9,80.0,0
    .goto Loch Modan,37.2,46.1,80.0,0
    .goto Loch Modan,36.7,41.6
    >>Find Kadrell. He patrols along the Thelsamar road
.target Mountaineer Kadrell
>>Talk to |cFF00FF25Mountaineer Kadrell|r
    .turnin 416 >> Turn in Rat Catching
step
    .goto Loch Modan,34.828,49.283
.target Vidra Hearthstove
>>Talk to |cFF00FF25Vidra Hearthstove|r
    .turnin 418 >> Turn in Thelsamar Blood Sausages
step
    .goto Loch Modan,34.8,48.6
    .vendor >> Buy 1 Flint and Tinder, and 1 Simple Wood. Buy more 6 slots if needed
    .collect 4470,1 --Simple Wood (1)
    .collect 4471,1 --Flint and Tinder (1)
step
    .goto Loch Modan,33.938,50.954
    .fp Thelsamar >> Get the Thelsamar flight path
step
    .goto Loch Modan,22.071,73.127
.target Mountaineer Cobbleflint
>>Talk to |cFF00FF25Mountaineer Cobbleflint|r
    .accept 224 >> Accept In Defense of the King's Lands
step
    .goto Loch Modan,23.233,73.675
    >>Go into the bunker from behind
.target Captain Rugelfuss
>>Talk to |cFF00FF25Captain Rugelfuss|r
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
.target Mountaineer Cobbleflint
>>Talk to |cFF00FF25Mountaineer Cobbleflint|r
    .turnin 224 >> Turn in In Defense of the King's Lands
step
    #label TroggT
    .goto Loch Modan,23.233,73.675
.target Captain Rugelfuss
>>Talk to |cFF00FF25Captain Rugelfuss|r
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
>>Talk to |cFF00FF25Duthorian Rall|r
    .turnin 1641 >> Turn in The Tome of Divinity
    .collect 6775,1,1642 --Tome of Divinity (1)
    .accept 1642 >> Accept The Tome of Divinity
    .turnin 1642 >> Turn in The Tome of Divinity
.target Duthorian Rall
    .accept 1643 >> Accept The Tome of Divinity
step << Paladin
    .goto StormwindClassic,38.68,32.85
    .trainer >> Train your class spells
step << Priest
    .goto StormwindClassic,38.54,26.86
    .trainer >> Train your class spells
step
    .goto StormwindClassic,58.08,16.52
.target Furen Longbeard
>>Talk to |cFF00FF25Furen Longbeard|r
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
>>Talk to |cFF00FF25Stephanie Turner|r
    .turnin 1643 >> Turn in The Tome of Divinity
.target Stephanie Turner
    .accept 1644 >> Accept The Tome of Divinity
    .turnin 1644 >> Turn in The Tome of Divinity
    .accept 1780 >> Accept The Tome of Divinity
step
    .goto StormwindClassic,66.28,62.13
>>Talk to |cFF00FF25Dungar Longdrink|r
    .turnin 6261 >> Turn in Dungar Longdrink
.target Dungar Longdrink
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
#name 6-13 Elwynn Forest
#version 1
#group RestedXP Alliance 1-20
#defaultfor Human
#next 13-14 Loch Modan
step
    #hardcore
    .goto Elwynn Forest,42.105,65.927
>>Talk to |cFF00FF25Marshal Dughan|r
    .turnin 54 >> Turn in Report to Goldshire
.target Marshal Dughan
    .accept 62 >> Accept The Fargodeep Mine
step
    #softcore
    #sticky
    #completewith Goldshire
    .goto Elwynn Forest,39.5,60.5,200 >> Die and respawn at the Spirit Healer, or run to Goldshire
step << Warrior/Paladin/Rogue
    .goto Elwynn Forest,41.706,65.544
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
step << Paladin
    #completewith Remy
    +Equip the |T133053:0|t[Wooden Mallet]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5
step << Mage/Priest/Warlock
    #completewith next
    .goto Elwynn Forest,41.7,65.9
    .vendor >> vendor trash, repair
step
    #label Goldshire
    .goto Elwynn Forest,42.105,65.927
>>Talk to |cFF00FF25Marshal Dughan|r
    .turnin 54 >> Turn in Report to Goldshire
.target Marshal Dughan
    .accept 62 >> Accept The Fargodeep Mine
step
    >>On your close left as you go in the Inn
    .goto Elwynn Forest,42.9,65.7,15,0
    .goto Elwynn Forest,43.283,65.721
.target William Pestle
>>Talk to |cFF00FF25William Pestle|r
    .accept 60 >> Accept Kobold Candles
step
    .goto Elwynn Forest,43.771,65.803
    >>Do NOT buy any food/drink here << Warlock
.target Innkeeper Farley
>>Talk to |cFF00FF25Innkeeper Farley|r
    .turnin 2158,1 >> Turn in Rest and Relaxation << Rogue/Warrior
    .turnin 2158,2 >> Turn in Rest and Relaxation << !Rogue !Warrior
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
    .goto Elwynn Forest,43.283,65.721
>>Talk to |cFF00FF25Priestess Josetta|r
    .turnin 5623 >> Turn in In Favor of the Light
.target Priestess Josetta
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
    .goto Elwynn Forest,43.771,65.803
    .vendor >> Buy level 5 food down to 1 Silver
step << Rogue
    .goto Elwynn Forest,43.771,65.803
    .vendor >> Buy up to 20 level 5 food
step << Warrior
    .goto Elwynn Forest,41.087,65.768
    .trainer >> Train your class spells
step << Paladin
    .goto Elwynn Forest,41.1,66.0
    .trainer >> Train your class spells
step
    #label Remy
    .goto Elwynn Forest,42.1,67.3
.target Remy "Two Times"
>>Talk to |cFF00FF25Remy "Two Times"|r
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
    .goto Elwynn Forest,34.486,84.253
.target "Auntie" Bernice Stonefield
>>Talk to |cFF00FF25"Auntie" Bernice Stonefield|r
    .accept 85 >> Accept Lost Necklace
    .goto Elwynn Forest,34.660,84.482
.target Ma Stonefield
>>Talk to |cFF00FF25Ma Stonefield|r
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
    .goto Elwynn Forest,43.132,85.722
>>Talk to |cFF00FF25Billy Maclure|r
    .turnin 85 >> Turn in Lost Necklace
.target Billy Maclure
    .accept 86 >> Accept Pie for Billy
step << Warrior
    #label Dust
    >>Grind mobs east through the outside of the mine. If you get a Rough Stone at any point, make it into a Sharpening Stone via Blacksmithing, and apply it on your sword
    .goto Elwynn Forest,43.132,85.722
>>Talk to |cFF00FF25Billy Maclure|r
    .turnin 85 >> Turn in Lost Necklace
.target Billy Maclure
    .accept 86 >> Accept Pie for Billy
step << Rogue
    #label Dust
    >>Grind mobs east through the outside of the mine. If you get a Rough Stone at any point, make it into a Sharpening Stone via Blacksmithing, and apply it on your dagger
    .goto Elwynn Forest,43.132,85.722
>>Talk to |cFF00FF25Billy Maclure|r
    .turnin 85 >> Turn in Lost Necklace
.target Billy Maclure
    .accept 86 >> Accept Pie for Billy
step << Paladin
    #label Dust
    >>Grind mobs east through the outside of the mine. If you get a Rough Stone at any point, Make it into a Weightstone via Blacksmithing, and apply it to your mace
    .goto Elwynn Forest,43.132,85.722
>>Talk to |cFF00FF25Billy Maclure|r
    .turnin 85 >> Turn in Lost Necklace
.target Billy Maclure
    .accept 86 >> Accept Pie for Billy
step
    #label BoarMeat1
    .goto Elwynn Forest,43.2,89.6
.target Maybell Maclure
>>Talk to |cFF00FF25Maybell Maclure|r
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
    .goto Elwynn Forest,29.840,85.997
>>Talk to |cFF00FF25Tommy Joe Stonefield|r
    .turnin 106 >> Turn in Young Lovers
.target Tommy Joe Stonefield
    .accept 111 >> Accept Speak with Gramma
step
    .goto Elwynn Forest,32.5,85.5
    >>Finish off getting the Boar Meat
    .complete 86,1 --Collect Chunk of Boar Meat (x4)
step
    .goto Elwynn Forest,34.486,84.253
>>Talk to |cFF00FF25"Auntie" Bernice Stonefield|r
    .turnin 86 >> Turn in Pie for Billy
.target "Auntie" Bernice Stonefield
    .accept 84 >> Accept Back to Billy
step
    .goto Elwynn Forest,34.9,83.9
>>Talk to |cFF00FF25Gramma Stonefield|r
    .turnin 111 >> Turn in Speak with Gramma
.target Gramma Stonefield
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
    .goto Elwynn Forest,43.132,85.722
>>Talk to |cFF00FF25Billy Maclure|r
    .turnin 84 >> Turn in Back to Billy
.target Billy Maclure
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
#hidewindow
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
>>Talk to |cFF00FF25Remy "Two Times"|r
    .turnin 47 >> Turn in Gold Dust Exchange
.target Remy "Two Times"
    .accept 40 >> Accept A Fishy Peril
step
    .goto Elwynn Forest,42.105,65.927
>>Talk to |cFF00FF25Marshal Dughan|r
    .turnin 40 >> Turn in A Fishy Peril
.target Marshal Dughan
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
    .goto Elwynn Forest,43.283,65.721
>>Talk to |cFF00FF25William Pestle|r
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
    .vendor >> Buy the Firebolt book if you have money after training (otherwise buy it later)
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
step << Mage/Priest/Rogue/Warrior
    #completewith next
    .goto Elwynn Forest,43.7,66.4,15 >>Go upstairs
step << Mage
    .goto Elwynn Forest,43.2,66.2
    .trainer >> Train your class spells
step << Priest
    .goto Elwynn Forest,43.283,65.721
.target Priestess Josetta
>>Talk to |cFF00FF25Priestess Josetta|r
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
    .goto Elwynn Forest,43.771,65.803
    .vendor >>Buy level 5 Water up to 40
step << Warrior/Rogue
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
    .goto Elwynn Forest,61.8,54.0,70,0
    .goto Elwynn Forest,60.4,50.2
    .complete 76,1 --Scout through the Jasperlode Mine
step
    .goto Elwynn Forest,73.973,72.179
>>Talk to |cFF00FF25Guard Thomas|r
    .turnin 35 >> Turn in Further Concerns
.target Guard Thomas
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
    .goto Elwynn Forest,81.382,66.112
.target Supervisor Raelen
>>Talk to |cFF00FF25Supervisor Raelen|r
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
    .goto Elwynn Forest,81.382,66.112
.target Supervisor Raelen
>>Talk to |cFF00FF25Supervisor Raelen|r
    .turnin 5545 >> Turn in A Bundle of Trouble
step
    #label Prowlers
    .xp 9 >> Grind to 9
step
    #label Bears
    .goto Elwynn Forest,79.457,68.789
.target Sara Timberlain
>>Talk to |cFF00FF25Sara Timberlain|r
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
    .goto Elwynn Forest,73.973,72.179
>>Talk to |cFF00FF25Guard Thomas|r
    .turnin 52 >> Turn in Protect the Frontier
    .turnin 71 >> Turn in Report to Thomas
.target Guard Thomas
    .accept 39 >> Accept Deliver Thomas' Report
.target Deputy Rainer
.target Marshal Haggard
.target Marshal Dughan
.target Farmer Furlbrow
.target Farmer Saldean
-->>Talk to |cFF00FF25Farmer Saldean|r
-->>Talk to |cFF00FF25Farmer Furlbrow|r
-->>Talk to |cFF00FF25Marshal Dughan|r
--
-->>Talk to |cFF00FF25Marshal Haggard|r
-->>Talk to |cFF00FF25Deputy Rainer|r
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
.target Sara Timberlain
>>Talk to |cFF00FF25Sara Timberlain|r
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
    .goto Elwynn Forest,43.283,65.721
    >>Don't wait for his rp event
.target William Pestle
>>Talk to |cFF00FF25William Pestle|r
    .turnin 112 >> Turn in Collecting Kelp
step << Warrior/Rogue
    .goto Elwynn Forest,43.4,65.6
    >>Speak with the first aid trainer upstairs
    .train 3273 >> Train First Aid
step
    .goto Elwynn Forest,42.2,65.8
>>Talk to |cFF00FF25Marshal Dughan|r
    .turnin 39 >> Turn in Deliver Thomas' Report
    .turnin 76 >> Turn in The Jasperlode Mine
.target Marshal Dughan
    .accept 239 >> Accept Westbrook Garrison Needs Help!
    .accept 59 >>Accept Cloth and Leather Armor << Warlock
step
    .goto Elwynn Forest,41.706,65.544
.target Smith Argus
.target Verner Osgood
>>Talk to |cFF00FF25Verner Osgood|r
-->>Talk to |cFF00FF25Smith Argus|r
    .accept 1097 >> Accept Elmore's Task
step
    #softcore
    .goto Elwynn Forest,41.7,65.9
    .vendor >>vendor trash, repair
step << Warrior
    .goto Elwynn Forest,41.087,65.768
.target Ilsa Corbin
.target Lyria Du Lac
>>Talk to |cFF00FF25Lyria Du Lac|r
-->>Talk to |cFF00FF25Ilsa Corbin|r
    .accept 1638 >> Accept A Warrior's Training
    .trainer >> Train your class spells
step << Paladin
    .goto Elwynn Forest,41.1,66.0
    .trainer >> Train your class spells
step
    .goto Elwynn Forest,43.283,65.721
.target William Pestle
>>Talk to |cFF00FF25William Pestle|r
    .accept 114 >> Accept The Escape
step << Warlock
    >>Go back down into the basement
    .goto Elwynn Forest,44.4,66.2
.target Remen Marcot
>>Talk to |cFF00FF25Remen Marcot|r
    .accept 1685 >> Accept Gakin's Summons
    .trainer >> Train your class spells
step << Mage/Priest/Rogue
    #sticky
    #completewith next
    .goto Elwynn Forest,43.7,66.4,10 >>Go Upstairs
step << Priest
    .goto Elwynn Forest,43.283,65.721
.target Priestess Josetta
>>Talk to |cFF00FF25Priestess Josetta|r
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
.target Maybell Maclure
>>Talk to |cFF00FF25Maybell Maclure|r
    .turnin 114 >> Turn in The Escape
step
    .goto Elwynn Forest,34.660,84.482
.target Ma Stonefield
>>Talk to |cFF00FF25Ma Stonefield|r
    .turnin 88,1 >> Turn in Princess Must Die! << Rogue/Hunter
    .turnin 88,2 >> Turn in Princess Must Die! << Warrior/Paladin
    .turnin 88,3 >> Turn in Princess Must Die! << !Rogue !Hunter !Warrior !Paladin
step
    .goto Elwynn Forest,34.486,84.253
.target "Auntie" Bernice Stonefield
>>Talk to |cFF00FF25"Auntie" Bernice Stonefield|r
    .turnin 87 >> Turn in Goldtooth
step << Warlock
    >>Click any of the wanted posters around
    .goto Elwynn Forest,24.6,74.7
    .accept 176 >> Accept Wanted:   "Hogger"
step
    .goto Elwynn Forest,24.2,74.5
>>Talk to |cFF00FF25Deputy Rainer|r
    .turnin 239 >> Turn in Westbrook Garrison Needs Help!
.target Deputy Rainer
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
.target Deputy Rainer
>>Talk to |cFF00FF25Deputy Rainer|r
    .turnin 11 >> Turn in Riverpaw Gnoll Bounty
    .isOnQuest 11
step
    .goto Westfall,60.0,19.4
.target Farmer Furlbrow
>>Talk to |cFF00FF25Farmer Furlbrow|r
    .turnin 184 >> Turn in Furlbrow's Deed
    .isOnQuest 184
step
    .goto Westfall,59.918,19.416
.target Verna Furlbrow
>>Talk to |cFF00FF25Verna Furlbrow|r
    .accept 36 >> Accept Westfall Stew
step
    .goto Westfall,56.416,30.519
.target Salma Saldean
>>Talk to |cFF00FF25Salma Saldean|r
    .turnin 36 >> Turn in Westfall Stew
step
    #softcore
    #sticky
    #completewith next
    .goto Westfall,51.7,49.4,150 >> Die and respawn at the Spirit Healer, or run to Sentinel Hill
step
    .goto Westfall,56.327,47.520
.target Gryan Stoutmantle
>>Talk to |cFF00FF25Gryan Stoutmantle|r
    .turnin 109 >> Turn in Report to Gryan Stoutmantle
step << Human
    .goto Westfall,57.002,47.169
    .vendor >>vendor trash
.target Quartermaster Lewis
>>Talk to |cFF00FF25Quartermaster Lewis|r
    .accept 6181 >> Accept A Swift Message
step
    .goto Westfall,56.6,52.6
>>Talk to |cFF00FF25Thor|r
    .turnin 6181 >> Turn in A Swift Message << Human
.target Thor
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
.target Morgan Pestle
>>Talk to |cFF00FF25Morgan Pestle|r
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
>>Talk to |cFF00FF25Gakin the Darkbinder|r
    .turnin 1685 >> Turn in Gakin's Summons
.target Gakin the Darkbinder
    .accept 1688 >> Accept Surena Caledon
step << Warlock
    .goto StormwindClassic,26.44,78.66
     .trainer >> Train your class spells << Warlock
step << Warlock
    #softcore
    .deathskip >> Die and respawn at the Spirit Healer by using Life Tap and standing on the Bonfire next to you
step << Warlock
    .goto Elwynn Forest,42.105,65.927
    .zone Elwynn Forest >> Run back out of Stormwind to Elwynn
step << Warlock
    .isOnQuest 123
    .goto Elwynn Forest,42.105,65.927
    >>Choose the Staff then equip it
.target Marshal Dughan
>>Talk to |cFF00FF25Marshal Dughan|r
    .turnin 176 >> Turn in Wanted:    "Hogger"
    .turnin 123 >> Turn in The Collector
step << Warlock
    .goto Elwynn Forest,42.105,65.927
    >>Choose the Staff then equip it
.target Marshal Dughan
>>Talk to |cFF00FF25Marshal Dughan|r
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
>>Talk to |cFF00FF25Sara Timberlain|r
    .turnin 59 >> Turn in Cloth and Leather Armor
step << Warlock
    #sticky
    #completewith next
    .goto Redridge Mountains,17.4,69.6
    .zone Redridge Mountains >> Grind en route to Redridge, make sure to have at least 2 Soul Shards (using Drain Soul)
    .collect 6265,2 --Soul Shard (2)
step << Warlock
    .goto Redridge Mountains,17.4,69.6
.target Guard Parker
>>Talk to |cFF00FF25Guard Parker|r
    .accept 244 >> Accept Encroaching Gnolls
step << Warlock
    >>Be careful of the mobs en route
    .goto Redridge Mountains,30.733,59.996
.target Deputy Feldon
>>Talk to |cFF00FF25Deputy Feldon|r
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
>>Talk to |cFF00FF25Gakin the Darkbinder|r
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
>>Talk to |cFF00FF25Gakin the Darkbinder|r
    .turnin 1689 >> Turn in The Binding
step << Human
    .goto StormwindClassic,74.3,47.2
.target Osric Strang
>>Talk to |cFF00FF25Osric Strang|r
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
>>Talk to |cFF00FF25Harry Burlguard|r
    .turnin 1638 >> Turn in A Warrior's Training
.target Harry Burlguard
    .accept 1639 >> Accept Bartleby the Drunk
step << Warrior
    .goto StormwindClassic,73.8,36.3
>>Talk to |cFF00FF25Bartleby|r
    .turnin 1639 >> Turn in Bartleby the Drunk
.target Bartleby
    .accept 1640 >> Accept Beat Bartleby
    .complete 1640,1 --Beat Bartleby
step << Warrior
    .goto StormwindClassic,73.8,36.3
>>Talk to |cFF00FF25Bartleby|r
    .turnin 1640 >> Turn in Beat Bartleby
.target Bartleby
    .accept 1665 >> Accept Bartleby's Mug
step << Warrior
    >>You'll now learn Defensive Stance and Sunder Armor
    .goto StormwindClassic,74.3,37.3
.target Harry Burlguard
>>Talk to |cFF00FF25Harry Burlguard|r
    .turnin 1665 >> Turn in Bartleby's Mug
step << Priest
    #completewith next
    .goto StormwindClassic,38.8,26.4
.target High Priestess Laurena
>>Talk to |cFF00FF25High Priestess Laurena|r
    .turnin 5635 >> Turn in Desperate Prayer
step << Priest
    .goto StormwindClassic,38.62,26.10
    .train 13908 >> Train Desperate Prayer
step
    #completewith next
    .goto StormwindClassic,51.8,12.1
.target Grimand Elmore
>>Talk to |cFF00FF25Grimand Elmore|r
    .turnin 1097 >> Turn in Elmore's Task
step
    .goto StormwindClassic,51.8,12.1
.target Grimand Elmore
>>Talk to |cFF00FF25Grimand Elmore|r
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
.target Monty
>>Talk to |cFF00FF25Monty|r
    .accept 6661 >> Accept Deeprun Rat Roundup
step
    >>Use your flute on the rats scattered around
    .complete 6661,1 --Rats Captured (x5)
step
.target Monty
>>Talk to |cFF00FF25Monty|r
    .turnin 6661 >> Turn in Deeprun Rat Roundup
step
    .goto Ironforge,77.0,51.0
    .zone Ironforge >>Enter Ironforge
step
    .goto Ironforge,55.501,47.742
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
.target Rudra Amberstill
>>Talk to |cFF00FF25Rudra Amberstill|r
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
.target Rudra Amberstill
>>Talk to |cFF00FF25Rudra Amberstill|r
    .turnin 314 >> Turn in Protecting the Herd
step
    .goto Dun Morogh,68.6,54.7
    .vendor >>Vendor, buy food+water << !Rogue !Warrior
    .vendor >>Vendor, buy food << Rogue/Warrior
step
    #requires Cooking
    .goto Dun Morogh,68.7,56.0
.target Senator Mehr Stonehallow
>>Talk to |cFF00FF25Senator Mehr Stonehallow|r
    .accept 433 >> Accept The Public Servant
step
    .goto Dun Morogh,69.084,56.330
.target Foreman Stonebrow
>>Talk to |cFF00FF25Foreman Stonebrow|r
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
    .goto Dun Morogh,69.084,56.330
.target Foreman Stonebrow
>>Talk to |cFF00FF25Foreman Stonebrow|r
    .turnin 432 >> Turn in Those Blasted Troggs!
step
    .goto Dun Morogh,68.9,55.9
    .vendor >> vendor trash, repair
step
    .goto Dun Morogh,68.7,56.0
.target Senator Mehr Stonehallow
>>Talk to |cFF00FF25Senator Mehr Stonehallow|r
    .turnin 433 >> Turn in The Public Servant
step
    .goto Dun Morogh,68.6,54.7
    .vendor >>Vendor, buy x30 level 5 drink << Mage/Warlock/Priest
step
    .goto Dun Morogh,81.2,42.7,45,0
    .goto Dun Morogh,83.892,39.188
.target Pilot Hammerfoot
>>Talk to |cFF00FF25Pilot Hammerfoot|r
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
    .goto Dun Morogh,83.892,39.188
    >>Choose the dagger, use it as your offhand until you get a vendor sword << Rogue
.target Pilot Hammerfoot
>>Talk to |cFF00FF25Pilot Hammerfoot|r
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
    .goto Loch Modan,24.764,18.397
>>Talk to |cFF00FF25Mountaineer Stormpike|r
    .turnin 353 >> Turn in Stormpike's Delivery
.target Mountaineer Stormpike
    .accept 307 >> Accept Filthy Paws
step
    .goto Loch Modan,33.938,50.954
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
.target Mountaineer Kadrell
>>Talk to |cFF00FF25Mountaineer Kadrell|r
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
>>Talk to |cFF00FF25Mountaineer Stormpike|r
    .turnin 307 >> Turn in Filthy Paws
.target Mountaineer Stormpike
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
.target Mountaineer Kadrell
>>Talk to |cFF00FF25Mountaineer Kadrell|r
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

