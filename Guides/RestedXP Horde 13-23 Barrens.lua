local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end

if GetLocale() == "zhCN" then return end
RXPGuides.RegisterGuide([[
#tbc
#wotlk
<< Horde Warrior/Horde Shaman
#name 13-22 The Barrens
#version 1
#group RestedXP Horde 1-30
#defaultfor Shaman/Warrior
#next 22-25 Hillsbrad / South Barrens;22-25 Hillsbrad Foothills JJ

step << Tauren Shaman
    .goto Durotar,50.8,43.6
.target Takrin Pathseeker
>>Talk to |cRXP_FRIENDLY_Takrin Pathseeker|r
    .accept 840 >>Accept Conscript of the Horde
step << Tauren Shaman
    .isOnQuest 1525
    .goto Durotar,52.8,28.7,25 >> Go into the cave here
step << Tauren Shaman
    >>Kill the Burning Blade Cultists for the Pouch
    .goto Durotar,52.5,26.7
    .complete 1525,2 --Reagent Pouch (1)
step << Tauren Shaman
    .isOnQuest 1525
    .goto Durotar,52.8,28.7,20 >> Leave the cave
step << Tauren Shaman
    .goto The Barrens,62.2,19.4
>>Talk to |cRXP_FRIENDLY_Kargal Battlescar|r
    .turnin 840 >>Turn in Conscript of the Horde
.target Kargal Battlescar
    .accept 842 >>Accept Crossroads Conscription
step << !Tauren
#xprate >1.499
    .goto The Barrens,52.2,31.8
.target Tonga Runetotem
>>Talk to |cRXP_FRIENDLY_Tonga Runetotem|r
    .accept 870 >>Accept The Forgotten Pools
step << !Tauren
#xprate >1.499
    #completewith next
    .goto The Barrens,52.3,32.0
    .vendor >> Purchase as many 6 slot bags as you need
step << !Tauren
#xprate >1.499
    .goto The Barrens,52.2,31.0
>>Talk to |cRXP_FRIENDLY_Sergra Darkthorn|r
    .turnin 842 >>Turn in Crossroads Conscription
.target Sergra Darkthorn
    .accept 844 >>Accept Plainstrider Menace
step << Orc/Troll
#xprate >1.499
    .goto The Barrens,52.5,29.8
.target Zargh
>>Talk to |cRXP_FRIENDLY_Zargh|r
    .accept 6365 >>Accept Meats to Orgrimmar
step << !Tauren
#xprate >1.499
    .goto The Barrens,51.9,30.3
.target Gazrog
>>Talk to |cRXP_FRIENDLY_Gazrog|r
    .accept 869 >>Accept Raptor Thieves
step << !Tauren
#xprate >1.499
    .goto The Barrens,51.5,30.8
.target Thork
>>Talk to |cRXP_FRIENDLY_Thork|r
    .accept 871 >>Accept Disrupt the Attacks
    .accept 5041 >>Accept Supplies for the Crossroads
step << !Tauren
#xprate >1.499
    .goto The Barrens,51.5,30.4
    .fp >>Get the The Crossroads Flight Path
step << Orc/Troll
#xprate >1.499
    >>do NOT fly to Orgrimmar
.goto The Barrens,51.5,30.3
>>Talk to |cRXP_FRIENDLY_Devrak|r
    .turnin 6365 >>Turn in Meats to Orgrimmar
.target Devrak
    .accept 6384 >>Accept Ride to Orgrimmar
step << !Tauren
#xprate >1.499
.goto The Barrens,51.5,30.1
.target Apothecary Helbrim
>>Talk to |cRXP_FRIENDLY_Apothecary Helbrim|r
    .accept 1492 >>Accept Wharfmaster Dizzywig
        .accept 848 >>Accept Fungal Spores
step << Warrior
    .isOnQuest 1502
    .goto The Barrens,57.9,25.5,30 >>Run up the mountain here
step << Warrior
    >>Go to the top of the mountain
    .goto The Barrens,57.2,30.3
>>Talk to |cRXP_FRIENDLY_Thun'grim Firegaze|r
    .turnin 1502 >>Turn in Thun'grim Firegaze
.target Thun'grim Firegaze
    .accept 1503 >>Accept Forged Steel
step << Warrior
    #sticky
    #completewith next
    .goto The Barrens,55.6,26.6
    >>Kill Quillboars in the area
    .complete 871,2 --Razormane Thornweaver (8)
    .complete 871,1 --Razormane Water Seeker (8)
    .complete 871,3 --Razormane Hunter (3)
step << Warrior
    #label Steel
    >>Loot the gray chest for Forged Steel Bars
    .goto The Barrens,55.0,26.7
    .complete 1503,1 --Forged Steel Bars (1)
step << Warrior
    #sticky
    #completewith next
    #requires Steel
    >>Kill some Plainstriders en route. Loot them for Beaks << !Tauren
    .complete 844,1 << !Tauren --Plainstrider Beak (7)
    .goto The Barrens,54.7,28.0,20 >>Run up the mountain here
step << Warrior
    #requires Steel
.goto The Barrens,57.2,30.3
.target Thun'grim Firegaze
>>Talk to |cRXP_FRIENDLY_Thun'grim Firegaze|r
    .turnin 1503 >>Turn in Forged Steel
step << Shaman
    #sticky
    >>Kill and Loot Razormanes for Fire Tar
    .complete 1525,1 --Fire Tar (1)
step
    #sticky
    #completewith next
    >>Check this location for Chen's Empty Keg. Loot it and start the quest. Otherwise you'll get it later on.
    .goto The Barrens,55.7,27.3,15,0
    .collect 4926,1,819,1 --Collect Chen's Empty Keg
    .accept 819 >> Accept Chen's Empty Keg
    .use 4926
--Add invisible automatic waypoint so user doesnt have to manually click it if it isnt there
step
    .goto The Barrens,55.6,26.6
    >>Kill Quillboars in the area
    .complete 871,2 --Razormane Thornweaver (8)
    .complete 871,1 --Razormane Water Seeker (8)
    .complete 871,3 --Razormane Hunter (3)
step << !Tauren
    #completewith next
    .goto The Barrens,62.4,20.0
    .cooldown item,4986,<5m >>Delete your Flawed Power Stone then go back and loot the Purple Stone next to Ak'Zeloth again.
step << !Tauren
    .goto The Barrens,62.4,20.0
        .turnin 926 >>Turn in Flawed Power Stone
step << !Tauren
    #sticky
#completewith BeakCave
>>Kill some Plainstriders en route if you have time on Flawed Power Stone. Loot them for Beaks
    .complete 844,1 --Plainstrider Beak (7)
step << !Tauren
    .isOnQuest 924
.goto The Barrens,50.4,22.0,50 >>Run up the mountain here
step << !Tauren
    .isOnQuest 924
    #label BeakCave
.goto The Barrens,47.6,19.2,30 >>Go to the cave surrounded by Burning Blade orcs
step << !Tauren
    >>Right click the Altar
.goto The Barrens,48.0,19.1
.collect 4986,1,924 --Collect Flawed Power Stone
    .complete 924,1 --Destroy the Demon Seed (1)
step
    #sticky
    #completewith next
    >>Kill Raptors that you see. Loot them for some Raptor Heads - you'll get more later
    .complete 869,1 --Raptor Head (12)
step << !Tauren
    >>Kill Plainstriders. Loot them for Beaks
.goto The Barrens,50.8,32.1
    .complete 844,1 --Plainstrider Beak (7)
step << Tauren
    .goto The Barrens,55.7,24.0,40,0
    .goto The Barrens,53.8,23.1,40,0
        .goto The Barrens,52.1,21.1,40,0
    .goto The Barrens,51.3,22.9,40,0
    .goto The Barrens,48.3,23.5,40,0
    .goto The Barrens,49.8,31.2
    >>Kill Plainstriders. Loot them for Beaks
    .complete 844,1 --Plainstrider Beak (7)
step
    >>Top of the tower
.goto The Barrens,51.5,30.9
>>Talk to |cRXP_FRIENDLY_Thork|r
    .turnin 871 >>Turn in Disrupt the Attacks
.target Thork
    .accept 872 >>Accept The Disruption Ends
.target Darsok Swiftdagger
>>Talk to |cRXP_FRIENDLY_Darsok Swiftdagger|r
    .accept 867 >>Accept Harpy Raiders
step
    .goto The Barrens,52.2,31.0
>>Talk to |cRXP_FRIENDLY_Sergra Darkthorn|r
    .turnin 844 >>Turn in Plainstrider Menace
.target Sergra Darkthorn
    .accept 845 >>Accept The Zhevra
step << Tauren Shaman
    .goto The Barrens,52.2,31.0
.target Sergra Darkthorn
>>Talk to |cRXP_FRIENDLY_Sergra Darkthorn|r
    .turnin 842 >>Turn in Crossroads Conscription
step
    .goto The Barrens,52.0,29.9
    .home >> Set your Hearthstone to the Crossroads
step << !Hunter !Rogue !Warlock !Mage !Priest
     #sticky
    #completewith next
    .money <0.75
    >> Check if Lizzarik (Goblin Merchant) is in the Crossroads. If he is, buy potions and a Heavy Spiked Mace.
    .unitscan Lizzarik
    .goto The Barrens,52.5,30.7,20,0
.collect 4778,1 --Collect Heavy Spiked Mace
step << Orc/Troll
#xprate <1.5
    .goto The Barrens,52.6,29.9
.target Zargh
>>Talk to |cRXP_FRIENDLY_Zargh|r
    .turnin 6386 >>Turn in Return to the Crossroads.
step
    .isOnQuest 872
    .goto The Barrens,57.1,25.3,250 >> Run to here
step
    #sticky
    #completewith Crates
    >>Kill Razormanes while getting the Crates and killing Kreenig
    .complete 872,1 --Razormane Geomancer (8)
    .complete 872,2 --Razormane Defender (8)
step
    #sticky
    #completewith Kreenig
>>Loot the Supply Crates found in the area
    .complete 5041,1 --Crossroads' Supply Crates (1)
step
    #label Kreenig
>>Kill Kreenig Snarlsnout. Loot him for his Tusk
.goto The Barrens,58.6,27.1
    .complete 872,3 --Kreenig Snarlsnout's Tusk (1)
    .unitscan Kreenig Snarlsnout
step
#label Crates
>>Loot the crates found in the area
.goto The Barrens,58.5,27.3,40,0
    .goto The Barrens,58.4,27.0,40,0
    .goto The Barrens,58.5,25.8,40,0
    .goto The Barrens,59.4,24.8
    .complete 5041,1 --Crossroads' Supply Crates (1)
step
.goto The Barrens,56.7,25.3
    >>Finish killing the Razormanes
    .complete 872,1 --Razormane Geomancer (8)
    .complete 872,2 --Razormane Defender (8)
step << Warrior
    >> Loot the Keg here. Wait for the respawn if it's not up.
.goto The Barrens,55.8,20.0
.collect 4926,1,819 --Collect Chen's Empty Keg
.accept 819 >> Accept Chen's Empty Keg
step << !Tauren !Undead
    #sticky
    #completewith next
    >>Kill any Zhevras you see. Loot them for Hooves
    .complete 845,1 --Zhevra Hooves (4)
step << Tauren Warrior
    .goto The Barrens,56.7,19.8,60 >> Run to here, grinding mobs en route
step << !Tauren !Undead
    .goto The Barrens,62.3,20.1
.target Ak'Zeloth
>>Talk to |cRXP_FRIENDLY_Ak'Zeloth|r
    .turnin 924 >>Turn in The Demon Seed
step << Shaman
    .goto Durotar,38.5,58.9
>>Talk to |cRXP_FRIENDLY_Telf Joolam|r
    .turnin 1525 >>Turn in Call of Fire
.target Telf Joolam
    .accept 1526 >>Accept Call of Fire
step << Shaman
    .use 6636 >>Run to the top of the mountain. Use the Fire Sapta to see and kill fire elementals. Loot them then click the Brazier
.goto Durotar,39.0,58.2
    .complete 1526,1 --Glowing Ember (1)
step << Shaman
    .goto Durotar,38.9,58.2
    .turnin 1526 >>Turn in Call of Fire
    .accept 1527 >>Accept Call of Fire
step << Shaman
    #sticky
    #completewith next
    >>Kill any Zhevras you see. Loot them for Hooves
    .complete 845,1 --Zhevra Hooves (4)
step << Shaman
    .goto The Barrens,55.9,19.9
.target Kranal Fiss
>>Talk to |cRXP_FRIENDLY_Kranal Fiss|r
    .turnin 1527 >>Turn in Call of Fire
step << Shaman
     >> Loot the Keg here. Wait for the respawn if it's not up.
    .goto The Barrens,55.8,20.0
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >> Accept Chen's Empty Keg
step
    >>Kill any Zhevras you see. Loot them for Hooves. Make sure you have 4 before entering Ratchet
    .goto The Barrens,63.9,35.8
    .complete 845,1 --Zhevra Hooves (4)
step
    >>Head south to Ratchet grinding en route. Go to the top floor of the building
    .goto The Barrens,62.7,36.3
.target Gazlowe
>>Talk to |cRXP_FRIENDLY_Gazlowe|r
    .accept 887 >>Accept Southsea Freebooters
step
    .goto The Barrens,63.1,37.1
    #completewith ratchetfp
    .fp Ratchet >>Get the Ratchet Flight Path
step
    .goto The Barrens,63.0,37.2
.target Sputtervalve
>>Talk to |cRXP_FRIENDLY_Sputtervalve|r
    .accept 894 >>Accept Samophlange
step
    #xprate <1.5
    .maxlevel 16
    .goto The Barrens,63.086,37.607
.target Crane Operator Bigglefuzz
>>Talk to |cRXP_FRIENDLY_Crane Operator Bigglefuzz|r
    .accept 959 >>Accept Trouble at the Docks
step
    .goto The Barrens,63.3,38.4
>>Talk to |cRXP_FRIENDLY_Wharfmaster Dizzywig|r
    .turnin 1492 >>Turn in Wharfmaster Dizzywig
.target Wharfmaster Dizzywig
    .accept 896 >>Accept Miner's Fortune
step
    >>Click the Wanted poster. You can bank here too if you want
    .goto The Barrens,62.6,37.5
    .accept 895 >>Accept WANTED: Baron Longshore
step
    .goto The Barrens,62.4,37.7
.target Mebok Mizzyrix
>>Talk to |cRXP_FRIENDLY_Mebok Mizzyrix|r
    .accept 865 >>Accept Raptor Horns
step
    .goto The Barrens,62.3,38.4
>>Talk to |cRXP_FRIENDLY_Brewmaster Drohn|r
    .turnin 819 >>Turn in Chen's Empty Keg
.target Brewmaster Drohn
    .accept 821 >>Accept Chen's Empty Keg
step
    #label rachetfp
    .goto The Barrens,62.05,39.41
    >> The level 5 fish food here is super cheap, stock up << Warrior/Rogue
    .vendor >> Restock on food/water
step
    #sticky
    #completewith next
    >>Kill Southsea mobs in the area
    .complete 887,1 --Southsea Brigand (12)
    .complete 887,2 --Southsea Cannoneer (6)
step
    .goto The Barrens,64.2,47.1,40,0
    .goto The Barrens,63.6,49.1,40,0
    .goto The Barrens,62.6,49.7,40,0
    .goto The Barrens,64.2,47.1,40,0
    .goto The Barrens,63.6,49.1,40,0
    .goto The Barrens,62.6,49.7,40,0
    .goto The Barrens,64.2,47.1,40,0
    .goto The Barrens,63.6,49.1,40,0
    .goto The Barrens,62.6,49.7
    >>Find and kill Baron Longshore at one of the camps. Loot him for his Head
    .complete 895,1 --Baron Longshore's Head (1)
    .unitscan Baron Longshore
step
    >>Finish killing the Southsea mobs
    .goto The Barrens,64.2,47.1,40,0
    .goto The Barrens,63.6,49.1,40,0
    .goto The Barrens,62.6,49.7,40,0
    .goto The Barrens,64.2,47.1,40,0
    .goto The Barrens,63.6,49.1,40,0
    .goto The Barrens,62.6,49.7,40,0
    .goto The Barrens,64.2,47.1,40,0
    .goto The Barrens,63.6,49.1,40,0
    .goto The Barrens,62.6,49.7
    .complete 887,1 --Southsea Brigand (12)
    .complete 887,2 --Southsea Cannoneer (6)
step << Druid
    >>Teleport to Moonglade
    .goto Moonglade,52.4,40.6
    .trainer 12042 >> Train spells
step
    #completewith next
    .hs >>Hearth to Crossroads
    .cooldown item,6948,>0
step
    .goto The Barrens,51.5,30.8
.target Thork
>>Talk to |cRXP_FRIENDLY_Thork|r
    .turnin 5041 >>Turn in Supplies for the Crossroads
    .turnin 872 >>Turn in The Disruption Ends
step
    .goto The Barrens,52.0,31.6
.target Mankrik
>>Talk to |cRXP_FRIENDLY_Mankrik|r
    .accept 899 >>Accept Consumed by Hatred
    .accept 4921 >>Accept Lost in Battle
step
    .goto The Barrens,52.2,31.0
>>Talk to |cRXP_FRIENDLY_Sergra Darkthorn|r
    .turnin 845 >>Turn in The Zhevra
.target Sergra Darkthorn
    .accept 903 >>Accept Prowlers of the Barrens
step
    #sticky
    #completewith next
>>Kill Plainstriders. Loot them for their Kidneys
    .complete 821,2 --Plainstrider Kidney (5)
step
    .goto The Barrens,45.4,28.4
.target Regthar Deathgate
>>Talk to |cRXP_FRIENDLY_Regthar Deathgate|r
    .accept 850 >>Accept Kolkar Leaders
step << !Tauren
#xprate >1.499
    #sticky
    #completewith next
    >>Collect the white mushrooms around The Forgotten Pools. Try to avoid mobs the best you can.
.complete 848,1 --Collect Fungal Spores (x4)
step << !Tauren
#xprate >1.499
>>Dive underwater to the bubble fissure
.goto The Barrens,45.1,22.5
    .complete 870,1 --Explore the waters of the Forgotten Pools
step << !Tauren
#xprate >1.499
>>Collect the white mushrooms around The Forgotten Pools. Try to avoid mobs the best you can.
.goto The Barrens,45.2,23.3,40,0
.goto The Barrens,45.2,22.0,40,0
    .goto The Barrens,44.6,22.5,40,0
    .goto The Barrens,43.9,24.4,40,0
.complete 848,1 --Collect Fungal Spores (x4)
step
>>Kill Kodobane. Loot him for his head. Grind mobs en route.
.goto The Barrens,42.8,23.5
    .complete 850,1 --Kodobane's Head (1)
step
    #sticky
    #completewith Claws
    >>Kill Raptors that you see. Loot them for some Raptor Heads - don't orry about finishing you'll get more later
    .complete 869,1 --Raptor Head (12)
step
    #sticky
    #completewith Claws
    #label Tusks
.goto The Barrens,41.4,24.5,40,0
    .goto The Barrens,40.4,20.0,40,0
.goto The Barrens,41.4,24.5,40,0
    .goto The Barrens,40.4,20.0
    .complete 821,1 --Savannah Lion Tusk (5)
step
    #label Claws
>>Kill Prowlers. Loot them for their Claws and Tusks
.goto The Barrens,41.4,24.5
    .complete 903,1 --Prowler Claws (7)
step
#hidewindow
    #requires Claws
step
    #requires Tusks
.goto The Barrens,40.2,18.9,40,0
    .goto The Barrens,40.7,14.6,40,0
    .goto The Barrens,42.6,15.1,40,0
.goto The Barrens,40.2,18.9,40,0
    .goto The Barrens,40.7,14.6,40,0
    .goto The Barrens,42.6,15.1
    >>Kill Harpies. Loot them for their Talons
    .complete 867,1 --Witchwing Talon (8)
step
    >>Kill Plainstriders and Raptors
    .complete 821,2 --Plainstrider Kidney (5)
    .complete 865,1,3 --Intact Raptor Horn (5)
    .complete 869,1 --Raptor Head (12)
--NEEDS WAYPOINTS. Don't use &, use "and" (can always discuss and we can find and replace one or the other). Remove "in the area" from now on
step
    >>Click on the Control Console
    .goto The Barrens,52.4,11.6
    .turnin 894 >>Turn in Samophlange
    .accept 900 >>Accept Samophlange
step
    >>Click the Valve
.goto The Barrens,52.4,11.4
    .complete 900,2 --Shut off Fuel Control Valve (1)
step
    >>Click the Valve. Mobs will spawn
.goto The Barrens,52.3,11.4
    .complete 900,3 --Shut off Regulator Valve (1)
step
    >>Click the Valve. Mobs will spawn
    .goto The Barrens,52.3,11.6
    .complete 900,1 --Shut off Main Control Valve (1)
step
    >>Click on the Control Console
.goto The Barrens,52.4,11.6
    .turnin 900 >>Turn in Samophlange
    .accept 901 >>Accept Samophlange
step
    >>Kill Tinkerer Sniggles in the building. Loot him for the Console Key
.goto The Barrens,52.8,10.4
    .complete 901,1 --Console Key (1)
    .unitscan Tinkerer Sniggles
step
    .goto The Barrens,52.4,11.6
    .turnin 901 >>Turn in Samophlange
    .accept 902 >>Accept Samophlange
step
    >>Accept Ignition from the Shredder. If someone recently started the escort you'll need to wait for him to respawn.
.goto The Barrens,56.5,7.5
.target Wizzlecrank's Shredder
>>Talk to |cRXP_FRIENDLY_Wizzlecrank's Shredder|r
    .accept 858 >>Accept Ignition
step
    >>Kill Supervisor Lugwizzle (he patrols all over the tower). Loot him for the Ignition Key
.goto The Barrens,56.3,8.6
    .complete 858,1 --Ignition Key (1)
    .unitscan Supervisor Lugwizzle
step
    >>This will begin an escort. Start it when ready.
.goto The Barrens,56.5,7.5
>>Talk to |cRXP_FRIENDLY_Wizzlecrank's Shredder|r
    .turnin 858 >>Turn in Ignition
.target Wizzlecrank's Shredder
    .accept 863 >>Accept The Escape
step
    #label Slugs
>>2 Mobs will spawn at some point. Kill them then wait for his roleplay event at the end. The roleplay takes roughly 20 seconds.
.goto The Barrens,55.3,7.8
    .complete 863,1 --Escort Wizzlecrank out of the Venture Co. drill site (1)
step
    .goto The Barrens,55.8,6.2,40,0
    .goto The Barrens,57.2,6.6,40,0
    .goto The Barrens,60.0,7.6,40,0
    .goto The Barrens,60.8,10.6,40,0
    .goto The Barrens,60.4,1.2,40,0
    .goto The Barrens,61.2,13.2
    >>Kill Plainstriders. Loot them for their Kidneys
    >>Kill Raptors. Loot them for their Horns and Heads
    *They both share respawns
    .complete 821,2 --Plainstrider Kidney (5)
    .complete 865,1 --Intact Raptor Horn (5)
    .complete 869,1 --Raptor Head (12)
step
    >>Grind mobs in the area. Loot them until Cats Eye Emerald drops
.goto The Barrens,61.5,4.3
    .complete 896,1 -- Cats Eye Emerald (1)
step
    #completewith next
    .goto Orgrimmar,11.5,67.0,50 >>Run to the west entrance of Orgrimmar
step << Orc/Troll
#xprate >1.499
    .goto Orgrimmar,54.2,68.6
>>Talk to |cRXP_FRIENDLY_Innkeeper Gryshka|r
    .turnin 6384 >>Turn in Ride to Orgrimmar
.target Innkeeper Gryshka
    .accept 6385 >>Accept Doras the Wind Rider Master
step << Orc/Troll
#xprate >1.499
    .goto Orgrimmar,45.120,63.889
     >> Turn in the quests but do NOT fly back to The Crossroads
>>Talk to |cRXP_FRIENDLY_Doras|r
    .turnin 6385 >>Turn in Doras the Wind Rider Master
.target Doras
    .accept 6386 >>Accept Return to the Crossroads.
step << Tauren/Undead/BloodElf
    #completewith next
    >>Run to the Flight Master tower. Get the Flight Path
    .goto Orgrimmar,45.120,63.889
    .fp Orgrimmar >>Get the Orgrimmar Flight Path
step
    >>Hug the left side. Run to Grommash Hold
.goto Orgrimmar,39.1,38.1
.target Zor Lonetree
>>Talk to |cRXP_FRIENDLY_Zor Lonetree|r
    .accept 1061 >>Accept The Spirits of Stonetalon
step << Paladin
    #completewith next
    .goto Orgrimmar,32.272,35.794
    .trainer >> Go and train your class spells
step << Shaman
    .goto Orgrimmar,38.8,36.4
.train 8045 >> Train Earth Shock r3
.train 8019 >> Train Rockbiter Weapon r3
.train 325 >> Train Lightning Shield r2
.train 526 >> Train Cure Poison
.train 8154 >>Train Stoneskin Totem r2
step << Shaman
.goto Orgrimmar,31.62,37.82
.target Thrall
>>Talk to |cRXP_FRIENDLY_Thrall|r
    .turnin 5727 >>Turn in Hidden Enemies
step << Warrior
    .goto Orgrimmar,80.391,32.384
    .train 1160 >> Train Demoralizing Shout r1
    .train 285 >> Train Heroic Strike r3
step
    #completewith next
    .hs >>Hearth to Crossroads
    .cooldown item,6948,>0
step
    .goto The Barrens,51.9,30.3
>>Talk to |cRXP_FRIENDLY_Gazrog|r
    .turnin 869 >>Turn in Raptor Thieves
.target Gazrog
    .accept 3281 >>Accept Stolen Silver
step << !Tauren
#xprate >1.499
    .goto The Barrens,51.5,30.1
.target Apothecary Helbrim
>>Talk to |cRXP_FRIENDLY_Apothecary Helbrim|r
    .turnin 848 >>Turn in Fungal Spores
step
    >>Top of the tower
.goto The Barrens,51.6,30.9
.target Darsok Swiftdagger
>>Talk to |cRXP_FRIENDLY_Darsok Swiftdagger|r
    .turnin 867 >>Turn in Harpy Raiders
step
#xprate <1.5
    .maxlevel 17
    .goto The Barrens,51.6,30.9
.target Darsok Swiftdagger
>>Talk to |cRXP_FRIENDLY_Darsok Swiftdagger|r
    .accept 875 >>Accept Harpy Lieutenants
step << !Tauren
#xprate >1.499
    .goto The Barrens,52.2,31.8
>>Talk to |cRXP_FRIENDLY_Tonga Runetotem|r
    .turnin 870 >>Turn in The Forgotten Pools
.target Tonga Runetotem
    .accept 877 >>Accept The Stagnant Oasis
step
    .goto The Barrens,52.3,31.0
>>Talk to |cRXP_FRIENDLY_Sergra Darkthorn|r
    .turnin 903 >>Turn in Prowlers of the Barrens
.target Sergra Darkthorn
    .accept 881 >>Accept Echeyakee
step << Orc/Troll
#xprate >1.499
    .goto The Barrens,52.6,29.9
.target Zargh
>>Talk to |cRXP_FRIENDLY_Zargh|r
    .turnin 6386 >>Turn in Return to the Crossroads.
step
#xprate <1.5
    .isOnQuest 875
.goto The Barrens,39.8,17.3,40,0
    .goto The Barrens,37.4,15.8,40,0
    .goto The Barrens,40.3,15.2,40,0
.goto The Barrens,39.8,17.3,40,0
    .goto The Barrens,37.4,15.8,40,0
    .goto The Barrens,40.3,15.2,40,0
.goto The Barrens,39.8,17.3,40,0
    .goto The Barrens,37.4,15.8,40,0
    .goto The Barrens,40.3,15.2
    >>Kill Witchwing Slayers. Loot them for Harpy Lieutenant Rings
    .complete 875,1 --Harpy Lieutenant Ring (6)
step
    #label LionTusks
.goto The Barrens,54.3,14.7
    >>Kill Savannah Prowlers in the area. Loot them for their tusks
    .complete 821,1 --Savannah Lion Tusk (5)
step
    .use 10327 >>Use the Horn of Echeyakee in your bags to summon Echeyakee. Kill him and loot him for his hide
.goto The Barrens,55.5,17.3
    .complete 881,1 --Echeyakee's Hide (1)
step
    >> Head back to the Crossroads
    .goto The Barrens,52.2,31.0
>>Talk to |cRXP_FRIENDLY_Sergra Darkthorn|r
    .turnin 881 >>Turn in Echeyakee
.target Sergra Darkthorn
    .accept 905 >>Accept The Angry Scytheclaws
step
#xprate <1.5
    .isOnQuest 875
    >>Top of the tower
.goto The Barrens,51.6,30.9
>>Talk to |cRXP_FRIENDLY_Darsok Swiftdagger|r
    .turnin 875 >>Turn in Harpy Lieutenants
.target Darsok Swiftdagger
    .accept 876 >>Accept Serena Bloodfeather
step
    #completewith next
    .goto The Barrens,51.5,30.3
    .fly Ratchet >> Fly to Ratchet
step
    >> Head to Ratchet
    .goto The Barrens,63.0,37.2
>>Talk to |cRXP_FRIENDLY_Sputtervalve|r
    .turnin 902 >>Turn in Samophlange
    .turnin 863 >>Turn in The Escape
.target Sputtervalve
    .accept 1483 >>Accept Ziz Fizziks
step
    .goto The Barrens,62.7,36.3
>>Talk to |cRXP_FRIENDLY_Gazlowe|r
    .turnin 887 >>Turn in Southsea Freebooters
.target Gazlowe
    .accept 890 >>Accept The Missing Shipment
    .turnin 895 >>Turn in WANTED: Baron Longshore
step
    .goto The Barrens,63.3,38.4
>>Talk to |cRXP_FRIENDLY_Wharfmaster Dizzywig|r
    .turnin 896 >>Turn in Miner's Fortune
    .turnin 890 >>Turn in The Missing Shipment
.target Wharfmaster Dizzywig
    .accept 892 >>Accept The Missing Shipment
step
    .goto The Barrens,62.7,36.3
>>Talk to |cRXP_FRIENDLY_Gazlowe|r
    .turnin 892 >>Turn in The Missing Shipment
.target Gazlowe
    .accept 888 >>Accept Stolen Booty
step
    .goto The Barrens,62.4,37.6
.target Mebok Mizzyrix
>>Talk to |cRXP_FRIENDLY_Mebok Mizzyrix|r
    .accept 1069 >>Accept Deepmoss Spider Eggs
    .turnin 865 >>Turn in Raptor Horns
    .accept 1491 >>Accept Smart Drinks
step
    >>Loot the crate
.goto The Barrens,63.6,49.2
    .complete 888,2 --Telescopic Lens (1)
step
    >>Loot the crate
.goto The Barrens,62.6,49.6
    .complete 888,1 --Shipment of Boots (1)
step
    .isOnQuest 865
.goto The Barrens,57.4,52.4,50 >>Grind en route to the Raptor Grounds
step
    #sticky
    #completewith Nest
    >>Kill any raptor you see. Loot them for their Horns and Feathers. You need 3 feathers before leaving
    *Be careful as the raptors have a thrash ability.
    .collect 5165,3 --Sunscale Feather (3)
step
    >>Loot the chest for Stolen Silver
    .goto The Barrens,58.0,53.9
    .complete 3281,1 --Stolen Silver (1)
step
    >>Click the Bubble Fissure underwater
    .goto The Barrens,55.6,42.7
    .complete 877,1 --Test the Dried Seeds (1)
step
    #sticky
    #label nestegg
    >>Collect 3 Sunscale Feathers for the three Raptor Nests
    .collect 5165,3,905,0x3,-1
step
    >>Click the egg. You need a Sunscale Feather from the raptors
    .goto The Barrens,52.6,46.2
    .complete 905,1 --Visit Blue Raptor Nest (1)
step
    >>Click the egg. You need a Sunscale Feather from the raptors
    .goto The Barrens,52.5,46.6
    .complete 905,3 --Visit Red Raptor Nest (1)
step
    #label Nest
    >>Click the egg. You need a Sunscale Feather from the raptors
    .goto The Barrens,52.0,46.5
    .complete 905,2 --Visit Yellow Raptor Nest (1)
step
    >>Talk to Mankrik's Wife
.goto The Barrens,49.3,50.4
    .complete 4921,1 --Find Mankrik's Wife (1)
    .skipgossip
step << Shaman/Warrior
    #xprate >1.4999
    .goto The Barrens,45.10,57.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tatternack|r
    .accept 893 >>Accept Weapons of Choice
    .target Tatternack Steelforge
step
    .goto The Barrens,45.6,59.0
    #completewith next
    .home >>Set your Hearthstone to Camp Taurajo
step
    .goto The Barrens,45.6,59.0
    .vendor >> Restock on food/water, theres a tough questing segment ahead
step
    .goto The Barrens,44.5,59.2
.target Mangletooth
>>Talk to |cRXP_FRIENDLY_Mangletooth|r
    .accept 878 >>Accept Tribes at War
step
    .goto The Barrens,44.5,59.2
    #completewith next
    .fly Crossroads >>Fly to Crossroads
step
    .goto The Barrens,51.9,30.3
.target Gazrog
>>Talk to |cRXP_FRIENDLY_Gazrog|r
    .turnin 3281 >>Turn in Stolen Silver
step
    .goto The Barrens,52.2,31.0
>>Talk to |cRXP_FRIENDLY_Sergra Darkthorn|r
    .turnin 905 >>Turn in The Angry Scytheclaws
.target Sergra Darkthorn
    .accept 3261 >>Accept Jorn Skyseer
step
    .goto The Barrens,52.2,31.9
>>Talk to |cRXP_FRIENDLY_Tonga Runetotem|r
    .turnin 877 >>Turn in The Stagnant Oasis
.target Tonga Runetotem
    .accept 880 >>Accept Altered Beings
step
    .goto The Barrens,52.0,31.6
.target Mankrik
>>Talk to |cRXP_FRIENDLY_Mankrik|r
    .turnin 4921 >>Turn in Lost in Battle
step
    .goto The Barrens,46.1,36.7,35 >>Go into the WC cave.
    .isOnQuest 959
step
    .goto Kalimdor,52.0,55.4,20,0
    .goto Kalimdor,52.2,55.2,35,0
    .goto Kalimdor,51.8,54.8,20,0
    .goto Kalimdor,52.0,55.4,20,0
    .goto Kalimdor,52.2,55.2,35,0
    .goto Kalimdor,51.8,54.8,20,0
    .goto Kalimdor,52.0,55.4,20,0
    .goto Kalimdor,52.2,55.2,35,0
    .goto Kalimdor,51.8,54.8,20,0
    .goto Kalimdor,52.0,55.4,20,0
    .goto Kalimdor,52.2,55.2,35,0
    .goto Kalimdor,51.8,54.8,20,0
    .goto Kalimdor,52.2,55.2
    >>Look for Mad Magglish (a goblin). He's stealthed, and has multiple spawnpoints. Kill and loot him for 99-Year-Old Port
    .complete 959,1 --Collect 99-Year-Old Port (1)
    .unitscan Mad Magglish
    .isOnQuest 959
step
    .goto Kalimdor,51.9,54.9,20 >>Enter the deeper part of the cave
    .isOnQuest 1491
step
    .goto Kalimdor,52.1,54.5,30,0
    .goto Kalimdor,52.3,54.6,30,0
    .goto Kalimdor,52.4,55.1,30,0
    .goto Kalimdor,52.8,54.8,30,0
    .goto Kalimdor,52.6,54.5,30,0
    .goto Kalimdor,52.1,54.5,30,0
    .goto Kalimdor,52.3,54.6,30,0
    .goto Kalimdor,52.4,55.1,30,0
    .goto Kalimdor,52.8,54.8,30,0
    .goto Kalimdor,52.6,54.5,30,0
    .goto Kalimdor,52.1,54.5,30,0
    .goto Kalimdor,52.3,54.6,30,0
    .goto Kalimdor,52.4,55.1,30,0
    .goto Kalimdor,52.8,54.8,30,0
    .goto Kalimdor,52.6,54.5,30,0
	.goto Kalimdor,52.6,54.5
    >>Kill Ectoplasms for Wailing Essences. Keep an eye out for the 2 rares in the deeper part of the cave (Trigore and Boahn), as they can drop blue BoE weapons.
    .complete 1491,1 --Wailing Essence (6)
    .unitscan Trigore the Lasher
    .unitscan Boahn
    .isOnQuest 1491
step
    >> Head back to the Kolkar outpost
    .goto The Barrens,45.4,28.4
.target Regthar Deathgate
>>Talk to |cRXP_FRIENDLY_Regthar Deathgate|r
    .turnin 850 >> Turn in Kolkar Leaders
    .isOnQuest 850
step
#xprate <1.5
    >>Kill Serena Bloodfeather. Loot her for her Head
.goto The Barrens,39.2,12.2
    .complete 876,1 --Serena's Head (1)
step
    .goto The Barrens,35.3,27.9
    >> Head towards Stonetalon Mountains
    .isOnQuest 1061
.target Seereth Stonebreak
>>Talk to |cRXP_FRIENDLY_Seereth Stonebreak|r
    .turnin 1061 >> Turn in The Spirits of Stonetalon
step
    .goto The Barrens,35.3,27.9
.target Seereth Stonebreak
>>Talk to |cRXP_FRIENDLY_Seereth Stonebreak|r
    .accept 1062 >> Accept Goblin Invaders
step
    .maxlevel 22
    .goto The Barrens,35.3,27.9
    >> Head towards Stonetalon Mountains
.target Makaba Flathoof
>>Talk to |cRXP_FRIENDLY_Makaba Flathoof|r
    .accept 6548 >> Accept Avenge My Village
step
    .isOnQuest 6548
    .goto Stonetalon Mountains,80.7,89.2,50,0
    .goto Stonetalon Mountains,82.0,86.0,50,0
    .goto Stonetalon Mountains,84.7,84.3,50,0
    .goto Stonetalon Mountains,82.3,90.0,50,0
    .goto Stonetalon Mountains,80.7,89.2,50,0
    .goto Stonetalon Mountains,82.0,86.0,50,0
    .goto Stonetalon Mountains,84.7,84.3,50,0
    .goto Stonetalon Mountains,82.3,90.0
    >>Kill Grimtotems in the area
    .complete 6548,2 --Kill Grimtotem Mercenary (x6)
    .complete 6548,1 --Kill Grimtotem Ruffian (x8)
step
    .isOnQuest 6548
    .goto The Barrens,35.191,27.791
    >> Head back to the quest giver in The Barrens
>>Talk to |cRXP_FRIENDLY_Makaba Flathoof|r
    .turnin 6548 >> Turn in Avenge My Village
.target Makaba Flathoof
    .accept 6629 >> Accept Kill Grundig Darkcloud
step
.goto Stonetalon Mountains,82.3,98.5,40 >>Run up to the mountain here
step
    .goto Stonetalon Mountains,71.4,95.1
.target Xen'Zilla
>>Talk to |cRXP_FRIENDLY_Xen'Zilla|r
    .accept 6461 >> Accept Blood Feeders
step
    #sticky
    #completewith next
    .isOnQuest 6629
    .goto Stonetalon Mountains,71.7,86.7,40 >>Run to the path here
step
    .isOnQuest 6629
    >>Make sure you kill all 6 brutes before starting the quest inside. Kill Grundig in front of the main tent
    .goto Stonetalon Mountains,74.0,86.2
    .complete 6629,1 --Kill Grundig Darkcloud (x1)
    .complete 6629,2 --Kill Grimtotem Brute (x6)
step
    >>Start the Kaya Escort
    .goto Stonetalon Mountains,73.5,85.8
.target Kaya Flathoof
>>Talk to |cRXP_FRIENDLY_Kaya Flathoof|r
    .accept 6523 >> Accept Protect Kaya
    .isOnQuest 6629
step
       >>Escort Kaya and stay close to her. 3 Grimtotems will spawn at the bonfire. Eat/drink before she gets to the camp
    .goto Stonetalon Mountains,75.8,91.4
    .complete 6523,1 --Kaya Escorted to Camp Aparaje
    .isOnQuest 6523
step
    #sticky
    #completewith next
    >> Kill Deepmoss Creepers en route to the wanted poster. You do not have to finish the quest now.
    .complete 6461,1 --Kill Deepmoss Creeper (x10)
step
    >>Click the Wanted poster up the road
    .goto Stonetalon Mountains,59.0,75.7
    .accept 6284 >> Accept Arachnophobia
step
    .goto Stonetalon Mountains,57.5,76.2,30 >>Run up the path here to Sishir Canyon
step
    #sticky
    #label deepmossegg
    #completewith spiderend
    >>Click the spider eggs near the trees. Be careful as mobs can spawn from the eggs
    .complete 1069,1 --Collect Deepmoss Egg (x15)
    .isOnQuest 1069
step
    #sticky
    #label besseleth
    #completewith spiderend
    .goto Stonetalon Mountains,54.7,71.9,40,0
    .goto Stonetalon Mountains,52.6,71.8,40,0
    .goto Stonetalon Mountains,52.2,75.6,40,0
    .goto Stonetalon Mountains,53.9,74.2,40,0
    .goto Stonetalon Mountains,54.7,71.9,40,0
    .goto Stonetalon Mountains,52.6,71.8,40,0
    .goto Stonetalon Mountains,52.2,75.6,40,0
    .goto Stonetalon Mountains,53.9,74.2
    >> Kill and loot Besseleth for his fang
    .complete 6284,1 --Collect Besseleth's Fang (x1)
	.unitscan Besseleth
    .isOnQuest 6284
step
    >>Kill the Deepmoss Spiders and Besseleth in the area. Loot Besseleth for his fang
    .goto Stonetalon Mountains,54.7,71.9,40,0
    .goto Stonetalon Mountains,52.6,71.8,40,0
    .goto Stonetalon Mountains,52.2,75.6,40,0
    .goto Stonetalon Mountains,53.9,74.2,40,0
    .goto Stonetalon Mountains,54.7,71.9,40,0
    .goto Stonetalon Mountains,52.6,71.8,40,0
    .goto Stonetalon Mountains,52.2,75.6,40,0
    .goto Stonetalon Mountains,53.9,74.2
    .complete 6461,1 --Kill Deepmoss Creeper (x10)
    .complete 6461,2 --Kill Deepmoss Venomspitter (x7)
    .isOnQuest 6461
step
    #label spiderend
    >> Head to the goblin hut behind the hill
    .goto Stonetalon Mountains,58.989,62.599
.target Ziz Fizziks
>>Talk to |cRXP_FRIENDLY_Ziz Fizziks|r
    .turnin 1483 >> Turn in Ziz Fizziks
    .isOnQuest 1483
step
    >> Head to the goblin hut behind the hill
    .goto Stonetalon Mountains,58.989,62.599
.target Ziz Fizziks
>>Talk to |cRXP_FRIENDLY_Ziz Fizziks|r
    .accept 1093 >> Accept Super Reaper 6000
step
    #sticky
    #completewith next
    >>Kill Loggers as you search for Operators to get the Blueprints
    .complete 1062,1 --Kill Venture Co. Logger (x15)
    .isOnQuest 1062
step
    >>Kill Venture Co. Operators until you get the Blueprints
.goto Stonetalon Mountains,62.8,53.7,40,0
    .goto Stonetalon Mountains,61.7,51.5,40,0
    .goto Stonetalon Mountains,66.8,45.3,40,0
    .goto Stonetalon Mountains,71.7,49.9,40,0
    .goto Stonetalon Mountains,74.3,54.7,40,0
    .goto Stonetalon Mountains,62.8,53.7
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
    .goto Stonetalon Mountains,73.4,54.3
    .complete 1062,1 --Kill Venture Co. Logger (x15)
    .isOnQuest 1062
step
    .goto Stonetalon Mountains,58.989,62.599
>>Talk to |cRXP_FRIENDLY_Ziz Fizziks|r
    .turnin 1093 >> Turn in Super Reaper 6000
.target Ziz Fizziks
    .accept 1094 >> Accept Further Instructions
step << Druid
    #requires deepmossegg
    >>Teleport to Moonglade
    .goto Moonglade,52.4,40.6
    .trainer 12042 >> Train spells
step
    #requires deepmossegg
    #completewith next
    .hs >> Hearth to Camp Taurajo
step
    #label eggend
    .goto The Barrens,44.9,59.1
>>Talk to |cRXP_FRIENDLY_Jorn Skyseer|r
    .turnin 3261 >>Turn in Jorn Skyseer
.target Jorn Skyseer
    .accept 882 >>Accept Ishamuhale
step
    #sticky
    #label Lizard
    >>Kill Stormstouts. Loot them for one of their horns
    .complete 821,3 --Thunder Lizard Horn (1)
step
    #sticky
    #label Lakota1
    #completewith next
    .goto The Barrens,50.0,53.1,0
    .goto The Barrens,46.0,49.2,0
    .goto The Barrens,45.3,52.5,0
    .goto The Barrens,45.0,51.8,0
    .use 5099 >>Find & kill Lakota'mani (Gray Kodo) around the area. Loot his Hoof. If you can't find him, skip this quest.
    .collect 5099,1,883 --Collect Hoof of Lakota'Mani
    .accept 883 >>Accept Lakota'Mani
    .unitscan Lakota'mani
step
    >>Kill a LOT of Quillboars. Prioritize Thornweavers, Water Seekers, and Geomancers where you can. Loot them for their tusks. Save the Blood Shards you get
    *Water Seekers only spawn in the south western most camps. Go East or North West for Geomancers / Thornweavers.
    .goto The Barrens,51.4,57.7,50,0
    .goto The Barrens,51.4,54.7,50,0
    .goto The Barrens,52.7,52.9
.complete 878,1 --Kill Bristleback Water Seeker (x6)
    .complete 878,2 --Kill Bristleback Thornweaver (x12)
    .complete 878,3 --Kill Bristleback Geomancer (x12)
    .complete 899,1 --Collect Bristleback Quilboar Tusk (x60)
--30 yards is too low for something like this
step
    #requires Lizard
    >>Go around the lake and kill turtles. Loot them for their shells
.goto The Barrens,55.5,42.6
    .complete 880,1 --Altered Snapjaw Shell (8)
step
    >>Kill a Zhevra in the area. Loot it for a Carcass
.goto The Barrens,61.0,32.2
.collect 10338,1 --Collect Fresh Zhevra Carcass
step
    .use 10338 >>Use the Fresh Zhevra Carcass at the dead tree to summon Ishamuhale. Kill and loot him for his Fang
.goto The Barrens,59.9,30.4
    .complete 882,1 --Ishamuhale's Fang (1)
step
    >>Run back to Ratchet
.goto The Barrens,62.7,36.3
.target Gazlowe
>>Talk to |cRXP_FRIENDLY_Gazlowe|r
    .turnin 888 >>Turn in Stolen Booty
step
    .goto The Barrens,63.0,37.2
>>Talk to |cRXP_FRIENDLY_Sputtervalve|r
    .turnin 1094 >>Turn in Further Instructions
.target Sputtervalve
    .accept 1095 >>Accept Further Instructions
step
    .isOnQuest 959
    .goto The Barrens,63.086,37.607
.target Crane Operator Bigglefuzz
>>Talk to |cRXP_FRIENDLY_Crane Operator Bigglefuzz|r
    .turnin 959 >>Turn in Trouble at the Docks
step
    .goto The Barrens,62.4,37.6
.target Mebok Mizzyrix
>>Talk to |cRXP_FRIENDLY_Mebok Mizzyrix|r
    .turnin 1069 >>Turn in Deepmoss Spider Eggs
    .turnin 1491 >>Turn in Smart Drinks
step
    #completewith next
    .destroy 5570 >> You can destroy any leftover Deepmoss Spider Eggs now
step
    .goto The Barrens,62.3,38.4
.target Brewmaster Drohn
>>Talk to |cRXP_FRIENDLY_Brewmaster Drohn|r
    .turnin 821 >>Turn in Chen's Empty Keg
step << Warrior
    .goto The Barrens,62.2,38.4
    .vendor >> Check for Mighty Chain Pants from Grazlix. Buy them if you have money
step << Druid/Rogue/Warrior/Hunter/Shaman
    .goto The Barrens,62.2,38.5
    .vendor >> Check for Wolf Bracers from Vexspindle. Buy them if you have money
step
    .goto The Barrens,63.1,37.1
    #completewith next
    .fly Crossroads >>Fly to Crossroads
step
#xprate <1.5
    >>Top of the tower
.goto The Barrens,51.6,30.9
>>Talk to |cRXP_FRIENDLY_Darsok Swiftdagger|r
    .turnin 876 >>Turn in Serena Bloodfeather
.target Darsok Swiftdagger
    .accept 1060 >>Accept Letter to Jin'Zil
step
    .goto The Barrens,52.0,31.6
.target Mankrik
>>Talk to |cRXP_FRIENDLY_Mankrik|r
    .turnin 899 >>Turn in Consumed by Hatred
step
    .goto The Barrens,52.2,31.9
>>Talk to |cRXP_FRIENDLY_Tonga Runetotem|r
    .turnin 880 >>Turn in Altered Beings
.target Tonga Runetotem
    .accept 1489 >>Accept Hamuul Runetotem
    .accept 3301 >>Accept Mura Runetotem
step
    #completewith camptflight
    .goto The Barrens,51.5,30.3
    .fly Camp Taurajo >>Fly to Camp Taurajo
step
    .goto The Barrens,53.0,52.1
    >>Kill Quillboars for a Blood Shard
.collect 5075 --Collect Blood Shard (1)
step
    #label camptflight
    .goto The Barrens,44.6,59.2
>>Talk to |cRXP_FRIENDLY_Mangletooth|r
    .turnin 878 >>Turn in Tribes at War
.target Mangletooth
    .accept 5052 >>Accept Blood Shards of Agamaggan
    .turnin 5052 >>Turn in Blood Shards of Agamaggan
    .accept 879 >> Accept Betrayal from Within
step
    .isOnQuest 883
.goto The Barrens,44.8,59.1
>>Talk to |cRXP_FRIENDLY_Jorn Skyseer|r
    .turnin 882 >>Turn in Ishamuhale
.target Jorn Skyseer
    .accept 907 >>Accept Enraged Thunder Lizards
    .turnin 883 >>Turn in Lakota'mani
    .accept 1130 >>Accept Melor Sends Word
    .accept 6382 >>Accept The Ashenvale Hunt
step
    .goto The Barrens,44.8,59.1
>>Talk to |cRXP_FRIENDLY_Jorn Skyseer|r
    .turnin 882 >>Turn in Ishamuhale
.target Jorn Skyseer
    .accept 907 >>Accept Enraged Thunder Lizards
    .accept 1130 >>Accept Melor Sends Word
    .accept 6382 >>Accept The Ashenvale Hunt
step
#sticky
#label Owatanka2
.goto The Barrens,44.2,62.1,75,0
.goto The Barrens,49.2,62.6,75,0
.goto The Barrens,49.6,60.0,75,0
.goto The Barrens,44.2,62.1,75,0
.goto The Barrens,49.2,62.6,75,0
.goto The Barrens,49.6,60.0
>>Search for Owatanka (Blue Thunder Lizard) around this area. If you find him, loot his Tailspike and start the quest. If you can't find him, skip this quest
.collect 5102,1,884 --Collect Owatanka's Tailspike
.accept 884 >>Accept Owatanka
    .unitscan Owatanka
step
.goto The Barrens,42.5,60.3,50,0
    .goto The Barrens,47.1,63.7,50,0
    .goto The Barrens,50.0,61.1
>>Kill Thunder Lizards. Loot them for their blood
    .complete 907,1 --Thunder Lizard Blood (3)
step
    #requires Owatanka2
.goto The Barrens,44.9,59.1
>>Talk to |cRXP_FRIENDLY_Jorn Skyseer|r
    .turnin 907 >>Turn in Enraged Thunder Lizards
.target Jorn Skyseer
    .accept 913 >>Accept Cry of the Thunderhawk
step
    .isOnQuest 884
.goto The Barrens,44.9,59.1
.target Jorn Skyseer
>>Talk to |cRXP_FRIENDLY_Jorn Skyseer|r
    .turnin 884 >>Turn in Owatanka
step
.goto The Barrens,44.8,63.2,30,0
.goto The Barrens,47.0,61.6,30,0
.goto The Barrens,44.8,63.2,30,0
.goto The Barrens,47.0,61.6,30,0
.goto The Barrens,44.8,63.2,30,0
.goto The Barrens,47.0,61.6
    >>Kill a Thunderhawk. Loot it for its Wings
    .complete 913,1 --Thunderhawk Wings (1)
step
    .goto The Barrens,44.8,59.1
>>Talk to |cRXP_FRIENDLY_Jorn Skyseer|r
    .turnin 913 >>Turn in Cry of the Thunderhawk
.target Jorn Skyseer
    .accept 874 >>Accept Mahren Skyseer
step
#xprate <1.5
    .goto The Barrens,44.5,59.1
    #completewith next
    .fly Thunder Bluff >>Fly to Thunder Bluff
step
#xprate >1.499
    .goto Thunder Bluff,45.814,64.711
    #completewith next
    >> Walk to Thunder Bluff.
    .home >>Set your Hearthstone to Thunder Bluff
step
#xprate <1.5
    .goto Thunder Bluff,45.814,64.711
    #completewith next
    .home >>Set your Hearthstone to Thunder Bluff
step << Warrior wotlk
	.train 198 >> Train 1h Maces
    .goto Thunder Bluff,40.93,62.71
    .vendor >> Buy a Flail
    .collect 925,1
    .goto Thunder Bluff,53.20,58.27
step << Warrior tbc/Shaman
    #sticky
    #completewith next
    +If it's cheaper, buy a green 2h mace from the Auction House. Skip this step if you will run Wailing Caverns, the quest staff is much better.
step << Warrior tbc/Shaman
    .goto Thunder Bluff,53.2,58.2
    .vendor >> Buy a Maul
    .collect 924,1
step
    .goto Thunder Bluff,61.538,80.919
    .turnin -1130 >>Turn in Melor Sends Word
.target Melor Stonehoof
>>Talk to |cRXP_FRIENDLY_Melor Stonehoof|r
    .accept 1131 >>Accept Steelsnap
step << Warrior
    .goto Thunder Bluff,57.243,87.372
.target Sorek
>>Talk to |cRXP_FRIENDLY_Sorek|r
    .accept 1823 >>Accept Speak with Ruga
    .train 845 >>Train Cleave
    .train 6547 >>Train Rend r3
    .train 20230 >>Train Retaliation
step
    .goto Thunder Bluff,54.7,51.1
.target Zangen Stonehoof
>>Talk to |cRXP_FRIENDLY_Zangen Stonehoof|r
    .accept 1195 >>Accept The Sacred Flame
step << Shaman
    .goto Thunder Bluff,23.6,19.1
.target Xanis Flameweaver
>>Talk to |cRXP_FRIENDLY_Xanis Flameweaver|r
    .accept 1529 >>Accept Call of Water
.train 8004 >>Train Lesser Healing Wave
.train 6363 >>Train Searing Totem r2
.train 913 >>Train Healing Wave r4
.train 8052 >>Train Flame Shock r2
.train 6390 >>Train Stoneclaw Totem r2
.train 8056 >> Train Frost Shock
step
    #completewith next
    .goto Thunder Bluff,47.003,49.832
    .fly Crossroads >>Fly to Crossroads
step << !Tauren
#xprate >1.499
    .goto The Barrens,51.5,30.1
.target Apothecary Helbrim
>>Talk to |cRXP_FRIENDLY_Apothecary Helbrim|r
    .accept 853 >>Accept Apothecary Zamah
step
    .goto The Barrens,35.3,27.9
    .isOnQuest 1062
>>Talk to |cRXP_FRIENDLY_Seereth Stonebreak|r
    .turnin 1062 >>Turn in Goblin Invaders
.target Seereth Stonebreak
    .accept 1063 >>Accept The Elder Crone
step
    .goto The Barrens,35.3,27.9
    .isQuestTurnedIn 1062
.target Seereth Stonebreak
>>Talk to |cRXP_FRIENDLY_Seereth Stonebreak|r
    .accept 1063 >>Accept The Elder Crone
step
    .isOnQuest 6629
    .goto The Barrens,35.3,27.9
.target Makaba Flathoof
>>Talk to |cRXP_FRIENDLY_Makaba Flathoof|r
    .turnin 6629 >>Turn in Kill Grundig Darkcloud
step
    .isOnQuest 6523
    .goto The Barrens,35.3,27.9
>>Talk to |cRXP_FRIENDLY_Makaba Flathoof|r
    .turnin 6523 >>Turn in Protect Kaya
.target Makaba Flathoof
    .accept 6401 >>Accept Kaya's Alive
step
    .isOnQuest 1060
    >>Up the mountain again, then inside the cave
.goto Stonetalon Mountains,74.5,97.8
.target Witch Doctor Jin'Zil
>>Talk to |cRXP_FRIENDLY_Witch Doctor Jin'Zil|r
    .turnin 1060 >>Turn in Letter to Jin'Zil
step
    .goto Stonetalon Mountains,71.3,95.1
.target Xen'Zilla
>>Talk to |cRXP_FRIENDLY_Xen'Zilla|r
    .turnin 6461 >>Turn in Blood Feeders
step
#xprate >1.499
    .isOnQuest 1095
    >> Head to the goblin hut behind the hill
    .goto Stonetalon Mountains,58.989,62.599
.target Ziz Fizziks
>>Talk to |cRXP_FRIENDLY_Ziz Fizziks|r
    .turnin 1095 >> Turn in Further Instructions
step
#xprate <1.5
    >> Head to Sun Rock Retreat
    >> Head up the side mountain path to your left once you reach Sun Rock
    .goto Stonetalon Mountains,49.0,62.8,40,0
    .goto Stonetalon Mountains,47.3,64.2
.target Tsunaman
>>Talk to |cRXP_FRIENDLY_Tsunaman|r
    .accept 6562 >> Accept Trouble in the Deeps
    .maxlevel 24
step
    .goto Stonetalon Mountains,47.2,61.1
.target Maggran Earthbinder
>>Talk to |cRXP_FRIENDLY_Maggran Earthbinder|r
    .turnin 6284 >> Turn in Arachnophobia
    .isQuestComplete 6284
step
    .goto Stonetalon Mountains,47.5,58.3
.target Tammra Windfield
>>Talk to |cRXP_FRIENDLY_Tammra Windfield|r
    .turnin 6401 >> Turn in Kaya's Alive
    .isOnQuest 6401
step
    .goto Stonetalon Mountains,45.1,59.8
    .fp Sun Rock >>Get the Sun Rock Retreat Flight Path
step
    .isOnQuest 1095
    .goto Stonetalon Mountains,58.989,62.599
.target Ziz Fizziks
>>Talk to |cRXP_FRIENDLY_Ziz Fizziks|r
    .turnin 1095 >>Turn in Further Instructions
step
#xprate <1.5
    #sticky
    #completewith next
    .goto Stonetalon Mountains,78.2,42.8,30 >>Go to Talondeep Path
    .maxlevel 22
step
#xprate <1.5
    .goto Ashenvale,42.3,71.0,20 >>Run through the cave to Ashenvale
    .maxlevel 22
step
#xprate <1.5
    .goto Ashenvale,16.3,29.8,90 >>Go to the Zoram'gar Outpost. Be sure to avoid Astranaar guards en route
    .maxlevel 22
step
#xprate <1.5
    .goto Ashenvale,12.3,33.8
    .fp Zoram >> Get the Zoram'gar Outpost flight path
    .maxlevel 22
step
#xprate <1.5
    .goto Ashenvale,11.8,34.7
.target Karang Amakkar
>>Talk to |cRXP_FRIENDLY_Karang Amakkar|r
    .accept 216 >> Accept Between a Rock and a Thistlefur
    .maxlevel 22
step
#xprate <1.5
    >> Talk to the trolls in the hut
    .goto Ashenvale,11.6,34.9
.target Marukai
>>Talk to |cRXP_FRIENDLY_Marukai|r
    .accept 6442 >> Accept Naga at the Zoram Strand
.target Mitsuwa
>>Talk to |cRXP_FRIENDLY_Mitsuwa|r
    .accept 6462 >> Accept Troll Charm
    .maxlevel 22
step
#xprate <1.5
    .isOnQuest 6562
    .goto Ashenvale,11.6,34.3
.target Je'neu Sancrea
>>Talk to |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 6562 >> Turn in Trouble in the Deeps
step
#xprate <1.5
    .goto Ashenvale,11.6,34.3
.target Je'neu Sancrea
>>Talk to |cRXP_FRIENDLY_Je'neu Sancrea|r
    .accept 6563 >> Accept The Essence of Aku'Mai
    .maxlevel 22
step
#xprate <1.5
    >>Accepting this quest starts an escort. Follow him
    .goto Ashenvale,12.1,34.4
.target Muglash
>>Talk to |cRXP_FRIENDLY_Muglash|r
    .accept 6641 >> Accept Vorsha the Lasher
    .maxlevel 22
step
#xprate <1.5
    #sticky
    #label wrathtailhead
    >>Kill the Nagas around the beach. Loot them for their heads
    .goto Ashenvale,15.5,17.1
    .complete 6442,1 --Collect Wrathtail Head (x20)
    .isOnQuest 6442
step
#xprate <1.5
    >>Click the Brazier. There will be waves of Naga that spawn. Once Vorsha comes out, let Muglash get aggro before fighting him.
    .goto Ashenvale,9.8,27.4
    .complete 6641,1 --Defeat Vorsha the Lasher
    .isOnQuest 6641
step
#xprate <1.5
    .goto Ashenvale,14.2,14.7,40 >>Drop down the hole into Blackfathom Deeps
    .isOnQuest 6442
step
#xprate <1.5
    #sticky
    #label Sapphires
    .goto Ashenvale,13.0,13.2,30,0
    .goto Ashenvale,13.6,9.0,30,0
    .goto Ashenvale,13.0,13.2,30,0
    .goto Ashenvale,13.6,9.0,30,0
    .goto Ashenvale,13.0,13.2,30,0
    .goto Ashenvale,13.6,9.0,30,0
    .goto Ashenvale,13.0,13.2,30,0
    .goto Ashenvale,13.6,9.0
    >>Swim under the water and enter Blackfathom Deeps. Kill the Priestess' until a Damp Note drops(quest). Then right click it and accept the quest.
    .collect 16790,1,6564 --Collect Damp Note
    .accept 6564 >> Accept Allegiance to the Old Gods
    .isOnQuest 6442
    .use 16790
step
#xprate <1.5
    >> Loot the Sapphires from the walls in the tunnel.
    .goto Ashenvale,13.0,13.2,30,0
    .goto Ashenvale,13.6,9.0,30,0
    .goto Ashenvale,13.0,13.2,30,0
    .goto Ashenvale,13.6,9.0,30,0
    .goto Ashenvale,13.0,13.2,30,0
    .goto Ashenvale,13.6,9.0,30,0
    .goto Ashenvale,13.0,13.2,30,0
    .goto Ashenvale,13.6,9.0
    .complete 6563,1 --Collect Sapphire of Aku'Mai (x20)
    .isOnQuest 6563
step
    #xprate <1.5
    .xp 21+14175 >> Grind to 14175+/22400xp
    .isOnQuest 6641
step
    #requires Sapphires
    #xprate <1.5
    #label zoramend
    #requires wrathtailhead
    >>Return to Zoram'gar Outpost.
    .goto Ashenvale,12.223,34.216
.target Warsong Runner
>>Talk to |cRXP_FRIENDLY_Warsong Runner|r
    .turnin 6641 >> Turn in Vorsha the Lasher
    .isOnQuest 6641
step
    #xprate <1.5
    .goto Ashenvale,11.6,34.3
.target Je'neu Sancrea
>>Talk to |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 6563 >> Turn in The Essence of Aku'Mai
    .isOnQuest 6553
step
    #xprate <1.5
    #sticky
    #completewith next
    .destroy 16784 >> Destroy any leftover Sapphires of Aku'Mai
step
#xprate <1.5
    .goto Ashenvale,11.6,34.3
.target Je'neu Sancrea
>>Talk to |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 6564 >> Turn in Allegiance to the Old Gods
    .isOnQuest 6564
step
#xprate <1.5
    .goto Ashenvale,11.689,34.905
.target Marukai
>>Talk to |cRXP_FRIENDLY_Marukai|r
    .turnin 6442 >> Turn in Naga at the Zoram Strand
    .isOnQuest 6442
step << Druid
    >>Teleport to Moonglade
    .goto Moonglade,52.4,40.6
    .trainer 12042 >> Train spells
step
    .zoneskip Stonetalon Mountains
    #completewith eldercr
    .hs >> Hearth to Thunder Bluff
    .cooldown item,6948,>0
step
#xprate >1.499
    #completewith next
    .goto Stonetalon Mountains,45.1,59.8
    .fly Thunder Bluff >> Fly to Thunder Bluff
    .zoneskip Thunder Bluff
step
    #label eldercr
    .isOnQuest 1063
    .goto Thunder Bluff,69.851,30.910
>>Talk to |cRXP_FRIENDLY_Magatha Grimtotem|r
    .turnin 1063 >> Turn in The Elder Crone
    >> Wait for the roleplay to finish
.target Magatha Grimtotem
    .accept 1064 >> Accept Forsaken Aid
step
    .isOnQuest 1489
    .goto Thunder Bluff,78.4,28.8
.target Arch Druid Hamuul Runetotem
>>Talk to |cRXP_FRIENDLY_Arch Druid Hamuul Runetotem|r
    .turnin 1489 >>Turn in Hamuul Runetotem
step
    .isQuestAvailable 1490
    .goto Thunder Bluff,78.1,29.3
.target Arch Druid Hamuul Runetotem
>>Talk to |cRXP_FRIENDLY_Arch Druid Hamuul Runetotem|r
    .accept 1490 >>Accept Nara Wildmane
step
    .isOnQuest 1490
    .goto Thunder Bluff,75.7,31.3
.target Nara Wildmane
>>Talk to |cRXP_FRIENDLY_Nara Wildmane|r
    .turnin 1490 >>Turn in Nara Wildmane
step
    .isOnQuest 1064
    >> Head to the pools under the Spirit Rise
    .goto Thunder Bluff,22.9,21.1
>>Talk to |cRXP_FRIENDLY_Apothecary Zamah|r
    .turnin 1064 >> Turn in Forsaken Aid
.target Apothecary Zamah
    .accept 1065 >> Accept Journey to Tarren Mill
step
    .isOnQuest 1065
    .goto Thunder Bluff,28.0,25.2
.target Clarice Foster
>>Talk to |cRXP_FRIENDLY_Clarice Foster|r
    .accept 264 >> Accept Until Death Do Us Part
step << !Tauren
#xprate >1.499
    .goto Thunder Bluff,23.0,21.1
.target Apothecary Zamah
>>Talk to |cRXP_FRIENDLY_Apothecary Zamah|r
    .turnin 853 >>Turn in Apothecary Zamah
step << !Shaman
    .goto Thunder Bluff,47.003,49.832
    #completewith next
    .fly Orgrimmar >>Fly to Orgrimmar
step << Shaman
    .goto Thunder Bluff,47.003,49.832
    #completewith next
    .fly Ratchet >>Fly to Ratchet
step << Shaman
    .goto The Barrens,65.8,43.8
>>Talk to |cRXP_FRIENDLY_Islen Waterseer|r
    .turnin 1529 >>Turn in Call of Water
.target Islen Waterseer
    .accept 1530 >>Accept Call of Water
>>Talk to |cRXP_FRIENDLY_Mahren Skyseer|r
    .turnin 874 >>Turn in Mahren Skyseer
.target Mahren Skyseer
    .accept 873 >>Accept Isha Awak
step << Shaman
    .goto The Barrens,63.1,37.1
    #completewith next
    .fly Camp Taurajo >>Fly to Camp Taurajo
step << Shaman
    .goto The Barrens,43.4,77.4
>>Talk to |cRXP_FRIENDLY_Brine|r
    .turnin 1530 >>Turn in Call of Water
.target Brine
    .accept 1535 >>Accept Call of Water
step << Shaman
    .goto The Barrens,44.1,76.9
    .complete 1535,1 --Filled Brown Waterskin (1)
step << Shaman
    .goto The Barrens,43.4,77.4
>>Talk to |cRXP_FRIENDLY_Brine|r
    .turnin 1535 >>Turn in Call of Water
.target Brine
    .accept 1536 >>Accept Call of Water
step
    .destroy 11149 >>Delete your Samophlange Manual
step << Shaman
    .goto Thunder Bluff,44.4,59.0
    #completewith next
    .fly Orgrimmar >>Fly to Orgrimmar
step << Shaman
.goto Orgrimmar,38.6,36.0
    #completewith next
.trainer >> Go and train your class spells
step << Paladin
    .goto Orgrimmar,32.272,35.794
        #completewith next
    .trainer >> Go and train your class spells
step << Warrior
.goto Orgrimmar,79.7,31.4
        #completewith next
.trainer >> Go and train your class spells
step << Warrior tbc
    .goto Orgrimmar,81.2,19.0
    .collect 29009,1 >> Purchase a Heavy Throwing Dagger from Zendo'jian
step << Warrior/Paladin/Shaman
    .goto Orgrimmar,81.5,19.6
    .train 197 >>Train 2h Axes
step << Shaman
    .goto Orgrimmar,81.5,19.6
    .train 196 >>Train 1h Axes
]])
