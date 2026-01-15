local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#classic
#tbc
<< Human Mage
#name 1-10 Elwynn Forest Mage AoE
#version 1
#group RestedXP Alliance Mage
#defaultfor Human
#next 10-12 Loch Modan Mage AoE
step
    #sticky
    #completewith next
    .goto Elwynn Forest,48.171,42.943
    +You have selected a guide meant for Humans. You should choose the same starter zone that you start in << Gnome
    +Note that you have selected the AoE guide. AoE is typically a lot harder than single target mage, but a LOT faster
step
    >>Delete your Hearthstone
    .goto Elwynn Forest,48.171,42.943
.target Deputy Willem
>>Talk to |cRXP_FRIENDLY_Deputy Willem|r
    .accept 783 >> Accept A Threat Within
step
    .goto Elwynn Forest,48.923,41.606
>>Talk to |cRXP_FRIENDLY_Marshal McBride|r
    .turnin 783 >> Turn in A Threat Within
.target Marshal McBride
    .accept 7 >> Accept Kobold Camp Cleanup
step
    .goto Elwynn Forest,48.171,42.943
.target Deputy Willem
>>Talk to |cRXP_FRIENDLY_Deputy Willem|r
    .accept 5261 >> Accept Eagan Peltskinner
step
    .goto Elwynn Forest,46.2,40.4
    .vendor >>Kill wolves until you have 50c worth of vendor trash. Vendor, then buy x10 water from Brother Danil.
    .collect 159,10 --Collect Refreshing Spring Water (x10)
step
    .xp 2 >> Grind to 2
step
    .goto Elwynn Forest,48.9,40.2
>>Talk to |cRXP_FRIENDLY_Eagan Peltskinner|r
    .turnin 5261 >> Turn in Eagan Peltskinner
.target Eagan Peltskinner
    .accept 33 >> Accept Wolves Across The Border
step
    .goto Elwynn Forest,46.1,40.7,40,0
    .goto Elwynn Forest,46.2,37.6,40,0
    .goto Elwynn Forest,47.6,37.2,40,0
    .goto Elwynn Forest,46.1,40.7,40,0
    .goto Elwynn Forest,46.2,37.6,40,0
    .goto Elwynn Forest,47.6,37.2,40,0
    >>Kill Young Wolves in the area for Meat
    .complete 33,1 --Collect Tough Wolf Meat (x8)
step
    .goto Elwynn Forest,47.4,35.3,40,0
    .goto Elwynn Forest,49.7,36.2,40,0
    .goto Elwynn Forest,47.4,35.3,40,0
    .goto Elwynn Forest,49.7,36.2,40,0
    .goto Elwynn Forest,47.4,35.3,40,0
    .goto Elwynn Forest,49.7,36.2,40,0
    >>Kill Kobold Vermin in the area
    .complete 7,1 --Kill Kobold Vermin (x10)
step
    .goto Elwynn Forest,48.9,40.2
.target Eagan Peltskinner
>>Talk to |cRXP_FRIENDLY_Eagan Peltskinner|r
    .turnin 33 >> Turn in Wolves Across The Border
step
    .goto Elwynn Forest,47.6,41.5
    .vendor >>vendor trash, then buy x10 more water from Brother Danil
step
    .goto Elwynn Forest,48.923,41.606
>>Talk to |cRXP_FRIENDLY_Marshal McBride|r
    .turnin 7 >> Turn in Kobold Camp Cleanup
.target Marshal McBride
    .accept 15 >> Accept Investigate Echo Ridge
    .accept 3104 >> Accept Glyphic Letter
step
    .xp 3 >> Grind to 3
step
    .goto Elwynn Forest,47.5,36.3,40,0
    .goto Elwynn Forest,46.6,32.2,40,0
    .goto Elwynn Forest,48.6,34.0,40,0
    .goto Elwynn Forest,47.5,36.3,40,0
    .goto Elwynn Forest,46.6,32.2,40,0
    .goto Elwynn Forest,48.6,34.0,40,0
    >>Kill Kobold Workers
    .complete 15,1 --Kill Kobold Worker (x10)
step
    .goto Elwynn Forest,47.7,41.4
    .xp 3+1110 >>Grind to 1110+/1400xp on your way back to town
step
    .goto Elwynn Forest,47.7,41.4
    .vendor >>vendor trash
step
    .goto Elwynn Forest,48.923,41.606
>>Talk to |cRXP_FRIENDLY_Marshal McBride|r
    .turnin 15 >> Turn in Investigate Echo Ridge
.target Marshal McBride
    .accept 21 >> Accept Skirmish at Echo Ridge
step
    >>Go upstairs
    .goto Elwynn Forest,49.3,40.7,15,0
    .goto Elwynn Forest,49.5,40.0,15,0
    .goto Elwynn Forest,49.661,39.402
.target Khelden Bremen
>>Talk to |cRXP_FRIENDLY_Khelden Bremen|r
    .turnin 3104 >> Turn in Glyphic Letter
    .trainer >> Train your class spells
step
    .goto Elwynn Forest,48.171,42.943
.target Deputy Willem
>>Talk to |cRXP_FRIENDLY_Deputy Willem|r
    .accept 18 >> Accept Brotherhood of Thieves
step
    .goto Elwynn Forest,53.7,52.2,60,0
    .goto Elwynn Forest,55.7,47.4,60,0
    .goto Elwynn Forest,54.7,41.9,60,0
    .goto Elwynn Forest,53.7,52.2,60,0
    .goto Elwynn Forest,55.7,47.4,60,0
    .goto Elwynn Forest,54.7,41.9,60,0
    >>Kill Defias Thugs. Loot them for Bandanas
    .complete 18,1 --Collect Red Burlap Bandana (x12)
step
    .goto Elwynn Forest,48.171,42.943
>>Talk to |cRXP_FRIENDLY_Deputy Willem|r
    .turnin 18 >> Turn in Brotherhood of Thieves
.target Deputy Willem
    .accept 6 >> Accept Bounty on Garrick Padfoot
    .accept 3903 >> Accept Milly Osworth
step
    .goto Elwynn Forest,47.7,41.4
    .vendor >>vendor trash, repair
step
    .goto Elwynn Forest,54.7,41.9,60,0
    .goto Elwynn Forest,47.7,31.7,60,0
    .goto Elwynn Forest,50.4,27.0,60,0
    .goto Elwynn Forest,47.7,31.7,60,0
    .goto Elwynn Forest,50.4,27.0,60,0
    .goto Elwynn Forest,47.7,31.7,60,0
    .goto Elwynn Forest,50.4,27.0,60,0
    .goto Elwynn Forest,47.7,31.7,60,0
    .goto Elwynn Forest,50.4,27.0,60,0
    >>Kill Laborers in the mine
    .complete 21,1 --Kill Kobold Laborer (x12)
step
    .xp 5 >> Grind to 5
step
    #era/som
    .goto Elwynn Forest,50.7,39.2
>>Talk to |cRXP_FRIENDLY_Milly Osworth|r
    .turnin 3903 >> Turn in Milly Osworth
.target Milly Osworth
    .accept 3904 >> Accept Milly's Harvest
step
    #som
    #phase 3-6
    .goto Elwynn Forest,50.7,39.2
.target Milly Osworth
>>Talk to |cRXP_FRIENDLY_Milly Osworth|r
    .turnin 3903 >> Turn in Milly Osworth
step
    #era/som
    >>Loot the Buckets of Grapes in the field
    .goto Elwynn Forest,54.5,49.4
    .complete 3904,1 --Collect Milly's Harvest (x8)
step
    .goto Elwynn Forest,57.5,48.2
    >>Kill Garrick and loot his Head
    .complete 6,1 --Collect Garrick's Head (x1)
step
    .xp 5+1175 >> Grind on your way back to 1175+/2800xp
    .goto Elwynn Forest,50.7,39.2
step
    #era/som
    .goto Elwynn Forest,50.7,39.2
>>Talk to |cRXP_FRIENDLY_Milly Osworth|r
    .turnin 3904 >> Turn in Milly's Harvest
.target Milly Osworth
    .accept 3905 >>Accept Grape Manifest
step
    .goto Elwynn Forest,48.171,42.943
.target Deputy Willem
>>Talk to |cRXP_FRIENDLY_Deputy Willem|r
    .turnin 6 >> Turn in Bounty on Garrick Padfoot
step
    .goto Elwynn Forest,48.923,41.606
>>Talk to |cRXP_FRIENDLY_Marshal McBride|r
    .turnin 21 >> Turn in Skirmish at Echo Ridge
.target Marshal McBride
    .accept 54 >> Accept Report to Goldshire
step
     #era/som
     >>Go upstairs the main staircase
    .goto Elwynn Forest,49.6,41.6,15,0
    .goto Elwynn Forest,48.9,41.3,15,0
    .goto Elwynn Forest,49.471,41.586
.target Brother Neals
>>Talk to |cRXP_FRIENDLY_Brother Neals|r
    .turnin 3905 >>Turn in Grape Manifest
step
    .goto Elwynn Forest,45.6,47.7
.target Falkhaan Isenstrider
>>Talk to |cRXP_FRIENDLY_Falkhaan Isenstrider|r
    .accept 2158 >> Accept Rest and Relaxation
step
    #softcore
    #sticky
    #completewith next
    .goto Elwynn Forest,39.5,60.5,200 >> Die and respawn at the Spirit Healer, or run to Goldshire
step
    .goto Elwynn Forest,41.7,65.9
    .vendor >> vendor trash, repair
step
    .goto Elwynn Forest,42.105,65.927
