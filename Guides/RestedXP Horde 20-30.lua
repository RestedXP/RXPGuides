RXPGuides.RegisterGuide("RestedXP Horde 1-30",[[
<< Horde !Warrior !Shaman
#name 20-23 Stonetalon / The Barrens
#next 23-27 Hillsbrad / Ashenvale
step 
.goto Orgrimmar,49.0,94.2,20 >>Run into Orgrimmar
step
>>Go to the top of the tower
.goto Orgrimmar,45.1,63.9
.fp >> Get the Orgrimmar flight path
step
.goto Orgrimmar,39.8,37.0,20 >>Run into the Keep
step << BloodElf
    .isOnQuest 9626
.goto Orgrimmar,31.8,38.1
    .turnin 9626 >> Turn in Meeting the Warchief
.accept 9627 >> Accept Allegiance to the Horde
step << !BloodElf
    .isOnQuest 9813
.goto Orgrimmar,31.8,38.1
    .turnin 9813 >> Turn in Meeting the Warchief
step << Warlock
    .goto Orgrimmar,48.2,45.3
    .accept 1507 >>Accept Devourer of Souls
step << Warlock
    .goto Orgrimmar,47.0,46.5
    .turnin 1507 >>Turn in Devourer of Souls
    .accept 1508 >>Accept Blind Cazul
step << Warlock
    .goto Orgrimmar,37.0,59.4
    .turnin 1508 >>Turn in Blind Cazul
    .accept 1509 >>Accept News of Dogran
step
    .goto Orgrimmar,31.9,38.2
    .accept 9428 >> Accept Report to Splintertree Post
step
    .goto Orgrimmar,39.0,38.3
    .accept 1061 >> Accept The Spirits of Stonetalon
step << Mage
    .goto Orgrimmar,38.7,85.4
.trainer >> Go and train your ORG Portal
step
.goto Orgrimmar,52.5,85.1,40,0
    .goto Orgrimmar,49.1,94.3,40 >>Exit Orgrimmar
step
    >>Run all the way down to Ratchet
.goto The Barrens,63.1,37.1
    .fp >> Get the Ratchet flight path
step
    .goto The Barrens,63.1,37.6
    .accept 959 >>Accept Trouble at the Docks
step
    .goto The Barrens,63.0,37.2
    .accept 1483 >>Accept Ziz Fizziks
step
    .goto The Barrens,62.4,37.6
    .accept 865 >>Accept Raptor Horns
    .accept 1069 >>Accept Deepmoss Spider Eggs
step << Rogue
    +Run to the boat, then go down to the 2nd floor. Start picking lockboxes until you're at 80 skill, then check this step
.goto The Barrens,65.0,45.4
step
    >>Run to Crossroads
.goto The Barrens,52.3,31.9
    .accept 870 >>Accept The Forgotten Pools
step
    .goto The Barrens,51.9,31.6
    .accept 899 >>Accept Consumed by Hatred
    .accept 4921 >>Accept Lost in Battle
step
    .goto The Barrens,52.0,29.9
.home >> Set your Hearthstone to The Crossroads
step << Warlock
    .goto The Barrens,51.9,30.3
    .turnin 1509 >>Turn in News of Dogran
    .accept 1510 >>Accept News of Dogran
step
    .goto The Barrens,51.5,30.3
    .fp >> Get the The Crossroads flight path
step
    .goto The Barrens,51.5,30.1
    .accept 848 >> Accept Fungal Spores
step
    .goto The Barrens,45.4,28.4
    .accept 850 >> Accept Kolkar Leaders
step
    #sticky
    #completewith next
    >>Collect the white mushrooms around The Forgotten Pools
.complete 848,1 --Collect Fungal Spores (x4)
step
>>Dive underwater to the bubble fissure
.goto The Barrens,45.1,22.5
    .complete 870,1 --Explore the waters of the Forgotten Pools
step
>>Collect the white mushrooms around The Forgotten Pools
.goto The Barrens,45.2,23.3,40,0
.goto The Barrens,45.2,22.0,40,0
    .goto The Barrens,44.6,22.5,40,0
    .goto The Barrens,43.9,24.4,40,0
.complete 848,1 --Collect Fungal Spores (x4)
step
>>Kill Kodobane. Loot him for his head
    .goto The Barrens,42.9,23.5
    .complete 850,1 --Collect Kodobane's Head (x1)
step
    #sticky
    #completewith next
    .goto The Barrens,35.3,27.9
>>Kill & Loot Raptors as you see them en route to next step
    .complete 865,1 --Collect Intact Raptor Horn (x5)    
step
    .goto The Barrens,35.3,27.9
    .turnin 1061 >> Turn in The Spirits of Stonetalon
    .accept 1062 >> Accept Goblin Invaders
    .accept 6548 >> Accept Avenge My Village
step
    >>Kill Grimtotems in the area
.goto Stonetalon Mountains,80.7,89.2,50,0
    .goto Stonetalon Mountains,82.0,86.0,50,0
    .goto Stonetalon Mountains,84.7,84.3,50,0
    .goto Stonetalon Mountains,82.3,90.0,50,0
.goto Stonetalon Mountains,80.7,89.2,50,0
    .goto Stonetalon Mountains,82.0,86.0,50,0
    .goto Stonetalon Mountains,84.7,84.3,50,0
    .goto Stonetalon Mountains,82.3,90.0,50,0
    .complete 6548,2 --Kill Grimtotem Mercenary (x6)
    .complete 6548,1 --Kill Grimtotem Ruffian (x8)
step
    .goto The Barrens,35.2,27.8
    .turnin 6548 >> Turn in Avenge My Village
    .accept 6629 >> Accept Kill Grundig Darkcloud
step
.goto Stonetalon Mountains,82.3,98.5,40 >>Run up to the mountain here
step << Warlock
    .goto Stonetalon Mountains,73.2,95.1
    .turnin 1510 >>Turn in News of Dogran
    .accept 1511 >>Accept Ken'zigla's Draught
step
    .goto Stonetalon Mountains,71.4,95.1
    .accept 6461 >> Accept Blood Feeders
step
    #sticky
    #completewith next
.goto Stonetalon Mountains,71.7,86.7,40 >>Run to the path here
step
    >>Make sure you kill all 6 brutes before starting the quest inside. Kill Grundig in front of the main tent
.goto Stonetalon Mountains,74.0,86.2
    .complete 6629,1 --Kill Grundig Darkcloud (x1)
    .complete 6629,2 --Kill Grimtotem Brute (x6)
step
    >>Start the Kaya Escort
.goto Stonetalon Mountains,73.5,85.8
    .accept 6523 >> Accept Protect Kaya
step
       >>Escort Kaya and stay close to her. 3 Grimtotems will spawn at the bonfire. Eat/drink before she gets to the camp
    .goto Stonetalon Mountains,75.8,91.4
    .complete 6523,1 --Kaya Escorted to Camp Aparaje
step
    >>Click the Wanted poster
.goto Stonetalon Mountains,59.0,75.7
    .accept 6284 >> Accept Arachnophobia
step
.goto Stonetalon Mountains,57.5,76.2,30 >>Run up the path here to Sishir Canyon
step
#sticky
#label deepmossegg
>>Click the spider eggs near the trees. Be careful as mobs can spawn from the eggs
    .complete 1069,1 --Collect Deepmoss Egg (x15)
step
>>Kill the Deepmoss Spiders and Besseleth in the area. Loot Besseleth for his fang
.goto Stonetalon Mountains,54.7,71.9,40,0
    .goto Stonetalon Mountains,52.6,71.8,40,0
    .goto Stonetalon Mountains,52.2,75.6,40,0
    .goto Stonetalon Mountains,53.9,74.2,40,0
.goto Stonetalon Mountains,54.7,71.9,40,0
    .goto Stonetalon Mountains,52.6,71.8,40,0
    .goto Stonetalon Mountains,52.2,75.6,40,0
    .goto Stonetalon Mountains,53.9,74.2,40,0
    .complete 6461,1 --Kill Deepmoss Creeper (x10)
.complete 6461,2 --Kill Deepmoss Venomspitter (x7)
    .complete 6284,1 --Collect Besseleth's Fang (x1)
step
    .goto Stonetalon Mountains,59.0,62.6
    .turnin 1483 >> Turn in Ziz Fizziks
    .accept 1093 >> Accept Super Reaper 6000
step
    #sticky
    #completewith next
    >>Kill Loggers as you search for Operators to get the Blueprints
.complete 1062,1 --Kill Venture Co. Logger (x15)
step
    >>Kill Venture Co. Operators until you get the Blueprints
.goto Stonetalon Mountains,62.8,53.7,40,0
    .goto Stonetalon Mountains,61.7,51.5,40,0
    .goto Stonetalon Mountains,66.8,45.3,40,0
    .goto Stonetalon Mountains,71.7,49.9,40,0
    .goto Stonetalon Mountains,74.3,54.7,40,0
    .goto Stonetalon Mountains,62.8,53.7,40,0
    .complete 1093,1 --Collect Super Reaper 6000 Blueprints (x1)
step
    >>Finish killing Loggers
    .goto Stonetalon Mountains,64.1,56.7,40,0
.goto Stonetalon Mountains,73.4,54.3,40,0
    .goto Stonetalon Mountains,64.1,56.7,40,0
.goto Stonetalon Mountains,73.4,54.3,40,0
    .goto Stonetalon Mountains,64.1,56.7,40,0
.goto Stonetalon Mountains,73.4,54.3,40,0
    .goto Stonetalon Mountains,64.1,56.7,40,0
.goto Stonetalon Mountains,73.4,54.3,40,0
.complete 1062,1 --Kill Venture Co. Logger (x15)
step
    .goto Stonetalon Mountains,59.0,62.6
    .turnin 1093 >> Turn in Super Reaper 6000
    .accept 1094 >> Accept Further Instructions
step
#requires deepmossegg
    .hs >> Hearth to Crossroads
step
    .goto The Barrens,51.5,30.2
    .turnin 848 >> Turn in Fungal Spores
step
    .goto The Barrens,52.2,31.9
    .turnin 870 >> Turn in The Forgotten Pools
    .accept 877 >> Accept The Stagnant Oasis
step
    .goto The Barrens,51.5,30.2
    .accept 853 >> Accept Apothecary Zamah
step
#sticky
#completewith Horns
>>Kill & Loot any Raptors you see
    .complete 865,1 --Collect Intact Raptor Horn (x5)    
step
    >>Click the Bubble Fissure underwater
.goto The Barrens,55.6,42.7
    .complete 877,1 --Collect Test the Dried Seeds (x1)
step
    #label Horns
.goto The Barrens,49.3,50.4
    .complete 4921,1 --Find Mankrik's Wife
step
    .goto The Barrens,52.2,46.6,40,0
    .goto The Barrens,57.8,54.1,40,0
    .goto The Barrens,52.2,46.6,40,0
    .goto The Barrens,57.8,54.1,40,0
    .goto The Barrens,52.2,46.6,40,0
    .goto The Barrens,57.8,54.1,40,0
>>Finish looting the rest of the Raptor Horns
    .complete 865,1 --Collect Intact Raptor Horn (x5)    
step
#sticky
#label Owatanka1
#completewith weapons
.goto The Barrens,49.2,62.6,0
.goto The Barrens,49.6,60.0,0
>>Search for Owatanka (Blue Thunder Lizard) around the area. If you find him, loot his Tailspike and start the quest. You'll check more spots later if you don't get it
.collect 5102,1,884 --Collect Owatanka's Tailspike
.accept 884 >>Accept Owatanka
step
#sticky
#label Lakota1
#completewith next
.goto The Barrens,50.0,53.1,0
    .goto The Barrens,46.0,49.2,0
    .goto The Barrens,45.3,52.5,0
>>Find & kill Lakota'mani (Gray Kodo) around the area. Loot his Hoof. If you can't find him, skip this quest.
.collect 5099,1, --Collect Hoof of Lakota'Mani
.accept 883 >>Accept Lakota'Mani
step
    #label weapons
.goto The Barrens,45.1,57.7
    .accept 893 >>Accept Weapons of Choice
step << Warlock
    .goto The Barrens,44.6,59.3
    .turnin 1511 >>Turn in Ken'zigla's Draught
    .accept 1515 >>Accept Dogran's Captivity
step
    .goto The Barrens,44.5,59.2
    .accept 878 >> Accept Tribes at War
step
    .goto The Barrens,44.7,59.1
    .accept 1130 >> Accept Melor Sends Word
step
    .goto The Barrens,44.5,59.2
    .fp >> Get the Camp Taurajo flight path
step << Warlock
    #sticky
#completewith next
>>Save the Blood Shards you get
.complete 878,1 --Kill Bristleback Water Seeker (x6)
    .complete 878,2 --Kill Bristleback Thornweaver (x12)
    .complete 878,3 --Kill Bristleback Geomancer (x12)
    .complete 899,1 --Collect Bristleback Quilboar Tusk (x60)
step << Warlock
    >>Kill Quillboars en route to here
.goto The Barrens,43.3,47.9
    .turnin 1515 >>Turn in Dogran's Captivity
    .accept 1512 >>Accept Love's Gift
step
    >>Kill a LOT of Quillboars. Loot them for their tusks. Save the Blood Shards you get
.goto The Barrens,44.3,52.3,50,0
    .goto The Barrens,47.1,53.3,50,0
    .goto The Barrens,45.2,54.3,50,0
.goto The Barrens,44.3,52.3,50,0
    .goto The Barrens,47.1,53.3,50,0
    .goto The Barrens,45.2,54.3,50,0
.goto The Barrens,44.3,52.3,50,0
    .goto The Barrens,47.1,53.3,50,0
    .goto The Barrens,45.2,54.3,50,0
.goto The Barrens,44.3,52.3,50,0
    .goto The Barrens,47.1,53.3,50,0
    .goto The Barrens,45.2,54.3,50,0
.complete 878,1 --Kill Bristleback Water Seeker (x6)
    .complete 878,2 --Kill Bristleback Thornweaver (x12)
    .complete 878,3 --Kill Bristleback Geomancer (x12)
    .complete 899,1 --Collect Bristleback Quilboar Tusk (x60)
step
#completewith next
+Use your Blood Shards on any buff from Mangletooth
step
    .goto The Barrens,44.6,59.2
    .turnin 878 >> Turn in Tribes at War
    .accept 5052 >>Accept Blood Shards of Agamaggan
.turnin 5052 >>Turn in Blood Shards of Agamaggan
step
    .isOnQuest 884
    .goto The Barrens,44.9,59.1
    .turnin 884 >> Turn in Owatanka
step
.isOnQuest 883
        .goto The Barrens,44.9,59.1
    .turnin 883 >> Turn in Lakota'mani
step << !Tauren
.goto Thunder Bluff,32.1,67.2,30 >>Run to Thunder Bluff
step << !Tauren
    .goto Thunder Bluff,45.8,64.7
.home >> Set your Hearthstone to Thunder Bluff
step << Tauren
    .goto The Barrens,44.4,59.2
.fly Thunder Bluff>>Fly to Thunder Bluff
step << Druid
.goto Thunder Bluff,76.5,27.2
.accept 27 >>Accept A Lesson to Learn
.trainer >> Go and train your class spells
step
    .goto Thunder Bluff,36.6,51.3
    .accept 742 >> Accept The Ashenvale Hunt
step
    .goto Thunder Bluff,30.1,30.0,15 >>Go into The Pools of Vision
step
.goto Thunder Bluff,27.5,24.7
    .accept 264 >> Accept Until Death Do Us Part
step
.goto Thunder Bluff,23.0,20.9
    .turnin 853 >> Turn in Apothecary Zamah
.accept 962 >> Accept Serpentbloom
step << Tauren
    .goto Thunder Bluff,45.8,64.7
.home >> Set your Hearthstone to Thunder Bluff
step
    .goto Thunder Bluff,61.4,80.9
    .turnin 1130 >> Turn in Melor Sends Word
    .accept 1131 >> Accept Steelsnap
step
    .goto Thunder Bluff,54.9,51.4
    .accept 1195 >> Accept The Sacred Flame
step << !Tauren
    >>Go up the tower
.goto Thunder Bluff,47.0,49.8
.fp >>Get the Thunder Bluff Flight Path
step
    .goto Thunder Bluff,47.0,49.8
.fly >> Fly to Ratchet
step
    .goto The Barrens,62.4,37.6
    .turnin 865 >> Turn in Raptor Horns
    .turnin 1069 >> Turn in Deepmoss Spider Eggs
    .accept 1491 >>Accept Smart Drinks
step
    .goto The Barrens,63.0,37.2
    .turnin 1094 >> Turn in Further Instructions
    .accept 1095 >> Accept Further Instructions
step
    .goto The Barrens,63.1,37.2
.fly >> Fly to Crossroads
step
    .goto The Barrens,52.0,31.6
    .turnin 4921 >> Turn in Lost in Battle
    .turnin 899 >> Turn in Consumed by Hatred
step
    .goto The Barrens,52.2,31.9
    .turnin 877 >> Turn in The Stagnant Oasis
step
.goto Kalimdor,50.4,34.4,15 >>Go up the mountain here
step
.goto Kalimdor,50.4,34.4,10 >>Go into here
step
.goto Kalimdor,51.9,55.5,10 >>Jump down into the eye
step
.goto Kalimdor,51.9,55.4
.goto The Barrens,51.9,55.4
.accept 1486 >>Accept Deviate Hides
step
.goto The Barrens,46.0,36.4,15 >>Leave the eye. Go to the mouth of the cave
step
#sticky
#label Deviate
>>Kill Deviate mobs. Loot them for their hides
.complete 1486,1 --Deviate Hide (20)
step
#sticky
#label Serpentbloom
>>Look for green and red flowers on the ground
.complete 962,1 --Serpentbloom (10)
step
.goto The Barrens,52.1,55.1,20,0
.goto The Barrens,52.0,55.4,20,0
.goto The Barrens,51.8,54.9,20,0
.goto The Barrens,52.1,55.1,20,0
.goto The Barrens,52.0,55.4,20,0
.goto The Barrens,51.8,54.9,20,0
.goto The Barrens,52.1,55.1,20,0
.goto The Barrens,52.0,55.4,20,0
.goto The Barrens,51.8,54.9,20,0
.goto The Barrens,52.1,55.1,20,0
.goto The Barrens,52.0,55.4,20,0
.goto The Barrens,51.8,54.9,20,0
>>Look for Mad Magglish (a goblin). He has multiple spawnpoints. Kill and loot him for 99-Year-Old Port
.complete 959,1 --Collect 99-Year-Old Port (1)
step
#sticky
#completewith next
.goto Kalimdor,51.9,54.9,40 >>Enter the deeper part of the cave
step
    #sticky
#completewith next
>>Keep an eye out for two rare mobs, as they can both drop blue BoE axes, among other gear
.goto Kalimdor,52.5,54.8,30 >> Trigore
.goto Kalimdor,52.8,55.0,30 >> Boahn
step
>>Kill Ectoplasms for Wailing Essences. Keep an eye out for the 2 rares in the deeper part of the cave, as they can drop blue BoE items
.complete 1491,1 --Wailing Essence (6)
step
#requires Serpentbloom
.goto The Barrens,45.4,28.4,3000 >> .
step
#sticky
#completewith next
#requires Deviate
.goto Kalimdor,51.9,55.4
+Run back and talk to the druids on top of the mouth of the cave
step
.goto The Barrens,51.9,55.4
.turnin 1486 >>Turn in Deviate Hides
step
    .goto The Barrens,45.4,28.4
    .turnin 850 >> Turn in Kolkar Leaders
step
    .goto The Barrens,35.3,27.8
    .turnin 1062 >> Turn in Goblin Invaders
    .turnin 6629 >> Turn in Kill Grundig Darkcloud
    .turnin 6523 >> Turn in Protect Kaya
    .accept 6401 >> Accept Kaya's Alive
    .accept 1063 >> Accept The Elder Crone
step
    .goto Stonetalon Mountains,71.3,95.0
    .turnin 6461 >> Turn in Blood Feeders
step
    .goto Stonetalon Mountains,47.3,64.2
    .accept 6562 >> Accept Trouble in the Deeps
step
    .goto Stonetalon Mountains,47.2,61.1
    .turnin 6284 >> Turn in Arachnophobia
step
    .goto Stonetalon Mountains,47.5,58.3
    .turnin 6401 >> Turn in Kaya's Alive
step
    .goto Stonetalon Mountains,59.0,62.6
    .turnin 1095 >> Turn in Further Instructions
step
    #sticky
    #completewith next
.goto Stonetalon Mountains,78.2,42.8,30 >>Go to Talondeep Path
step
.goto Ashenvale,42.3,71.0,20    >>Run through the cave to Ashenvale
step
.goto Ashenvale,16.3,29.8,90 >>Go to the Zoram'gar Outpost. Be sure to avoid Astranaar guards en route
step
    .goto Ashenvale,12.3,33.8
    .fp >> Get the Zoram'gar Outpost flight path
step
    .goto Ashenvale,11.8,34.7
    .accept 216 >> Accept Between a Rock and a Thistlefur
step
    .goto Ashenvale,11.6,34.9
    .accept 6442 >> Accept Naga at the Zoram Strand
    .accept 6462 >> Accept Troll Charm
step
    .goto Ashenvale,11.6,34.3
    .turnin 6562 >> Turn in Trouble in the Deeps
    .accept 6563 >> Accept The Essence of Aku'Mai
step
    >>Accepting this quest starts an escort. Follow him
.goto Ashenvale,12.1,34.4
    .accept 6641 >> Accept Vorsha the Lasher
step
#sticky
#label wrathtailhead
>>Kill Nagas. Loot them for their heads
    .goto Ashenvale,15.5,17.1
    .complete 6442,1 --Collect Wrathtail Head (x20)
step
>>There will be waves of Naga that spawn. Once Vorsha comes out, let Muglash get aggro before fighting him.
    .goto Ashenvale,9.8,27.4
    .complete 6641,1 --Defeat Vorsha the Lasher
step
.goto Ashenvale,14.2,14.7,40    >>Drop down the hole into Blackfathom Deeps
step
    #label Sapphires
.goto Ashenvale,13.0,13.2,30,0
.goto Ashenvale,13.6,9.0,30,0
.goto Ashenvale,13.0,13.2,30,0
.goto Ashenvale,13.6,9.0,30,0
.goto Ashenvale,13.0,13.2,30,0
.goto Ashenvale,13.6,9.0,30,0
.goto Ashenvale,13.0,13.2,30,0
.goto Ashenvale,13.6,9.0,30,0
        >>Swim under the water, and enter Blackfathom Deeps. Grind mobs until a Damp Note drops, and loot the Sapphires from the walls in the tunnel.
.collect 16790,1,6564 --Collect Damp Note
    .accept 6564 >> Accept Allegiance to the Old Gods
    .complete 6563,1 --Collect Sapphire of Aku'Mai (x20)
step
#requires wrathtailhead
>>Return to Zoram'gar Outpost.
    .goto Ashenvale,12.2,34.2
    .turnin 6641 >> Turn in Vorsha the Lasher
step
    .goto Ashenvale,11.6,34.3
    .turnin 6563 >> Turn in The Essence of Aku'Mai
step
    .turnin 6564 >> Turn in Allegiance to the Old Gods
step
    .goto Ashenvale,11.7,34.9
    .turnin 6442 >> Turn in Naga at the Zoram Strand
step << Druid
    .zone Moonglade >> Use the spell Teleport to Moonglade
step << Druid
    >>Go Upstairs
     .goto Moonglade,56.2,30.6
    .turnin 27 >>Turn in A Lesson to Learn
    .accept 28 >>Accept Trial of the Lake
step << Druid
    .goto Moonglade,52.5,40.5
.trainer >> Go and train your class spells
step << Druid
    >>Search for a Vase underwater. Loot it for a Shrine Bauble
    .goto Moonglade,54.6,46.5,20,0
    .goto Moonglade,53.0,48.4
    .collect 15877,1
step << Druid
    >>Use the Shrine Bauble
    .goto Moonglade,36.2,41.8
    .complete 28,1 --Complete the Trial of the Lake. (1)
step << Druid
    .goto Moonglade,36.5,40.1
    .turnin 28 >>Turn in Trial of the Lake
    .accept 30 >>Accept Trial of the Sea Lion
step
    .hs >> Hearth to Thunder Bluff
step
    .goto Thunder Bluff,69.8,30.8
    .turnin 1063 >> Turn in The Elder Crone
step
    .goto Thunder Bluff,70.2,30.8
    .accept 1064 >> Accept Forsaken Aid
step
    .goto Thunder Bluff,22.9,21.1
    .turnin 1064 >> Turn in Forsaken Aid
    .turnin 962 >> Turn in Serpentbloom
    .accept 1065 >> Accept Journey to Tarren Mill
step
    .goto Thunder Bluff,47.0,49.9
    .fly >> Fly to Ratchet
step
    .goto The Barrens,63.1,37.6
    .turnin 959 >>Turn in Trouble at the Docks
step
    .goto The Barrens,62.4,37.6
    .turnin 1491 >>Turn in Smart Drinks
step << Druid
    >>Loot the gray chest underwater
    .goto The Barrens,56.7,8.3
    .collect 15883,1
step << Druid
    #sticky
    #completewith next
    .goto Orgrimmar,12.4,66.1,20 >>Enter Orgrimmar through the west entrance
step << !Druid
    .goto Thunder Bluff,47.0,49.9
    .fly >> Fly to Orgrimmar
step << Paladin
    .goto Orgrimmar,32.4,35.8
.trainer >> Go and train your class spells
step << Shaman
    .goto Orgrimmar,38.6,36.0
.trainer >> Go and train your class spells
step << Hunter
    .goto Orgrimmar,66.1,18.5
.trainer >> Go and train your class spells
step << Hunter
    .goto Orgrimmar,66.3,14.8
.trainer >> Go and train your pet spells
step << Warrior
    .goto Orgrimmar,79.7,31.4
.trainer >> Go and train your class spells
step << Rogue
    .goto Orgrimmar,44.0,54.6
.trainer >> Go and train your class spells
step << Warlock
    .goto Orgrimmar,48.0,46.0
.trainer >> Go and train your class spells
step << Warlock
    .goto Orgrimmar,47.5,46.7
        .vendor >> Buy Soothing Kiss
step << Mage
    .goto Orgrimmar,38.8,85.6
.trainer >> Go and train your class spells
step << Priest
    .goto Orgrimmar,35.6,87.8
.trainer >> Go and train your class spells
step << Rogue
    .goto Orgrimmar,43.1,53.7
    .accept 2460 >>Accept The Shattered Salute
step << Rogue
    >>Target Shenthul and type /salute
.complete 2460,1 --Shattered Salute Performed (1)
step << Rogue
    .goto Orgrimmar,43.1,53.7
    .turnin 2460 >>Turn in The Shattered Salute
    .accept 2458 >>Accept Deep Cover
    .train 1725 >>Train Distract
    .train 1856 >>Train Vanish
    .train 1759 >>Train Sinister Strike r4
step << Rogue
.goto Orgrimmar,42.1,49.5
.vendor >> Buy at least 1 Flash Powder from Rekkul
.collect 5140,1 --Collect Flash Powder
step << Rogue
    #sticky
    #completewith next
    +Make sure you have a dagger in your inventory. If you don't, buy the cheapest one you can find
step << Rogue
    >>Use the Flare gun when you're about 50 yards from Taskmaster Fizzule. Then, /salute him. When he turns friendly, talk to him
.goto The Barrens,55.4,5.6
    .turnin 2458 >>Turn in Deep Cover
    .accept 2478 >>Mission: Possible But Not Probable
step << Rogue
    >>Stealth and pickpocket Silixiz for his Tower Key. Make you hug the tower wall as much as possible, then go behind him to pickpocket him. If he says something, back up, then approach from a different angle to try to pickpocket him again. Do NOT kill him
    .goto The Barrens,54.8,5.9
    .complete 2478,5 --Silixiz's Tower Key (1)
step << Rogue
    >>Go into the tower, equip your dagger, then ambush one of the Drones. This will instantly kill them. Run away, come back, and do the same to the other drone
.goto The Barrens,54.7,5.7
    .complete 2478,1 --Mutated Venture Co. Drone (2)
step << Rogue
    >>Go upstairs to the next floor. Re-equip your main weapon. Use a 1 Combo Point Ruptures to nuke the mobs. This should do 50% of their health each time
.goto The Barrens,54.7,5.8
.complete 2478,3 --Venture Co. Patroller (2)
step << Rogue
    >>Go onto the third floor of the tower (balcony). Use a 1 Combo Point Eviscerate to nuke the mobs. This should do 50% of their health each time
.goto The Barrens,54.6,5.6
.complete 2478,2 --Venture Co. Lookout (2)
step << Rogue
    >>Go to the top floor of the tower. Equip your dagger again (make sure your cooldowns are up). Ambush Gallywix, then re-equip your main weapon in your main hand. Use all of your cooldowns, potions etc to kill Gallywix, then loot his head.
.goto The Barrens,54.8,5.6
    .complete 2478,4 --Gallywix's Head (1)
step << Rogue
    >>Lockpick the box in front of Gallywix in the top floor, then loot the Mixture
.goto The Barrens,54.8,5.6
.complete 2478,6 --Cache of Zanzil's Altered Mixture (1)
step << Rogue
    #sticky
    #completewith next
>>Run back to Orgrimmar through the West Entrance
    .goto Orgrimmar,11.6,66.9,30
step << Rogue
>>You're now going to get a week-long debuff making you unable to stealth. Relax and follow the route
.goto Orgrimmar,43.1,53.7
    .turnin 2478 >>Turn in Mission: Possible But Not Probable
    .accept 2479 >>Accept Hinott's Assistance
step << Warlock
    .goto Orgrimmar,48.2,45.3
    .turnin 1512 >>Turn in Love's Gift
    .accept 1513 >>Accept The Binding
step << Warlock
    >>Summon the Succubus at the circle in the building. Kill her
.goto Orgrimmar,49.4,50.0
    .complete 1513,1 --Summoned Succubus (1)
step << Warlock
    .goto Orgrimmar,48.2,45.3
    .turnin 1513 >>Turn in The Binding
step
    .home >> Set your Hearthstone to Orgrimmar
]])

