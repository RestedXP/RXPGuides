local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

local L = GetLocale() if L and RXP.enabledLocale[L] then return end
RXPGuides.RegisterGuide([[
#forever
<< Human Mage
#name 1-10 Elwynn Forest Mage AoE
#version 1
#group RestedXP Forever Guide (A)
#subgroup Speedrun Guide Mage
#defaultfor Human
#next 10-12 Loch Modan Mage AoE
step
    #sticky
    #completewith next
    .goto 1429/0,-136.52,-8933.53
    +You have selected a guide meant for Humans. You should choose the same starter zone that you start in << Gnome
    +Note that you have selected the AoE guide. AoE is typically a lot harder than single target mage, but a LOT faster
step
    >>Delete your Hearthstone
    .goto 1429/0,-136.52,-8933.53
.target Deputy Willem
>>Talk to |cRXP_FRIENDLY_Deputy Willem|r
    .accept 783 >> Accept A Threat Within
step
    .goto 1429/0,-162.62,-8902.59
>>Talk to |cRXP_FRIENDLY_Marshal McBride|r
    .turnin 783 >> Turn in A Threat Within
.target Marshal McBride
    .accept 7 >> Accept Kobold Camp Cleanup
step
    .goto 1429/0,-136.52,-8933.53
.target Deputy Willem
>>Talk to |cRXP_FRIENDLY_Deputy Willem|r
    .accept 5261 >> Accept Eagan Peltskinner
step
    .goto 1429/0,-68.11,-8874.67
    .vendor >>Kill wolves until you have 50c worth of vendor trash. Vendor, then buy x10 water from Brother Danil.
    .collect 159,10 --Collect Refreshing Spring Water (x10)
step
    .xp 2 >> Grind to 2
step
    .goto 1429/0,-161.82,-8870.05
>>Talk to |cRXP_FRIENDLY_Eagan Peltskinner|r
    .turnin 5261 >> Turn in Eagan Peltskinner
.target Eagan Peltskinner
    .accept 33 >> Accept Wolves Across The Border
step
    .goto 1429/0,-64.64,-8881.62,40,0
    .goto 1429/0,-68.11,-8809.87,40,0
    .goto 1429/0,-116.70,-8800.61,40,0
    .goto 1429/0,-64.64,-8881.62,40,0
    .goto 1429/0,-68.11,-8809.87,40,0
    .goto 1429/0,-116.70,-8800.61,40,0
    >>Kill Young Wolves in the area for Meat
    .complete 33,1 --Collect Tough Wolf Meat (x8)
step
    .goto 1429/0,-109.76,-8756.63,40,0
    .goto 1429/0,-189.59,-8777.46,40,0
    .goto 1429/0,-109.76,-8756.63,40,0
    .goto 1429/0,-189.59,-8777.46,40,0
    .goto 1429/0,-109.76,-8756.63,40,0
    .goto 1429/0,-189.59,-8777.46,40,0
    >>Kill Kobold Vermin in the area
    .complete 7,1 --Kill Kobold Vermin (x10)
step
    .goto 1429/0,-161.82,-8870.05
.target Eagan Peltskinner
>>Talk to |cRXP_FRIENDLY_Eagan Peltskinner|r
    .turnin 33 >> Turn in Wolves Across The Border
step
    .goto 1429/0,-116.70,-8900.14
    .vendor >>vendor trash, then buy x10 more water from Brother Danil
step
    .goto 1429/0,-162.62,-8902.59
>>Talk to |cRXP_FRIENDLY_Marshal McBride|r
    .turnin 7 >> Turn in Kobold Camp Cleanup
.target Marshal McBride
    .accept 15 >> Accept Investigate Echo Ridge
    .accept 3104 >> Accept Glyphic Letter
step
    .xp 3 >> Grind to 3
step
    .goto 1429/0,-113.23,-8779.78,40,0
    .goto 1429/0,-81.99,-8684.88,40,0
    .goto 1429/0,-151.41,-8726.54,40,0
    .goto 1429/0,-113.23,-8779.78,40,0
    .goto 1429/0,-81.99,-8684.88,40,0
    .goto 1429/0,-151.41,-8726.54,40,0
    >>Kill Kobold Workers
    .complete 15,1 --Kill Kobold Worker (x10)
step
    .goto 1429/0,-120.17,-8897.82
    .xp 3+1110 >>Grind to 1110+/1400xp on your way back to town
step
    .goto 1429/0,-120.17,-8897.82
    .vendor >>vendor trash
step
    .goto 1429/0,-162.62,-8902.59
>>Talk to |cRXP_FRIENDLY_Marshal McBride|r
    .turnin 15 >> Turn in Investigate Echo Ridge
.target Marshal McBride
    .accept 21 >> Accept Skirmish at Echo Ridge
step
    >>Go upstairs
    .goto 1429/0,-175.70,-8881.62,15,0
    .goto 1429/0,-182.65,-8865.42,15,0
    .goto 1429/0,-188.23,-8851.58
.target Khelden Bremen
>>Talk to |cRXP_FRIENDLY_Khelden Bremen|r
    .turnin 3104 >> Turn in Glyphic Letter
    .trainer >> Train your class spells
step
    .goto 1429/0,-136.52,-8933.53
.target Deputy Willem
>>Talk to |cRXP_FRIENDLY_Deputy Willem|r
    .accept 18 >> Accept Brotherhood of Thieves
step
    .goto 1429/0,-328.42,-9147.80,60,0
    .goto 1429/0,-397.84,-9036.70,60,0
    .goto 1429/0,-363.13,-8909.39,60,0
    .goto 1429/0,-328.42,-9147.80,60,0
    .goto 1429/0,-397.84,-9036.70,60,0
    .goto 1429/0,-363.13,-8909.39,60,0
    >>Kill Defias Thugs. Loot them for Bandanas
    .complete 18,1 --Collect Red Burlap Bandana (x12)
step
    .goto 1429/0,-136.52,-8933.53
>>Talk to |cRXP_FRIENDLY_Deputy Willem|r
    .turnin 18 >> Turn in Brotherhood of Thieves
.target Deputy Willem
    .accept 6 >> Accept Bounty on Garrick Padfoot
    .accept 3903 >> Accept Milly Osworth
step
    .goto 1429/0,-120.17,-8897.82
    .vendor >>vendor trash, repair
step
    .goto 1429/0,-363.13,-8909.39,60,0
    .goto 1429/0,-120.17,-8673.31,60,0
    .goto 1429/0,-213.88,-8564.52,60,0
    .goto 1429/0,-120.17,-8673.31,60,0
    .goto 1429/0,-213.88,-8564.52,60,0
    .goto 1429/0,-120.17,-8673.31,60,0
    .goto 1429/0,-213.88,-8564.52,60,0
    .goto 1429/0,-120.17,-8673.31,60,0
    .goto 1429/0,-213.88,-8564.52,60,0
    >>Kill Laborers in the mine
    .complete 21,1 --Kill Kobold Laborer (x12)
step
    .xp 5 >> Grind to 5
step
    #era/som
    .goto 1429/0,-224.30,-8846.90
>>Talk to |cRXP_FRIENDLY_Milly Osworth|r
    .turnin 3903 >> Turn in Milly Osworth
.target Milly Osworth
    .accept 3904 >> Accept Milly's Harvest
step
    #som
    #phase 3-6
    .goto 1429/0,-224.30,-8846.90
.target Milly Osworth
>>Talk to |cRXP_FRIENDLY_Milly Osworth|r
    .turnin 3903 >> Turn in Milly Osworth
step
    #era/som
    >>Loot the Buckets of Grapes in the field
    .goto 1429/0,-356.19,-9082.99
    .complete 3904,1 --Collect Milly's Harvest (x8)
step
    .goto 1429/0,-460.31,-9055.21
    >>Kill Garrick and loot his Head
    .complete 6,1 --Collect Garrick's Head (x1)
step
    .xp 5+1175 >> Grind on your way back to 1175+/2800xp
    .goto 1429/0,-224.30,-8846.90
step
    #era/som
    .goto 1429/0,-224.30,-8846.90
>>Talk to |cRXP_FRIENDLY_Milly Osworth|r
    .turnin 3904 >> Turn in Milly's Harvest
.target Milly Osworth
    .accept 3905 >>Accept Grape Manifest
step
    .goto 1429/0,-136.52,-8933.53
.target Deputy Willem
>>Talk to |cRXP_FRIENDLY_Deputy Willem|r
    .turnin 6 >> Turn in Bounty on Garrick Padfoot
step
    .goto 1429/0,-162.62,-8902.59
>>Talk to |cRXP_FRIENDLY_Marshal McBride|r
    .turnin 21 >> Turn in Skirmish at Echo Ridge
.target Marshal McBride
    .accept 54 >> Accept Report to Goldshire
step
     #era/som
     >>Go upstairs the main staircase
    .goto 1429/0,-186.12,-8902.45,15,0
    .goto 1429/0,-161.82,-8895.51,15,0
    .goto 1429/0,-181.64,-8902.13
.target Brother Neals
>>Talk to |cRXP_FRIENDLY_Brother Neals|r
    .turnin 3905 >>Turn in Grape Manifest
step
    .goto 1429/0,-47.28,-9043.64
.target Falkhaan Isenstrider
>>Talk to |cRXP_FRIENDLY_Falkhaan Isenstrider|r
    .accept 2158 >> Accept Rest and Relaxation
step
    #softcore
    #sticky
    #completewith next
    .goto 1429/0,164.44,-9339.91,200 >> Die and respawn at the Spirit Healer, or run to Goldshire
step
    .goto 1429/0,88.08,-9464.89
    .vendor >> vendor trash, repair
step
    .goto 1429/0,74.02,-9465.52
>>Talk to |cRXP_FRIENDLY_Marshal Dughan|r
    .turnin 54 >> Turn in Report to Goldshire
.target Marshal Dughan
    .accept 62 >> Accept The Fargodeep Mine
step
    .goto 1429/0,46.43,-9460.26,15,0
    >>On your close left as you go in the Inn
    .goto 1429/0,33.14,-9460.75
.target William Pestle
>>Talk to |cRXP_FRIENDLY_William Pestle|r
    .accept 60 >> Accept Kobold Candles
step
    .goto 1429/0,16.20,-9462.65
.target Innkeeper Farley
>>Talk to |cRXP_FRIENDLY_Innkeeper Farley|r
    .turnin 2158 >> Turn in Rest and Relaxation
    .home >> Set your Hearthstone to Goldshire
step
    .xp 6 >> Grind to 6
step
    .goto 1429/0,18.66,-9476.47,12,0
    .goto 1429/0,36.02,-9471.84
    .trainer >> Go Upstairs. Train your class spells
step
    .goto 1429/0,74.20,-9497.30
.target Remy "Two Times"
>>Talk to |cRXP_FRIENDLY_Remy "Two Times"|r
    .accept 47 >> Accept Gold Dust Exchange
step
    #sticky
    #completewith BoarMeat1
    >>Start killing some boars you see for Boar Meat
    .collect 769,4 --Collect Chunk of Boar Meat (x4)
step
    .goto 1429/0,338.47,-9889.69
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
    .goto 1429/0,38.38,-9923.69
>>Talk to |cRXP_FRIENDLY_Billy Maclure|r
    .turnin 85 >> Turn in Lost Necklace
.target Billy Maclure
    .accept 86 >> Accept Pie for Billy
step
    #label BoarMeat1
    .goto 1429/0,36.02,-10013.45
.target Maybell Maclure
>>Talk to |cRXP_FRIENDLY_Maybell Maclure|r
    .accept 106 >> Accept Young Lovers
step
    .goto 1429/0,63.78,-10008.82
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
    .goto 1429/0,407.40,-9918.55
    >>Finish off getting the Boar Meat
    .complete 86,1 --Collect Chunk of Boar Meat (x4)
step
    .goto 1429/0,338.47,-9889.69
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
    .goto 1429/0,38.38,-9923.69
>>Talk to |cRXP_FRIENDLY_Billy Maclure|r
    .turnin 84 >> Turn in Back to Billy
.target Billy Maclure
    .accept 87 >> Accept Goldtooth
step
    >>Go into the mine
    .goto 1429/0,129.73,-9844.49
    .complete 62,1 --Scout Through the Fargodeep Mine
step
    >>Kill Goldtooth for Bernice's Necklace
    .goto 1429/0,88.08,-9744.96--??
    .complete 87,1 --Collect Bernice's Necklace  (x1)
step
    .xp 7+1600 >>Grind until 1600+/4500xp
step
#hidewindow
    #requires KoboldCandles
step
    #label Goldtooth
    #requires GoldDust
    .goto 1429/0,338.47,-9889.69
.target "Auntie" Bernice Stonefield
>>Talk to |cRXP_FRIENDLY_"Auntie" Bernice Stonefield|r
    .turnin 87 >> Turn in Goldtooth
step
    >>Grind some mobs back to Goldshire
    .xp 7+2690 >>Grind until 2690+/4500xp
    .goto 1429/0,74.20,-9497.30
step
    .goto 1429/0,74.20,-9497.30
>>Talk to |cRXP_FRIENDLY_Remy "Two Times"|r
    .turnin 47 >> Turn in Gold Dust Exchange
.target Remy "Two Times"
    .accept 40 >> Accept A Fishy Peril
step
    .goto 1429/0,88.08,-9464.89
    .vendor >>vendor trash, repair
step
    .goto 1429/0,74.02,-9465.52
>>Talk to |cRXP_FRIENDLY_Marshal Dughan|r
    .turnin 40 >> Turn in A Fishy Peril
.target Marshal Dughan
    .accept 35 >> Accept Further Concerns
    .turnin 62 >> Turn in The Fargodeep Mine
    .accept 76 >> Accept The Jasperlode Mine
step
    .goto 1429/0,88.08,-9464.89
    .vendor >> vendor trash, repair
step
    .goto 1429/0,33.14,-9460.75
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
    .goto 1429/0,8.25,-9464.89
    .vendor >>Buy a 6 slot bag from Brog
step
    .goto 1429/0,18.66,-9476.47,12,0
    .goto 1429/0,36.02,-9471.84
    .trainer >> Go Upstairs. Train your class spells
step
    .goto 1429/0,16.20,-9462.65
    .vendor >>Buy level 5 Water up to 40
step
    >>Grind Murlocs toward the east and loot them for Kelp Frond. kill mobs on the island if you still need some
    .goto 1429/0,-116.70,-9404.71,60,0
    .goto 1429/0,-248.59,-9434.80,50,0
    .goto 1429/0,-463.78,-9393.14,50,0
    .goto 1429/0,-422.13,-9481.10,50,0
    .goto 1429/0,-331.89,-9485.73,50,0
    .complete 112,1 --Collect Crystal Kelp Frond (x4)
step
    >>Go in the mine, and keep following the middle path
    .goto 1429/0,-609.56,-9189.46,60,0
    .goto 1429/0,-560.97,-9101.50
    .complete 76,1 --Scout through the Jasperlode Mine
step
    .goto 1429/0,-1032.06,-9610.23
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
    .goto 1429/0,-987.88,-9335.28
    .turnin 37 >> Turn in Find the Lost Guards
    .accept 45 >> Accept Discover Rolf's Fate
step
    .goto 1429/0,-1289.22,-9469.80
.target Supervisor Raelen
>>Talk to |cRXP_FRIENDLY_Supervisor Raelen|r
    .accept 5545 >> Accept A Bundle of Trouble
step
    .goto 1429/0,-1355.79,-9469.52
    .vendor >> vendor trash, repair
step
    #sticky
    #completewith Bundles
    >>Keep an eye out for the bundles of logs at the base of the trees
    .collect 13872,8 --Collect Bundle of Wood (x8)
step
    #label Bundles
    .goto 1429/0,-1234.31,-9224.18,60 >> Go toward the guard's corpse
step
    .goto 1429/0,-1234.31,-9224.18
    >> Kill mobs surrounding the corpse. Pull the 2 mobs in front of the huts, move away and sheep one whilst killing the other, then kill the sheeped mob. Loot the carcass on the ground
    >> Be careful as this quest can be difficult
    .turnin 45 >> Turn in Discover Rolf's Fate
    .accept 71 >> Accept Report to Thomas
step
    .goto 1429/0,-1130.18,-9383.88,40,0
    .goto 1429/0,-1369.67,-9314.45,40,0
    .goto 1429/0,-1130.18,-9383.88,40,0
    .goto 1429/0,-1369.67,-9314.45,40,0
    .goto 1429/0,-1130.18,-9383.88,40,0
    .goto 1429/0,-1369.67,-9314.45,40,0
    >>Start running back, finish off the bundles
    .collect 13872,8 --Collect Bundle of Wood (x8)
step
    #label Bundles2
    .goto 1429/0,-1289.22,-9469.80
.target Supervisor Raelen
>>Talk to |cRXP_FRIENDLY_Supervisor Raelen|r
    .turnin 5545 >> Turn in A Bundle of Trouble
step
    #label Prowlers
    .xp 9 >> Grind to 9
step
    #label Bears
    .goto 1429/0,-1222.40,-9531.76
.target Sara Timberlain
>>Talk to |cRXP_FRIENDLY_Sara Timberlain|r
    .accept 83 >> Accept Red Linen Goods
step
    .goto 1429/0,-1126.71,-9689.41,40,0
    .goto 1429/0,-1230.84,-9876.89,40,0
    .goto 1429/0,-1310.67,-9717.18,40,0
    .goto 1429/0,-1126.71,-9689.41,40,0
    .goto 1429/0,-1230.84,-9876.89,40,0
    .goto 1429/0,-1310.67,-9717.18,40,0
    >>Kill the last mobs for Protect the Frontier
    .complete 52,1 --Kill Prowler (x8)
    .complete 52,2 --Kill Young Forest Bear (x5)
step
    .goto 1429/0,-1032.06,-9610.23
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
    .goto 1429/0,-911.52,-9735.70,60,0
    .goto 1429/0,-828.22,-9733.39,60,0
    .goto 1429/0,-831.69,-9823.65,60,0
    .goto 1429/0,-921.93,-9812.08,60,0
    .goto 1429/0,-911.52,-9735.70,60,0
    .goto 1429/0,-828.22,-9733.39,60,0
    .goto 1429/0,-831.69,-9823.65,60,0
    .goto 1429/0,-921.93,-9812.08,60,0
    .goto 1429/0,-911.52,-9735.70,60,0
    .goto 1429/0,-828.22,-9733.39,60,0
    .goto 1429/0,-831.69,-9823.65,60,0
    .goto 1429/0,-921.93,-9812.08,60,0
    >>Start circling the farm, killing Defias and looting them for Bandanas
    .complete 83,1 --Collect Red Linen Bandana (x6)
    .isOnQuest 83
step
    #label Princess
    .goto 1429/0,-873.34,-9772.73
    >>Kill Princess. Use a Lesser Heal Potion from before if needed. Loot her for the Collar
    >>You can also jump back and forth between the fences on the edge of the farm to kill Princess and her guards
    .complete 88,1 --Collect Brass Collar (x1)
--N link
step
    #softcore
    #sticky
    #completewith next
    .goto 1429/0,-1366.20,-9552.85,120 >>Die and respawn at the Spirit Healer if you're low health, otherwise just run back and handin
step
    .goto 1429/0,-1223.90,-9534.33
.target Sara Timberlain
>>Talk to |cRXP_FRIENDLY_Sara Timberlain|r
    .turnin 83 >> Turn in Red Linen Goods
    .isQuestComplete 83
step
    .goto 1433/0,-1741.68,-9644.29
    .zone Redridge Mountains >>Grind en route to Redridge
step
    #softcore
    #sticky
    #completewith next
    +Die to the mobs here
    .goto 1433/0,-1813.97,-9710.17
step
    #softcore
    >>Respawn at the Spirit Healer
    .goto 1433/0,-2022.37,-9394.52,100 >>Respawn at the Spirit Healer
step
    #softcore
    .goto 1433/0,-2235.11,-9435.06
    .fp Redridge Mountains >> Get the Redridge Mountains flight path
step
    #hardcore
    >>Run toward the Flight Path. Be exceedingly careful to not aggro or die to any mobs en route. Try sticking to the road and keeping an eye out
    .goto 1433/0,-2235.11,-9435.06
    .fp Redridge Mountains >> Get the Redridge Mountains flight path
step
    .hs >> Hearth to Goldshire
step
    .goto 1429/0,33.14,-9460.75
    >>Don't wait for his rp event
.target William Pestle
>>Talk to |cRXP_FRIENDLY_William Pestle|r
    .turnin 112 >> Turn in Collecting Kelp
step
    .goto 1429/0,70.72,-9462.58
>>Talk to |cRXP_FRIENDLY_Marshal Dughan|r
    .turnin 39 >> Turn in Deliver Thomas' Report
    .turnin 76 >> Turn in The Jasperlode Mine
.target Marshal Dughan
    .accept 239 >> Accept Westbrook Garrison Needs Help!
step
    .goto 1429/0,87.87,-9456.65
.target Smith Argus
.target Verner Osgood
>>Talk to |cRXP_FRIENDLY_Verner Osgood|r
-->>Talk to |cRXP_FRIENDLY_Smith Argus|r
    .accept 1097 >> Accept Elmore's Task
step
    .goto 1429/0,88.08,-9464.89
    .vendor >>vendor trash, repair
step
    .goto 1429/0,33.14,-9460.75
.target William Pestle
>>Talk to |cRXP_FRIENDLY_William Pestle|r
    .accept 114 >> Accept The Escape
step
    >>Run out of the inn and go south
    .goto 1429/0,36.02,-10013.45
.target Maybell Maclure
>>Talk to |cRXP_FRIENDLY_Maybell Maclure|r
    .turnin 114 >> Turn in The Escape
step
    .goto Elwynn Forest,34.660,84.482
.target Ma Stonefield
>>Talk to |cRXP_FRIENDLY_Ma Stonefield|r
    .turnin 88 >> Turn in Princess Must Die!
step
    .goto 1429/0,695.47,-9663.95
.target Deputy Rainer
>>Talk to |cRXP_FRIENDLY_Deputy Rainer|r
    .turnin 239 >> Turn in Westbrook Garrison Needs Help!
step
    .isOnQuest 184
    .goto 1436/0,916.67,-9852.67
.target Farmer Furlbrow
>>Talk to |cRXP_FRIENDLY_Farmer Furlbrow|r
    .turnin 184 >> Turn in Furlbrow's Deed
step
    .goto 1436/0,919.54,-9853.04
.target Verna Furlbrow
>>Talk to |cRXP_FRIENDLY_Verna Furlbrow|r
    .accept 36 >> Accept Westfall Stew
step
    .goto 1436/0,1042.11,-10112.11
.target Salma Saldean
>>Talk to |cRXP_FRIENDLY_Salma Saldean|r
    .turnin 36 >> Turn in Westfall Stew
step
    #softcore
    #sticky
    #completewith next
    .goto 1436/0,1207.17,-10552.67,150 >> Die and respawn at the Spirit Healer, or run to Sentinel Hill
step
    .goto 1436/0,1045.22,-10508.800
.target Gryan Stoutmantle
>>Talk to |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .turnin 109 >> Turn in Report to Gryan Stoutmantle
step
    .goto 1436/0,1021.60,-10500.61
    .vendor >>vendor trash
.target Quartermaster Lewis
>>Talk to |cRXP_FRIENDLY_Quartermaster Lewis|r
    .accept 6181 >> Accept A Swift Message
step
    #phase 3-6
    .goto 1436/0,1042.11,-10112.11
    .xp 11+3750 >> Grind to 3750+/8800xp
step
    .goto 1436/0,1035.67,-10627.33
    .fp Sentinel Hill >> Get the Sentinel Hill flight path
>>Talk to |cRXP_FRIENDLY_Thor|r
    .turnin 6181 >> Turn in A Swift Message
.target Thor
    .accept 6281 >> Accept Continue To Stormwind
    .fly Stormwind >> Fly to Stormwind
step
    .goto 1453/0,625.49,-8857.89
    >>Choose rockets. These have very good damage, and can be used for splitpulling
.target Morgan Pestle
>>Talk to |cRXP_FRIENDLY_Morgan Pestle|r
    .turnin 61 >> Turn in Shipment to Stormwind
step
    #era/som
    .goto 1453/0,613.39,-8796.05
    .trainer >> Train 1h Swords
step
    .goto 1453/0,382.18,-8701.93
.target Osric Strang
>>Talk to |cRXP_FRIENDLY_Osric Strang|r
    .turnin 6281 >> Turn in Continue to Stormwind
    >>Vendor and Repair
step
    #completewith next
    .goto 1453/0,684.64,-8387.31
.target Grimand Elmore
>>Talk to |cRXP_FRIENDLY_Grimand Elmore|r
    .turnin 1097 >> Turn in Elmore's Task
step
    .goto 1453/0,684.64,-8387.31
.target Grimand Elmore
>>Talk to |cRXP_FRIENDLY_Grimand Elmore|r
    .accept 353 >> Accept Stormpike's Delivery
step
    #sticky
    #completewith next
    .goto 1453/0,521.98,-8353.25,20 >>Enter the Deeprun Tram
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
    .goto 1455/0,-1322.37,-4838.32,30 >>Enter Ironforge
step
    .goto 1455/0,-1152.40,-4821.13
    .fp Ironforge >> Get the Ironforge flight path
step
    #phase 3-6
    .goto 1455/0,-928.40,-4614.46
     .trainer >> Train your class spells
step
    #sticky
    #completewith next
    .goto 1426/0,-832.79,-5022.97,100 >>Run out of Ironforge
step
    .goto 1426/0,-1157.84,-5604.12,50,0
    .goto 1426/0,-1305.59,-5512.18
.target Rudra Amberstill
>>Talk to |cRXP_FRIENDLY_Rudra Amberstill|r
    .accept 314 >> Accept Protecting the Herd
step
    #sticky
    #completewith next
    .goto 1426/0,-1266.19,-5528.60,14,0
    .goto 1426/0,-1261.27,-5499.05,12 >> Run up this part of the mountain
step
    >>Kill Vagash. Loot him for his Fang
    >>Kite him to the guard south of the ranch. Make sure you do 51%+ damage to him
    >>Be careful as this quest can be difficult
    .goto 1426/0,-1280.97,-5390.70
    .goto 1426/0,-1289.83,-5669.780,0
    .complete 314,1 --Collect Fang of Vagash (1)
--N add video tutorial
step
    .goto 1426/0,-1305.59,-5512.18
.target Rudra Amberstill
>>Talk to |cRXP_FRIENDLY_Rudra Amberstill|r
    .turnin 314 >> Turn in Protecting the Herd
step
    >>Grind a little en route
    .goto 1426/0,-1576.47,-5673.07
    .vendor >>Vendor, buy food+water
step
    .goto 1426/0,-1581.39,-5715.75
.target Senator Mehr Stonehallow
>>Talk to |cRXP_FRIENDLY_Senator Mehr Stonehallow|r
    .accept 433 >> Accept The Public Servant
step
    .goto 1426/0,-1600.30,-5726.590
.target Foreman Stonebrow
>>Talk to |cRXP_FRIENDLY_Foreman Stonebrow|r
    .accept 432 >> Accept Those Blasted Troggs!
step
    .goto 1426/0,-1674.97,-5735.45,30,0
    .goto 1426/0,-1684.82,-5627.10,30,0
    .goto 1426/0,-1738.99,-5541.73,30,0
    .goto 1426/0,-1788.24,-5620.53,30,0
    .goto 1426/0,-1674.97,-5735.45,30,0
    .goto 1426/0,-1684.82,-5627.10,30,0
    .goto 1426/0,-1738.99,-5541.73,30,0
    .goto 1426/0,-1788.24,-5620.53,30,0
    >>Kill Troggs in the cave
    .complete 432,1 --Kill Rockjaw Skullthumper (6)
    .complete 433,1 --Kill Rockjaw Bonesnapper (10)
step
    #era/som
    .xp 10+6350 >>Grind until 6350+/7600
step
    .goto 1426/0,-1600.30,-5726.590
.target Foreman Stonebrow
>>Talk to |cRXP_FRIENDLY_Foreman Stonebrow|r
    .turnin 432 >> Turn in Those Blasted Troggs!
step
    #completewith next
    .goto 1426/0,-1591.24,-5712.47
    .vendor >> vendor trash, repair
step
    .goto 1426/0,-1581.39,-5715.75
.target Senator Mehr Stonehallow
>>Talk to |cRXP_FRIENDLY_Senator Mehr Stonehallow|r
    .turnin 433 >> Turn in The Public Servant
step
    #era/som--xpgate
    .xp 11
step
    .goto 1426/0,-1576.47,-5673.07
    .vendor >>vendor trash, buy x30 level 5 drink from Kazan
    .trainer >> Train Cooking from Ghilm. You'll need this to pick up 2 extra quests later
step
    .goto 1426/0,-2329.60,-5163.76
.target Pilot Hammerfoot
>>Talk to |cRXP_FRIENDLY_Pilot Hammerfoot|r
    .accept 419 >> Accept The Lost Pilot
step
    .goto 1426/0,-2123.14,-5065.65
    .turnin 419 >> Turn in The Lost Pilot
    .accept 417 >> Accept A Pilot's Revenge
step
    >>Kill Mangeclaw. Loot him for his Claw
    .goto 1426/0,-2137.92,-5072.22
    .complete 417,1 --Collect Mangy Claw (x1)
step
    .goto 1426/0,-2329.60,-5163.76
.target Pilot Hammerfoot
>>Talk to |cRXP_FRIENDLY_Pilot Hammerfoot|r
    .turnin 417 >> Turn in A Pilot's Revenge
step
    .goto 1426/0,-2354.62,-4898.20,25 >>Go through the tunnel to Loch Modan
]])