>>Talk to |cRXP_FRIENDLY_Marshal Dughan|r
    .turnin 54 >> Turn in Report to Goldshire
.target Marshal Dughan
    .accept 62 >> Accept The Fargodeep Mine
step
    .goto Elwynn Forest,42.9,65.7,15,0
    >>On your close left as you go in the Inn
    .goto Elwynn Forest,43.283,65.721
.target William Pestle
>>Talk to |cRXP_FRIENDLY_William Pestle|r
    .accept 60 >> Accept Kobold Candles
step
    .goto Elwynn Forest,43.771,65.803
.target Innkeeper Farley
>>Talk to |cRXP_FRIENDLY_Innkeeper Farley|r
    .turnin 2158 >> Turn in Rest and Relaxation
    .home >> Set your Hearthstone to Goldshire
step
    .xp 6 >> Grind to 6
step
    .goto Elwynn Forest,43.7,66.4,12,0
    .goto Elwynn Forest,43.2,66.2
    .trainer >> Go Upstairs. Train your class spells
step
    .goto Elwynn Forest,42.1,67.3
.target Remy "Two Times"
>>Talk to |cRXP_FRIENDLY_Remy "Two Times"|r
    .accept 47 >> Accept Gold Dust Exchange
step
    #sticky
    #completewith BoarMeat1
    >>Start killing some boars you see for Boar Meat
    .collect 769,4 --Collect Chunk of Boar Meat (x4)
step
    .goto Elwynn Forest,34.486,84.253
.target "Auntie" Bernice Stonefield
>>Talk to |cRXP_FRIENDLY_"Auntie" Bernice Stonefield|r
    .accept 85 >> Accept Lost Necklace
    .goto Elwynn Forest,34.660,84.482
.target Ma Stonefield
>>Talk to |cRXP_FRIENDLY_Ma Stonefield|r
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
step
    #label Dust
    >>Grind mobs east through the outside of the mine
    .goto Elwynn Forest,43.132,85.722
>>Talk to |cRXP_FRIENDLY_Billy Maclure|r
    .turnin 85 >> Turn in Lost Necklace
.target Billy Maclure
    .accept 86 >> Accept Pie for Billy
step
    #label BoarMeat1
    .goto Elwynn Forest,43.2,89.6
.target Maybell Maclure
>>Talk to |cRXP_FRIENDLY_Maybell Maclure|r
    .accept 106 >> Accept Young Lovers
step
    .goto Elwynn Forest,42.4,89.4
    .vendor >>Vendor, buy as much milk as you can
step
    #sticky
    #completewith next
    >>Kill boars you see for Boar Meat
    .collect 769,4 --Collect Chunk of Boar Meat (x4)
step
    .goto Elwynn Forest,29.840,85.997
>>Talk to |cRXP_FRIENDLY_Tommy Joe Stonefield|r
    .turnin 106 >> Turn in Young Lovers
.target Tommy Joe Stonefield
    .accept 111 >> Accept Speak with Gramma
step
    .goto Elwynn Forest,32.5,85.5
    >>Finish off getting the Boar Meat
    .complete 86,1 --Collect Chunk of Boar Meat (x4)
step
    .goto Elwynn Forest,34.486,84.253
>>Talk to |cRXP_FRIENDLY_"Auntie" Bernice Stonefield|r
    .turnin 86 >> Turn in Pie for Billy
.target "Auntie" Bernice Stonefield
    .accept 84 >> Accept Back to Billy
step
    .goto 1429,34.945,83.855
>>Talk to |cRXP_FRIENDLY_Gramma Stonefield|r
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
>>Talk to |cRXP_FRIENDLY_Billy Maclure|r
    .turnin 84 >> Turn in Back to Billy
.target Billy Maclure
    .accept 87 >> Accept Goldtooth
step
    >>Go into the mine
    .goto Elwynn Forest,40.5,82.3
    .complete 62,1 --Scout Through the Fargodeep Mine
step
    >>Kill Goldtooth for Bernice's Necklace
    .goto Elwynn Forest,41.7,78.1
    .complete 87,1 --Collect Bernice's Necklace  (x1)
step
    .xp 7+1600 >>Grind until 1600+/4500xp
step
#hidewindow
    #requires KoboldCandles
step
    #label Goldtooth
    #requires GoldDust
    .goto Elwynn Forest,34.486,84.253
.target "Auntie" Bernice Stonefield
>>Talk to |cRXP_FRIENDLY_"Auntie" Bernice Stonefield|r
    .turnin 87 >> Turn in Goldtooth
step
    >>Grind some mobs back to Goldshire
    .xp 7+2690 >>Grind until 2690+/4500xp
    .goto Elwynn Forest,42.1,67.3
step
    .goto Elwynn Forest,42.1,67.3
>>Talk to |cRXP_FRIENDLY_Remy "Two Times"|r
    .turnin 47 >> Turn in Gold Dust Exchange
.target Remy "Two Times"
    .accept 40 >> Accept A Fishy Peril
step
    .goto Elwynn Forest,41.7,65.9
    .vendor >>vendor trash, repair
step
    .goto Elwynn Forest,42.105,65.927
>>Talk to |cRXP_FRIENDLY_Marshal Dughan|r
    .turnin 40 >> Turn in A Fishy Peril
.target Marshal Dughan
    .accept 35 >> Accept Further Concerns
    .turnin 62 >> Turn in The Fargodeep Mine
    .accept 76 >> Accept The Jasperlode Mine
step
    .goto Elwynn Forest,41.7,65.9
    .vendor >> vendor trash, repair
step
    .goto Elwynn Forest,43.283,65.721
>>Talk to |cRXP_FRIENDLY_William Pestle|r
    .turnin 60 >> Turn in Kobold Candles
.target William Pestle
    .accept 61 >> Accept Shipment to Stormwind
    .turnin 107 >> Turn in Note to William
    .accept 112 >> Collecting Kelp
step
    .xp 8 >> Grind to 8
step
    .money <0.1250
    .goto Elwynn Forest,44.0,65.9
    .vendor >>Buy a 6 slot bag from Brog
step
    .goto Elwynn Forest,43.7,66.4,12,0
    .goto Elwynn Forest,43.2,66.2
    .trainer >> Go Upstairs. Train your class spells
step
    .goto Elwynn Forest,43.771,65.803
    .vendor >>Buy level 5 Water up to 40
step
    >>Grind Murlocs toward the east and loot them for Kelp Frond. kill mobs on the island if you still need some
    .goto Elwynn Forest,47.6,63.3,60,0
    .goto Elwynn Forest,51.4,64.6,50,0
    .goto Elwynn Forest,57.6,62.8,50,0
    .goto Elwynn Forest,56.4,66.6,50,0
    .goto Elwynn Forest,53.8,66.8,50,0
    .complete 112,1 --Collect Crystal Kelp Frond (x4)
step
    >>Go in the mine, and keep following the middle path
    .goto Elwynn Forest,61.8,54.0,60,0
    .goto Elwynn Forest,60.4,50.2
    .complete 76,1 --Scout through the Jasperlode Mine
step
    .goto Elwynn Forest,73.973,72.179
>>Talk to |cRXP_FRIENDLY_Guard Thomas|r
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
>>Talk to |cRXP_FRIENDLY_Supervisor Raelen|r
    .accept 5545 >> Accept A Bundle of Trouble
step
    .goto Elwynn Forest,83.3,66.1
    .vendor >> vendor trash, repair
step
    #sticky
    #completewith Bundles
    >>Keep an eye out for the bundles of logs at the base of the trees
    .collect 13872,8 --Collect Bundle of Wood (x8)
step
    #label Bundles
    .goto Elwynn Forest,79.8,55.5,60 >> Go toward the guard's corpse
step
    .goto Elwynn Forest,79.8,55.5
    >> Kill mobs surrounding the corpse. Pull the 2 mobs in front of the huts, move away and sheep one whilst killing the other, then kill the sheeped mob. Loot the carcass on the ground
    >> Be careful as this quest can be difficult
    .turnin 45 >> Turn in Discover Rolf's Fate
    .accept 71 >> Accept Report to Thomas
step
    .goto Elwynn Forest,76.8,62.4,40,0
    .goto Elwynn Forest,83.7,59.4,40,0
    .goto Elwynn Forest,76.8,62.4,40,0
    .goto Elwynn Forest,83.7,59.4,40,0
    .goto Elwynn Forest,76.8,62.4,40,0
    .goto Elwynn Forest,83.7,59.4,40,0
    >>Start running back, finish off the bundles
    .collect 13872,8 --Collect Bundle of Wood (x8)
step
    #label Bundles2
    .goto Elwynn Forest,81.382,66.112
.target Supervisor Raelen
>>Talk to |cRXP_FRIENDLY_Supervisor Raelen|r
    .turnin 5545 >> Turn in A Bundle of Trouble
step
    #label Prowlers
    .xp 9 >> Grind to 9
step
    #label Bears
    .goto Elwynn Forest,79.457,68.789
.target Sara Timberlain
>>Talk to |cRXP_FRIENDLY_Sara Timberlain|r
    .accept 83 >> Accept Red Linen Goods
step
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
    #sticky
    #completewith Princess
    >>Keep an eye out for Westfall Deed from the Defias (lucky drop)
    .collect 1972,1,184 --Collect Westfall Deed (x1)
    .accept 184 >> Accept Furlbrow's Deed
step
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
    >>Start circling the farm, killing Defias and looting them for Bandanas
    .complete 83,1 --Collect Red Linen Bandana (x6)
    .isOnQuest 83
