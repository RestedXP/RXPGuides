RXPGuides.RegisterGuide("RestedXP Alliance 1-20",[[
<< Alliance Warlock
#name 1-12 Elwynn Forest Warlock
#next 12-14 Loch Modan Human
step
    #sticky
    #completewith next
>>Drop your Hearthstone
    >> Kill 2 Wolves for 10c+ of vendor trash before vendoring. Sell armor if you didn’t get enough
.goto Elwynn Forest,49.5,45.4
step
.goto Elwynn Forest,50.1,42.7
    .vendor >>vendor trash
step
.goto Elwynn Forest,49.9,42.6
    .accept 1598 >> Accept The Stolen Tome
    .train 348 >>Train Immolate
step
.goto Elwynn Forest,52.9,44.3,60
    >>Kill some wolves en route here, then do this VIDEO
    .goto Elwynn Forest,56.7,44.0
    .complete 1598,1 --Collect Powers of the Void (x1)
step
>> Die and respawn at the Spirit Healer, or run to here
    .goto Elwynn Forest,49.6,43.4,60
step
    .goto Elwynn Forest,49.9,42.6
    .turnin 1598 >> Turn in The Stolen Tome
step
    >>Summon Imp, rebuff Demon Skin
    .goto Elwynn Forest,48.2,42.9
    .accept 783 >> Accept A Threat Within
step
    .goto Elwynn Forest,48.9,41.6
    .turnin 783 >> Turn in A Threat Within
    .accept 7 >> Accept Kobold Camp Cleanup
step
.goto Elwynn Forest,48.2,42.9
    .accept 5261 >> Accept Eagan Peltskinner
step
.goto Elwynn Forest,46.2,40.4
    .vendor >>Kill wolves until 50c worth of vendor trash. Vendor, then buy x10 water from Brother Danil.
    .collect 159,10 --Collect Refreshing Spring Water (x10)
step
    .xp 2 >> Grind to 2
step
    .goto Elwynn Forest,48.9,40.2
    .turnin 5261 >> Turn in Eagan Peltskinner
    .accept 33 >> Accept Wolves Across The Border
step
    >>Kill Young Wolves in the area for Meat
.goto Elwynn Forest,46.2,37.4
    .complete 33,1 --Collect Tough Wolf Meat (x8)
step
    >>Kill Kobold Vermin in the area
.goto Elwynn Forest,49.8,36.0
    .complete 7,1 --Kill Kobold Vermin (x10)
step
    .xp 3 >> Grind to 3
step
    .goto Elwynn Forest,48.9,40.2
    .turnin 33 >> Turn in Wolves Across The Border
step
.goto Elwynn Forest,47.6,41.5
    .vendor >>vendor trash, then buy x10 more water from Brother Danil
step
    .goto Elwynn Forest,48.9,41.6
    .turnin 7 >> Turn in Kobold Camp Cleanup
    .accept 15 >> Accept Investigate Echo Ridge
    .accept 3105 >> Accept Tainted Letter
step
    >>grind en route to here
>>Kill Kobold Workers
.goto Elwynn Forest,47.0,32.2
    .complete 15,1 --Kill Kobold Worker (x10)
step
.xp 3+1110 >>Grind to 1110+/1400xp on your way back
    .goto Elwynn Forest,47.7,41.4,10
    .vendor >>vendor trash
step
    .goto Elwynn Forest,48.9,41.6
    .turnin 15 >> Turn in Investigate Echo Ridge
    .accept 21 >> Accept Skirmish at Echo Ridge
step
    .goto Elwynn Forest,48.2,42.9
    .accept 18 >> Accept Brotherhood of Thieves
step
.goto Elwynn Forest,49.9,42.6
    .turnin 3105 >> Turn in Tainted Letter
    .xp 4 >> Grind to 4
    .train 172 >>Train Corruption
step
    >>Kill Defias Thugs for Bandanas
.goto Elwynn Forest,54.5,49.4
    .complete 18,1 --Collect Red Burlap Bandana (x12)
step
    .goto Elwynn Forest,48.2,42.9
    .turnin 18 >> Turn in Brotherhood of Thieves
    .accept 6 >> Accept Bounty on Garrick Padfoot
    .accept 3903 >> Accept Milly Osworth
step
.goto Elwynn Forest,47.7,41.4
    .vendor >>vendor trash
step
    >>Grind en route to here
    >>Kill Laborers in the mine
.goto Elwynn Forest,48.6,27.6
    .complete 21,1 --Kill Kobold Laborer (x12)
step
    .xp 5 >> Grind to 5
step
    .goto Elwynn Forest,50.7,39.2
    >>Grind a bit en route
    .turnin 3903 >> Turn in Milly Osworth. Skip followup
step
    .goto Elwynn Forest,50.7,39.2
    .abandon 3904 >> Abandon Milly's Harvest
step
    .goto Elwynn Forest,57.5,48.2
    >>Grind a bit en route. Kill Garrick and loot his head
    .complete 6,1 --Collect Garrick's Head (x1)
step
.xp 5+1715 >> Grind on your way back to 1715+/2800xp
    .goto Elwynn Forest,48.2,42.9
step
    .goto Elwynn Forest,48.2,42.9
    .turnin 6 >> Turn in Bounty on Garrick Padfoot
step
    .goto Elwynn Forest,48.9,41.6
    .turnin 21 >> Turn in Skirmish at Echo Ridge
    .accept 54 >> Accept Report to Goldshire
step
    .goto Elwynn Forest,45.6,47.7
    .accept 2158 >> Accept Rest and Relaxation
step
    #sticky
#completewith Goldshire
>> Die and respawn at the Spirit Healer, or run to Goldshire
    .goto Elwynn Forest,39.5,60.5,170
step
    #label Goldshire
.goto Elwynn Forest,41.7,65.9
    .vendor >>vendor trash, repair
step
.goto Elwynn Forest,42.1,65.9
    .turnin 54 >> Turn in Report to Goldshire
    .accept 62 >> Accept The Fargodeep Mine
step
>>Go in the inn
    .goto Elwynn Forest,42.9,65.7,15
step
    >>On your close left as you go in
    .goto Elwynn Forest,43.3,65.7
    .accept 60 >> Accept Kobold Candles
step
.goto Elwynn Forest,43.8,65.8
    .turnin 2158 >> Turn in Rest and Relaxation
    .home >> Set your Hearthstone to Goldshire
step
.xp 6 >> Grind to 6
step
>>Go to the room behind the innkeeper, then go downstairs.
    .goto Elwynn Forest,44.1,66.0,10
step
.goto Elwynn Forest,44.4,66.0
    .vendor >>Buy Blood Pact book. Use Blood Pact Book
step
.goto Elwynn Forest,44.4,66.2
    .train 695 >>Train Shadow Bolt r2
    .train 1454 >>Train Life Tap
step
>>Exit the inn
    .goto Elwynn Forest,42.9,65.7,10
step
    .goto Elwynn Forest,42.1,67.3
    .accept 47 >> Accept Gold Dust Exchange
step
    #sticky
    #completewith BoarMeat1
>>Start killing some boars you see for Boar Meat
    .collect 769,4 --Collect Chunk of Boar Meat (x4)
step
    .goto Elwynn Forest,34.5,84.3
    .accept 85 >> Accept Lost Necklace
step
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
#completewith Dust
    >> Get some Gold Dust from nearby Kobolds
    .complete 47,1 --Collect Gold Dust (x10)
step
#label Dust
>>Grind mobs east through the outside of the mine
.goto Elwynn Forest,43.1,85.7
    .turnin 85 >> Turn in Lost Necklace
    .accept 86 >> Accept Pie for Billy
step
    #label BoarMeat1
.goto Elwynn Forest,43.2,89.6
    .accept 106 >> Accept Young Lovers
step
.goto Elwynn Forest,42.4,89.4
    .vendor >>Vendor, buy as much milk as you can
step
    #sticky
    #completewith BoarMeat2
.goto Elwynn Forest,29.8,86.0,10
    >>Grind boars for Boar Meat en route
    .collect 769,4 --Collect Chunk of Boar Meat (x4)
step
    #label BoarMeat2
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
    #completewith Candles2
    >> Get some Candles from nearby Kobolds
    .complete 60,1 --Collect Kobold Candle (x8)
step
    #sticky
    #completewith Dust2
>> Get some Gold Dust from nearby Kobolds
    .complete 47,1 --Collect Gold Dust (x10)
step
    >>Grind mobs east through the outside of the mine
.goto Elwynn Forest,43.1,85.7
    .turnin 84 >> Turn in Back to Billy
    .accept 87 >> Accept Goldtooth
step
>>Enter through the lower entrance
.goto Elwynn Forest,38.1,81.6,15
step
    >>Keep running through the mine
.goto Elwynn Forest,40.5,82.3
    .complete 62,1 --Scout Through the Fargodeep Mine
step
    >>Kill Goldtooth for Bernice's Necklace
.goto Elwynn Forest,41.7,78.1
    .complete 87,1 --Collect Bernice's Necklace  (x1)
step
    .xp 7 >> Grind to 7
step
    
>>Exit through the lower entrance
.goto Elwynn Forest,38.1,81.6,15
step
.xp 7+1600 >>Grind until 1600+/4500xp
step
    .goto Elwynn Forest,34.5,84.3
    .turnin 87 >> Turn in Goldtooth
step
    
>>Grind some mobs back to Goldshire
    .xp 7+2690 >>Grind until 2690+/4500xp
    .goto Elwynn Forest,42.1,67.3
step
    .goto Elwynn Forest,42.1,67.3
    .turnin 47 >> Turn in Gold Dust Exchange
    .accept 40 >> Accept A Fishy Peril
step
    
.goto Elwynn Forest,41.7,65.9
    .vendor >>vendor trash, repair
step
    .goto Elwynn Forest,42.1,65.9
    .turnin 40 >> Turn in A Fishy Peril
    .accept 35 >> Accept Further Concerns
    .turnin 62 >> Turn in The Fargodeep Mine
    .accept 76 >> Accept The Jasperlode Mine
step
.goto Elwynn Forest,43.3,65.7
    .turnin 60 >> Turn in Kobold Candles
    .accept 61 >> Accept Shipment to Stormwind
    .turnin 107 >> Turn in Note to William
    .accept 112 >> Collecting Kelp
step
.xp 8 >> Grind to 8
step
.goto Elwynn Forest,44.4,66.2
    .train 980 >>Train Curse of Agony
    .train 5782 >>Train Fear
step
.goto Elwynn Forest,44.4,66.0
    .vendor >>Buy the Firebolt r2 book and use it
step
#label Candles2
.money <0.1184
    .goto Elwynn Forest,44.0,65.9
    .vendor >>Buy a 6 slot bag from Brog
step
    #label Dust2
.goto Elwynn Forest,43.8,65.8,100
step
.goto Elwynn Forest,43.8,65.8
    .vendor >>Buy level 5 water/food until out of money (at a 2:1 ratio)
step
.goto Elwynn Forest,47.6,63.3,60
step
    .goto Elwynn Forest,52.2,65.1,60
.goto Elwynn Forest,57.3,62.9
.goto Elwynn Forest,56.5,66.5,0
    >>Grind Murlocs toward the east. kill mobs on the island if you still need Kelp
    .complete 112,1 --Collect Crystal Kelp Frond (x4)
step
>>Grind toward the outside of the mine
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
>>Keep an eye out for the bundles of logs at the base of the trees to the northwest
    .collect 13872,8 --Collect Bundle of Wood (x8)
step
    #label Bundles
.goto Elwynn Forest,79.8,55.5
    >> Kill mobs surrounding the corpse. Pull the 2 mobs in front of the huts, move away then keep one feared, and try to keep dots on both. Then loot the carcass on the ground
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
    .xp 9 >> Grind to 9
step
    #label Bears
.goto Elwynn Forest,79.5,68.8
    .accept 83 >> Accept Red Linen Goods
step
    #label Prowlers
.goto Elwynn Forest,77.4,74.4,100000
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
    .accept 109 >> Accept Report to Gryan Stoutmantle
step
    #sticky
    #completewith Deed
>>Keep an eye out for Westfall Deed from the Defias (lucky drop)
    .collect 1972,1,184 --Collect Westfall Deed (x1)
    .accept 184 >> Accept Furlbrow's Deed
step
    >>Start circling the farm, killing defias for bandanas
    .complete 83,1 --Collect Red Linen Bandana (x6)
    .goto Elwynn Forest,69.8,79.5
step
.goto Elwynn Forest,69.8,79.5
    .goto Elwynn Forest,69.5,76.4,0
    .goto Elwynn Forest,71.3,79.2,0
    >>Kill Princess using the fence, jumping back and forth to abuse mob pathing
    .complete 88,1 --Collect Brass Collar (x1)
step 
.xp 9+3500 >>Grind until 3500/6500xp
step
    #label Deed
.goto Elwynn Forest,79.5,68.9
    .turnin 83 >> Turn in Red Linen Goods
step
.hs >> Hearth to Goldshire
.goto Elwynn Forest,43.8,65.8,100
step
    .goto Elwynn Forest,43.3,65.7
    >>Don't wait for his rp event
.turnin 112 >> Turn in Collecting Kelp
step
    .goto Elwynn Forest,42.2,65.8
    .turnin 39 >> Turn in Deliver Thomas' Report
    .accept 59 >> Accept Cloth and Leather Armor
    .turnin 76 >> Turn in The Jasperlode Mine
    .accept 239 >> Accept Westbrook Garrison Needs Help!
step
    .xp 10 >> Grind to 10
step
.goto Elwynn Forest,41.7,65.9
    .vendor >>vendor trash, repair
step
    
.goto Elwynn Forest,41.7,65.5
    .accept 1097 >> Accept Elmore's Task
step
    .goto Elwynn Forest,43.3,65.7
    .accept 114 >> Accept The Escape
step
    .goto Elwynn Forest,44.4,66.2
    .accept 1685 >> Accept Gakin's Summons
    .train 1120 >>Train Drain Soul
    .train 6201 >> Train Create Healthstone
    .train 696 >>Train Demon Skin r2
    .train 707 >> Train Immolate r2
step
    >>Run out of the inn and go south
.goto Elwynn Forest,43.2,89.6
    .turnin 114 >> Turn in The Escape
step
    .goto Elwynn Forest,34.7,84.5
    .turnin 88 >> Turn in Princess Must Die!
step
    .goto Elwynn Forest,24.6,74.7
    .accept 176 >> Accept Wanted:   "Hogger"
step
    .goto Elwynn Forest,24.2,74.5
    .turnin 239 >> Turn in Westbrook Garrison Needs Help!
    .accept 11 >> Accept Riverpaw Gnoll Bounty
step
    #sticky
    #completewith Hogger
    >> Kill Gnolls for Armbands
    .complete 11,1 --Collect Painted Gnoll Armband (x8)
step
    #sticky
    #completewith Armbands
    #label Collector
    >>Keep an eye out for the gold pickup schedule (lucky drop), or a 100% Drop from Gruff Swiftbite (rare). extra 210xp
    .accept 123 >> Accept The Collector
step
    #label Hogger
.goto Elwynn Forest,27.6,93.0
    >>Hogger can be in multiple spots in the area. Keep him fear chained, and/or kite him at <60% hp to the tower at 24,80. Grind gnolls after for armbands
.goto Elwynn Forest,30.9,85.5,0 >> Kite Hogger to the fence if he's close and you know what you're doing
    .goto Elwynn Forest,24.4,80.7,0 >> Kite Hogger to the tower at 60% if you know what you're doing
    .complete 176,1 --Collect Huge Gnoll Claw (x1)
step
    #label Armbands
>> Kill Gnolls for Armbands
    .complete 11,1 --Collect Painted Gnoll Armband (x8)
step
    .goto Elwynn Forest,24.2,74.5
    .turnin 11 >> Turn in Riverpaw Gnoll Bounty
step
    .isOnQuest 184
.goto Westfall,60.0,19.4
    .turnin 184 >> Turn in Furlbrow's Deed
step
    .goto Westfall,59.9,19.4
    .accept 36 >> Accept Westfall Stew
step
    .goto Westfall,56.4,30.5
    .turnin 36 >> Turn in Westfall Stew
step
 >> Die and respawn at the Spirit Healer, or run to Sentinel Hill
    .goto Westfall,51.7,49.4,130
step
    .goto Westfall,56.3,47.5
    .turnin 109 >> Turn in Report to Gryan Stoutmantle
step
    .goto Westfall,57.0,47.2
    .vendor >>vendor trash
    .accept 6181 >> Accept A Swift Message
step
    .goto Westfall,56.6,52.6
    .fp >> Get the Sentinel Hill flight path
    .turnin 6181 >> Turn in A Swift Message
    .accept 6281 >> Accept Continue To Stormwind
    .fly Stormwind>> Fly to Stormwind
step
    .goto Stormwind City,66.2,62.4,30
    >>You now have a 2m flight (2m break)
step
    .goto Stormwind City,56.2,64.6
    >>Choose rockets, they're like a scuffed Arcane Explosion r1
    .turnin 61 >> Turn in Shipment to Stormwind
step
    .goto Stormwind City,57.1,57.7
    .train 227 >>Train Staves
step
    .goto Stormwind City,29.2,74.0,10
step
    .goto Stormwind City,25.2,78.5
    .turnin 1685 >> Turn in Gakin's Summons
    .accept 1688 >> Accept Surena Caledon
step
    .deathskip >> Die and respawn at the Spirit Healer by using Life Tap and standing on the Bonfire next to you
step
    .goto Elwynn Forest,42.1,65.9
    >>Choose the Staff then equip it
    .turnin 176 >> Turn in Wanted:    "Hogger"
step
    .xp 11 >> Grind to 11
step
    .isOnQuest 123
    .goto Elwynn Forest,42.1,65.9
    .turnin 123 >> Turn in The Collector, Skip followup
step
    .abandon 147 >>Abandon Manhunt
step
    >>Grind en route, try to level your staves skill for later
>>Kill the mobs inside the house, keep Morgan feared (he gouges and kills pet), nuke Surena
    .goto Elwynn Forest,71.0,80.8
    .complete 1688,1 --Collect Surena's Choker (x)
step
    .goto Elwynn Forest,79.5,68.8
    .turnin 59 >> Turn in Cloth and Leather Armor
step
    .goto Elwynn Forest,91.7,72.3,90
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
    .goto Stormwind City,25.2,78.5
    .turnin 1688 >> Turn in Surena Caledon
    .accept 1689 >> Accept The Binding
step
    >>Go down into the basement
    .goto Stormwind City,25.2,80.7,10
step
    .goto Stormwind City,23.2,79.5,10
step
    >>Go right
    .goto Stormwind City,26.3,79.5,10
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
    .goto Stormwind City,74.3,47.2
    .turnin 6281 >> Turn in Continue to Stormwind
    .vendor >>Skip followup. Vendor and Repair
step
    .goto Stormwind City,51.8,12.1
    .turnin 1097 >> Turn in Elmore's Task
    .accept 353 >> Accept Stormpike's Delivery
step
    >>Enter the Deeprun Tram
.goto Stormwind City,63.9,8.3,20
step
    >>Take the tram when it arrives. Cast Summon Voidwalker and Create Healthstone. Get off the tram on the other side
    .accept 6661 >> Accept Deeprun Rat Roundup
step
    >>Use your flute on the rats scattered around
    .complete 6661,1 --Rats Captured (x5)
step
    .turnin 6661 >> Turn in Deeprun Rat Roundup
step
    >>Enter Ironforge
    .goto Ironforge,77.0,51.0,20
step
    .goto Ironforge,55.5,47.7
    .fp >> Get the The Great Forge flight path
step
    .goto Ironforge,18.1,51.4
    .home >> Set your Hearthstone to Ironforge
step
    >>Exit Ironforge
    .goto Dun Morogh,53.5,34.9,20
step
    >>Grind en route to here, try leveling staves more
.goto Dun Morogh,59.9,52.3,10
step
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
    .goto Dun Morogh,69.1,56.3
    .accept 432 >> Accept Those Blasted Troggs!
step
    .goto Dun Morogh,71.0,52.1
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .complete 433,1 --Kill Rockjaw Bonesnapper (x10)
step
    .xp 12 >> Grind to 12
step
    >>Run up the mountain here
    .goto Dun Morogh,70.2,56.0,15
step
    .goto Dun Morogh,69.1,56.3
    .turnin 432 >> Turn in Those Blasted Troggs!
step
    .goto Dun Morogh,68.7,56.0
    .turnin 433 >> Turn in The Public Servant
step
    .goto Dun Morogh,68.6,54.7
    .vendor >>Vendor, buy x20 level 5 water/x10 level 5 food
step
    >>Run up the mountain here
    .goto Dun Morogh,68.2,53.7,15
step
    >>Grind a bit en route
    .goto Dun Morogh,77.8,48.2,60
step
    >>Grind a bit en route, go inside the tunnel
    .goto Dun Morogh,81.2,42.7,15
step
    .goto Dun Morogh,83.9,39.2
    .accept 419 >> Accept The Lost Pilot
step
    .goto Dun Morogh,79.7,36.2
    .turnin 419 >> Turn in The Lost Pilot
    .accept 417 >> Accept A Pilot's Revenge
step
    .goto Dun Morogh,79.0,36.9
    .complete 417,1 --Collect Mangy Claw (x1)
step
    .goto Dun Morogh,83.9,39.2
    .turnin 417 >> Turn in A Pilot's Revenge
step
    >>Go through the tunnel
.goto Dun Morogh,84.4,31.1,15
]],"Human Warlock")