RXPGuides.RegisterGuide([[
#forever
<< Gnome Mage
#name 1-10 Dun Morogh Mage AoE
#version 1
#group RestedXP Forever Guide (A)
#subgroup Speedrun Guide Mage
#defaultfor Dwarf/Gnome
#next 10-12 Loch Modan Mage AoE
step
    #era/som
    #sticky
    #completewith next
    .goto 1426/0,328.18,-6214.85
    +You have selected a guide meant for Gnomes and Dwarves. You should choose the same starter zone that you start in << Human
    +Note that you have selected the AoE guide. AoE is typically a lot harder than single target mage, but a LOT faster
step
    #phase 3-6
    #sticky
    #completewith next
    .goto 1426/0,328.18,-6214.85
    +You have selected a guide meant for Gnomes and Dwarves. You should choose the same starter zone that you start in << Human
    +Note that you have selected the AoE guide. AoE is typically a lot harder than single target mage, but with the recent 100% quest xp changes, is also slower
step
    >>Delete your Hearthstone
    .goto 1426/0,328.18,-6214.85
.target Sten Stoutarm
>>Talk to |cRXP_FRIENDLY_Sten Stoutarm|r
    .accept 179 >> Accept Dwarven Outfitters
step
    >>Kill Wolves. Loot them for Meat
    .goto 1426/0,388.61,-6333.02
    .complete 179,1 --Collect Tough Wolf Meat (x8)
step
    .xp 2 >> Grind to 2
step
    .goto 1426/0,324.58,-6224.67
    >>vendor trash. Buy 15 Water. Grind extra wolves if you don't have enough money
    .collect 159,15 --Collect Refreshing Spring Water (x15)
step
    .goto 1426/0,328.18,-6214.85
>>Talk to |cRXP_FRIENDLY_Sten Stoutarm|r
    .turnin 179 >> Turn in Dwarven Outfitters
.target Sten Stoutarm
    .accept 233 >> Accept Coldridge Valley Mail Delivery
    .accept 3114 >> Accept Glyphic Memorandum
step
    .goto 1426/0,339.36,-6214.82
.target Balir Frosthammer
>>Talk to |cRXP_FRIENDLY_Balir Frosthammer|r
    .accept 170 >> Accept A New Threat
step
    #sticky
    #completewith Rockjaw
    >>Kill Normal Rockjaw Troggs that you see
    .complete 170,1 --Kill Rockjaw Trogg (x6)
step
    .goto 1426/0,477.26,-6264.07,30,0
    .goto 1426/0,565.91,-6244.37,30,0
    .goto 1426/0,477.26,-6264.07,30,0
    .goto 1426/0,565.91,-6244.37,30,0
    >>Kill Burly Rockjaw Troggs
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
step
    .goto 1426/0,688.98,-6222.47
>>Talk to |cRXP_FRIENDLY_Talin Keeneye|r
    .turnin 233 >> Turn in Coldridge Valley Mail Delivery
.target Talin Keeneye
    .accept 183 >> Accept The Boar Hunter
    .accept 234 >> Accept Coldridge Valley Mail Delivery
step
    .goto 1426/0,708.73,-6257.50,40,0
    .goto 1426/0,792.46,-6221.38,40,0
    .goto 1426/0,762.91,-6142.58,40,0
    .goto 1426/0,679.18,-6162.28,40,0
    .goto 1426/0,708.73,-6257.50,40,0
    .goto 1426/0,792.46,-6221.38,40,0
    .goto 1426/0,762.91,-6142.58,40,0
    .goto 1426/0,679.18,-6162.28,40,0
    >>Kill Boars in the area
    .complete 183,1 --Kill Small Crag Boar (x12)
step
    .goto 1426/0,688.98,-6222.47
.target Talin Keeneye
>>Talk to |cRXP_FRIENDLY_Talin Keeneye|r
    .turnin 183 >> Turn in The Boar Hunter
step
    .xp 3+860 >> Grind to 860+/1400xp
    .goto 1426/0,669.33,-6339.58,40,0
    .goto 1426/0,610.23,-6257.50,40,0
    .goto 1426/0,437.86,-6382.27,40,0
    .goto 1426/0,669.33,-6339.58,40,0
    .goto 1426/0,610.23,-6257.50,40,0
    .goto 1426/0,437.86,-6382.27,40,0
step
    #label Rockjaw
    .goto 1426/0,567.09,-6362.99
>>Talk to |cRXP_FRIENDLY_Grelin Whitebeard|r
    .turnin 234 >> Turn in Coldridge Valley Mail Delivery
.target Grelin Whitebeard
    .accept 182 >> Accept The Troll Cave
step
    .goto 1426/0,570.83,-6372.42
.target Nori Pridedrift
>>Talk to |cRXP_FRIENDLY_Nori Pridedrift|r
    .accept 3364 >> Accept Scalding Mornbrew Delivery
    >> Once accepted, a 5 minute timer will start. Relax and follow the guide
step
    .goto 1426/0,388.61,-6421.67
    >>Go up here and kill Troggs if you're not done with them by now
    .complete 170,1 --Kill Rockjaw Trogg (x6)
step
    #sticky
    #completewith Scalding1
    >>If you were too slow and failed the timed quest, go and pick it up again
    .goto 1426/0,570.83,-6372.42,0
.target Nori Pridedrift
>>Talk to |cRXP_FRIENDLY_Nori Pridedrift|r
    .accept 3364 >> Accept Scalding Mornbrew Delivery
    .goto 1426/0,383.68,-6057.22
.target Durnan Furcutter
>>Talk to |cRXP_FRIENDLY_Durnan Furcutter|r
    .turnin 3364 >> Turn in Scalding Mornbrew Delivery
step
    #label Scalding1
    .goto 1426/0,383.68,-6057.22
>>Talk to |cRXP_FRIENDLY_Durnan Furcutter|r
    .turnin 3364 >> Turn in Scalding Mornbrew Delivery
.target Durnan Furcutter
    .accept 3365 >> Accept Bring Back the Mug
    .vendor >> vendor trash
step
    .goto 1426/0,388.17,-6056.10
.target Marryk Nurribit
>>Talk to |cRXP_FRIENDLY_Marryk Nurribit|r
    .turnin 3114 >> Turn in Glyphic Memorandum
    .trainer >> Train your class spells
step
    >>Run back out the bunker
    .goto 1426/0,339.36,-6214.82
.target Balir Frosthammer
>>Talk to |cRXP_FRIENDLY_Balir Frosthammer|r
    .turnin 170 >> Turn in A New Threat
step
    .goto 1426/0,324.58,-6224.67
    .vendor >>Vendor, buy 10 water
    .collect 159,10 --Collect Refreshing Spring Water (x10)
step
    .goto 1426/0,506.81,-6477.48,30,0
    .goto 1426/0,684.11,-6480.77,30,0
    .goto 1426/0,772.76,-6362.57,30,0
    .goto 1426/0,684.11,-6480.77,30,0
    .goto 1426/0,772.76,-6362.57,30,0
    .goto 1426/0,684.11,-6480.77,30,0
    .goto 1426/0,772.76,-6362.57,30,0
    >>Kill Frostmane Troll Whelps
    .complete 182,1 --Kill Frostmane Troll Whelp (x14)
step
    #sticky
    #label Mug
    .goto 1426/0,570.83,-6372.42
.target Nori Pridedrift
>>Talk to |cRXP_FRIENDLY_Nori Pridedrift|r
    .turnin 3365 >> Turn in Bring Back the Mug
step
    .goto 1426/0,567.09,-6362.99
>>Talk to |cRXP_FRIENDLY_Grelin Whitebeard|r
    .turnin 182 >> Turn in The Troll Cave
.target Grelin Whitebeard
    .accept 218 >> Accept The Stolen Journal
step
    #requires Mug
    .goto 1426/0,482.18,-6500.47,30,0
    .goto 1426/0,373.83,-6470.92,15,0
    .goto 1426/0,295.03,-6513.60
    >>Enter the Troll cave. Kill Grik'nir, then loot him for Grelin's journal
    .complete 218,1 --Collect Grelin Whitebeard's Journal (x1)
step
    >>Grind a bit back to here
    .goto 1426/0,565.91,-6365.85
>>Talk to |cRXP_FRIENDLY_Grelin Whitebeard|r
    .turnin 218 >> Turn in The Stolen Journal
.target Grelin Whitebeard
    .accept 282 >> Accept Senir's Observations
step
    >> Grind some mobs up to here
    .goto 1426/0,153.00,-6235.86
>>Talk to |cRXP_FRIENDLY_Mountaineer Thalos|r
    .turnin 282 >> Turn in Senir's Observations
.target Mountaineer Thalos
    .accept 420 >> Accept Senir's Observations
step
    .goto 1426/0,132.51,-6247.65
.target Hands Springsprocket
>>Talk to |cRXP_FRIENDLY_Hands Springsprocket|r
    .accept 2160 >> Accept Supplies to Tannok
step
    .goto 1426/0,122.66,-6227.95,20,0
    .goto 1426/0,43.86,-6044.08,20 >>Go through the tunnel
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
    .goto 1426/0,9.38,-5942.30,45,0
    .goto 1426/0,-54.64,-5863.50,45,0
    .goto 1426/0,-359.99,-5705.90
    .xp 5+2415 >> Grind to 2415/+2800xp
step
    #softcore
    .goto 1426/0,-512.67,-5686.2,120 >> Die and respawn at the Spirit Healer, or run to Kharanos. Make sure your subzone is NOT Coldridge Pass
step
    .goto 1426/0,-499.17,-5644.37
.target Senir Whitebeard
>>Talk to |cRXP_FRIENDLY_Senir Whitebeard|r
    .turnin 420 >> Turn in Senir's Observations
step
    #completewith next
    .goto 1426/0,-497.89,-5633.67
    .vendor >>vendor trash
step
    .goto 1426/0,-502.82,-5597.55
.target Ragnar Thunderbrew
>>Talk to |cRXP_FRIENDLY_Ragnar Thunderbrew|r
    .accept 384 >> Accept Beer Basted Boar Ribs
step
    .goto 1426/0,-576.69,-5748.58
    .xp 6 >> Grind to 6
step
    .goto 1426/0,-523.35,-5590.82
.target Tannok Frosthammer
>>Talk to |cRXP_FRIENDLY_Tannok Frosthammer|r
    .turnin 2160 >> Turn in Supplies to Tannok
step
    >>Upstairs
    .goto 1426/0,-537.29,-5587.70
    .trainer >> Train your class spells
step
    .goto 1426/0,-532.37,-5600.83
    .home >> Set your Hearthstone to Thunderbrew Distillery
    .vendor >> Buy as much level 5 drink as you can afford
step
    .goto 1426/0,-464.45,-5573.78
.target Tharek Blackstone
>>Talk to |cRXP_FRIENDLY_Tharek Blackstone|r
    .accept 400 >> Accept Tools for Steelgrill
step
    .goto 1426/0,-632.15,-5466.540
    >>DON'T kill bears en route
.target Pilot Bellowfiz
>>Talk to |cRXP_FRIENDLY_Pilot Bellowfiz|r
    .accept 317 >> Accept Stocking Jetsteam
step
    .goto 1426/0,-641.80,-5473.18
.target Pilot Stonegear
>>Talk to |cRXP_FRIENDLY_Pilot Stonegear|r
    .accept 313 >> Accept The Grizzled Den
step
    .goto 1426/0,-680.12,-5489.20
.target Beldin Steelgrill
>>Talk to |cRXP_FRIENDLY_Beldin Steelgrill|r
    .turnin 400 >> Turn in Tools for Steelgrill
step
    #label BoarMeat44
    .goto 1426/0,-664.55,-5499.710
.target Loslor Rudge
>>Talk to |cRXP_FRIENDLY_Loslor Rudge|r
    .accept 5541 >> Accept Ammo for Rumbleshot
step
    .goto 1426/0,-758.92,-5522.03,40,0
    .goto 1426/0,-734.29,-5646.80,40,0
    .goto 1426/0,-665.34,-5646.80,40,0
    .goto 1426/0,-655.49,-5548.30,40,0
    .goto 1426/0,-561.92,-5502.33,40,0
    .goto 1426/0,-571.77,-5416.97,40,0
    .goto 1426/0,-340.29,-5600.83,40,0
    .goto 1426/0,-758.92,-5522.03,40,0
    .goto 1426/0,-734.29,-5646.80,40,0
    .goto 1426/0,-665.34,-5646.80,40,0
    .goto 1426/0,-655.49,-5548.30,40,0
    .goto 1426/0,-561.92,-5502.33,40,0
    .goto 1426/0,-571.77,-5416.97,40,0
    .goto 1426/0,-340.29,-5600.83,40,0
    .goto 1426/0,-758.92,-5522.03,40,0
    .goto 1426/0,-734.29,-5646.80,40,0
    .goto 1426/0,-665.34,-5646.80,40,0
    .goto 1426/0,-655.49,-5548.30,40,0
    .goto 1426/0,-561.92,-5502.33,40,0
    .goto 1426/0,-571.77,-5416.97,40,0
    .goto 1426/0,-340.29,-5600.83,40,0
    .goto 1426/0,-758.92,-5522.03,40,0
    .goto 1426/0,-734.29,-5646.80,40,0
    .goto 1426/0,-665.34,-5646.80,40,0
    .goto 1426/0,-655.49,-5548.30,40,0
    .goto 1426/0,-561.92,-5502.33,40,0
    .goto 1426/0,-571.77,-5416.97,40,0
    .goto 1426/0,-340.29,-5600.83,40,0
    >>Get the items for Stocking Jetsteam
    .complete 317,1 --Collect Chunk of Boar Meat (x4)
    .complete 317,2 --Collect Thick Bear Fur (x2)
step
    .goto 1426/0,-632.15,-5466.540
>>Talk to |cRXP_FRIENDLY_Pilot Bellowfiz|r
    .turnin 317 >> Turn in Stocking Jetsteam
.target Pilot Bellowfiz
    .accept 318 >> Accept Evershine
step
    >>Go back to the Inn
    .goto 1426/0,-507.74,-5587.70,20,0
    .goto 1426/0,-532.37,-5600.83
    .vendor >> Buy as much level 5 drink as you can afford
    >>You can buy a Skinning Knife outside the inn if you want, it's better than a staff until you get a +stats weapon
step
    .goto 1426/0,-291.04,-5676.35,40,0
    .goto 1426/0,-286.12,-5590.98,40,0
    .goto 1426/0,-217.17,-5499.05,40,0
    .goto 1426/0,-291.04,-5676.35,40,0
    .goto 1426/0,-286.12,-5590.98,40,0
    .goto 1426/0,-217.17,-5499.05,40,0
    .goto 1426/0,-291.04,-5676.35,40,0
    .goto 1426/0,-286.12,-5590.98,40,0
    .goto 1426/0,-217.17,-5499.05,40,0
    .goto 1426/0,-291.04,-5676.35,40,0
    .goto 1426/0,-286.12,-5590.98,40,0
    .goto 1426/0,-217.17,-5499.05,40,0
    >> Go into the cave. Kill Wendigos. Loot them for their Manes
    .complete 313,1 --Collect Wendigo Mane (x8)
step
    >>Loot the crate
    .goto 1426/0,-369.84,-5745.30
    .complete 5541,1 --Collect Rumbleshot's Ammo (x1)
step
    #label BearFur
    .goto 1426/0,-197.47,-5932.45,30,0
    .goto 1426/0,-201.51,-6015.520
.target Hegnar Rumbleshot
>>Talk to |cRXP_FRIENDLY_Hegnar Rumbleshot|r
    .turnin 5541 >> Turn in Ammo for Rumbleshot
    .vendor >> Vendor and repair
step
    .xp 7 >> Grind to 7
step
    >>Grind some mobs en route
    .goto 1426/0,68.48,-5728.88,50,0
    .goto 1426/0,29.08,-5584.42,50,0
    .goto 1426/0,98.03,-5574.57
.target Tundra MacGrann
>>Talk to |cRXP_FRIENDLY_Tundra MacGrann|r
    .accept 312 >> Accept Tundra MacGrann's Stolen Stash
step
    .goto 1426/0,299.96,-5387.42
    .vendor >> Vendor. Buy up to 20 level 5 drink
step
    #sticky
    #label Evershine
    .goto 1426/0,314.73,-5380.85
>>Talk to |cRXP_FRIENDLY_Rejold Barleybrew|r
    .turnin 318 >> Turn in Evershine
.target Rejold Barleybrew
    .accept 319 >> Accept A Favor for Evershine
    .accept 315 >> Accept The Perfect Stout
step
    .goto 1426/0,315.42,-5372.02
.target Marleth Barleybrew
>>Talk to |cRXP_FRIENDLY_Marleth Barleybrew|r
    .accept 310 >> Accept Bitter Rivals
step
    #label Ribs
    #requires Evershine
    .goto 1426/0,250.71,-5154.30,60,0
    .goto 1426/0,408.31,-5187.13,60,0
    .goto 1426/0,388.61,-5311.90,60,0
    .goto 1426/0,531.43,-5426.82,60,0
    .goto 1426/0,531.43,-5426.82,60,0
    .goto 1426/0,324.58,-5577.85,60,0
    .goto 1426/0,250.71,-5154.30,60,0
    .goto 1426/0,408.31,-5187.13,60,0
    .goto 1426/0,388.61,-5311.90,60,0
    .goto 1426/0,531.43,-5426.82,60,0
    .goto 1426/0,531.43,-5426.82,60,0
    .goto 1426/0,324.58,-5577.85,60,0
    >> Kill Bears, Boars and Leopards. Go from north->west->south
    .complete 319,1 --Kill Ice Claw Bear (x6)
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .complete 319,3 --Kill Snow Leopard (x8)
step
    >>Finish off getting the Boar Ribs
    .complete 384,1 --Collect Crag Boar Rib (x6)
step
    .goto 1426/0,315.28,-5378.39
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
    .goto 1426/0,-532.37,-5600.83
    >> Buy a Rhapsody Malt and Thunder Ale from Belm
    .complete 384,2 --Collect Rhapsody Malt (x1)
    .collect 2686,1 --Collect Thunder Ale (x1)
step
    .goto 1426/0,-542.22,-5597.55,10,0
    .goto 1426/0,-547.63,-5607.07
    >>Go downstairs, then talk to Jarven, and give him the Thunder Ale
    >>Wait for the barrel mouseover to become "unguarded", then handin
    .turnin 310 >> Turn in Bitter Rivals
    .accept 311 >> Accept Return to Marleth
step
    .goto 1426/0,-502.82,-5597.55
.target Ragnar Thunderbrew
>>Talk to |cRXP_FRIENDLY_Ragnar Thunderbrew|r
    .turnin 384 >> Turn in Beer Basted Boar Ribs
     >>Sell the recipe when you next vendor
step
    .xp 8 >> Grind to 8
step
    .goto 1426/0,-537.29,-5587.70
    .trainer >> Train your class spells
    >>Make sure you train Polymorph
step
    .goto 1426/0,-532.37,-5600.83
    .vendor >> Buy up to 30 level 5 drink from the innkeeper
step
    .goto 1426/0,-499.17,-5644.37
.target Senir Whitebeard
>>Talk to |cRXP_FRIENDLY_Senir Whitebeard|r
    .accept 287 >> Accept Frostmane Hold
step
    .goto 1426/0,-641.80,-5473.18
.target Pilot Stonegear
>>Talk to |cRXP_FRIENDLY_Pilot Stonegear|r
    .turnin 313 >> Turn in The Grizzled Den
step
    .goto 1426/0,-632.15,-5466.540
.target Pilot Bellowfiz
>>Talk to |cRXP_FRIENDLY_Pilot Bellowfiz|r
    .turnin 320 >> Turn in Return to Bellowfiz
step
    #era/som
    >>Inside the building
    .goto 1426/0,-453.57,-5499.05
.target Razzle Sprysprocket
>>Talk to |cRXP_FRIENDLY_Razzle Sprysprocket|r
    .accept 412 >> Accept Operation Recombobulation
step
    .goto 1426/0,-320.59,-5354.58,25,0
    .goto 1426/0,-271.34,-5367.72,25 >> Run up the ramp to Shimmerweed
step
    .goto 1426/0,-212.24,-5364.43,30,0
    .goto 1426/0,-241.79,-5308.62,30,0
    .goto 1426/0,-153.14,-5190.42,30,0
    .goto 1426/0,-271.34,-5003.27,30,0
    >>Clear mobs in this area. Be careful if you need to clear the middle camp. You can pull the mobs in the huts and line of sight (LoS) them behind the huts if you need 2 more mobs. If you get unlucky, run to the other area
    >>Loot boxes on the ground
    .complete 315,1 --Collect Shimmerweed (x6)
step
    >> Polymorph Old Icebeard, then loot the meats
    .goto 1426/0,-94.04,-5646.80
    .complete 312,1 --Collect MacGrann's Dried Meats (x1)
step
    .goto 1426/0,98.03,-5574.57
.target Tundra MacGrann
>>Talk to |cRXP_FRIENDLY_Tundra MacGrann|r
    .turnin 312 >> Turn in Tundra MacGrann's Stolen Stash
step
    .goto 1426/0,304.88,-5380.85
    .vendor >> Buy up to 20 more level 5 drink
step
    #sticky
    #label Stout
    .goto 1426/0,315.28,-5378.39
>>Talk to |cRXP_FRIENDLY_Rejold Barleybrew|r
    .turnin 315 >> Turn in The Perfect Stout
.target Rejold Barleybrew
    .accept 413 >> Accept Shimmer Stout
step
    .goto 1426/0,315.42,-5372.02
.target Marleth Barleybrew
>>Talk to |cRXP_FRIENDLY_Marleth Barleybrew|r
    .turnin 311 >> Turn in Return to Marleth
step
    #era/som
    #requires Stout
    .goto 1426/0,462.48,-5288.92,40,0
    .goto 1426/0,580.68,-5167.43,40,0
    .goto 1426/0,541.28,-5302.05,40,0
    .goto 1426/0,605.31,-5321.75,40,0
    .goto 1426/0,551.13,-5367.72,40,0
    >>Kill Leper Gnomes. Loot them for Gears and Cogs
    .complete 412,2 --Collect Gyromechanic Gear (x8)
    .complete 412,1 --Collect Restabilization Cog (x8)
step
    .xp 9 >> Grind to 9
step
    .goto 1426/0,595.46,-5545.02,35 >>Enter the cave
step
    .goto 1426/0,713.66,-5528.60,40,0
    .goto 1426/0,753.06,-5613.97,40,0
    >>Kill Headhunters inside the cave
    .complete 287,1 --Kill Frostmane Headhunter (x5)
step
    #hardcore
    >>Carefully grind down into this nook in the cave
    .goto 1426/0,669.33,-5590.98
    .complete 287,2 --Fully explore Frostmane Hold
step
    #softcore
    .goto 1426/0,649.63,-5568.00,15 >>Go back up the cave
step
    #softcore
    >>Jump down, you die after
    .goto 1426/0,669.33,-5590.98
    .complete 287,2 --Fully explore Frostmane Hold
step
    #softcore
    .deathskip >> Die and respawn at the Spirit Healer
step
    #hardcore
   .goto 1426/0,-499.17,-5644.37,150 >> Hearth if its up, otherwise grind back to Kharanos
step
    .goto 1426/0,-499.17,-5644.37
>>Talk to |cRXP_FRIENDLY_Senir Whitebeard|r
    .turnin 287 >> Turn in Frostmane Hold
.target Senir Whitebeard
    .accept 291 >> Accept The Reports
step
    #era/som
    .goto 1426/0,-453.57,-5499.05
.target Razzle Sprysprocket
>>Talk to |cRXP_FRIENDLY_Razzle Sprysprocket|r
    .turnin 412 >> Turn in Operation Recombobulation
step
    .goto 1426/0,-1157.84,-5604.12,50,0
    .goto 1426/0,-1305.59,-5512.18
.target Rudra Amberstill
>>Talk to |cRXP_FRIENDLY_Rudra Amberstill|r
    .accept 314 >> Accept Protecting the Herd
step
    #sticky
    #completewith next
    .goto 1426/0,-1266.19,-5528.60,14,0
    .goto 1426/0,-1261.27,-5499.05,10 >>Run up this part of the mountain
step
    >>Kill Vagash. Loot him for his Fang
    >>Kite him to the guard south of the ranch. Make sure you do 51%+ damage to him
    >>Be careful as this quest can be difficult
    .goto 1426/0,-1280.97,-5390.70
    .complete 314,1 --Collect Fang of Vagash (1)
--N Video tutorial needed
step
    .goto 1426/0,-1305.59,-5512.18
.target Rudra Amberstill
>>Talk to |cRXP_FRIENDLY_Rudra Amberstill|r
    .turnin 314 >> Turn in Protecting the Herd
step
    >>Grind a little en route
    .goto 1426/0,-1576.47,-5673.07
    .vendor >>vendor trash. Buy some food/water if needed
step
    .goto 1426/0,-1581.39,-5715.75
.target Senator Mehr Stonehallow
>>Talk to |cRXP_FRIENDLY_Senator Mehr Stonehallow|r
    .accept 433 >> Accept The Public Servant
step
    #completewith next
    .goto 1426/0,-1591.24,-5712.47
    .vendor >> vendor trash, repair
step
    .goto 1426/0,-1600.30,-5726.590
.target Foreman Stonebrow
>>Talk to |cRXP_FRIENDLY_Foreman Stonebrow|r
    .accept 432 >> Accept Those Blasted Troggs!
step
    .goto 1426/0,-1674.97,-5735.45,30,0
    .goto 1426/0,-1684.82,-5627.10,30,0
    .goto 1426/0,-1738.99,-5541.73,30,0
    .goto 1426/0,-1788.24,-5620.53,30,0
    .goto 1426/0,-1674.97,-5735.45,30,0
    .goto 1426/0,-1684.82,-5627.10,30,0
    .goto 1426/0,-1738.99,-5541.73,30,0
    .goto 1426/0,-1788.24,-5620.53,30,0
    >>Kill Troggs in the cave
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .complete 433,1 --Kill Rockjaw Bonesnapper (x10)
step
    .goto 1426/0,-1600.30,-5726.590
.target Foreman Stonebrow
>>Talk to |cRXP_FRIENDLY_Foreman Stonebrow|r
    .turnin 432 >> Turn in Those Blasted Troggs!
step
    #completewith next
    .goto 1426/0,-1591.24,-5712.47
    .vendor >> vendor trash, repair
step
    .goto 1426/0,-1581.39,-5715.75
.target Senator Mehr Stonehallow
>>Talk to |cRXP_FRIENDLY_Senator Mehr Stonehallow|r
    .turnin 433 >> Turn in The Public Servant
step
    .goto 1426/0,-1502.59,-5837.23,40,0
    .goto 1426/0,-1679.89,-5787.98,40,0
    .goto 1426/0,-1694.67,-5646.8,40,0
    .xp 10 >> Grind to 10 at the troggs
step
    .goto 1426/0,-1576.47,-5673.07
    .vendor >>vendor trash, buy up to 30 level 5 drink from Kazan
    .trainer >> Train Cooking from Ghilm. You'll need this to pick up 2 extra quests later
step
    .goto 1426/0,-2325.07,-5164.15
.target Pilot Hammerfoot
>>Talk to |cRXP_FRIENDLY_Pilot Hammerfoot|r
    .accept 419 >> Accept The Lost Pilot
step
    >>Grind en route
    .goto 1426/0,-2123.14,-5065.65
    .turnin 419 >> Turn in The Lost Pilot
    .accept 417 >> Accept A Pilot's Revenge
step
    >>Kill Mangeclaw. Loot him for his Claw
    .goto 1426/0,-2137.92,-5072.22
    .complete 417,1 --Collect Mangy Claw (x1)
step
    .goto 1426/0,-2329.60,-5163.76
.target Pilot Hammerfoot
>>Talk to |cRXP_FRIENDLY_Pilot Hammerfoot|r
    .turnin 417 >> Turn in A Pilot's Revenge
step
    >>Go back through the tunnel you came from
    .goto 1426/0,-2118.22,-5541.73,50,0
    .goto 1426/0,-2251.19,-5633.67,25,0
    .goto 1426/0,-2447.11,-5479.74
>>Talk to |cRXP_FRIENDLY_Mountaineer Barleybrew|r
    .turnin 413 >> Turn in Shimmer Stout
.target Mountaineer Barleybrew
    .accept 414 >> Accept Stout to Kadrell
]])