step
    #label Princess
    .goto Elwynn Forest,69.4,79.2
    >>Kill Princess. Use a Lesser Heal Potion from before if needed. Loot her for the Collar
    >>You can also jump back and forth between the fences on the edge of the farm to kill Princess and her guards
    .complete 88,1 --Collect Brass Collar (x1)
--N link
step
    #softcore
    #sticky
    #completewith next
    .goto Elwynn Forest,83.6,69.7,120 >>Die and respawn at the Spirit Healer if you're low health, otherwise just run back and handin
step
    .goto Elwynn Forest,79.5,68.9
.target Sara Timberlain
>>Talk to |cRXP_FRIENDLY_Sara Timberlain|r
    .turnin 83 >> Turn in Red Linen Goods
    .isQuestComplete 83
step
    .goto Redridge Mountains,7.87,73.85
    .zone Redridge Mountains >>Grind en route to Redridge
step
    #softcore
    #sticky
    #completewith next
    +Die to the mobs here
    .goto Redridge Mountains,11.2,78.4
step
    #softcore
    >>Respawn at the Spirit Healer
    .goto Redridge Mountains,20.8,56.6,100 >>Respawn at the Spirit Healer
step
    #softcore
    .goto Redridge Mountains,30.6,59.4
    .fp Redridge Mountains >> Get the Redridge Mountains flight path
step
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
>>Talk to |cRXP_FRIENDLY_William Pestle|r
    .turnin 112 >> Turn in Collecting Kelp
step
    .goto Elwynn Forest,42.2,65.8
>>Talk to |cRXP_FRIENDLY_Marshal Dughan|r
    .turnin 39 >> Turn in Deliver Thomas' Report
    .turnin 76 >> Turn in The Jasperlode Mine
.target Marshal Dughan
    .accept 239 >> Accept Westbrook Garrison Needs Help!
step
    .goto Elwynn Forest,41.706,65.544
.target Smith Argus
.target Verner Osgood
>>Talk to |cRXP_FRIENDLY_Verner Osgood|r
-->>Talk to |cRXP_FRIENDLY_Smith Argus|r
    .accept 1097 >> Accept Elmore's Task
step
    .goto Elwynn Forest,41.7,65.9
    .vendor >>vendor trash, repair
step
    .goto Elwynn Forest,43.283,65.721
.target William Pestle
>>Talk to |cRXP_FRIENDLY_William Pestle|r
    .accept 114 >> Accept The Escape
step
    >>Run out of the inn and go south
    .goto Elwynn Forest,43.2,89.6
.target Maybell Maclure
>>Talk to |cRXP_FRIENDLY_Maybell Maclure|r
    .turnin 114 >> Turn in The Escape
step
    .goto Elwynn Forest,34.660,84.482
.target Ma Stonefield
>>Talk to |cRXP_FRIENDLY_Ma Stonefield|r
    .turnin 88 >> Turn in Princess Must Die!
step
    .goto Elwynn Forest,24.2,74.5
.target Deputy Rainer
>>Talk to |cRXP_FRIENDLY_Deputy Rainer|r
    .turnin 239 >> Turn in Westbrook Garrison Needs Help!
step
    .isOnQuest 184
    .goto Westfall,60.0,19.4
.target Farmer Furlbrow
>>Talk to |cRXP_FRIENDLY_Farmer Furlbrow|r
    .turnin 184 >> Turn in Furlbrow's Deed
step
    .goto Westfall,59.918,19.416
.target Verna Furlbrow
>>Talk to |cRXP_FRIENDLY_Verna Furlbrow|r
    .accept 36 >> Accept Westfall Stew
step
    .goto Westfall,56.416,30.519
.target Salma Saldean
>>Talk to |cRXP_FRIENDLY_Salma Saldean|r
    .turnin 36 >> Turn in Westfall Stew
step
    #softcore
    #sticky
    #completewith next
    .goto Westfall,51.7,49.4,150 >> Die and respawn at the Spirit Healer, or run to Sentinel Hill
step
    .goto Westfall,56.327,47.520
.target Gryan Stoutmantle
>>Talk to |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .turnin 109 >> Turn in Report to Gryan Stoutmantle
step
    .goto Westfall,57.002,47.169
    .vendor >>vendor trash
.target Quartermaster Lewis
>>Talk to |cRXP_FRIENDLY_Quartermaster Lewis|r
    .accept 6181 >> Accept A Swift Message
step
    #phase 3-6
    .goto Westfall,56.416,30.519
    .xp 11+3750 >> Grind to 3750+/8800xp
step
    .goto Westfall,56.6,52.6
    .fp Sentinel Hill >> Get the Sentinel Hill flight path
>>Talk to |cRXP_FRIENDLY_Thor|r
    .turnin 6181 >> Turn in A Swift Message
.target Thor
    .accept 6281 >> Accept Continue To Stormwind
    .fly Stormwind >> Fly to Stormwind
step
    .goto StormwindClassic,56.2,64.6
    >>Choose rockets. These have very good damage, and can be used for splitpulling
.target Morgan Pestle
>>Talk to |cRXP_FRIENDLY_Morgan Pestle|r
    .turnin 61 >> Turn in Shipment to Stormwind
step
    #era/som
    .goto StormwindClassic,57.1,57.7
    .trainer >> Train 1h Swords
step
    .goto StormwindClassic,74.3,47.2
.target Osric Strang
>>Talk to |cRXP_FRIENDLY_Osric Strang|r
    .turnin 6281 >> Turn in Continue to Stormwind
    >>Vendor and Repair
step
    #completewith next
    .goto StormwindClassic,51.8,12.1
.target Grimand Elmore
>>Talk to |cRXP_FRIENDLY_Grimand Elmore|r
    .turnin 1097 >> Turn in Elmore's Task
step
    .goto StormwindClassic,51.8,12.1
.target Grimand Elmore
>>Talk to |cRXP_FRIENDLY_Grimand Elmore|r
    .accept 353 >> Accept Stormpike's Delivery
step
    #sticky
    #completewith next
    .goto StormwindClassic,63.9,8.3,20 >>Enter the Deeprun Tram
step
    >>Take the tram when it arrives, then get off when it arrives on the other side
.target Monty
>>Talk to |cRXP_FRIENDLY_Monty|r
    .accept 6661 >> Accept Deeprun Rat Roundup
step
    >>Use your flute on the rats scattered around
    .complete 6661,1 --Rats Captured (x5)
step
.target Monty
>>Talk to |cRXP_FRIENDLY_Monty|r
    .turnin 6661 >> Turn in Deeprun Rat Roundup
step
    .goto Ironforge,77.0,51.0,30 >>Enter Ironforge
step
    .goto Ironforge,55.501,47.742
    .fp Ironforge >> Get the Ironforge flight path
step
    #phase 3-6
    .goto Ironforge,27.17,8.57
     .trainer >> Train your class spells
step
    #sticky
    #completewith next
    .goto Dun Morogh,53.5,34.9,100 >>Run out of Ironforge
step
    .goto Dun Morogh,60.1,52.6,50,0
    .goto Dun Morogh,63.1,49.8
.target Rudra Amberstill
>>Talk to |cRXP_FRIENDLY_Rudra Amberstill|r
    .accept 314 >> Accept Protecting the Herd
step
    #sticky
    #completewith next
    .goto Dun Morogh,62.3,50.3,14,0
    .goto Dun Morogh,62.2,49.4,12 >> Run up this part of the mountain
step
    >>Kill Vagash. Loot him for his Fang
    >>Kite him to the guard south of the ranch. Make sure you do 51%+ damage to him
    >>Be careful as this quest can be difficult
    .goto Dun Morogh,62.6,46.1
    .goto Dun Morogh,62.78,54.60,0
    .complete 314,1 --Collect Fang of Vagash (1)
--N add video tutorial
step
    .goto Dun Morogh,63.1,49.8
.target Rudra Amberstill
>>Talk to |cRXP_FRIENDLY_Rudra Amberstill|r
    .turnin 314 >> Turn in Protecting the Herd
step
    >>Grind a little en route
    .goto Dun Morogh,68.6,54.7
    .vendor >>Vendor, buy food+water
step
    .goto Dun Morogh,68.7,56.0
.target Senator Mehr Stonehallow
>>Talk to |cRXP_FRIENDLY_Senator Mehr Stonehallow|r
    .accept 433 >> Accept The Public Servant
step
    .goto Dun Morogh,69.084,56.330
.target Foreman Stonebrow
>>Talk to |cRXP_FRIENDLY_Foreman Stonebrow|r
    .accept 432 >> Accept Those Blasted Troggs!
step
    .goto Dun Morogh,70.6,56.6,30,0
    .goto Dun Morogh,70.8,53.3,30,0
    .goto Dun Morogh,71.9,50.7,30,0
    .goto Dun Morogh,72.9,53.1,30,0
    .goto Dun Morogh,70.6,56.6,30,0
    .goto Dun Morogh,70.8,53.3,30,0
    .goto Dun Morogh,71.9,50.7,30,0
    .goto Dun Morogh,72.9,53.1,30,0
    >>Kill Troggs in the cave
    .complete 432,1 --Kill Rockjaw Skullthumper (6)
    .complete 433,1 --Kill Rockjaw Bonesnapper (10)
step
    #era/som
    .xp 10+6350 >>Grind until 6350+/7600
step
    .goto Dun Morogh,69.084,56.330
.target Foreman Stonebrow
>>Talk to |cRXP_FRIENDLY_Foreman Stonebrow|r
    .turnin 432 >> Turn in Those Blasted Troggs!
step
    #completewith next
    .goto Dun Morogh,68.9,55.9
    .vendor >> vendor trash, repair