RXPGuides.RegisterGuide("RestedXP Alliance 1-20",[[
<< Alliance !Warlock
#name 1-12 Elwynn Forest
#next 11-14 Darkshore
step
    >>Drop your Hearthstone
    .goto Elwynn Forest,48.2,42.9
    .accept 783 >> Accept A Threat Within
step << Warrior
    #sticky
    #completewith next
    .money >0.0009
    +Kill 2 Wolves for 10c+ of vendor trash before vendoring. Sell armor if you didn’t get enough
    .goto Elwynn Forest,46.4,40.3
step << Warrior
    .goto Elwynn Forest,47.5,41.6
    .vendor >>Vendor trash
step
    .goto Elwynn Forest,48.9,41.6
    .turnin 783 >> Turn in A Threat Within
    .accept 7 >> Accept Kobold Camp Cleanup
step << Warrior
    .goto Elwynn Forest,50.2,42.3
    .train 6673 >>Train Battle Shout
step
    .goto Elwynn Forest,48.2,42.9
    .accept 5261 >> Accept Eagan Peltskinner
step << Priest/Mage
.goto Elwynn Forest,46.2,40.4
    .vendor >>Kill wolves until 50c worth of vendor trash. Vendor, then buy x10 water from Brother Danil.
.collect 159,10 --Collect Refreshing Spring Water (x10)
step
    .goto Elwynn Forest,48.9,40.2
    .turnin 5261 >> Turn in Eagan Peltskinner
    .accept 33 >> Accept Wolves Across The Border
step
    >>Kill Young Wolves for Meat
.goto Elwynn Forest,46.2,37.4
    .complete 33,1 --Collect Tough Wolf Meat (x8)
step
    >>Kill Kobold Vermin
.goto Elwynn Forest,49.8,36.0
    .complete 7,1 --Kill Kobold Vermin (x10)
step
    .goto Elwynn Forest,48.9,40.2
    .turnin 33 >> Turn in Wolves Across The Border
step << Priest/Mage
.goto Elwynn Forest,47.6,41.5
    .vendor >>vendor trash, then buy x10 more water from Brother Danil
step << Paladin
    .goto Elwynn Forest,47.6,41.5
    .vendor >>vendor trash
step << Warrior/Rogue
    .goto Elwynn Forest,47.6,41.5
    .vendor >>Vendor trash
step
    .goto Elwynn Forest,48.9,41.6
    .turnin 7 >> Turn in Kobold Camp Cleanup
    .accept 15 >> Accept Investigate Echo Ridge
    .accept 3101 >> Accept Consecrated Letter  << Paladin
    .accept 3104 >> Accept Glyphic Letter << Mage
    .accept 3103 >> Accept Hallowed Letter << Priest
    .accept 3100 >> Accept Simple Letter << Warrior
    .accept 3102 >> Accept Encrypted Letter << Rogue
step
>>Kill Kobold Workers
.goto Elwynn Forest,47.0,32.2
    .complete 15,1 --Kill Kobold Worker (x10)
step
.xp 3+1110 >>Grind to 1110+/1400xp on your way back
    .goto Elwynn Forest,47.7,41.4
    .vendor >>vendor trash
step
    .goto Elwynn Forest,48.9,41.6
    .turnin 15 >> Turn in Investigate Echo Ridge
    .accept 21 >> Accept Skirmish at Echo Ridge
step << Mage
    .goto Elwynn Forest,49.7,39.4
    .turnin 3104 >> Turn in Glyphic Letter
    .train 1459 >>Train Arcane Intellect
    .train 116 >>Train Frostbolt
step << Priest
    #label Priest1
    .money <0.0200
    .goto Elwynn Forest,49.8,39.5
    .turnin 3103 >> Turn in Hallowed Letter
    .train 1243 >>Train Power Word: Fortitude    
.train 589 >>Train Shadow Word: Pain
    .train 2052 >>Train Lesser Heal r2
step << Priest
    #label Priest2
    #completewith Priest1
    .goto Elwynn Forest,49.8,39.5
    .turnin 3103 >> Turn in Hallowed Letter
    .train 1243 >>Train Power Word: Fortitude
    .train 589 >>Train Shadow Word: Pain
step << Warrior
.goto Elwynn Forest,50.2,42.3
    .turnin 3100 >> Turn in Simple Letter
    .train 772 >>Train Rend
    .train 100 >>Train Charge
step << Paladin
.goto Elwynn Forest,50.4,42.1
    .turnin 3101 >> Turn in Consecrated Letter
    .train 20271 >>Train Judgement
.train 19740 >>Train Blessing of Might
.train 465 >>Train Devotion Aura
step
    .goto Elwynn Forest,48.2,42.9
    .accept 18 >> Accept Brotherhood of Thieves
step << Priest/Paladin/Warrior/Mage
    .xp 4 >> Grind to 4
step
    >>Kill Defias Thugs for Bandanas
.goto Elwynn Forest,54.5,49.4
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
    >>Grind en route to here
    >>Kill Laborers in the mine
.goto Elwynn Forest,48.6,27.6
    .complete 21,1 --Kill Kobold Laborer (x12)
step
    .xp 5 >> Grind to 5
step << Warrior/Paladin/Rogue
    .goto Elwynn Forest,50.7,39.2
    >>Grind a bit en route
    .turnin 3903 >> Turn in Milly Osworth. Skip followup
step << Priest/Mage
    .goto Elwynn Forest,50.7,39.2
    >>Grind a bit en route
    .turnin 3903 >> Turn in Milly Osworth
    .accept 3904 >> Accept Milly's Harvest << Priest/Mage
step << Warrior/Paladin/Rogue
    #sticky
    .abandon 3904 >> Abandon Milly's Harvest
step << Rogue
    .goto Elwynn Forest,50.3,39.9
    >>Don't train
    .turnin 3102 >> Turn in Encrypted Letter
step << Priest/Mage
    >>Loot the Buckets of Grapes in the field
    .goto Elwynn Forest,54.5,49.4
.complete 3904,1 --Collect Milly’s Harvest (x8)
step
    .goto Elwynn Forest,57.5,48.2
    >>Grind a bit en route. Kill Garrick and loot his head
    .complete 6,1 --Collect Garrick's Head (x1)
step << Warrior/Paladin/Rogue
    .goto Elwynn Forest,48.2,42.9
.xp 5+1715 >> Grind on your way back to 1715+/2800xp
step << Priest/Mage
    .goto Elwynn Forest,50.7,39.2
.xp 5+1175 >> Grind on your way back to 1175+/2800xp
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
    >>Take the stairs to the top of the abbey
    .goto Elwynn Forest,49.5,41.6
.turnin 3905 >>Turn in Grape Manifest

step << Priest
.goto Elwynn Forest,49.8,39.5
    .accept 5623 >> Accept In Favor of the Light
step
    .goto Elwynn Forest,45.6,47.7
    .accept 2158 >> Accept Rest and Relaxation
step
    #sticky
#completewith Goldshire
.goto Elwynn Forest,39.5,60.5,200>> Die and respawn at the Spirit Healer, or run to Goldshire
step << Warrior/Paladin/Rogue
    #sticky
    .goto Elwynn Forest,41.7,65.5
    >>Train Blacksmithing. You’ll get mining later which will allow you to craft Sharpening Stones (+2 weapon damage for 1 hour), or there’s a good chance you get it as a lucky drop from the Kobolds. You can skip Blacksmithing if you wish
    .train 2018 >>Train Blacksmithing 
step << Warrior
    .goto Elwynn Forest,41.5,65.9
    .vendor >> vendor trash. Sell your weapon if it gives you enough money for Gladius (5s 9c). You'll come back later if you don't have enough yet
step << Warrior
    .goto Elwynn Forest,41.5,65.9
    .money <0.0509
    >> Buy Gladius and equip it
    .collect 2488,1 --Collect Gladius
step << Rogue
    .goto Elwynn Forest,41.5,65.9
    .vendor >> vendor trash. Sell your weapon if it gives you enough money for Stiletto (3s 82c). You’ll come back later if you don’t have enough yet
step << Rogue
    .goto Elwynn Forest,41.5,65.9
    .money <0.0382
    >>Buy Stiletto and equip it
    .collect 2494,1 --Collect Stiletto
step << Paladin
.goto Elwynn Forest,41.5,65.9
    .vendor >> vendor trash. Sell your weapon if it gives you enough money for Wooden Mallet (6s 66c). You'll come back later if you don't have enough yet
step << Paladin
    .goto Elwynn Forest,41.5,65.9
    .money <0.0666
    >> Buy Wooden Mallet and equip it
    .collect 2493,1 --Collect Wooden Mallet
step << Mage/Priest
    .goto Elwynn Forest,41.7,65.9
.vendor >> vendor trash, repair
step
    #label Goldshire
.goto Elwynn Forest,42.1,65.9
    .turnin 54 >> Turn in Report to Goldshire
    .accept 62 >> Accept The Fargodeep Mine
step
    >>On your close left as you go in
    .goto Elwynn Forest,43.3,65.7
    .accept 60 >> Accept Kobold Candles
step
.goto Elwynn Forest,43.8,65.8
    .turnin 2158 >> Turn in Rest and Relaxation
    .home >> Set your Hearthstone to Goldshire
step
.xp 6 >> Grind to 6
step << Mage
.goto Elwynn Forest,43.2,66.2
    .train 143 >>Train Fireball r2
    .train 2136 >>Train Fire Blast
step << Priest
.goto Elwynn Forest,43.3,65.7
    .turnin 5623 >> Turn in In Favor of the Light
    .accept 5624 >> Accept Garments of the Light
    .train 591 >>Train Smite r2
    .train 17 >>Train Power Word: Shield
step << Rogue
    .money <0.0190
.goto Elwynn Forest,43.9,65.9
    .train 1757 >>Train Sinister Strike r2
step << Rogue/Warrior
.money <0.0095
    .goto Elwynn Forest,43.4,65.5
    .train 3273 >> Train First Aid - Don’t make all your bandages at once, better time to make them later
step << Warrior
.money <0.0119
.goto Elwynn Forest,43.8,65.8
.vendor >> Buy 5 level 1 food
step << Rogue
.money <0.0024
.goto Elwynn Forest,43.8,65.8
.vendor >> Buy 5 level 1 food
step << Warrior
    .money <0.0095
.goto Elwynn Forest,41.1,65.8
    .train 3127 >>Train Parry
step << Paladin
.goto Elwynn Forest,41.1,66.0
    .money <0.0190
    .trainer >> Train your level 6 spells
step
    .goto Elwynn Forest,42.1,67.3
    .accept 47 >> Accept Gold Dust Exchange
step << Priest
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
step
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
#completewith Dust
    >> Get some Gold Dust from nearby Kobolds
    .complete 47,1 --Collect Gold Dust (x10)
step << Priest/Mage
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
step << Mage/Priest
.goto Elwynn Forest,42.4,89.4
    .vendor >>Vendor, buy as much milk as you can
step << Warrior/Paladin/Rogue
.goto Elwynn Forest,42.4,89.4
    .vendor >>vendor trash. Buy back any bags if you sold them earlier
step
    #sticky
    #completewith BoarMeat2
.goto Elwynn Forest,29.8,86.0,15,0
    >>Grind boars for Boar Meat en route
    .collect 769,4 --Collect Chunk of Boar Meat (x4)
step
    #label BoarMeat2
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
    #label Candles2
    >> Get some Candles from nearby Kobolds
    .complete 60,1 --Collect Kobold Candle (x8)
step
    #sticky
    #label Dust2
    >> Get some Gold Dust from nearby Kobolds
    .complete 47,1 --Collect Gold Dust (x10)
step
    >>Grind mobs east through the outside of the mine
.goto Elwynn Forest,43.1,85.7
    .turnin 84 >> Turn in Back to Billy
    .accept 87 >> Accept Goldtooth
step
#completewith next
>>Enter the mine through the lower entrance
.goto Elwynn Forest,38.1,81.6,12
step
    >>Keep running through the mine
.goto Elwynn Forest,40.5,82.3
    .complete 62,1 --Scout Through the Fargodeep Mine
step << Warrior
    >>Pool as much rage as you can (grind Rage off of other mobs) then kill Goldtooth for Bernice's Necklace
.goto Elwynn Forest,41.7,78.1
    .complete 87,1 --Collect Bernice's Necklace  (x1)
step
    >>Kill Goldtooth for Bernice's Necklace
.goto Elwynn Forest,41.7,78.1
    .complete 87,1 --Collect Bernice's Necklace  (x1)
step
    .xp 7 >> Grind to 7
step << Warrior
>>Exit through the lower entrance. Try to save a single healing potion from now on as you will need it for Rolf’s Corpse later
.goto Elwynn Forest,38.1,81.6,15
step << Warrior/Rogue
>>Remember to make Sharpening Stones if you picked up a Rough Stone
.xp 7+1600 >>Grind until 1600+/4500xp
step << Paladin
>>Remember to make Weightstones if you picked up a Rough Stone
.xp 7+1600 >>Grind until 1600+/4500xp
step << Mage
    .xp 7+1600 >>Grind until 1600+/4500xp
step << Priest
    .xp 7+1260 >>Grind until 1260+/4500xp
step
    .goto Elwynn Forest,34.5,84.3
    .turnin 87 >> Turn in Goldtooth
step << Warrior/Paladin/Mage/Rogue
>>Grind some mobs back to Goldshire
    .xp 7+2690 >>Grind until 2690+/4500xp
    .goto Elwynn Forest,42.1,67.3
step << Priest
>>Grind some mobs back to Goldshire
    .xp 7+2350 >>Grind until 2350+/4500xp
    .goto Elwynn Forest,42.1,67.3
step
    .goto Elwynn Forest,42.1,67.3
    .turnin 47 >> Turn in Gold Dust Exchange
    .accept 40 >> Accept A Fishy Peril
step
.goto Elwynn Forest,41.7,65.9
    .vendor >>vendor trash, repair
step
    .goto Elwynn Forest,42.1,65.9
    .turnin 40 >> Turn in A Fishy Peril
    .accept 35 >> Accept Further Concerns
    .turnin 62 >> Turn in The Fargodeep Mine
    .accept 76 >> Accept The Jasperlode Mine
step << Warrior
    .goto Elwynn Forest,41.5,65.9
    .vendor >> vendor trash. Buy Gladius here if you didn’t buy it earlier
step << Warrior
.goto Elwynn Forest,41.5,65.9
    .money <0.0509
    >>Buy Gladius and equip it
    .collect 2488,1 --Collect Gladius
step << Rogue
    .goto Elwynn Forest,41.5,65.9
    .vendor >> vendor trash. Buy Stiletto here if you didn’t buy it earlier
step << Rogue
    .goto Elwynn Forest,41.5,65.9
    .money <0.0382
    >>Buy Stiletto and equip it
    .collect 2494,1 --Collect Stiletto
step << Paladin
.goto Elwynn Forest,41.5,65.9
.vendor >> vendor trash. Buy Wooden Mallet here if you didn’t buy it earlier
step << Paladin
    .goto Elwynn Forest,41.5,65.9
    .money <0.0666
    >>Buy Wooden Mallet and equip it
    .collect 2493,1 --Collect Wooden Mallet
step
    .goto Elwynn Forest,43.3,65.7
    .turnin 60 >> Turn in Kobold Candles
    .accept 61 >> Accept Shipment to Stormwind
    .turnin 107 >> Turn in Note to William
    .accept 112 >> Collecting Kelp
step
    .xp 8 >> Grind to 8
step
    .trainer >> Train your level 8 spells in Goldshire
step
#label Candles2
.money <0.1184
    .goto Elwynn Forest,44.0,65.9
    .vendor >>Buy a 6 slot bag from Brog
step
    #label Dust2
.goto Elwynn Forest,43.8,65.8,100
step << Mage/Priest
.goto Elwynn Forest,43.8,65.8
    .vendor >>Buy level 5 Water until out of money
step << Warrior/Rogue
.goto Elwynn Forest,43.8,65.8
    .vendor 295 >>Buy level 5 Food until out of money
step << Paladin
.goto Elwynn Forest,43.8,65.8
    .vendor 295 >>Buy level 5 Food/Drink at a 1:1 ratio until out of money
step
    .goto Elwynn Forest,52.2,65.1,60,0
.goto Elwynn Forest,57.3,62.9
.goto Elwynn Forest,56.5,66.5,0
    >>Grind Murlocs toward the east. kill mobs on the island if you still need Kelp
    .complete 112,1 --Collect Crystal Kelp Frond (x4)
step
    >>Go in the mine, and keep following the middle path
.goto Elwynn Forest,60.4,50.2
    .complete 76,1 --Scout through the Jasperlode Mine
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
step << Paladin
>>Get bundles of wood at the base of the trees to the northwest
    .collect 13872,8 --Collect Bundle of Wood (x8)
step << Warrior/Priest/Mage/Rogue
    #sticky
    #completewith Bundles
>>Keep an eye out for the bundles of logs at the base of the trees to the northwest
    .collect 13872,8 --Collect Bundle of Wood (x8)
step
#label Bundles
>> Go toward the guard's corpse
.goto Elwynn Forest,79.8,55.5,60
step << Priest
    .goto Elwynn Forest,79.8,55.5
>> Kill mobs surrounding the corpse. Precast Renew and Shield, get full mana, then pull the 2 mobs in front of the huts, move away, then nuke one. Run away when you kill one, then kill the other. Loot the carcass on the ground
.turnin 45 >> Turn in Discover Rolf's Fate
    .accept 71 >> Accept Report to Thomas
step << Mage
    .goto Elwynn Forest,79.8,55.5
>> Kill mobs surrounding the corpse. Pull the 2 mobs in front of the huts, move away and sheep one whilst killing the other, then kill the sheeped mob. Loot the carcass on the ground
.turnin 45 >> Turn in Discover Rolf's Fate
    .accept 71 >> Accept Report to Thomas
step << Warrior
    .goto Elwynn Forest,79.8,55.5
>> Pool Rage, then kill the 2 mobs surrounding the corpse. Pull the 2 mobs in front of the huts, move away and keep one hamstrung whilst killing the other. Run away when you kill one (use marbles on it), then kill the other. Don’t be afraid to die to kill 1 mob. Loot the carcass on the ground
.turnin 45 >> Turn in Discover Rolf's Fate
    .accept 71 >> Accept Report to Thomas
step << Rogue
    .goto Elwynn Forest,79.8,55.5
>> Kill mobs surrounding the corpse. Pull the 2 mobs in front of the huts, move away and nuke one mob. Use Evasion. Run away when you kill one, then kill the other. Loot the carcass on the ground
    .turnin 45 >> Turn in Discover Rolf's Fate
    .accept 71 >> Accept Report to Thomas
step << Paladin
    .goto Elwynn Forest,79.8,55.5
>> Run on top of the corpse, then use Divine Protection and IMMEDIATELY loot the corpse, handin, and accept the quest. You'll die after
    .turnin 45 >> Turn in Discover Rolf's Fate
    .accept 71 >> Accept Report to Thomas
step << Paladin
    #sticky
    #completewith Bundles2
>>Die and respawn at the Spirit Healer, or start running back if someone cleared the corpse prior
.goto Elwynn Forest,83.6,69.7,120
step
.goto Elwynn Forest,81.0,60.5
    >>Start running back, finish off the bundles
    .collect 13872,8 --Collect Bundle of Wood (x8)
step
    #label Bundles2
.goto Elwynn Forest,81.4,66.1
    .turnin 5545 >> Turn in A Bundle of Trouble
step
    .xp 9 >> Grind to 9
step
    #label Bears
.goto Elwynn Forest,79.5,68.8
    .accept 83 >> Accept Red Linen Goods
step
    #label Prowlers
.goto Elwynn Forest,77.4,74.4,100000
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
    .accept 109 >> Accept Report to Gryan Stoutmantle
step
    #sticky
    #completewith Deed
>>Keep an eye out for Westfall Deed from the Defias (lucky drop)
    .collect 1972,1,184 --Collect Westfall Deed (x1)
    .accept 184 >> Accept Furlbrow's Deed
step
    >>Start circling the farm, killing defias for bandanas
    .complete 83,1 --Collect Red Linen Bandana (x6)
    .goto Elwynn Forest,69.8,79.5
step << Warrior
.goto Elwynn Forest,69.8,79.5
    >>Pool Rage, then kill Princess. Use a Lesser Heal Potion from before if needed
    .complete 88,1 --Collect Brass Collar (x1)
tep << Rogue
.goto Elwynn Forest,69.8,79.5
    >>Make sure Evasion is up, then kill Princess. Use a Lesser Heal Potion from before if needed
    .complete 88,1 --Collect Brass Collar (x1)
step << Priest/Mage/Paladin
.goto Elwynn Forest,69.8,79.5
    >>Kill Princess. Use a Lesser Heal Potion from before if needed
    .complete 88,1 --Collect Brass Collar (x1)
step
.xp 9+3300 >>Grind until 3300+/6500xp
step
    #sticky
    #label Deed
    #completewith next
>>Die and respawn at the Spirit Healer if you're low health, otherwise just run back and handin
.goto Elwynn Forest,83.6,69.7,120
step
    .goto Elwynn Forest,79.5,68.9
    .turnin 83 >> Turn in Red Linen Goods
step
    .goto Elwynn Forest,83.3,66.1
    .vendor >> vendor trash, repair
step
>>Grind en route to Redridge
.xp 9+4275 >> Grind until 4275+/6500xp
.goto Elwynn Forest,91.7,72.3,90,0
step
#completewith next
.deathskip >> Die to the mobs here, then respawn at the Spirit Healer
.goto Redridge Mountains,9.4,76.6
step
    .goto Redridge Mountains,30.6,59.4
    .fp >> Get the Redridge Mountains flight path
step
#completewith next
.hs >> Hearth to Goldshire
step
    .goto Elwynn Forest,43.3,65.7
    >>Don't wait for his rp event
.turnin 112 >> Turn in Collecting Kelp
step
    .goto Elwynn Forest,42.2,65.8
    .turnin 39 >> Turn in Deliver Thomas' Report
    .turnin 76 >> Turn in The Jasperlode Mine
    .accept 239 >> Accept Westbrook Garrison Needs Help!
step
    >>Abandon Cloth and Leather Armor
.abandon 59 >> Cloth and Leather Armor
step
    .xp 10 >> Grind to 10
step
.goto Elwynn Forest,41.7,65.9
    .vendor >>vendor trash, repair
step << Warrior
    .goto Elwynn Forest,41.1,65.8
    .accept 1638 >> Accept A Warrior's Training
    .train 2687 >>Train Bloodrage
    .train 6546 >>Train Rend r2
step << Paladin
    .goto Elwynn Forest,41.1,66.0
    .train 1022 >>Train Blessing of Protection
    .train 633 >>Train Lay on Hands
    .train 10290 >>Train Devotion Aura r2
step
.goto Elwynn Forest,43.3,65.7
    .accept 114 >> Accept The Escape
step << Rogue/Warrior
.money <0.0095
    .goto Elwynn Forest,43.4,65.5
    .train 3273 >> Train First Aid - Don’t make all your bandages at once, better time to make them later
step << Priest
    #sticky
#completewith next
.goto Elwynn Forest,43.3,65.7
    .train 2006 >>If you’re going to be playing with other players, Train Resurrection
step << Priest
    .goto Elwynn Forest,43.3,65.7
    .accept 5636 >> Accept Desperate Prayer
    .train 2053 >>Train Lesser Heal r3
    .train 8092 >>Train Mind Blast
.train 594 >>Train Shadow Word: Pain r2
    .train 13908 >>Train Desperate Prayer
step << Mage
    .goto Elwynn Forest,43.2,66.2
    .train 7300 >>Train Frost Armor r2
    .train 122 >>Train Frost Nova
    .train 5504 >>Train Conjure Water r1
    .train 5505 >>Train Conjure Water r2
step << Rogue
    .goto Elwynn Forest,43.9,65.9
    >>Don't worry about not having 2 weapons, we'll get another soon
    .train 2983 >>Train Sprint
    .train 674 >>Train Dual Wield
    .train 6770 >>Train Sap
    .train 1784 >>Train Stealth
step << Rogue
    .goto Elwynn Forest,41.7,65.9
    .money >0.3990
    .vendor >>You don’t have enough money, so buy Stiletto for OH
step
    >>Run out of the inn and go south
.goto Elwynn Forest,43.2,89.6
    .turnin 114 >> Turn in The Escape
step
    .goto Elwynn Forest,34.7,84.5
    .turnin 88 >> Turn in Princess Must Die!
step
    .goto Elwynn Forest,24.2,74.5
    .turnin 239 >> Turn in Westbrook Garrison Needs Help!
step << Warrior
    .money <0.2438
    >>Grind a bit until you have 24s 38c+ of vendorables/money
.goto Elwynn Forest,27.6,93.0
step << Rogue
    #label Armbands
.money >0.3990
.goto Elwynn Forest,24.2,74.5
    .accept 11 >> Accept Riverpaw Gnoll Bounty
step << Rogue
    .isOnQuest 11
>> Kill Gnolls for Armbands
.goto Elwynn Forest,27.6,93.0
    .complete 11,1 --Collect Painted Gnoll Armband (x8)
step << Rogue
    .isOnQuest 11
.goto Elwynn Forest,24.2,74.5
    .turnin 11 >> Turn in Riverpaw Gnoll Bounty
step << Rogue
    >>Abandon The Collector
.abandon 123 >> Accept The Collector
step
    .goto Elwynn Forest,24.2,74.5
    >>Abandon Riverpaw Gnoll Bounty
    .abandon 11 >> Riverpaw Gnoll Bounty
step
    .isOnQuest 184
.goto Westfall,60.0,19.4
    .turnin 184 >> Turn in Furlbrow's Deed
step
    .goto Westfall,59.9,19.4
    .accept 36 >> Accept Westfall Stew
step
    .goto Westfall,56.4,30.5
    .turnin 36 >> Turn in Westfall Stew
step
    .goto Elwynn Forest,24.2,74.5
    >>Abandon any quests you picked up from the farm
    .abandon 9 >> The Killing Fields
    .abandon 22 >> Goretusk Liver Pie
    .abandon 38 >> Westfall Stew
step
#completewith next
 >> Die and respawn at the Spirit Healer, or run to Sentinel Hill
    .goto Westfall,51.7,49.4,130
step
    .goto Westfall,56.3,47.5
    .turnin 109 >> Turn in Report to Gryan Stoutmantle
step
    >>Abandon The People's Militia
.abandon 12 >> The People's Militia
step
    .goto Westfall,57.0,47.2
    .vendor >>vendor trash
    .accept 6181 >> Accept A Swift Message
step << Rogue
    .money >0.3990
>>Grind until you have 39s 90c of vendorables/money
step
    .goto Westfall,56.6,52.6
    .fp >> Get the Sentinel Hill flight path
    .turnin 6181 >> Turn in A Swift Message
    .accept 6281 >> Accept Continue To Stormwind
    .fly Stormwind>> Fly to Stormwind
step
    .goto Stormwind City,56.2,64.6
    >>Choose rockets
    .turnin 61 >> Turn in Shipment to Stormwind
step << Warrior/Priest
    .goto Stormwind City,57.1,57.7
    .train 227 >>Train Staves
step << Mage
.money <0.1900
.goto Stormwind City,57.1,57.7
    .train 227 >>Train Staves
.train 201 >>Train 1h Swords
step << Mage
    .istrained 227
.money <0.0950    
.goto Stormwind City,57.1,57.7
    .train 227 >>Train Staves
step << Rogues
    .goto Stormwind City,57.1,57.7
    .train 201 >>Train 1h Swords
step << Rogues
    .goto Stormwind City,57.6,57.1
    .vendor >>Buy a Cutlass from Gunther and equip it, Stiletto in OH
step << Paladin
    .goto Stormwind City,57.1,57.7
    .train 202 >>Train 2h Swords
step
    .goto Stormwind City,74.3,47.2
    .turnin 6281 >> Turn in Continue to Stormwind
    >>Skip followup. Vendor and Repair
step << Warrior
    >>Enter the inn
    .goto Stormwind City,71.7,39.9
step << Warrior
    .goto Stormwind City,74.3,37.3
    .turnin 1638 >> Turn in A Warrior's Training
    .accept 1639 >> Accept Bartleby the Drunk
step << Warrior
    .goto Stormwind City,73.8,36.3
    .turnin 1639 >> Turn in Bartleby the Drunk
    .accept 1640 >> Accept Beat Bartleby
    .complete 1640,1 --Beat Bartleby
step << Warrior
    .goto Stormwind City,73.8,36.3
    >>You'll now learn Defensive Stance
    .turnin 1640 >> Turn in Beat Bartleby
    .accept 1665 >> Accept Bartleby's Mug
step << Warrior
    .goto Stormwind City,74.3,37.3
    .turnin 1665 >> Turn in Bartleby's Mug
step << Priest
    .goto Stormwind City,38.8,26.4
    .turnin 5635 >> Turn in Desperate Prayer
step << Rogue/Mage
    .goto Stormwind City,51.8,12.1
    .turnin 1097 >> Turn in Elmore's Task
    .accept 353 >> Accept Stormpike's Delivery
step << Warrior
    >>Put Sunder Armor on your bars
.goto Stormwind City,56.3,17.0
    .vendor >>Buy a Mining Pick
step << Paladin/Rogue
    .goto Stormwind City,56.3,17.0
    .vendor >>Buy a Mining Pick
step
    >>Enter the Deeprun Tram
.goto Stormwind City,63.9,8.3,25
step
    >>Take the tram when it arrives, then get off when it arrives on the other side
    .accept 6661 >> Accept Deeprun Rat Roundup
step << Rogue/Warrior
    .istrained 3273
>>Take the tram when it arrives. Make bandages whilst waiting for the tram and when you get on it. Get off when it arrives on the other side
    .accept 6661 >> Accept Deeprun Rat Roundup
step
    >>Use your flute on the rats scattered around
    .complete 6661,1 --Rats Captured (x5)
step
    .turnin 6661 >> Turn in Deeprun Rat Roundup
step
    .goto Ironforge,55.5,47.7
    .fp >> Get the Ironforge flight path
step << Warrior
    .goto Ironforge,61.2,89.5
    .train 199 >>Train 2h Maces
step
    .zone Dun Morogh>>Exit Ironforge
    .goto Dun Morogh,53.5,34.9
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
step << Mage/Priest
    >>Grind a little en route
.goto Dun Morogh,68.6,54.7
    .vendor >>Vendor, buy x10 level 5 water/x5 level 5 food
step << Warrior/Rogue
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
step << Warrior/Paladin/Rogue
    .goto Dun Morogh,69.3,55.5
    .train 2575 >>Train Mining, cast Find Minerals
step
    .goto Dun Morogh,69.1,56.3
    .accept 432 >> Accept Those Blasted Troggs!
step << Warrior/Paladin/Rogue
    >>Keep an eye out for nodes to get more rough stones
.goto Dun Morogh,71.0,52.1
>>Kill Troggs in the cave
.complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .complete 433,1 --Kill Rockjaw Bonesnapper (x10)
step << Mage/Priest
    .goto Dun Morogh,71.0,52.1
    >>Kill Troggs in the cave
.complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .complete 433,1 --Kill Rockjaw Bonesnapper (x10)
step
    .xp 10+6350 >>Grind until 6350+/7600
step
    .goto Dun Morogh,69.1,56.3
    .turnin 432 >> Turn in Those Blasted Troggs!
step
    .goto Dun Morogh,68.7,56.0
    .turnin 433 >> Turn in The Public Servant
step
    .xp 11
step << Rogue/Priest/Paladin/Warrior
    .goto Dun Morogh,68.6,54.7
    .vendor >>vendor trash
step << Mage
    .goto Dun Morogh,68.6,54.7
    .vendor >>Vendor, buy x30 level 5 drink
step << Rogue/Mage
    .goto Dun Morogh,83.9,39.2
    .accept 419 >> Accept The Lost Pilot
step << Rogue/Mage
    .goto Dun Morogh,79.7,36.2
    .turnin 419 >> Turn in The Lost Pilot
    .turnin 417 >> Turn in A Pilot's Revenge
step << Rogue/Mage
    .goto Dun Morogh,79.0,36.9
    .complete 417,1 --Collect Mangy Claw (x1)
step << Rogue
    .goto Dun Morogh,83.9,39.2
    >>Choose the dagger, use it as your OH
    .turnin 417 >> Turn in A Pilot's Revenge
step << Mage
    .goto Dun Morogh,83.9,39.2
    .turnin 417 >> Turn in A Pilot's Revenge
step << Warrior/Paladin/Priest
 >> Die and respawn at the Spirit Healer by dying to the Troggs, or run back to Kharanos
    .goto Dun Morogh,47.0,55.0,150
step << Rogue
    .goto Loch Modan,24.8,18.4
    .turnin 353 >> Turn in Stormpike's Delivery
step << Mage
    .goto Loch Modan,24.8,18.4
    .turnin 353 >> Turn in Stormpike's Delivery
    .accept 307 >> Accept Filthy Paws
    >>Make sure you don't pick up Stormpike's Order
step << Rogue
    #completewith next
    .goto Loch Modan,29.4,19.9
    .deathskip >>Die and respawn here
step << Mage
#sticky
#completewith Thelsamar1
>>Kill Spiders in the zone for Spider Ichor
.collect 3174,3 --Collect Spider Ichor (x3)
step << Mage
    #sticky
    #completewith Thelsamar1
>>Kill Bears in the zone for Bear Meat
.collect 3173,3 --Collect Bear Meat (x3)
step << Mage
    #sticky
    #completewith Thelsamar1
>>Kill Boars in the zone for Boar Intestines
.collect 3172,3 --Collect Boar Intestines (x3)
step << Mage
    #label Thelsamar1
    .goto Loch Modan,34.8,49.3
    .accept 418 >> Accept Thelsamar Blood Sausages
step << Mage
    .goto Loch Modan,34.8,48.6
    .vendor >>Buy 6 slot bags until all bag slots full
step << Mage
.goto Loch Modan,36.9,46.1
    >>Find Kadrell. He patrols along the main road
    .accept 416 >> Accept Rat Catching
    .accept 1339 >> Accept Mountaineer Stormpike's Task
    >>Mountaineer Stormpike's Task doesn't show if you have Stormpike's Order in q log
step << Mage
#sticky
#completewith Thelsamar2
>>Kill Spiders in the zone for Thelsamar Blood Sausages
.complete 418,3 --Collect Spider Ichor (x3)
step << Mage
    #sticky
    #completewith Thelsamar2
>>Kill Bears in the zone for Thelsamar Blood Sausages
.complete 418,2 --Collect Bear Meat (x3)
step << Mage
    #sticky
    #completewith Thelsamar2
>>Kill Boars in the zone for Thelsamar Blood Sausages
.complete 418,1 --Collect Boar Intestines (x3)
step << Mage
#completewith next
    >>Grind some mobs for Boar Intestines, Bear Meat and Spider Ichor en route
.goto Loch Modan,39.3,27.0,100
step << Mage
    >>Collect the crates you find in the cave. Be careful because this is sketch at level 11, and the geomancers flame ward (Fire immunity)
.goto Loch Modan,35.9,22.1
    .complete 307,1 --Collect Miners' Gear (x4)
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
    .goto Loch Modan,24.7,18.3
    .turnin 307 >> Turn in Filthy Paws
    .turnin 1339 >> Turn in Mountaineer Stormpike's Task
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
step << Mage
    .xp 12 >> Grind to 12
step << Rogue/Mage
    .goto Loch Modan,33.9,51.0
    .fp >> Get the Thelsamar flight path
    .fly Ironforge>> Fly to Ironforge
step << Mage
    .goto Ironforge,27.2,8.6
    .train 145 >>Train Fireball r3
    .train 604 >>Train Dampen Magic
step << Rogue/Mage
    .zone Dun Morogh>>Exit Ironforge
    .goto Dun Morogh,53.5,34.9
step
    #completewith next
    .goto Dun Morogh,31.1,32.4,25>>The path to Wetlands start here
    
step
    .goto Dun Morogh,32.6,25.9,20 >> Climb the mountain until the general chat channel changes to Wetlands
    .goto Wetlands,11.3,43.5,200 >> Die on Purpose and respawn at the Wetlands graveyard
step
    .money <0.076
.goto Wetlands,10.7,56.8
    .vendor >> If you have 7.6s, Check for Bronze Tube from Neal Allen inside the keep and buy it if it's there
step
.goto Wetlands,9.5,59.7
    .fp >> Get the Menethil Harbor flight path
step
    .money <0.0385
.goto Wetlands,8.1,56.3
    .vendor >> Check Dewin for Heal Potions, buy down to 1s
step
    #label Darkshore1
    .goto Wetlands,4.6,57.3
    .zone Darkshore>>Take the boat to Darkshore
]],"Human")