RXPGuides.RegisterGuide("RestedXP Horde 1-30",[[
<< Horde
#name 23-27 Hillsbrad / Ashenvale
#next 27-30 Lower Barrens / Thousand Needles

step <<!Shaman
    .home >> Set your Hearthstone to Orgrimmar
step
    #sticky
    #completewith next
+Go to the Zeppelin tower. Take the zeppelin to Tirisfal
.goto Durotar,50.8,13.8
step
.zone Tirisfal Glades >>Arrive in Tirisfal Glades
step << Druid
     >>Loot the gray chest underwater next to the bubble fissure (in the fatigue).
    .goto Silverpine Forest,30.0,29.1
    .collect 15882,1
    --Video link in future?
step
    >>Run to The Sepulcher
.goto Silverpine Forest,42.9,40.9
    .accept 493 >> Accept Journey to Hillsbrad Foothills
step
    >>Click the stone grave on the ground
.goto Silverpine Forest,44.1,42.5
    .turnin 264 >> Turn in Until Death Do Us Part
step
    .goto Silverpine Forest,45.6,42.6
    .fp >> Get the The Sepulcher flight path
step
    >>Run down to Hillsbrad
.goto Hillsbrad Foothills,20.9,47.2
    .accept 494 >> Accept Time To Strike
step
    >>Run to Tarren Mill
.goto Hillsbrad Foothills,60.1,18.7
    .fp >> Get the Tarren Mill flight path
step    
    .goto Hillsbrad Foothills,62.5,20.7
    .turnin 9425 >> Turn in Report to Tarren Mill
    .goto Hillsbrad Foothills,62.4,20.3
    .turnin 494 >> Turn in Time To Strike
    .goto Hillsbrad Foothills,62.5,20.5
    .accept 527 >> Accept Battle of Hillsbrad
step << Shaman
    >>Fill the Waterskin at the well
.goto Hillsbrad Foothills,62.2,20.8
    .complete 1536,1 --Filled Red Waterskin (1)
step
    >>click the Wanted poster on the wall
    .goto Hillsbrad Foothills,62.7,20.5
    .accept 549 >> Accept WANTED: Syndicate Personnel
step
    >>Go inside the chapel
    .goto Hillsbrad Foothills,63.2,20.6
    .accept 498 >> Accept The Rescue
step
    .goto Hillsbrad Foothills,61.5,19.1
    .turnin 493 >> Turn in Journey to Hillsbrad Foothills
    .turnin 1065 >> Turn in Journey to Tarren Mill
    .accept 1066 >> Accept Blood of Innocents
    .accept 496 >> Accept Elixir of Suffering
    .accept 501 >> Accept Elixir of Pain
step << Rogue
    .goto Hillsbrad Foothills,61.6,19.2
    .turnin 2479 >>Turn in Hinott's Assistance
    .accept 2480 >> Accept Hinott's Assistance
step << Rogue
    >>Wait for him to complete the cure
.complete 2480,1 --Cure Completed
    .turnin 2480 >> Turn in Hinott's Assistance
step << !Rogue
    >>Click the Wanted poster on the wall
.goto Hillsbrad Foothills,62.5,19.8
    .accept 567 >> Accept Dangerous!
step << Shaman/Warrior/Paladin
    .goto Hillsbrad Foothills,60.4,26.2
    .vendor >> Go buy Merciless Axe from the vendor if you have enough money. It's not always in the shop.
    .collect 12249,1
step << Rogue
    .goto Hillsbrad Foothills,60.4,26.2
    .vendor >> Go buy Broad Bladed Knife from the vendor if you have enough money. It's not always in the shop.
    .collect 12247,1
step << Rogue
    >>Use Hinott's Oil on yourself to cure the debuff, then click the Wanted poster on the wall
.goto Hillsbrad Foothills,62.5,19.8
    .accept 567 >> Accept Dangerous!
step
    #sticky
#label syndicateq
>>Kill Syndicates in the area
    .complete 549,1 --Kill Syndicate Rogue (x10)
.complete 549,2 --Kill Syndicate Watchman (x10)
step
    #sticky
    #label shadowmage
    >>Kill Shadow Mages. Loot them for Vials of Innocent Blood
.complete 1066,1 --Collect Vial of Innocent Blood (x5)
step
>>Kill Jailor Eston & Jailor Marglen. Loot their keys, then rescue the orcs
.goto Hillsbrad Foothills,75.2,41.5
.complete 498,1 --Collect Rescue Drull (x1)
.goto Hillsbrad Foothills,79.9,39.7
    .complete 498,2 --Collect Rescue Tog'thar (x1)
step
    #requires shadowmage   
>>Kill Spiders. Loot them until Creeper Ichor drops
.goto Hillsbrad Foothills,63.5,33.0,50,0
    .goto Hillsbrad Foothills,57.9,34.5,50,0
    .goto Hillsbrad Foothills,57.2,22.1,50,0
.goto Hillsbrad Foothills,63.5,33.0,50,0
    .goto Hillsbrad Foothills,57.9,34.5,50,0
    .goto Hillsbrad Foothills,57.2,22.1,50,0
    .complete 496,2 --Collect Creeper Ichor (x1) 
step
        #requires syndicateq
    .goto Hillsbrad Foothills,61.5,19.1
    .turnin 1066 >> Turn in Blood of Innocents
step
    .goto Hillsbrad Foothills,63.2,20.7
    .turnin 498 >> Turn in The Rescue
.turnin 549 >> Turn in WANTED: Syndicate Personnel
step
#sticky
#label Farmers
>>Kill Farmers in and around the fields
    .complete 527,1 --Kill Hillsbrad Farmer (x6)
.complete 527,2 --Kill Hillsbrad Farmhand (x6)
step
>>Kill Farmer Ray in the 2nd floor of the house
.goto Hillsbrad Foothills,33.2,34.8
.complete 527,3 --Kill Farmer Ray (x1)
step
    #sticky
    #completewith next
>>Kill Farmer Getz, he can be:
.goto Hillsbrad Foothills,36.7,39.4,30 >> In the House
.goto Hillsbrad Foothills,35.2,37.6,15 >> In the Barn
.goto Hillsbrad Foothills,35.1,41.0,30 >> In the Field
step
.complete 527,4 --Kill Farmer Getz (x1)
step
#requires Farmers
>>Return to Tarren Mill
    .goto Hillsbrad Foothills,62.3,20.2
    .turnin 527 >> Turn in Battle of Hillsbrad
step
    .goto Hillsbrad Foothills,62.5,20.3
    .accept 528 >> Accept Battle of Hillsbrad
    .accept 566 >> Accept WANTED: Baron Vardus
    .accept 546 >> Accept Souvenirs of Death
step
    >>Kill Bears and Mountain Lions. Loot them for Tongues and Blood
.goto Hillsbrad Foothills,54.9,29.8,40,0
    .goto Hillsbrad Foothills,50.5,37.7,40,0
    .goto Hillsbrad Foothills,43.7,39.9,40,0
    .goto Hillsbrad Foothills,38.4,34.9,40,0
    .goto Hillsbrad Foothills,39.1,45.4,40,0
.goto Hillsbrad Foothills,54.9,29.8
.complete 496,1 --Collect Gray Bear Tongue (x10)
.complete 501,1 --Collect Mountain Lion Blood (x10)
step
    #sticky
    #label Wilkes
    >>Kill Citizen Wilkes. He patrols every road in the town
.complete 567,2 --Kill Citizen Wilkes (x1)
step
    #sticky
    #label Kalaba
    >>Kill Farmer Kalaba. She patrols the field of Peasants
.goto Hillsbrad Foothills,35.2,46.5
    .complete 567,4 --Kill Farmer Kalaba (x1)
step
    #label Peasants
>>Kill Peasants in and around the field
.goto Hillsbrad Foothills,35.2,46.5
.complete 528,1 --Kill Hillsbrad Peasant (x15)
step
    #requires Wilkes
.goto Hillsbrad Foothills,62.4,20.3,2500
step
    #requires Kalaba
.goto Hillsbrad Foothills,62.4,20.3
    .turnin 528 >> Turn in Battle of Hillsbrad
    .accept 529 >> Accept Battle of Hillsbrad
step
    .goto Hillsbrad Foothills,61.5,19.1
    .turnin 496 >> Turn in Elixir of Suffering
    .accept 499 >> Accept Elixir of Suffering
    .turnin 501 >> Turn in Elixir of Pain
    .accept 502 >> Accept Elixir of Pain
    .turnin 499 >> Turn in Elixir of Suffering
    .accept 1067 >> Accept Return to Thunder Bluff
    .accept 509 >> Accept Elixir of Agony
    .turnin 502 >> Turn in Elixir of Pain
step << Shaman/Warrior/Paladin
    .goto Hillsbrad Foothills,60.4,26.2
    .vendor >> If you didn't get the Merciless Axe the first time, go buy it in the shop now.
    .collect 12249,1
step << Rogue
    .goto Hillsbrad Foothills,60.4,26.2
    .vendor >> If you didn't get the Broad Bladed Knife the first time, go buy it in the shop now.
    .collect 12247,1
step
    #sticky
    #label Crate
>>Collect the crate inside the Blacksmith
.goto Hillsbrad Foothills,32.0,45.4
    .complete 529,3 --Collect Shipment of Iron (x1)
step
>>Run back to the Hillsbrad Fields
.goto Hillsbrad Foothills,32.1,45.3
.complete 529,1 --Kill Blacksmith Verringtan (x1)
    .complete 529,2 --Kill Hillsbrad Apprentice Blacksmith (x4)
step << Druid
    >>Click the Half Pendant (blue) in your bag to craft the Pendant
.goto Moonglade,36.2,41.8
    .complete 30,1 --Pendant of the Sea Lion (1)
step << Druid
    >>Go Upstairs
    .goto Moonglade,56.2,30.6
    .turnin 30 >>Turn in Trial of the Sea Lion
    .accept 31 >>Accept Aquatic Form
step << Druid
>> Use the spell Teleport to Moonglade
    .goto Moonglade,52.5,40.5
.trainer >> Go and train your class spells
step << !Shaman
#requires Crate
>>We're not going to turn these quests in until later on.
.hs >> Hearth to Orgrimmar
step << Shaman
#requires Crate
>>We're not going to turn these quests in until later on.
.hs >> Hearth to Camp Taurajo
step << Shaman
.goto The Barrens,43.4,77.4
.turnin 1536 >>Turn in Call of Water
.accept 1534 >>Accept Call of Water
step << Shaman
.goto The Barrens,44.5,59.1
.fly Orgrimmar >>Fly to Orgrimmar
step
    #sticky
       #completewith next
        +Buy food behind you if you need to. You're now going to do a lot of running
step << Paladin
    .goto Orgrimmar,32.4,35.8
.trainer >> Go and train your class spells
step << Shaman
    .goto Orgrimmar,38.6,36.0
.trainer >> Go and train your class spells
step << Hunter
    .goto Orgrimmar,66.1,18.5
.trainer >> Go and train your class spells
step << Hunter
    .goto Orgrimmar,66.3,14.8
.trainer >> Go and train your pet spells
step << Warrior
    .goto Orgrimmar,79.7,31.4
.trainer >> Go and train your class spells
step << Rogue
    .goto Orgrimmar,44.0,54.6
.trainer >> Go and train your class spells
step << Warlock
    .goto Orgrimmar,48.0,46.0
.trainer >> Go and train your class spells
step << Mage
    .goto Orgrimmar,38.8,85.6
.trainer >> Go and train your class spells
step << Priest
    .goto Orgrimmar,35.6,87.8
.trainer >> Go and train your class spells
step
    .goto Orgrimmar,16.2,62.2,30  >> Exit Orgrimmar through the west exit
step
    .goto Ashenvale,94.7,76.8,30  >> Run along the side of the river
step
    .goto Ashenvale,90.8,66.9,30  >> Run up the ramp here
step
    .goto Ashenvale,89.2,68.4,30  >> Go up the ramp. Be careful of the level 28/29 spider mobs 
step
    .goto Ashenvale,88.5,64.9,40  >> Run to the Lumber Camp
step
    .goto Ashenvale,81.7,62.9,40  >> Run through the camp to here
step
    .goto Ashenvale,73.2,61.6
    .fp >> Get the Splintertree Post flight path
step
    .goto Ashenvale,73.2,61.5
    .accept 6441 >> Accept Satyr Horns
step
    .goto Ashenvale,73.8,61.5
    .turnin 742 >> Turn in The Ashenvale Hunt
    .turnin 6383 >> Turn in The Ashenvale Hunt
step
    .goto Ashenvale,74.0,60.6
.home >> Set your Hearthstone to Splintertree Post
step
    .goto Ashenvale,73.5,60.1
    .accept 25 >> Accept Stonetalon Standstill
step
    .goto Ashenvale,71.3,67.8
    .turnin 9428 >> Turn in Report to Splintertree Post
step
    .goto Ashenvale,71.1,68.1
    .accept 6503 >> Accept Ashenvale Outrunners
step
 >>Kill Ashenvale Outrunners that are stealthed around the area.
.goto Ashenvale,72.5,72.5,40,0
    .goto Ashenvale,76.3,71.1,40,0
    .goto Ashenvale,76.3,67.3,40,0
    .goto Ashenvale,72.5,72.5,40,0
    .complete 6503,1 --Kill Ashenvale Outrunner (x9)
step
    .goto Ashenvale,68.3,75.3
    .accept 6544 >> Accept Torek's Assault
step
>>Follow Torek. This quest can get a bit hard. The final wave, run as far into the building as you can. Have Torek tank the mobs.
    .goto Ashenvale,64.6,75.3
    .complete 6544,1 --Take Silverwing Outpost.
step
    #sticky
    #completewith next
.goto Ashenvale,72.3,49.8,50 >>Run along the side of the river to here
step
    >>Kill Satyrs in the area. Loot them for their Horns
.goto Ashenvale,68.2,54.0
    .complete 6441,1 --Collect Satyr Horns (x16)
step
    #sticky
    #completewith next
    >>Kill Laughing Sisters until they drop Etched Phial
    .collect 5867 --Collect Etched Phial (x1)
step
>>Look for Shadumbra (a panther) and loot her for Shadumbra's Head, then accept it.
.goto Ashenvale,62.2,49.6,40,0
    .goto Ashenvale,58.0,56.2,40,0
    .goto Ashenvale,51.9,54.3,40,0
    .goto Ashenvale,61.2,51.5,40,0
.goto Ashenvale,62.2,49.6,40,0
    .goto Ashenvale,58.0,56.2,40,0
    .goto Ashenvale,51.9,54.3,40,0
    .goto Ashenvale,61.2,51.5,40,0
    .collect 16304,1,24 --Collect Shadumbra's Head
.accept 24 >> Accept Shadumbra's Head
step
    >>Kill Laughing Sisters until they drop Etched Phial
    .goto Ashenvale,61.3,51.9
    .collect 5867 --Collect Etched Phial (x1)
step
    #requires Phial
.goto Ashenvale,38.5,36.1,50 >>Run to Thistlefur Village
step
    #sticky
    #completewith next
    >>Kill some of the Furbolgs en route to the cave
    .complete 216,2 --Kill Thistlefur Shaman (x8)
.complete 216,1 --Kill Thistlefur Avenger (x8)
step
.goto Ashenvale,38.4,30.6,30 >>Run into Thistlefur Hold
step
#sticky
#label Charms
>>Loot the tiny chests inside the tunnel.
.complete 6462,1 --Collect Troll Charm (x8)
step
    >>This starts an escort
.goto Ashenvale,41.5,34.5
    .accept 6482 >> Accept Freedom to Ruul
step
    .goto Ashenvale,38.5,36.4
    .complete 6482,1 --Escort Ruul from the Thistlefurs.
step
    #requires Charms
    >>Finish killing the Furbolgs
.goto Ashenvale,35.9,36.7
    .complete 216,2 --Kill Thistlefur Shaman (x8)
.complete 216,1 --Kill Thistlefur Avenger (x8)
step << Shaman
    >>Fill the Waterskin
.goto Ashenvale,33.5,67.5
    .complete 1534,1 --Filled Blue Waterskin (1)
step
.goto Ashenvale,41.5,67.4,40,0
    .goto Ashenvale,44.3,68.6,40,0
    .goto Ashenvale,43.8,63.6,40,0
    .goto Ashenvale,41.4,65.9,40,0
.goto Ashenvale,41.5,67.4,40,0
    .goto Ashenvale,44.3,68.6,40,0
    .goto Ashenvale,43.8,63.6,40,0
    .goto Ashenvale,41.4,65.9,40,0
>>Look for Ursangous (Bear). He patrols clockwise. Kill and loot him for Ursangous's Paw, then accept it
    .collect 16303,1,23 --Collect Ursangous's Paw (x1)
    .accept 23 >> Accept Ursangous's Paw
step
    #sticky
    #completewith next
    >>Kill Water Elementals throughout the lake
    .complete 25,1 --Kill Befouled Water Elemental (x12)
step
    >>Run under the Gazebo in the middle of the lake
.goto Ashenvale,48.9,69.6
    .complete 25,2 --Scout the gazebo on Mystral Lake that overlooks the nearby Alliance outpost.
step
    >>Kill Water Elementals throughout the lake
.goto Ashenvale,48.9,69.6
    .complete 25,1 --Kill Befouled Water Elemental (x12)
step
    >>Use the Etched Phial from earlier at the moonwell
.goto Ashenvale,60.2,72.9
    .complete 1195,1 --Collect Filled Etched Phial (x1)
step
    .goto Ashenvale,71.2,68.1
    .turnin 6503 >> Turn in Ashenvale Outrunners
step
    .goto Ashenvale,72.4,72.1,40,0
    .goto Ashenvale,75.7,70.0,40,0
    .goto Ashenvale,78.2,65.5,40,0
    .goto Ashenvale,72.4,72.1,40,0
    .goto Ashenvale,75.7,70.0,40,0
    .goto Ashenvale,78.2,65.5,40,0
    .goto Ashenvale,75.3,72.0,0
>>Look for Sharptalon (Big Bird). He Patrols clockwise. Kill and loot him for Sharptalon's Claw, then accept it. Kite him to the undead camp to kill him.
    .collect 16305,1,2 --Collect Sharptalon's Claw
    .accept 2 >> Accept Sharptalon's Claw
step
    >>Go back to town
.goto Ashenvale,73.1,62.5
    .turnin 6544 >> Turn in Torek's Assault
step
    .goto Ashenvale,73.8,61.5
    .turnin 2 >> Turn in Sharptalon's Claw
    .turnin 24 >> Turn in Shadumbra's Head
    .turnin 23 >> Turn in Ursangous's Paw
    .turnin 247 >> Turn in The Hunt Completed
step
    .goto Ashenvale,73.1,61.5
    .turnin 6441 >> Turn in Satyr Horns
step
    .goto Ashenvale,73.7,60.0
    .turnin 25 >> Turn in Stonetalon Standstill
    .turnin 1918 >> Turn in The Befouled Element
    .accept 824 >> Accept Je'neu of the Earthen Ring
step
    .goto Ashenvale,74.1,60.9
    .turnin 6482 >> Turn in Freedom to Ruul
step
    .goto Ashenvale,73.2,61.5
    .fly >> Fly to Zoram'gar Outpost
step
    .goto Ashenvale,11.9,34.5
    .turnin 216 >> Turn in Between a Rock and a Thistlefur
step
    .goto Ashenvale,11.7,34.8
    .turnin 6462 >> Turn in Troll Charm
step
    .goto Ashenvale,11.6,34.3
    .turnin 824 >> Turn in Je'neu of the Earthen Ring
step << Druid
        >> Use the spell Teleport to Moonglade
    .goto Moonglade,52.5,40.5
.trainer >> Go and train your class spells
step
    .hs >> Hearth to Splintertree Post
step << !Warrior !Hunter !Shaman !Druid !Mage !Priest
    .goto Ashenvale,73.2,61.6
    .fly >> Fly to Orgrimmar
step << Paladin
    .goto Orgrimmar,32.4,35.8
.trainer >> Go and train your class spells
step << Warlock
    .goto Orgrimmar,48.0,46.0
.trainer >> Go and train your class spells
step << Warlock
    .goto Orgrimmar,47.5,46.7
.vendor >> Buy Seduction
step << Rogue
    .goto Orgrimmar,44.0,54.6
.trainer >> Go and train your class spells
step << !Warrior !Hunter !Shaman !Druid !Mage !Priest
.goto Orgrimmar,45.2,63.8
    .fly >> Fly to Thunder Bluff
step << !Rogue !Paladin !Warlock
    .goto Ashenvale,73.2,61.6
    .fly >> Fly to Thunder Bluff
]])
RXPGuides.RegisterGuide("RestedXP Horde 1-30",[[
<< Horde
#name 27-30 Lower Barrens / Thousand Needles
#next RestedXP Horde 30-45\30-34 Hillsbrad / Arathi / Shimmering Flats
step
.goto Thunder Bluff,55.2,51.5
    .turnin 1195 >> Turn in The Sacred Flame
    .accept 1196 >> Accept The Sacred Flame
step << Shaman/Paladin/Warrior
    .goto Thunder Bluff,54.0,57.3
    .vendor >> Go buy Merciless Axe if u didn't get it in Hillsbrad
    .collect 12249,1
step << Hunter
    .goto Thunder Bluff,46.9,45.7
    .vendor >> Go and buy Sturdy Recurve if it's in the shop.
    .collect 11306,1
step << Druid
    .goto Thunder Bluff,77.0,29.9
.trainer >> Go and train your class spells
.turnin 31 >>Turn in Aquatic Form
step << Hunter
    .goto Thunder Bluff,59.1,86.9
.trainer >> Go and train your class spells
step << Hunter
    .goto Thunder Bluff,54.1,83.9
.trainer >> Go and train your pet spells
step << Warrior
    .goto Thunder Bluff,57.6,85.5
.trainer >> Go and train your class spells
step << Shaman
    .goto Thunder Bluff,22.8,21.0
.trainer >> Go and train your class spells
step << Priest
    .goto Thunder Bluff,24.6,22.6
.trainer >> Go and train your class spells
step << Mage
    .goto Thunder Bluff,25.2,20.9
.trainer >> Go and train your class spells
step
    .goto Thunder Bluff,61.0,81.0
    .accept 1131 >> Accept Steelsnap
step
    .goto Thunder Bluff,23.1,21.0
    .turnin 1067 >> Turn in Return to Thunder Bluff
step
.goto Thunder Bluff,45.8,64.7
.home >> Set your Hearthstone to Thunder Bluff
step
    .goto Thunder Bluff,46.8,50.1
    .fly >> Fly to Camp Taurajo
step << Warrior
    >>In the building
.goto The Barrens,44.7,59.4
.turnin 1823 >>Turn in Speak with Ruga
    .accept 1824 >>Accept Trial at the Field of Giants
step
    .goto The Barrens,44.6,59.2
    .accept 879 >> Accept Betrayal from Within
step
#sticky
#label Owatanka2
#completewith next
.goto The Barrens,44.2,62.1,0
.goto The Barrens,49.2,62.6,0
.goto The Barrens,49.6,60.0,0
>>Search for Owatanka (Blue Thunder Lizard) around this area. If you find him, loot his Tailspike and start the quest. If you can't find him, skip this quest
.collect 5102,1,884 --Collect Owatanka's Tailspike
.accept 884 >>Accept Owatanka
step << Warrior
    >>Kill Silithid mobs in the area. Loot them for Twitching Antennae. Be quick as they have a 15m duration
.goto The Barrens,48.1,70.3
.complete 1824,1 --Twitching Antenna (5)
step << Warrior
    >>In the building
.goto The Barrens,44.7,59.4
    .turnin 1824 >>Turn in Trial at the Field of Giants
    .accept 1825 >>Accept Speak with Thun'grim
step << Shaman
    .goto The Barrens,43.4,77.4
    .turnin 1534 >>Turn in Call of Water
    .accept 220 >>Accept Call of Water
step
#sticky
#label Washte
#completewith next
.goto The Barrens,44.7,74.7,0
.goto The Barrens,44.7,77.8,0
.goto The Barrens,47.6,79.8,0
>>Search for Washte Pawne (Red Thunder Lizard) around the area. He's a red Wind Serpent that drops a quest. Accept Gann's Reclamation if you see him en route
.collect 5103,1 --Collect Washte Pawne's Feather
.accept 885 >>Accept Washte Pawne
step
    .goto The Barrens,46.0,76.2,30,0
.goto The Barrens,46.0,81.2,30,0
    .goto The Barrens,46.0,76.2,30,0
.goto The Barrens,46.0,81.2,30,0
.accept 843 >> Accept Gann's Reclamation
step
#sticky
#label Washte
#completewith next
.goto The Barrens,44.7,74.7,0
>>Search for Washte Pawne. He's a red Wind Serpent that drops a quest. If you can't find him in this last spot, skip the quest
.collect 5103,1 --Collect Washte Pawne's Feather
.accept 885 >>Accept Washte Pawne
step
    #sticky
    #label Weapons
    >>Kill mobs in the area for Weapons of Choice
    .complete 893,1 --Collect Razormane Backstabber (x1) from Stalkers or Pathfinders
    .complete 893,2 --Collect Charred Razormane Wand (x1) from Seers
    .complete 893,3 --Collect Razormane War Shield (x1) from Warfrenzies
step
.goto The Barrens,43.4,78.8 >> All around the Ridge
    .complete 879,1 --Collect Kuz's Skull (x1)
    .goto The Barrens,40.6,80.7 >> In the building up from the Ramp
    .complete 879,3 --Collect Lok's Skull (x1)
    .goto The Barrens,43.8,83.5 >> Southern part of the Ridge
    .complete 879,2 --Collect Nak's Skull (x1)
step
    #requires Weapons
    #sticky
    #label Baeldun
>>Kill Dwarves in the area for Gann's Reclamation
    .complete 843,1 --Kill Bael'dun Excavator (x15)
    .complete 843,2 --Kill Bael'dun Foreman (x5)
step
    #requires Weapons
>>Kill Prospector Khazgorm. Loot him for his Journal
.goto The Barrens,48.3,86.2
.complete 843,3 --Collect Khazgorm's Journal (x1)
step
.goto The Barrens,46.0,81.2,30,0
.goto The Barrens,46.0,76.2,30,0
.goto The Barrens,46.0,81.2,30,0
.goto The Barrens,46.0,76.2,30,0
.turnin 843 >> Turn in Gann's Reclamation
    .accept 846 >> Accept Revenge of Gann
step << Hunter/Warlock
    .goto The Barrens,48.9,86.2
    .accept 857 >> Accept The Tear of the Moons
step
    >>Kill mobs and loot them for Revenge of Gann
.goto The Barrens,49.4,84.3
    .complete 846,1 --Collect Nitroglycerin (x6)
    .complete 846,2 --Collect Wood Pulp (x6)
    .complete 846,3 --Collect Sodium Nitrate (x6)
step << Hunter/Warlock
    >>Go downstairs into the main room of the building. You can either try fighting the mobs by letting your pet tank. (Pull the closest mobs to you, don't directly pull Twinbraid). Alternatively, you can send your pet in, loot the chest, then die and run back.
.goto The Barrens,49.1,84.3
    .complete 857,1 --Collect Tear of the Moons (x1)
step
.goto The Barrens,46.0,81.2,30,0
.goto The Barrens,46.0,76.2,30,0
.goto The Barrens,46.0,81.2,30,0
.goto The Barrens,46.0,76.2,30,0
.turnin 846 >> Turn in Revenge of Gann
    .accept 849 >> Accept Revenge of Gann
step << Hunter/Warlock
    .goto The Barrens,48.9,86.3
    .turnin 857 >> Turn in The Tear of the Moons
step
    >>Right click the Flying Machine at the top of the launch pad
.goto The Barrens,47.0,85.6
    .complete 849,1 --Collect Bael Modan Flying Machine destroyed (x1)
step
.goto The Barrens,46.0,81.2,30,0
.goto The Barrens,46.0,76.2,30,0
.goto The Barrens,46.0,81.2,30,0
.goto The Barrens,46.0,76.2,30,0
.turnin 849 >> Turn in Revenge of Gann
step
    .goto Thousand Needles,32.2,22.2
    .accept 4542 >> Accept Message to Freewind Post
step
#sticky
#completewith next
>>Keep an eye out for the Galak Messenger. If you see it, Kill it, Loot it, and accept the quest. You can look for him later too
.collect 12564,1,4881 --Collect Assassination Note
.accept 4881 >>Accept Assassination Plot
step
    #sticky
    #completewith next
>>Take the lift down, then run to Freewind Post
    .goto Thousand Needles,47.1,48.3,60
step
.goto Thousand Needles,46.1,50.5
    .accept 9431 >> Accept A Different Approach
step
    .goto Thousand Needles,45.9,50.9
    .accept 5147 >> Accept Wanted - Arnak Grimtotem
step
    .goto Thousand Needles,46.1,51.7
    .turnin 1196 >> Turn in The Sacred Flame
    .accept 1197 >> Accept The Sacred Flame
step
    .goto Thousand Needles,45.6,50.8
    .turnin 4542 >> Turn in Message to Freewind Post
    .accept 4841 >> Accept Pacify the Centaur
step
    .goto Thousand Needles,45.1,49.2
    .fp >> Get the Freewind Post flight path
step
    .goto Thousand Needles,44.8,49.1
    .accept 4767 >> Accept Wind Rider
step
    .goto Thousand Needles,44.7,50.2
    .accept 4821 >> Accept Alien Egg
step << Hunter
    .goto Thousand Needles,44.9,50.7
    .vendor >> Go buy Dense Shortbow if it's in the shop.
    .collect 11305,1
step
#sticky
#completewith next
    >>Go into the Galak cave, hugging the left side
.goto Thousand Needles,44.0,37.4,40
step
    >>Loot the Brazier at the end
.goto Thousand Needles,42.0,31.5
    .complete 1197,1 --Collect Cloven Hoof (x1)    
step
    >>Kill Centaurs in the area
.goto Thousand Needles,41.3,37.7
    .complete 4841,3 --Kill Galak Windchaser (x6)
    .complete 4841,1 --Kill Galak Scout (x12)
    .complete 4841,2 --Kill Galak Wrangler (x10)
step
    #sticky
    #completewith next
>>Run up the path here, then go in the cave
.goto Thousand Needles,54.6,44.3,20
step
.goto Thousand Needles,53.9,41.5
    .accept 1149 >> Accept Test of Faith
step
    >>Jump off the end of the wooden platform, you don't die
.goto Thousand Needles,26.4,32.6,15
step
    .goto Thousand Needles,53.9,41.7
.turnin 1149 >> Turn in Test of Faith
    .accept 1150 >> Accept Test of Endurance
step
    #sticky
    #label Egg5
>>Look for the Alien Egg. It's a lootable object in one of the camps
    .goto Thousand Needles,56.3,50.4,20,0
.goto Thousand Needles,52.4,55.2,20,0
.goto Thousand Needles,37.7,56.1,20,0
    .goto Thousand Needles,56.3,50.4,20,0
.goto Thousand Needles,52.4,55.2,20,0
.goto Thousand Needles,37.7,56.1,20,0
    .complete 4821,1 --Collect Alien Egg (x1)
step
    >>Kill Thundering Boulderkins. Loot them for Purifying Earth
.goto Thousand Needles,65.2,62.4
    .complete 9431,1 --Collect Purifying Earth (x2)
step
    #requires Egg5
>>Go back to Freewind Post
.goto Thousand Needles,45.6,50.8
    .turnin 4841 >> Turn in Pacify the Centaur
    .accept 5064 >> Accept Grimtotem Spying
step
    .goto Thousand Needles,46.1,51.7
    .turnin 1197 >> Turn in The Sacred Flame
step
    .goto Thousand Needles,44.7,50.3
    .turnin 4821 >> Turn in Alien Egg
    .accept 4865 >> Accept Serpent Wild
step
.goto Thousand Needles,27.7,50.0,20 >>Run up the path here
step
.goto Thousand Needles,27.3,51.2,20 >>Enter the cave
step
    >>Go to the end of the cave, and open the Crate. Kill Grenka and loot her
.goto Thousand Needles,25.9,54.6
    .complete 1150,1 --Collect Grenka's Claw (x1)
step
    >>Exit the cave, then run up the path here
.goto Thousand Needles,13.9,31.7,20
step
       #sticky
    #label Eggs
    #completewith Paoka
    >>Loot the eggs on the ground in the area. Loot any you see
    .complete 4767,1 --Collect Highperch Wyvern Egg (x10)
step
.goto Thousand Needles,13.2,39.7,20 >>Run up the path here   
step
        >>This starts an Escort
    .goto Thousand Needles,17.8,40.6
    .accept 4770 >> Accept Homeward Bound
step
    #label Paoka
>>Escort Pao'ka down the mountain.
    .goto Thousand Needles,14.6,32.7
    .complete 4770,1 --Escort Pao'ka from Highperch
step
    .goto Thousand Needles,10.8,34.7
    >>Go back and loot the rest of the eggs
    .complete 4767,1 --Collect Highperch Wyvern Egg (x10)
step
.goto Thousand Needles,21.5,32.3
    .turnin 4865 >> Turn in Serpent Wild
    .accept 5062 >> Accept Sacred Fire
    .turnin 9431 >> Turn in A Different Approach
    .accept 5151 >> Accept Hypercapacitor Gizmo
step
    #sticky
    #completewith steelsnap
 >>Keep an eye out for Steelsnap. He patrols around the zone.
    .complete 1131,1 --Collect Steelsnap's Rib (x1)
step
#sticky
#completewith messenger
>>Find the Galak Messenger that patrols the zone. Kill him and loot his note.
    .collect 12564,1,4881 --Collect Assassination Note (x1)
.accept 4881 >> Accept Assassination Plot
step
>>Open the panther cage and kill him.
    .goto Thousand Needles,23.3,23.3
    .complete 5151,1 --Collect Hypercapacitor Gizmo (x1)
step
    #label steelsnap
>>Use the Robotron Control Unit hiding in the bushes. Walk over to the moonwell and collect the water
.goto Thousand Needles,9.4,18.7,15,0
.goto Feralas,89.6,46.3
    .complete 9433,1 --Collect Thalanaar Moonwell Water (x1)
step
    #label messenger
>>Search for Steelsnap (Hyena). He patrols counter-clockwise
.goto Thousand Needles,10.9,23.2,40,0
    .goto Thousand Needles,17.1,18.4,40,0
    .goto Thousand Needles,18.3,26.8,40,0
    .goto Thousand Needles,15.2,30.5,40,0
    .goto Thousand Needles,18.3,26.8,40,0
    .goto Thousand Needles,17.1,18.4,40,0
.goto Thousand Needles,10.9,23.2,40,0
    .goto Thousand Needles,17.1,18.4,40,0
    .goto Thousand Needles,18.3,26.8,40,0
    .goto Thousand Needles,15.2,30.5,40,0
.complete 1131,1 --Collect Steelsnap's Rib (x1)
step
    .goto Thousand Needles,21.5,32.5
    .turnin 9433 >> Turn in A Dip in the Moonwell
    .accept 9434 >> Accept Testing the Tonic
    .turnin 5151 >> Turn in Hypercapacitor Gizmo
step
>>Search for the Galak Messenger. He starts at a camp, goes on the road, then goes to the other camp
    .goto Thousand Needles,18.4,22.2,40,0
    .goto Thousand Needles,25.2,33.8,40,0
    .goto Thousand Needles,36.0,29.0,40,0
    .goto Thousand Needles,39.6,33.6,40,0
.goto Thousand Needles,36.0,29.0,40,0
    .goto Thousand Needles,25.2,33.8,40,0
    .goto Thousand Needles,18.4,22.2,40,0
    .goto Thousand Needles,25.2,33.8,40,0
    .goto Thousand Needles,36.0,29.0,40,0
    .goto Thousand Needles,39.6,33.6,40,0
    .collect 12564,1,4881 --Collect Assassination Note (x1)
    .accept 4881 >> Accept Assassination Plot
step
    .goto Thousand Needles,37.5,38.4,30,0
    .goto Thousand Needles,33.5,32.4,30,0
    .goto Thousand Needles,37.5,38.4,30,0
    .goto Thousand Needles,33.5,32.4,30,0
    .goto Thousand Needles,37.5,38.4,30,0
    .goto Thousand Needles,33.5,32.4,30,0
    .goto Thousand Needles,37.5,38.4,30,0
    .goto Thousand Needles,33.5,32.4,30,0
    >>Go back and forth in the pool, collecting yellow plants near the edges of the water
    .complete 5062,1 --Collect Incendia Agave (x10)
step
    .hs >> Hearth to Thunder Bluff
step << Druid
    .goto Thunder Bluff,77.0,29.9
.trainer >> Go and train your class spells
step << Hunter
    .goto Thunder Bluff,59.1,86.9
.trainer >> Go and train your class spells
step << Hunter
    .goto Thunder Bluff,54.1,83.9
.trainer >> Go and train your pet spells
step << Warrior
    .goto Thunder Bluff,57.6,85.5
.trainer >> Go and train your class spells
step << Shaman
    .goto Thunder Bluff,22.8,21.0
.trainer >> Go and train your class spells
step << Priest
    .goto Thunder Bluff,24.6,22.6
.trainer >> Go and train your class spells
step << Mage
    .goto Thunder Bluff,25.2,20.9
.trainer >> Go and train your class spells
step
    .goto Thunder Bluff,61.4,80.8
    .turnin 1131 >> Turn in Steelsnap
step
    .goto Thunder Bluff,60.8,81.5
    .accept 1136 >> Accept Frostmaw
step
    .goto Thunder Bluff,69.7,30.9
    .turnin 5062 >> Turn in Sacred Fire
step
    .goto Thunder Bluff,70.1,30.9
    .accept 5088 >> Accept Arikara
step
    .goto Thunder Bluff,46.9,49.4
    .fly >> Fly to Camp Taurajo
step
    .goto The Barrens,44.6,59.2
    .turnin 879 >> Turn in Betrayal from Within
    .accept 906 >> Accept Betrayal from Within
step
    .goto The Barrens,45.1,57.7
    .turnin 893 >> Turn in Weapons of Choice
    .accept 1153 >> Accept A New Ore Sample
step
    .goto The Barrens,44.4,59.1
    .fly >> Fly to Freewind Post
step
    .goto Thousand Needles,44.8,49.0
    .turnin 4767 >> Turn in Wind Rider
step
    .goto Thousand Needles,46.2,50.5
    .turnin 9434 >> Turn in Testing the Tonic
step
    .home >> Set your Hearthstone to Freewind Post
step
    .goto Thousand Needles,54.0,41.4
    .turnin 1150 >> Turn in Test of Endurance
    .accept 1151 >> Accept Test of Strength
step
    #sticky
    #completewith OreSample
>>Kill Kobolds you see whilst doing other quests. Loot them for an Unrefined Ore Sample
    .collect 5842,1 --Collect Unrefined Ore Sample (x1)
step
    >>Kill Rok'Alim The Pounder (Rock Elemental). Loot him for his Fragments
.goto Thousand Needles,21.1,40.6,40,0
    .goto Thousand Needles,9.3,21.0,40,0
.goto Thousand Needles,21.1,40.6,40,0
    .goto Thousand Needles,9.3,21.0,40,0
.goto Thousand Needles,21.1,40.6,40,0
    .goto Thousand Needles,9.3,21.0,40,0
    .complete 1151,1 --Collect Fragments of Rok'Alim (x1)
step
>>Escort will start when you accept next part
.goto Thousand Needles,21.3,32.0
.turnin 4881 >> Turn in Assassination Plot
.accept 4966 >> Accept Protect Kanati Greycloud
step
>>3 mobs will spawn. Let Kanati get aggro, then simply kill them
.goto Thousand Needles,21.4,31.8
    .complete 4966,1 --Protect Kanati Greycloud
    .turnin 4966 >> Turn in Protect Kanati Greycloud
step
.goto Thousand Needles,31.2,36.9,20 >>Run up the path here
step
>>Climb up the mountain and cross the bridges to find the notes. Loot the chests
    .goto Thousand Needles,32.0,32.6
    .complete 5064,1 --Collect Secret Note #1 (x1)
step
    .goto Thousand Needles,33.9,39.9
    .complete 5064,2 --Collect Secret Note #2 (x1)
step
    .goto Thousand Needles,39.3,41.6
    .complete 5064,3 --Collect Secret Note #3 (x1)
step
    >>Clear the mobs around the bonfire, then light it, then kill Arikara. Loot her
.goto Thousand Needles,37.9,35.3
    .complete 5088,1 --Collect Arikara Serpent Skin (x1)
    .complete 5088,2 --Light the Sacred Fire of Life
step
    >>Kill Arnak Grimtotem. Loot him for his Hoof
.goto Thousand Needles,38.6,27.4
    .complete 5147,1 --Collect Arnak's Hoof (x1)
step
    .goto Thousand Needles,38.1,26.6
    .accept 4904 >> Accept Free at Last
step
    >>Follow Lakota and protect her through the whole escort.
    .complete 4904,1 --Escort Lakota Windsong from the Darkcloud Pinnacle.
step
    #label OreSample
.goto Thousand Needles,21.5,32.3
    .turnin 5088 >> Turn in Arikara
step
    >>Kill Kobolds in the area. Loot them for an Unrefined Ore Sample
.goto Thousand Needles,9.2,21.0
    .collect 5842,1 --Collect Unrefined Ore Sample (x1)
step
.goto Feralas,88.9,41.2,30 >>Run to Feralas. We're getting the Flight Path for later
step
    .goto Feralas,75.4,44.3
    .fp >> Get the Camp Mojache flight path
step
    .goto Feralas,75.4,44.4
    .fly >> Fly to Freewind Post
step
    .goto Thousand Needles,45.7,50.8
    .turnin 5064 >> Turn in Grimtotem Spying
    .turnin 5147 >> Turn in Wanted - Arnak Grimtotem
step
    .goto Thousand Needles,46.0,51.5
    .turnin 4904 >> Turn in Free at Last
step
    .goto Thousand Needles,53.9,41.4
    .turnin 1151 >> Turn in Test of Strength
step
    .goto Thousand Needles,77.8,77.3
    .accept 1111 >> Accept Wharfmaster Dizzywig
    .accept 5762 >> Accept Hemet Nesingwary Jr.
step
    .goto Tanaris,51.6,25.4
.abandon 1152 >> Abandon Test of Lore
step
    .goto Tanaris,51.6,25.4
    .fp >> Get the Gadgetzan flight path
step
    .hs >> Hearth to Freewind Post
step
    .goto Thousand Needles,45.1,49.2
    .fly >> Fly to Camp Taurajo
step
.isOnQuest 885
    .goto The Barrens,44.9,59.1
    .turnin 885 >> Turn in Washte Pawne
step
    .isOnQuest 884
    .goto The Barrens,44.9,59.1
    .turnin 884 >> Turn in Owatanka
step
.isOnQuest 883
    .goto The Barrens,44.9,59.1
    .turnin 883 >> Turn in Lakota'mani
step
    .goto The Barrens,45.1,57.7
    .turnin 1153 >> Turn in A New Ore Sample
step
    .goto The Barrens,44.4,59.1
    .fly >> Fly to Crossroads
step
    .goto The Barrens,51.5,30.9
    .turnin 906 >> Turn in Betrayal from Within
    .accept 871 >> Accept Disrupt the Attacks
step
    .goto The Barrens,51.1,29.7
    .accept 1145 >> Accept The Swarm Grows
step << Warrior
    >>Skip Followup
    .goto The Barrens,57.2,30.3
.turnin 1825 >>Turn in Speak with Thun'grim
step << !Warrior
    .goto The Barrens,51.5,30.3
    .fly >> Fly to Ratchet
step << Warrior
.goto The Barrens,63.3,38.4,150 >>Run to Ratchet
step
    .goto The Barrens,63.3,38.4
    .turnin 1111 >> Turn in Wharfmaster Dizzywig
    .accept 1112 >> Accept Parts for Kravel
step << Warrior
    .abandon 1838 >>Abandon Brutal Armor
step
    .goto Ashenvale,73.2,61.5
    .fly >> Fly to Orgrimmar
step << Paladin
    .goto Orgrimmar,32.4,35.8
.trainer >> Go and train your class spells
step << Shaman
    .goto Orgrimmar,38.6,36.0
.trainer >> Go and train your class spells
step << Hunter
    .goto Orgrimmar,66.1,18.5
.trainer >> Go and train your class spells
step << Hunter
    .goto Orgrimmar,66.3,14.8
.trainer >> Go and train your pet spells
step << Warrior
    .goto Orgrimmar,79.7,31.4
    .accept 1718 >>Accept The Islander
.trainer >> Go and train your class spells
step << Rogue
    .goto Orgrimmar,44.0,54.6
.trainer >> Go and train your class spells
step << Warlock
    .goto Orgrimmar,48.0,46.0
.trainer >> Go and train your class spells
step << Warlock
    .goto Orgrimmar,47.5,46.7
.vendor >> Buy Last of Pain Rank 2
step << Mage
    .goto Orgrimmar,38.8,85.6
.trainer >> Go and train your class spells
step << Priest
    .goto Orgrimmar,35.6,87.8
.trainer >> Go and train your class spells
step
    .goto Orgrimmar,75.2,34.2
    .turnin 1145 >> Turn in The Swarm Grows
step
    .goto Orgrimmar,74.7,33.9
    .accept 1146 >> Accept The Swarm Grows
step << Warrior/Shaman
    .goto Orgrimmar,45.1,63.9
    .fly Ratchet >>Fly to Ratchet
step << Warrior/Shaman
.turnin 874 >>Turn in Mahren Skyseer
    .accept 873 >>Accept Isha Awak
step << Shaman
    .goto The Barrens,65.8,43.8
    .turnin 220 >>Turn in Call of Water
    .accept 63 >>Accept Call of Water
step << Warrior/Shaman
.goto The Barrens,65.6,47.1,40,0
        .goto The Barrens,63.3,54.2,40,0
.goto The Barrens,65.6,47.1,40,0
        .goto The Barrens,63.3,54.2,40,0
.goto The Barrens,65.6,47.1,40,0
        .goto The Barrens,63.3,54.2,40,0
.goto The Barrens,65.6,47.1,40,0
        .goto The Barrens,63.3,54.2,40,0
    >>Look in the water for a Isha Awak (Red Threshadon). Kill and loot it for its heart
    .complete 873,1 --Heart of Isha Awak (1)
step << Warrior
    >>Swim to the island
.goto The Barrens,68.6,49.2
    .turnin 1718 >>Turn in The Islander
    .accept 1719 >>Accept The Affray
step << Warrior
    .goto The Barrens,68.6,48.7
    .complete 1719,1 --Step on the grate to begin the Affray (1)
    .complete 1719,2 --Big Will (1)
step << Warrior
    .goto The Barrens,68.6,49.2
    .turnin 1719 >>Turn in The Affray
    .accept 1791 >>Accept The Windwatcher
step << Warrior/Shaman
    .goto The Barrens,65.8,43.8
    .turnin 873 >>Turn in Isha Awak
step << Warrior
    .goto The Barrens,63.1,37.1
    .fly Orgrimmar >>Fly to Orgrimmar
step << Shaman
    .goto Orgrimmar,38.0,37.7
    .accept 1531 >>Accept Call of Air
]])