step
    .goto Dun Morogh,68.7,56.0
.target Senator Mehr Stonehallow
>>Talk to |cRXP_FRIENDLY_Senator Mehr Stonehallow|r
    .turnin 433 >> Turn in The Public Servant
step
    #era/som--xpgate
    .xp 11
step
    .goto Dun Morogh,68.6,54.7
    .vendor >>vendor trash, buy x30 level 5 drink from Kazan
    .trainer >> Train Cooking from Ghilm. You'll need this to pick up 2 extra quests later
step
    .goto Dun Morogh,83.892,39.188
.target Pilot Hammerfoot
>>Talk to |cRXP_FRIENDLY_Pilot Hammerfoot|r
    .accept 419 >> Accept The Lost Pilot
step
    .goto Dun Morogh,79.7,36.2
    .turnin 419 >> Turn in The Lost Pilot
    .accept 417 >> Accept A Pilot's Revenge
step
    >>Kill Mangeclaw. Loot him for his Claw
    .goto Dun Morogh,80.0,36.4
    .complete 417,1 --Collect Mangy Claw (x1)
step
    .goto Dun Morogh,83.892,39.188
.target Pilot Hammerfoot
>>Talk to |cRXP_FRIENDLY_Pilot Hammerfoot|r
    .turnin 417 >> Turn in A Pilot's Revenge
step
    .goto Dun Morogh,84.4,31.1,25 >>Go through the tunnel to Loch Modan
]])