RXPGuides.RegisterGuide("RestedXP Alliance 1-20",[[
<< Alliance Warlock
#name 12-14 Loch Modan Human
#next 14-20 Bloodmyst
step
    .goto Loch Modan,23.3,17.9,15
    >>Stay your pet before you enter
step
    .goto Loch Modan,24.1,18.2
    .vendor >>vendor trash, repair
step
    .goto Loch Modan,24.8,18.4
    .turnin 353 >> Turn in Stormpike's Delivery
    .accept 307 >> Accept Filthy Paws
    >>Make sure you don't pick up Stormpike's Order
step
    .goto Loch Modan,25.7,18.8,15
    >>Drop down, then make pet follow
step
#sticky
#completewith Thelsamar1
>>Kill Spiders in the zone for Spider Ichor
.collect 3174,3 --Collect Spider Ichor (x3)
step
    #sticky
    #completewith Thelsamar1
>>Kill Bears in the zone for Bear Meat
.collect 3173,3 --Collect Bear Meat (x3)
step
    #sticky
    #completewith Thelsamar1
>>Kill Boars in the zone for Boar Intestines
.collect 3172,3 --Collect Boar Intestines (x3)
step
    #label Thelsamar1
>>Grind mobs en route for cooking quest later
.goto Loch Modan,35.1,47.8,100
step
    .goto Loch Modan,35.5,48.4
    .vendor >>buy food/water (try to have 40 level 5 drink, 20 level 5 food)
step
    .goto Loch Modan,34.8,49.3
    .accept 418 >> Accept Thelsamar Blood Sausages
step
    .goto Loch Modan,34.8,48.6
    .vendor >>Buy 6 slot bags until all bag slots full
step
    .goto Loch Modan,36.9,46.1
    >>Find Kadrell. He patrols along the main road
    .accept 416 >> Accept Rat Catching
    .accept 1339 >> Accept Mountaineer Stormpike's Task
    >>Mountaineer Stormpike's doesn't show if you have Stormpike's Order in q log
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
    .xp 13 >> Grind to 13
step
    .goto Loch Modan,23.3,17.9,15
    >>Stay your pet before you enter
step
    .goto Loch Modan,24.1,18.2
    .vendor >>vendor trash, repair
step
    .goto Loch Modan,24.7,18.3
    .turnin 307 >> Turn in Filthy Paws
    .turnin 1339 >> Turn in Mountaineer Stormpike's Task
step
    >>Drop down, then make pet follow
.goto Loch Modan,25.7,18.8,15
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
    .goto Loch Modan,34.8,49.3
    .turnin 418 >> Turn in Thelsamar Blood Sausages
step
    .goto Loch Modan,33.9,51.0
    .fp >> Get the Thelsamar flight path
step
    .goto Loch Modan,22.1,73.1
    >>Stay your pet
    .accept 224 >> Accept In Defense of the King's Lands
step
.goto Loch Modan,22.6,75.4,25
step
    .goto Loch Modan,23.2,73.7
    >>Go into the bunker
    .accept 267 >> Accept The Trogg Threat
step
    >>Jump through the gap in the bunker and drop down. Make pet follow
.goto Loch Modan,23.0,72.3,20
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
    .istrained 755,705
    .money >0.7150
    .goto Loch Modan,32.7,76.5,0
    >>Grind until you have 71s 50c of vendorables+money, then turnin
    .goto Loch Modan,22.2,73.3
    .turnin 224 >> Turn in In Defense of the King's Lands
step
    .goto Loch Modan,22.2,73.3
    .turnin 224 >> Turn in In Defense of the King's Lands
step
.goto Loch Modan,32.7,76.5,0
.xp 13+9200 >>Grind until 9200/11000xp
step
    .goto Loch Modan,23.2,73.7
    .turnin 267 >> Turn in The Trogg Threat
    .xp 14 >> Grind to 14
step
    >> Hearth to Ironforge
    .goto Ironforge,18.1,51.4,100
    .vendor >> vendor trash
step
    .goto Ironforge,24.0,16.7,20
step
    #sticky
    #label Wand1
    #completewith Wand2
.goto Ironforge,25.8,75.2,10 >> Alternatively, buy a Greater Magic Wand from the AH if it costs <30s 6c
.collect 11288,1 --Collect Greater Magic Wand
step
    #label Wand2
    #completewith Wand1
.goto Ironforge,22.6,16.5
    .vendor >>Go downstairs, buy Smoldering Wand
    --Tell Zarant to add note to “equip wand” at 15 on his route, warlock only, maybe depends on other classes like priest too
step
    >>Enter the building
.goto Ironforge,51.1,8.7,15
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
.goto Ironforge,53.2,7.8,15
step
    .goto Ironforge,53.0,6.4
    .vendor >>Buy Consume Shadows r1, then Sacrifice r1
step
    #sticky
    #completewith next
    >>Logout Skip out of Ironforge if you know how to do it (Optional)
step
    >>Run out of Ironforge
    .goto Dun Morogh,53.5,34.9,90
step
    .goto Dun Morogh,39.2,38.7,40
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
.goto Wetlands,12.7,46.7,30
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
.goto Wetlands,9.5,59.7
    .fp >> Get the Menethil Harbor flight path
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
    .goto Darkshore,50.0,50.0,5000
step
>>Jump into the water here from boat
.goto Darkshore,34.6,45.7,60
step
    >>Go up two floors
    .goto Darkshore,36.6,43.9,15
step
    .goto Darkshore,37.0,44.1
    .accept 983 >> Accept Buzzbox 827
step
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
    .goto Darkshore,36.1,45.9,10
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
    #sticky
#completewith Azuremyst
>>Boat to Azuremyst Isle
.goto Darkshore,30.8,41.0
step
    #label Azuremyst
    .zone Azuremyst Isle >> Go to Azuremyst Isle
]],"Human Warlock")