RXPGuides.RegisterGuide([[
#forever
<< Alliance Mage
#name 10-12 Loch Modan Mage AoE
#version 1
#group RestedXP Forever Guide (A)
#subgroup Speedrun Guide Mage
#defaultfor Human Mage/Gnome Mage
#next 12-18 Darkshore Mage AoE
step
    #era/som
    #completewith next
    +As you quest through Loch Modan, save ALL of the Chunks of Boar Meat you get and DO NOT vendor it. You'll need it for later
step << Gnome
    .goto 1432/0,-2602.54,-5832.73
.target Mountaineer Cobbleflint
>>Talk to |cRXP_FRIENDLY_Mountaineer Cobbleflint|r
    .accept 224 >> Accept In Defense of the King's Lands
step << Gnome
    .goto 1432/0,-2634.59,-5842.81
    >>Go into the bunker from behind
.target Captain Rugelfuss
>>Talk to |cRXP_FRIENDLY_Captain Rugelfuss|r
    .accept 267 >> Accept The Trogg Threat
step << Gnome
    .goto 1432/0,-2818.49,-5742.10,45 >> Run to the Troggs Entrance
step << Gnome
    .goto 1432/0,-2821.25,-5819.36,50,0
    .goto 1432/0,-2950.89,-5804.64,50,0
    .goto 1432/0,-2846.07,-5979.40,50,0
    .goto 1432/0,-2821.25,-5819.36,50,0
    .goto 1432/0,-2950.89,-5804.64,50,0
    .goto 1432/0,-2846.07,-5979.40,50,0
    >>Kill Stonesplinter Troggs. Loot them for their Teeth
    >>Be careful as this quest can be difficult. Run if you misspull 2 mobs at once
    .complete 224,1 --Kill Stonesplinter Trogg (x10)
    .complete 224,2 --Kill Stonesplinter Scout (x10)
    .complete 267,1 --Collect Trogg Stone Tooth (x8)
step << Gnome
    .goto 1432/0,-2602.54,-5832.73
.target Mountaineer Cobbleflint
>>Talk to |cRXP_FRIENDLY_Mountaineer Cobbleflint|r
    .turnin 224 >> Turn in Defense of the King's Lands
step << Gnome
    .goto 1432/0,-2634.59,-5842.81
    >>Go into the bunker from behind
.target Captain Rugelfuss
>>Talk to |cRXP_FRIENDLY_Captain Rugelfuss|r
    .turnin 267 >> Turn in The Trogg Threat
step << Human
    .goto 1432/0,-2658.51,-4822.30
    .vendor >>Vendor and repair
step << Human
    .goto 1432/0,-2676.82,-4825.93
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
    .goto 1432/0,-2961.92,-5366.82,130 >>Grind mobs en route for cooking quest later
step
    >>Run up to Thelsamar. do NOT set your hearth << Gnome
    .goto 1432/0,-2954.42,-5394.10
.target Vidra Hearthstove
>>Talk to |cRXP_FRIENDLY_Vidra Hearthstove|r
    .accept 418 >> Accept Thelsamar Blood Sausages
step << Human
    #sticky
    .abandon 1338 >> Abandon Stormpike's Order. This is to unlock Mountaineer Stormpike's Task
step
    .goto 1432/0,-2953.65,-5381.54
    .vendor >>Buy 1-2 6 slot bags to fill your bag slots
step
    .goto 1432/0,-2972.96,-5377.86
    .vendor >> Buy food/water (try to have 40 level 5 drink, 20 level 5 food)
step
    .goto 1432/0,-2892.97,-5405.45,80.0,0
    .goto 1432/0,-3019.85,-5335.55,80.0,0
    .goto 1432/0,-3006.06,-5252.77
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
    .goto 1432/0,-2658.51,-4822.30
    .vendor >>Vendor and repair
step << Gnome
    .goto 1432/0,-2676.82,-4825.93
>>Talk to |cRXP_FRIENDLY_Mountaineer Stormpike|r
    .turnin 1339 >> Turn in Mountaineer Stormpike's Task
.target Mountaineer Stormpike
    .accept 1338 >> Accept Stormpike's Order
    .accept 307 >> Accept Filthy Paws
step << Gnome
    #label Thelsamar1
    .goto 1432/0,-2923.58,-4803.910,130 >>Grind some mobs for Boar Intestines, Bear Meat and Spider Ichor en route
step << Human
    #label Thelsamar1
    .goto 1432/0,-3077.77,-4984.19,130 >>Grind some mobs for Boar Intestines, Bear Meat and Spider Ichor en route
step
    #sticky
    #completewith Gear
    >> Kill Tunnel Rats. Loot them for their Ears
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
step
    .goto 1432/0,-2972.96,-4822.30,45 >>Go to the entrance of the cave whilst killing rats
step
    #label Gear
    .goto 1432/0,-2972.96,-4853.58,12,0
    .goto 1432/0,-2997.78,-4868.29,12,0
    .goto 1432/0,-2967.44,-4892.21,12,0
    .goto 1432/0,-2983.99,-4894.05,12,0
    .goto 1432/0,-2995.02,-4941.88,12,0
    .goto 1432/0,-2978.47,-4934.52,12,0
    .goto 1432/0,-2956.41,-4945.56,12,0
    .goto 1432/0,-2978.47,-4934.52,12,0
    .goto 1432/0,-2995.02,-4941.88,12,0
    .goto 1432/0,-2983.99,-4894.05,12,0
    .goto 1432/0,-2967.44,-4892.21,12,0
    .goto 1432/0,-2997.78,-4868.29,12,0
    .goto 1432/0,-2972.96,-4853.58,12,0
    >>Collect the crates you find in the cave. Be careful because this is difficult at level 11
    >>Be careful as the Geomancers cast Flame Ward (Fire Immunity) after a few seconds
    .complete 307,1 --Collect Miners' Gear (x4)
step
    .goto 1432/0,-3081.36,-4902.88
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
    .goto 1432/0,-2636.44,-4816.79,60 >>Run back to the bunker, grinding en route
step
    .goto 1432/0,-2658.51,-4822.30
    .vendor >>vendor and repair
step
    .goto 1432/0,-2675.06,-4824.14
>>Talk to |cRXP_FRIENDLY_Mountaineer Stormpike|r
    .turnin 307 >> Turn in Filthy Paws
    .turnin 1339 >> Turn in Mountaineer Stormpike's Task << Human
.target Mountaineer Stormpike
    .accept 1338 >> Accept Stormpike's Order << Human
step
    #sticky
    #label Meat9
    .goto 1432/0,-2735.74,-4684.34,40,0
    .goto 1432/0,-2846.07,-4682.50,40,0
    .goto 1432/0,-2782.63,-4770.80,40,0
    .goto 1432/0,-2835.04,-4976.83,40,0
    .goto 1432/0,-2915.03,-5044.89,40,0
    .goto 1432/0,-3080.53,-5100.08,40,0
    .goto 1432/0,-2735.74,-4684.34,40,0
    .goto 1432/0,-2846.07,-4682.50,40,0
    .goto 1432/0,-2782.63,-4770.80,40,0
    .goto 1432/0,-2835.04,-4976.83,40,0
    .goto 1432/0,-2915.03,-5044.89,40,0
    .goto 1432/0,-3080.53,-5100.08,40,0
    .goto 1432/0,-2735.74,-4684.34
    >>Kill Bears. Loot them for Meat
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
step
    #sticky
    #label Ichor9
    .goto 1432/0,-2873.66,-4789.19,40,0
    .goto 1432/0,-2766.08,-4866.45,40,0
    .goto 1432/0,-2926.07,-5232.53,40,0
    .goto 1432/0,-2992.27,-5055.93,40,0
    .goto 1432/0,-3069.5,-5078.01,40,0
    .goto 1432/0,-2873.66,-4789.19,40,0
    .goto 1432/0,-2766.08,-4866.45,40,0
    .goto 1432/0,-2926.07,-5232.53,40,0
    .goto 1432/0,-2992.27,-5055.93,40,0
    .goto 1432/0,-3069.5,-5078.01,40,0
    .goto 1432/0,-2873.66,-4789.19
    >>Kill Spiders. Loot them for Ichor
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
step
    .goto 1432/0,-3041.92,-5129.51,40,0
    .goto 1432/0,-3017.09,-5219.65,40,0
    .goto 1432/0,-2815.73,-5147.91,40,0
    .goto 1432/0,-2757.81,-4952.91,40,0
    .goto 1432/0,-2782.63,-4903.25,40,0
    .goto 1432/0,-3041.92,-5129.51,40,0
    .goto 1432/0,-3017.09,-5219.65,40,0
    .goto 1432/0,-2815.73,-5147.91,40,0
    .goto 1432/0,-2757.81,-4952.91,40,0
    .goto 1432/0,-2782.63,-4903.25,40,0
    .goto 1432/0,-3041.92,-5129.51
    >>Kill Boars. Loot them for Intestines
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
step
#hidewindow
    #requires Meat9
step
    #sticky
    #label RatCatching
    #requires Ichor9
    .goto 1432/0,-2892.97,-5405.45,80.0,0
    .goto 1432/0,-3019.85,-5335.55,80.0,0
    .goto 1432/0,-3006.06,-5252.77
    >>Find Kadrell. He patrols along the Thelsamar road
.target Mountaineer Kadrell
>>Talk to |cRXP_FRIENDLY_Mountaineer Kadrell|r
    .turnin 416 >> Turn in Rat Catching
step
    #requires Ichor9
    .goto 1432/0,-2954.42,-5394.10
.target Vidra Hearthstove
>>Talk to |cRXP_FRIENDLY_Vidra Hearthstove|r
    .turnin 418 >> Turn in Thelsamar Blood Sausages
step
    #era/som
    .goto 1432/0,-2952.55,-5381.91
    .vendor >> Buy 6 slots until your bag containers are full. Also buy 1 Flint and Tinder, and 2 Simple Wood
    .collect 4470,2 --Simple Wood (2)
    .collect 4471,1 --Flint and Tinder (1)
step
    .xp 12 >> Grind to 12
step << Gnome
    #completewith next
    #requires RatCatching
    .goto 1432/0,-3781.70,-5702.36
    .vendor >> Check Aldren for a Wise Man's Belt. Buy it if you can afford it. Save it for later
step << Gnome
    #requires RatCatching
    .goto 1432/0,-3812.59,-5694.63
.target Prospector Ironband
>>Talk to |cRXP_FRIENDLY_Prospector Ironband|r
    .accept 298 >>Accept Excavation Progress Report
step << Gnome
    #softcore
    .goto 1432/0,-3872.73,-5646.07
    .deathskip >> Die and respawn back in Thelsamar
step << Gnome
    #hardcore
    >> Run back to Thelsamar. Go inside the building
    .goto 1432/0,-3018.75,-5350.08,20,0
    .goto 1432/0,-3014.88,-5367.00
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
    .goto 1432/0,-3018.75,-5350.08,20,0
    .goto 1432/0,-3014.88,-5367.00
.target Brock Stoneseeker
>>Talk to |cRXP_FRIENDLY_Brock Stoneseeker|r
    .accept 6387 >>Accept Honor Students
>>Talk to |cRXP_FRIENDLY_Jern Hornhelm|r
    .turnin 298 >>Turn in Excavation Progress Report
.target Jern Hornhelm
    .accept 301 >>Accept Report to Ironforge
step
    #requires RatCatching
    .goto 1432/0,-2929.93,-5424.95
    .fp Thelsamar >> Get the Thelsamar flight path
>>Talk to |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .turnin 6387 >>Turn in Honor Students << Gnome
.target Thorgrum Borrelson
    .accept 6391 >>Accept Ride to Ironforge << Gnome
    .fly Ironforge >> Fly to Ironforge
step << Human
    .goto 1455/0,-928.25,-4614.46
    .trainer >> Train your class spells
step << skip --logout skip << Human
    #completewith next
    +Go toward the staircase behind the paladin trainers at the back of the room. Go about halfway up, then move yourself to the edge of the stairs until it looks like you're floating. Logout, then back in
    .link https://www.youtube.com/watch?v=E8b90bzJMSI >> CLICK HERE for reference
    >>Logout skip to the front of Ironforge
step << Human
    .goto 1455/0,-810.36,-5039.71,120 >> Exit Ironforge
step << Gnome
    .goto 1455/0,-1303.79,-4631.18
>>Talk to |cRXP_FRIENDLY_Prospector Stormpike|r
    .turnin 301 >>Turn in Report to Ironforge
.target Prospector Stormpike
    .accept 302 >>Accept Powder to Ironband
step << Gnome
    >>Go back toward The Great Forge, then take a right and go inside the building
    .goto 1455/0,-1105.66,-4722.04,30,0
    .goto 1455/0,-1120.92,-4708.11
>>Talk to |cRXP_FRIENDLY_Golnir Bouldertoe|r
    .turnin 6391 >>Turn in Ride to Ironforge
.target Golnir Bouldertoe
    .accept 6388 >>Accept Gryth Thurden
step << Gnome
    .goto 1455/0,-1026.28,-4872.56
.target Senator Barin Redstone
>>Talk to |cRXP_FRIENDLY_Senator Barin Redstone|r
    .turnin 291 >>Turn in The Reports
step << Gnome
    .goto 1455/0,-1152.39,-4820.914
>>Talk to |cRXP_FRIENDLY_Gryth Thurden|r
    .turnin 6388 >>Turn in Gryth Thurden
.target Gryth Thurden
    .accept 6392 >>Accept Return to Brock
    .fly Thelsamar >> Fly to Thelsamar
step << Gnome
    >>Go inside the building
    .goto 1432/0,-3018.75,-5350.08,20,0
    .goto 1432/0,-3014.88,-5367.00
.target Brock Stoneseeker
>>Talk to |cRXP_FRIENDLY_Brock Stoneseeker|r
    .turnin 6392 >>Turn in Return to Brock
.target Jern Hornhelm
>>Talk to |cRXP_FRIENDLY_Jern Hornhelm|r
    .turnin 302 >>Turn in Powder to Ironband
step << Gnome
    .hs >> Hearth to Kharanos
step << Gnome
    .goto 1426/0,-537.29,-5587.04
    .trainer >> Train your class spells
step
    #hardcore
    #completewith next
    .goto 1426/0,-1124.84,-5283.99,150 >> Travel to the skip spot
step
    #hardcore
    .goto 1426/0,-1128.29,-5282.35,40,0
    .goto 1426/0,-1172.62,-5325.03,40,0
    .goto 1426/0,-1207.09,-5325.03,40,0
    .goto 1426/0,-1212.02,-5265.93,40,0
    .goto 1426/0,-1192.32,-5219.97,40,0
    .goto 1426/0,-1103.67,-5174.0,40,0
    .goto 1426/0,-1167.69,-5144.45,40,0
    .goto 1426/0,-1236.64,-5147.73,40,0
    .goto 1426/0,-1433.64,-4586.28,40,0
    .goto 1426/0,-1438.57,-4287.50,40,0
    .goto 1426/0,-1428.72,-4231.68,40,0
    .goto 1426/0,-1473.04,-4205.42,40,0
    .goto 1426/0,-1492.74,-4156.17,40,0
    .goto 1437/0,-1241.48,-4000.12,50,0
    .goto 1437/0,-1121.55,-4013.90,40,0
    .goto 1437/0,-1084.33,-3947.75,40,0
    .goto 1437/0,-1014.03,-3911.92,40,0
    .goto 1437/0,-889.97,-3809.94,40,0
    >>Open this link and follow it on another screen.
    >>Do the Deathless Dun Morogh -> Wetlands skip
    >>Avoid the Crocodiles when crossing the sea
    .link https://www.youtube.com/watch?v=9afQTimaiZQ >> CLICK HERE for reference
    .goto 1437/0,-889.97,-3809.94,80 >> Travel to Menethil Harbor
step
    #softcore
    .goto 1426/0,309.81,-5108.33,50 >> Run to here
step
    #softcore
    .goto 1426/0,280.26,-4963.87,15 >>Run up the mountain north
step
    #softcore
    .goto 1426/0,206.38,-4832.53,15 >>Follow it up to here
step
    #softcore
    .goto 1426/0,176.83,-4770.15,15,0
    .goto 1426/0,176.83,-4704.48,15,0
    .goto 1437/0,-869.29,-3344.13,60,0
    .deathskip >>Keep running straight north, drop down and die, then respawn
step
    #softcore
    #completewith next
    .goto 1437/0,-914.78,-3435.09,60 >> Swim to shore
step
    .money <0.08
    .goto 1437/0,-819.67,-3691.42,15,0
    .goto 1437/0,-807.26,-3716.22,15,0
    .goto 1437/0,-827.94,-3724.49,15,0
    .goto 1437,10.760,56.721
    .vendor >> If you have 8s, Check for Bronze Tube from Neal Allen and buy it if it's there
step
    .money <0.04
    .goto 1437/0,-724.55,-3699.69
    .vendor >> Check Dewin for Heal Potions, buy down to 1s
step
    .goto 1437/0,-782.45,-3793.40
    .fp Menethil Harbor >> Get the Menethil Harbor flight path
step
    #era/som
    #sticky
    #completewith Darkshore1
    +Wait here for the boat. Make a Campfire from your spellbook and start cooking the chunks of boar meat you saved from earlier. You need at least 10 skill now, and 50 later (so cook all of it)
    .goto 1437/0,-583.95,-3727.25
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