RXPGuides.RegisterGuide([[
#classic
#tbc
<< Gnome Mage
#name 1-10 Dun Morogh Mage AoE
#version 1
#group RestedXP Alliance Mage
#defaultfor Dwarf/Gnome
#next 10-12 Loch Modan Mage AoE
step
    #era/som
    #sticky
    #completewith next
    .goto Dun Morogh,29.927,71.201
    +You have selected a guide meant for Gnomes and Dwarves. You should choose the same starter zone that you start in << Human
    +Note that you have selected the AoE guide. AoE is typically a lot harder than single target mage, but a LOT faster
step
    #phase 3-6
    #sticky
    #completewith next
    .goto Dun Morogh,29.927,71.201
    +You have selected a guide meant for Gnomes and Dwarves. You should choose the same starter zone that you start in << Human
    +Note that you have selected the AoE guide. AoE is typically a lot harder than single target mage, but with the recent 100% quest xp changes, is also slower
step
    >>Delete your Hearthstone
    .goto Dun Morogh,29.927,71.201
.target Sten Stoutarm
>>Talk to |cRXP_FRIENDLY_Sten Stoutarm|r
    .accept 179 >> Accept Dwarven Outfitters
step
    >>Kill Wolves. Loot them for Meat
    .goto Dun Morogh,28.7,74.8
    .complete 179,1 --Collect Tough Wolf Meat (x8)
step
    .xp 2 >> Grind to 2
step
    .goto Dun Morogh,30.0,71.5
    >>vendor trash. Buy 15 Water. Grind extra wolves if you don't have enough money
    .collect 159,15 --Collect Refreshing Spring Water (x15)
step
    .goto Dun Morogh,29.927,71.201
>>Talk to |cRXP_FRIENDLY_Sten Stoutarm|r
    .turnin 179 >> Turn in Dwarven Outfitters
.target Sten Stoutarm
    .accept 233 >> Accept Coldridge Valley Mail Delivery
    .accept 3114 >> Accept Glyphic Memorandum
step
    .goto Dun Morogh,29.7,71.2
.target Balir Frosthammer
>>Talk to |cRXP_FRIENDLY_Balir Frosthammer|r
    .accept 170 >> Accept A New Threat
step
    #sticky
    #completewith Rockjaw
    >>Kill Normal Rockjaw Troggs that you see
    .complete 170,1 --Kill Rockjaw Trogg (x6)
step
    .goto Dun Morogh,26.9,72.7,30,0
    .goto Dun Morogh,25.1,72.1,30,0
    .goto Dun Morogh,26.9,72.7,30,0
    .goto Dun Morogh,25.1,72.1,30,0
    >>Kill Burly Rockjaw Troggs
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
step
    .goto Dun Morogh,22.601,71.433
>>Talk to |cRXP_FRIENDLY_Talin Keeneye|r
    .turnin 233 >> Turn in Coldridge Valley Mail Delivery
.target Talin Keeneye
    .accept 183 >> Accept The Boar Hunter
    .accept 234 >> Accept Coldridge Valley Mail Delivery
step
    .goto Dun Morogh,22.2,72.5,40,0
    .goto Dun Morogh,20.5,71.4,40,0
    .goto Dun Morogh,21.1,69.0,40,0
    .goto Dun Morogh,22.8,69.6,40,0
    .goto Dun Morogh,22.2,72.5,40,0
    .goto Dun Morogh,20.5,71.4,40,0
    .goto Dun Morogh,21.1,69.0,40,0
    .goto Dun Morogh,22.8,69.6,40,0
    >>Kill Boars in the area
    .complete 183,1 --Kill Small Crag Boar (x12)
step
    .goto Dun Morogh,22.601,71.433
.target Talin Keeneye
>>Talk to |cRXP_FRIENDLY_Talin Keeneye|r
    .turnin 183 >> Turn in The Boar Hunter
step
    .xp 3+860 >> Grind to 860+/1400xp
    .goto Dun Morogh,23.0,75.0,40,0
    .goto Dun Morogh,24.2,72.5,40,0
    .goto Dun Morogh,27.7,76.3,40,0
    .goto Dun Morogh,23.0,75.0,40,0
    .goto Dun Morogh,24.2,72.5,40,0
    .goto Dun Morogh,27.7,76.3,40,0
step
    #label Rockjaw
    .goto Dun Morogh,25.076,75.713
>>Talk to |cRXP_FRIENDLY_Grelin Whitebeard|r
    .turnin 234 >> Turn in Coldridge Valley Mail Delivery
.target Grelin Whitebeard
    .accept 182 >> Accept The Troll Cave
step
    .goto Dun Morogh,25.0,76.0
.target Nori Pridedrift
>>Talk to |cRXP_FRIENDLY_Nori Pridedrift|r
    .accept 3364 >> Accept Scalding Mornbrew Delivery
    >> Once accepted, a 5 minute timer will start. Relax and follow the guide
step
    .goto Dun Morogh,28.7,77.5
    >>Go up here and kill Troggs if you're not done with them by now
    .complete 170,1 --Kill Rockjaw Trogg (x6)
step
    #sticky
    #completewith Scalding1
    >>If you were too slow and failed the timed quest, go and pick it up again
    .goto Dun Morogh,25.0,76.0,0
.target Nori Pridedrift
>>Talk to |cRXP_FRIENDLY_Nori Pridedrift|r
    .accept 3364 >> Accept Scalding Mornbrew Delivery
    .goto Dun Morogh,28.8,66.4
.target Durnan Furcutter
>>Talk to |cRXP_FRIENDLY_Durnan Furcutter|r
    .turnin 3364 >> Turn in Scalding Mornbrew Delivery
step
    #label Scalding1
    .goto Dun Morogh,28.8,66.4
>>Talk to |cRXP_FRIENDLY_Durnan Furcutter|r
    .turnin 3364 >> Turn in Scalding Mornbrew Delivery
.target Durnan Furcutter
    .accept 3365 >> Accept Bring Back the Mug
    .vendor >> vendor trash
step
    .goto Dun Morogh,28.709,66.366
.target Marryk Nurribit
>>Talk to |cRXP_FRIENDLY_Marryk Nurribit|r
    .turnin 3114 >> Turn in Glyphic Memorandum
    .trainer >> Train your class spells
step
    >>Run back out the bunker
    .goto Dun Morogh,29.7,71.2
.target Balir Frosthammer
>>Talk to |cRXP_FRIENDLY_Balir Frosthammer|r
    .turnin 170 >> Turn in A New Threat
step
    .goto Dun Morogh,30.0,71.5
    .vendor >>Vendor, buy 10 water
    .collect 159,10 --Collect Refreshing Spring Water (x10)
step
    .goto Dun Morogh,26.3,79.2,30,0
    .goto Dun Morogh,22.7,79.3,30,0
    .goto Dun Morogh,20.9,75.7,30,0
    .goto Dun Morogh,22.7,79.3,30,0
    .goto Dun Morogh,20.9,75.7,30,0
    .goto Dun Morogh,22.7,79.3,30,0
    .goto Dun Morogh,20.9,75.7,30,0
    >>Kill Frostmane Troll Whelps
    .complete 182,1 --Kill Frostmane Troll Whelp (x14)
step
    #sticky
    #label Mug
    .goto Dun Morogh,25.0,76.0
.target Nori Pridedrift
>>Talk to |cRXP_FRIENDLY_Nori Pridedrift|r
    .turnin 3365 >> Turn in Bring Back the Mug
step
    .goto Dun Morogh,25.076,75.713
>>Talk to |cRXP_FRIENDLY_Grelin Whitebeard|r
    .turnin 182 >> Turn in The Troll Cave
.target Grelin Whitebeard
    .accept 218 >> Accept The Stolen Journal
step
    #requires Mug
    .goto Dun Morogh,26.8,79.9,30,0
    .goto Dun Morogh,29.0,79.0,15,0
    .goto Dun Morogh,30.6,80.3
    >>Enter the Troll cave. Kill Grik'nir, then loot him for Grelin's journal
    .complete 218,1 --Collect Grelin Whitebeard's Journal (x1)
step
    >>Grind a bit back to here
    .goto Dun Morogh,25.1,75.8
>>Talk to |cRXP_FRIENDLY_Grelin Whitebeard|r
    .turnin 218 >> Turn in The Stolen Journal
.target Grelin Whitebeard
    .accept 282 >> Accept Senir's Observations
step
    >> Grind some mobs up to here
    .goto Dun Morogh,33.484,71.841
>>Talk to |cRXP_FRIENDLY_Mountaineer Thalos|r
    .turnin 282 >> Turn in Senir's Observations
.target Mountaineer Thalos
    .accept 420 >> Accept Senir's Observations
step
    .goto Dun Morogh,33.9,72.2
.target Hands Springsprocket
>>Talk to |cRXP_FRIENDLY_Hands Springsprocket|r
    .accept 2160 >> Accept Supplies to Tannok
step
    .goto Dun Morogh,34.1,71.6,20,0
    .goto Dun Morogh,35.7,66.0,20 >>Go through the tunnel
step
    #sticky
    #completewith BoarMeat44
    >> Kill boars to get 4 Boar Meat for later
    .complete 317,1 --Collect Chunk of Boar Meat (x4)
step
    #sticky
    #completewith Ribs
    >> Kill boars to get 6 Boar Ribs for later
    .collect 2886,6 --Collect Crag Boar Rib (x6)
step
    >>grind boars north-east to Kharanos
    .goto Dun Morogh,36.4,62.9,45,0
    .goto Dun Morogh,37.7,60.5,45,0
    .goto Dun Morogh,43.9,55.7
    .xp 5+2415 >> Grind to 2415/+2800xp
step
    #softcore
    .goto Dun Morogh,47.0,55.1,120 >> Die and respawn at the Spirit Healer, or run to Kharanos. Make sure your subzone is NOT Coldridge Pass
step
    .goto Dun Morogh,46.726,53.826
.target Senir Whitebeard
>>Talk to |cRXP_FRIENDLY_Senir Whitebeard|r
    .turnin 420 >> Turn in Senir's Observations
step
    #completewith next
    .goto Dun Morogh,46.7,53.5
    .vendor >>vendor trash
step
    .goto Dun Morogh,46.8,52.4
.target Ragnar Thunderbrew
>>Talk to |cRXP_FRIENDLY_Ragnar Thunderbrew|r
    .accept 384 >> Accept Beer Basted Boar Ribs
step
    .goto Dun Morogh,48.3,57.0
    .xp 6 >> Grind to 6
step
    .goto Dun Morogh,47.217,52.195
.target Tannok Frosthammer
>>Talk to |cRXP_FRIENDLY_Tannok Frosthammer|r
    .turnin 2160 >> Turn in Supplies to Tannok
step
    >>Upstairs
    .goto Dun Morogh,47.5,52.1
    .trainer >> Train your class spells
step
    .goto Dun Morogh,47.4,52.5
    .home >> Set your Hearthstone to Thunderbrew Distillery
    .vendor >> Buy as much level 5 drink as you can afford
step
    .goto Dun Morogh,46.021,51.676
.target Tharek Blackstone
>>Talk to |cRXP_FRIENDLY_Tharek Blackstone|r
    .accept 400 >> Accept Tools for Steelgrill
step
    .goto Dun Morogh,49.426,48.410
    >>DON'T kill bears en route
.target Pilot Bellowfiz
>>Talk to |cRXP_FRIENDLY_Pilot Bellowfiz|r
    .accept 317 >> Accept Stocking Jetsteam
step
    .goto Dun Morogh,49.622,48.612
.target Pilot Stonegear
>>Talk to |cRXP_FRIENDLY_Pilot Stonegear|r
    .accept 313 >> Accept The Grizzled Den
step
    .goto Dun Morogh,50.4,49.1
.target Beldin Steelgrill
>>Talk to |cRXP_FRIENDLY_Beldin Steelgrill|r
    .turnin 400 >> Turn in Tools for Steelgrill
step
    #label BoarMeat44
    .goto Dun Morogh,50.084,49.420
.target Loslor Rudge
>>Talk to |cRXP_FRIENDLY_Loslor Rudge|r
    .accept 5541 >> Accept Ammo for Rumbleshot
step
    .goto Dun Morogh,52.0,50.1,40,0
    .goto Dun Morogh,51.5,53.9,40,0
    .goto Dun Morogh,50.1,53.9,40,0
    .goto Dun Morogh,49.9,50.9,40,0
    .goto Dun Morogh,48.0,49.5,40,0
    .goto Dun Morogh,48.2,46.9,40,0
    .goto Dun Morogh,43.5,52.5,40,0
    .goto Dun Morogh,52.0,50.1,40,0
    .goto Dun Morogh,51.5,53.9,40,0
    .goto Dun Morogh,50.1,53.9,40,0
    .goto Dun Morogh,49.9,50.9,40,0
    .goto Dun Morogh,48.0,49.5,40,0
    .goto Dun Morogh,48.2,46.9,40,0
    .goto Dun Morogh,43.5,52.5,40,0
    .goto Dun Morogh,52.0,50.1,40,0
    .goto Dun Morogh,51.5,53.9,40,0
    .goto Dun Morogh,50.1,53.9,40,0
    .goto Dun Morogh,49.9,50.9,40,0
    .goto Dun Morogh,48.0,49.5,40,0
    .goto Dun Morogh,48.2,46.9,40,0
    .goto Dun Morogh,43.5,52.5,40,0
    .goto Dun Morogh,52.0,50.1,40,0
    .goto Dun Morogh,51.5,53.9,40,0
    .goto Dun Morogh,50.1,53.9,40,0
    .goto Dun Morogh,49.9,50.9,40,0
    .goto Dun Morogh,48.0,49.5,40,0
    .goto Dun Morogh,48.2,46.9,40,0
    .goto Dun Morogh,43.5,52.5,40,0
    >>Get the items for Stocking Jetsteam
    .complete 317,1 --Collect Chunk of Boar Meat (x4)
    .complete 317,2 --Collect Thick Bear Fur (x2)
step
    .goto Dun Morogh,49.426,48.410
>>Talk to |cRXP_FRIENDLY_Pilot Bellowfiz|r
    .turnin 317 >> Turn in Stocking Jetsteam
.target Pilot Bellowfiz
    .accept 318 >> Accept Evershine
step
    >>Go back to the Inn
    .goto Dun Morogh,46.9,52.1,20,0
    .goto Dun Morogh,47.4,52.5
    .vendor >> Buy as much level 5 drink as you can afford
    >>You can buy a Skinning Knife outside the inn if you want, it's better than a staff until you get a +stats weapon
step
    .goto Dun Morogh,42.5,54.8,40,0
    .goto Dun Morogh,42.4,52.2,40,0
    .goto Dun Morogh,41.0,49.4,40,0
    .goto Dun Morogh,42.5,54.8,40,0
    .goto Dun Morogh,42.4,52.2,40,0
    .goto Dun Morogh,41.0,49.4,40,0
    .goto Dun Morogh,42.5,54.8,40,0
    .goto Dun Morogh,42.4,52.2,40,0
    .goto Dun Morogh,41.0,49.4,40,0
    .goto Dun Morogh,42.5,54.8,40,0
    .goto Dun Morogh,42.4,52.2,40,0
    .goto Dun Morogh,41.0,49.4,40,0
    >> Go into the cave. Kill Wendigos. Loot them for their Manes
    .complete 313,1 --Collect Wendigo Mane (x8)
step
    >>Loot the crate
    .goto Dun Morogh,44.1,56.9
    .complete 5541,1 --Collect Rumbleshot's Ammo (x1)
step
    #label BearFur
    .goto Dun Morogh,40.6,62.6,30,0
    .goto Dun Morogh,40.682,65.130
.target Hegnar Rumbleshot
>>Talk to |cRXP_FRIENDLY_Hegnar Rumbleshot|r
    .turnin 5541 >> Turn in Ammo for Rumbleshot
    .vendor >> Vendor and repair
step
    .xp 7 >> Grind to 7
step
    >>Grind some mobs en route
    .goto Dun Morogh,35.2,56.4,50,0
    .goto Dun Morogh,36.0,52.0,50,0
    .goto Dun Morogh,34.6,51.7
.target Tundra MacGrann
>>Talk to |cRXP_FRIENDLY_Tundra MacGrann|r
    .accept 312 >> Accept Tundra MacGrann's Stolen Stash
step
    .goto Dun Morogh,30.5,46.0
    .vendor >> Vendor. Buy up to 20 level 5 drink
step
    #sticky
    #label Evershine
    .goto Dun Morogh,30.2,45.8
>>Talk to |cRXP_FRIENDLY_Rejold Barleybrew|r
    .turnin 318 >> Turn in Evershine
.target Rejold Barleybrew
    .accept 319 >> Accept A Favor for Evershine
    .accept 315 >> Accept The Perfect Stout
step
    .goto Dun Morogh,30.186,45.531
.target Marleth Barleybrew
>>Talk to |cRXP_FRIENDLY_Marleth Barleybrew|r
    .accept 310 >> Accept Bitter Rivals
step
    #label Ribs
    #requires Evershine
    .goto Dun Morogh,31.5,38.9,60,0
    .goto Dun Morogh,28.3,39.9,60,0
    .goto Dun Morogh,28.7,43.7,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,30.0,51.8,60,0
    .goto Dun Morogh,31.5,38.9,60,0
    .goto Dun Morogh,28.3,39.9,60,0
    .goto Dun Morogh,28.7,43.7,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,30.0,51.8,60,0
    >> Kill Bears, Boars and Leopards. Go from north->west->south
    .complete 319,1 --Kill Ice Claw Bear (x6)
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .complete 319,3 --Kill Snow Leopard (x8)
step
    >>Finish off getting the Boar Ribs
    .complete 384,1 --Collect Crag Boar Rib (x6)
step
    .goto Dun Morogh,30.189,45.725
>>Talk to |cRXP_FRIENDLY_Rejold Barleybrew|r
    .turnin 319 >> Turn in A Favor for Evershine
.target Rejold Barleybrew
    .accept 320 >> Accept Return to Bellowfiz
step
    .isQuestTurnedIn 384
    .xp 7+4360 >>Grind until 4360+/4500xp
step
    .xp 7+3735 >>Grind until 3735+/4500xp
step
    .hs >> Hearth to Kharanos
step
    .goto Dun Morogh,47.4,52.5
    >> Buy a Rhapsody Malt and Thunder Ale from Belm
    .complete 384,2 --Collect Rhapsody Malt (x1)
    .collect 2686,1 --Collect Thunder Ale (x1)
step
    .goto Dun Morogh,47.6,52.4,10,0
    .goto Dun Morogh,47.71,52.69
    >>Go downstairs, then talk to Jarven, and give him the Thunder Ale
    >>Wait for the barrel mouseover to become "unguarded", then handin
    .turnin 310 >> Turn in Bitter Rivals
    .accept 311 >> Accept Return to Marleth
step
    .goto Dun Morogh,46.8,52.4
.target Ragnar Thunderbrew
>>Talk to |cRXP_FRIENDLY_Ragnar Thunderbrew|r
    .turnin 384 >> Turn in Beer Basted Boar Ribs
     >>Sell the recipe when you next vendor
step
    .xp 8 >> Grind to 8
step
    .goto Dun Morogh,47.5,52.1
    .trainer >> Train your class spells
    >>Make sure you train Polymorph
step
    .goto Dun Morogh,47.4,52.5
    .vendor >> Buy up to 30 level 5 drink from the innkeeper
step
    .goto Dun Morogh,46.726,53.826
.target Senir Whitebeard
>>Talk to |cRXP_FRIENDLY_Senir Whitebeard|r
    .accept 287 >> Accept Frostmane Hold
step
    .goto Dun Morogh,49.622,48.612
.target Pilot Stonegear
>>Talk to |cRXP_FRIENDLY_Pilot Stonegear|r
    .turnin 313 >> Turn in The Grizzled Den
step
    .goto Dun Morogh,49.426,48.410
.target Pilot Bellowfiz
>>Talk to |cRXP_FRIENDLY_Pilot Bellowfiz|r
    .turnin 320 >> Turn in Return to Bellowfiz
step
    #era/som
    >>Inside the building
    .goto Dun Morogh,45.8,49.4
.target Razzle Sprysprocket
>>Talk to |cRXP_FRIENDLY_Razzle Sprysprocket|r
    .accept 412 >> Accept Operation Recombobulation
step
    .goto Dun Morogh,43.1,45.0,25,0
    .goto Dun Morogh,42.1,45.4,25 >> Run up the ramp to Shimmerweed
step
    .goto Dun Morogh,40.9,45.3,30,0
    .goto Dun Morogh,41.5,43.6,30,0
    .goto Dun Morogh,39.7,40.0,30,0
    .goto Dun Morogh,42.1,34.3,30,0
    >>Clear mobs in this area. Be careful if you need to clear the middle camp. You can pull the mobs in the huts and line of sight (LoS) them behind the huts if you need 2 more mobs. If you get unlucky, run to the other area
    >>Loot boxes on the ground
    .complete 315,1 --Collect Shimmerweed (x6)
step
    >> Polymorph Old Icebeard, then loot the meats
    .goto Dun Morogh,38.5,53.9
    .complete 312,1 --Collect MacGrann's Dried Meats (x1)
step
    .goto Dun Morogh,34.6,51.7
.target Tundra MacGrann
>>Talk to |cRXP_FRIENDLY_Tundra MacGrann|r
    .turnin 312 >> Turn in Tundra MacGrann's Stolen Stash
step
    .goto Dun Morogh,30.4,45.8
    .vendor >> Buy up to 20 more level 5 drink
step
    #sticky
    #label Stout
    .goto Dun Morogh,30.189,45.725
>>Talk to |cRXP_FRIENDLY_Rejold Barleybrew|r
    .turnin 315 >> Turn in The Perfect Stout
.target Rejold Barleybrew
    .accept 413 >> Accept Shimmer Stout
step
    .goto Dun Morogh,30.186,45.531
.target Marleth Barleybrew
>>Talk to |cRXP_FRIENDLY_Marleth Barleybrew|r
    .turnin 311 >> Turn in Return to Marleth
step
    #era/som
    #requires Stout
    .goto Dun Morogh,27.2,43.0,40,0
    .goto Dun Morogh,24.8,39.3,40,0
    .goto Dun Morogh,25.6,43.4,40,0
    .goto Dun Morogh,24.3,44.0,40,0
    .goto Dun Morogh,25.4,45.4,40,0
    >>Kill Leper Gnomes. Loot them for Gears and Cogs
    .complete 412,2 --Collect Gyromechanic Gear (x8)
    .complete 412,1 --Collect Restabilization Cog (x8)
step
    .xp 9 >> Grind to 9
step
    .goto Dun Morogh,24.5,50.8,35 >>Enter the cave
step
    .goto Dun Morogh,22.1,50.3,40,0
    .goto Dun Morogh,21.3,52.9,40,0
    >>Kill Headhunters inside the cave
    .complete 287,1 --Kill Frostmane Headhunter (x5)
step
    #hardcore
    >>Carefully grind down into this nook in the cave
    .goto Dun Morogh,23.0,52.2
    .complete 287,2 --Fully explore Frostmane Hold
step
    #softcore
    .goto Dun Morogh,23.4,51.5,15 >>Go back up the cave
step
    #softcore
    >>Jump down, you die after
    .goto Dun Morogh,23.0,52.2
    .complete 287,2 --Fully explore Frostmane Hold
step
    #softcore
    .deathskip >> Die and respawn at the Spirit Healer
step
    #hardcore
   .goto Dun Morogh,46.726,53.826,150 >> Hearth if its up, otherwise grind back to Kharanos
step
    .goto Dun Morogh,46.726,53.826
>>Talk to |cRXP_FRIENDLY_Senir Whitebeard|r
    .turnin 287 >> Turn in Frostmane Hold
.target Senir Whitebeard
    .accept 291 >> Accept The Reports
step
    #era/som
    .goto Dun Morogh,45.8,49.4
.target Razzle Sprysprocket
>>Talk to |cRXP_FRIENDLY_Razzle Sprysprocket|r
    .turnin 412 >> Turn in Operation Recombobulation
step
    .goto Dun Morogh,60.1,52.6,50,0
    .goto Dun Morogh,63.1,49.8
.target Rudra Amberstill
>>Talk to |cRXP_FRIENDLY_Rudra Amberstill|r
    .accept 314 >> Accept Protecting the Herd
step
    #sticky
    #completewith next
    .goto Dun Morogh,62.3,50.3,14,0
    .goto Dun Morogh,62.2,49.4,10 >>Run up this part of the mountain
step
    >>Kill Vagash. Loot him for his Fang
    >>Kite him to the guard south of the ranch. Make sure you do 51%+ damage to him
    >>Be careful as this quest can be difficult
    .goto Dun Morogh,62.6,46.1
    .complete 314,1 --Collect Fang of Vagash (1)
--N Video tutorial needed
step
    .goto Dun Morogh,63.1,49.8
.target Rudra Amberstill
>>Talk to |cRXP_FRIENDLY_Rudra Amberstill|r
    .turnin 314 >> Turn in Protecting the Herd
step
    >>Grind a little en route
    .goto Dun Morogh,68.6,54.7
    .vendor >>vendor trash. Buy some food/water if needed
step
    .goto Dun Morogh,68.7,56.0
.target Senator Mehr Stonehallow
>>Talk to |cRXP_FRIENDLY_Senator Mehr Stonehallow|r
    .accept 433 >> Accept The Public Servant
step
    #completewith next
    .goto Dun Morogh,68.9,55.9
    .vendor >> vendor trash, repair
step
    .goto Dun Morogh,69.084,56.330
.target Foreman Stonebrow
>>Talk to |cRXP_FRIENDLY_Foreman Stonebrow|r
    .accept 432 >> Accept Those Blasted Troggs!
step
    .goto Dun Morogh,70.6,56.6,30,0
    .goto Dun Morogh,70.8,53.3,30,0
    .goto Dun Morogh,71.9,50.7,30,0
    .goto Dun Morogh,72.9,53.1,30,0
    .goto Dun Morogh,70.6,56.6,30,0
    .goto Dun Morogh,70.8,53.3,30,0
    .goto Dun Morogh,71.9,50.7,30,0
    .goto Dun Morogh,72.9,53.1,30,0
    >>Kill Troggs in the cave
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .complete 433,1 --Kill Rockjaw Bonesnapper (x10)
step
    .goto Dun Morogh,69.084,56.330
.target Foreman Stonebrow
>>Talk to |cRXP_FRIENDLY_Foreman Stonebrow|r
    .turnin 432 >> Turn in Those Blasted Troggs!
step
    #completewith next
    .goto Dun Morogh,68.9,55.9
    .vendor >> vendor trash, repair
step
    .goto Dun Morogh,68.7,56.0
.target Senator Mehr Stonehallow
>>Talk to |cRXP_FRIENDLY_Senator Mehr Stonehallow|r
    .turnin 433 >> Turn in The Public Servant
step
    .goto Dun Morogh,67.1,59.7,40,0
    .goto Dun Morogh,70.7,58.2,40,0
    .goto Dun Morogh,71.0,53.9,40,0
    .xp 10 >> Grind to 10 at the troggs
step
    .goto Dun Morogh,68.6,54.7
    .vendor >>vendor trash, buy up to 30 level 5 drink from Kazan
    .trainer >> Train Cooking from Ghilm. You'll need this to pick up 2 extra quests later
step
    .goto Dun Morogh,83.8,39.2
.target Pilot Hammerfoot
>>Talk to |cRXP_FRIENDLY_Pilot Hammerfoot|r
    .accept 419 >> Accept The Lost Pilot
step
    >>Grind en route
    .goto Dun Morogh,79.7,36.2
    .turnin 419 >> Turn in The Lost Pilot
    .accept 417 >> Accept A Pilot's Revenge
step
    >>Kill Mangeclaw. Loot him for his Claw
    .goto Dun Morogh,80.0,36.4
    .complete 417,1 --Collect Mangy Claw (x1)
step
    .goto Dun Morogh,83.892,39.188
.target Pilot Hammerfoot
>>Talk to |cRXP_FRIENDLY_Pilot Hammerfoot|r
    .turnin 417 >> Turn in A Pilot's Revenge
step
    >>Go back through the tunnel you came from
    .goto Dun Morogh,79.6,50.7,50,0
    .goto Dun Morogh,82.3,53.5,25,0
    .goto Dun Morogh,86.278,48.812
>>Talk to |cRXP_FRIENDLY_Mountaineer Barleybrew|r
    .turnin 413 >> Turn in Shimmer Stout
.target Mountaineer Barleybrew
    .accept 414 >> Accept Stout to Kadrell
]])

RXPGuides.RegisterGuide([[
#classic
#tbc
<< Alliance Mage
#name 10-12 Loch Modan Mage AoE
#version 1
#group RestedXP Alliance Mage
#defaultfor Human Mage/Gnome Mage
#next 12-18 Darkshore Mage AoE
step
    #era/som
    #completewith next
    +As you quest through Loch Modan, save ALL of the Chunks of Boar Meat you get and DO NOT vendor it. You'll need it for later
step << Gnome
    .goto Loch Modan,22.071,73.127
.target Mountaineer Cobbleflint
>>Talk to |cRXP_FRIENDLY_Mountaineer Cobbleflint|r
    .accept 224 >> Accept In Defense of the King's Lands
step << Gnome
    .goto Loch Modan,23.233,73.675
    >>Go into the bunker from behind
.target Captain Rugelfuss
>>Talk to |cRXP_FRIENDLY_Captain Rugelfuss|r
    .accept 267 >> Accept The Trogg Threat
step << Gnome
    .goto Loch Modan,29.9,68.2,45 >> Run to the Troggs Entrance
step << Gnome
    .goto Loch Modan,30.0,72.4,50,0
    .goto Loch Modan,34.7,71.6,50,0
    .goto Loch Modan,30.9,81.1,50,0
    .goto Loch Modan,30.0,72.4,50,0
    .goto Loch Modan,34.7,71.6,50,0
    .goto Loch Modan,30.9,81.1,50,0
    >>Kill Stonesplinter Troggs. Loot them for their Teeth
    >>Be careful as this quest can be difficult. Run if you misspull 2 mobs at once
    .complete 224,1 --Kill Stonesplinter Trogg (x10)
    .complete 224,2 --Kill Stonesplinter Scout (x10)
    .complete 267,1 --Collect Trogg Stone Tooth (x8)
step << Gnome
    .goto Loch Modan,22.071,73.127
.target Mountaineer Cobbleflint
>>Talk to |cRXP_FRIENDLY_Mountaineer Cobbleflint|r
    .turnin 224 >> Turn in Defense of the King's Lands
step << Gnome
    .goto Loch Modan,23.233,73.675
    >>Go into the bunker from behind
.target Captain Rugelfuss
>>Talk to |cRXP_FRIENDLY_Captain Rugelfuss|r
    .turnin 267 >> Turn in The Trogg Threat
step << Human
    .goto Loch Modan,24.1,18.2
    .vendor >>Vendor and repair
step << Human
    .goto Loch Modan,24.764,18.397
>>Talk to |cRXP_FRIENDLY_Mountaineer Stormpike|r
    .turnin 353 >> Turn in Stormpike's Delivery
.target Mountaineer Stormpike
    .accept 307 >> Accept Filthy Paws
step << Human
    #sticky
    #completewith next
    >>Kill Spiders in the zone for Spider Ichor
    .collect 3174,3 --Collect Spider Ichor (x3)
    >>Kill Bears in the zone for Bear Meat
    .collect 3173,3 --Collect Bear Meat (x3)
    >>Kill Boars in the zone for Boar Intestines
    .collect 3172,3 --Collect Boar Intestines (x3)
step << Human
    .goto Loch Modan,35.1,47.8,130 >>Grind mobs en route for cooking quest later
step
    >>Run up to Thelsamar. do NOT set your hearth << Gnome
    .goto Loch Modan,34.828,49.283
.target Vidra Hearthstove
>>Talk to |cRXP_FRIENDLY_Vidra Hearthstove|r
    .accept 418 >> Accept Thelsamar Blood Sausages
step << Human
    #sticky
    .abandon 1338 >> Abandon Stormpike's Order. This is to unlock Mountaineer Stormpike's Task
step
    .goto Loch Modan,34.8,48.6
    .vendor >>Buy 1-2 6 slot bags to fill your bag slots
step
    .goto Loch Modan,35.5,48.4
    .vendor >> Buy food/water (try to have 40 level 5 drink, 20 level 5 food)
step
    .goto Loch Modan,32.6,49.9,80.0,0
    .goto Loch Modan,37.2,46.1,80.0,0
    .goto Loch Modan,36.7,41.6
    >>Find Kadrell. He patrols along the Thelsamar road
.target Mountaineer Kadrell
>>Talk to |cRXP_FRIENDLY_Mountaineer Kadrell|r
    .accept 416 >> Accept Rat Catching
    .accept 1339 >> Accept Mountaineer Stormpike's Task
step
    #sticky
    #completewith Thelsamar1
    >>Kill Spiders in the zone for Thelsamar Blood Sausages
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
step
    #sticky
    #completewith Thelsamar1
    >>Kill Bears in the zone for Thelsamar Blood Sausages
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
step
    #sticky
    #completewith Thelsamar1
    >>Kill Boars in the zone for Thelsamar Blood Sausages
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
step << Gnome
    .goto Loch Modan,24.1,18.2
    .vendor >>Vendor and repair
step << Gnome
    .goto Loch Modan,24.764,18.397
>>Talk to |cRXP_FRIENDLY_Mountaineer Stormpike|r
    .turnin 1339 >> Turn in Mountaineer Stormpike's Task
.target Mountaineer Stormpike
    .accept 1338 >> Accept Stormpike's Order
    .accept 307 >> Accept Filthy Paws
step << Gnome
    #label Thelsamar1
    .goto Loch Modan,33.71,17.20,130 >>Grind some mobs for Boar Intestines, Bear Meat and Spider Ichor en route
step << Human
    #label Thelsamar1
    .goto Loch Modan,39.3,27.0,130 >>Grind some mobs for Boar Intestines, Bear Meat and Spider Ichor en route
step
    #sticky
    #completewith Gear
    >> Kill Tunnel Rats. Loot them for their Ears
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
step
    .goto Loch Modan,35.5,18.2,45 >>Go to the entrance of the cave whilst killing rats
step
    #label Gear
    .goto Loch Modan,35.5,19.9,12,0
    .goto Loch Modan,36.4,20.7,12,0
    .goto Loch Modan,35.3,22.0,12,0
    .goto Loch Modan,35.9,22.1,12,0
    .goto Loch Modan,36.3,24.7,12,0
    .goto Loch Modan,35.7,24.3,12,0
    .goto Loch Modan,34.9,24.9,12,0
    .goto Loch Modan,35.7,24.3,12,0
    .goto Loch Modan,36.3,24.7,12,0
    .goto Loch Modan,35.9,22.1,12,0
    .goto Loch Modan,35.3,22.0,12,0
    .goto Loch Modan,36.4,20.7,12,0
    .goto Loch Modan,35.5,19.9,12,0
    >>Collect the crates you find in the cave. Be careful because this is difficult at level 11
    >>Be careful as the Geomancers cast Flame Ward (Fire Immunity) after a few seconds
    .complete 307,1 --Collect Miners' Gear (x4)
step
    .goto Loch Modan,39.43,22.58
    >> Kill Tunnel Rats. Loot them for their Ears
    >> Try to kill the Vermin instead of Kobolds/Geomancers
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
step
    #sticky
    #completewith Thelsamar2
    >>Kill Spiders in the zone for Thelsamar Blood Sausages
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
step
    #sticky
    #completewith Thelsamar2
    >>Kill Bears in the zone for Thelsamar Blood Sausages
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
step
    #sticky
    #completewith Thelsamar2
    >>Kill Boars in the zone for Thelsamar Blood Sausages
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
step
    #label Thelsamar2
    .goto Loch Modan,23.3,17.9,60 >>Run back to the bunker, grinding en route
step
    .goto Loch Modan,24.1,18.2
    .vendor >>vendor and repair
step
    .goto Loch Modan,24.7,18.3
>>Talk to |cRXP_FRIENDLY_Mountaineer Stormpike|r
    .turnin 307 >> Turn in Filthy Paws
    .turnin 1339 >> Turn in Mountaineer Stormpike's Task << Human
.target Mountaineer Stormpike
    .accept 1338 >> Accept Stormpike's Order << Human
step
    #sticky
    #label Meat9
    .goto Loch Modan,26.9,10.7,40,0
    .goto Loch Modan,30.9,10.6,40,0
    .goto Loch Modan,28.6,15.4,40,0
    .goto Loch Modan,30.5,26.6,40,0
    .goto Loch Modan,33.4,30.3,40,0
    .goto Loch Modan,39.4,33.3,40,0
    .goto Loch Modan,26.9,10.7,40,0
    .goto Loch Modan,30.9,10.6,40,0
    .goto Loch Modan,28.6,15.4,40,0
    .goto Loch Modan,30.5,26.6,40,0
    .goto Loch Modan,33.4,30.3,40,0
    .goto Loch Modan,39.4,33.3,40,0
    .goto Loch Modan,26.9,10.7
    >>Kill Bears. Loot them for Meat
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
step
    #sticky
    #label Ichor9
    .goto Loch Modan,31.9,16.4,40,0
    .goto Loch Modan,28.0,20.6,40,0
    .goto Loch Modan,33.8,40.5,40,0
    .goto Loch Modan,36.2,30.9,40,0
    .goto Loch Modan,39.0,32.1,40,0
    .goto Loch Modan,31.9,16.4,40,0
    .goto Loch Modan,28.0,20.6,40,0
    .goto Loch Modan,33.8,40.5,40,0
    .goto Loch Modan,36.2,30.9,40,0
    .goto Loch Modan,39.0,32.1,40,0
    .goto Loch Modan,31.9,16.4
    >>Kill Spiders. Loot them for Ichor
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
step
    .goto Loch Modan,38.0,34.9,40,0
    .goto Loch Modan,37.1,39.8,40,0
    .goto Loch Modan,29.8,35.9,40,0
    .goto Loch Modan,27.7,25.3,40,0
    .goto Loch Modan,28.6,22.6,40,0
    .goto Loch Modan,38.0,34.9,40,0
    .goto Loch Modan,37.1,39.8,40,0
    .goto Loch Modan,29.8,35.9,40,0
    .goto Loch Modan,27.7,25.3,40,0
    .goto Loch Modan,28.6,22.6,40,0
    .goto Loch Modan,38.0,34.9
    >>Kill Boars. Loot them for Intestines
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
step
#hidewindow
    #requires Meat9
step
    #sticky
    #label RatCatching
    #requires Ichor9
    .goto Loch Modan,32.6,49.9,80.0,0
    .goto Loch Modan,37.2,46.1,80.0,0
    .goto Loch Modan,36.7,41.6
    >>Find Kadrell. He patrols along the Thelsamar road
.target Mountaineer Kadrell
>>Talk to |cRXP_FRIENDLY_Mountaineer Kadrell|r
    .turnin 416 >> Turn in Rat Catching
step
    #requires Ichor9
    .goto Loch Modan,34.828,49.283
.target Vidra Hearthstove
>>Talk to |cRXP_FRIENDLY_Vidra Hearthstove|r
    .turnin 418 >> Turn in Thelsamar Blood Sausages
step
    #era/som
    .goto Loch Modan,34.76,48.62
    .vendor >> Buy 6 slots until your bag containers are full. Also buy 1 Flint and Tinder, and 2 Simple Wood
    .collect 4470,2 --Simple Wood (2)
    .collect 4471,1 --Flint and Tinder (1)
step
    .xp 12 >> Grind to 12
step << Gnome
    #completewith next
    #requires RatCatching
    .goto Loch Modan,64.82,66.04
    .vendor >> Check Aldren for a Wise Man's Belt. Buy it if you can afford it. Save it for later
step << Gnome
    #requires RatCatching
    .goto Loch Modan,65.94,65.62
.target Prospector Ironband
>>Talk to |cRXP_FRIENDLY_Prospector Ironband|r
    .accept 298 >>Accept Excavation Progress Report
step << Gnome
    #softcore
    .goto Loch Modan,68.12,62.98
    .deathskip >> Die and respawn back in Thelsamar
step << Gnome
    #hardcore
    >> Run back to Thelsamar. Go inside the building
    .goto Loch Modan,37.16,46.89,20,0
    .goto Loch Modan,37.02,47.81
.target Brock Stoneseeker
>>Talk to |cRXP_FRIENDLY_Brock Stoneseeker|r
    .accept 6387 >>Accept Honor Students
>>Talk to |cRXP_FRIENDLY_Jern Hornhelm|r
    .turnin 298 >>Turn in Excavation Progress Report
.target Jern Hornhelm
    .accept 301 >>Accept Report to Ironforge
step << Gnome
    #softcore
    >> Go inside the building
    .goto Loch Modan,37.16,46.89,20,0
    .goto Loch Modan,37.02,47.81
.target Brock Stoneseeker
>>Talk to |cRXP_FRIENDLY_Brock Stoneseeker|r
    .accept 6387 >>Accept Honor Students
>>Talk to |cRXP_FRIENDLY_Jern Hornhelm|r
    .turnin 298 >>Turn in Excavation Progress Report
.target Jern Hornhelm
    .accept 301 >>Accept Report to Ironforge
step
    #requires RatCatching
    .goto Loch Modan,33.94,50.96
    .fp Thelsamar >> Get the Thelsamar flight path
>>Talk to |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .turnin 6387 >>Turn in Honor Students << Gnome
.target Thorgrum Borrelson
    .accept 6391 >>Accept Ride to Ironforge << Gnome
    .fly Ironforge >> Fly to Ironforge
step << Human
    .goto Ironforge,27.15,8.57
    .trainer >> Train your class spells
step << skip --logout skip << Human
    #completewith next
    +Go toward the staircase behind the paladin trainers at the back of the room. Go about halfway up, then move yourself to the edge of the stairs until it looks like you're floating. Logout, then back in
    .link https://www.youtube.com/watch?v=E8b90bzJMSI >> CLICK HERE for reference
    >>Logout skip to the front of Ironforge
step << Human
    .goto Ironforge,12.24,89.17,120 >> Exit Ironforge
step << Gnome
    .goto Ironforge,74.65,11.74
>>Talk to |cRXP_FRIENDLY_Prospector Stormpike|r
    .turnin 301 >>Turn in Report to Ironforge
.target Prospector Stormpike
    .accept 302 >>Accept Powder to Ironband
step << Gnome
    >>Go back toward The Great Forge, then take a right and go inside the building
    .goto Ironforge,49.59,28.96,30,0
    .goto Ironforge,51.52,26.32
>>Talk to |cRXP_FRIENDLY_Golnir Bouldertoe|r
    .turnin 6391 >>Turn in Ride to Ironforge
.target Golnir Bouldertoe
    .accept 6388 >>Accept Gryth Thurden
step << Gnome
    .goto Ironforge,39.55,57.49
.target Senator Barin Redstone
>>Talk to |cRXP_FRIENDLY_Senator Barin Redstone|r
    .turnin 291 >>Turn in The Reports
step << Gnome
    .goto Ironforge,55.50,47.74
>>Talk to |cRXP_FRIENDLY_Gryth Thurden|r
    .turnin 6388 >>Turn in Gryth Thurden
.target Gryth Thurden
    .accept 6392 >>Accept Return to Brock
    .fly Thelsamar >> Fly to Thelsamar
step << Gnome
    >>Go inside the building
    .goto Loch Modan,37.16,46.89,20,0
    .goto Loch Modan,37.02,47.81
.target Brock Stoneseeker
>>Talk to |cRXP_FRIENDLY_Brock Stoneseeker|r
    .turnin 6392 >>Turn in Return to Brock
.target Jern Hornhelm
>>Talk to |cRXP_FRIENDLY_Jern Hornhelm|r
    .turnin 302 >>Turn in Powder to Ironband
step << Gnome
    .hs >> Hearth to Kharanos
step << Gnome
    .goto Dun Morogh,47.50,52.08
    .trainer >> Train your class spells
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
    .goto Dun Morogh,30.3,37.5,50 >> Run to here
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
    .deathskip >>Keep running straight north, drop down and die, then respawn
step
    #softcore
    #completewith next
    .goto Wetlands,12.7,46.7,60 >> Swim to shore
step
    .money <0.08
    .goto Wetlands,10.4,56.0,15,0
    .goto Wetlands,10.1,56.9,15,0
    .goto Wetlands,10.6,57.2,15,0
    .goto 1437,10.760,56.721
    .vendor >> If you have 8s, Check for Bronze Tube from Neal Allen and buy it if it's there
step
    .money <0.04
    .goto Wetlands,8.1,56.3
    .vendor >> Check Dewin for Heal Potions, buy down to 1s
step
    .goto Wetlands,9.5,59.7
    .fp Menethil Harbor >> Get the Menethil Harbor flight path
step
    #era/som
    #sticky
    #completewith Darkshore1
    +Wait here for the boat. Make a Campfire from your spellbook and start cooking the chunks of boar meat you saved from earlier. You need at least 10 skill now, and 50 later (so cook all of it)
    .goto Wetlands,4.7,57.3
step
    #era/som
    #label Darkshore1
    .zone Darkshore >>Get onto the boat when it comes. Take it to Darkshore. If you've finished cooking food, start conjuring as much level 5 water as possible
step
    #som
    #phase 3-6
    #label Darkshore1
    .zone Darkshore >>Get onto the boat when it comes. Take it to Darkshore. Start conjuring as much level 5 water as possible
]])

